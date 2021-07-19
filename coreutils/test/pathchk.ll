; ModuleID = 'coreutils-8.32/src/pathchk.bc'
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [228 x i8] c"Diagnose invalid or unportable file names.\0A\0A  -p                  check for most POSIX systems\0A  -P                  check for empty names and leading \22-\22\0A      --portability   check for all POSIX systems (equivalent to -p -P)\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pathchk\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"+pP\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"leading '-' in a component of file name %s\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"empty file name\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"nonportable character %s in file name %s\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"%s: unable to determine maximum file name length\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"limit %lu exceeded by length %lu of file name %s\00", align 1
@.str.39 = private unnamed_addr constant [59 x i8] c"limit %lu exceeded by length %lu of file name component %s\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"portability\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), align 8, !dbg !64
@.str.43 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !70
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !75
@.str.46 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.47 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !78
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !84
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !90
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !121
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !127
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !139
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !146
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !153
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !141
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !155
@.str.87 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.90 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.92 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.93 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.94 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.95 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.96 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.97 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.98 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.99 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.100 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.101 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.102 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.105 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.106 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.107 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.108 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.109 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.110 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.111 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !161
@.str.1.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !169
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.138 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !625 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !629, metadata !DIExpression()), !dbg !630
  %3 = icmp eq i32 %0, 0, !dbg !631
  br i1 %3, label %9, label %4, !dbg !633

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !634, !tbaa !636
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !634
  %7 = load i8*, i8** @program_name, align 8, !dbg !634, !tbaa !636
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #24, !dbg !634
  br label %58, !dbg !634

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !640
  %11 = load i8*, i8** @program_name, align 8, !dbg !640, !tbaa !636
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #24, !dbg !640
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !642
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !636
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !642
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !643
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !636
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !643
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !644
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !636
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), metadata !645, metadata !DIExpression()) #24, !dbg !664
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !666
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #24, !dbg !666
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !651, metadata !DIExpression()) #24, !dbg !667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !667
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), metadata !660, metadata !DIExpression()) #24, !dbg !664
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !661, metadata !DIExpression()) #24, !dbg !664
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !668
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !661, metadata !DIExpression()) #24, !dbg !664
  br label %24, !dbg !669

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !661, metadata !DIExpression()) #24, !dbg !664
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #25, !dbg !670
  %28 = icmp eq i32 %27, 0, !dbg !670
  br i1 %28, label %34, label %29, !dbg !669

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !671
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !661, metadata !DIExpression()) #24, !dbg !664
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !672
  %32 = load i8*, i8** %31, align 8, !dbg !672, !tbaa !673
  %33 = icmp eq i8* %32, null, !dbg !675
  br i1 %33, label %34, label %24, !dbg !676, !llvm.loop !677

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !679
  %37 = load i8*, i8** %36, align 8, !dbg !679, !tbaa !681
  %38 = icmp eq i8* %37, null, !dbg !682
  %39 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !683
  call void @llvm.dbg.value(metadata i8* %39, metadata !660, metadata !DIExpression()) #24, !dbg !664
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #24, !dbg !684
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #24, !dbg !684
  %42 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !685
  call void @llvm.dbg.value(metadata i8* %42, metadata !663, metadata !DIExpression()) #24, !dbg !664
  %43 = icmp eq i8* %42, null, !dbg !686
  br i1 %43, label %51, label %44, !dbg !688

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #25, !dbg !689
  %46 = icmp eq i32 %45, 0, !dbg !689
  br i1 %46, label %51, label %47, !dbg !690

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #24, !dbg !691
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !636
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #24, !dbg !691
  br label %51, !dbg !693

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #24, !dbg !694
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #24, !dbg !694
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #24, !dbg !695
  %55 = icmp eq i8* %39, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), !dbg !695
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !695
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #24, !dbg !695
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #24, !dbg !696
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #26, !dbg !697
  unreachable, !dbg !697
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !698 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !702 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !758 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !762 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !767, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8** %1, metadata !768, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8 1, metadata !769, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8 0, metadata !770, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8 0, metadata !771, metadata !DIExpression()), !dbg !773
  %5 = load i8*, i8** %1, align 8, !dbg !774, !tbaa !636
  tail call void @set_program_name(i8* %5) #24, !dbg !775
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !776
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !777
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !778
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !779
  br label %10, !dbg !780

10:                                               ; preds = %18, %2
  %11 = phi i1 [ false, %18 ], [ true, %2 ]
  %12 = phi i8 [ 1, %18 ], [ 0, %2 ]
  %13 = phi i8 [ %19, %18 ], [ 0, %2 ]
  br label %14, !dbg !780

14:                                               ; preds = %14, %10
  %15 = phi i8 [ %13, %10 ], [ 1, %14 ], !dbg !773
  call void @llvm.dbg.value(metadata i8 %15, metadata !771, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8 %12, metadata !770, metadata !DIExpression()), !dbg !773
  %16 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #24, !dbg !781
  call void @llvm.dbg.value(metadata i32 %16, metadata !772, metadata !DIExpression()), !dbg !773
  switch i32 %16, label %24 [
    i32 -1, label %25
    i32 128, label %18
    i32 112, label %17
    i32 80, label %14
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !780, !llvm.loop !782

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !770, metadata !DIExpression()), !dbg !773
  br label %18, !dbg !784

18:                                               ; preds = %14, %17
  %19 = phi i8 [ %15, %17 ], [ 1, %14 ]
  br label %10, !dbg !780, !llvm.loop !782

20:                                               ; preds = %14
  tail call void @usage(i32 0) #27, !dbg !787
  unreachable, !dbg !787

21:                                               ; preds = %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !788, !tbaa !636
  %23 = load i8*, i8** @Version, align 8, !dbg !788, !tbaa !636
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #24, !dbg !788
  tail call void @exit(i32 0) #26, !dbg !788
  unreachable, !dbg !788

24:                                               ; preds = %14
  tail call void @usage(i32 1) #27, !dbg !789
  unreachable, !dbg !789

25:                                               ; preds = %14
  %26 = load i32, i32* @optind, align 4, !dbg !790, !tbaa !792
  %27 = icmp eq i32 %26, %0, !dbg !794
  br i1 %27, label %37, label %28, !dbg !795

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8 undef, metadata !769, metadata !DIExpression()), !dbg !773
  %29 = icmp slt i32 %26, %0, !dbg !796
  br i1 %29, label %30, label %179, !dbg !799

30:                                               ; preds = %28
  %31 = icmp eq i8 %15, 0
  %32 = or i8 %15, %12
  %33 = icmp ne i8 %32, 0
  %34 = bitcast i64* %3 to %struct.__mbstate_t*
  %35 = bitcast i64* %3 to i8*
  %36 = bitcast %struct.stat* %4 to i8*
  br label %39, !dbg !799

37:                                               ; preds = %25
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #24, !dbg !800
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38) #24, !dbg !802
  tail call void @usage(i32 1) #27, !dbg !803
  unreachable, !dbg !803

39:                                               ; preds = %30, %170
  %40 = phi i32 [ %26, %30 ], [ %174, %170 ]
  %41 = phi i1 [ true, %30 ], [ %172, %170 ]
  %42 = sext i32 %40 to i64, !dbg !804
  %43 = getelementptr inbounds i8*, i8** %1, i64 %42, !dbg !804
  %44 = load i8*, i8** %43, align 8, !dbg !804, !tbaa !636
  call void @llvm.dbg.value(metadata i8* %44, metadata !805, metadata !DIExpression()) #24, !dbg !890
  call void @llvm.dbg.value(metadata i1 %11, metadata !810, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !890
  call void @llvm.dbg.value(metadata i1 %31, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !890
  %45 = call i64 @strlen(i8* nonnull dereferenceable(1) %44) #25, !dbg !892
  call void @llvm.dbg.value(metadata i64 %45, metadata !812, metadata !DIExpression()) #24, !dbg !890
  call void @llvm.dbg.value(metadata i8 0, metadata !815, metadata !DIExpression()) #24, !dbg !890
  br i1 %31, label %63, label %46, !dbg !893

46:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i8* %44, metadata !895, metadata !DIExpression()) #24, !dbg !901
  call void @llvm.dbg.value(metadata i8* %44, metadata !900, metadata !DIExpression()) #24, !dbg !901
  %47 = call i8* @strchr(i8* nonnull dereferenceable(1) %44, i32 45) #25, !dbg !903
  call void @llvm.dbg.value(metadata i8* %47, metadata !900, metadata !DIExpression()) #24, !dbg !901
  %48 = icmp eq i8* %47, null, !dbg !906
  br i1 %48, label %63, label %53, !dbg !906

49:                                               ; preds = %56
  %50 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !907
  call void @llvm.dbg.value(metadata i8* %50, metadata !900, metadata !DIExpression()) #24, !dbg !901
  call void @llvm.dbg.value(metadata i8* %54, metadata !900, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !901
  %51 = call i8* @strchr(i8* nonnull dereferenceable(1) %50, i32 45) #25, !dbg !903
  call void @llvm.dbg.value(metadata i8* %51, metadata !900, metadata !DIExpression()) #24, !dbg !901
  %52 = icmp eq i8* %51, null, !dbg !906
  br i1 %52, label %63, label %53, !dbg !906, !llvm.loop !908

53:                                               ; preds = %46, %49
  %54 = phi i8* [ %51, %49 ], [ %47, %46 ]
  %55 = icmp eq i8* %54, %44, !dbg !910
  br i1 %55, label %60, label %56, !dbg !912

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !913
  %58 = load i8, i8* %57, align 1, !dbg !913, !tbaa !914
  %59 = icmp eq i8 %58, 47, !dbg !915
  call void @llvm.dbg.value(metadata i8* %54, metadata !900, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !901
  br i1 %59, label %60, label %49, !dbg !916

60:                                               ; preds = %56, %53
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i64 0, i64 0), i32 5) #24, !dbg !917
  %62 = call i8* @quotearg_style(i32 4, i8* %44) #24, !dbg !919
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %61, i8* %62) #24, !dbg !920
  br label %170, !dbg !921

63:                                               ; preds = %49, %46, %39
  %64 = icmp eq i64 %45, 0
  %65 = and i1 %33, %64, !dbg !922
  br i1 %65, label %66, label %68, !dbg !922

66:                                               ; preds = %63
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 5) #24, !dbg !924
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #24, !dbg !926
  br label %170, !dbg !927

68:                                               ; preds = %63
  br i1 %11, label %82, label %69, !dbg !928

69:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i8* %44, metadata !929, metadata !DIExpression()) #24, !dbg !951
  call void @llvm.dbg.value(metadata i64 %45, metadata !934, metadata !DIExpression()) #24, !dbg !951
  %70 = call i64 @strspn(i8* %44, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.41, i64 0, i64 0)) #25, !dbg !955
  call void @llvm.dbg.value(metadata i64 %70, metadata !935, metadata !DIExpression()) #24, !dbg !951
  %71 = getelementptr inbounds i8, i8* %44, i64 %70, !dbg !956
  call void @llvm.dbg.value(metadata i8* %71, metadata !936, metadata !DIExpression()) #24, !dbg !951
  %72 = load i8, i8* %71, align 1, !dbg !957, !tbaa !914
  %73 = icmp eq i8 %72, 0, !dbg !957
  br i1 %73, label %109, label %74, !dbg !958

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #24, !dbg !959
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %34, metadata !937, metadata !DIExpression()) #24, !dbg !960
  store i64 0, i64* %3, align 8, !dbg !960
  %75 = sub i64 %45, %70, !dbg !961
  %76 = call i64 @rpl_mbrlen(i8* nonnull %71, i64 %75, %struct.__mbstate_t* nonnull %34) #24, !dbg !962
  call void @llvm.dbg.value(metadata i64 %76, metadata !950, metadata !DIExpression()) #24, !dbg !963
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i32 5) #24, !dbg !964
  %78 = icmp ult i64 %76, 17, !dbg !965
  %79 = select i1 %78, i64 %76, i64 1, !dbg !966
  %80 = call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* nonnull %71, i64 %79) #24, !dbg !967
  %81 = call i8* @quotearg_n_style(i32 0, i32 4, i8* nonnull %44) #24, !dbg !968
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77, i8* %80, i8* %81) #24, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #24, !dbg !970
  br label %170, !dbg !971

82:                                               ; preds = %68
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %36) #24, !dbg !972
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !816, metadata !DIExpression()) #24, !dbg !973
  %83 = call i32 @lstat(i8* %44, %struct.stat* nonnull %4) #24, !dbg !974
  %84 = icmp eq i32 %83, 0, !dbg !976
  br i1 %84, label %85, label %86, !dbg !977

85:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8 0, metadata !815, metadata !DIExpression()) #24, !dbg !890
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #24, !dbg !978
  call void @llvm.dbg.value(metadata i1 %11, metadata !814, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !890
  br label %170, !dbg !979

86:                                               ; preds = %82
  %87 = tail call i32* @__errno_location() #28, !dbg !980
  %88 = load i32, i32* %87, align 4, !dbg !980, !tbaa !792
  %89 = icmp ne i32 %88, 2, !dbg !982
  %90 = or i1 %64, %89, !dbg !983
  br i1 %90, label %91, label %93, !dbg !983

91:                                               ; preds = %86
  %92 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %44) #24, !dbg !984
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %92) #24, !dbg !986
  call void @llvm.dbg.value(metadata i8 0, metadata !815, metadata !DIExpression()) #24, !dbg !890
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #24, !dbg !978
  br label %170

93:                                               ; preds = %86
  call void @llvm.dbg.value(metadata i8 0, metadata !815, metadata !DIExpression()) #24, !dbg !890
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #24, !dbg !978
  %94 = icmp ugt i64 %45, 255
  br i1 %94, label %95, label %108, !dbg !987

95:                                               ; preds = %93
  %96 = load i8, i8* %44, align 1, !dbg !988, !tbaa !914
  %97 = icmp eq i8 %96, 47, !dbg !989
  %98 = select i1 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), !dbg !988
  call void @llvm.dbg.value(metadata i8* %98, metadata !861, metadata !DIExpression()) #24, !dbg !990
  store i32 0, i32* %87, align 4, !dbg !991, !tbaa !792
  %99 = call i64 @pathconf(i8* %98, i32 4) #24, !dbg !992
  call void @llvm.dbg.value(metadata i64 %99, metadata !858, metadata !DIExpression()) #24, !dbg !990
  %100 = icmp slt i64 %99, 0, !dbg !993
  br i1 %100, label %101, label %106, !dbg !995

101:                                              ; preds = %95
  %102 = load i32, i32* %87, align 4, !dbg !996, !tbaa !792
  %103 = icmp eq i32 %102, 0, !dbg !997
  br i1 %103, label %106, label %104, !dbg !998

104:                                              ; preds = %101
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0), i32 5) #24, !dbg !999
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %102, i8* %105, i8* %98) #24, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %99, metadata !855, metadata !DIExpression()) #24, !dbg !1002
  br label %170

106:                                              ; preds = %101, %95
  call void @llvm.dbg.value(metadata i64 %99, metadata !855, metadata !DIExpression()) #24, !dbg !1002
  %107 = icmp ugt i64 %99, %45, !dbg !1003
  br i1 %107, label %108, label %111, !dbg !1004

108:                                              ; preds = %93, %106
  br label %116, !dbg !1005

109:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %99, metadata !855, metadata !DIExpression()) #24, !dbg !1002
  %110 = icmp ult i64 %45, 256, !dbg !1003
  br i1 %110, label %131, label %111, !dbg !1004

111:                                              ; preds = %109, %106
  %112 = phi i64 [ 256, %109 ], [ %99, %106 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !862, metadata !DIExpression()) #24, !dbg !1012
  %113 = add i64 %112, -1, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %113, metadata !865, metadata !DIExpression()) #24, !dbg !1012
  %114 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0), i32 5) #24, !dbg !1014
  %115 = call i8* @quotearg_style(i32 4, i8* nonnull %44) #24, !dbg !1015
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %114, i64 %113, i64 %45, i8* %115) #24, !dbg !1016
  br label %170

116:                                              ; preds = %120, %108
  %117 = phi i8* [ %44, %108 ], [ %121, %120 ]
  call void @llvm.dbg.value(metadata i8* %117, metadata !1010, metadata !DIExpression()) #24, !dbg !1017
  %118 = load i8, i8* %117, align 1, !dbg !1018, !tbaa !914
  %119 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !1019
  call void @llvm.dbg.value(metadata i8* %119, metadata !1010, metadata !DIExpression()) #24, !dbg !1017
  switch i8 %118, label %122 [
    i8 47, label %120
    i8 0, label %170
  ], !dbg !1005

120:                                              ; preds = %116, %128
  %121 = phi i8* [ %119, %116 ], [ %129, %128 ]
  br label %116, !dbg !1017, !llvm.loop !1020

122:                                              ; preds = %116, %126
  %123 = phi i64 [ %127, %126 ], [ 1, %116 ], !dbg !1023
  call void @llvm.dbg.value(metadata i64 %123, metadata !1030, metadata !DIExpression()) #24, !dbg !1032
  %124 = getelementptr inbounds i8, i8* %117, i64 %123, !dbg !1033
  %125 = load i8, i8* %124, align 1, !dbg !1033, !tbaa !914
  switch i8 %125, label %126 [
    i8 47, label %128
    i8 0, label %128
  ], !dbg !1035

126:                                              ; preds = %122
  %127 = add i64 %123, 1, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %127, metadata !1030, metadata !DIExpression()) #24, !dbg !1032
  br label %122, !dbg !1037, !llvm.loop !1038

128:                                              ; preds = %122, %122
  %129 = getelementptr inbounds i8, i8* %117, i64 %123, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %123, metadata !866, metadata !DIExpression()) #24, !dbg !1041
  %130 = icmp ugt i64 %123, 14, !dbg !1042
  call void @llvm.dbg.value(metadata i8* undef, metadata !813, metadata !DIExpression()) #24, !dbg !890
  call void @llvm.dbg.value(metadata i8 undef, metadata !814, metadata !DIExpression()) #24, !dbg !890
  br i1 %130, label %131, label %120

131:                                              ; preds = %128, %109
  %132 = phi i64 [ 14, %109 ], [ 0, %128 ]
  br label %133, !dbg !1044

133:                                              ; preds = %131, %164
  %134 = phi i64 [ %156, %164 ], [ %132, %131 ], !dbg !1046
  %135 = phi i64 [ %157, %164 ], [ 14, %131 ], !dbg !1047
  %136 = phi i8* [ %165, %164 ], [ %44, %131 ], !dbg !1048
  call void @llvm.dbg.value(metadata i8* %136, metadata !813, metadata !DIExpression()) #24, !dbg !890
  call void @llvm.dbg.value(metadata i64 %135, metadata !872, metadata !DIExpression()) #24, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %134, metadata !875, metadata !DIExpression()) #24, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %136, metadata !1010, metadata !DIExpression()) #24, !dbg !1049
  br label %137, !dbg !1044

137:                                              ; preds = %137, %133
  %138 = phi i8* [ %136, %133 ], [ %140, %137 ]
  call void @llvm.dbg.value(metadata i8* %138, metadata !1010, metadata !DIExpression()) #24, !dbg !1049
  %139 = load i8, i8* %138, align 1, !dbg !1050, !tbaa !914
  %140 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !1051
  call void @llvm.dbg.value(metadata i8* %140, metadata !1010, metadata !DIExpression()) #24, !dbg !1049
  switch i8 %139, label %141 [
    i8 47, label %137
    i8 0, label %170
  ], !dbg !1044

141:                                              ; preds = %137
  %142 = icmp eq i64 %134, 0, !dbg !1052
  br i1 %142, label %143, label %155, !dbg !1053

143:                                              ; preds = %141
  %144 = icmp eq i8* %138, %44, !dbg !1054
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %44, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %145, metadata !883, metadata !DIExpression()) #24, !dbg !1056
  call void @llvm.dbg.value(metadata i8 %139, metadata !884, metadata !DIExpression()) #24, !dbg !1056
  %146 = tail call i32* @__errno_location() #28, !dbg !1057
  store i32 0, i32* %146, align 4, !dbg !1058, !tbaa !792
  store i8 0, i8* %138, align 1, !dbg !1059, !tbaa !914
  %147 = call i64 @pathconf(i8* %145, i32 3) #24, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %147, metadata !880, metadata !DIExpression()) #24, !dbg !1056
  store i8 %139, i8* %138, align 1, !dbg !1061, !tbaa !914
  %148 = icmp sgt i64 %147, -1, !dbg !1062
  br i1 %148, label %155, label %149, !dbg !1064

149:                                              ; preds = %143
  %150 = load i32, i32* %146, align 4, !dbg !1065, !tbaa !792
  switch i32 %150, label %152 [
    i32 0, label %155
    i32 2, label %151
  ], !dbg !1066

151:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i64 %135, metadata !875, metadata !DIExpression()) #24, !dbg !1047
  br label %155, !dbg !1067

152:                                              ; preds = %149
  store i8 0, i8* %138, align 1, !dbg !1069, !tbaa !914
  %153 = load i32, i32* %146, align 4, !dbg !1070, !tbaa !792
  %154 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %145) #24, !dbg !1071
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %154) #24, !dbg !1072
  store i8 %139, i8* %138, align 1, !dbg !1073, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %135, metadata !872, metadata !DIExpression()) #24, !dbg !1047
  call void @llvm.dbg.value(metadata i64 0, metadata !875, metadata !DIExpression()) #24, !dbg !1047
  br label %170

155:                                              ; preds = %151, %149, %143, %141
  %156 = phi i64 [ %134, %141 ], [ 0, %149 ], [ 0, %143 ], [ %135, %151 ], !dbg !1046
  %157 = phi i64 [ %134, %141 ], [ -1, %149 ], [ %147, %143 ], [ %135, %151 ], !dbg !1074
  call void @llvm.dbg.value(metadata i64 %157, metadata !872, metadata !DIExpression()) #24, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %156, metadata !875, metadata !DIExpression()) #24, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %138, metadata !1029, metadata !DIExpression()) #24, !dbg !1075
  call void @llvm.dbg.value(metadata i64 1, metadata !1030, metadata !DIExpression()) #24, !dbg !1075
  br label %158, !dbg !1077

158:                                              ; preds = %162, %155
  %159 = phi i64 [ 1, %155 ], [ %163, %162 ], !dbg !1078
  call void @llvm.dbg.value(metadata i64 %159, metadata !1030, metadata !DIExpression()) #24, !dbg !1075
  %160 = getelementptr inbounds i8, i8* %138, i64 %159, !dbg !1079
  %161 = load i8, i8* %160, align 1, !dbg !1079, !tbaa !914
  switch i8 %161, label %162 [
    i8 47, label %164
    i8 0, label %164
  ], !dbg !1080

162:                                              ; preds = %158
  %163 = add i64 %159, 1, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %163, metadata !1030, metadata !DIExpression()) #24, !dbg !1075
  br label %158, !dbg !1082, !llvm.loop !1083

164:                                              ; preds = %158, %158
  %165 = getelementptr inbounds i8, i8* %138, i64 %159, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %159, metadata !876, metadata !DIExpression()) #24, !dbg !1086
  %166 = icmp ult i64 %157, %159, !dbg !1087
  br i1 %166, label %167, label %133, !dbg !1088

167:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 %159, metadata !885, metadata !DIExpression()) #24, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %157, metadata !888, metadata !DIExpression()) #24, !dbg !1089
  call void @llvm.dbg.value(metadata i8 %161, metadata !889, metadata !DIExpression()) #24, !dbg !1089
  store i8 0, i8* %165, align 1, !dbg !1090, !tbaa !914
  %168 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.39, i64 0, i64 0), i32 5) #24, !dbg !1091
  %169 = call i8* @quote(i8* nonnull %138) #24, !dbg !1092
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %168, i64 %157, i64 %159, i8* %169) #24, !dbg !1093
  store i8 %161, i8* %165, align 1, !dbg !1094, !tbaa !914
  br label %170

170:                                              ; preds = %116, %137, %60, %66, %74, %85, %91, %104, %111, %152, %167
  %171 = phi i1 [ false, %66 ], [ false, %91 ], [ false, %60 ], [ false, %74 ], [ false, %111 ], [ false, %104 ], [ false, %167 ], [ false, %152 ], [ true, %85 ], [ true, %137 ], [ true, %116 ]
  %172 = and i1 %41, %171, !dbg !1095
  call void @llvm.dbg.value(metadata i1 %172, metadata !769, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !773
  %173 = load i32, i32* @optind, align 4, !dbg !1096, !tbaa !792
  %174 = add nsw i32 %173, 1, !dbg !1096
  store i32 %174, i32* @optind, align 4, !dbg !1096, !tbaa !792
  call void @llvm.dbg.value(metadata i8 undef, metadata !769, metadata !DIExpression()), !dbg !773
  %175 = icmp slt i32 %174, %0, !dbg !796
  br i1 %175, label %39, label %176, !dbg !799, !llvm.loop !1097

176:                                              ; preds = %170
  %177 = xor i1 %172, true, !dbg !1099
  %178 = zext i1 %177 to i32, !dbg !1099
  br label %179, !dbg !1099

179:                                              ; preds = %176, %28
  %180 = phi i32 [ 0, %28 ], [ %178, %176 ]
  ret i32 %180, !dbg !1100
}

; Function Attrs: nounwind
declare !dbg !1101 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1104 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1107 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1114 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1120 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1124 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1129 i64 @pathconf(i8*, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1133 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1135, metadata !DIExpression()), !dbg !1136
  store i8* %0, i8** @file_name, align 8, !dbg !1137, !tbaa !636
  ret void, !dbg !1138
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1139 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1143, metadata !DIExpression()), !dbg !1144
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1145, !tbaa !1146
  ret void, !dbg !1148
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1149 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1154, !tbaa !636
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !1155
  %3 = icmp eq i32 %2, 0, !dbg !1156
  br i1 %3, label %22, label %4, !dbg !1157

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1158, !tbaa !1146, !range !1159
  %6 = icmp eq i8 %5, 0, !dbg !1158
  br i1 %6, label %11, label %7, !dbg !1160

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !1161
  %9 = load i32, i32* %8, align 4, !dbg !1161, !tbaa !792
  %10 = icmp eq i32 %9, 32, !dbg !1162
  br i1 %10, label %22, label %11, !dbg !1163

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #24, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %12, metadata !1151, metadata !DIExpression()), !dbg !1165
  %13 = load i8*, i8** @file_name, align 8, !dbg !1166, !tbaa !636
  %14 = icmp eq i8* %13, null, !dbg !1166
  %15 = tail call i32* @__errno_location() #28, !dbg !1168
  %16 = load i32, i32* %15, align 4, !dbg !1168, !tbaa !792
  br i1 %14, label %19, label %17, !dbg !1169

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !1170
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.47, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !1171
  br label %20, !dbg !1171

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.48, i64 0, i64 0), i8* %12) #24, !dbg !1172
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1173, !tbaa !792
  tail call void @_exit(i32 %21) #26, !dbg !1174
  unreachable, !dbg !1174

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1175, !tbaa !636
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !1177
  %25 = icmp eq i32 %24, 0, !dbg !1178
  br i1 %25, label %28, label %26, !dbg !1179

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1180, !tbaa !792
  tail call void @_exit(i32 %27) #26, !dbg !1181
  unreachable, !dbg !1181

28:                                               ; preds = %22
  ret void, !dbg !1182
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1185, metadata !DIExpression()), !dbg !1188
  %2 = icmp eq i8* %0, null, !dbg !1189
  br i1 %2, label %3, label %6, !dbg !1191

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1192, !tbaa !636
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !1194
  tail call void @abort() #26, !dbg !1195
  unreachable, !dbg !1195

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !1196
  call void @llvm.dbg.value(metadata i8* %7, metadata !1186, metadata !DIExpression()), !dbg !1188
  %8 = icmp eq i8* %7, null, !dbg !1197
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1198
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %10, metadata !1187, metadata !DIExpression()), !dbg !1188
  %11 = ptrtoint i8* %10 to i64, !dbg !1199
  %12 = ptrtoint i8* %0 to i64, !dbg !1199
  %13 = sub i64 %11, %12, !dbg !1199
  %14 = icmp sgt i64 %13, 6, !dbg !1201
  br i1 %14, label %15, label %24, !dbg !1202

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1203
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #25, !dbg !1204
  %18 = icmp eq i32 %17, 0, !dbg !1205
  br i1 %18, label %19, label %24, !dbg !1206

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1185, metadata !DIExpression()), !dbg !1188
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #25, !dbg !1207
  %21 = icmp eq i32 %20, 0, !dbg !1210
  br i1 %21, label %22, label %24, !dbg !1211

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %23, metadata !1185, metadata !DIExpression()), !dbg !1188
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1214, !tbaa !636
  br label %24, !dbg !1215

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1185, metadata !DIExpression()), !dbg !1188
  store i8* %25, i8** @program_name, align 8, !dbg !1216, !tbaa !636
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1217, !tbaa !636
  ret void, !dbg !1218
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1219 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1224, metadata !DIExpression()), !dbg !1227
  %2 = tail call i32* @__errno_location() #28, !dbg !1228
  %3 = load i32, i32* %2, align 4, !dbg !1228, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %3, metadata !1225, metadata !DIExpression()), !dbg !1227
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1229
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1229
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1229
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !1230
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1230
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1226, metadata !DIExpression()), !dbg !1227
  store i32 %3, i32* %2, align 4, !dbg !1231, !tbaa !792
  ret %struct.quoting_options* %8, !dbg !1232
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1233 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1239, metadata !DIExpression()), !dbg !1240
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1241
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1241
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1242
  %5 = load i32, i32* %4, align 8, !dbg !1242, !tbaa !1243
  ret i32 %5, !dbg !1245
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1246 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1250, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %1, metadata !1251, metadata !DIExpression()), !dbg !1252
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1253
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1253
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1254
  store i32 %1, i32* %5, align 8, !dbg !1255, !tbaa !1243
  ret void, !dbg !1256
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1257 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1261, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8 %1, metadata !1262, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i32 %2, metadata !1263, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8 %1, metadata !1264, metadata !DIExpression()), !dbg !1270
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1271
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1271
  %6 = lshr i8 %1, 5, !dbg !1272
  %7 = zext i8 %6 to i64, !dbg !1272
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1273
  call void @llvm.dbg.value(metadata i32* %8, metadata !1266, metadata !DIExpression()), !dbg !1270
  %9 = and i8 %1, 31, !dbg !1274
  %10 = zext i8 %9 to i32, !dbg !1274
  call void @llvm.dbg.value(metadata i32 %10, metadata !1268, metadata !DIExpression()), !dbg !1270
  %11 = load i32, i32* %8, align 4, !dbg !1275, !tbaa !792
  %12 = lshr i32 %11, %10, !dbg !1276
  %13 = and i32 %12, 1, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %13, metadata !1269, metadata !DIExpression()), !dbg !1270
  %14 = and i32 %2, 1, !dbg !1278
  %15 = xor i32 %13, %14, !dbg !1279
  %16 = shl i32 %15, %10, !dbg !1280
  %17 = xor i32 %16, %11, !dbg !1281
  store i32 %17, i32* %8, align 4, !dbg !1281, !tbaa !792
  ret i32 %13, !dbg !1282
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1283 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1287, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %1, metadata !1288, metadata !DIExpression()), !dbg !1290
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1291
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1287, metadata !DIExpression()), !dbg !1290
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1294
  %6 = load i32, i32* %5, align 4, !dbg !1294, !tbaa !1295
  call void @llvm.dbg.value(metadata i32 %6, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i32 %1, i32* %5, align 4, !dbg !1296, !tbaa !1295
  ret i32 %6, !dbg !1297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1298 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1302, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8* %1, metadata !1303, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8* %2, metadata !1304, metadata !DIExpression()), !dbg !1305
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1306
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1302, metadata !DIExpression()), !dbg !1305
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1309
  store i32 10, i32* %6, align 8, !dbg !1310, !tbaa !1243
  %7 = icmp ne i8* %1, null, !dbg !1311
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1313
  br i1 %9, label %11, label %10, !dbg !1313

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1314
  unreachable, !dbg !1314

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1315
  store i8* %1, i8** %12, align 8, !dbg !1316, !tbaa !1317
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1318
  store i8* %2, i8** %13, align 8, !dbg !1319, !tbaa !1320
  ret void, !dbg !1321
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1322 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1326, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %1, metadata !1327, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8* %2, metadata !1328, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %3, metadata !1329, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1330, metadata !DIExpression()), !dbg !1334
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1335
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1335
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1331, metadata !DIExpression()), !dbg !1334
  %8 = tail call i32* @__errno_location() #28, !dbg !1336
  %9 = load i32, i32* %8, align 4, !dbg !1336, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %9, metadata !1332, metadata !DIExpression()), !dbg !1334
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1337
  %11 = load i32, i32* %10, align 8, !dbg !1337, !tbaa !1243
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1338
  %13 = load i32, i32* %12, align 4, !dbg !1338, !tbaa !1295
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1339
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1340
  %16 = load i8*, i8** %15, align 8, !dbg !1340, !tbaa !1317
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1341
  %18 = load i8*, i8** %17, align 8, !dbg !1341, !tbaa !1320
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1342
  call void @llvm.dbg.value(metadata i64 %19, metadata !1333, metadata !DIExpression()), !dbg !1334
  store i32 %9, i32* %8, align 4, !dbg !1343, !tbaa !792
  ret i64 %19, !dbg !1344
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1345 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1351, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %1, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %2, metadata !1353, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %3, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %4, metadata !1355, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %5, metadata !1356, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32* %6, metadata !1357, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %7, metadata !1358, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %8, metadata !1359, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 0, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 0, metadata !1362, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* null, metadata !1363, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 0, metadata !1364, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, metadata !1365, metadata !DIExpression()), !dbg !1416
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1417
  %14 = icmp eq i64 %13, 1, !dbg !1418
  call void @llvm.dbg.value(metadata i1 %14, metadata !1366, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1416
  %15 = lshr i32 %5, 1, !dbg !1419
  %16 = trunc i32 %15 to i8, !dbg !1419
  %17 = and i8 %16, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i8 %17, metadata !1367, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, metadata !1369, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, metadata !1370, metadata !DIExpression()), !dbg !1416
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1420

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1421
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1422
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1423
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1424
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1416
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1425
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1426
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1427
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %38, metadata !1370, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %37, metadata !1369, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %36, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %35, metadata !1367, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %34, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %33, metadata !1365, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %32, metadata !1364, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %31, metadata !1363, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %30, metadata !1362, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 0, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %29, metadata !1359, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %28, metadata !1358, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %27, metadata !1355, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.label(metadata !1410), !dbg !1428
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
  ], !dbg !1429

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1367, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 5, metadata !1355, metadata !DIExpression()), !dbg !1416
  br label %92, !dbg !1430

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1367, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 5, metadata !1355, metadata !DIExpression()), !dbg !1416
  %42 = and i8 %35, 1, !dbg !1432
  %43 = icmp eq i8 %42, 0, !dbg !1432
  br i1 %43, label %44, label %92, !dbg !1430

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1434
  br i1 %45, label %92, label %46, !dbg !1437

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1434, !tbaa !914
  br label %92, !dbg !1434

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %27), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %48, metadata !1358, metadata !DIExpression()), !dbg !1416
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %27), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %49, metadata !1359, metadata !DIExpression()), !dbg !1416
  br label %50, !dbg !1443

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1359, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %51, metadata !1358, metadata !DIExpression()), !dbg !1416
  %53 = and i8 %35, 1, !dbg !1444
  %54 = icmp eq i8 %53, 0, !dbg !1444
  br i1 %54, label %55, label %70, !dbg !1446

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1363, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 0, metadata !1361, metadata !DIExpression()), !dbg !1416
  %56 = load i8, i8* %51, align 1, !dbg !1447, !tbaa !914
  %57 = icmp eq i8 %56, 0, !dbg !1450
  br i1 %57, label %70, label %58, !dbg !1450

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1363, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %61, metadata !1361, metadata !DIExpression()), !dbg !1416
  %62 = icmp ult i64 %61, %39, !dbg !1451
  br i1 %62, label %63, label %65, !dbg !1454

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1451
  store i8 %59, i8* %64, align 1, !dbg !1451, !tbaa !914
  br label %65, !dbg !1451

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %66, metadata !1361, metadata !DIExpression()), !dbg !1416
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %67, metadata !1363, metadata !DIExpression()), !dbg !1416
  %68 = load i8, i8* %67, align 1, !dbg !1447, !tbaa !914
  %69 = icmp eq i8 %68, 0, !dbg !1450
  br i1 %69, label %70, label %58, !dbg !1450, !llvm.loop !1456

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1458
  call void @llvm.dbg.value(metadata i64 %71, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, metadata !1365, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %52, metadata !1363, metadata !DIExpression()), !dbg !1416
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %72, metadata !1364, metadata !DIExpression()), !dbg !1416
  br label %92, !dbg !1460

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1365, metadata !DIExpression()), !dbg !1416
  br label %74, !dbg !1461

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %75, metadata !1365, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, metadata !1367, metadata !DIExpression()), !dbg !1416
  br label %76, !dbg !1462

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1424
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %78, metadata !1367, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %77, metadata !1365, metadata !DIExpression()), !dbg !1416
  %79 = and i8 %78, 1, !dbg !1463
  %80 = icmp eq i8 %79, 0, !dbg !1463
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1465
  br label %82, !dbg !1465

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1416
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1419
  call void @llvm.dbg.value(metadata i8 %84, metadata !1367, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %83, metadata !1365, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 2, metadata !1355, metadata !DIExpression()), !dbg !1416
  %85 = and i8 %84, 1, !dbg !1466
  %86 = icmp eq i8 %85, 0, !dbg !1466
  br i1 %86, label %87, label %92, !dbg !1468

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1469
  br i1 %88, label %92, label %89, !dbg !1472

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1469, !tbaa !914
  br label %92, !dbg !1469

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1367, metadata !DIExpression()), !dbg !1416
  br label %92, !dbg !1473

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1474
  unreachable, !dbg !1474

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1458
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %40 ], !dbg !1416
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1416
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1416
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %100, metadata !1367, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %99, metadata !1365, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %98, metadata !1364, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %97, metadata !1363, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %96, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %95, metadata !1359, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %94, metadata !1358, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %93, metadata !1355, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 0, metadata !1360, metadata !DIExpression()), !dbg !1416
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
  br label %121, !dbg !1475

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1476
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1458
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1421
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1425
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1426
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1427
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %128, metadata !1370, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %127, metadata !1369, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %126, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %125, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %124, metadata !1362, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %123, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %122, metadata !1360, metadata !DIExpression()), !dbg !1416
  %130 = icmp eq i64 %125, -1, !dbg !1477
  br i1 %130, label %131, label %135, !dbg !1478

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1479
  %133 = load i8, i8* %132, align 1, !dbg !1479, !tbaa !914
  %134 = icmp eq i8 %133, 0, !dbg !1480
  br i1 %134, label %587, label %137, !dbg !1481

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1482
  br i1 %136, label %587, label %137, !dbg !1481

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1376, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 0, metadata !1377, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 0, metadata !1378, metadata !DIExpression()), !dbg !1483
  br i1 %106, label %138, label %153, !dbg !1484

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1486
  %140 = and i1 %107, %130, !dbg !1487
  br i1 %140, label %141, label %143, !dbg !1487

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %142, metadata !1354, metadata !DIExpression()), !dbg !1416
  br label %143, !dbg !1489

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1489
  call void @llvm.dbg.value(metadata i64 %144, metadata !1354, metadata !DIExpression()), !dbg !1416
  %145 = icmp ugt i64 %139, %144, !dbg !1490
  br i1 %145, label %153, label %146, !dbg !1491

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1492
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1493
  %149 = icmp ne i32 %148, 0, !dbg !1494
  %150 = or i1 %149, %109, !dbg !1495
  %151 = xor i1 %149, true, !dbg !1495
  %152 = zext i1 %151 to i8, !dbg !1495
  br i1 %150, label %153, label %646, !dbg !1495

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1483
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %156, metadata !1376, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %154, metadata !1354, metadata !DIExpression()), !dbg !1416
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1496
  %158 = load i8, i8* %157, align 1, !dbg !1496, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %158, metadata !1371, metadata !DIExpression()), !dbg !1483
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
  ], !dbg !1497

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1498

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1499

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()), !dbg !1483
  %162 = and i8 %126, 1, !dbg !1503
  %163 = icmp eq i8 %162, 0, !dbg !1503
  %164 = and i1 %110, %163, !dbg !1503
  br i1 %164, label %165, label %181, !dbg !1503

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1505
  br i1 %166, label %167, label %169, !dbg !1509

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1505
  store i8 39, i8* %168, align 1, !dbg !1505, !tbaa !914
  br label %169, !dbg !1505

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %170, metadata !1361, metadata !DIExpression()), !dbg !1416
  %171 = icmp ult i64 %170, %129, !dbg !1510
  br i1 %171, label %172, label %174, !dbg !1513

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1510
  store i8 36, i8* %173, align 1, !dbg !1510, !tbaa !914
  br label %174, !dbg !1510

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %175, metadata !1361, metadata !DIExpression()), !dbg !1416
  %176 = icmp ult i64 %175, %129, !dbg !1514
  br i1 %176, label %177, label %179, !dbg !1517

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1514
  store i8 39, i8* %178, align 1, !dbg !1514, !tbaa !914
  br label %179, !dbg !1514

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %180, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, metadata !1368, metadata !DIExpression()), !dbg !1416
  br label %181, !dbg !1518

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1416
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %183, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %182, metadata !1361, metadata !DIExpression()), !dbg !1416
  %184 = icmp ult i64 %182, %129, !dbg !1519
  br i1 %184, label %185, label %187, !dbg !1522

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1519
  store i8 92, i8* %186, align 1, !dbg !1519, !tbaa !914
  br label %187, !dbg !1519

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %188, metadata !1361, metadata !DIExpression()), !dbg !1416
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1523
  br i1 %191, label %192, label %473, !dbg !1523

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1525
  %194 = load i8, i8* %193, align 1, !dbg !1525, !tbaa !914
  %195 = add i8 %194, -48, !dbg !1526
  %196 = icmp ult i8 %195, 10, !dbg !1526
  br i1 %196, label %197, label %473, !dbg !1526

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1527
  br i1 %198, label %199, label %201, !dbg !1531

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1527
  store i8 48, i8* %200, align 1, !dbg !1527, !tbaa !914
  br label %201, !dbg !1527

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %202, metadata !1361, metadata !DIExpression()), !dbg !1416
  %203 = icmp ult i64 %202, %129, !dbg !1532
  br i1 %203, label %204, label %206, !dbg !1535

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1532
  store i8 48, i8* %205, align 1, !dbg !1532, !tbaa !914
  br label %206, !dbg !1532

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %207, metadata !1361, metadata !DIExpression()), !dbg !1416
  br label %473, !dbg !1536

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1537

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1538

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1539

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1541
  br i1 %214, label %215, label %473, !dbg !1541

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1543
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1544
  %218 = load i8, i8* %217, align 1, !dbg !1544, !tbaa !914
  %219 = icmp eq i8 %218, 63, !dbg !1545
  br i1 %219, label %220, label %473, !dbg !1546

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1547
  %222 = load i8, i8* %221, align 1, !dbg !1547, !tbaa !914
  %223 = sext i8 %222 to i32, !dbg !1547
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
  ], !dbg !1548

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1549

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1371, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 undef, metadata !1360, metadata !DIExpression()), !dbg !1416
  %226 = icmp ult i64 %123, %129, !dbg !1551
  br i1 %226, label %227, label %229, !dbg !1554

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1551
  store i8 63, i8* %228, align 1, !dbg !1551, !tbaa !914
  br label %229, !dbg !1551

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %230, metadata !1361, metadata !DIExpression()), !dbg !1416
  %231 = icmp ult i64 %230, %129, !dbg !1555
  br i1 %231, label %232, label %234, !dbg !1558

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1555
  store i8 34, i8* %233, align 1, !dbg !1555, !tbaa !914
  br label %234, !dbg !1555

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %235, metadata !1361, metadata !DIExpression()), !dbg !1416
  %236 = icmp ult i64 %235, %129, !dbg !1559
  br i1 %236, label %237, label %239, !dbg !1562

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1559
  store i8 34, i8* %238, align 1, !dbg !1559, !tbaa !914
  br label %239, !dbg !1559

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %240, metadata !1361, metadata !DIExpression()), !dbg !1416
  %241 = icmp ult i64 %240, %129, !dbg !1563
  br i1 %241, label %242, label %244, !dbg !1566

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1563
  store i8 63, i8* %243, align 1, !dbg !1563, !tbaa !914
  br label %244, !dbg !1563

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %245, metadata !1361, metadata !DIExpression()), !dbg !1416
  br label %473, !dbg !1567

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1375, metadata !DIExpression()), !dbg !1483
  br label %256, !dbg !1568

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1375, metadata !DIExpression()), !dbg !1483
  br label %256, !dbg !1569

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1375, metadata !DIExpression()), !dbg !1483
  br label %254, !dbg !1570

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1375, metadata !DIExpression()), !dbg !1483
  br label %254, !dbg !1571

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1375, metadata !DIExpression()), !dbg !1483
  br label %256, !dbg !1572

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1375, metadata !DIExpression()), !dbg !1483
  br i1 %110, label %252, label %253, !dbg !1573

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1574

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1577

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1579
  call void @llvm.dbg.value(metadata i8 %255, metadata !1375, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.label(metadata !1411), !dbg !1580
  br i1 %111, label %256, label %631, !dbg !1581

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1579
  call void @llvm.dbg.value(metadata i8 %257, metadata !1375, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.label(metadata !1412), !dbg !1583
  br i1 %102, label %495, label %473, !dbg !1584

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1585

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1586, !tbaa !914
  %261 = icmp eq i8 %260, 0, !dbg !1588
  br i1 %261, label %262, label %473, !dbg !1589

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1590
  br i1 %263, label %264, label %473, !dbg !1592

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1378, metadata !DIExpression()), !dbg !1483
  br label %265, !dbg !1593

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %266, metadata !1378, metadata !DIExpression()), !dbg !1483
  br i1 %111, label %473, label %631, !dbg !1594

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1369, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, metadata !1378, metadata !DIExpression()), !dbg !1483
  br i1 %110, label %268, label %473, !dbg !1596

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1597

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1600
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1602
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1602
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %274, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %273, metadata !1362, metadata !DIExpression()), !dbg !1416
  %275 = icmp ult i64 %123, %274, !dbg !1603
  br i1 %275, label %276, label %278, !dbg !1606

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1603
  store i8 39, i8* %277, align 1, !dbg !1603, !tbaa !914
  br label %278, !dbg !1603

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %279, metadata !1361, metadata !DIExpression()), !dbg !1416
  %280 = icmp ult i64 %279, %274, !dbg !1607
  br i1 %280, label %281, label %283, !dbg !1610

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1607
  store i8 92, i8* %282, align 1, !dbg !1607, !tbaa !914
  br label %283, !dbg !1607

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %284, metadata !1361, metadata !DIExpression()), !dbg !1416
  %285 = icmp ult i64 %284, %274, !dbg !1611
  br i1 %285, label %286, label %288, !dbg !1614

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1611
  store i8 39, i8* %287, align 1, !dbg !1611, !tbaa !914
  br label %288, !dbg !1611

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %289, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, metadata !1368, metadata !DIExpression()), !dbg !1416
  br label %473, !dbg !1615

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1616

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1379, metadata !DIExpression()), !dbg !1617
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1618
  %293 = load i16*, i16** %292, align 8, !dbg !1618, !tbaa !636
  %294 = zext i8 %158 to i64, !dbg !1618
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1618
  %296 = load i16, i16* %295, align 2, !dbg !1618, !tbaa !1620
  %297 = lshr i16 %296, 14, !dbg !1622
  %298 = trunc i16 %297 to i8, !dbg !1622
  %299 = and i8 %298, 1, !dbg !1622
  call void @llvm.dbg.value(metadata i8 %354, metadata !1382, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 %355, metadata !1379, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 %306, metadata !1354, metadata !DIExpression()), !dbg !1416
  %300 = icmp eq i8 %299, 0, !dbg !1623
  call void @llvm.dbg.value(metadata i1 %357, metadata !1378, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1483
  br label %359, !dbg !1624

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1625
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1383, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8* %23, metadata !1627, metadata !DIExpression()) #24, !dbg !1635
  call void @llvm.dbg.value(metadata i32 0, metadata !1633, metadata !DIExpression()) #24, !dbg !1635
  call void @llvm.dbg.value(metadata i64 8, metadata !1634, metadata !DIExpression()) #24, !dbg !1635
  store i64 0, i64* %10, align 8, !dbg !1637
  call void @llvm.dbg.value(metadata i64 0, metadata !1379, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i8 1, metadata !1382, metadata !DIExpression()), !dbg !1617
  %302 = icmp eq i64 %154, -1, !dbg !1638
  br i1 %302, label %303, label %305, !dbg !1640

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %304, metadata !1354, metadata !DIExpression()), !dbg !1416
  br label %305, !dbg !1642

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1483
  call void @llvm.dbg.value(metadata i64 %306, metadata !1354, metadata !DIExpression()), !dbg !1416
  br label %307, !dbg !1643

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1644
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1645
  call void @llvm.dbg.value(metadata i8 %309, metadata !1382, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 %308, metadata !1379, metadata !DIExpression()), !dbg !1617
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1646
  %310 = add i64 %308, %122, !dbg !1647
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1648
  %312 = sub i64 %306, %310, !dbg !1649
  call void @llvm.dbg.value(metadata i32* %12, metadata !1396, metadata !DIExpression(DW_OP_deref)), !dbg !1650
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %313, metadata !1399, metadata !DIExpression()), !dbg !1650
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1652

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1379, metadata !DIExpression()), !dbg !1617
  %315 = icmp ugt i64 %306, %310, !dbg !1653
  br i1 %315, label %316, label %341, !dbg !1655

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1656
  br label %318, !dbg !1656

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1379, metadata !DIExpression()), !dbg !1617
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1657
  %322 = load i8, i8* %321, align 1, !dbg !1657, !tbaa !914
  %323 = icmp eq i8 %322, 0, !dbg !1655
  br i1 %323, label %341, label %324, !dbg !1656

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %325, metadata !1379, metadata !DIExpression()), !dbg !1617
  %326 = add i64 %325, %122, !dbg !1659
  %327 = icmp ult i64 %326, %306, !dbg !1653
  br i1 %327, label %318, label %341, !dbg !1655, !llvm.loop !1660

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1661
  call void @llvm.dbg.value(metadata i64 1, metadata !1400, metadata !DIExpression()), !dbg !1662
  br i1 %330, label %331, label %344, !dbg !1661

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1400, metadata !DIExpression()), !dbg !1662
  %333 = add i64 %332, %310, !dbg !1663
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1666
  %335 = load i8, i8* %334, align 1, !dbg !1666, !tbaa !914
  %336 = sext i8 %335 to i32, !dbg !1666
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1667

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %338, metadata !1400, metadata !DIExpression()), !dbg !1662
  %339 = icmp eq i64 %338, %313, !dbg !1669
  br i1 %339, label %344, label %331, !dbg !1670, !llvm.loop !1671

340:                                              ; preds = %307
  br label %341, !dbg !1673

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1382, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 undef, metadata !1379, metadata !DIExpression()), !dbg !1617
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1673
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1674, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %345, metadata !1396, metadata !DIExpression()), !dbg !1650
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1676
  %347 = icmp eq i32 %346, 0, !dbg !1676
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1677
  call void @llvm.dbg.value(metadata i8 %348, metadata !1382, metadata !DIExpression()), !dbg !1617
  %349 = add i64 %313, %308, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %349, metadata !1379, metadata !DIExpression()), !dbg !1617
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1673
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1679
  %351 = icmp eq i32 %350, 0, !dbg !1680
  br i1 %351, label %307, label %353, !dbg !1681, !llvm.loop !1682

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1382, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 undef, metadata !1379, metadata !DIExpression()), !dbg !1617
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1673
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1684
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1684
  call void @llvm.dbg.value(metadata i8 %354, metadata !1382, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 %355, metadata !1379, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 %306, metadata !1354, metadata !DIExpression()), !dbg !1416
  %356 = and i8 %354, 1, !dbg !1623
  %357 = icmp eq i8 %356, 0, !dbg !1623
  call void @llvm.dbg.value(metadata i1 %357, metadata !1378, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1483
  %358 = icmp ugt i64 %355, 1, !dbg !1685
  br i1 %358, label %367, label %359, !dbg !1624

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1686
  br i1 %364, label %367, label %365, !dbg !1686

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i8 %472, metadata !1378, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %441, metadata !1377, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %440, metadata !1376, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %439, metadata !1371, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %438, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %371, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %437, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %375, metadata !1360, metadata !DIExpression()), !dbg !1416
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %372, metadata !1407, metadata !DIExpression()), !dbg !1688
  %373 = and i1 %102, %368
  br label %374, !dbg !1689

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1476
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1416
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1425
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1483
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1483
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1690
  call void @llvm.dbg.value(metadata i8 %380, metadata !1377, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %379, metadata !1376, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %378, metadata !1371, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %377, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %376, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %375, metadata !1360, metadata !DIExpression()), !dbg !1416
  br i1 %373, label %381, label %427, !dbg !1691

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1696

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()), !dbg !1483
  %383 = and i8 %377, 1, !dbg !1699
  %384 = icmp eq i8 %383, 0, !dbg !1699
  %385 = and i1 %110, %384, !dbg !1699
  br i1 %385, label %386, label %402, !dbg !1699

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1701
  br i1 %387, label %388, label %390, !dbg !1705

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1701
  store i8 39, i8* %389, align 1, !dbg !1701, !tbaa !914
  br label %390, !dbg !1701

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %391, metadata !1361, metadata !DIExpression()), !dbg !1416
  %392 = icmp ult i64 %391, %129, !dbg !1706
  br i1 %392, label %393, label %395, !dbg !1709

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1706
  store i8 36, i8* %394, align 1, !dbg !1706, !tbaa !914
  br label %395, !dbg !1706

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %396, metadata !1361, metadata !DIExpression()), !dbg !1416
  %397 = icmp ult i64 %396, %129, !dbg !1710
  br i1 %397, label %398, label %400, !dbg !1713

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1710
  store i8 39, i8* %399, align 1, !dbg !1710, !tbaa !914
  br label %400, !dbg !1710

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %401, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, metadata !1368, metadata !DIExpression()), !dbg !1416
  br label %402, !dbg !1714

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1416
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %404, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %403, metadata !1361, metadata !DIExpression()), !dbg !1416
  %405 = icmp ult i64 %403, %129, !dbg !1715
  br i1 %405, label %406, label %408, !dbg !1718

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1715
  store i8 92, i8* %407, align 1, !dbg !1715, !tbaa !914
  br label %408, !dbg !1715

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %409, metadata !1361, metadata !DIExpression()), !dbg !1416
  %410 = icmp ult i64 %409, %129, !dbg !1719
  br i1 %410, label %411, label %415, !dbg !1722

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1719
  %413 = or i8 %412, 48, !dbg !1719
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1719
  store i8 %413, i8* %414, align 1, !dbg !1719, !tbaa !914
  br label %415, !dbg !1719

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %416, metadata !1361, metadata !DIExpression()), !dbg !1416
  %417 = icmp ult i64 %416, %129, !dbg !1723
  br i1 %417, label %418, label %423, !dbg !1726

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1723
  %420 = and i8 %419, 7, !dbg !1723
  %421 = or i8 %420, 48, !dbg !1723
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1723
  store i8 %421, i8* %422, align 1, !dbg !1723, !tbaa !914
  br label %423, !dbg !1723

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %424, metadata !1361, metadata !DIExpression()), !dbg !1416
  %425 = and i8 %378, 7, !dbg !1727
  %426 = or i8 %425, 48, !dbg !1728
  call void @llvm.dbg.value(metadata i8 %426, metadata !1371, metadata !DIExpression()), !dbg !1483
  br label %436, !dbg !1729

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1730
  %429 = icmp eq i8 %428, 0, !dbg !1730
  br i1 %429, label %436, label %430, !dbg !1732

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1733
  br i1 %431, label %432, label %434, !dbg !1737

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1733
  store i8 92, i8* %433, align 1, !dbg !1733, !tbaa !914
  br label %434, !dbg !1733

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %435, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, metadata !1376, metadata !DIExpression()), !dbg !1483
  br label %436, !dbg !1738

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1416
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1425
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1483
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1483
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %441, metadata !1377, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %440, metadata !1376, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %439, metadata !1371, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %438, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %437, metadata !1361, metadata !DIExpression()), !dbg !1416
  %442 = add i64 %375, 1, !dbg !1739
  %443 = icmp ugt i64 %372, %442, !dbg !1741
  br i1 %443, label %444, label %471, !dbg !1742

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1743
  %446 = icmp ne i8 %445, 0, !dbg !1743
  %447 = and i8 %441, 1, !dbg !1743
  %448 = icmp eq i8 %447, 0, !dbg !1743
  %449 = and i1 %446, %448, !dbg !1743
  br i1 %449, label %450, label %461, !dbg !1743

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1746
  br i1 %451, label %452, label %454, !dbg !1750

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1746
  store i8 39, i8* %453, align 1, !dbg !1746, !tbaa !914
  br label %454, !dbg !1746

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %455, metadata !1361, metadata !DIExpression()), !dbg !1416
  %456 = icmp ult i64 %455, %129, !dbg !1751
  br i1 %456, label %457, label %459, !dbg !1754

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1751
  store i8 39, i8* %458, align 1, !dbg !1751, !tbaa !914
  br label %459, !dbg !1751

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %460, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, metadata !1368, metadata !DIExpression()), !dbg !1416
  br label %461, !dbg !1755

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1756
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %463, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %462, metadata !1361, metadata !DIExpression()), !dbg !1416
  %464 = icmp ult i64 %462, %129, !dbg !1757
  br i1 %464, label %465, label %467, !dbg !1760

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1757
  store i8 %439, i8* %466, align 1, !dbg !1757, !tbaa !914
  br label %467, !dbg !1757

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %468, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %442, metadata !1360, metadata !DIExpression()), !dbg !1416
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1761
  %470 = load i8, i8* %469, align 1, !dbg !1761, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %470, metadata !1371, metadata !DIExpression()), !dbg !1483
  br label %374, !dbg !1762, !llvm.loop !1763

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i8 %472, metadata !1378, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %441, metadata !1377, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %440, metadata !1376, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %439, metadata !1371, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %438, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %371, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %437, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %375, metadata !1360, metadata !DIExpression()), !dbg !1416
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1476
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1416
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1421
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1766
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1416
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1416
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1483
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1483
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1483
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %482, metadata !1378, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %481, metadata !1377, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %156, metadata !1376, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %480, metadata !1371, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %479, metadata !1369, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %478, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %477, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %476, metadata !1362, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %475, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %474, metadata !1360, metadata !DIExpression()), !dbg !1416
  br i1 %116, label %494, label %484, !dbg !1767

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1769
  %486 = zext i8 %485 to i64, !dbg !1769
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1770
  %488 = load i32, i32* %487, align 4, !dbg !1770, !tbaa !792
  %489 = and i8 %480, 31, !dbg !1771
  %490 = zext i8 %489 to i32, !dbg !1771
  %491 = shl nuw i32 1, %490, !dbg !1772
  %492 = and i32 %488, %491, !dbg !1772
  %493 = icmp eq i32 %492, 0, !dbg !1772
  br i1 %493, label %494, label %495, !dbg !1773

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1774

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1775
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1416
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1421
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1766
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1425
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1426
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1483
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1483
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %503, metadata !1378, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %502, metadata !1371, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %501, metadata !1369, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %500, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %499, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %498, metadata !1362, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %497, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %496, metadata !1360, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.label(metadata !1413), !dbg !1776
  br i1 %109, label %505, label %635, !dbg !1777

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()), !dbg !1483
  %506 = and i8 %500, 1, !dbg !1779
  %507 = icmp eq i8 %506, 0, !dbg !1779
  %508 = and i1 %110, %507, !dbg !1779
  br i1 %508, label %509, label %525, !dbg !1779

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1781
  br i1 %510, label %511, label %513, !dbg !1785

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1781
  store i8 39, i8* %512, align 1, !dbg !1781, !tbaa !914
  br label %513, !dbg !1781

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %514, metadata !1361, metadata !DIExpression()), !dbg !1416
  %515 = icmp ult i64 %514, %504, !dbg !1786
  br i1 %515, label %516, label %518, !dbg !1789

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1786
  store i8 36, i8* %517, align 1, !dbg !1786, !tbaa !914
  br label %518, !dbg !1786

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %519, metadata !1361, metadata !DIExpression()), !dbg !1416
  %520 = icmp ult i64 %519, %504, !dbg !1790
  br i1 %520, label %521, label %523, !dbg !1793

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1790
  store i8 39, i8* %522, align 1, !dbg !1790, !tbaa !914
  br label %523, !dbg !1790

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %524, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 1, metadata !1368, metadata !DIExpression()), !dbg !1416
  br label %525, !dbg !1794

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1483
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %527, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %526, metadata !1361, metadata !DIExpression()), !dbg !1416
  %528 = icmp ult i64 %526, %504, !dbg !1795
  br i1 %528, label %529, label %531, !dbg !1798

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1795
  store i8 92, i8* %530, align 1, !dbg !1795, !tbaa !914
  br label %531, !dbg !1795

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %543, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %542, metadata !1378, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %541, metadata !1377, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %540, metadata !1371, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %539, metadata !1369, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %538, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %537, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %536, metadata !1362, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %535, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %534, metadata !1360, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.label(metadata !1414), !dbg !1799
  br label %560, !dbg !1800

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1775
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1416
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1421
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1766
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1425
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1426
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1803
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1483
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1483
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %542, metadata !1378, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %541, metadata !1377, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %540, metadata !1371, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %539, metadata !1369, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %538, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %537, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %536, metadata !1362, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %535, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %534, metadata !1360, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.label(metadata !1414), !dbg !1799
  %544 = and i8 %538, 1, !dbg !1800
  %545 = icmp ne i8 %544, 0, !dbg !1800
  %546 = and i8 %541, 1, !dbg !1800
  %547 = icmp eq i8 %546, 0, !dbg !1800
  %548 = and i1 %545, %547, !dbg !1800
  br i1 %548, label %549, label %560, !dbg !1800

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1804
  br i1 %550, label %551, label %553, !dbg !1808

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1804
  store i8 39, i8* %552, align 1, !dbg !1804, !tbaa !914
  br label %553, !dbg !1804

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %554, metadata !1361, metadata !DIExpression()), !dbg !1416
  %555 = icmp ult i64 %554, %543, !dbg !1809
  br i1 %555, label %556, label %558, !dbg !1812

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1809
  store i8 39, i8* %557, align 1, !dbg !1809, !tbaa !914
  br label %558, !dbg !1809

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %559, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 0, metadata !1368, metadata !DIExpression()), !dbg !1416
  br label %560, !dbg !1813

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1483
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %569, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %568, metadata !1361, metadata !DIExpression()), !dbg !1416
  %570 = icmp ult i64 %568, %561, !dbg !1814
  br i1 %570, label %571, label %573, !dbg !1817

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1814
  store i8 %563, i8* %572, align 1, !dbg !1814, !tbaa !914
  br label %573, !dbg !1814

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %574, metadata !1361, metadata !DIExpression()), !dbg !1416
  %575 = icmp eq i8 %562, 0, !dbg !1818
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1820
  call void @llvm.dbg.value(metadata i8 %576, metadata !1370, metadata !DIExpression()), !dbg !1416
  br label %577, !dbg !1821

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1775
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1416
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1421
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1766
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1425
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1416
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1427
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %584, metadata !1370, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %583, metadata !1369, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %582, metadata !1368, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %581, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %580, metadata !1362, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %579, metadata !1361, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %578, metadata !1360, metadata !DIExpression()), !dbg !1416
  %586 = add i64 %578, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %586, metadata !1360, metadata !DIExpression()), !dbg !1416
  br label %121, !dbg !1823, !llvm.loop !1824

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1826
  %590 = and i1 %110, %589, !dbg !1828
  %591 = xor i1 %590, true, !dbg !1828
  %592 = or i1 %109, %591, !dbg !1828
  br i1 %592, label %593, label %635, !dbg !1828

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1829
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1829
  br i1 %597, label %598, label %607, !dbg !1829

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1831
  %600 = icmp eq i8 %599, 0, !dbg !1831
  br i1 %600, label %603, label %601, !dbg !1834

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1835
  br label %652, !dbg !1836

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1837
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1839
  br i1 %606, label %26, label %607, !dbg !1839

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1840
  %610 = and i1 %609, %608, !dbg !1842
  br i1 %610, label %611, label %626, !dbg !1842

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1363, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %123, metadata !1361, metadata !DIExpression()), !dbg !1416
  %612 = load i8, i8* %97, align 1, !dbg !1843, !tbaa !914
  %613 = icmp eq i8 %612, 0, !dbg !1846
  br i1 %613, label %626, label %614, !dbg !1846

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1363, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %617, metadata !1361, metadata !DIExpression()), !dbg !1416
  %618 = icmp ult i64 %617, %129, !dbg !1847
  br i1 %618, label %619, label %621, !dbg !1850

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1847
  store i8 %615, i8* %620, align 1, !dbg !1847, !tbaa !914
  br label %621, !dbg !1847

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %622, metadata !1361, metadata !DIExpression()), !dbg !1416
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1851
  call void @llvm.dbg.value(metadata i8* %623, metadata !1363, metadata !DIExpression()), !dbg !1416
  %624 = load i8, i8* %623, align 1, !dbg !1843, !tbaa !914
  %625 = icmp eq i8 %624, 0, !dbg !1846
  br i1 %625, label %626, label %614, !dbg !1846, !llvm.loop !1852

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1458
  call void @llvm.dbg.value(metadata i64 %627, metadata !1361, metadata !DIExpression()), !dbg !1416
  %628 = icmp ult i64 %627, %129, !dbg !1854
  br i1 %628, label %629, label %652, !dbg !1856

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1857
  store i8 0, i8* %630, align 1, !dbg !1858, !tbaa !914
  br label %652, !dbg !1857

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %637, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.label(metadata !1415), !dbg !1859
  %633 = icmp eq i8 %101, 0, !dbg !1860
  %634 = select i1 %633, i32 2, i32 4, !dbg !1860
  br label %642, !dbg !1860

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1352, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %637, metadata !1354, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.label(metadata !1415), !dbg !1859
  %639 = icmp eq i32 %93, 2, !dbg !1862
  %640 = icmp eq i8 %636, 0, !dbg !1860
  %641 = select i1 %640, i32 2, i32 4, !dbg !1860
  br i1 %639, label %642, label %646, !dbg !1860

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1860

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1355, metadata !DIExpression()), !dbg !1416
  %650 = and i32 %5, -3, !dbg !1863
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1864
  br label %652, !dbg !1865

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1866
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1867 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1871, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i32 %1, metadata !1872, metadata !DIExpression()), !dbg !1875
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1876
  call void @llvm.dbg.value(metadata i8* %3, metadata !1873, metadata !DIExpression()), !dbg !1875
  %4 = icmp eq i8* %3, %0, !dbg !1877
  br i1 %4, label %5, label %72, !dbg !1879

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1880
  call void @llvm.dbg.value(metadata i8* %6, metadata !1874, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* %6, metadata !1881, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* undef, metadata !1887, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 85, metadata !1888, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 84, metadata !1889, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 70, metadata !1890, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 45, metadata !1891, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 56, metadata !1892, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1893, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1894, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1895, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1896, metadata !DIExpression()), !dbg !1897
  %7 = load i8, i8* %6, align 1, !dbg !1900, !tbaa !914
  %8 = and i8 %7, -33, !dbg !1900
  %9 = sext i8 %8 to i32, !dbg !1900
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1900

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1902, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8* undef, metadata !1907, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 84, metadata !1908, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 70, metadata !1909, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 45, metadata !1910, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 56, metadata !1911, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1914, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1915, metadata !DIExpression()), !dbg !1916
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1920
  %12 = load i8, i8* %11, align 1, !dbg !1920, !tbaa !914
  %13 = and i8 %12, -33, !dbg !1920
  %14 = icmp eq i8 %13, 84, !dbg !1920
  br i1 %14, label %15, label %69, !dbg !1920

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1922, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* undef, metadata !1927, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 70, metadata !1928, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 45, metadata !1929, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 56, metadata !1930, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 0, metadata !1933, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 0, metadata !1934, metadata !DIExpression()), !dbg !1935
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1939
  %17 = load i8, i8* %16, align 1, !dbg !1939, !tbaa !914
  %18 = and i8 %17, -33, !dbg !1939
  %19 = icmp eq i8 %18, 70, !dbg !1939
  br i1 %19, label %20, label %69, !dbg !1939

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1941, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8* undef, metadata !1946, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 45, metadata !1947, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 56, metadata !1948, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, metadata !1950, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, metadata !1951, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, metadata !1952, metadata !DIExpression()), !dbg !1953
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1957
  %22 = load i8, i8* %21, align 1, !dbg !1957, !tbaa !914
  %23 = icmp eq i8 %22, 45, !dbg !1957
  br i1 %23, label %24, label %69, !dbg !1959

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1960, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* undef, metadata !1965, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 56, metadata !1966, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1969, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !1971
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1975
  %26 = load i8, i8* %25, align 1, !dbg !1975, !tbaa !914
  %27 = icmp eq i8 %26, 56, !dbg !1975
  br i1 %27, label %28, label %69, !dbg !1977

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1978, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* undef, metadata !1983, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !1988
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1992
  %30 = load i8, i8* %29, align 1, !dbg !1992, !tbaa !914
  %31 = icmp eq i8 %30, 0, !dbg !1992
  br i1 %31, label %32, label %69, !dbg !1994

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1995, !tbaa !914
  %34 = icmp eq i8 %33, 96, !dbg !1996
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !1995
  br label %72, !dbg !1997

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1902, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* undef, metadata !1907, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 66, metadata !1908, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 49, metadata !1909, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 56, metadata !1910, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 48, metadata !1911, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 51, metadata !1912, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 48, metadata !1913, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 0, metadata !1914, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 0, metadata !1915, metadata !DIExpression()), !dbg !1998
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2002
  %38 = load i8, i8* %37, align 1, !dbg !2002, !tbaa !914
  %39 = and i8 %38, -33, !dbg !2002
  %40 = icmp eq i8 %39, 66, !dbg !2002
  br i1 %40, label %41, label %69, !dbg !2002

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1922, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8* undef, metadata !1927, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 49, metadata !1928, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 56, metadata !1929, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 48, metadata !1930, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 51, metadata !1931, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 48, metadata !1932, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 0, metadata !1933, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 0, metadata !1934, metadata !DIExpression()), !dbg !2003
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2005
  %43 = load i8, i8* %42, align 1, !dbg !2005, !tbaa !914
  %44 = icmp eq i8 %43, 49, !dbg !2005
  br i1 %44, label %45, label %69, !dbg !2006

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1941, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8* undef, metadata !1946, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 56, metadata !1947, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 48, metadata !1948, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 51, metadata !1949, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 48, metadata !1950, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 0, metadata !1951, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 0, metadata !1952, metadata !DIExpression()), !dbg !2007
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2009
  %47 = load i8, i8* %46, align 1, !dbg !2009, !tbaa !914
  %48 = icmp eq i8 %47, 56, !dbg !2009
  br i1 %48, label %49, label %69, !dbg !2010

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8* undef, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 48, metadata !1966, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 51, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 48, metadata !1968, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 0, metadata !1969, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !2011
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2013
  %51 = load i8, i8* %50, align 1, !dbg !2013, !tbaa !914
  %52 = icmp eq i8 %51, 48, !dbg !2013
  br i1 %52, label %53, label %69, !dbg !2014

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1978, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8* undef, metadata !1983, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 51, metadata !1984, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 48, metadata !1985, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !2015
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2017
  %55 = load i8, i8* %54, align 1, !dbg !2017, !tbaa !914
  %56 = icmp eq i8 %55, 51, !dbg !2017
  br i1 %56, label %57, label %69, !dbg !2018

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2019, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8* undef, metadata !2024, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 48, metadata !2025, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 0, metadata !2027, metadata !DIExpression()), !dbg !2028
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2032
  %59 = load i8, i8* %58, align 1, !dbg !2032, !tbaa !914
  %60 = icmp eq i8 %59, 48, !dbg !2032
  br i1 %60, label %61, label %69, !dbg !2034

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2035, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8* undef, metadata !2040, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2043
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2047
  %63 = load i8, i8* %62, align 1, !dbg !2047, !tbaa !914
  %64 = icmp eq i8 %63, 0, !dbg !2047
  br i1 %64, label %65, label %69, !dbg !2049

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2050, !tbaa !914
  %67 = icmp eq i8 %66, 96, !dbg !2051
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !2050
  br label %72, !dbg !2052

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2053
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !2054
  br label %72, !dbg !2055

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1875
  ret i8* %73, !dbg !2056
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2057 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2061 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2067 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2071, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %1, metadata !2072, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2073, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8* %0, metadata !2075, metadata !DIExpression()) #24, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %1, metadata !2080, metadata !DIExpression()) #24, !dbg !2088
  call void @llvm.dbg.value(metadata i64* null, metadata !2081, metadata !DIExpression()) #24, !dbg !2088
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2082, metadata !DIExpression()) #24, !dbg !2088
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2090
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2083, metadata !DIExpression()) #24, !dbg !2088
  %6 = tail call i32* @__errno_location() #28, !dbg !2091
  %7 = load i32, i32* %6, align 4, !dbg !2091, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %7, metadata !2084, metadata !DIExpression()) #24, !dbg !2088
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2092
  %9 = load i32, i32* %8, align 4, !dbg !2092, !tbaa !1295
  %10 = or i32 %9, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %10, metadata !2085, metadata !DIExpression()) #24, !dbg !2088
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2094
  %12 = load i32, i32* %11, align 8, !dbg !2094, !tbaa !1243
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2095
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2096
  %15 = load i8*, i8** %14, align 8, !dbg !2096, !tbaa !1317
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2097
  %17 = load i8*, i8** %16, align 8, !dbg !2097, !tbaa !1320
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !2098
  %19 = add i64 %18, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %19, metadata !2086, metadata !DIExpression()) #24, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %19, metadata !2100, metadata !DIExpression()) #24, !dbg !2105
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !2107
  call void @llvm.dbg.value(metadata i8* %20, metadata !2087, metadata !DIExpression()) #24, !dbg !2088
  %21 = load i32, i32* %11, align 8, !dbg !2108, !tbaa !1243
  %22 = load i8*, i8** %14, align 8, !dbg !2109, !tbaa !1317
  %23 = load i8*, i8** %16, align 8, !dbg !2110, !tbaa !1320
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !2111
  store i32 %7, i32* %6, align 4, !dbg !2112, !tbaa !792
  ret i8* %20, !dbg !2113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2076 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2075, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i64 %1, metadata !2080, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i64* %2, metadata !2081, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2082, metadata !DIExpression()), !dbg !2114
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2115
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2115
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2083, metadata !DIExpression()), !dbg !2114
  %7 = tail call i32* @__errno_location() #28, !dbg !2116
  %8 = load i32, i32* %7, align 4, !dbg !2116, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %8, metadata !2084, metadata !DIExpression()), !dbg !2114
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2117
  %10 = load i32, i32* %9, align 4, !dbg !2117, !tbaa !1295
  %11 = icmp eq i64* %2, null, !dbg !2118
  %12 = zext i1 %11 to i32, !dbg !2118
  %13 = or i32 %10, %12, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %13, metadata !2085, metadata !DIExpression()), !dbg !2114
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2120
  %15 = load i32, i32* %14, align 8, !dbg !2120, !tbaa !1243
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2121
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2122
  %18 = load i8*, i8** %17, align 8, !dbg !2122, !tbaa !1317
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2123
  %20 = load i8*, i8** %19, align 8, !dbg !2123, !tbaa !1320
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2124
  %22 = add i64 %21, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %22, metadata !2086, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i64 %22, metadata !2100, metadata !DIExpression()) #24, !dbg !2126
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !2128
  call void @llvm.dbg.value(metadata i8* %23, metadata !2087, metadata !DIExpression()), !dbg !2114
  %24 = load i32, i32* %14, align 8, !dbg !2129, !tbaa !1243
  %25 = load i8*, i8** %17, align 8, !dbg !2130, !tbaa !1317
  %26 = load i8*, i8** %19, align 8, !dbg !2131, !tbaa !1320
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2132
  store i32 %8, i32* %7, align 4, !dbg !2133, !tbaa !792
  br i1 %11, label %29, label %28, !dbg !2134

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2135, !tbaa !2137
  br label %29, !dbg !2139

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2140
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2141 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2145, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2143, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 1, metadata !2144, metadata !DIExpression()), !dbg !2146
  %2 = load i32, i32* @nslots, align 4, !dbg !2147, !tbaa !792
  %3 = icmp sgt i32 %2, 1, !dbg !2150
  br i1 %3, label %4, label %12, !dbg !2151

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2150
  br label %6, !dbg !2151

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2144, metadata !DIExpression()), !dbg !2146
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2152
  %9 = load i8*, i8** %8, align 8, !dbg !2152, !tbaa !2153
  tail call void @free(i8* %9) #24, !dbg !2155
  %10 = add nuw nsw i64 %7, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %10, metadata !2144, metadata !DIExpression()), !dbg !2146
  %11 = icmp eq i64 %10, %5, !dbg !2150
  br i1 %11, label %12, label %6, !dbg !2151, !llvm.loop !2157

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2159
  %14 = load i8*, i8** %13, align 8, !dbg !2159, !tbaa !2153
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2161
  br i1 %15, label %17, label %16, !dbg !2162

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !2163
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2165, !tbaa !2166
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2167, !tbaa !2153
  br label %17, !dbg !2168

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2169
  br i1 %18, label %21, label %19, !dbg !2171

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2172
  tail call void @free(i8* %20) #24, !dbg !2174
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2175, !tbaa !636
  br label %21, !dbg !2176

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2177, !tbaa !792
  ret void, !dbg !2178
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2181, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* %1, metadata !2182, metadata !DIExpression()), !dbg !2183
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2184
  ret i8* %3, !dbg !2185
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2190, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i8* %1, metadata !2191, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i64 %2, metadata !2192, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2193, metadata !DIExpression()), !dbg !2205
  %5 = tail call i32* @__errno_location() #28, !dbg !2206
  %6 = load i32, i32* %5, align 4, !dbg !2206, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %6, metadata !2194, metadata !DIExpression()), !dbg !2205
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2207, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2195, metadata !DIExpression()), !dbg !2205
  %8 = icmp slt i32 %0, 0, !dbg !2208
  br i1 %8, label %9, label %10, !dbg !2210

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2211
  unreachable, !dbg !2211

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2212, !tbaa !792
  %12 = icmp sgt i32 %11, %0, !dbg !2213
  br i1 %12, label %34, label %13, !dbg !2214

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2215
  call void @llvm.dbg.value(metadata i1 %14, metadata !2196, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2216
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2199, metadata !DIExpression()), !dbg !2216
  %15 = icmp eq i32 %0, 2147483647, !dbg !2217
  br i1 %15, label %16, label %17, !dbg !2219

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2220
  unreachable, !dbg !2220

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2221
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2221
  %20 = add nuw nsw i32 %0, 1, !dbg !2222
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2223
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !2224
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2224
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2195, metadata !DIExpression()), !dbg !2205
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2225, !tbaa !636
  br i1 %14, label %25, label %26, !dbg !2226

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2227, !tbaa.struct !2229
  br label %26, !dbg !2230

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2231, !tbaa !792
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2232
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2233
  %31 = sub nsw i32 %20, %27, !dbg !2234
  %32 = sext i32 %31 to i64, !dbg !2235
  %33 = shl nsw i64 %32, 4, !dbg !2236
  call void @llvm.dbg.value(metadata i8* %30, metadata !1627, metadata !DIExpression()) #24, !dbg !2237
  call void @llvm.dbg.value(metadata i32 0, metadata !1633, metadata !DIExpression()) #24, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %33, metadata !1634, metadata !DIExpression()) #24, !dbg !2237
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !2239
  store i32 %20, i32* @nslots, align 4, !dbg !2240, !tbaa !792
  br label %34, !dbg !2241

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2205
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2195, metadata !DIExpression()), !dbg !2205
  %36 = zext i32 %0 to i64, !dbg !2242
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2243
  %38 = load i64, i64* %37, align 8, !dbg !2243, !tbaa !2166
  call void @llvm.dbg.value(metadata i64 %38, metadata !2200, metadata !DIExpression()), !dbg !2244
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2245
  %40 = load i8*, i8** %39, align 8, !dbg !2245, !tbaa !2153
  call void @llvm.dbg.value(metadata i8* %40, metadata !2202, metadata !DIExpression()), !dbg !2244
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2246
  %42 = load i32, i32* %41, align 4, !dbg !2246, !tbaa !1295
  %43 = or i32 %42, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %43, metadata !2203, metadata !DIExpression()), !dbg !2244
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2248
  %45 = load i32, i32* %44, align 8, !dbg !2248, !tbaa !1243
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2249
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2250
  %48 = load i8*, i8** %47, align 8, !dbg !2250, !tbaa !1317
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2251
  %50 = load i8*, i8** %49, align 8, !dbg !2251, !tbaa !1320
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %51, metadata !2204, metadata !DIExpression()), !dbg !2244
  %52 = icmp ugt i64 %38, %51, !dbg !2253
  br i1 %52, label %63, label %53, !dbg !2255

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %54, metadata !2200, metadata !DIExpression()), !dbg !2244
  store i64 %54, i64* %37, align 8, !dbg !2258, !tbaa !2166
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2259
  br i1 %55, label %57, label %56, !dbg !2261

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !2262
  br label %57, !dbg !2262

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2100, metadata !DIExpression()) #24, !dbg !2263
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !2265
  call void @llvm.dbg.value(metadata i8* %58, metadata !2202, metadata !DIExpression()), !dbg !2244
  store i8* %58, i8** %39, align 8, !dbg !2266, !tbaa !2153
  %59 = load i32, i32* %44, align 8, !dbg !2267, !tbaa !1243
  %60 = load i8*, i8** %47, align 8, !dbg !2268, !tbaa !1317
  %61 = load i8*, i8** %49, align 8, !dbg !2269, !tbaa !1320
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2270
  br label %63, !dbg !2271

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2244
  call void @llvm.dbg.value(metadata i8* %64, metadata !2202, metadata !DIExpression()), !dbg !2244
  store i32 %6, i32* %5, align 4, !dbg !2272, !tbaa !792
  ret i8* %64, !dbg !2273
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2274 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2278, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %1, metadata !2279, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %2, metadata !2280, metadata !DIExpression()), !dbg !2281
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2282
  ret i8* %4, !dbg !2283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2286, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 0, metadata !2181, metadata !DIExpression()) #24, !dbg !2288
  call void @llvm.dbg.value(metadata i8* %0, metadata !2182, metadata !DIExpression()) #24, !dbg !2288
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2290
  ret i8* %2, !dbg !2291
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2292 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %1, metadata !2297, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32 0, metadata !2278, metadata !DIExpression()) #24, !dbg !2299
  call void @llvm.dbg.value(metadata i8* %0, metadata !2279, metadata !DIExpression()) #24, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %1, metadata !2280, metadata !DIExpression()) #24, !dbg !2299
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2301
  ret i8* %3, !dbg !2302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2303 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2307, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %1, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %2, metadata !2309, metadata !DIExpression()), !dbg !2311
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2312
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2312
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2310, metadata !DIExpression()), !dbg !2313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314), !dbg !2317
  call void @llvm.dbg.value(metadata i32 %1, metadata !2318, metadata !DIExpression()) #24, !dbg !2324
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2323, metadata !DIExpression()) #24, !dbg !2326
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2326, !alias.scope !2314
  %6 = icmp eq i32 %1, 10, !dbg !2327
  br i1 %6, label %7, label %8, !dbg !2329

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2330, !noalias !2314
  unreachable, !dbg !2330

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2331
  store i32 %1, i32* %9, align 8, !dbg !2332, !tbaa !1243, !alias.scope !2314
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2333
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2334
  ret i8* %10, !dbg !2335
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2336 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2340, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %1, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %2, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %3, metadata !2343, metadata !DIExpression()), !dbg !2345
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2346
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2344, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %1, metadata !2318, metadata !DIExpression()) #24, !dbg !2352
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2323, metadata !DIExpression()) #24, !dbg !2354
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2354, !alias.scope !2348
  %7 = icmp eq i32 %1, 10, !dbg !2355
  br i1 %7, label %8, label %9, !dbg !2356

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2357, !noalias !2348
  unreachable, !dbg !2357

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2358
  store i32 %1, i32* %10, align 8, !dbg !2359, !tbaa !1243, !alias.scope !2348
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2361
  ret i8* %11, !dbg !2362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2363 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %1, metadata !2368, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 0, metadata !2307, metadata !DIExpression()) #24, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %0, metadata !2308, metadata !DIExpression()) #24, !dbg !2370
  call void @llvm.dbg.value(metadata i8* %1, metadata !2309, metadata !DIExpression()) #24, !dbg !2370
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2372
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2372
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2310, metadata !DIExpression()) #24, !dbg !2373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2374) #24, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %0, metadata !2318, metadata !DIExpression()) #24, !dbg !2378
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2323, metadata !DIExpression()) #24, !dbg !2380
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2380, !alias.scope !2374
  %5 = icmp eq i32 %0, 10, !dbg !2381
  br i1 %5, label %6, label %7, !dbg !2382

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2383, !noalias !2374
  unreachable, !dbg !2383

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2384
  store i32 %0, i32* %8, align 8, !dbg !2385, !tbaa !1243, !alias.scope !2374
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2386
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2387
  ret i8* %9, !dbg !2388
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2389 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2393, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i8* %1, metadata !2394, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i64 %2, metadata !2395, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 0, metadata !2340, metadata !DIExpression()) #24, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %0, metadata !2341, metadata !DIExpression()) #24, !dbg !2397
  call void @llvm.dbg.value(metadata i8* %1, metadata !2342, metadata !DIExpression()) #24, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %2, metadata !2343, metadata !DIExpression()) #24, !dbg !2397
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2399
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2399
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2344, metadata !DIExpression()) #24, !dbg !2400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2401) #24, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %0, metadata !2318, metadata !DIExpression()) #24, !dbg !2405
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2323, metadata !DIExpression()) #24, !dbg !2407
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2407, !alias.scope !2401
  %6 = icmp eq i32 %0, 10, !dbg !2408
  br i1 %6, label %7, label %8, !dbg !2409

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2410, !noalias !2401
  unreachable, !dbg !2410

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2411
  store i32 %0, i32* %9, align 8, !dbg !2412, !tbaa !1243, !alias.scope !2401
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2413
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2414
  ret i8* %10, !dbg !2415
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2416 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2420, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %1, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 %2, metadata !2422, metadata !DIExpression()), !dbg !2424
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2425
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2425
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2423, metadata !DIExpression()), !dbg !2426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2427, !tbaa.struct !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1261, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %2, metadata !1262, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 1, metadata !1263, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %2, metadata !1264, metadata !DIExpression()), !dbg !2429
  %6 = lshr i8 %2, 5, !dbg !2431
  %7 = zext i8 %6 to i64, !dbg !2431
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2432
  call void @llvm.dbg.value(metadata i32* %8, metadata !1266, metadata !DIExpression()), !dbg !2429
  %9 = and i8 %2, 31, !dbg !2433
  %10 = zext i8 %9 to i32, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %10, metadata !1268, metadata !DIExpression()), !dbg !2429
  %11 = load i32, i32* %8, align 4, !dbg !2434, !tbaa !792
  %12 = lshr i32 %11, %10, !dbg !2435
  %13 = and i32 %12, 1, !dbg !2436
  call void @llvm.dbg.value(metadata i32 %13, metadata !1269, metadata !DIExpression()), !dbg !2429
  %14 = xor i32 %13, 1, !dbg !2437
  %15 = shl i32 %14, %10, !dbg !2438
  %16 = xor i32 %15, %11, !dbg !2439
  store i32 %16, i32* %8, align 4, !dbg !2439, !tbaa !792
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2441
  ret i8* %17, !dbg !2442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2443 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 %1, metadata !2448, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %0, metadata !2420, metadata !DIExpression()) #24, !dbg !2450
  call void @llvm.dbg.value(metadata i64 -1, metadata !2421, metadata !DIExpression()) #24, !dbg !2450
  call void @llvm.dbg.value(metadata i8 %1, metadata !2422, metadata !DIExpression()) #24, !dbg !2450
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2452
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2452
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2423, metadata !DIExpression()) #24, !dbg !2453
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2454, !tbaa.struct !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1261, metadata !DIExpression()) #24, !dbg !2455
  call void @llvm.dbg.value(metadata i8 %1, metadata !1262, metadata !DIExpression()) #24, !dbg !2455
  call void @llvm.dbg.value(metadata i32 1, metadata !1263, metadata !DIExpression()) #24, !dbg !2455
  call void @llvm.dbg.value(metadata i8 %1, metadata !1264, metadata !DIExpression()) #24, !dbg !2455
  %5 = lshr i8 %1, 5, !dbg !2457
  %6 = zext i8 %5 to i64, !dbg !2457
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2458
  call void @llvm.dbg.value(metadata i32* %7, metadata !1266, metadata !DIExpression()) #24, !dbg !2455
  %8 = and i8 %1, 31, !dbg !2459
  %9 = zext i8 %8 to i32, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %9, metadata !1268, metadata !DIExpression()) #24, !dbg !2455
  %10 = load i32, i32* %7, align 4, !dbg !2460, !tbaa !792
  %11 = lshr i32 %10, %9, !dbg !2461
  %12 = and i32 %11, 1, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %12, metadata !1269, metadata !DIExpression()) #24, !dbg !2455
  %13 = xor i32 %12, 1, !dbg !2463
  %14 = shl i32 %13, %9, !dbg !2464
  %15 = xor i32 %14, %10, !dbg !2465
  store i32 %15, i32* %7, align 4, !dbg !2465, !tbaa !792
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2466
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2467
  ret i8* %16, !dbg !2468
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2469 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2471, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %0, metadata !2447, metadata !DIExpression()) #24, !dbg !2473
  call void @llvm.dbg.value(metadata i8 58, metadata !2448, metadata !DIExpression()) #24, !dbg !2473
  call void @llvm.dbg.value(metadata i8* %0, metadata !2420, metadata !DIExpression()) #24, !dbg !2475
  call void @llvm.dbg.value(metadata i64 -1, metadata !2421, metadata !DIExpression()) #24, !dbg !2475
  call void @llvm.dbg.value(metadata i8 58, metadata !2422, metadata !DIExpression()) #24, !dbg !2475
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2477
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2477
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2423, metadata !DIExpression()) #24, !dbg !2478
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2479, !tbaa.struct !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1261, metadata !DIExpression()) #24, !dbg !2480
  call void @llvm.dbg.value(metadata i8 58, metadata !1262, metadata !DIExpression()) #24, !dbg !2480
  call void @llvm.dbg.value(metadata i32 1, metadata !1263, metadata !DIExpression()) #24, !dbg !2480
  call void @llvm.dbg.value(metadata i8 58, metadata !1264, metadata !DIExpression()) #24, !dbg !2480
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2482
  call void @llvm.dbg.value(metadata i32* %4, metadata !1266, metadata !DIExpression()) #24, !dbg !2480
  call void @llvm.dbg.value(metadata i32 26, metadata !1268, metadata !DIExpression()) #24, !dbg !2480
  %5 = load i32, i32* %4, align 4, !dbg !2483, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %5, metadata !1269, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2480
  %6 = or i32 %5, 67108864, !dbg !2484
  store i32 %6, i32* %4, align 4, !dbg !2484, !tbaa !792
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2485
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2486
  ret i8* %7, !dbg !2487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2488 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2490, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %1, metadata !2491, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %0, metadata !2420, metadata !DIExpression()) #24, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %1, metadata !2421, metadata !DIExpression()) #24, !dbg !2493
  call void @llvm.dbg.value(metadata i8 58, metadata !2422, metadata !DIExpression()) #24, !dbg !2493
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2495
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2495
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2423, metadata !DIExpression()) #24, !dbg !2496
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2497, !tbaa.struct !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1261, metadata !DIExpression()) #24, !dbg !2498
  call void @llvm.dbg.value(metadata i8 58, metadata !1262, metadata !DIExpression()) #24, !dbg !2498
  call void @llvm.dbg.value(metadata i32 1, metadata !1263, metadata !DIExpression()) #24, !dbg !2498
  call void @llvm.dbg.value(metadata i8 58, metadata !1264, metadata !DIExpression()) #24, !dbg !2498
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2500
  call void @llvm.dbg.value(metadata i32* %5, metadata !1266, metadata !DIExpression()) #24, !dbg !2498
  call void @llvm.dbg.value(metadata i32 26, metadata !1268, metadata !DIExpression()) #24, !dbg !2498
  %6 = load i32, i32* %5, align 4, !dbg !2501, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %6, metadata !1269, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2498
  %7 = or i32 %6, 67108864, !dbg !2502
  store i32 %7, i32* %5, align 4, !dbg !2502, !tbaa !792
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2503
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2504
  ret i8* %8, !dbg !2505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2506 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2512
  call void @llvm.dbg.value(metadata i32 %0, metadata !2508, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %1, metadata !2509, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8* %2, metadata !2510, metadata !DIExpression()), !dbg !2514
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2515
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2515
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2511, metadata !DIExpression()), !dbg !2516
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2517
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2517
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1, metadata !2318, metadata !DIExpression()) #24, !dbg !2521
  call void @llvm.dbg.value(metadata i32 0, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2521
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2512, !alias.scope !2518
  %8 = icmp eq i32 %1, 10, !dbg !2522
  br i1 %8, label %9, label %10, !dbg !2523

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2524, !noalias !2518
  unreachable, !dbg !2524

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2521
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2517
  store i32 %1, i32* %11, align 8, !dbg !2517, !tbaa.struct !2428
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2517
  %13 = bitcast i32* %12 to i8*, !dbg !2517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2517, !tbaa.struct !2525
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2517
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1261, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 58, metadata !1262, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 1, metadata !1263, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 58, metadata !1264, metadata !DIExpression()), !dbg !2526
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2528
  call void @llvm.dbg.value(metadata i32* %14, metadata !1266, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 26, metadata !1268, metadata !DIExpression()), !dbg !2526
  %15 = load i32, i32* %14, align 4, !dbg !2529, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %15, metadata !1269, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2526
  %16 = or i32 %15, 67108864, !dbg !2530
  store i32 %16, i32* %14, align 4, !dbg !2530, !tbaa !792
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2531
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2532
  ret i8* %17, !dbg !2533
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2534 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2538, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %1, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %2, metadata !2540, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %3, metadata !2541, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %0, metadata !2543, metadata !DIExpression()) #24, !dbg !2553
  call void @llvm.dbg.value(metadata i8* %1, metadata !2548, metadata !DIExpression()) #24, !dbg !2553
  call void @llvm.dbg.value(metadata i8* %2, metadata !2549, metadata !DIExpression()) #24, !dbg !2553
  call void @llvm.dbg.value(metadata i8* %3, metadata !2550, metadata !DIExpression()) #24, !dbg !2553
  call void @llvm.dbg.value(metadata i64 -1, metadata !2551, metadata !DIExpression()) #24, !dbg !2553
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2555
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2555
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2552, metadata !DIExpression()) #24, !dbg !2556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2557, !tbaa.struct !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1302, metadata !DIExpression()) #24, !dbg !2558
  call void @llvm.dbg.value(metadata i8* %1, metadata !1303, metadata !DIExpression()) #24, !dbg !2558
  call void @llvm.dbg.value(metadata i8* %2, metadata !1304, metadata !DIExpression()) #24, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1302, metadata !DIExpression()) #24, !dbg !2558
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2560
  store i32 10, i32* %7, align 8, !dbg !2561, !tbaa !1243
  %8 = icmp ne i8* %1, null, !dbg !2562
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2563
  br i1 %10, label %12, label %11, !dbg !2563

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2564
  unreachable, !dbg !2564

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2565
  store i8* %1, i8** %13, align 8, !dbg !2566, !tbaa !1317
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2567
  store i8* %2, i8** %14, align 8, !dbg !2568, !tbaa !1320
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2569
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2570
  ret i8* %15, !dbg !2571
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2544 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2543, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %1, metadata !2548, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %2, metadata !2549, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %3, metadata !2550, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %4, metadata !2551, metadata !DIExpression()), !dbg !2572
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2573
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2573
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2552, metadata !DIExpression()), !dbg !2574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2575, !tbaa.struct !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1302, metadata !DIExpression()) #24, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %1, metadata !1303, metadata !DIExpression()) #24, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %2, metadata !1304, metadata !DIExpression()) #24, !dbg !2576
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1302, metadata !DIExpression()) #24, !dbg !2576
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2578
  store i32 10, i32* %8, align 8, !dbg !2579, !tbaa !1243
  %9 = icmp ne i8* %1, null, !dbg !2580
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2581
  br i1 %11, label %13, label %12, !dbg !2581

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2582
  unreachable, !dbg !2582

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2583
  store i8* %1, i8** %14, align 8, !dbg !2584, !tbaa !1317
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2585
  store i8* %2, i8** %15, align 8, !dbg !2586, !tbaa !1320
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2587
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2588
  ret i8* %16, !dbg !2589
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2590 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* %1, metadata !2595, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()) #24, !dbg !2598
  call void @llvm.dbg.value(metadata i8* %0, metadata !2539, metadata !DIExpression()) #24, !dbg !2598
  call void @llvm.dbg.value(metadata i8* %1, metadata !2540, metadata !DIExpression()) #24, !dbg !2598
  call void @llvm.dbg.value(metadata i8* %2, metadata !2541, metadata !DIExpression()) #24, !dbg !2598
  call void @llvm.dbg.value(metadata i32 0, metadata !2543, metadata !DIExpression()) #24, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()) #24, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %1, metadata !2549, metadata !DIExpression()) #24, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %2, metadata !2550, metadata !DIExpression()) #24, !dbg !2600
  call void @llvm.dbg.value(metadata i64 -1, metadata !2551, metadata !DIExpression()) #24, !dbg !2600
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2602
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2552, metadata !DIExpression()) #24, !dbg !2603
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2604, !tbaa.struct !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1302, metadata !DIExpression()) #24, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %0, metadata !1303, metadata !DIExpression()) #24, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %1, metadata !1304, metadata !DIExpression()) #24, !dbg !2605
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1302, metadata !DIExpression()) #24, !dbg !2605
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2607
  store i32 10, i32* %6, align 8, !dbg !2608, !tbaa !1243
  %7 = icmp ne i8* %0, null, !dbg !2609
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2610
  br i1 %9, label %11, label %10, !dbg !2610

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2611
  unreachable, !dbg !2611

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2612
  store i8* %0, i8** %12, align 8, !dbg !2613, !tbaa !1317
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2614
  store i8* %1, i8** %13, align 8, !dbg !2615, !tbaa !1320
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2616
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2617
  ret i8* %14, !dbg !2618
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2619 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8* %1, metadata !2624, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8* %2, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 %3, metadata !2626, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 0, metadata !2543, metadata !DIExpression()) #24, !dbg !2628
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()) #24, !dbg !2628
  call void @llvm.dbg.value(metadata i8* %1, metadata !2549, metadata !DIExpression()) #24, !dbg !2628
  call void @llvm.dbg.value(metadata i8* %2, metadata !2550, metadata !DIExpression()) #24, !dbg !2628
  call void @llvm.dbg.value(metadata i64 %3, metadata !2551, metadata !DIExpression()) #24, !dbg !2628
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2630
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2630
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2552, metadata !DIExpression()) #24, !dbg !2631
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2632, !tbaa.struct !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1302, metadata !DIExpression()) #24, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %0, metadata !1303, metadata !DIExpression()) #24, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %1, metadata !1304, metadata !DIExpression()) #24, !dbg !2633
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1302, metadata !DIExpression()) #24, !dbg !2633
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2635
  store i32 10, i32* %7, align 8, !dbg !2636, !tbaa !1243
  %8 = icmp ne i8* %0, null, !dbg !2637
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2638
  br i1 %10, label %12, label %11, !dbg !2638

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2639
  unreachable, !dbg !2639

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2640
  store i8* %0, i8** %13, align 8, !dbg !2641, !tbaa !1317
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2642
  store i8* %1, i8** %14, align 8, !dbg !2643, !tbaa !1320
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2644
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2645
  ret i8* %15, !dbg !2646
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2651, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8* %1, metadata !2652, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i64 %2, metadata !2653, metadata !DIExpression()), !dbg !2654
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2655
  ret i8* %4, !dbg !2656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2657 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %1, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2651, metadata !DIExpression()) #24, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %0, metadata !2652, metadata !DIExpression()) #24, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %1, metadata !2653, metadata !DIExpression()) #24, !dbg !2664
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2666
  ret i8* %3, !dbg !2667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %1, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %0, metadata !2651, metadata !DIExpression()) #24, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %1, metadata !2652, metadata !DIExpression()) #24, !dbg !2675
  call void @llvm.dbg.value(metadata i64 -1, metadata !2653, metadata !DIExpression()) #24, !dbg !2675
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2677
  ret i8* %3, !dbg !2678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2679 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()) #24, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()) #24, !dbg !2685
  call void @llvm.dbg.value(metadata i32 0, metadata !2651, metadata !DIExpression()) #24, !dbg !2687
  call void @llvm.dbg.value(metadata i8* %0, metadata !2652, metadata !DIExpression()) #24, !dbg !2687
  call void @llvm.dbg.value(metadata i64 -1, metadata !2653, metadata !DIExpression()) #24, !dbg !2687
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2689
  ret i8* %2, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2691 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2731, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %1, metadata !2732, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %2, metadata !2733, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %3, metadata !2734, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8** %4, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i64 %5, metadata !2736, metadata !DIExpression()), !dbg !2737
  %7 = icmp eq i8* %1, null, !dbg !2738
  br i1 %7, label %10, label %8, !dbg !2740

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2741
  br label %12, !dbg !2741

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2742
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #24, !dbg !2743
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2743
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.90, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2744
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #24, !dbg !2745
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.92, i64 0, i64 0)) #24, !dbg !2745
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.90, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2746
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
  ], !dbg !2747

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #24, !dbg !2748
  %21 = load i8*, i8** %4, align 8, !dbg !2748, !tbaa !636
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2748
  br label %147, !dbg !2750

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #24, !dbg !2751
  %25 = load i8*, i8** %4, align 8, !dbg !2751, !tbaa !636
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2751
  %27 = load i8*, i8** %26, align 8, !dbg !2751, !tbaa !636
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2751
  br label %147, !dbg !2752

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #24, !dbg !2753
  %31 = load i8*, i8** %4, align 8, !dbg !2753, !tbaa !636
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2753
  %33 = load i8*, i8** %32, align 8, !dbg !2753, !tbaa !636
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2753
  %35 = load i8*, i8** %34, align 8, !dbg !2753, !tbaa !636
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2753
  br label %147, !dbg !2754

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #24, !dbg !2755
  %39 = load i8*, i8** %4, align 8, !dbg !2755, !tbaa !636
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2755
  %41 = load i8*, i8** %40, align 8, !dbg !2755, !tbaa !636
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2755
  %43 = load i8*, i8** %42, align 8, !dbg !2755, !tbaa !636
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2755
  %45 = load i8*, i8** %44, align 8, !dbg !2755, !tbaa !636
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2755
  br label %147, !dbg !2756

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #24, !dbg !2757
  %49 = load i8*, i8** %4, align 8, !dbg !2757, !tbaa !636
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2757
  %51 = load i8*, i8** %50, align 8, !dbg !2757, !tbaa !636
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2757
  %53 = load i8*, i8** %52, align 8, !dbg !2757, !tbaa !636
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2757
  %55 = load i8*, i8** %54, align 8, !dbg !2757, !tbaa !636
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2757
  %57 = load i8*, i8** %56, align 8, !dbg !2757, !tbaa !636
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2757
  br label %147, !dbg !2758

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #24, !dbg !2759
  %61 = load i8*, i8** %4, align 8, !dbg !2759, !tbaa !636
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2759
  %63 = load i8*, i8** %62, align 8, !dbg !2759, !tbaa !636
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2759
  %65 = load i8*, i8** %64, align 8, !dbg !2759, !tbaa !636
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2759
  %67 = load i8*, i8** %66, align 8, !dbg !2759, !tbaa !636
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2759
  %69 = load i8*, i8** %68, align 8, !dbg !2759, !tbaa !636
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2759
  %71 = load i8*, i8** %70, align 8, !dbg !2759, !tbaa !636
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2759
  br label %147, !dbg !2760

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #24, !dbg !2761
  %75 = load i8*, i8** %4, align 8, !dbg !2761, !tbaa !636
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2761
  %77 = load i8*, i8** %76, align 8, !dbg !2761, !tbaa !636
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2761
  %79 = load i8*, i8** %78, align 8, !dbg !2761, !tbaa !636
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2761
  %81 = load i8*, i8** %80, align 8, !dbg !2761, !tbaa !636
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2761
  %83 = load i8*, i8** %82, align 8, !dbg !2761, !tbaa !636
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2761
  %85 = load i8*, i8** %84, align 8, !dbg !2761, !tbaa !636
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2761
  %87 = load i8*, i8** %86, align 8, !dbg !2761, !tbaa !636
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2761
  br label %147, !dbg !2762

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #24, !dbg !2763
  %91 = load i8*, i8** %4, align 8, !dbg !2763, !tbaa !636
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2763
  %93 = load i8*, i8** %92, align 8, !dbg !2763, !tbaa !636
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2763
  %95 = load i8*, i8** %94, align 8, !dbg !2763, !tbaa !636
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2763
  %97 = load i8*, i8** %96, align 8, !dbg !2763, !tbaa !636
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2763
  %99 = load i8*, i8** %98, align 8, !dbg !2763, !tbaa !636
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2763
  %101 = load i8*, i8** %100, align 8, !dbg !2763, !tbaa !636
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2763
  %103 = load i8*, i8** %102, align 8, !dbg !2763, !tbaa !636
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2763
  %105 = load i8*, i8** %104, align 8, !dbg !2763, !tbaa !636
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2763
  br label %147, !dbg !2764

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.101, i64 0, i64 0), i32 5) #24, !dbg !2765
  %109 = load i8*, i8** %4, align 8, !dbg !2765, !tbaa !636
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2765
  %111 = load i8*, i8** %110, align 8, !dbg !2765, !tbaa !636
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2765
  %113 = load i8*, i8** %112, align 8, !dbg !2765, !tbaa !636
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2765
  %115 = load i8*, i8** %114, align 8, !dbg !2765, !tbaa !636
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2765
  %117 = load i8*, i8** %116, align 8, !dbg !2765, !tbaa !636
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2765
  %119 = load i8*, i8** %118, align 8, !dbg !2765, !tbaa !636
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2765
  %121 = load i8*, i8** %120, align 8, !dbg !2765, !tbaa !636
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2765
  %123 = load i8*, i8** %122, align 8, !dbg !2765, !tbaa !636
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2765
  %125 = load i8*, i8** %124, align 8, !dbg !2765, !tbaa !636
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2765
  br label %147, !dbg !2766

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.102, i64 0, i64 0), i32 5) #24, !dbg !2767
  %129 = load i8*, i8** %4, align 8, !dbg !2767, !tbaa !636
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2767
  %131 = load i8*, i8** %130, align 8, !dbg !2767, !tbaa !636
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2767
  %133 = load i8*, i8** %132, align 8, !dbg !2767, !tbaa !636
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2767
  %135 = load i8*, i8** %134, align 8, !dbg !2767, !tbaa !636
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2767
  %137 = load i8*, i8** %136, align 8, !dbg !2767, !tbaa !636
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2767
  %139 = load i8*, i8** %138, align 8, !dbg !2767, !tbaa !636
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2767
  %141 = load i8*, i8** %140, align 8, !dbg !2767, !tbaa !636
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2767
  %143 = load i8*, i8** %142, align 8, !dbg !2767, !tbaa !636
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2767
  %145 = load i8*, i8** %144, align 8, !dbg !2767, !tbaa !636
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2767
  br label %147, !dbg !2768

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2769
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2770 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2774, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %1, metadata !2775, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %2, metadata !2776, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %3, metadata !2777, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8** %4, metadata !2778, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 0, metadata !2779, metadata !DIExpression()), !dbg !2780
  br label %6, !dbg !2781

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2783
  call void @llvm.dbg.value(metadata i64 %7, metadata !2779, metadata !DIExpression()), !dbg !2780
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2784
  %9 = load i8*, i8** %8, align 8, !dbg !2784, !tbaa !636
  %10 = icmp eq i8* %9, null, !dbg !2786
  %11 = add i64 %7, 1, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %11, metadata !2779, metadata !DIExpression()), !dbg !2780
  br i1 %10, label %12, label %6, !dbg !2786, !llvm.loop !2788

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2790
  ret void, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2792 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2803, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8* %1, metadata !2804, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8* %2, metadata !2805, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8* %3, metadata !2806, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2807, metadata !DIExpression()), !dbg !2811
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2812
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2812
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2809, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 0, metadata !2808, metadata !DIExpression()), !dbg !2811
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2808, metadata !DIExpression()), !dbg !2811
  %11 = load i32, i32* %8, align 8, !dbg !2814
  %12 = icmp ult i32 %11, 41, !dbg !2814
  br i1 %12, label %13, label %18, !dbg !2814

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2814
  %15 = zext i32 %11 to i64, !dbg !2814
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2814
  %17 = add nuw nsw i32 %11, 8, !dbg !2814
  store i32 %17, i32* %8, align 8, !dbg !2814
  br label %21, !dbg !2814

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2814
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2814
  store i8* %20, i8** %9, align 8, !dbg !2814
  br label %21, !dbg !2814

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2814
  %25 = load i8*, i8** %24, align 8, !dbg !2814
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2817
  store i8* %25, i8** %26, align 16, !dbg !2818, !tbaa !636
  %27 = icmp eq i8* %25, null, !dbg !2819
  br i1 %27, label %30, label %28, !dbg !2820

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2808, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 1, metadata !2808, metadata !DIExpression()), !dbg !2811
  %29 = icmp ult i32 %22, 41, !dbg !2814
  br i1 %29, label %35, label %32, !dbg !2814

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2821
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2822
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2823
  ret void, !dbg !2823

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2814
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2814
  store i8* %34, i8** %9, align 8, !dbg !2814
  br label %40, !dbg !2814

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2814
  %37 = zext i32 %22 to i64, !dbg !2814
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2814
  %39 = add nuw nsw i32 %22, 8, !dbg !2814
  store i32 %39, i32* %8, align 8, !dbg !2814
  br label %40, !dbg !2814

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2814
  %44 = load i8*, i8** %43, align 8, !dbg !2814
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2817
  store i8* %44, i8** %45, align 8, !dbg !2818, !tbaa !636
  %46 = icmp eq i8* %44, null, !dbg !2819
  br i1 %46, label %30, label %47, !dbg !2820

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2808, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 2, metadata !2808, metadata !DIExpression()), !dbg !2811
  %48 = icmp ult i32 %41, 41, !dbg !2814
  br i1 %48, label %52, label %49, !dbg !2814

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2814
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2814
  store i8* %51, i8** %9, align 8, !dbg !2814
  br label %57, !dbg !2814

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2814
  %54 = zext i32 %41 to i64, !dbg !2814
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2814
  %56 = add nuw nsw i32 %41, 8, !dbg !2814
  store i32 %56, i32* %8, align 8, !dbg !2814
  br label %57, !dbg !2814

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2814
  %61 = load i8*, i8** %60, align 8, !dbg !2814
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2817
  store i8* %61, i8** %62, align 16, !dbg !2818, !tbaa !636
  %63 = icmp eq i8* %61, null, !dbg !2819
  br i1 %63, label %30, label %64, !dbg !2820

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2808, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 3, metadata !2808, metadata !DIExpression()), !dbg !2811
  %65 = icmp ult i32 %58, 41, !dbg !2814
  br i1 %65, label %69, label %66, !dbg !2814

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2814
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2814
  store i8* %68, i8** %9, align 8, !dbg !2814
  br label %74, !dbg !2814

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2814
  %71 = zext i32 %58 to i64, !dbg !2814
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2814
  %73 = add nuw nsw i32 %58, 8, !dbg !2814
  store i32 %73, i32* %8, align 8, !dbg !2814
  br label %74, !dbg !2814

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2814
  %78 = load i8*, i8** %77, align 8, !dbg !2814
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2817
  store i8* %78, i8** %79, align 8, !dbg !2818, !tbaa !636
  %80 = icmp eq i8* %78, null, !dbg !2819
  br i1 %80, label %30, label %81, !dbg !2820

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2808, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 4, metadata !2808, metadata !DIExpression()), !dbg !2811
  %82 = icmp ult i32 %75, 41, !dbg !2814
  br i1 %82, label %86, label %83, !dbg !2814

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2814
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2814
  store i8* %85, i8** %9, align 8, !dbg !2814
  br label %91, !dbg !2814

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2814
  %88 = zext i32 %75 to i64, !dbg !2814
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2814
  %90 = add nuw nsw i32 %75, 8, !dbg !2814
  store i32 %90, i32* %8, align 8, !dbg !2814
  br label %91, !dbg !2814

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2814
  %95 = load i8*, i8** %94, align 8, !dbg !2814
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2817
  store i8* %95, i8** %96, align 16, !dbg !2818, !tbaa !636
  %97 = icmp eq i8* %95, null, !dbg !2819
  br i1 %97, label %30, label %98, !dbg !2820

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2808, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 5, metadata !2808, metadata !DIExpression()), !dbg !2811
  %99 = icmp ult i32 %92, 41, !dbg !2814
  br i1 %99, label %103, label %100, !dbg !2814

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2814
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2814
  store i8* %102, i8** %9, align 8, !dbg !2814
  br label %108, !dbg !2814

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2814
  %105 = zext i32 %92 to i64, !dbg !2814
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2814
  %107 = add nuw nsw i32 %92, 8, !dbg !2814
  store i32 %107, i32* %8, align 8, !dbg !2814
  br label %108, !dbg !2814

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2814
  %111 = load i8*, i8** %110, align 8, !dbg !2814
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2817
  store i8* %111, i8** %112, align 8, !dbg !2818, !tbaa !636
  %113 = icmp eq i8* %111, null, !dbg !2819
  br i1 %113, label %30, label %114, !dbg !2820

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2808, metadata !DIExpression()), !dbg !2811
  %115 = load i8*, i8** %9, align 8, !dbg !2814
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2814
  store i8* %116, i8** %9, align 8, !dbg !2814
  %117 = bitcast i8* %115 to i8**, !dbg !2814
  %118 = load i8*, i8** %117, align 8, !dbg !2814
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2817
  store i8* %118, i8** %119, align 16, !dbg !2818, !tbaa !636
  %120 = icmp eq i8* %118, null, !dbg !2819
  br i1 %120, label %30, label %121, !dbg !2820

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2808, metadata !DIExpression()), !dbg !2811
  %122 = load i8*, i8** %9, align 8, !dbg !2814
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2814
  store i8* %123, i8** %9, align 8, !dbg !2814
  %124 = bitcast i8* %122 to i8**, !dbg !2814
  %125 = load i8*, i8** %124, align 8, !dbg !2814
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2817
  store i8* %125, i8** %126, align 8, !dbg !2818, !tbaa !636
  %127 = icmp eq i8* %125, null, !dbg !2819
  br i1 %127, label %30, label %128, !dbg !2820

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2808, metadata !DIExpression()), !dbg !2811
  %129 = load i8*, i8** %9, align 8, !dbg !2814
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2814
  store i8* %130, i8** %9, align 8, !dbg !2814
  %131 = bitcast i8* %129 to i8**, !dbg !2814
  %132 = load i8*, i8** %131, align 8, !dbg !2814
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2817
  store i8* %132, i8** %133, align 16, !dbg !2818, !tbaa !636
  %134 = icmp eq i8* %132, null, !dbg !2819
  br i1 %134, label %30, label %135, !dbg !2820

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2808, metadata !DIExpression()), !dbg !2811
  %136 = load i8*, i8** %9, align 8, !dbg !2814
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2814
  store i8* %137, i8** %9, align 8, !dbg !2814
  %138 = bitcast i8* %136 to i8**, !dbg !2814
  %139 = load i8*, i8** %138, align 8, !dbg !2814
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2817
  store i8* %139, i8** %140, align 8, !dbg !2818, !tbaa !636
  %141 = icmp eq i8* %139, null, !dbg !2819
  %142 = select i1 %141, i64 9, i64 10, !dbg !2820
  br label %30, !dbg !2820
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2824 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2828, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %1, metadata !2829, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %2, metadata !2830, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %3, metadata !2831, metadata !DIExpression()), !dbg !2838
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2839
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2832, metadata !DIExpression()), !dbg !2840
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2841
  call void @llvm.va_start(i8* nonnull %6), !dbg !2841
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2842
  call void @llvm.va_end(i8* nonnull %6), !dbg !2843
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2844
  ret void, !dbg !2844
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2845 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2846, !tbaa !636
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.90, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2846
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #24, !dbg !2847
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.106, i64 0, i64 0)) #24, !dbg !2847
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.107, i64 0, i64 0), i32 5) #24, !dbg !2848
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.108, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.109, i64 0, i64 0)) #24, !dbg !2848
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.110, i64 0, i64 0), i32 5) #24, !dbg !2849
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.111, i64 0, i64 0)) #24, !dbg !2849
  ret void, !dbg !2850
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2851 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2855, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %1, metadata !2856, metadata !DIExpression()), !dbg !2857
  %3 = udiv i64 9223372036854775807, %1, !dbg !2858
  %4 = icmp ult i64 %3, %0, !dbg !2858
  br i1 %4, label %5, label %6, !dbg !2860

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2861
  unreachable, !dbg !2861

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %7, metadata !2863, metadata !DIExpression()) #24, !dbg !2869
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2871
  call void @llvm.dbg.value(metadata i8* %8, metadata !2868, metadata !DIExpression()) #24, !dbg !2869
  %9 = icmp eq i8* %8, null, !dbg !2872
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2874
  br i1 %11, label %12, label %13, !dbg !2874

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2875
  unreachable, !dbg !2875

13:                                               ; preds = %6
  ret i8* %8, !dbg !2876
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2864 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2863, metadata !DIExpression()), !dbg !2877
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %2, metadata !2868, metadata !DIExpression()), !dbg !2877
  %3 = icmp eq i8* %2, null, !dbg !2879
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2880
  br i1 %5, label %6, label %7, !dbg !2880

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2881
  unreachable, !dbg !2881

7:                                                ; preds = %1
  ret i8* %2, !dbg !2882
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2883 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %1, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %2, metadata !2889, metadata !DIExpression()), !dbg !2890
  %4 = udiv i64 9223372036854775807, %2, !dbg !2891
  %5 = icmp ult i64 %4, %1, !dbg !2891
  br i1 %5, label %6, label %7, !dbg !2893

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2894
  unreachable, !dbg !2894

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2895
  call void @llvm.dbg.value(metadata i8* %0, metadata !2896, metadata !DIExpression()) #24, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %8, metadata !2901, metadata !DIExpression()) #24, !dbg !2902
  %9 = icmp eq i64 %8, 0, !dbg !2904
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2906
  br i1 %11, label %12, label %13, !dbg !2906

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2907
  br label %19, !dbg !2909

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %14, metadata !2896, metadata !DIExpression()) #24, !dbg !2902
  %15 = icmp eq i8* %14, null, !dbg !2911
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2913
  br i1 %17, label %18, label %19, !dbg !2913

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2914
  unreachable, !dbg !2914

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2902
  ret i8* %20, !dbg !2915
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2896, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2901, metadata !DIExpression()), !dbg !2916
  %3 = icmp eq i64 %1, 0, !dbg !2917
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2918
  br i1 %5, label %6, label %7, !dbg !2918

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2919
  br label %13, !dbg !2920

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2921
  call void @llvm.dbg.value(metadata i8* %8, metadata !2896, metadata !DIExpression()), !dbg !2916
  %9 = icmp eq i8* %8, null, !dbg !2922
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2923
  br i1 %11, label %12, label %13, !dbg !2923

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2924
  unreachable, !dbg !2924

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2916
  ret i8* %14, !dbg !2925
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64* %1, metadata !205, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %2, metadata !206, metadata !DIExpression()), !dbg !2926
  %4 = load i64, i64* %1, align 8, !dbg !2927, !tbaa !2137
  call void @llvm.dbg.value(metadata i64 %4, metadata !207, metadata !DIExpression()), !dbg !2926
  %5 = icmp eq i8* %0, null, !dbg !2928
  br i1 %5, label %6, label %20, !dbg !2930

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2931
  br i1 %7, label %8, label %13, !dbg !2934

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %9, metadata !207, metadata !DIExpression()), !dbg !2926
  %10 = icmp ugt i64 %2, 128, !dbg !2937
  %11 = zext i1 %10 to i64, !dbg !2937
  %12 = add nuw nsw i64 %9, %11, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %12, metadata !207, metadata !DIExpression()), !dbg !2926
  br label %13, !dbg !2939

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2926
  call void @llvm.dbg.value(metadata i64 %14, metadata !207, metadata !DIExpression()), !dbg !2926
  %15 = udiv i64 9223372036854775807, %2, !dbg !2940
  %16 = icmp ult i64 %15, %14, !dbg !2940
  br i1 %16, label %19, label %17, !dbg !2942

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !207, metadata !DIExpression()), !dbg !2926
  store i64 %14, i64* %1, align 8, !dbg !2943, !tbaa !2137
  %18 = mul i64 %14, %2, !dbg !2944
  call void @llvm.dbg.value(metadata i8* %0, metadata !2896, metadata !DIExpression()) #24, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %28, metadata !2901, metadata !DIExpression()) #24, !dbg !2945
  br label %31, !dbg !2947

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2948
  unreachable, !dbg !2948

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2949
  %22 = icmp ugt i64 %21, %4, !dbg !2952
  br i1 %22, label %24, label %23, !dbg !2953

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !2954
  unreachable, !dbg !2954

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2955
  %26 = add nuw i64 %4, 1, !dbg !2956
  %27 = add i64 %26, %25, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %27, metadata !207, metadata !DIExpression()), !dbg !2926
  store i64 %27, i64* %1, align 8, !dbg !2943, !tbaa !2137
  %28 = mul i64 %27, %2, !dbg !2944
  call void @llvm.dbg.value(metadata i8* %0, metadata !2896, metadata !DIExpression()) #24, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %28, metadata !2901, metadata !DIExpression()) #24, !dbg !2945
  %29 = icmp eq i64 %28, 0, !dbg !2958
  br i1 %29, label %30, label %31, !dbg !2947

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2959
  br label %38, !dbg !2960

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %33, metadata !2896, metadata !DIExpression()) #24, !dbg !2945
  %34 = icmp eq i8* %33, null, !dbg !2962
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2963
  br i1 %36, label %37, label %38, !dbg !2963

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !2964
  unreachable, !dbg !2964

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2945
  ret i8* %39, !dbg !2965
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2966 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2968, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %0, metadata !2863, metadata !DIExpression()) #24, !dbg !2970
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2972
  call void @llvm.dbg.value(metadata i8* %2, metadata !2868, metadata !DIExpression()) #24, !dbg !2970
  %3 = icmp eq i8* %2, null, !dbg !2973
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2974
  br i1 %5, label %6, label %7, !dbg !2974

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2975
  unreachable, !dbg !2975

7:                                                ; preds = %1
  ret i8* %2, !dbg !2976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2977 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64* %1, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()) #24, !dbg !2984
  call void @llvm.dbg.value(metadata i64* %1, metadata !205, metadata !DIExpression()) #24, !dbg !2984
  call void @llvm.dbg.value(metadata i64 1, metadata !206, metadata !DIExpression()) #24, !dbg !2984
  %3 = load i64, i64* %1, align 8, !dbg !2986, !tbaa !2137
  call void @llvm.dbg.value(metadata i64 %3, metadata !207, metadata !DIExpression()) #24, !dbg !2984
  %4 = icmp eq i8* %0, null, !dbg !2987
  br i1 %4, label %5, label %10, !dbg !2988

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2989
  br i1 %6, label %17, label %7, !dbg !2990

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !207, metadata !DIExpression()) #24, !dbg !2984
  %8 = icmp slt i64 %3, 0, !dbg !2991
  br i1 %8, label %9, label %17, !dbg !2992

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2993
  unreachable, !dbg !2993

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2994
  br i1 %11, label %13, label %12, !dbg !2995

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !2996
  unreachable, !dbg !2996

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2997
  %15 = add nuw nsw i64 %3, 1, !dbg !2998
  %16 = add nuw nsw i64 %15, %14, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %16, metadata !207, metadata !DIExpression()) #24, !dbg !2984
  call void @llvm.dbg.value(metadata i8* %0, metadata !2896, metadata !DIExpression()) #24, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %16, metadata !2901, metadata !DIExpression()) #24, !dbg !3000
  br label %17, !dbg !3002

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3003
  store i64 %18, i64* %1, align 8, !dbg !3003, !tbaa !2137
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %19, metadata !2896, metadata !DIExpression()) #24, !dbg !3000
  %20 = icmp eq i8* %19, null, !dbg !3005
  br i1 %20, label %21, label %22, !dbg !3006

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !3007
  unreachable, !dbg !3007

22:                                               ; preds = %17
  ret i8* %19, !dbg !3008
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3009 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %0, metadata !3013, metadata !DIExpression()) #24, !dbg !3018
  call void @llvm.dbg.value(metadata i64 1, metadata !3016, metadata !DIExpression()) #24, !dbg !3018
  %2 = icmp slt i64 %0, 0, !dbg !3020
  br i1 %2, label %6, label %3, !dbg !3022

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %4, metadata !3017, metadata !DIExpression()) #24, !dbg !3018
  %5 = icmp eq i8* %4, null, !dbg !3024
  br i1 %5, label %6, label %7, !dbg !3025

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !3026
  unreachable, !dbg !3026

7:                                                ; preds = %3
  ret i8* %4, !dbg !3027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3014 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3013, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %1, metadata !3016, metadata !DIExpression()), !dbg !3028
  %3 = udiv i64 9223372036854775807, %1, !dbg !3029
  %4 = icmp ult i64 %3, %0, !dbg !3029
  br i1 %4, label %8, label %5, !dbg !3030

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %6, metadata !3017, metadata !DIExpression()), !dbg !3028
  %7 = icmp eq i8* %6, null, !dbg !3032
  br i1 %7, label %8, label %9, !dbg !3033

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !3034
  unreachable, !dbg !3034

9:                                                ; preds = %5
  ret i8* %6, !dbg !3035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3036 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !2863, metadata !DIExpression()) #24, !dbg !3045
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %3, metadata !2868, metadata !DIExpression()) #24, !dbg !3045
  %4 = icmp eq i8* %3, null, !dbg !3048
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3049
  br i1 %6, label %7, label %8, !dbg !3049

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !3050
  unreachable, !dbg !3050

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3051, metadata !DIExpression()) #24, !dbg !3060
  call void @llvm.dbg.value(metadata i8* %0, metadata !3058, metadata !DIExpression()) #24, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()) #24, !dbg !3060
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !3062
  ret i8* %3, !dbg !3063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3064 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3066, metadata !DIExpression()), !dbg !3067
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !3068
  %3 = add i64 %2, 1, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %0, metadata !3042, metadata !DIExpression()) #24, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %3, metadata !3043, metadata !DIExpression()) #24, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %3, metadata !2863, metadata !DIExpression()) #24, !dbg !3072
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %4, metadata !2868, metadata !DIExpression()) #24, !dbg !3072
  %5 = icmp eq i8* %4, null, !dbg !3075
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3076
  br i1 %7, label %8, label %9, !dbg !3076

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !3077
  unreachable, !dbg !3077

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3051, metadata !DIExpression()) #24, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !3058, metadata !DIExpression()) #24, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %3, metadata !3059, metadata !DIExpression()) #24, !dbg !3078
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !3080
  ret i8* %4, !dbg !3081
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3082 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3083, !tbaa !792
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.122, i64 0, i64 0), i32 5) #24, !dbg !3084
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), i8* %2) #24, !dbg !3085
  tail call void @abort() #26, !dbg !3086
  unreachable, !dbg !3086
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !3087 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3089, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3095
  %3 = icmp eq i64 %0, 0, !dbg !3096
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3097
  br i1 %5, label %11, label %6, !dbg !3097

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3092, metadata !DIExpression()), !dbg !3098
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3099
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3099
  br i1 %8, label %9, label %11, !dbg !3101

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !3102
  store i32 12, i32* %10, align 4, !dbg !3104, !tbaa !792
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3089, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %12, metadata !3090, metadata !DIExpression()), !dbg !3095
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !3105
  call void @llvm.dbg.value(metadata i8* %14, metadata !3091, metadata !DIExpression()), !dbg !3095
  br label %15, !dbg !3106

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3095
  ret i8* %16, !dbg !3107
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrlen(i8* %0, i64 %1, %struct.__mbstate_t* %2) local_unnamed_addr #8 !dbg !3108 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %2, metadata !3115, metadata !DIExpression()), !dbg !3116
  %4 = icmp eq %struct.__mbstate_t* %2, null, !dbg !3117
  %5 = select i1 %4, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %2, !dbg !3119
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %5, metadata !3115, metadata !DIExpression()), !dbg !3116
  %6 = tail call i64 @rpl_mbrtowc(i32* null, i8* %0, i64 %1, %struct.__mbstate_t* %5) #24, !dbg !3120
  ret i64 %6, !dbg !3121
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3122 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3138, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8* %1, metadata !3139, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %2, metadata !3140, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3141, metadata !DIExpression()), !dbg !3147
  %6 = bitcast i32* %5 to i8*, !dbg !3148
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !3148
  %7 = icmp eq i32* %0, null, !dbg !3149
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3151
  call void @llvm.dbg.value(metadata i32* %8, metadata !3138, metadata !DIExpression()), !dbg !3147
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %9, metadata !3142, metadata !DIExpression()), !dbg !3147
  %10 = icmp ugt i64 %9, -3, !dbg !3153
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3154
  br i1 %12, label %13, label %18, !dbg !3154

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !3155
  br i1 %14, label %18, label %15, !dbg !3156

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3157, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %16, metadata !3144, metadata !DIExpression()), !dbg !3158
  %17 = zext i8 %16 to i32, !dbg !3159
  store i32 %17, i32* %8, align 4, !dbg !3160, !tbaa !792
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3147
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !3161
  ret i64 %19, !dbg !3161
}

; Function Attrs: nounwind
declare !dbg !3162 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3166 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3204, metadata !DIExpression()), !dbg !3209
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !3210
  call void @llvm.dbg.value(metadata i1 undef, metadata !3205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3211, metadata !DIExpression()), !dbg !3215
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3217
  %4 = load i32, i32* %3, align 8, !dbg !3217, !tbaa !3218
  %5 = and i32 %4, 32, !dbg !3220
  %6 = icmp eq i32 %5, 0, !dbg !3220
  call void @llvm.dbg.value(metadata i1 %6, metadata !3207, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3209
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !3221
  %8 = icmp eq i32 %7, 0, !dbg !3222
  call void @llvm.dbg.value(metadata i1 %8, metadata !3208, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3209
  br i1 %6, label %9, label %19, !dbg !3223

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3225
  call void @llvm.dbg.value(metadata i1 %10, metadata !3205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3209
  %11 = or i1 %10, %8, !dbg !3226
  %12 = xor i1 %8, true, !dbg !3226
  %13 = sext i1 %12 to i32, !dbg !3226
  br i1 %11, label %22, label %14, !dbg !3226

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !3227
  %16 = load i32, i32* %15, align 4, !dbg !3227, !tbaa !792
  %17 = icmp ne i32 %16, 9, !dbg !3228
  %18 = sext i1 %17 to i32, !dbg !3229
  br label %22, !dbg !3229

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3230

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !3232
  store i32 0, i32* %21, align 4, !dbg !3234, !tbaa !792
  br label %22, !dbg !3232

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3209
  ret i32 %23, !dbg !3235
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3236 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3240, metadata !DIExpression()), !dbg !3245
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3246
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3246
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3241, metadata !DIExpression()), !dbg !3247
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !3248
  %5 = icmp eq i32 %4, 0, !dbg !3248
  br i1 %5, label %6, label %13, !dbg !3250

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3251
  %8 = load i16, i16* %7, align 16, !dbg !3251
  %9 = icmp eq i16 %8, 67, !dbg !3251
  br i1 %9, label %13, label %10, !dbg !3252

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.134, i64 0, i64 0), i64 6), !dbg !3253
  %12 = icmp ne i32 %11, 0, !dbg !3254
  br label %13, !dbg !3252

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3245
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3255
  ret i1 %14, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3256 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()), !dbg !3262
  %2 = icmp eq i8* %1, null, !dbg !3263
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), i8* %1, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %3, metadata !3260, metadata !DIExpression()), !dbg !3262
  %4 = load i8, i8* %3, align 1, !dbg !3266, !tbaa !914
  %5 = icmp eq i8 %4, 0, !dbg !3270
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.138, i64 0, i64 0), i8* %3, !dbg !3271
  call void @llvm.dbg.value(metadata i8* %6, metadata !3260, metadata !DIExpression()), !dbg !3262
  ret i8* %6, !dbg !3272
}

; Function Attrs: nounwind
declare !dbg !3273 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3276 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3280, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8* %1, metadata !3281, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %2, metadata !3282, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 %0, metadata !3284, metadata !DIExpression()) #24, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()) #24, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %2, metadata !3288, metadata !DIExpression()) #24, !dbg !3293
  call void @llvm.dbg.value(metadata i32 %0, metadata !3295, metadata !DIExpression()) #24, !dbg !3301
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %4, metadata !3300, metadata !DIExpression()) #24, !dbg !3301
  call void @llvm.dbg.value(metadata i8* %4, metadata !3289, metadata !DIExpression()) #24, !dbg !3293
  %5 = icmp eq i8* %4, null, !dbg !3304
  br i1 %5, label %6, label %9, !dbg !3305

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3306
  br i1 %7, label %19, label %8, !dbg !3309

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3310, !tbaa !914
  br label %19, !dbg !3311

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %10, metadata !3290, metadata !DIExpression()) #24, !dbg !3313
  %11 = icmp ult i64 %10, %2, !dbg !3314
  br i1 %11, label %12, label %14, !dbg !3316

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3317
  call void @llvm.dbg.value(metadata i8* %1, metadata !3319, metadata !DIExpression()) #24, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %4, metadata !3322, metadata !DIExpression()) #24, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %13, metadata !3323, metadata !DIExpression()) #24, !dbg !3324
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3326
  br label %19, !dbg !3327

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3328
  br i1 %15, label %19, label %16, !dbg !3331

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %1, metadata !3319, metadata !DIExpression()) #24, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %4, metadata !3322, metadata !DIExpression()) #24, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %17, metadata !3323, metadata !DIExpression()) #24, !dbg !3334
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3336
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3337
  store i8 0, i8* %18, align 1, !dbg !3338, !tbaa !914
  br label %19, !dbg !3339

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3340
  ret i32 %20, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3342 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 %0, metadata !3295, metadata !DIExpression()) #24, !dbg !3346
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %2, metadata !3300, metadata !DIExpression()) #24, !dbg !3346
  ret i8* %2, !dbg !3349
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3350 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3388, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 0, metadata !3389, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 0, metadata !3391, metadata !DIExpression()), !dbg !3392
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3393
  call void @llvm.dbg.value(metadata i32 %2, metadata !3390, metadata !DIExpression()), !dbg !3392
  %3 = icmp slt i32 %2, 0, !dbg !3394
  br i1 %3, label %4, label %6, !dbg !3396

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3397
  br label %24, !dbg !3398

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3399
  %8 = icmp eq i32 %7, 0, !dbg !3399
  br i1 %8, label %13, label %9, !dbg !3401

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3402
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3403
  %12 = icmp eq i64 %11, -1, !dbg !3404
  br i1 %12, label %16, label %13, !dbg !3405

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3406
  %15 = icmp eq i32 %14, 0, !dbg !3406
  br i1 %15, label %16, label %18, !dbg !3407

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3389, metadata !DIExpression()), !dbg !3392
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %21, metadata !3391, metadata !DIExpression()), !dbg !3392
  br label %24, !dbg !3409

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3410
  %20 = load i32, i32* %19, align 4, !dbg !3410, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %20, metadata !3389, metadata !DIExpression()), !dbg !3392
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %21, metadata !3391, metadata !DIExpression()), !dbg !3392
  %22 = icmp eq i32 %20, 0, !dbg !3411
  br i1 %22, label %24, label %23, !dbg !3409

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3413, !tbaa !792
  call void @llvm.dbg.value(metadata i32 -1, metadata !3391, metadata !DIExpression()), !dbg !3392
  br label %24, !dbg !3415

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3392
  ret i32 %25, !dbg !3416
}

; Function Attrs: nofree nounwind
declare !dbg !3417 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3420 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3421 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3424 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3462, metadata !DIExpression()), !dbg !3463
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3464
  br i1 %2, label %6, label %3, !dbg !3466

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3467
  %5 = icmp eq i32 %4, 0, !dbg !3467
  br i1 %5, label %6, label %8, !dbg !3468

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3469
  br label %17, !dbg !3470

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3471, metadata !DIExpression()) #24, !dbg !3476
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3478
  %10 = load i32, i32* %9, align 8, !dbg !3478, !tbaa !3218
  %11 = and i32 %10, 256, !dbg !3480
  %12 = icmp eq i32 %11, 0, !dbg !3480
  br i1 %12, label %15, label %13, !dbg !3481

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3482
  br label %15, !dbg !3482

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3483
  br label %17, !dbg !3484

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3463
  ret i32 %18, !dbg !3485
}

; Function Attrs: nofree nounwind
declare !dbg !3486 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3489 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3528, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 %1, metadata !3529, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 %2, metadata !3530, metadata !DIExpression()), !dbg !3534
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3535
  %5 = load i8*, i8** %4, align 8, !dbg !3535, !tbaa !3536
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3537
  %7 = load i8*, i8** %6, align 8, !dbg !3537, !tbaa !3538
  %8 = icmp eq i8* %5, %7, !dbg !3539
  br i1 %8, label %9, label %28, !dbg !3540

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3541
  %11 = load i8*, i8** %10, align 8, !dbg !3541, !tbaa !3542
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3543
  %13 = load i8*, i8** %12, align 8, !dbg !3543, !tbaa !3544
  %14 = icmp eq i8* %11, %13, !dbg !3545
  br i1 %14, label %15, label %28, !dbg !3546

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3547
  %17 = load i8*, i8** %16, align 8, !dbg !3547, !tbaa !3548
  %18 = icmp eq i8* %17, null, !dbg !3549
  br i1 %18, label %19, label %28, !dbg !3550

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3551
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %21, metadata !3531, metadata !DIExpression()), !dbg !3553
  %22 = icmp eq i64 %21, -1, !dbg !3554
  br i1 %22, label %30, label %23, !dbg !3556

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3557
  %25 = load i32, i32* %24, align 8, !dbg !3558, !tbaa !3218
  %26 = and i32 %25, -17, !dbg !3558
  store i32 %26, i32* %24, align 8, !dbg !3558, !tbaa !3218
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3559
  store i64 %21, i64* %27, align 8, !dbg !3560, !tbaa !3561
  br label %30, !dbg !3562

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3563
  br label %30, !dbg !3564

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3534
  ret i32 %31, !dbg !3565
}

; Function Attrs: nofree nounwind
declare !dbg !3566 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!2, !66, !72, !80, !86, !92, !188, !163, !194, !211, !213, !171, !215, !218, !220, !222, !611, !613, !615, !617}
!llvm.ident = !{!619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619}
!llvm.module.flags = !{!620, !621, !622, !623, !624}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !48, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pathchk.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 24, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!23 = !DIEnumerator(name: "_PC_LINK_MAX", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "_PC_MAX_CANON", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "_PC_MAX_INPUT", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "_PC_NAME_MAX", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "_PC_PATH_MAX", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "_PC_PIPE_BUF", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "_PC_CHOWN_RESTRICTED", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "_PC_NO_TRUNC", value: 7, isUnsigned: true)
!31 = !DIEnumerator(name: "_PC_VDISABLE", value: 8, isUnsigned: true)
!32 = !DIEnumerator(name: "_PC_SYNC_IO", value: 9, isUnsigned: true)
!33 = !DIEnumerator(name: "_PC_ASYNC_IO", value: 10, isUnsigned: true)
!34 = !DIEnumerator(name: "_PC_PRIO_IO", value: 11, isUnsigned: true)
!35 = !DIEnumerator(name: "_PC_SOCK_MAXBUF", value: 12, isUnsigned: true)
!36 = !DIEnumerator(name: "_PC_FILESIZEBITS", value: 13, isUnsigned: true)
!37 = !DIEnumerator(name: "_PC_REC_INCR_XFER_SIZE", value: 14, isUnsigned: true)
!38 = !DIEnumerator(name: "_PC_REC_MAX_XFER_SIZE", value: 15, isUnsigned: true)
!39 = !DIEnumerator(name: "_PC_REC_MIN_XFER_SIZE", value: 16, isUnsigned: true)
!40 = !DIEnumerator(name: "_PC_REC_XFER_ALIGN", value: 17, isUnsigned: true)
!41 = !DIEnumerator(name: "_PC_ALLOC_SIZE_MIN", value: 18, isUnsigned: true)
!42 = !DIEnumerator(name: "_PC_SYMLINK_MAX", value: 19, isUnsigned: true)
!43 = !DIEnumerator(name: "_PC_2_SYMLINKS", value: 20, isUnsigned: true)
!44 = !{!45, !47}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !{!0}
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1024, elements: !62)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !52, line: 50, size: 256, elements: !53)
!52 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!53 = !{!54, !57, !59, !61}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !52, line: 52, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !51, file: !52, line: 55, baseType: !58, size: 32, offset: 64)
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !51, file: !52, line: 56, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !51, file: !52, line: 57, baseType: !58, size: 32, offset: 192)
!62 = !{!63}
!63 = !DISubrange(count: 4)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "Version", scope: !66, file: !67, line: 2, type: !55, isLocal: false, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !69, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!68 = !{}
!69 = !{!64}
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "file_name", scope: !72, file: !73, line: 46, type: !55, isLocal: true, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !74, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!74 = !{!70, !75}
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !72, file: !73, line: 56, type: !77, isLocal: true, isDefinition: true)
!77 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "exit_failure", scope: !80, file: !81, line: 24, type: !83, isLocal: false, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !82, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!82 = !{!78}
!83 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "program_name", scope: !86, file: !87, line: 33, type: !55, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !88, globals: !89, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!88 = !{!47, !45}
!89 = !{!84}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !92, file: !93, line: 85, type: !157, isLocal: false, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !115, globals: !120, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!94 = !{!5, !95, !100}
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 46, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!103 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!106 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!115 = !{!58, !116, !117, !45}
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !119)
!118 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !{!90, !121, !127, !139, !141, !146, !153, !155}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !92, file: !93, line: 101, type: !123, isLocal: false, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 320, elements: !125)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!125 = !{!126}
!126 = !DISubrange(count: 10)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !92, file: !93, line: 1052, type: !129, isLocal: false, isDefinition: true)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !93, line: 65, size: 448, elements: !130)
!130 = !{!131, !132, !133, !137, !138}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !129, file: !93, line: 68, baseType: !5, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !93, line: 71, baseType: !58, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !129, file: !93, line: 75, baseType: !134, size: 256, offset: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !129, file: !93, line: 78, baseType: !55, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !129, file: !93, line: 81, baseType: !55, size: 64, offset: 384)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !92, file: !93, line: 116, type: !129, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "slot0", scope: !92, file: !93, line: 842, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 256)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "slotvec", scope: !92, file: !93, line: 845, type: !148, isLocal: true, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !93, line: 834, size: 128, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !149, file: !93, line: 836, baseType: !117, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !93, line: 837, baseType: !45, size: 64, offset: 64)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "nslots", scope: !92, file: !93, line: 843, type: !58, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "slotvec0", scope: !92, file: !93, line: 844, type: !149, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 704, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!159 = !{!160}
!160 = !DISubrange(count: 11)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !163, file: !164, line: 26, type: !166, isLocal: false, isDefinition: true)
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !165, splitDebugInlining: false, nameTableKind: None)
!164 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!165 = !{!161}
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 376, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 47)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "internal_state", scope: !171, file: !172, line: 24, type: !175, isLocal: true, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !173, globals: !174, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/mbrlen.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !{!47}
!174 = !{!169}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !176, line: 6, baseType: !177)
!176 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !178, line: 21, baseType: !179)
!178 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 13, size: 64, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !179, file: !178, line: 15, baseType: !58, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !179, file: !178, line: 20, baseType: !183, size: 32, offset: 32)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !178, line: 16, size: 32, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !183, file: !178, line: 18, baseType: !7, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !183, file: !178, line: 19, baseType: !187, size: 32)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !62)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !190, retainedTypes: !173, splitDebugInlining: false, nameTableKind: None)
!189 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!190 = !{!191}
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 40, baseType: !7, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !196, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!195 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!196 = !{!197}
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !199, file: !198, line: 186, baseType: !7, size: 32, elements: !208)
!198 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = distinct !DISubprogram(name: "x2nrealloc", scope: !198, file: !198, line: 174, type: !200, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !203)
!200 = !DISubroutineType(types: !201)
!201 = !{!47, !47, !202, !117}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!203 = !{!204, !205, !206, !207}
!204 = !DILocalVariable(name: "p", arg: 1, scope: !199, file: !198, line: 174, type: !47)
!205 = !DILocalVariable(name: "pn", arg: 2, scope: !199, file: !198, line: 174, type: !202)
!206 = !DILocalVariable(name: "s", arg: 3, scope: !199, file: !198, line: 174, type: !117)
!207 = !DILocalVariable(name: "n", scope: !199, file: !198, line: 176, type: !117)
!208 = !{!209}
!209 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!210 = !{!117, !45, !47}
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !173, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !217, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!217 = !{!117}
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !224, retainedTypes: !173, splitDebugInlining: false, nameTableKind: None)
!223 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!224 = !{!225}
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !226, line: 41, baseType: !7, size: 32, elements: !227)
!226 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!228 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!229 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!230 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!231 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!232 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!233 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!234 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!235 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!236 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!237 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!238 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!239 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!240 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!241 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!246 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!248 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!252 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!253 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!258 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!260 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!264 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!265 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!266 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!267 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!268 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!269 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!270 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!271 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!272 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!273 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!274 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!275 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!276 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!277 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!336 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!343 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!345 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!349 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!350 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!423 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!496 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!497 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!498 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!499 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!500 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!501 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!502 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!503 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!504 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!505 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!506 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!507 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!508 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!509 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!510 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!512 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!513 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!514 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!515 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!516 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!517 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!543 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!544 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!545 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!546 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!547 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!552 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!553 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!554 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!555 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !173, splitDebugInlining: false, nameTableKind: None)
!612 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, splitDebugInlining: false, nameTableKind: None)
!614 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !173, splitDebugInlining: false, nameTableKind: None)
!616 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !173, splitDebugInlining: false, nameTableKind: None)
!618 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!619 = !{!"clang version 12.0.1"}
!620 = !{i32 7, !"Dwarf Version", i32 4}
!621 = !{i32 2, !"Debug Info Version", i32 3}
!622 = !{i32 1, !"wchar_size", i32 4}
!623 = !{i32 7, !"PIC Level", i32 2}
!624 = !{i32 7, !"PIE Level", i32 2}
!625 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !626, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !58}
!628 = !{!629}
!629 = !DILocalVariable(name: "status", arg: 1, scope: !625, file: !3, line: 82, type: !58)
!630 = !DILocation(line: 0, scope: !625)
!631 = !DILocation(line: 84, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !625, file: !3, line: 84, column: 7)
!633 = !DILocation(line: 84, column: 7, scope: !625)
!634 = !DILocation(line: 85, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !3, line: 85, column: 5)
!636 = !{!637, !637, i64 0}
!637 = !{!"any pointer", !638, i64 0}
!638 = !{!"omnipotent char", !639, i64 0}
!639 = !{!"Simple C/C++ TBAA"}
!640 = !DILocation(line: 88, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !632, file: !3, line: 87, column: 5)
!642 = !DILocation(line: 89, column: 7, scope: !641)
!643 = !DILocation(line: 96, column: 7, scope: !641)
!644 = !DILocation(line: 97, column: 7, scope: !641)
!645 = !DILocalVariable(name: "program", arg: 1, scope: !646, file: !647, line: 634, type: !55)
!646 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !647, file: !647, line: 634, type: !648, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!647 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!648 = !DISubroutineType(types: !649)
!649 = !{null, !55}
!650 = !{!645, !651, !660, !661, !663}
!651 = !DILocalVariable(name: "infomap", scope: !646, file: !647, line: 636, type: !652)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 896, elements: !658)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !646, file: !647, line: 636, size: 128, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !654, file: !647, line: 636, baseType: !55, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !647, line: 636, baseType: !55, size: 64, offset: 64)
!658 = !{!659}
!659 = !DISubrange(count: 7)
!660 = !DILocalVariable(name: "node", scope: !646, file: !647, line: 646, type: !55)
!661 = !DILocalVariable(name: "map_prog", scope: !646, file: !647, line: 647, type: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!663 = !DILocalVariable(name: "lc_messages", scope: !646, file: !647, line: 659, type: !55)
!664 = !DILocation(line: 0, scope: !646, inlinedAt: !665)
!665 = distinct !DILocation(line: 98, column: 7, scope: !641)
!666 = !DILocation(line: 636, column: 3, scope: !646, inlinedAt: !665)
!667 = !DILocation(line: 636, column: 67, scope: !646, inlinedAt: !665)
!668 = !DILocation(line: 647, column: 36, scope: !646, inlinedAt: !665)
!669 = !DILocation(line: 649, column: 3, scope: !646, inlinedAt: !665)
!670 = !DILocation(line: 649, column: 33, scope: !646, inlinedAt: !665)
!671 = !DILocation(line: 650, column: 13, scope: !646, inlinedAt: !665)
!672 = !DILocation(line: 649, column: 20, scope: !646, inlinedAt: !665)
!673 = !{!674, !637, i64 0}
!674 = !{!"infomap", !637, i64 0, !637, i64 8}
!675 = !DILocation(line: 649, column: 10, scope: !646, inlinedAt: !665)
!676 = !DILocation(line: 649, column: 28, scope: !646, inlinedAt: !665)
!677 = distinct !{!677, !669, !671, !678}
!678 = !{!"llvm.loop.mustprogress"}
!679 = !DILocation(line: 652, column: 17, scope: !680, inlinedAt: !665)
!680 = distinct !DILexicalBlock(scope: !646, file: !647, line: 652, column: 7)
!681 = !{!674, !637, i64 8}
!682 = !DILocation(line: 652, column: 7, scope: !680, inlinedAt: !665)
!683 = !DILocation(line: 652, column: 7, scope: !646, inlinedAt: !665)
!684 = !DILocation(line: 655, column: 3, scope: !646, inlinedAt: !665)
!685 = !DILocation(line: 659, column: 29, scope: !646, inlinedAt: !665)
!686 = !DILocation(line: 660, column: 7, scope: !687, inlinedAt: !665)
!687 = distinct !DILexicalBlock(scope: !646, file: !647, line: 660, column: 7)
!688 = !DILocation(line: 660, column: 19, scope: !687, inlinedAt: !665)
!689 = !DILocation(line: 660, column: 22, scope: !687, inlinedAt: !665)
!690 = !DILocation(line: 660, column: 7, scope: !646, inlinedAt: !665)
!691 = !DILocation(line: 666, column: 7, scope: !692, inlinedAt: !665)
!692 = distinct !DILexicalBlock(scope: !687, file: !647, line: 661, column: 5)
!693 = !DILocation(line: 668, column: 5, scope: !692, inlinedAt: !665)
!694 = !DILocation(line: 669, column: 3, scope: !646, inlinedAt: !665)
!695 = !DILocation(line: 671, column: 3, scope: !646, inlinedAt: !665)
!696 = !DILocation(line: 673, column: 1, scope: !646, inlinedAt: !665)
!697 = !DILocation(line: 100, column: 3, scope: !625)
!698 = !DISubprogram(name: "dcgettext", scope: !699, file: !699, line: 51, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!699 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!700 = !DISubroutineType(types: !701)
!701 = !{!45, !55, !55, !58}
!702 = !DISubprogram(name: "fputs_unlocked", scope: !703, file: !703, line: 667, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!703 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!704 = !DISubroutineType(types: !705)
!705 = !{!58, !55, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !708, line: 49, size: 1728, elements: !709)
!708 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !725, !726, !727, !728, !732, !733, !735, !739, !742, !744, !747, !750, !751, !752, !753, !754}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !707, file: !708, line: 51, baseType: !58, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !707, file: !708, line: 54, baseType: !45, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !707, file: !708, line: 55, baseType: !45, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !707, file: !708, line: 56, baseType: !45, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !707, file: !708, line: 57, baseType: !45, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !707, file: !708, line: 58, baseType: !45, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !707, file: !708, line: 59, baseType: !45, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !707, file: !708, line: 60, baseType: !45, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !707, file: !708, line: 61, baseType: !45, size: 64, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !707, file: !708, line: 64, baseType: !45, size: 64, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !707, file: !708, line: 65, baseType: !45, size: 64, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !707, file: !708, line: 66, baseType: !45, size: 64, offset: 704)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !707, file: !708, line: 68, baseType: !723, size: 64, offset: 768)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !708, line: 36, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !707, file: !708, line: 70, baseType: !706, size: 64, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !707, file: !708, line: 72, baseType: !58, size: 32, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !707, file: !708, line: 73, baseType: !58, size: 32, offset: 928)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !707, file: !708, line: 74, baseType: !729, size: 64, offset: 960)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !730, line: 152, baseType: !731)
!730 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!731 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !707, file: !708, line: 77, baseType: !116, size: 16, offset: 1024)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !707, file: !708, line: 78, baseType: !734, size: 8, offset: 1040)
!734 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !707, file: !708, line: 79, baseType: !736, size: 8, offset: 1048)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 1)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !707, file: !708, line: 81, baseType: !740, size: 64, offset: 1088)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !708, line: 43, baseType: null)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !707, file: !708, line: 89, baseType: !743, size: 64, offset: 1152)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !730, line: 153, baseType: !731)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !707, file: !708, line: 91, baseType: !745, size: 64, offset: 1216)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !708, line: 37, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !707, file: !708, line: 92, baseType: !748, size: 64, offset: 1280)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !708, line: 38, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !707, file: !708, line: 93, baseType: !706, size: 64, offset: 1344)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !707, file: !708, line: 94, baseType: !47, size: 64, offset: 1408)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !707, file: !708, line: 95, baseType: !117, size: 64, offset: 1472)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !707, file: !708, line: 96, baseType: !58, size: 32, offset: 1536)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !707, file: !708, line: 98, baseType: !755, size: 160, offset: 1568)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 20)
!758 = !DISubprogram(name: "setlocale", scope: !759, file: !759, line: 122, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!759 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!760 = !DISubroutineType(types: !761)
!761 = !{!45, !58, !55}
!762 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 104, type: !763, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !766)
!763 = !DISubroutineType(types: !764)
!764 = !{!58, !58, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!766 = !{!767, !768, !769, !770, !771, !772}
!767 = !DILocalVariable(name: "argc", arg: 1, scope: !762, file: !3, line: 104, type: !58)
!768 = !DILocalVariable(name: "argv", arg: 2, scope: !762, file: !3, line: 104, type: !765)
!769 = !DILocalVariable(name: "ok", scope: !762, file: !3, line: 106, type: !77)
!770 = !DILocalVariable(name: "check_basic_portability", scope: !762, file: !3, line: 107, type: !77)
!771 = !DILocalVariable(name: "check_extra_portability", scope: !762, file: !3, line: 108, type: !77)
!772 = !DILocalVariable(name: "optc", scope: !762, file: !3, line: 109, type: !58)
!773 = !DILocation(line: 0, scope: !762)
!774 = !DILocation(line: 112, column: 21, scope: !762)
!775 = !DILocation(line: 112, column: 3, scope: !762)
!776 = !DILocation(line: 113, column: 3, scope: !762)
!777 = !DILocation(line: 114, column: 3, scope: !762)
!778 = !DILocation(line: 115, column: 3, scope: !762)
!779 = !DILocation(line: 117, column: 3, scope: !762)
!780 = !DILocation(line: 119, column: 3, scope: !762)
!781 = !DILocation(line: 119, column: 18, scope: !762)
!782 = distinct !{!782, !780, !783, !678}
!783 = !DILocation(line: 143, column: 5, scope: !762)
!784 = !DILocation(line: 130, column: 11, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 122, column: 9)
!786 = distinct !DILexicalBlock(scope: !762, file: !3, line: 120, column: 5)
!787 = !DILocation(line: 136, column: 9, scope: !785)
!788 = !DILocation(line: 138, column: 9, scope: !785)
!789 = !DILocation(line: 141, column: 11, scope: !785)
!790 = !DILocation(line: 145, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !762, file: !3, line: 145, column: 7)
!792 = !{!793, !793, i64 0}
!793 = !{!"int", !638, i64 0}
!794 = !DILocation(line: 145, column: 14, scope: !791)
!795 = !DILocation(line: 145, column: 7, scope: !762)
!796 = !DILocation(line: 151, column: 17, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 151, column: 3)
!798 = distinct !DILexicalBlock(scope: !762, file: !3, line: 151, column: 3)
!799 = !DILocation(line: 151, column: 3, scope: !798)
!800 = !DILocation(line: 147, column: 20, scope: !801)
!801 = distinct !DILexicalBlock(scope: !791, file: !3, line: 146, column: 5)
!802 = !DILocation(line: 147, column: 7, scope: !801)
!803 = !DILocation(line: 148, column: 7, scope: !801)
!804 = !DILocation(line: 152, column: 31, scope: !797)
!805 = !DILocalVariable(name: "file", arg: 1, scope: !806, file: !3, line: 247, type: !45)
!806 = distinct !DISubprogram(name: "validate_file_name", scope: !3, file: !3, line: 247, type: !807, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!77, !45, !77, !77}
!809 = !{!805, !810, !811, !812, !813, !814, !815, !816, !855, !858, !861, !862, !865, !866, !872, !875, !876, !880, !883, !884, !885, !888, !889}
!810 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !806, file: !3, line: 247, type: !77)
!811 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !806, file: !3, line: 248, type: !77)
!812 = !DILocalVariable(name: "filelen", scope: !806, file: !3, line: 250, type: !117)
!813 = !DILocalVariable(name: "start", scope: !806, file: !3, line: 253, type: !45)
!814 = !DILocalVariable(name: "check_component_lengths", scope: !806, file: !3, line: 256, type: !77)
!815 = !DILocalVariable(name: "file_exists", scope: !806, file: !3, line: 259, type: !77)
!816 = !DILocalVariable(name: "st", scope: !817, file: !3, line: 287, type: !819)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 281, column: 5)
!818 = distinct !DILexicalBlock(scope: !806, file: !3, line: 275, column: 7)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !820, line: 26, size: 1152, elements: !821)
!820 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!821 = !{!822, !824, !826, !828, !830, !832, !834, !835, !836, !837, !839, !841, !849, !850, !851}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !819, file: !820, line: 28, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !730, line: 145, baseType: !119)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !819, file: !820, line: 33, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !730, line: 148, baseType: !119)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !819, file: !820, line: 41, baseType: !827, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !730, line: 151, baseType: !119)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !819, file: !820, line: 42, baseType: !829, size: 32, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !730, line: 150, baseType: !7)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !819, file: !820, line: 44, baseType: !831, size: 32, offset: 224)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !730, line: 146, baseType: !7)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !819, file: !820, line: 45, baseType: !833, size: 32, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !730, line: 147, baseType: !7)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !819, file: !820, line: 47, baseType: !58, size: 32, offset: 288)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !819, file: !820, line: 49, baseType: !823, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !819, file: !820, line: 54, baseType: !729, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !819, file: !820, line: 58, baseType: !838, size: 64, offset: 448)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !730, line: 175, baseType: !731)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !819, file: !820, line: 60, baseType: !840, size: 64, offset: 512)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !730, line: 180, baseType: !731)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !819, file: !820, line: 71, baseType: !842, size: 128, offset: 576)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !843, line: 10, size: 128, elements: !844)
!843 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!844 = !{!845, !847}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !842, file: !843, line: 12, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !730, line: 160, baseType: !731)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !842, file: !843, line: 16, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !730, line: 197, baseType: !731)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !819, file: !820, line: 72, baseType: !842, size: 128, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !819, file: !820, line: 73, baseType: !842, size: 128, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !819, file: !820, line: 86, baseType: !852, size: 192, offset: 960)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 192, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 3)
!855 = !DILocalVariable(name: "maxsize", scope: !856, file: !3, line: 300, type: !117)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 299, column: 5)
!857 = distinct !DILexicalBlock(scope: !806, file: !3, line: 297, column: 7)
!858 = !DILocalVariable(name: "size", scope: !859, file: !3, line: 306, type: !731)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 305, column: 9)
!860 = distinct !DILexicalBlock(scope: !856, file: !3, line: 302, column: 11)
!861 = !DILocalVariable(name: "dir", scope: !859, file: !3, line: 307, type: !55)
!862 = !DILocalVariable(name: "len", scope: !863, file: !3, line: 322, type: !119)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 321, column: 9)
!864 = distinct !DILexicalBlock(scope: !856, file: !3, line: 320, column: 11)
!865 = !DILocalVariable(name: "maxlen", scope: !863, file: !3, line: 323, type: !119)
!866 = !DILocalVariable(name: "length", scope: !867, file: !3, line: 340, type: !117)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 339, column: 9)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 338, column: 7)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 338, column: 7)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 337, column: 5)
!871 = distinct !DILexicalBlock(scope: !806, file: !3, line: 336, column: 7)
!872 = !DILocalVariable(name: "name_max", scope: !873, file: !3, line: 358, type: !117)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 353, column: 5)
!874 = distinct !DILexicalBlock(scope: !806, file: !3, line: 352, column: 7)
!875 = !DILocalVariable(name: "known_name_max", scope: !873, file: !3, line: 361, type: !117)
!876 = !DILocalVariable(name: "length", scope: !877, file: !3, line: 365, type: !117)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 364, column: 9)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 363, column: 7)
!879 = distinct !DILexicalBlock(scope: !873, file: !3, line: 363, column: 7)
!880 = !DILocalVariable(name: "len", scope: !881, file: !3, line: 371, type: !731)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 370, column: 13)
!882 = distinct !DILexicalBlock(scope: !877, file: !3, line: 367, column: 15)
!883 = !DILocalVariable(name: "dir", scope: !881, file: !3, line: 372, type: !55)
!884 = !DILocalVariable(name: "c", scope: !881, file: !3, line: 373, type: !46)
!885 = !DILocalVariable(name: "len", scope: !886, file: !3, line: 405, type: !119)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 404, column: 13)
!887 = distinct !DILexicalBlock(scope: !877, file: !3, line: 403, column: 15)
!888 = !DILocalVariable(name: "maxlen", scope: !886, file: !3, line: 406, type: !119)
!889 = !DILocalVariable(name: "c", scope: !886, file: !3, line: 407, type: !46)
!890 = !DILocation(line: 0, scope: !806, inlinedAt: !891)
!891 = distinct !DILocation(line: 152, column: 11, scope: !797)
!892 = !DILocation(line: 250, column: 20, scope: !806, inlinedAt: !891)
!893 = !DILocation(line: 261, column: 31, scope: !894, inlinedAt: !891)
!894 = distinct !DILexicalBlock(scope: !806, file: !3, line: 261, column: 7)
!895 = !DILocalVariable(name: "file", arg: 1, scope: !896, file: !3, line: 162, type: !55)
!896 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !3, file: !3, line: 162, type: !897, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{!77, !55}
!899 = !{!895, !900}
!900 = !DILocalVariable(name: "p", scope: !896, file: !3, line: 164, type: !55)
!901 = !DILocation(line: 0, scope: !896, inlinedAt: !902)
!902 = distinct !DILocation(line: 261, column: 36, scope: !894, inlinedAt: !891)
!903 = !DILocation(line: 166, column: 24, scope: !904, inlinedAt: !902)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 166, column: 3)
!905 = distinct !DILexicalBlock(scope: !896, file: !3, line: 166, column: 3)
!906 = !DILocation(line: 166, column: 3, scope: !905, inlinedAt: !902)
!907 = !DILocation(line: 166, column: 44, scope: !904, inlinedAt: !902)
!908 = distinct !{!908, !906, !909, !678}
!909 = !DILocation(line: 172, column: 7, scope: !905, inlinedAt: !902)
!910 = !DILocation(line: 167, column: 11, scope: !911, inlinedAt: !902)
!911 = distinct !DILexicalBlock(scope: !904, file: !3, line: 167, column: 9)
!912 = !DILocation(line: 167, column: 19, scope: !911, inlinedAt: !902)
!913 = !DILocation(line: 167, column: 22, scope: !911, inlinedAt: !902)
!914 = !{!638, !638, i64 0}
!915 = !DILocation(line: 167, column: 28, scope: !911, inlinedAt: !902)
!916 = !DILocation(line: 167, column: 9, scope: !904, inlinedAt: !902)
!917 = !DILocation(line: 169, column: 22, scope: !918, inlinedAt: !902)
!918 = distinct !DILexicalBlock(scope: !911, file: !3, line: 168, column: 7)
!919 = !DILocation(line: 170, column: 16, scope: !918, inlinedAt: !902)
!920 = !DILocation(line: 169, column: 9, scope: !918, inlinedAt: !902)
!921 = !DILocation(line: 261, column: 7, scope: !806, inlinedAt: !891)
!922 = !DILocation(line: 264, column: 32, scope: !923, inlinedAt: !891)
!923 = distinct !DILexicalBlock(scope: !806, file: !3, line: 264, column: 7)
!924 = !DILocation(line: 271, column: 20, scope: !925, inlinedAt: !891)
!925 = distinct !DILexicalBlock(scope: !923, file: !3, line: 266, column: 5)
!926 = !DILocation(line: 271, column: 7, scope: !925, inlinedAt: !891)
!927 = !DILocation(line: 272, column: 7, scope: !925, inlinedAt: !891)
!928 = !DILocation(line: 275, column: 7, scope: !806, inlinedAt: !891)
!929 = !DILocalVariable(name: "file", arg: 1, scope: !930, file: !3, line: 181, type: !55)
!930 = distinct !DISubprogram(name: "portable_chars_only", scope: !3, file: !3, line: 181, type: !931, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!77, !55, !117}
!933 = !{!929, !934, !935, !936, !937, !950}
!934 = !DILocalVariable(name: "filelen", arg: 2, scope: !930, file: !3, line: 181, type: !117)
!935 = !DILocalVariable(name: "validlen", scope: !930, file: !3, line: 183, type: !117)
!936 = !DILocalVariable(name: "invalid", scope: !930, file: !3, line: 188, type: !55)
!937 = !DILocalVariable(name: "mbstate", scope: !938, file: !3, line: 192, type: !940)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 191, column: 5)
!939 = distinct !DILexicalBlock(scope: !930, file: !3, line: 190, column: 7)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !176, line: 6, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !178, line: 21, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 13, size: 64, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !942, file: !178, line: 15, baseType: !58, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !942, file: !178, line: 20, baseType: !946, size: 32, offset: 32)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !178, line: 16, size: 32, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !946, file: !178, line: 18, baseType: !7, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !946, file: !178, line: 19, baseType: !187, size: 32)
!950 = !DILocalVariable(name: "charlen", scope: !938, file: !3, line: 193, type: !117)
!951 = !DILocation(line: 0, scope: !930, inlinedAt: !952)
!952 = distinct !DILocation(line: 277, column: 13, scope: !953, inlinedAt: !891)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 277, column: 11)
!954 = distinct !DILexicalBlock(scope: !818, file: !3, line: 276, column: 5)
!955 = !DILocation(line: 183, column: 21, scope: !930, inlinedAt: !952)
!956 = !DILocation(line: 188, column: 30, scope: !930, inlinedAt: !952)
!957 = !DILocation(line: 190, column: 7, scope: !939, inlinedAt: !952)
!958 = !DILocation(line: 190, column: 7, scope: !930, inlinedAt: !952)
!959 = !DILocation(line: 192, column: 7, scope: !938, inlinedAt: !952)
!960 = !DILocation(line: 192, column: 17, scope: !938, inlinedAt: !952)
!961 = !DILocation(line: 193, column: 49, scope: !938, inlinedAt: !952)
!962 = !DILocation(line: 193, column: 24, scope: !938, inlinedAt: !952)
!963 = !DILocation(line: 0, scope: !938, inlinedAt: !952)
!964 = !DILocation(line: 195, column: 14, scope: !938, inlinedAt: !952)
!965 = !DILocation(line: 197, column: 45, scope: !938, inlinedAt: !952)
!966 = !DILocation(line: 197, column: 37, scope: !938, inlinedAt: !952)
!967 = !DILocation(line: 196, column: 14, scope: !938, inlinedAt: !952)
!968 = !DILocation(line: 198, column: 14, scope: !938, inlinedAt: !952)
!969 = !DILocation(line: 194, column: 7, scope: !938, inlinedAt: !952)
!970 = !DILocation(line: 200, column: 5, scope: !939, inlinedAt: !952)
!971 = !DILocation(line: 277, column: 11, scope: !954, inlinedAt: !891)
!972 = !DILocation(line: 287, column: 7, scope: !817, inlinedAt: !891)
!973 = !DILocation(line: 287, column: 19, scope: !817, inlinedAt: !891)
!974 = !DILocation(line: 288, column: 11, scope: !975, inlinedAt: !891)
!975 = distinct !DILexicalBlock(scope: !817, file: !3, line: 288, column: 11)
!976 = !DILocation(line: 288, column: 29, scope: !975, inlinedAt: !891)
!977 = !DILocation(line: 288, column: 11, scope: !817, inlinedAt: !891)
!978 = !DILocation(line: 295, column: 5, scope: !818, inlinedAt: !891)
!979 = !DILocation(line: 352, column: 7, scope: !806, inlinedAt: !891)
!980 = !DILocation(line: 290, column: 16, scope: !981, inlinedAt: !891)
!981 = distinct !DILexicalBlock(scope: !975, file: !3, line: 290, column: 16)
!982 = !DILocation(line: 290, column: 22, scope: !981, inlinedAt: !891)
!983 = !DILocation(line: 290, column: 32, scope: !981, inlinedAt: !891)
!984 = !DILocation(line: 292, column: 34, scope: !985, inlinedAt: !891)
!985 = distinct !DILexicalBlock(scope: !981, file: !3, line: 291, column: 9)
!986 = !DILocation(line: 292, column: 11, scope: !985, inlinedAt: !891)
!987 = !DILocation(line: 298, column: 25, scope: !857, inlinedAt: !891)
!988 = !DILocation(line: 307, column: 30, scope: !859, inlinedAt: !891)
!989 = !DILocation(line: 307, column: 36, scope: !859, inlinedAt: !891)
!990 = !DILocation(line: 0, scope: !859, inlinedAt: !891)
!991 = !DILocation(line: 308, column: 17, scope: !859, inlinedAt: !891)
!992 = !DILocation(line: 309, column: 18, scope: !859, inlinedAt: !891)
!993 = !DILocation(line: 310, column: 20, scope: !994, inlinedAt: !891)
!994 = distinct !DILexicalBlock(scope: !859, file: !3, line: 310, column: 15)
!995 = !DILocation(line: 310, column: 24, scope: !994, inlinedAt: !891)
!996 = !DILocation(line: 310, column: 27, scope: !994, inlinedAt: !891)
!997 = !DILocation(line: 310, column: 33, scope: !994, inlinedAt: !891)
!998 = !DILocation(line: 310, column: 15, scope: !859, inlinedAt: !891)
!999 = !DILocation(line: 313, column: 22, scope: !1000, inlinedAt: !891)
!1000 = distinct !DILexicalBlock(scope: !994, file: !3, line: 311, column: 13)
!1001 = !DILocation(line: 312, column: 15, scope: !1000, inlinedAt: !891)
!1002 = !DILocation(line: 0, scope: !856, inlinedAt: !891)
!1003 = !DILocation(line: 320, column: 19, scope: !864, inlinedAt: !891)
!1004 = !DILocation(line: 320, column: 11, scope: !856, inlinedAt: !891)
!1005 = !DILocation(line: 210, column: 3, scope: !1006, inlinedAt: !1011)
!1006 = distinct !DISubprogram(name: "component_start", scope: !3, file: !3, line: 208, type: !1007, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!45, !45}
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "f", arg: 1, scope: !1006, file: !3, line: 208, type: !45)
!1011 = distinct !DILocation(line: 338, column: 36, scope: !868, inlinedAt: !891)
!1012 = !DILocation(line: 0, scope: !863, inlinedAt: !891)
!1013 = !DILocation(line: 323, column: 46, scope: !863, inlinedAt: !891)
!1014 = !DILocation(line: 324, column: 24, scope: !863, inlinedAt: !891)
!1015 = !DILocation(line: 325, column: 31, scope: !863, inlinedAt: !891)
!1016 = !DILocation(line: 324, column: 11, scope: !863, inlinedAt: !891)
!1017 = !DILocation(line: 0, scope: !1006, inlinedAt: !1011)
!1018 = !DILocation(line: 210, column: 10, scope: !1006, inlinedAt: !1011)
!1019 = !DILocation(line: 211, column: 6, scope: !1006, inlinedAt: !1011)
!1020 = distinct !{!1020, !1021, !1022, !678}
!1021 = !DILocation(line: 338, column: 7, scope: !869, inlinedAt: !891)
!1022 = !DILocation(line: 349, column: 9, scope: !869, inlinedAt: !891)
!1023 = !DILocation(line: 0, scope: !1024, inlinedAt: !1031)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 221, column: 3)
!1025 = distinct !DISubprogram(name: "component_len", scope: !3, file: !3, line: 218, type: !1026, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!117, !55}
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(name: "f", arg: 1, scope: !1025, file: !3, line: 218, type: !55)
!1030 = !DILocalVariable(name: "len", scope: !1025, file: !3, line: 220, type: !117)
!1031 = distinct !DILocation(line: 340, column: 27, scope: !867, inlinedAt: !891)
!1032 = !DILocation(line: 0, scope: !1025, inlinedAt: !1031)
!1033 = !DILocation(line: 221, column: 17, scope: !1034, inlinedAt: !1031)
!1034 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 221, column: 3)
!1035 = !DILocation(line: 221, column: 31, scope: !1034, inlinedAt: !1031)
!1036 = !DILocation(line: 221, column: 45, scope: !1034, inlinedAt: !1031)
!1037 = !DILocation(line: 221, column: 3, scope: !1034, inlinedAt: !1031)
!1038 = distinct !{!1038, !1039, !1040, !678}
!1039 = !DILocation(line: 221, column: 3, scope: !1024, inlinedAt: !1031)
!1040 = !DILocation(line: 222, column: 5, scope: !1024, inlinedAt: !1031)
!1041 = !DILocation(line: 0, scope: !867, inlinedAt: !891)
!1042 = !DILocation(line: 342, column: 32, scope: !1043, inlinedAt: !891)
!1043 = distinct !DILexicalBlock(scope: !867, file: !3, line: 342, column: 15)
!1044 = !DILocation(line: 210, column: 3, scope: !1006, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 363, column: 36, scope: !878, inlinedAt: !891)
!1046 = !DILocation(line: 361, column: 14, scope: !873, inlinedAt: !891)
!1047 = !DILocation(line: 0, scope: !873, inlinedAt: !891)
!1048 = !DILocation(line: 0, scope: !879, inlinedAt: !891)
!1049 = !DILocation(line: 0, scope: !1006, inlinedAt: !1045)
!1050 = !DILocation(line: 210, column: 10, scope: !1006, inlinedAt: !1045)
!1051 = !DILocation(line: 211, column: 6, scope: !1006, inlinedAt: !1045)
!1052 = !DILocation(line: 367, column: 15, scope: !882, inlinedAt: !891)
!1053 = !DILocation(line: 367, column: 15, scope: !877, inlinedAt: !891)
!1054 = !DILocation(line: 372, column: 40, scope: !881, inlinedAt: !891)
!1055 = !DILocation(line: 372, column: 34, scope: !881, inlinedAt: !891)
!1056 = !DILocation(line: 0, scope: !881, inlinedAt: !891)
!1057 = !DILocation(line: 374, column: 15, scope: !881, inlinedAt: !891)
!1058 = !DILocation(line: 374, column: 21, scope: !881, inlinedAt: !891)
!1059 = !DILocation(line: 375, column: 22, scope: !881, inlinedAt: !891)
!1060 = !DILocation(line: 376, column: 21, scope: !881, inlinedAt: !891)
!1061 = !DILocation(line: 377, column: 22, scope: !881, inlinedAt: !891)
!1062 = !DILocation(line: 378, column: 21, scope: !1063, inlinedAt: !891)
!1063 = distinct !DILexicalBlock(scope: !881, file: !3, line: 378, column: 19)
!1064 = !DILocation(line: 378, column: 19, scope: !881, inlinedAt: !891)
!1065 = !DILocation(line: 381, column: 25, scope: !1063, inlinedAt: !891)
!1066 = !DILocation(line: 381, column: 17, scope: !1063, inlinedAt: !891)
!1067 = !DILocation(line: 391, column: 21, scope: !1068, inlinedAt: !891)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 382, column: 19)
!1069 = !DILocation(line: 394, column: 28, scope: !1068, inlinedAt: !891)
!1070 = !DILocation(line: 395, column: 31, scope: !1068, inlinedAt: !891)
!1071 = !DILocation(line: 395, column: 44, scope: !1068, inlinedAt: !891)
!1072 = !DILocation(line: 395, column: 21, scope: !1068, inlinedAt: !891)
!1073 = !DILocation(line: 396, column: 28, scope: !1068, inlinedAt: !891)
!1074 = !DILocation(line: 0, scope: !882, inlinedAt: !891)
!1075 = !DILocation(line: 0, scope: !1025, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 401, column: 20, scope: !877, inlinedAt: !891)
!1077 = !DILocation(line: 221, column: 8, scope: !1024, inlinedAt: !1076)
!1078 = !DILocation(line: 0, scope: !1024, inlinedAt: !1076)
!1079 = !DILocation(line: 221, column: 17, scope: !1034, inlinedAt: !1076)
!1080 = !DILocation(line: 221, column: 31, scope: !1034, inlinedAt: !1076)
!1081 = !DILocation(line: 221, column: 45, scope: !1034, inlinedAt: !1076)
!1082 = !DILocation(line: 221, column: 3, scope: !1034, inlinedAt: !1076)
!1083 = distinct !{!1083, !1084, !1085, !678}
!1084 = !DILocation(line: 221, column: 3, scope: !1024, inlinedAt: !1076)
!1085 = !DILocation(line: 222, column: 5, scope: !1024, inlinedAt: !1076)
!1086 = !DILocation(line: 0, scope: !877, inlinedAt: !891)
!1087 = !DILocation(line: 403, column: 24, scope: !887, inlinedAt: !891)
!1088 = !DILocation(line: 403, column: 15, scope: !877, inlinedAt: !891)
!1089 = !DILocation(line: 0, scope: !886, inlinedAt: !891)
!1090 = !DILocation(line: 408, column: 26, scope: !886, inlinedAt: !891)
!1091 = !DILocation(line: 410, column: 22, scope: !886, inlinedAt: !891)
!1092 = !DILocation(line: 412, column: 35, scope: !886, inlinedAt: !891)
!1093 = !DILocation(line: 409, column: 15, scope: !886, inlinedAt: !891)
!1094 = !DILocation(line: 413, column: 26, scope: !886, inlinedAt: !891)
!1095 = !DILocation(line: 152, column: 8, scope: !797)
!1096 = !DILocation(line: 151, column: 25, scope: !797)
!1097 = distinct !{!1097, !799, !1098, !678}
!1098 = !DILocation(line: 153, column: 79, scope: !798)
!1099 = !DILocation(line: 155, column: 10, scope: !762)
!1100 = !DILocation(line: 156, column: 1, scope: !762)
!1101 = !DISubprogram(name: "bindtextdomain", scope: !699, file: !699, line: 86, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!45, !55, !55}
!1104 = !DISubprogram(name: "textdomain", scope: !699, file: !699, line: 82, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!45, !55}
!1107 = !DISubprogram(name: "atexit", scope: !1108, file: !1108, line: 595, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1108 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!58, !1111}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null}
!1114 = !DISubprogram(name: "getopt_long", scope: !52, file: !52, line: 66, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!58, !58, !1117, !55, !1119, !60}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1120 = !DISubprogram(name: "error", scope: !1121, file: !1121, line: 52, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1121 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !58, !58, !55, null}
!1124 = !DISubprogram(name: "lstat", scope: !1125, file: !1125, line: 259, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1125 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!58, !55, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!1129 = !DISubprogram(name: "pathconf", scope: !1130, file: !1130, line: 623, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1130 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!731, !55, !58}
!1133 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !73, file: !73, line: 51, type: !648, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1134)
!1134 = !{!1135}
!1135 = !DILocalVariable(name: "file", arg: 1, scope: !1133, file: !73, line: 51, type: !55)
!1136 = !DILocation(line: 0, scope: !1133)
!1137 = !DILocation(line: 53, column: 13, scope: !1133)
!1138 = !DILocation(line: 54, column: 1, scope: !1133)
!1139 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !73, file: !73, line: 88, type: !1140, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !77}
!1142 = !{!1143}
!1143 = !DILocalVariable(name: "ignore", arg: 1, scope: !1139, file: !73, line: 88, type: !77)
!1144 = !DILocation(line: 0, scope: !1139)
!1145 = !DILocation(line: 90, column: 16, scope: !1139)
!1146 = !{!1147, !1147, i64 0}
!1147 = !{!"_Bool", !638, i64 0}
!1148 = !DILocation(line: 91, column: 1, scope: !1139)
!1149 = distinct !DISubprogram(name: "close_stdout", scope: !73, file: !73, line: 117, type: !1112, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1150)
!1150 = !{!1151}
!1151 = !DILocalVariable(name: "write_error", scope: !1152, file: !73, line: 122, type: !55)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !73, line: 121, column: 5)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !73, line: 119, column: 7)
!1154 = !DILocation(line: 119, column: 21, scope: !1153)
!1155 = !DILocation(line: 119, column: 7, scope: !1153)
!1156 = !DILocation(line: 119, column: 29, scope: !1153)
!1157 = !DILocation(line: 120, column: 7, scope: !1153)
!1158 = !DILocation(line: 120, column: 12, scope: !1153)
!1159 = !{i8 0, i8 2}
!1160 = !DILocation(line: 120, column: 25, scope: !1153)
!1161 = !DILocation(line: 120, column: 28, scope: !1153)
!1162 = !DILocation(line: 120, column: 34, scope: !1153)
!1163 = !DILocation(line: 119, column: 7, scope: !1149)
!1164 = !DILocation(line: 122, column: 33, scope: !1152)
!1165 = !DILocation(line: 0, scope: !1152)
!1166 = !DILocation(line: 123, column: 11, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1152, file: !73, line: 123, column: 11)
!1168 = !DILocation(line: 0, scope: !1167)
!1169 = !DILocation(line: 123, column: 11, scope: !1152)
!1170 = !DILocation(line: 124, column: 36, scope: !1167)
!1171 = !DILocation(line: 124, column: 9, scope: !1167)
!1172 = !DILocation(line: 127, column: 9, scope: !1167)
!1173 = !DILocation(line: 129, column: 14, scope: !1152)
!1174 = !DILocation(line: 129, column: 7, scope: !1152)
!1175 = !DILocation(line: 134, column: 42, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1149, file: !73, line: 134, column: 7)
!1177 = !DILocation(line: 134, column: 28, scope: !1176)
!1178 = !DILocation(line: 134, column: 50, scope: !1176)
!1179 = !DILocation(line: 134, column: 7, scope: !1149)
!1180 = !DILocation(line: 135, column: 12, scope: !1176)
!1181 = !DILocation(line: 135, column: 5, scope: !1176)
!1182 = !DILocation(line: 136, column: 1, scope: !1149)
!1183 = distinct !DISubprogram(name: "set_program_name", scope: !87, file: !87, line: 39, type: !648, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1184)
!1184 = !{!1185, !1186, !1187}
!1185 = !DILocalVariable(name: "argv0", arg: 1, scope: !1183, file: !87, line: 39, type: !55)
!1186 = !DILocalVariable(name: "slash", scope: !1183, file: !87, line: 46, type: !55)
!1187 = !DILocalVariable(name: "base", scope: !1183, file: !87, line: 47, type: !55)
!1188 = !DILocation(line: 0, scope: !1183)
!1189 = !DILocation(line: 51, column: 13, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1183, file: !87, line: 51, column: 7)
!1191 = !DILocation(line: 51, column: 7, scope: !1183)
!1192 = !DILocation(line: 55, column: 14, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !87, line: 52, column: 5)
!1194 = !DILocation(line: 54, column: 7, scope: !1193)
!1195 = !DILocation(line: 56, column: 7, scope: !1193)
!1196 = !DILocation(line: 59, column: 11, scope: !1183)
!1197 = !DILocation(line: 60, column: 17, scope: !1183)
!1198 = !DILocation(line: 60, column: 11, scope: !1183)
!1199 = !DILocation(line: 61, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1183, file: !87, line: 61, column: 7)
!1201 = !DILocation(line: 61, column: 20, scope: !1200)
!1202 = !DILocation(line: 61, column: 25, scope: !1200)
!1203 = !DILocation(line: 61, column: 42, scope: !1200)
!1204 = !DILocation(line: 61, column: 28, scope: !1200)
!1205 = !DILocation(line: 61, column: 61, scope: !1200)
!1206 = !DILocation(line: 61, column: 7, scope: !1183)
!1207 = !DILocation(line: 64, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !87, line: 64, column: 11)
!1209 = distinct !DILexicalBlock(scope: !1200, file: !87, line: 62, column: 5)
!1210 = !DILocation(line: 64, column: 36, scope: !1208)
!1211 = !DILocation(line: 64, column: 11, scope: !1209)
!1212 = !DILocation(line: 66, column: 24, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !87, line: 65, column: 9)
!1214 = !DILocation(line: 70, column: 41, scope: !1213)
!1215 = !DILocation(line: 72, column: 9, scope: !1213)
!1216 = !DILocation(line: 84, column: 16, scope: !1183)
!1217 = !DILocation(line: 90, column: 27, scope: !1183)
!1218 = !DILocation(line: 92, column: 1, scope: !1183)
!1219 = distinct !DISubprogram(name: "clone_quoting_options", scope: !93, file: !93, line: 122, type: !1220, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1223)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1222, !1222}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1223 = !{!1224, !1225, !1226}
!1224 = !DILocalVariable(name: "o", arg: 1, scope: !1219, file: !93, line: 122, type: !1222)
!1225 = !DILocalVariable(name: "e", scope: !1219, file: !93, line: 124, type: !58)
!1226 = !DILocalVariable(name: "p", scope: !1219, file: !93, line: 125, type: !1222)
!1227 = !DILocation(line: 0, scope: !1219)
!1228 = !DILocation(line: 124, column: 11, scope: !1219)
!1229 = !DILocation(line: 125, column: 40, scope: !1219)
!1230 = !DILocation(line: 125, column: 31, scope: !1219)
!1231 = !DILocation(line: 127, column: 9, scope: !1219)
!1232 = !DILocation(line: 128, column: 3, scope: !1219)
!1233 = distinct !DISubprogram(name: "get_quoting_style", scope: !93, file: !93, line: 133, type: !1234, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1238)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!5, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1238 = !{!1239}
!1239 = !DILocalVariable(name: "o", arg: 1, scope: !1233, file: !93, line: 133, type: !1236)
!1240 = !DILocation(line: 0, scope: !1233)
!1241 = !DILocation(line: 135, column: 11, scope: !1233)
!1242 = !DILocation(line: 135, column: 46, scope: !1233)
!1243 = !{!1244, !638, i64 0}
!1244 = !{!"quoting_options", !638, i64 0, !793, i64 4, !638, i64 8, !637, i64 40, !637, i64 48}
!1245 = !DILocation(line: 135, column: 3, scope: !1233)
!1246 = distinct !DISubprogram(name: "set_quoting_style", scope: !93, file: !93, line: 141, type: !1247, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1222, !5}
!1249 = !{!1250, !1251}
!1250 = !DILocalVariable(name: "o", arg: 1, scope: !1246, file: !93, line: 141, type: !1222)
!1251 = !DILocalVariable(name: "s", arg: 2, scope: !1246, file: !93, line: 141, type: !5)
!1252 = !DILocation(line: 0, scope: !1246)
!1253 = !DILocation(line: 143, column: 4, scope: !1246)
!1254 = !DILocation(line: 143, column: 39, scope: !1246)
!1255 = !DILocation(line: 143, column: 45, scope: !1246)
!1256 = !DILocation(line: 144, column: 1, scope: !1246)
!1257 = distinct !DISubprogram(name: "set_char_quoting", scope: !93, file: !93, line: 152, type: !1258, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1260)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!58, !1222, !46, !58}
!1260 = !{!1261, !1262, !1263, !1264, !1266, !1268, !1269}
!1261 = !DILocalVariable(name: "o", arg: 1, scope: !1257, file: !93, line: 152, type: !1222)
!1262 = !DILocalVariable(name: "c", arg: 2, scope: !1257, file: !93, line: 152, type: !46)
!1263 = !DILocalVariable(name: "i", arg: 3, scope: !1257, file: !93, line: 152, type: !58)
!1264 = !DILocalVariable(name: "uc", scope: !1257, file: !93, line: 154, type: !1265)
!1265 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1266 = !DILocalVariable(name: "p", scope: !1257, file: !93, line: 155, type: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1268 = !DILocalVariable(name: "shift", scope: !1257, file: !93, line: 157, type: !58)
!1269 = !DILocalVariable(name: "r", scope: !1257, file: !93, line: 158, type: !58)
!1270 = !DILocation(line: 0, scope: !1257)
!1271 = !DILocation(line: 156, column: 6, scope: !1257)
!1272 = !DILocation(line: 156, column: 62, scope: !1257)
!1273 = !DILocation(line: 156, column: 57, scope: !1257)
!1274 = !DILocation(line: 157, column: 15, scope: !1257)
!1275 = !DILocation(line: 158, column: 12, scope: !1257)
!1276 = !DILocation(line: 158, column: 15, scope: !1257)
!1277 = !DILocation(line: 158, column: 25, scope: !1257)
!1278 = !DILocation(line: 159, column: 13, scope: !1257)
!1279 = !DILocation(line: 159, column: 18, scope: !1257)
!1280 = !DILocation(line: 159, column: 23, scope: !1257)
!1281 = !DILocation(line: 159, column: 6, scope: !1257)
!1282 = !DILocation(line: 160, column: 3, scope: !1257)
!1283 = distinct !DISubprogram(name: "set_quoting_flags", scope: !93, file: !93, line: 168, type: !1284, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!58, !1222, !58}
!1286 = !{!1287, !1288, !1289}
!1287 = !DILocalVariable(name: "o", arg: 1, scope: !1283, file: !93, line: 168, type: !1222)
!1288 = !DILocalVariable(name: "i", arg: 2, scope: !1283, file: !93, line: 168, type: !58)
!1289 = !DILocalVariable(name: "r", scope: !1283, file: !93, line: 170, type: !58)
!1290 = !DILocation(line: 0, scope: !1283)
!1291 = !DILocation(line: 171, column: 8, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1283, file: !93, line: 171, column: 7)
!1293 = !DILocation(line: 171, column: 7, scope: !1283)
!1294 = !DILocation(line: 173, column: 10, scope: !1283)
!1295 = !{!1244, !793, i64 4}
!1296 = !DILocation(line: 174, column: 12, scope: !1283)
!1297 = !DILocation(line: 175, column: 3, scope: !1283)
!1298 = distinct !DISubprogram(name: "set_custom_quoting", scope: !93, file: !93, line: 179, type: !1299, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !1222, !55, !55}
!1301 = !{!1302, !1303, !1304}
!1302 = !DILocalVariable(name: "o", arg: 1, scope: !1298, file: !93, line: 179, type: !1222)
!1303 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1298, file: !93, line: 180, type: !55)
!1304 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1298, file: !93, line: 180, type: !55)
!1305 = !DILocation(line: 0, scope: !1298)
!1306 = !DILocation(line: 182, column: 8, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1298, file: !93, line: 182, column: 7)
!1308 = !DILocation(line: 182, column: 7, scope: !1298)
!1309 = !DILocation(line: 184, column: 6, scope: !1298)
!1310 = !DILocation(line: 184, column: 12, scope: !1298)
!1311 = !DILocation(line: 185, column: 8, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1298, file: !93, line: 185, column: 7)
!1313 = !DILocation(line: 185, column: 19, scope: !1312)
!1314 = !DILocation(line: 186, column: 5, scope: !1312)
!1315 = !DILocation(line: 187, column: 6, scope: !1298)
!1316 = !DILocation(line: 187, column: 17, scope: !1298)
!1317 = !{!1244, !637, i64 40}
!1318 = !DILocation(line: 188, column: 6, scope: !1298)
!1319 = !DILocation(line: 188, column: 18, scope: !1298)
!1320 = !{!1244, !637, i64 48}
!1321 = !DILocation(line: 189, column: 1, scope: !1298)
!1322 = distinct !DISubprogram(name: "quotearg_buffer", scope: !93, file: !93, line: 784, type: !1323, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1325)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!117, !45, !117, !55, !117, !1236}
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!1326 = !DILocalVariable(name: "buffer", arg: 1, scope: !1322, file: !93, line: 784, type: !45)
!1327 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1322, file: !93, line: 784, type: !117)
!1328 = !DILocalVariable(name: "arg", arg: 3, scope: !1322, file: !93, line: 785, type: !55)
!1329 = !DILocalVariable(name: "argsize", arg: 4, scope: !1322, file: !93, line: 785, type: !117)
!1330 = !DILocalVariable(name: "o", arg: 5, scope: !1322, file: !93, line: 786, type: !1236)
!1331 = !DILocalVariable(name: "p", scope: !1322, file: !93, line: 788, type: !1236)
!1332 = !DILocalVariable(name: "e", scope: !1322, file: !93, line: 789, type: !58)
!1333 = !DILocalVariable(name: "r", scope: !1322, file: !93, line: 790, type: !117)
!1334 = !DILocation(line: 0, scope: !1322)
!1335 = !DILocation(line: 788, column: 37, scope: !1322)
!1336 = !DILocation(line: 789, column: 11, scope: !1322)
!1337 = !DILocation(line: 791, column: 43, scope: !1322)
!1338 = !DILocation(line: 791, column: 53, scope: !1322)
!1339 = !DILocation(line: 791, column: 60, scope: !1322)
!1340 = !DILocation(line: 792, column: 43, scope: !1322)
!1341 = !DILocation(line: 792, column: 58, scope: !1322)
!1342 = !DILocation(line: 790, column: 14, scope: !1322)
!1343 = !DILocation(line: 793, column: 9, scope: !1322)
!1344 = !DILocation(line: 794, column: 3, scope: !1322)
!1345 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !93, file: !93, line: 256, type: !1346, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1350)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!117, !45, !117, !55, !117, !5, !58, !1348, !55, !55}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1375, !1376, !1377, !1378, !1379, !1382, !1383, !1396, !1399, !1400, !1407, !1410, !1411, !1412, !1413, !1414, !1415}
!1351 = !DILocalVariable(name: "buffer", arg: 1, scope: !1345, file: !93, line: 256, type: !45)
!1352 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1345, file: !93, line: 256, type: !117)
!1353 = !DILocalVariable(name: "arg", arg: 3, scope: !1345, file: !93, line: 257, type: !55)
!1354 = !DILocalVariable(name: "argsize", arg: 4, scope: !1345, file: !93, line: 257, type: !117)
!1355 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1345, file: !93, line: 258, type: !5)
!1356 = !DILocalVariable(name: "flags", arg: 6, scope: !1345, file: !93, line: 258, type: !58)
!1357 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1345, file: !93, line: 259, type: !1348)
!1358 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1345, file: !93, line: 260, type: !55)
!1359 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1345, file: !93, line: 261, type: !55)
!1360 = !DILocalVariable(name: "i", scope: !1345, file: !93, line: 263, type: !117)
!1361 = !DILocalVariable(name: "len", scope: !1345, file: !93, line: 264, type: !117)
!1362 = !DILocalVariable(name: "orig_buffersize", scope: !1345, file: !93, line: 265, type: !117)
!1363 = !DILocalVariable(name: "quote_string", scope: !1345, file: !93, line: 266, type: !55)
!1364 = !DILocalVariable(name: "quote_string_len", scope: !1345, file: !93, line: 267, type: !117)
!1365 = !DILocalVariable(name: "backslash_escapes", scope: !1345, file: !93, line: 268, type: !77)
!1366 = !DILocalVariable(name: "unibyte_locale", scope: !1345, file: !93, line: 269, type: !77)
!1367 = !DILocalVariable(name: "elide_outer_quotes", scope: !1345, file: !93, line: 270, type: !77)
!1368 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1345, file: !93, line: 271, type: !77)
!1369 = !DILocalVariable(name: "encountered_single_quote", scope: !1345, file: !93, line: 272, type: !77)
!1370 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1345, file: !93, line: 273, type: !77)
!1371 = !DILocalVariable(name: "c", scope: !1372, file: !93, line: 402, type: !1265)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !93, line: 401, column: 5)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !93, line: 400, column: 3)
!1374 = distinct !DILexicalBlock(scope: !1345, file: !93, line: 400, column: 3)
!1375 = !DILocalVariable(name: "esc", scope: !1372, file: !93, line: 403, type: !1265)
!1376 = !DILocalVariable(name: "is_right_quote", scope: !1372, file: !93, line: 404, type: !77)
!1377 = !DILocalVariable(name: "escaping", scope: !1372, file: !93, line: 405, type: !77)
!1378 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1372, file: !93, line: 406, type: !77)
!1379 = !DILocalVariable(name: "m", scope: !1380, file: !93, line: 610, type: !117)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 608, column: 11)
!1381 = distinct !DILexicalBlock(scope: !1372, file: !93, line: 426, column: 9)
!1382 = !DILocalVariable(name: "printable", scope: !1380, file: !93, line: 612, type: !77)
!1383 = !DILocalVariable(name: "mbstate", scope: !1384, file: !93, line: 621, type: !1386)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !93, line: 620, column: 15)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !93, line: 614, column: 17)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !176, line: 6, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !178, line: 21, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 13, size: 64, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1388, file: !178, line: 15, baseType: !58, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1388, file: !178, line: 20, baseType: !1392, size: 32, offset: 32)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !178, line: 16, size: 32, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1392, file: !178, line: 18, baseType: !7, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1392, file: !178, line: 19, baseType: !187, size: 32)
!1396 = !DILocalVariable(name: "w", scope: !1397, file: !93, line: 631, type: !1398)
!1397 = distinct !DILexicalBlock(scope: !1384, file: !93, line: 630, column: 19)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !118, line: 74, baseType: !58)
!1399 = !DILocalVariable(name: "bytes", scope: !1397, file: !93, line: 632, type: !117)
!1400 = !DILocalVariable(name: "j", scope: !1401, file: !93, line: 657, type: !117)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !93, line: 656, column: 27)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !93, line: 654, column: 29)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !93, line: 649, column: 23)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !93, line: 641, column: 30)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !93, line: 636, column: 30)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !93, line: 634, column: 25)
!1407 = !DILocalVariable(name: "ilim", scope: !1408, file: !93, line: 684, type: !117)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !93, line: 681, column: 15)
!1409 = distinct !DILexicalBlock(scope: !1380, file: !93, line: 680, column: 17)
!1410 = !DILabel(scope: !1345, name: "process_input", file: !93, line: 314)
!1411 = !DILabel(scope: !1381, name: "c_and_shell_escape", file: !93, line: 512)
!1412 = !DILabel(scope: !1381, name: "c_escape", file: !93, line: 517)
!1413 = !DILabel(scope: !1372, name: "store_escape", file: !93, line: 719)
!1414 = !DILabel(scope: !1372, name: "store_c", file: !93, line: 722)
!1415 = !DILabel(scope: !1345, name: "force_outer_quoting_style", file: !93, line: 763)
!1416 = !DILocation(line: 0, scope: !1345)
!1417 = !DILocation(line: 269, column: 25, scope: !1345)
!1418 = !DILocation(line: 269, column: 36, scope: !1345)
!1419 = !DILocation(line: 270, column: 8, scope: !1345)
!1420 = !DILocation(line: 273, column: 3, scope: !1345)
!1421 = !DILocation(line: 265, column: 10, scope: !1345)
!1422 = !DILocation(line: 266, column: 15, scope: !1345)
!1423 = !DILocation(line: 267, column: 10, scope: !1345)
!1424 = !DILocation(line: 268, column: 8, scope: !1345)
!1425 = !DILocation(line: 271, column: 8, scope: !1345)
!1426 = !DILocation(line: 272, column: 8, scope: !1345)
!1427 = !DILocation(line: 273, column: 8, scope: !1345)
!1428 = !DILocation(line: 314, column: 2, scope: !1345)
!1429 = !DILocation(line: 316, column: 3, scope: !1345)
!1430 = !DILocation(line: 323, column: 11, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1345, file: !93, line: 317, column: 5)
!1432 = !DILocation(line: 323, column: 12, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1431, file: !93, line: 323, column: 11)
!1434 = !DILocation(line: 324, column: 9, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !93, line: 324, column: 9)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !93, line: 324, column: 9)
!1437 = !DILocation(line: 324, column: 9, scope: !1436)
!1438 = !DILocation(line: 362, column: 26, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !93, line: 340, column: 11)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !93, line: 339, column: 13)
!1441 = distinct !DILexicalBlock(scope: !1431, file: !93, line: 338, column: 7)
!1442 = !DILocation(line: 363, column: 27, scope: !1439)
!1443 = !DILocation(line: 364, column: 11, scope: !1439)
!1444 = !DILocation(line: 365, column: 14, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !93, line: 365, column: 13)
!1446 = !DILocation(line: 365, column: 13, scope: !1441)
!1447 = !DILocation(line: 366, column: 43, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !93, line: 366, column: 11)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !93, line: 366, column: 11)
!1450 = !DILocation(line: 366, column: 11, scope: !1449)
!1451 = !DILocation(line: 367, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !93, line: 367, column: 13)
!1453 = distinct !DILexicalBlock(scope: !1448, file: !93, line: 367, column: 13)
!1454 = !DILocation(line: 367, column: 13, scope: !1453)
!1455 = !DILocation(line: 366, column: 70, scope: !1448)
!1456 = distinct !{!1456, !1450, !1457, !678}
!1457 = !DILocation(line: 367, column: 13, scope: !1449)
!1458 = !DILocation(line: 264, column: 10, scope: !1345)
!1459 = !DILocation(line: 370, column: 28, scope: !1441)
!1460 = !DILocation(line: 372, column: 7, scope: !1431)
!1461 = !DILocation(line: 376, column: 7, scope: !1431)
!1462 = !DILocation(line: 379, column: 7, scope: !1431)
!1463 = !DILocation(line: 381, column: 12, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1431, file: !93, line: 381, column: 11)
!1465 = !DILocation(line: 381, column: 11, scope: !1431)
!1466 = !DILocation(line: 386, column: 12, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1431, file: !93, line: 386, column: 11)
!1468 = !DILocation(line: 386, column: 11, scope: !1431)
!1469 = !DILocation(line: 387, column: 9, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !93, line: 387, column: 9)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !93, line: 387, column: 9)
!1472 = !DILocation(line: 387, column: 9, scope: !1471)
!1473 = !DILocation(line: 394, column: 7, scope: !1431)
!1474 = !DILocation(line: 397, column: 7, scope: !1431)
!1475 = !DILocation(line: 400, column: 8, scope: !1374)
!1476 = !DILocation(line: 0, scope: !1374)
!1477 = !DILocation(line: 400, column: 27, scope: !1373)
!1478 = !DILocation(line: 400, column: 19, scope: !1373)
!1479 = !DILocation(line: 400, column: 41, scope: !1373)
!1480 = !DILocation(line: 400, column: 48, scope: !1373)
!1481 = !DILocation(line: 400, column: 3, scope: !1374)
!1482 = !DILocation(line: 400, column: 60, scope: !1373)
!1483 = !DILocation(line: 0, scope: !1372)
!1484 = !DILocation(line: 409, column: 11, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1372, file: !93, line: 408, column: 11)
!1486 = !DILocation(line: 411, column: 17, scope: !1485)
!1487 = !DILocation(line: 412, column: 39, scope: !1485)
!1488 = !DILocation(line: 416, column: 32, scope: !1485)
!1489 = !DILocation(line: 412, column: 19, scope: !1485)
!1490 = !DILocation(line: 412, column: 15, scope: !1485)
!1491 = !DILocation(line: 417, column: 11, scope: !1485)
!1492 = !DILocation(line: 417, column: 26, scope: !1485)
!1493 = !DILocation(line: 417, column: 14, scope: !1485)
!1494 = !DILocation(line: 417, column: 63, scope: !1485)
!1495 = !DILocation(line: 408, column: 11, scope: !1372)
!1496 = !DILocation(line: 424, column: 11, scope: !1372)
!1497 = !DILocation(line: 425, column: 7, scope: !1372)
!1498 = !DILocation(line: 428, column: 15, scope: !1381)
!1499 = !DILocation(line: 430, column: 15, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !93, line: 430, column: 15)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !93, line: 429, column: 13)
!1502 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 428, column: 15)
!1503 = !DILocation(line: 430, column: 15, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !93, line: 430, column: 15)
!1505 = !DILocation(line: 430, column: 15, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !93, line: 430, column: 15)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !93, line: 430, column: 15)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !93, line: 430, column: 15)
!1509 = !DILocation(line: 430, column: 15, scope: !1507)
!1510 = !DILocation(line: 430, column: 15, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !93, line: 430, column: 15)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !93, line: 430, column: 15)
!1513 = !DILocation(line: 430, column: 15, scope: !1512)
!1514 = !DILocation(line: 430, column: 15, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !93, line: 430, column: 15)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !93, line: 430, column: 15)
!1517 = !DILocation(line: 430, column: 15, scope: !1516)
!1518 = !DILocation(line: 430, column: 15, scope: !1508)
!1519 = !DILocation(line: 430, column: 15, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !93, line: 430, column: 15)
!1521 = distinct !DILexicalBlock(scope: !1500, file: !93, line: 430, column: 15)
!1522 = !DILocation(line: 430, column: 15, scope: !1521)
!1523 = !DILocation(line: 438, column: 19, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1501, file: !93, line: 437, column: 19)
!1525 = !DILocation(line: 438, column: 48, scope: !1524)
!1526 = !DILocation(line: 438, column: 59, scope: !1524)
!1527 = !DILocation(line: 440, column: 19, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !93, line: 440, column: 19)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !93, line: 440, column: 19)
!1530 = distinct !DILexicalBlock(scope: !1524, file: !93, line: 439, column: 17)
!1531 = !DILocation(line: 440, column: 19, scope: !1529)
!1532 = !DILocation(line: 441, column: 19, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !93, line: 441, column: 19)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !93, line: 441, column: 19)
!1535 = !DILocation(line: 441, column: 19, scope: !1534)
!1536 = !DILocation(line: 442, column: 17, scope: !1530)
!1537 = !DILocation(line: 449, column: 20, scope: !1502)
!1538 = !DILocation(line: 454, column: 11, scope: !1381)
!1539 = !DILocation(line: 457, column: 19, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 455, column: 13)
!1541 = !DILocation(line: 463, column: 19, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1540, file: !93, line: 462, column: 19)
!1543 = !DILocation(line: 463, column: 47, scope: !1542)
!1544 = !DILocation(line: 463, column: 41, scope: !1542)
!1545 = !DILocation(line: 463, column: 52, scope: !1542)
!1546 = !DILocation(line: 462, column: 19, scope: !1540)
!1547 = !DILocation(line: 464, column: 25, scope: !1542)
!1548 = !DILocation(line: 464, column: 17, scope: !1542)
!1549 = !DILocation(line: 471, column: 25, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1542, file: !93, line: 465, column: 19)
!1551 = !DILocation(line: 475, column: 21, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !93, line: 475, column: 21)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !93, line: 475, column: 21)
!1554 = !DILocation(line: 475, column: 21, scope: !1553)
!1555 = !DILocation(line: 476, column: 21, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !93, line: 476, column: 21)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !93, line: 476, column: 21)
!1558 = !DILocation(line: 476, column: 21, scope: !1557)
!1559 = !DILocation(line: 477, column: 21, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !93, line: 477, column: 21)
!1561 = distinct !DILexicalBlock(scope: !1550, file: !93, line: 477, column: 21)
!1562 = !DILocation(line: 477, column: 21, scope: !1561)
!1563 = !DILocation(line: 478, column: 21, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !93, line: 478, column: 21)
!1565 = distinct !DILexicalBlock(scope: !1550, file: !93, line: 478, column: 21)
!1566 = !DILocation(line: 478, column: 21, scope: !1565)
!1567 = !DILocation(line: 479, column: 21, scope: !1550)
!1568 = !DILocation(line: 492, column: 31, scope: !1381)
!1569 = !DILocation(line: 493, column: 31, scope: !1381)
!1570 = !DILocation(line: 495, column: 31, scope: !1381)
!1571 = !DILocation(line: 496, column: 31, scope: !1381)
!1572 = !DILocation(line: 497, column: 31, scope: !1381)
!1573 = !DILocation(line: 500, column: 15, scope: !1381)
!1574 = !DILocation(line: 502, column: 19, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !93, line: 501, column: 13)
!1576 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 500, column: 15)
!1577 = !DILocation(line: 509, column: 33, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 509, column: 15)
!1579 = !DILocation(line: 0, scope: !1381)
!1580 = !DILocation(line: 512, column: 9, scope: !1381)
!1581 = !DILocation(line: 514, column: 15, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 513, column: 15)
!1583 = !DILocation(line: 517, column: 9, scope: !1381)
!1584 = !DILocation(line: 518, column: 15, scope: !1381)
!1585 = !DILocation(line: 526, column: 15, scope: !1381)
!1586 = !DILocation(line: 526, column: 40, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 526, column: 15)
!1588 = !DILocation(line: 526, column: 47, scope: !1587)
!1589 = !DILocation(line: 526, column: 18, scope: !1587)
!1590 = !DILocation(line: 530, column: 17, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 530, column: 15)
!1592 = !DILocation(line: 530, column: 15, scope: !1381)
!1593 = !DILocation(line: 535, column: 11, scope: !1381)
!1594 = !DILocation(line: 549, column: 15, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 548, column: 15)
!1596 = !DILocation(line: 556, column: 15, scope: !1381)
!1597 = !DILocation(line: 558, column: 19, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !93, line: 557, column: 13)
!1599 = distinct !DILexicalBlock(scope: !1381, file: !93, line: 556, column: 15)
!1600 = !DILocation(line: 561, column: 19, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !93, line: 561, column: 19)
!1602 = !DILocation(line: 561, column: 30, scope: !1601)
!1603 = !DILocation(line: 570, column: 15, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !93, line: 570, column: 15)
!1605 = distinct !DILexicalBlock(scope: !1598, file: !93, line: 570, column: 15)
!1606 = !DILocation(line: 570, column: 15, scope: !1605)
!1607 = !DILocation(line: 571, column: 15, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !93, line: 571, column: 15)
!1609 = distinct !DILexicalBlock(scope: !1598, file: !93, line: 571, column: 15)
!1610 = !DILocation(line: 571, column: 15, scope: !1609)
!1611 = !DILocation(line: 572, column: 15, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !93, line: 572, column: 15)
!1613 = distinct !DILexicalBlock(scope: !1598, file: !93, line: 572, column: 15)
!1614 = !DILocation(line: 572, column: 15, scope: !1613)
!1615 = !DILocation(line: 574, column: 13, scope: !1598)
!1616 = !DILocation(line: 614, column: 17, scope: !1380)
!1617 = !DILocation(line: 0, scope: !1380)
!1618 = !DILocation(line: 617, column: 29, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1385, file: !93, line: 615, column: 15)
!1620 = !{!1621, !1621, i64 0}
!1621 = !{!"short", !638, i64 0}
!1622 = !DILocation(line: 617, column: 27, scope: !1619)
!1623 = !DILocation(line: 678, column: 40, scope: !1380)
!1624 = !DILocation(line: 680, column: 23, scope: !1409)
!1625 = !DILocation(line: 621, column: 17, scope: !1384)
!1626 = !DILocation(line: 621, column: 27, scope: !1384)
!1627 = !DILocalVariable(name: "__dest", arg: 1, scope: !1628, file: !1629, line: 57, type: !47)
!1628 = distinct !DISubprogram(name: "memset", scope: !1629, file: !1629, line: 57, type: !1630, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1632)
!1629 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!47, !47, !58, !117}
!1632 = !{!1627, !1633, !1634}
!1633 = !DILocalVariable(name: "__ch", arg: 2, scope: !1628, file: !1629, line: 57, type: !58)
!1634 = !DILocalVariable(name: "__len", arg: 3, scope: !1628, file: !1629, line: 57, type: !117)
!1635 = !DILocation(line: 0, scope: !1628, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 622, column: 17, scope: !1384)
!1637 = !DILocation(line: 59, column: 10, scope: !1628, inlinedAt: !1636)
!1638 = !DILocation(line: 626, column: 29, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1384, file: !93, line: 626, column: 21)
!1640 = !DILocation(line: 626, column: 21, scope: !1384)
!1641 = !DILocation(line: 627, column: 29, scope: !1639)
!1642 = !DILocation(line: 627, column: 19, scope: !1639)
!1643 = !DILocation(line: 629, column: 17, scope: !1384)
!1644 = !DILocation(line: 624, column: 19, scope: !1384)
!1645 = !DILocation(line: 625, column: 27, scope: !1384)
!1646 = !DILocation(line: 631, column: 21, scope: !1397)
!1647 = !DILocation(line: 632, column: 56, scope: !1397)
!1648 = !DILocation(line: 632, column: 50, scope: !1397)
!1649 = !DILocation(line: 633, column: 53, scope: !1397)
!1650 = !DILocation(line: 0, scope: !1397)
!1651 = !DILocation(line: 632, column: 36, scope: !1397)
!1652 = !DILocation(line: 634, column: 25, scope: !1397)
!1653 = !DILocation(line: 644, column: 38, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1404, file: !93, line: 642, column: 23)
!1655 = !DILocation(line: 644, column: 48, scope: !1654)
!1656 = !DILocation(line: 644, column: 25, scope: !1654)
!1657 = !DILocation(line: 644, column: 51, scope: !1654)
!1658 = !DILocation(line: 645, column: 28, scope: !1654)
!1659 = !DILocation(line: 644, column: 34, scope: !1654)
!1660 = distinct !{!1660, !1656, !1658, !678}
!1661 = !DILocation(line: 655, column: 29, scope: !1402)
!1662 = !DILocation(line: 0, scope: !1401)
!1663 = !DILocation(line: 659, column: 49, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !93, line: 658, column: 29)
!1665 = distinct !DILexicalBlock(scope: !1401, file: !93, line: 658, column: 29)
!1666 = !DILocation(line: 659, column: 39, scope: !1664)
!1667 = !DILocation(line: 659, column: 31, scope: !1664)
!1668 = !DILocation(line: 658, column: 53, scope: !1664)
!1669 = !DILocation(line: 658, column: 43, scope: !1664)
!1670 = !DILocation(line: 658, column: 29, scope: !1665)
!1671 = distinct !{!1671, !1670, !1672, !678}
!1672 = !DILocation(line: 667, column: 33, scope: !1665)
!1673 = !DILocation(line: 674, column: 19, scope: !1384)
!1674 = !DILocation(line: 670, column: 41, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1403, file: !93, line: 670, column: 29)
!1676 = !DILocation(line: 670, column: 31, scope: !1675)
!1677 = !DILocation(line: 670, column: 29, scope: !1403)
!1678 = !DILocation(line: 672, column: 27, scope: !1403)
!1679 = !DILocation(line: 675, column: 26, scope: !1384)
!1680 = !DILocation(line: 675, column: 24, scope: !1384)
!1681 = !DILocation(line: 674, column: 19, scope: !1397)
!1682 = distinct !{!1682, !1643, !1683, !678}
!1683 = !DILocation(line: 675, column: 44, scope: !1384)
!1684 = !DILocation(line: 676, column: 15, scope: !1385)
!1685 = !DILocation(line: 680, column: 19, scope: !1409)
!1686 = !DILocation(line: 680, column: 45, scope: !1409)
!1687 = !DILocation(line: 684, column: 33, scope: !1408)
!1688 = !DILocation(line: 0, scope: !1408)
!1689 = !DILocation(line: 686, column: 17, scope: !1408)
!1690 = !DILocation(line: 405, column: 12, scope: !1372)
!1691 = !DILocation(line: 688, column: 43, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !93, line: 688, column: 25)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !93, line: 687, column: 19)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !93, line: 686, column: 17)
!1695 = distinct !DILexicalBlock(scope: !1408, file: !93, line: 686, column: 17)
!1696 = !DILocation(line: 690, column: 25, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !93, line: 690, column: 25)
!1698 = distinct !DILexicalBlock(scope: !1692, file: !93, line: 689, column: 23)
!1699 = !DILocation(line: 690, column: 25, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !93, line: 690, column: 25)
!1701 = !DILocation(line: 690, column: 25, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !93, line: 690, column: 25)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !93, line: 690, column: 25)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !93, line: 690, column: 25)
!1705 = !DILocation(line: 690, column: 25, scope: !1703)
!1706 = !DILocation(line: 690, column: 25, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !93, line: 690, column: 25)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !93, line: 690, column: 25)
!1709 = !DILocation(line: 690, column: 25, scope: !1708)
!1710 = !DILocation(line: 690, column: 25, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !93, line: 690, column: 25)
!1712 = distinct !DILexicalBlock(scope: !1704, file: !93, line: 690, column: 25)
!1713 = !DILocation(line: 690, column: 25, scope: !1712)
!1714 = !DILocation(line: 690, column: 25, scope: !1704)
!1715 = !DILocation(line: 690, column: 25, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !93, line: 690, column: 25)
!1717 = distinct !DILexicalBlock(scope: !1697, file: !93, line: 690, column: 25)
!1718 = !DILocation(line: 690, column: 25, scope: !1717)
!1719 = !DILocation(line: 691, column: 25, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !93, line: 691, column: 25)
!1721 = distinct !DILexicalBlock(scope: !1698, file: !93, line: 691, column: 25)
!1722 = !DILocation(line: 691, column: 25, scope: !1721)
!1723 = !DILocation(line: 692, column: 25, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !93, line: 692, column: 25)
!1725 = distinct !DILexicalBlock(scope: !1698, file: !93, line: 692, column: 25)
!1726 = !DILocation(line: 692, column: 25, scope: !1725)
!1727 = !DILocation(line: 693, column: 38, scope: !1698)
!1728 = !DILocation(line: 693, column: 33, scope: !1698)
!1729 = !DILocation(line: 694, column: 23, scope: !1698)
!1730 = !DILocation(line: 695, column: 30, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1692, file: !93, line: 695, column: 30)
!1732 = !DILocation(line: 695, column: 30, scope: !1692)
!1733 = !DILocation(line: 697, column: 25, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !93, line: 697, column: 25)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !93, line: 697, column: 25)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !93, line: 696, column: 23)
!1737 = !DILocation(line: 697, column: 25, scope: !1735)
!1738 = !DILocation(line: 699, column: 23, scope: !1736)
!1739 = !DILocation(line: 700, column: 35, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1693, file: !93, line: 700, column: 25)
!1741 = !DILocation(line: 700, column: 30, scope: !1740)
!1742 = !DILocation(line: 700, column: 25, scope: !1693)
!1743 = !DILocation(line: 702, column: 21, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !93, line: 702, column: 21)
!1745 = distinct !DILexicalBlock(scope: !1693, file: !93, line: 702, column: 21)
!1746 = !DILocation(line: 702, column: 21, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !93, line: 702, column: 21)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !93, line: 702, column: 21)
!1749 = distinct !DILexicalBlock(scope: !1744, file: !93, line: 702, column: 21)
!1750 = !DILocation(line: 702, column: 21, scope: !1748)
!1751 = !DILocation(line: 702, column: 21, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !93, line: 702, column: 21)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !93, line: 702, column: 21)
!1754 = !DILocation(line: 702, column: 21, scope: !1753)
!1755 = !DILocation(line: 702, column: 21, scope: !1749)
!1756 = !DILocation(line: 0, scope: !1693)
!1757 = !DILocation(line: 703, column: 21, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !93, line: 703, column: 21)
!1759 = distinct !DILexicalBlock(scope: !1693, file: !93, line: 703, column: 21)
!1760 = !DILocation(line: 703, column: 21, scope: !1759)
!1761 = !DILocation(line: 704, column: 25, scope: !1693)
!1762 = !DILocation(line: 686, column: 17, scope: !1694)
!1763 = distinct !{!1763, !1764, !1765}
!1764 = !DILocation(line: 686, column: 17, scope: !1695)
!1765 = !DILocation(line: 705, column: 19, scope: !1695)
!1766 = !DILocation(line: 416, column: 30, scope: !1485)
!1767 = !DILocation(line: 712, column: 34, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1372, file: !93, line: 712, column: 11)
!1769 = !DILocation(line: 715, column: 35, scope: !1768)
!1770 = !DILocation(line: 715, column: 17, scope: !1768)
!1771 = !DILocation(line: 715, column: 47, scope: !1768)
!1772 = !DILocation(line: 715, column: 65, scope: !1768)
!1773 = !DILocation(line: 716, column: 11, scope: !1768)
!1774 = !DILocation(line: 712, column: 11, scope: !1372)
!1775 = !DILocation(line: 400, column: 10, scope: !1374)
!1776 = !DILocation(line: 719, column: 5, scope: !1372)
!1777 = !DILocation(line: 720, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1372, file: !93, line: 720, column: 7)
!1779 = !DILocation(line: 720, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1778, file: !93, line: 720, column: 7)
!1781 = !DILocation(line: 720, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !93, line: 720, column: 7)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !93, line: 720, column: 7)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !93, line: 720, column: 7)
!1785 = !DILocation(line: 720, column: 7, scope: !1783)
!1786 = !DILocation(line: 720, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !93, line: 720, column: 7)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !93, line: 720, column: 7)
!1789 = !DILocation(line: 720, column: 7, scope: !1788)
!1790 = !DILocation(line: 720, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !93, line: 720, column: 7)
!1792 = distinct !DILexicalBlock(scope: !1784, file: !93, line: 720, column: 7)
!1793 = !DILocation(line: 720, column: 7, scope: !1792)
!1794 = !DILocation(line: 720, column: 7, scope: !1784)
!1795 = !DILocation(line: 720, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !93, line: 720, column: 7)
!1797 = distinct !DILexicalBlock(scope: !1778, file: !93, line: 720, column: 7)
!1798 = !DILocation(line: 720, column: 7, scope: !1797)
!1799 = !DILocation(line: 722, column: 5, scope: !1372)
!1800 = !DILocation(line: 723, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !93, line: 723, column: 7)
!1802 = distinct !DILexicalBlock(scope: !1372, file: !93, line: 723, column: 7)
!1803 = !DILocation(line: 424, column: 9, scope: !1372)
!1804 = !DILocation(line: 723, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !93, line: 723, column: 7)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !93, line: 723, column: 7)
!1807 = distinct !DILexicalBlock(scope: !1801, file: !93, line: 723, column: 7)
!1808 = !DILocation(line: 723, column: 7, scope: !1806)
!1809 = !DILocation(line: 723, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !93, line: 723, column: 7)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !93, line: 723, column: 7)
!1812 = !DILocation(line: 723, column: 7, scope: !1811)
!1813 = !DILocation(line: 723, column: 7, scope: !1807)
!1814 = !DILocation(line: 724, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !93, line: 724, column: 7)
!1816 = distinct !DILexicalBlock(scope: !1372, file: !93, line: 724, column: 7)
!1817 = !DILocation(line: 724, column: 7, scope: !1816)
!1818 = !DILocation(line: 726, column: 13, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1372, file: !93, line: 726, column: 11)
!1820 = !DILocation(line: 726, column: 11, scope: !1372)
!1821 = !DILocation(line: 728, column: 5, scope: !1373)
!1822 = !DILocation(line: 400, column: 75, scope: !1373)
!1823 = !DILocation(line: 400, column: 3, scope: !1373)
!1824 = distinct !{!1824, !1481, !1825, !678}
!1825 = !DILocation(line: 728, column: 5, scope: !1374)
!1826 = !DILocation(line: 730, column: 11, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1345, file: !93, line: 730, column: 7)
!1828 = !DILocation(line: 730, column: 16, scope: !1827)
!1829 = !DILocation(line: 738, column: 51, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1345, file: !93, line: 738, column: 7)
!1831 = !DILocation(line: 741, column: 11, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !93, line: 741, column: 11)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !93, line: 740, column: 5)
!1834 = !DILocation(line: 741, column: 11, scope: !1833)
!1835 = !DILocation(line: 742, column: 16, scope: !1832)
!1836 = !DILocation(line: 742, column: 9, scope: !1832)
!1837 = !DILocation(line: 746, column: 18, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1832, file: !93, line: 746, column: 16)
!1839 = !DILocation(line: 746, column: 29, scope: !1838)
!1840 = !DILocation(line: 755, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1345, file: !93, line: 755, column: 7)
!1842 = !DILocation(line: 755, column: 20, scope: !1841)
!1843 = !DILocation(line: 756, column: 12, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !93, line: 756, column: 5)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !93, line: 756, column: 5)
!1846 = !DILocation(line: 756, column: 5, scope: !1845)
!1847 = !DILocation(line: 757, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !93, line: 757, column: 7)
!1849 = distinct !DILexicalBlock(scope: !1844, file: !93, line: 757, column: 7)
!1850 = !DILocation(line: 757, column: 7, scope: !1849)
!1851 = !DILocation(line: 756, column: 39, scope: !1844)
!1852 = distinct !{!1852, !1846, !1853, !678}
!1853 = !DILocation(line: 757, column: 7, scope: !1845)
!1854 = !DILocation(line: 759, column: 11, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1345, file: !93, line: 759, column: 7)
!1856 = !DILocation(line: 759, column: 7, scope: !1345)
!1857 = !DILocation(line: 760, column: 5, scope: !1855)
!1858 = !DILocation(line: 760, column: 17, scope: !1855)
!1859 = !DILocation(line: 763, column: 2, scope: !1345)
!1860 = !DILocation(line: 766, column: 51, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1345, file: !93, line: 766, column: 7)
!1862 = !DILocation(line: 766, column: 21, scope: !1861)
!1863 = !DILocation(line: 770, column: 42, scope: !1345)
!1864 = !DILocation(line: 768, column: 10, scope: !1345)
!1865 = !DILocation(line: 768, column: 3, scope: !1345)
!1866 = !DILocation(line: 772, column: 1, scope: !1345)
!1867 = distinct !DISubprogram(name: "gettext_quote", scope: !93, file: !93, line: 207, type: !1868, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!55, !55, !5}
!1870 = !{!1871, !1872, !1873, !1874}
!1871 = !DILocalVariable(name: "msgid", arg: 1, scope: !1867, file: !93, line: 207, type: !55)
!1872 = !DILocalVariable(name: "s", arg: 2, scope: !1867, file: !93, line: 207, type: !5)
!1873 = !DILocalVariable(name: "translation", scope: !1867, file: !93, line: 209, type: !55)
!1874 = !DILocalVariable(name: "locale_code", scope: !1867, file: !93, line: 210, type: !55)
!1875 = !DILocation(line: 0, scope: !1867)
!1876 = !DILocation(line: 209, column: 29, scope: !1867)
!1877 = !DILocation(line: 212, column: 19, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1867, file: !93, line: 212, column: 7)
!1879 = !DILocation(line: 212, column: 7, scope: !1867)
!1880 = !DILocation(line: 233, column: 17, scope: !1867)
!1881 = !DILocalVariable(name: "s1", arg: 1, scope: !1882, file: !1883, line: 160, type: !55)
!1882 = distinct !DISubprogram(name: "strcaseeq0", scope: !1883, file: !1883, line: 160, type: !1884, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1886)
!1883 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!58, !55, !55, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!1886 = !{!1881, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1887 = !DILocalVariable(name: "s2", arg: 2, scope: !1882, file: !1883, line: 160, type: !55)
!1888 = !DILocalVariable(name: "s20", arg: 3, scope: !1882, file: !1883, line: 160, type: !46)
!1889 = !DILocalVariable(name: "s21", arg: 4, scope: !1882, file: !1883, line: 160, type: !46)
!1890 = !DILocalVariable(name: "s22", arg: 5, scope: !1882, file: !1883, line: 160, type: !46)
!1891 = !DILocalVariable(name: "s23", arg: 6, scope: !1882, file: !1883, line: 160, type: !46)
!1892 = !DILocalVariable(name: "s24", arg: 7, scope: !1882, file: !1883, line: 160, type: !46)
!1893 = !DILocalVariable(name: "s25", arg: 8, scope: !1882, file: !1883, line: 160, type: !46)
!1894 = !DILocalVariable(name: "s26", arg: 9, scope: !1882, file: !1883, line: 160, type: !46)
!1895 = !DILocalVariable(name: "s27", arg: 10, scope: !1882, file: !1883, line: 160, type: !46)
!1896 = !DILocalVariable(name: "s28", arg: 11, scope: !1882, file: !1883, line: 160, type: !46)
!1897 = !DILocation(line: 0, scope: !1882, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 234, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1867, file: !93, line: 234, column: 7)
!1900 = !DILocation(line: 162, column: 7, scope: !1901, inlinedAt: !1898)
!1901 = distinct !DILexicalBlock(scope: !1882, file: !1883, line: 162, column: 7)
!1902 = !DILocalVariable(name: "s1", arg: 1, scope: !1903, file: !1883, line: 146, type: !55)
!1903 = distinct !DISubprogram(name: "strcaseeq1", scope: !1883, file: !1883, line: 146, type: !1904, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1906)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!58, !55, !55, !46, !46, !46, !46, !46, !46, !46, !46}
!1906 = !{!1902, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1907 = !DILocalVariable(name: "s2", arg: 2, scope: !1903, file: !1883, line: 146, type: !55)
!1908 = !DILocalVariable(name: "s21", arg: 3, scope: !1903, file: !1883, line: 146, type: !46)
!1909 = !DILocalVariable(name: "s22", arg: 4, scope: !1903, file: !1883, line: 146, type: !46)
!1910 = !DILocalVariable(name: "s23", arg: 5, scope: !1903, file: !1883, line: 146, type: !46)
!1911 = !DILocalVariable(name: "s24", arg: 6, scope: !1903, file: !1883, line: 146, type: !46)
!1912 = !DILocalVariable(name: "s25", arg: 7, scope: !1903, file: !1883, line: 146, type: !46)
!1913 = !DILocalVariable(name: "s26", arg: 8, scope: !1903, file: !1883, line: 146, type: !46)
!1914 = !DILocalVariable(name: "s27", arg: 9, scope: !1903, file: !1883, line: 146, type: !46)
!1915 = !DILocalVariable(name: "s28", arg: 10, scope: !1903, file: !1883, line: 146, type: !46)
!1916 = !DILocation(line: 0, scope: !1903, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 167, column: 16, scope: !1918, inlinedAt: !1898)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !1883, line: 164, column: 11)
!1919 = distinct !DILexicalBlock(scope: !1901, file: !1883, line: 163, column: 5)
!1920 = !DILocation(line: 148, column: 7, scope: !1921, inlinedAt: !1917)
!1921 = distinct !DILexicalBlock(scope: !1903, file: !1883, line: 148, column: 7)
!1922 = !DILocalVariable(name: "s1", arg: 1, scope: !1923, file: !1883, line: 132, type: !55)
!1923 = distinct !DISubprogram(name: "strcaseeq2", scope: !1883, file: !1883, line: 132, type: !1924, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!58, !55, !55, !46, !46, !46, !46, !46, !46, !46}
!1926 = !{!1922, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934}
!1927 = !DILocalVariable(name: "s2", arg: 2, scope: !1923, file: !1883, line: 132, type: !55)
!1928 = !DILocalVariable(name: "s22", arg: 3, scope: !1923, file: !1883, line: 132, type: !46)
!1929 = !DILocalVariable(name: "s23", arg: 4, scope: !1923, file: !1883, line: 132, type: !46)
!1930 = !DILocalVariable(name: "s24", arg: 5, scope: !1923, file: !1883, line: 132, type: !46)
!1931 = !DILocalVariable(name: "s25", arg: 6, scope: !1923, file: !1883, line: 132, type: !46)
!1932 = !DILocalVariable(name: "s26", arg: 7, scope: !1923, file: !1883, line: 132, type: !46)
!1933 = !DILocalVariable(name: "s27", arg: 8, scope: !1923, file: !1883, line: 132, type: !46)
!1934 = !DILocalVariable(name: "s28", arg: 9, scope: !1923, file: !1883, line: 132, type: !46)
!1935 = !DILocation(line: 0, scope: !1923, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 153, column: 16, scope: !1937, inlinedAt: !1917)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !1883, line: 150, column: 11)
!1938 = distinct !DILexicalBlock(scope: !1921, file: !1883, line: 149, column: 5)
!1939 = !DILocation(line: 134, column: 7, scope: !1940, inlinedAt: !1936)
!1940 = distinct !DILexicalBlock(scope: !1923, file: !1883, line: 134, column: 7)
!1941 = !DILocalVariable(name: "s1", arg: 1, scope: !1942, file: !1883, line: 118, type: !55)
!1942 = distinct !DISubprogram(name: "strcaseeq3", scope: !1883, file: !1883, line: 118, type: !1943, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1945)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!58, !55, !55, !46, !46, !46, !46, !46, !46}
!1945 = !{!1941, !1946, !1947, !1948, !1949, !1950, !1951, !1952}
!1946 = !DILocalVariable(name: "s2", arg: 2, scope: !1942, file: !1883, line: 118, type: !55)
!1947 = !DILocalVariable(name: "s23", arg: 3, scope: !1942, file: !1883, line: 118, type: !46)
!1948 = !DILocalVariable(name: "s24", arg: 4, scope: !1942, file: !1883, line: 118, type: !46)
!1949 = !DILocalVariable(name: "s25", arg: 5, scope: !1942, file: !1883, line: 118, type: !46)
!1950 = !DILocalVariable(name: "s26", arg: 6, scope: !1942, file: !1883, line: 118, type: !46)
!1951 = !DILocalVariable(name: "s27", arg: 7, scope: !1942, file: !1883, line: 118, type: !46)
!1952 = !DILocalVariable(name: "s28", arg: 8, scope: !1942, file: !1883, line: 118, type: !46)
!1953 = !DILocation(line: 0, scope: !1942, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 139, column: 16, scope: !1955, inlinedAt: !1936)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !1883, line: 136, column: 11)
!1956 = distinct !DILexicalBlock(scope: !1940, file: !1883, line: 135, column: 5)
!1957 = !DILocation(line: 120, column: 7, scope: !1958, inlinedAt: !1954)
!1958 = distinct !DILexicalBlock(scope: !1942, file: !1883, line: 120, column: 7)
!1959 = !DILocation(line: 120, column: 7, scope: !1942, inlinedAt: !1954)
!1960 = !DILocalVariable(name: "s1", arg: 1, scope: !1961, file: !1883, line: 104, type: !55)
!1961 = distinct !DISubprogram(name: "strcaseeq4", scope: !1883, file: !1883, line: 104, type: !1962, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!58, !55, !55, !46, !46, !46, !46, !46}
!1964 = !{!1960, !1965, !1966, !1967, !1968, !1969, !1970}
!1965 = !DILocalVariable(name: "s2", arg: 2, scope: !1961, file: !1883, line: 104, type: !55)
!1966 = !DILocalVariable(name: "s24", arg: 3, scope: !1961, file: !1883, line: 104, type: !46)
!1967 = !DILocalVariable(name: "s25", arg: 4, scope: !1961, file: !1883, line: 104, type: !46)
!1968 = !DILocalVariable(name: "s26", arg: 5, scope: !1961, file: !1883, line: 104, type: !46)
!1969 = !DILocalVariable(name: "s27", arg: 6, scope: !1961, file: !1883, line: 104, type: !46)
!1970 = !DILocalVariable(name: "s28", arg: 7, scope: !1961, file: !1883, line: 104, type: !46)
!1971 = !DILocation(line: 0, scope: !1961, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 125, column: 16, scope: !1973, inlinedAt: !1954)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !1883, line: 122, column: 11)
!1974 = distinct !DILexicalBlock(scope: !1958, file: !1883, line: 121, column: 5)
!1975 = !DILocation(line: 106, column: 7, scope: !1976, inlinedAt: !1972)
!1976 = distinct !DILexicalBlock(scope: !1961, file: !1883, line: 106, column: 7)
!1977 = !DILocation(line: 106, column: 7, scope: !1961, inlinedAt: !1972)
!1978 = !DILocalVariable(name: "s1", arg: 1, scope: !1979, file: !1883, line: 90, type: !55)
!1979 = distinct !DISubprogram(name: "strcaseeq5", scope: !1883, file: !1883, line: 90, type: !1980, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!58, !55, !55, !46, !46, !46, !46}
!1982 = !{!1978, !1983, !1984, !1985, !1986, !1987}
!1983 = !DILocalVariable(name: "s2", arg: 2, scope: !1979, file: !1883, line: 90, type: !55)
!1984 = !DILocalVariable(name: "s25", arg: 3, scope: !1979, file: !1883, line: 90, type: !46)
!1985 = !DILocalVariable(name: "s26", arg: 4, scope: !1979, file: !1883, line: 90, type: !46)
!1986 = !DILocalVariable(name: "s27", arg: 5, scope: !1979, file: !1883, line: 90, type: !46)
!1987 = !DILocalVariable(name: "s28", arg: 6, scope: !1979, file: !1883, line: 90, type: !46)
!1988 = !DILocation(line: 0, scope: !1979, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 111, column: 16, scope: !1990, inlinedAt: !1972)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !1883, line: 108, column: 11)
!1991 = distinct !DILexicalBlock(scope: !1976, file: !1883, line: 107, column: 5)
!1992 = !DILocation(line: 92, column: 7, scope: !1993, inlinedAt: !1989)
!1993 = distinct !DILexicalBlock(scope: !1979, file: !1883, line: 92, column: 7)
!1994 = !DILocation(line: 92, column: 7, scope: !1979, inlinedAt: !1989)
!1995 = !DILocation(line: 235, column: 12, scope: !1899)
!1996 = !DILocation(line: 235, column: 21, scope: !1899)
!1997 = !DILocation(line: 235, column: 5, scope: !1899)
!1998 = !DILocation(line: 0, scope: !1903, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 167, column: 16, scope: !1918, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 236, column: 7, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1867, file: !93, line: 236, column: 7)
!2002 = !DILocation(line: 148, column: 7, scope: !1921, inlinedAt: !1999)
!2003 = !DILocation(line: 0, scope: !1923, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 153, column: 16, scope: !1937, inlinedAt: !1999)
!2005 = !DILocation(line: 134, column: 7, scope: !1940, inlinedAt: !2004)
!2006 = !DILocation(line: 134, column: 7, scope: !1923, inlinedAt: !2004)
!2007 = !DILocation(line: 0, scope: !1942, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 139, column: 16, scope: !1955, inlinedAt: !2004)
!2009 = !DILocation(line: 120, column: 7, scope: !1958, inlinedAt: !2008)
!2010 = !DILocation(line: 120, column: 7, scope: !1942, inlinedAt: !2008)
!2011 = !DILocation(line: 0, scope: !1961, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 125, column: 16, scope: !1973, inlinedAt: !2008)
!2013 = !DILocation(line: 106, column: 7, scope: !1976, inlinedAt: !2012)
!2014 = !DILocation(line: 106, column: 7, scope: !1961, inlinedAt: !2012)
!2015 = !DILocation(line: 0, scope: !1979, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 111, column: 16, scope: !1990, inlinedAt: !2012)
!2017 = !DILocation(line: 92, column: 7, scope: !1993, inlinedAt: !2016)
!2018 = !DILocation(line: 92, column: 7, scope: !1979, inlinedAt: !2016)
!2019 = !DILocalVariable(name: "s1", arg: 1, scope: !2020, file: !1883, line: 76, type: !55)
!2020 = distinct !DISubprogram(name: "strcaseeq6", scope: !1883, file: !1883, line: 76, type: !2021, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!58, !55, !55, !46, !46, !46}
!2023 = !{!2019, !2024, !2025, !2026, !2027}
!2024 = !DILocalVariable(name: "s2", arg: 2, scope: !2020, file: !1883, line: 76, type: !55)
!2025 = !DILocalVariable(name: "s26", arg: 3, scope: !2020, file: !1883, line: 76, type: !46)
!2026 = !DILocalVariable(name: "s27", arg: 4, scope: !2020, file: !1883, line: 76, type: !46)
!2027 = !DILocalVariable(name: "s28", arg: 5, scope: !2020, file: !1883, line: 76, type: !46)
!2028 = !DILocation(line: 0, scope: !2020, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 97, column: 16, scope: !2030, inlinedAt: !2016)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !1883, line: 94, column: 11)
!2031 = distinct !DILexicalBlock(scope: !1993, file: !1883, line: 93, column: 5)
!2032 = !DILocation(line: 78, column: 7, scope: !2033, inlinedAt: !2029)
!2033 = distinct !DILexicalBlock(scope: !2020, file: !1883, line: 78, column: 7)
!2034 = !DILocation(line: 78, column: 7, scope: !2020, inlinedAt: !2029)
!2035 = !DILocalVariable(name: "s1", arg: 1, scope: !2036, file: !1883, line: 62, type: !55)
!2036 = distinct !DISubprogram(name: "strcaseeq7", scope: !1883, file: !1883, line: 62, type: !2037, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!58, !55, !55, !46, !46}
!2039 = !{!2035, !2040, !2041, !2042}
!2040 = !DILocalVariable(name: "s2", arg: 2, scope: !2036, file: !1883, line: 62, type: !55)
!2041 = !DILocalVariable(name: "s27", arg: 3, scope: !2036, file: !1883, line: 62, type: !46)
!2042 = !DILocalVariable(name: "s28", arg: 4, scope: !2036, file: !1883, line: 62, type: !46)
!2043 = !DILocation(line: 0, scope: !2036, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 83, column: 16, scope: !2045, inlinedAt: !2029)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !1883, line: 80, column: 11)
!2046 = distinct !DILexicalBlock(scope: !2033, file: !1883, line: 79, column: 5)
!2047 = !DILocation(line: 64, column: 7, scope: !2048, inlinedAt: !2044)
!2048 = distinct !DILexicalBlock(scope: !2036, file: !1883, line: 64, column: 7)
!2049 = !DILocation(line: 236, column: 7, scope: !1867)
!2050 = !DILocation(line: 237, column: 12, scope: !2001)
!2051 = !DILocation(line: 237, column: 21, scope: !2001)
!2052 = !DILocation(line: 237, column: 5, scope: !2001)
!2053 = !DILocation(line: 239, column: 13, scope: !1867)
!2054 = !DILocation(line: 239, column: 11, scope: !1867)
!2055 = !DILocation(line: 239, column: 3, scope: !1867)
!2056 = !DILocation(line: 240, column: 1, scope: !1867)
!2057 = !DISubprogram(name: "iswprint", scope: !2058, file: !2058, line: 120, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!2058 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!58, !7}
!2061 = !DISubprogram(name: "mbsinit", scope: !2062, file: !2062, line: 292, type: !2063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!2062 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!58, !2065}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!2067 = distinct !DISubprogram(name: "quotearg_alloc", scope: !93, file: !93, line: 799, type: !2068, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!45, !55, !117, !1236}
!2070 = !{!2071, !2072, !2073}
!2071 = !DILocalVariable(name: "arg", arg: 1, scope: !2067, file: !93, line: 799, type: !55)
!2072 = !DILocalVariable(name: "argsize", arg: 2, scope: !2067, file: !93, line: 799, type: !117)
!2073 = !DILocalVariable(name: "o", arg: 3, scope: !2067, file: !93, line: 800, type: !1236)
!2074 = !DILocation(line: 0, scope: !2067)
!2075 = !DILocalVariable(name: "arg", arg: 1, scope: !2076, file: !93, line: 812, type: !55)
!2076 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !93, file: !93, line: 812, type: !2077, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2079)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!45, !55, !117, !202, !1236}
!2079 = !{!2075, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087}
!2080 = !DILocalVariable(name: "argsize", arg: 2, scope: !2076, file: !93, line: 812, type: !117)
!2081 = !DILocalVariable(name: "size", arg: 3, scope: !2076, file: !93, line: 812, type: !202)
!2082 = !DILocalVariable(name: "o", arg: 4, scope: !2076, file: !93, line: 813, type: !1236)
!2083 = !DILocalVariable(name: "p", scope: !2076, file: !93, line: 815, type: !1236)
!2084 = !DILocalVariable(name: "e", scope: !2076, file: !93, line: 816, type: !58)
!2085 = !DILocalVariable(name: "flags", scope: !2076, file: !93, line: 818, type: !58)
!2086 = !DILocalVariable(name: "bufsize", scope: !2076, file: !93, line: 819, type: !117)
!2087 = !DILocalVariable(name: "buf", scope: !2076, file: !93, line: 823, type: !45)
!2088 = !DILocation(line: 0, scope: !2076, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 802, column: 10, scope: !2067)
!2090 = !DILocation(line: 815, column: 37, scope: !2076, inlinedAt: !2089)
!2091 = !DILocation(line: 816, column: 11, scope: !2076, inlinedAt: !2089)
!2092 = !DILocation(line: 818, column: 18, scope: !2076, inlinedAt: !2089)
!2093 = !DILocation(line: 818, column: 24, scope: !2076, inlinedAt: !2089)
!2094 = !DILocation(line: 819, column: 69, scope: !2076, inlinedAt: !2089)
!2095 = !DILocation(line: 820, column: 53, scope: !2076, inlinedAt: !2089)
!2096 = !DILocation(line: 821, column: 49, scope: !2076, inlinedAt: !2089)
!2097 = !DILocation(line: 822, column: 49, scope: !2076, inlinedAt: !2089)
!2098 = !DILocation(line: 819, column: 20, scope: !2076, inlinedAt: !2089)
!2099 = !DILocation(line: 822, column: 62, scope: !2076, inlinedAt: !2089)
!2100 = !DILocalVariable(name: "n", arg: 1, scope: !2101, file: !198, line: 216, type: !117)
!2101 = distinct !DISubprogram(name: "xcharalloc", scope: !198, file: !198, line: 216, type: !2102, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!45, !117}
!2104 = !{!2100}
!2105 = !DILocation(line: 0, scope: !2101, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 823, column: 15, scope: !2076, inlinedAt: !2089)
!2107 = !DILocation(line: 218, column: 10, scope: !2101, inlinedAt: !2106)
!2108 = !DILocation(line: 824, column: 60, scope: !2076, inlinedAt: !2089)
!2109 = !DILocation(line: 826, column: 32, scope: !2076, inlinedAt: !2089)
!2110 = !DILocation(line: 826, column: 47, scope: !2076, inlinedAt: !2089)
!2111 = !DILocation(line: 824, column: 3, scope: !2076, inlinedAt: !2089)
!2112 = !DILocation(line: 827, column: 9, scope: !2076, inlinedAt: !2089)
!2113 = !DILocation(line: 802, column: 3, scope: !2067)
!2114 = !DILocation(line: 0, scope: !2076)
!2115 = !DILocation(line: 815, column: 37, scope: !2076)
!2116 = !DILocation(line: 816, column: 11, scope: !2076)
!2117 = !DILocation(line: 818, column: 18, scope: !2076)
!2118 = !DILocation(line: 818, column: 27, scope: !2076)
!2119 = !DILocation(line: 818, column: 24, scope: !2076)
!2120 = !DILocation(line: 819, column: 69, scope: !2076)
!2121 = !DILocation(line: 820, column: 53, scope: !2076)
!2122 = !DILocation(line: 821, column: 49, scope: !2076)
!2123 = !DILocation(line: 822, column: 49, scope: !2076)
!2124 = !DILocation(line: 819, column: 20, scope: !2076)
!2125 = !DILocation(line: 822, column: 62, scope: !2076)
!2126 = !DILocation(line: 0, scope: !2101, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 823, column: 15, scope: !2076)
!2128 = !DILocation(line: 218, column: 10, scope: !2101, inlinedAt: !2127)
!2129 = !DILocation(line: 824, column: 60, scope: !2076)
!2130 = !DILocation(line: 826, column: 32, scope: !2076)
!2131 = !DILocation(line: 826, column: 47, scope: !2076)
!2132 = !DILocation(line: 824, column: 3, scope: !2076)
!2133 = !DILocation(line: 827, column: 9, scope: !2076)
!2134 = !DILocation(line: 828, column: 7, scope: !2076)
!2135 = !DILocation(line: 829, column: 11, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2076, file: !93, line: 828, column: 7)
!2137 = !{!2138, !2138, i64 0}
!2138 = !{!"long", !638, i64 0}
!2139 = !DILocation(line: 829, column: 5, scope: !2136)
!2140 = !DILocation(line: 830, column: 3, scope: !2076)
!2141 = distinct !DISubprogram(name: "quotearg_free", scope: !93, file: !93, line: 848, type: !1112, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2142)
!2142 = !{!2143, !2144}
!2143 = !DILocalVariable(name: "sv", scope: !2141, file: !93, line: 850, type: !148)
!2144 = !DILocalVariable(name: "i", scope: !2141, file: !93, line: 851, type: !58)
!2145 = !DILocation(line: 850, column: 24, scope: !2141)
!2146 = !DILocation(line: 0, scope: !2141)
!2147 = !DILocation(line: 852, column: 19, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !93, line: 852, column: 3)
!2149 = distinct !DILexicalBlock(scope: !2141, file: !93, line: 852, column: 3)
!2150 = !DILocation(line: 852, column: 17, scope: !2148)
!2151 = !DILocation(line: 852, column: 3, scope: !2149)
!2152 = !DILocation(line: 853, column: 17, scope: !2148)
!2153 = !{!2154, !637, i64 8}
!2154 = !{!"slotvec", !2138, i64 0, !637, i64 8}
!2155 = !DILocation(line: 853, column: 5, scope: !2148)
!2156 = !DILocation(line: 852, column: 28, scope: !2148)
!2157 = distinct !{!2157, !2151, !2158, !678}
!2158 = !DILocation(line: 853, column: 20, scope: !2149)
!2159 = !DILocation(line: 854, column: 13, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2141, file: !93, line: 854, column: 7)
!2161 = !DILocation(line: 854, column: 17, scope: !2160)
!2162 = !DILocation(line: 854, column: 7, scope: !2141)
!2163 = !DILocation(line: 856, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !93, line: 855, column: 5)
!2165 = !DILocation(line: 857, column: 21, scope: !2164)
!2166 = !{!2154, !2138, i64 0}
!2167 = !DILocation(line: 858, column: 20, scope: !2164)
!2168 = !DILocation(line: 859, column: 5, scope: !2164)
!2169 = !DILocation(line: 860, column: 10, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2141, file: !93, line: 860, column: 7)
!2171 = !DILocation(line: 860, column: 7, scope: !2141)
!2172 = !DILocation(line: 862, column: 13, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !93, line: 861, column: 5)
!2174 = !DILocation(line: 862, column: 7, scope: !2173)
!2175 = !DILocation(line: 863, column: 15, scope: !2173)
!2176 = !DILocation(line: 864, column: 5, scope: !2173)
!2177 = !DILocation(line: 865, column: 10, scope: !2141)
!2178 = !DILocation(line: 866, column: 1, scope: !2141)
!2179 = distinct !DISubprogram(name: "quotearg_n", scope: !93, file: !93, line: 931, type: !760, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2180)
!2180 = !{!2181, !2182}
!2181 = !DILocalVariable(name: "n", arg: 1, scope: !2179, file: !93, line: 931, type: !58)
!2182 = !DILocalVariable(name: "arg", arg: 2, scope: !2179, file: !93, line: 931, type: !55)
!2183 = !DILocation(line: 0, scope: !2179)
!2184 = !DILocation(line: 933, column: 10, scope: !2179)
!2185 = !DILocation(line: 933, column: 3, scope: !2179)
!2186 = distinct !DISubprogram(name: "quotearg_n_options", scope: !93, file: !93, line: 877, type: !2187, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!45, !58, !55, !117, !1236}
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2199, !2200, !2202, !2203, !2204}
!2190 = !DILocalVariable(name: "n", arg: 1, scope: !2186, file: !93, line: 877, type: !58)
!2191 = !DILocalVariable(name: "arg", arg: 2, scope: !2186, file: !93, line: 877, type: !55)
!2192 = !DILocalVariable(name: "argsize", arg: 3, scope: !2186, file: !93, line: 877, type: !117)
!2193 = !DILocalVariable(name: "options", arg: 4, scope: !2186, file: !93, line: 878, type: !1236)
!2194 = !DILocalVariable(name: "e", scope: !2186, file: !93, line: 880, type: !58)
!2195 = !DILocalVariable(name: "sv", scope: !2186, file: !93, line: 882, type: !148)
!2196 = !DILocalVariable(name: "preallocated", scope: !2197, file: !93, line: 889, type: !77)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !93, line: 888, column: 5)
!2198 = distinct !DILexicalBlock(scope: !2186, file: !93, line: 887, column: 7)
!2199 = !DILocalVariable(name: "nmax", scope: !2197, file: !93, line: 890, type: !58)
!2200 = !DILocalVariable(name: "size", scope: !2201, file: !93, line: 903, type: !117)
!2201 = distinct !DILexicalBlock(scope: !2186, file: !93, line: 902, column: 3)
!2202 = !DILocalVariable(name: "val", scope: !2201, file: !93, line: 904, type: !45)
!2203 = !DILocalVariable(name: "flags", scope: !2201, file: !93, line: 906, type: !58)
!2204 = !DILocalVariable(name: "qsize", scope: !2201, file: !93, line: 907, type: !117)
!2205 = !DILocation(line: 0, scope: !2186)
!2206 = !DILocation(line: 880, column: 11, scope: !2186)
!2207 = !DILocation(line: 882, column: 24, scope: !2186)
!2208 = !DILocation(line: 884, column: 9, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2186, file: !93, line: 884, column: 7)
!2210 = !DILocation(line: 884, column: 7, scope: !2186)
!2211 = !DILocation(line: 885, column: 5, scope: !2209)
!2212 = !DILocation(line: 887, column: 7, scope: !2198)
!2213 = !DILocation(line: 887, column: 14, scope: !2198)
!2214 = !DILocation(line: 887, column: 7, scope: !2186)
!2215 = !DILocation(line: 889, column: 31, scope: !2197)
!2216 = !DILocation(line: 0, scope: !2197)
!2217 = !DILocation(line: 892, column: 16, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2197, file: !93, line: 892, column: 11)
!2219 = !DILocation(line: 892, column: 11, scope: !2197)
!2220 = !DILocation(line: 893, column: 9, scope: !2218)
!2221 = !DILocation(line: 895, column: 32, scope: !2197)
!2222 = !DILocation(line: 895, column: 61, scope: !2197)
!2223 = !DILocation(line: 895, column: 66, scope: !2197)
!2224 = !DILocation(line: 895, column: 22, scope: !2197)
!2225 = !DILocation(line: 895, column: 15, scope: !2197)
!2226 = !DILocation(line: 896, column: 11, scope: !2197)
!2227 = !DILocation(line: 897, column: 15, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2197, file: !93, line: 896, column: 11)
!2229 = !{i64 0, i64 8, !2137, i64 8, i64 8, !636}
!2230 = !DILocation(line: 897, column: 9, scope: !2228)
!2231 = !DILocation(line: 898, column: 20, scope: !2197)
!2232 = !DILocation(line: 898, column: 18, scope: !2197)
!2233 = !DILocation(line: 898, column: 15, scope: !2197)
!2234 = !DILocation(line: 898, column: 38, scope: !2197)
!2235 = !DILocation(line: 898, column: 31, scope: !2197)
!2236 = !DILocation(line: 898, column: 48, scope: !2197)
!2237 = !DILocation(line: 0, scope: !1628, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 898, column: 7, scope: !2197)
!2239 = !DILocation(line: 59, column: 10, scope: !1628, inlinedAt: !2238)
!2240 = !DILocation(line: 899, column: 14, scope: !2197)
!2241 = !DILocation(line: 900, column: 5, scope: !2197)
!2242 = !DILocation(line: 903, column: 19, scope: !2201)
!2243 = !DILocation(line: 903, column: 25, scope: !2201)
!2244 = !DILocation(line: 0, scope: !2201)
!2245 = !DILocation(line: 904, column: 23, scope: !2201)
!2246 = !DILocation(line: 906, column: 26, scope: !2201)
!2247 = !DILocation(line: 906, column: 32, scope: !2201)
!2248 = !DILocation(line: 908, column: 55, scope: !2201)
!2249 = !DILocation(line: 909, column: 46, scope: !2201)
!2250 = !DILocation(line: 910, column: 55, scope: !2201)
!2251 = !DILocation(line: 911, column: 55, scope: !2201)
!2252 = !DILocation(line: 907, column: 20, scope: !2201)
!2253 = !DILocation(line: 913, column: 14, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2201, file: !93, line: 913, column: 9)
!2255 = !DILocation(line: 913, column: 9, scope: !2201)
!2256 = !DILocation(line: 915, column: 35, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !93, line: 914, column: 7)
!2258 = !DILocation(line: 915, column: 20, scope: !2257)
!2259 = !DILocation(line: 916, column: 17, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !93, line: 916, column: 13)
!2261 = !DILocation(line: 916, column: 13, scope: !2257)
!2262 = !DILocation(line: 917, column: 11, scope: !2260)
!2263 = !DILocation(line: 0, scope: !2101, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 918, column: 27, scope: !2257)
!2265 = !DILocation(line: 218, column: 10, scope: !2101, inlinedAt: !2264)
!2266 = !DILocation(line: 918, column: 19, scope: !2257)
!2267 = !DILocation(line: 919, column: 69, scope: !2257)
!2268 = !DILocation(line: 921, column: 44, scope: !2257)
!2269 = !DILocation(line: 922, column: 44, scope: !2257)
!2270 = !DILocation(line: 919, column: 9, scope: !2257)
!2271 = !DILocation(line: 923, column: 7, scope: !2257)
!2272 = !DILocation(line: 925, column: 11, scope: !2201)
!2273 = !DILocation(line: 926, column: 5, scope: !2201)
!2274 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !93, file: !93, line: 937, type: !2275, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!45, !58, !55, !117}
!2277 = !{!2278, !2279, !2280}
!2278 = !DILocalVariable(name: "n", arg: 1, scope: !2274, file: !93, line: 937, type: !58)
!2279 = !DILocalVariable(name: "arg", arg: 2, scope: !2274, file: !93, line: 937, type: !55)
!2280 = !DILocalVariable(name: "argsize", arg: 3, scope: !2274, file: !93, line: 937, type: !117)
!2281 = !DILocation(line: 0, scope: !2274)
!2282 = !DILocation(line: 939, column: 10, scope: !2274)
!2283 = !DILocation(line: 939, column: 3, scope: !2274)
!2284 = distinct !DISubprogram(name: "quotearg", scope: !93, file: !93, line: 943, type: !1105, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2285)
!2285 = !{!2286}
!2286 = !DILocalVariable(name: "arg", arg: 1, scope: !2284, file: !93, line: 943, type: !55)
!2287 = !DILocation(line: 0, scope: !2284)
!2288 = !DILocation(line: 0, scope: !2179, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 945, column: 10, scope: !2284)
!2290 = !DILocation(line: 933, column: 10, scope: !2179, inlinedAt: !2289)
!2291 = !DILocation(line: 945, column: 3, scope: !2284)
!2292 = distinct !DISubprogram(name: "quotearg_mem", scope: !93, file: !93, line: 949, type: !2293, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!45, !55, !117}
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "arg", arg: 1, scope: !2292, file: !93, line: 949, type: !55)
!2297 = !DILocalVariable(name: "argsize", arg: 2, scope: !2292, file: !93, line: 949, type: !117)
!2298 = !DILocation(line: 0, scope: !2292)
!2299 = !DILocation(line: 0, scope: !2274, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 951, column: 10, scope: !2292)
!2301 = !DILocation(line: 939, column: 10, scope: !2274, inlinedAt: !2300)
!2302 = !DILocation(line: 951, column: 3, scope: !2292)
!2303 = distinct !DISubprogram(name: "quotearg_n_style", scope: !93, file: !93, line: 955, type: !2304, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!45, !58, !5, !55}
!2306 = !{!2307, !2308, !2309, !2310}
!2307 = !DILocalVariable(name: "n", arg: 1, scope: !2303, file: !93, line: 955, type: !58)
!2308 = !DILocalVariable(name: "s", arg: 2, scope: !2303, file: !93, line: 955, type: !5)
!2309 = !DILocalVariable(name: "arg", arg: 3, scope: !2303, file: !93, line: 955, type: !55)
!2310 = !DILocalVariable(name: "o", scope: !2303, file: !93, line: 957, type: !1237)
!2311 = !DILocation(line: 0, scope: !2303)
!2312 = !DILocation(line: 957, column: 3, scope: !2303)
!2313 = !DILocation(line: 957, column: 32, scope: !2303)
!2314 = !{!2315}
!2315 = distinct !{!2315, !2316, !"quoting_options_from_style: argument 0"}
!2316 = distinct !{!2316, !"quoting_options_from_style"}
!2317 = !DILocation(line: 957, column: 36, scope: !2303)
!2318 = !DILocalVariable(name: "style", arg: 1, scope: !2319, file: !93, line: 193, type: !5)
!2319 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !93, file: !93, line: 193, type: !2320, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!129, !5}
!2322 = !{!2318, !2323}
!2323 = !DILocalVariable(name: "o", scope: !2319, file: !93, line: 195, type: !129)
!2324 = !DILocation(line: 0, scope: !2319, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 957, column: 36, scope: !2303)
!2326 = !DILocation(line: 195, column: 26, scope: !2319, inlinedAt: !2325)
!2327 = !DILocation(line: 196, column: 13, scope: !2328, inlinedAt: !2325)
!2328 = distinct !DILexicalBlock(scope: !2319, file: !93, line: 196, column: 7)
!2329 = !DILocation(line: 196, column: 7, scope: !2319, inlinedAt: !2325)
!2330 = !DILocation(line: 197, column: 5, scope: !2328, inlinedAt: !2325)
!2331 = !DILocation(line: 198, column: 5, scope: !2319, inlinedAt: !2325)
!2332 = !DILocation(line: 198, column: 11, scope: !2319, inlinedAt: !2325)
!2333 = !DILocation(line: 958, column: 10, scope: !2303)
!2334 = !DILocation(line: 959, column: 1, scope: !2303)
!2335 = !DILocation(line: 958, column: 3, scope: !2303)
!2336 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !93, file: !93, line: 962, type: !2337, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!45, !58, !5, !55, !117}
!2339 = !{!2340, !2341, !2342, !2343, !2344}
!2340 = !DILocalVariable(name: "n", arg: 1, scope: !2336, file: !93, line: 962, type: !58)
!2341 = !DILocalVariable(name: "s", arg: 2, scope: !2336, file: !93, line: 962, type: !5)
!2342 = !DILocalVariable(name: "arg", arg: 3, scope: !2336, file: !93, line: 963, type: !55)
!2343 = !DILocalVariable(name: "argsize", arg: 4, scope: !2336, file: !93, line: 963, type: !117)
!2344 = !DILocalVariable(name: "o", scope: !2336, file: !93, line: 965, type: !1237)
!2345 = !DILocation(line: 0, scope: !2336)
!2346 = !DILocation(line: 965, column: 3, scope: !2336)
!2347 = !DILocation(line: 965, column: 32, scope: !2336)
!2348 = !{!2349}
!2349 = distinct !{!2349, !2350, !"quoting_options_from_style: argument 0"}
!2350 = distinct !{!2350, !"quoting_options_from_style"}
!2351 = !DILocation(line: 965, column: 36, scope: !2336)
!2352 = !DILocation(line: 0, scope: !2319, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 965, column: 36, scope: !2336)
!2354 = !DILocation(line: 195, column: 26, scope: !2319, inlinedAt: !2353)
!2355 = !DILocation(line: 196, column: 13, scope: !2328, inlinedAt: !2353)
!2356 = !DILocation(line: 196, column: 7, scope: !2319, inlinedAt: !2353)
!2357 = !DILocation(line: 197, column: 5, scope: !2328, inlinedAt: !2353)
!2358 = !DILocation(line: 198, column: 5, scope: !2319, inlinedAt: !2353)
!2359 = !DILocation(line: 198, column: 11, scope: !2319, inlinedAt: !2353)
!2360 = !DILocation(line: 966, column: 10, scope: !2336)
!2361 = !DILocation(line: 967, column: 1, scope: !2336)
!2362 = !DILocation(line: 966, column: 3, scope: !2336)
!2363 = distinct !DISubprogram(name: "quotearg_style", scope: !93, file: !93, line: 970, type: !2364, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!45, !5, !55}
!2366 = !{!2367, !2368}
!2367 = !DILocalVariable(name: "s", arg: 1, scope: !2363, file: !93, line: 970, type: !5)
!2368 = !DILocalVariable(name: "arg", arg: 2, scope: !2363, file: !93, line: 970, type: !55)
!2369 = !DILocation(line: 0, scope: !2363)
!2370 = !DILocation(line: 0, scope: !2303, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 972, column: 10, scope: !2363)
!2372 = !DILocation(line: 957, column: 3, scope: !2303, inlinedAt: !2371)
!2373 = !DILocation(line: 957, column: 32, scope: !2303, inlinedAt: !2371)
!2374 = !{!2375}
!2375 = distinct !{!2375, !2376, !"quoting_options_from_style: argument 0"}
!2376 = distinct !{!2376, !"quoting_options_from_style"}
!2377 = !DILocation(line: 957, column: 36, scope: !2303, inlinedAt: !2371)
!2378 = !DILocation(line: 0, scope: !2319, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 957, column: 36, scope: !2303, inlinedAt: !2371)
!2380 = !DILocation(line: 195, column: 26, scope: !2319, inlinedAt: !2379)
!2381 = !DILocation(line: 196, column: 13, scope: !2328, inlinedAt: !2379)
!2382 = !DILocation(line: 196, column: 7, scope: !2319, inlinedAt: !2379)
!2383 = !DILocation(line: 197, column: 5, scope: !2328, inlinedAt: !2379)
!2384 = !DILocation(line: 198, column: 5, scope: !2319, inlinedAt: !2379)
!2385 = !DILocation(line: 198, column: 11, scope: !2319, inlinedAt: !2379)
!2386 = !DILocation(line: 958, column: 10, scope: !2303, inlinedAt: !2371)
!2387 = !DILocation(line: 959, column: 1, scope: !2303, inlinedAt: !2371)
!2388 = !DILocation(line: 972, column: 3, scope: !2363)
!2389 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !93, file: !93, line: 976, type: !2390, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!45, !5, !55, !117}
!2392 = !{!2393, !2394, !2395}
!2393 = !DILocalVariable(name: "s", arg: 1, scope: !2389, file: !93, line: 976, type: !5)
!2394 = !DILocalVariable(name: "arg", arg: 2, scope: !2389, file: !93, line: 976, type: !55)
!2395 = !DILocalVariable(name: "argsize", arg: 3, scope: !2389, file: !93, line: 976, type: !117)
!2396 = !DILocation(line: 0, scope: !2389)
!2397 = !DILocation(line: 0, scope: !2336, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 978, column: 10, scope: !2389)
!2399 = !DILocation(line: 965, column: 3, scope: !2336, inlinedAt: !2398)
!2400 = !DILocation(line: 965, column: 32, scope: !2336, inlinedAt: !2398)
!2401 = !{!2402}
!2402 = distinct !{!2402, !2403, !"quoting_options_from_style: argument 0"}
!2403 = distinct !{!2403, !"quoting_options_from_style"}
!2404 = !DILocation(line: 965, column: 36, scope: !2336, inlinedAt: !2398)
!2405 = !DILocation(line: 0, scope: !2319, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 965, column: 36, scope: !2336, inlinedAt: !2398)
!2407 = !DILocation(line: 195, column: 26, scope: !2319, inlinedAt: !2406)
!2408 = !DILocation(line: 196, column: 13, scope: !2328, inlinedAt: !2406)
!2409 = !DILocation(line: 196, column: 7, scope: !2319, inlinedAt: !2406)
!2410 = !DILocation(line: 197, column: 5, scope: !2328, inlinedAt: !2406)
!2411 = !DILocation(line: 198, column: 5, scope: !2319, inlinedAt: !2406)
!2412 = !DILocation(line: 198, column: 11, scope: !2319, inlinedAt: !2406)
!2413 = !DILocation(line: 966, column: 10, scope: !2336, inlinedAt: !2398)
!2414 = !DILocation(line: 967, column: 1, scope: !2336, inlinedAt: !2398)
!2415 = !DILocation(line: 978, column: 3, scope: !2389)
!2416 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !93, file: !93, line: 982, type: !2417, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!45, !55, !117, !46}
!2419 = !{!2420, !2421, !2422, !2423}
!2420 = !DILocalVariable(name: "arg", arg: 1, scope: !2416, file: !93, line: 982, type: !55)
!2421 = !DILocalVariable(name: "argsize", arg: 2, scope: !2416, file: !93, line: 982, type: !117)
!2422 = !DILocalVariable(name: "ch", arg: 3, scope: !2416, file: !93, line: 982, type: !46)
!2423 = !DILocalVariable(name: "options", scope: !2416, file: !93, line: 984, type: !129)
!2424 = !DILocation(line: 0, scope: !2416)
!2425 = !DILocation(line: 984, column: 3, scope: !2416)
!2426 = !DILocation(line: 984, column: 26, scope: !2416)
!2427 = !DILocation(line: 985, column: 13, scope: !2416)
!2428 = !{i64 0, i64 4, !914, i64 4, i64 4, !792, i64 8, i64 32, !914, i64 40, i64 8, !636, i64 48, i64 8, !636}
!2429 = !DILocation(line: 0, scope: !1257, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 986, column: 3, scope: !2416)
!2431 = !DILocation(line: 156, column: 62, scope: !1257, inlinedAt: !2430)
!2432 = !DILocation(line: 156, column: 57, scope: !1257, inlinedAt: !2430)
!2433 = !DILocation(line: 157, column: 15, scope: !1257, inlinedAt: !2430)
!2434 = !DILocation(line: 158, column: 12, scope: !1257, inlinedAt: !2430)
!2435 = !DILocation(line: 158, column: 15, scope: !1257, inlinedAt: !2430)
!2436 = !DILocation(line: 158, column: 25, scope: !1257, inlinedAt: !2430)
!2437 = !DILocation(line: 159, column: 18, scope: !1257, inlinedAt: !2430)
!2438 = !DILocation(line: 159, column: 23, scope: !1257, inlinedAt: !2430)
!2439 = !DILocation(line: 159, column: 6, scope: !1257, inlinedAt: !2430)
!2440 = !DILocation(line: 987, column: 10, scope: !2416)
!2441 = !DILocation(line: 988, column: 1, scope: !2416)
!2442 = !DILocation(line: 987, column: 3, scope: !2416)
!2443 = distinct !DISubprogram(name: "quotearg_char", scope: !93, file: !93, line: 991, type: !2444, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!45, !55, !46}
!2446 = !{!2447, !2448}
!2447 = !DILocalVariable(name: "arg", arg: 1, scope: !2443, file: !93, line: 991, type: !55)
!2448 = !DILocalVariable(name: "ch", arg: 2, scope: !2443, file: !93, line: 991, type: !46)
!2449 = !DILocation(line: 0, scope: !2443)
!2450 = !DILocation(line: 0, scope: !2416, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 993, column: 10, scope: !2443)
!2452 = !DILocation(line: 984, column: 3, scope: !2416, inlinedAt: !2451)
!2453 = !DILocation(line: 984, column: 26, scope: !2416, inlinedAt: !2451)
!2454 = !DILocation(line: 985, column: 13, scope: !2416, inlinedAt: !2451)
!2455 = !DILocation(line: 0, scope: !1257, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 986, column: 3, scope: !2416, inlinedAt: !2451)
!2457 = !DILocation(line: 156, column: 62, scope: !1257, inlinedAt: !2456)
!2458 = !DILocation(line: 156, column: 57, scope: !1257, inlinedAt: !2456)
!2459 = !DILocation(line: 157, column: 15, scope: !1257, inlinedAt: !2456)
!2460 = !DILocation(line: 158, column: 12, scope: !1257, inlinedAt: !2456)
!2461 = !DILocation(line: 158, column: 15, scope: !1257, inlinedAt: !2456)
!2462 = !DILocation(line: 158, column: 25, scope: !1257, inlinedAt: !2456)
!2463 = !DILocation(line: 159, column: 18, scope: !1257, inlinedAt: !2456)
!2464 = !DILocation(line: 159, column: 23, scope: !1257, inlinedAt: !2456)
!2465 = !DILocation(line: 159, column: 6, scope: !1257, inlinedAt: !2456)
!2466 = !DILocation(line: 987, column: 10, scope: !2416, inlinedAt: !2451)
!2467 = !DILocation(line: 988, column: 1, scope: !2416, inlinedAt: !2451)
!2468 = !DILocation(line: 993, column: 3, scope: !2443)
!2469 = distinct !DISubprogram(name: "quotearg_colon", scope: !93, file: !93, line: 997, type: !1105, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2470)
!2470 = !{!2471}
!2471 = !DILocalVariable(name: "arg", arg: 1, scope: !2469, file: !93, line: 997, type: !55)
!2472 = !DILocation(line: 0, scope: !2469)
!2473 = !DILocation(line: 0, scope: !2443, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 999, column: 10, scope: !2469)
!2475 = !DILocation(line: 0, scope: !2416, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 993, column: 10, scope: !2443, inlinedAt: !2474)
!2477 = !DILocation(line: 984, column: 3, scope: !2416, inlinedAt: !2476)
!2478 = !DILocation(line: 984, column: 26, scope: !2416, inlinedAt: !2476)
!2479 = !DILocation(line: 985, column: 13, scope: !2416, inlinedAt: !2476)
!2480 = !DILocation(line: 0, scope: !1257, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 986, column: 3, scope: !2416, inlinedAt: !2476)
!2482 = !DILocation(line: 156, column: 57, scope: !1257, inlinedAt: !2481)
!2483 = !DILocation(line: 158, column: 12, scope: !1257, inlinedAt: !2481)
!2484 = !DILocation(line: 159, column: 6, scope: !1257, inlinedAt: !2481)
!2485 = !DILocation(line: 987, column: 10, scope: !2416, inlinedAt: !2476)
!2486 = !DILocation(line: 988, column: 1, scope: !2416, inlinedAt: !2476)
!2487 = !DILocation(line: 999, column: 3, scope: !2469)
!2488 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !93, file: !93, line: 1003, type: !2293, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2489)
!2489 = !{!2490, !2491}
!2490 = !DILocalVariable(name: "arg", arg: 1, scope: !2488, file: !93, line: 1003, type: !55)
!2491 = !DILocalVariable(name: "argsize", arg: 2, scope: !2488, file: !93, line: 1003, type: !117)
!2492 = !DILocation(line: 0, scope: !2488)
!2493 = !DILocation(line: 0, scope: !2416, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 1005, column: 10, scope: !2488)
!2495 = !DILocation(line: 984, column: 3, scope: !2416, inlinedAt: !2494)
!2496 = !DILocation(line: 984, column: 26, scope: !2416, inlinedAt: !2494)
!2497 = !DILocation(line: 985, column: 13, scope: !2416, inlinedAt: !2494)
!2498 = !DILocation(line: 0, scope: !1257, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 986, column: 3, scope: !2416, inlinedAt: !2494)
!2500 = !DILocation(line: 156, column: 57, scope: !1257, inlinedAt: !2499)
!2501 = !DILocation(line: 158, column: 12, scope: !1257, inlinedAt: !2499)
!2502 = !DILocation(line: 159, column: 6, scope: !1257, inlinedAt: !2499)
!2503 = !DILocation(line: 987, column: 10, scope: !2416, inlinedAt: !2494)
!2504 = !DILocation(line: 988, column: 1, scope: !2416, inlinedAt: !2494)
!2505 = !DILocation(line: 1005, column: 3, scope: !2488)
!2506 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !93, file: !93, line: 1009, type: !2304, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2507)
!2507 = !{!2508, !2509, !2510, !2511}
!2508 = !DILocalVariable(name: "n", arg: 1, scope: !2506, file: !93, line: 1009, type: !58)
!2509 = !DILocalVariable(name: "s", arg: 2, scope: !2506, file: !93, line: 1009, type: !5)
!2510 = !DILocalVariable(name: "arg", arg: 3, scope: !2506, file: !93, line: 1009, type: !55)
!2511 = !DILocalVariable(name: "options", scope: !2506, file: !93, line: 1011, type: !129)
!2512 = !DILocation(line: 195, column: 26, scope: !2319, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 1012, column: 13, scope: !2506)
!2514 = !DILocation(line: 0, scope: !2506)
!2515 = !DILocation(line: 1011, column: 3, scope: !2506)
!2516 = !DILocation(line: 1011, column: 26, scope: !2506)
!2517 = !DILocation(line: 1012, column: 13, scope: !2506)
!2518 = !{!2519}
!2519 = distinct !{!2519, !2520, !"quoting_options_from_style: argument 0"}
!2520 = distinct !{!2520, !"quoting_options_from_style"}
!2521 = !DILocation(line: 0, scope: !2319, inlinedAt: !2513)
!2522 = !DILocation(line: 196, column: 13, scope: !2328, inlinedAt: !2513)
!2523 = !DILocation(line: 196, column: 7, scope: !2319, inlinedAt: !2513)
!2524 = !DILocation(line: 197, column: 5, scope: !2328, inlinedAt: !2513)
!2525 = !{i64 0, i64 4, !792, i64 4, i64 32, !914, i64 36, i64 8, !636, i64 44, i64 8, !636}
!2526 = !DILocation(line: 0, scope: !1257, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 1013, column: 3, scope: !2506)
!2528 = !DILocation(line: 156, column: 57, scope: !1257, inlinedAt: !2527)
!2529 = !DILocation(line: 158, column: 12, scope: !1257, inlinedAt: !2527)
!2530 = !DILocation(line: 159, column: 6, scope: !1257, inlinedAt: !2527)
!2531 = !DILocation(line: 1014, column: 10, scope: !2506)
!2532 = !DILocation(line: 1015, column: 1, scope: !2506)
!2533 = !DILocation(line: 1014, column: 3, scope: !2506)
!2534 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !93, file: !93, line: 1018, type: !2535, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!45, !58, !55, !55, !55}
!2537 = !{!2538, !2539, !2540, !2541}
!2538 = !DILocalVariable(name: "n", arg: 1, scope: !2534, file: !93, line: 1018, type: !58)
!2539 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2534, file: !93, line: 1018, type: !55)
!2540 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2534, file: !93, line: 1019, type: !55)
!2541 = !DILocalVariable(name: "arg", arg: 4, scope: !2534, file: !93, line: 1019, type: !55)
!2542 = !DILocation(line: 0, scope: !2534)
!2543 = !DILocalVariable(name: "n", arg: 1, scope: !2544, file: !93, line: 1026, type: !58)
!2544 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !93, file: !93, line: 1026, type: !2545, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!45, !58, !55, !55, !55, !117}
!2547 = !{!2543, !2548, !2549, !2550, !2551, !2552}
!2548 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2544, file: !93, line: 1026, type: !55)
!2549 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2544, file: !93, line: 1027, type: !55)
!2550 = !DILocalVariable(name: "arg", arg: 4, scope: !2544, file: !93, line: 1028, type: !55)
!2551 = !DILocalVariable(name: "argsize", arg: 5, scope: !2544, file: !93, line: 1028, type: !117)
!2552 = !DILocalVariable(name: "o", scope: !2544, file: !93, line: 1030, type: !129)
!2553 = !DILocation(line: 0, scope: !2544, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 1021, column: 10, scope: !2534)
!2555 = !DILocation(line: 1030, column: 3, scope: !2544, inlinedAt: !2554)
!2556 = !DILocation(line: 1030, column: 26, scope: !2544, inlinedAt: !2554)
!2557 = !DILocation(line: 1030, column: 30, scope: !2544, inlinedAt: !2554)
!2558 = !DILocation(line: 0, scope: !1298, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 1031, column: 3, scope: !2544, inlinedAt: !2554)
!2560 = !DILocation(line: 184, column: 6, scope: !1298, inlinedAt: !2559)
!2561 = !DILocation(line: 184, column: 12, scope: !1298, inlinedAt: !2559)
!2562 = !DILocation(line: 185, column: 8, scope: !1312, inlinedAt: !2559)
!2563 = !DILocation(line: 185, column: 19, scope: !1312, inlinedAt: !2559)
!2564 = !DILocation(line: 186, column: 5, scope: !1312, inlinedAt: !2559)
!2565 = !DILocation(line: 187, column: 6, scope: !1298, inlinedAt: !2559)
!2566 = !DILocation(line: 187, column: 17, scope: !1298, inlinedAt: !2559)
!2567 = !DILocation(line: 188, column: 6, scope: !1298, inlinedAt: !2559)
!2568 = !DILocation(line: 188, column: 18, scope: !1298, inlinedAt: !2559)
!2569 = !DILocation(line: 1032, column: 10, scope: !2544, inlinedAt: !2554)
!2570 = !DILocation(line: 1033, column: 1, scope: !2544, inlinedAt: !2554)
!2571 = !DILocation(line: 1021, column: 3, scope: !2534)
!2572 = !DILocation(line: 0, scope: !2544)
!2573 = !DILocation(line: 1030, column: 3, scope: !2544)
!2574 = !DILocation(line: 1030, column: 26, scope: !2544)
!2575 = !DILocation(line: 1030, column: 30, scope: !2544)
!2576 = !DILocation(line: 0, scope: !1298, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 1031, column: 3, scope: !2544)
!2578 = !DILocation(line: 184, column: 6, scope: !1298, inlinedAt: !2577)
!2579 = !DILocation(line: 184, column: 12, scope: !1298, inlinedAt: !2577)
!2580 = !DILocation(line: 185, column: 8, scope: !1312, inlinedAt: !2577)
!2581 = !DILocation(line: 185, column: 19, scope: !1312, inlinedAt: !2577)
!2582 = !DILocation(line: 186, column: 5, scope: !1312, inlinedAt: !2577)
!2583 = !DILocation(line: 187, column: 6, scope: !1298, inlinedAt: !2577)
!2584 = !DILocation(line: 187, column: 17, scope: !1298, inlinedAt: !2577)
!2585 = !DILocation(line: 188, column: 6, scope: !1298, inlinedAt: !2577)
!2586 = !DILocation(line: 188, column: 18, scope: !1298, inlinedAt: !2577)
!2587 = !DILocation(line: 1032, column: 10, scope: !2544)
!2588 = !DILocation(line: 1033, column: 1, scope: !2544)
!2589 = !DILocation(line: 1032, column: 3, scope: !2544)
!2590 = distinct !DISubprogram(name: "quotearg_custom", scope: !93, file: !93, line: 1036, type: !2591, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!45, !55, !55, !55}
!2593 = !{!2594, !2595, !2596}
!2594 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2590, file: !93, line: 1036, type: !55)
!2595 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2590, file: !93, line: 1036, type: !55)
!2596 = !DILocalVariable(name: "arg", arg: 3, scope: !2590, file: !93, line: 1037, type: !55)
!2597 = !DILocation(line: 0, scope: !2590)
!2598 = !DILocation(line: 0, scope: !2534, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 1039, column: 10, scope: !2590)
!2600 = !DILocation(line: 0, scope: !2544, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1021, column: 10, scope: !2534, inlinedAt: !2599)
!2602 = !DILocation(line: 1030, column: 3, scope: !2544, inlinedAt: !2601)
!2603 = !DILocation(line: 1030, column: 26, scope: !2544, inlinedAt: !2601)
!2604 = !DILocation(line: 1030, column: 30, scope: !2544, inlinedAt: !2601)
!2605 = !DILocation(line: 0, scope: !1298, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1031, column: 3, scope: !2544, inlinedAt: !2601)
!2607 = !DILocation(line: 184, column: 6, scope: !1298, inlinedAt: !2606)
!2608 = !DILocation(line: 184, column: 12, scope: !1298, inlinedAt: !2606)
!2609 = !DILocation(line: 185, column: 8, scope: !1312, inlinedAt: !2606)
!2610 = !DILocation(line: 185, column: 19, scope: !1312, inlinedAt: !2606)
!2611 = !DILocation(line: 186, column: 5, scope: !1312, inlinedAt: !2606)
!2612 = !DILocation(line: 187, column: 6, scope: !1298, inlinedAt: !2606)
!2613 = !DILocation(line: 187, column: 17, scope: !1298, inlinedAt: !2606)
!2614 = !DILocation(line: 188, column: 6, scope: !1298, inlinedAt: !2606)
!2615 = !DILocation(line: 188, column: 18, scope: !1298, inlinedAt: !2606)
!2616 = !DILocation(line: 1032, column: 10, scope: !2544, inlinedAt: !2601)
!2617 = !DILocation(line: 1033, column: 1, scope: !2544, inlinedAt: !2601)
!2618 = !DILocation(line: 1039, column: 3, scope: !2590)
!2619 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !93, file: !93, line: 1043, type: !2620, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!45, !55, !55, !55, !117}
!2622 = !{!2623, !2624, !2625, !2626}
!2623 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2619, file: !93, line: 1043, type: !55)
!2624 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2619, file: !93, line: 1043, type: !55)
!2625 = !DILocalVariable(name: "arg", arg: 3, scope: !2619, file: !93, line: 1044, type: !55)
!2626 = !DILocalVariable(name: "argsize", arg: 4, scope: !2619, file: !93, line: 1044, type: !117)
!2627 = !DILocation(line: 0, scope: !2619)
!2628 = !DILocation(line: 0, scope: !2544, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 1046, column: 10, scope: !2619)
!2630 = !DILocation(line: 1030, column: 3, scope: !2544, inlinedAt: !2629)
!2631 = !DILocation(line: 1030, column: 26, scope: !2544, inlinedAt: !2629)
!2632 = !DILocation(line: 1030, column: 30, scope: !2544, inlinedAt: !2629)
!2633 = !DILocation(line: 0, scope: !1298, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 1031, column: 3, scope: !2544, inlinedAt: !2629)
!2635 = !DILocation(line: 184, column: 6, scope: !1298, inlinedAt: !2634)
!2636 = !DILocation(line: 184, column: 12, scope: !1298, inlinedAt: !2634)
!2637 = !DILocation(line: 185, column: 8, scope: !1312, inlinedAt: !2634)
!2638 = !DILocation(line: 185, column: 19, scope: !1312, inlinedAt: !2634)
!2639 = !DILocation(line: 186, column: 5, scope: !1312, inlinedAt: !2634)
!2640 = !DILocation(line: 187, column: 6, scope: !1298, inlinedAt: !2634)
!2641 = !DILocation(line: 187, column: 17, scope: !1298, inlinedAt: !2634)
!2642 = !DILocation(line: 188, column: 6, scope: !1298, inlinedAt: !2634)
!2643 = !DILocation(line: 188, column: 18, scope: !1298, inlinedAt: !2634)
!2644 = !DILocation(line: 1032, column: 10, scope: !2544, inlinedAt: !2629)
!2645 = !DILocation(line: 1033, column: 1, scope: !2544, inlinedAt: !2629)
!2646 = !DILocation(line: 1046, column: 3, scope: !2619)
!2647 = distinct !DISubprogram(name: "quote_n_mem", scope: !93, file: !93, line: 1061, type: !2648, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!55, !58, !55, !117}
!2650 = !{!2651, !2652, !2653}
!2651 = !DILocalVariable(name: "n", arg: 1, scope: !2647, file: !93, line: 1061, type: !58)
!2652 = !DILocalVariable(name: "arg", arg: 2, scope: !2647, file: !93, line: 1061, type: !55)
!2653 = !DILocalVariable(name: "argsize", arg: 3, scope: !2647, file: !93, line: 1061, type: !117)
!2654 = !DILocation(line: 0, scope: !2647)
!2655 = !DILocation(line: 1063, column: 10, scope: !2647)
!2656 = !DILocation(line: 1063, column: 3, scope: !2647)
!2657 = distinct !DISubprogram(name: "quote_mem", scope: !93, file: !93, line: 1067, type: !2658, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!55, !55, !117}
!2660 = !{!2661, !2662}
!2661 = !DILocalVariable(name: "arg", arg: 1, scope: !2657, file: !93, line: 1067, type: !55)
!2662 = !DILocalVariable(name: "argsize", arg: 2, scope: !2657, file: !93, line: 1067, type: !117)
!2663 = !DILocation(line: 0, scope: !2657)
!2664 = !DILocation(line: 0, scope: !2647, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 1069, column: 10, scope: !2657)
!2666 = !DILocation(line: 1063, column: 10, scope: !2647, inlinedAt: !2665)
!2667 = !DILocation(line: 1069, column: 3, scope: !2657)
!2668 = distinct !DISubprogram(name: "quote_n", scope: !93, file: !93, line: 1073, type: !2669, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!55, !58, !55}
!2671 = !{!2672, !2673}
!2672 = !DILocalVariable(name: "n", arg: 1, scope: !2668, file: !93, line: 1073, type: !58)
!2673 = !DILocalVariable(name: "arg", arg: 2, scope: !2668, file: !93, line: 1073, type: !55)
!2674 = !DILocation(line: 0, scope: !2668)
!2675 = !DILocation(line: 0, scope: !2647, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 1075, column: 10, scope: !2668)
!2677 = !DILocation(line: 1063, column: 10, scope: !2647, inlinedAt: !2676)
!2678 = !DILocation(line: 1075, column: 3, scope: !2668)
!2679 = distinct !DISubprogram(name: "quote", scope: !93, file: !93, line: 1079, type: !2680, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!55, !55}
!2682 = !{!2683}
!2683 = !DILocalVariable(name: "arg", arg: 1, scope: !2679, file: !93, line: 1079, type: !55)
!2684 = !DILocation(line: 0, scope: !2679)
!2685 = !DILocation(line: 0, scope: !2668, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1081, column: 10, scope: !2679)
!2687 = !DILocation(line: 0, scope: !2647, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1075, column: 10, scope: !2668, inlinedAt: !2686)
!2689 = !DILocation(line: 1063, column: 10, scope: !2647, inlinedAt: !2688)
!2690 = !DILocation(line: 1081, column: 3, scope: !2679)
!2691 = distinct !DISubprogram(name: "version_etc_arn", scope: !189, file: !189, line: 61, type: !2692, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !2730)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{null, !2694, !55, !55, !55, !2729, !117}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2696, line: 7, baseType: !2697)
!2696 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !708, line: 49, size: 1728, elements: !2698)
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2697, file: !708, line: 51, baseType: !58, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2697, file: !708, line: 54, baseType: !45, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2697, file: !708, line: 55, baseType: !45, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2697, file: !708, line: 56, baseType: !45, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2697, file: !708, line: 57, baseType: !45, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2697, file: !708, line: 58, baseType: !45, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2697, file: !708, line: 59, baseType: !45, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2697, file: !708, line: 60, baseType: !45, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2697, file: !708, line: 61, baseType: !45, size: 64, offset: 512)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2697, file: !708, line: 64, baseType: !45, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2697, file: !708, line: 65, baseType: !45, size: 64, offset: 640)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2697, file: !708, line: 66, baseType: !45, size: 64, offset: 704)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2697, file: !708, line: 68, baseType: !723, size: 64, offset: 768)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2697, file: !708, line: 70, baseType: !2713, size: 64, offset: 832)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2697, file: !708, line: 72, baseType: !58, size: 32, offset: 896)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2697, file: !708, line: 73, baseType: !58, size: 32, offset: 928)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2697, file: !708, line: 74, baseType: !729, size: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2697, file: !708, line: 77, baseType: !116, size: 16, offset: 1024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2697, file: !708, line: 78, baseType: !734, size: 8, offset: 1040)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2697, file: !708, line: 79, baseType: !736, size: 8, offset: 1048)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2697, file: !708, line: 81, baseType: !740, size: 64, offset: 1088)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2697, file: !708, line: 89, baseType: !743, size: 64, offset: 1152)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2697, file: !708, line: 91, baseType: !745, size: 64, offset: 1216)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2697, file: !708, line: 92, baseType: !748, size: 64, offset: 1280)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2697, file: !708, line: 93, baseType: !2713, size: 64, offset: 1344)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2697, file: !708, line: 94, baseType: !47, size: 64, offset: 1408)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2697, file: !708, line: 95, baseType: !117, size: 64, offset: 1472)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2697, file: !708, line: 96, baseType: !58, size: 32, offset: 1536)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2697, file: !708, line: 98, baseType: !755, size: 160, offset: 1568)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2736}
!2731 = !DILocalVariable(name: "stream", arg: 1, scope: !2691, file: !189, line: 61, type: !2694)
!2732 = !DILocalVariable(name: "command_name", arg: 2, scope: !2691, file: !189, line: 62, type: !55)
!2733 = !DILocalVariable(name: "package", arg: 3, scope: !2691, file: !189, line: 62, type: !55)
!2734 = !DILocalVariable(name: "version", arg: 4, scope: !2691, file: !189, line: 63, type: !55)
!2735 = !DILocalVariable(name: "authors", arg: 5, scope: !2691, file: !189, line: 64, type: !2729)
!2736 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2691, file: !189, line: 64, type: !117)
!2737 = !DILocation(line: 0, scope: !2691)
!2738 = !DILocation(line: 66, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2691, file: !189, line: 66, column: 7)
!2740 = !DILocation(line: 66, column: 7, scope: !2691)
!2741 = !DILocation(line: 67, column: 5, scope: !2739)
!2742 = !DILocation(line: 69, column: 5, scope: !2739)
!2743 = !DILocation(line: 83, column: 3, scope: !2691)
!2744 = !DILocation(line: 85, column: 3, scope: !2691)
!2745 = !DILocation(line: 88, column: 3, scope: !2691)
!2746 = !DILocation(line: 95, column: 3, scope: !2691)
!2747 = !DILocation(line: 97, column: 3, scope: !2691)
!2748 = !DILocation(line: 105, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2691, file: !189, line: 98, column: 5)
!2750 = !DILocation(line: 106, column: 7, scope: !2749)
!2751 = !DILocation(line: 109, column: 7, scope: !2749)
!2752 = !DILocation(line: 110, column: 7, scope: !2749)
!2753 = !DILocation(line: 113, column: 7, scope: !2749)
!2754 = !DILocation(line: 115, column: 7, scope: !2749)
!2755 = !DILocation(line: 120, column: 7, scope: !2749)
!2756 = !DILocation(line: 122, column: 7, scope: !2749)
!2757 = !DILocation(line: 127, column: 7, scope: !2749)
!2758 = !DILocation(line: 129, column: 7, scope: !2749)
!2759 = !DILocation(line: 134, column: 7, scope: !2749)
!2760 = !DILocation(line: 137, column: 7, scope: !2749)
!2761 = !DILocation(line: 142, column: 7, scope: !2749)
!2762 = !DILocation(line: 145, column: 7, scope: !2749)
!2763 = !DILocation(line: 150, column: 7, scope: !2749)
!2764 = !DILocation(line: 154, column: 7, scope: !2749)
!2765 = !DILocation(line: 159, column: 7, scope: !2749)
!2766 = !DILocation(line: 163, column: 7, scope: !2749)
!2767 = !DILocation(line: 170, column: 7, scope: !2749)
!2768 = !DILocation(line: 174, column: 7, scope: !2749)
!2769 = !DILocation(line: 176, column: 1, scope: !2691)
!2770 = distinct !DISubprogram(name: "version_etc_ar", scope: !189, file: !189, line: 183, type: !2771, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !2694, !55, !55, !55, !2729}
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779}
!2774 = !DILocalVariable(name: "stream", arg: 1, scope: !2770, file: !189, line: 183, type: !2694)
!2775 = !DILocalVariable(name: "command_name", arg: 2, scope: !2770, file: !189, line: 184, type: !55)
!2776 = !DILocalVariable(name: "package", arg: 3, scope: !2770, file: !189, line: 184, type: !55)
!2777 = !DILocalVariable(name: "version", arg: 4, scope: !2770, file: !189, line: 185, type: !55)
!2778 = !DILocalVariable(name: "authors", arg: 5, scope: !2770, file: !189, line: 185, type: !2729)
!2779 = !DILocalVariable(name: "n_authors", scope: !2770, file: !189, line: 187, type: !117)
!2780 = !DILocation(line: 0, scope: !2770)
!2781 = !DILocation(line: 189, column: 8, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2770, file: !189, line: 189, column: 3)
!2783 = !DILocation(line: 0, scope: !2782)
!2784 = !DILocation(line: 189, column: 23, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !189, line: 189, column: 3)
!2786 = !DILocation(line: 189, column: 3, scope: !2782)
!2787 = !DILocation(line: 189, column: 52, scope: !2785)
!2788 = distinct !{!2788, !2786, !2789, !678}
!2789 = !DILocation(line: 190, column: 5, scope: !2782)
!2790 = !DILocation(line: 191, column: 3, scope: !2770)
!2791 = !DILocation(line: 192, column: 1, scope: !2770)
!2792 = distinct !DISubprogram(name: "version_etc_va", scope: !189, file: !189, line: 199, type: !2793, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !2802)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !2694, !55, !55, !55, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2797)
!2797 = !{!2798, !2799, !2800, !2801}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2796, file: !189, line: 192, baseType: !7, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2796, file: !189, line: 192, baseType: !7, size: 32, offset: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2796, file: !189, line: 192, baseType: !47, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2796, file: !189, line: 192, baseType: !47, size: 64, offset: 128)
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808, !2809}
!2803 = !DILocalVariable(name: "stream", arg: 1, scope: !2792, file: !189, line: 199, type: !2694)
!2804 = !DILocalVariable(name: "command_name", arg: 2, scope: !2792, file: !189, line: 200, type: !55)
!2805 = !DILocalVariable(name: "package", arg: 3, scope: !2792, file: !189, line: 200, type: !55)
!2806 = !DILocalVariable(name: "version", arg: 4, scope: !2792, file: !189, line: 201, type: !55)
!2807 = !DILocalVariable(name: "authors", arg: 5, scope: !2792, file: !189, line: 201, type: !2795)
!2808 = !DILocalVariable(name: "n_authors", scope: !2792, file: !189, line: 203, type: !117)
!2809 = !DILocalVariable(name: "authtab", scope: !2792, file: !189, line: 204, type: !2810)
!2810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 640, elements: !125)
!2811 = !DILocation(line: 0, scope: !2792)
!2812 = !DILocation(line: 204, column: 3, scope: !2792)
!2813 = !DILocation(line: 204, column: 15, scope: !2792)
!2814 = !DILocation(line: 208, column: 35, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !189, line: 206, column: 3)
!2816 = distinct !DILexicalBlock(scope: !2792, file: !189, line: 206, column: 3)
!2817 = !DILocation(line: 208, column: 14, scope: !2815)
!2818 = !DILocation(line: 208, column: 33, scope: !2815)
!2819 = !DILocation(line: 208, column: 67, scope: !2815)
!2820 = !DILocation(line: 206, column: 3, scope: !2816)
!2821 = !DILocation(line: 0, scope: !2816)
!2822 = !DILocation(line: 211, column: 3, scope: !2792)
!2823 = !DILocation(line: 213, column: 1, scope: !2792)
!2824 = distinct !DISubprogram(name: "version_etc", scope: !189, file: !189, line: 230, type: !2825, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2694, !55, !55, !55, null}
!2827 = !{!2828, !2829, !2830, !2831, !2832}
!2828 = !DILocalVariable(name: "stream", arg: 1, scope: !2824, file: !189, line: 230, type: !2694)
!2829 = !DILocalVariable(name: "command_name", arg: 2, scope: !2824, file: !189, line: 231, type: !55)
!2830 = !DILocalVariable(name: "package", arg: 3, scope: !2824, file: !189, line: 231, type: !55)
!2831 = !DILocalVariable(name: "version", arg: 4, scope: !2824, file: !189, line: 232, type: !55)
!2832 = !DILocalVariable(name: "authors", scope: !2824, file: !189, line: 234, type: !2833)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !703, line: 52, baseType: !2834)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2835, line: 32, baseType: !2836)
!2835 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !189, baseType: !2837)
!2837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2796, size: 192, elements: !737)
!2838 = !DILocation(line: 0, scope: !2824)
!2839 = !DILocation(line: 234, column: 3, scope: !2824)
!2840 = !DILocation(line: 234, column: 11, scope: !2824)
!2841 = !DILocation(line: 236, column: 3, scope: !2824)
!2842 = !DILocation(line: 237, column: 3, scope: !2824)
!2843 = !DILocation(line: 238, column: 3, scope: !2824)
!2844 = !DILocation(line: 239, column: 1, scope: !2824)
!2845 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !189, file: !189, line: 242, type: !1112, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !68)
!2846 = !DILocation(line: 244, column: 3, scope: !2845)
!2847 = !DILocation(line: 249, column: 3, scope: !2845)
!2848 = !DILocation(line: 255, column: 3, scope: !2845)
!2849 = !DILocation(line: 260, column: 3, scope: !2845)
!2850 = !DILocation(line: 262, column: 1, scope: !2845)
!2851 = distinct !DISubprogram(name: "xnmalloc", scope: !198, file: !198, line: 99, type: !2852, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!47, !117, !117}
!2854 = !{!2855, !2856}
!2855 = !DILocalVariable(name: "n", arg: 1, scope: !2851, file: !198, line: 99, type: !117)
!2856 = !DILocalVariable(name: "s", arg: 2, scope: !2851, file: !198, line: 99, type: !117)
!2857 = !DILocation(line: 0, scope: !2851)
!2858 = !DILocation(line: 101, column: 7, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2851, file: !198, line: 101, column: 7)
!2860 = !DILocation(line: 101, column: 7, scope: !2851)
!2861 = !DILocation(line: 102, column: 5, scope: !2859)
!2862 = !DILocation(line: 103, column: 21, scope: !2851)
!2863 = !DILocalVariable(name: "n", arg: 1, scope: !2864, file: !195, line: 39, type: !117)
!2864 = distinct !DISubprogram(name: "xmalloc", scope: !195, file: !195, line: 39, type: !2865, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!47, !117}
!2867 = !{!2863, !2868}
!2868 = !DILocalVariable(name: "p", scope: !2864, file: !195, line: 41, type: !47)
!2869 = !DILocation(line: 0, scope: !2864, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 103, column: 10, scope: !2851)
!2871 = !DILocation(line: 41, column: 13, scope: !2864, inlinedAt: !2870)
!2872 = !DILocation(line: 42, column: 8, scope: !2873, inlinedAt: !2870)
!2873 = distinct !DILexicalBlock(scope: !2864, file: !195, line: 42, column: 7)
!2874 = !DILocation(line: 42, column: 10, scope: !2873, inlinedAt: !2870)
!2875 = !DILocation(line: 43, column: 5, scope: !2873, inlinedAt: !2870)
!2876 = !DILocation(line: 103, column: 3, scope: !2851)
!2877 = !DILocation(line: 0, scope: !2864)
!2878 = !DILocation(line: 41, column: 13, scope: !2864)
!2879 = !DILocation(line: 42, column: 8, scope: !2873)
!2880 = !DILocation(line: 42, column: 10, scope: !2873)
!2881 = !DILocation(line: 43, column: 5, scope: !2873)
!2882 = !DILocation(line: 44, column: 3, scope: !2864)
!2883 = distinct !DISubprogram(name: "xnrealloc", scope: !198, file: !198, line: 112, type: !2884, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!47, !47, !117, !117}
!2886 = !{!2887, !2888, !2889}
!2887 = !DILocalVariable(name: "p", arg: 1, scope: !2883, file: !198, line: 112, type: !47)
!2888 = !DILocalVariable(name: "n", arg: 2, scope: !2883, file: !198, line: 112, type: !117)
!2889 = !DILocalVariable(name: "s", arg: 3, scope: !2883, file: !198, line: 112, type: !117)
!2890 = !DILocation(line: 0, scope: !2883)
!2891 = !DILocation(line: 114, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2883, file: !198, line: 114, column: 7)
!2893 = !DILocation(line: 114, column: 7, scope: !2883)
!2894 = !DILocation(line: 115, column: 5, scope: !2892)
!2895 = !DILocation(line: 116, column: 25, scope: !2883)
!2896 = !DILocalVariable(name: "p", arg: 1, scope: !2897, file: !195, line: 51, type: !47)
!2897 = distinct !DISubprogram(name: "xrealloc", scope: !195, file: !195, line: 51, type: !2898, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!47, !47, !117}
!2900 = !{!2896, !2901}
!2901 = !DILocalVariable(name: "n", arg: 2, scope: !2897, file: !195, line: 51, type: !117)
!2902 = !DILocation(line: 0, scope: !2897, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 116, column: 10, scope: !2883)
!2904 = !DILocation(line: 53, column: 8, scope: !2905, inlinedAt: !2903)
!2905 = distinct !DILexicalBlock(scope: !2897, file: !195, line: 53, column: 7)
!2906 = !DILocation(line: 53, column: 10, scope: !2905, inlinedAt: !2903)
!2907 = !DILocation(line: 57, column: 7, scope: !2908, inlinedAt: !2903)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !195, line: 54, column: 5)
!2909 = !DILocation(line: 58, column: 7, scope: !2908, inlinedAt: !2903)
!2910 = !DILocation(line: 61, column: 7, scope: !2897, inlinedAt: !2903)
!2911 = !DILocation(line: 62, column: 8, scope: !2912, inlinedAt: !2903)
!2912 = distinct !DILexicalBlock(scope: !2897, file: !195, line: 62, column: 7)
!2913 = !DILocation(line: 62, column: 10, scope: !2912, inlinedAt: !2903)
!2914 = !DILocation(line: 63, column: 5, scope: !2912, inlinedAt: !2903)
!2915 = !DILocation(line: 116, column: 3, scope: !2883)
!2916 = !DILocation(line: 0, scope: !2897)
!2917 = !DILocation(line: 53, column: 8, scope: !2905)
!2918 = !DILocation(line: 53, column: 10, scope: !2905)
!2919 = !DILocation(line: 57, column: 7, scope: !2908)
!2920 = !DILocation(line: 58, column: 7, scope: !2908)
!2921 = !DILocation(line: 61, column: 7, scope: !2897)
!2922 = !DILocation(line: 62, column: 8, scope: !2912)
!2923 = !DILocation(line: 62, column: 10, scope: !2912)
!2924 = !DILocation(line: 63, column: 5, scope: !2912)
!2925 = !DILocation(line: 65, column: 1, scope: !2897)
!2926 = !DILocation(line: 0, scope: !199)
!2927 = !DILocation(line: 176, column: 14, scope: !199)
!2928 = !DILocation(line: 178, column: 9, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !199, file: !198, line: 178, column: 7)
!2930 = !DILocation(line: 178, column: 7, scope: !199)
!2931 = !DILocation(line: 180, column: 13, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !198, line: 180, column: 11)
!2933 = distinct !DILexicalBlock(scope: !2929, file: !198, line: 179, column: 5)
!2934 = !DILocation(line: 180, column: 11, scope: !2933)
!2935 = !DILocation(line: 188, column: 30, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2932, file: !198, line: 181, column: 9)
!2937 = !DILocation(line: 189, column: 16, scope: !2936)
!2938 = !DILocation(line: 189, column: 13, scope: !2936)
!2939 = !DILocation(line: 190, column: 9, scope: !2936)
!2940 = !DILocation(line: 191, column: 11, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2933, file: !198, line: 191, column: 11)
!2942 = !DILocation(line: 191, column: 11, scope: !2933)
!2943 = !DILocation(line: 206, column: 7, scope: !199)
!2944 = !DILocation(line: 207, column: 25, scope: !199)
!2945 = !DILocation(line: 0, scope: !2897, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 207, column: 10, scope: !199)
!2947 = !DILocation(line: 53, column: 10, scope: !2905, inlinedAt: !2946)
!2948 = !DILocation(line: 192, column: 9, scope: !2941)
!2949 = !DILocation(line: 200, column: 69, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !198, line: 200, column: 11)
!2951 = distinct !DILexicalBlock(scope: !2929, file: !198, line: 195, column: 5)
!2952 = !DILocation(line: 201, column: 11, scope: !2950)
!2953 = !DILocation(line: 200, column: 11, scope: !2951)
!2954 = !DILocation(line: 202, column: 9, scope: !2950)
!2955 = !DILocation(line: 203, column: 14, scope: !2951)
!2956 = !DILocation(line: 203, column: 18, scope: !2951)
!2957 = !DILocation(line: 203, column: 9, scope: !2951)
!2958 = !DILocation(line: 53, column: 8, scope: !2905, inlinedAt: !2946)
!2959 = !DILocation(line: 57, column: 7, scope: !2908, inlinedAt: !2946)
!2960 = !DILocation(line: 58, column: 7, scope: !2908, inlinedAt: !2946)
!2961 = !DILocation(line: 61, column: 7, scope: !2897, inlinedAt: !2946)
!2962 = !DILocation(line: 62, column: 8, scope: !2912, inlinedAt: !2946)
!2963 = !DILocation(line: 62, column: 10, scope: !2912, inlinedAt: !2946)
!2964 = !DILocation(line: 63, column: 5, scope: !2912, inlinedAt: !2946)
!2965 = !DILocation(line: 207, column: 3, scope: !199)
!2966 = distinct !DISubprogram(name: "xcharalloc", scope: !198, file: !198, line: 216, type: !2102, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !2967)
!2967 = !{!2968}
!2968 = !DILocalVariable(name: "n", arg: 1, scope: !2966, file: !198, line: 216, type: !117)
!2969 = !DILocation(line: 0, scope: !2966)
!2970 = !DILocation(line: 0, scope: !2864, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 218, column: 10, scope: !2966)
!2972 = !DILocation(line: 41, column: 13, scope: !2864, inlinedAt: !2971)
!2973 = !DILocation(line: 42, column: 8, scope: !2873, inlinedAt: !2971)
!2974 = !DILocation(line: 42, column: 10, scope: !2873, inlinedAt: !2971)
!2975 = !DILocation(line: 43, column: 5, scope: !2873, inlinedAt: !2971)
!2976 = !DILocation(line: 218, column: 3, scope: !2966)
!2977 = distinct !DISubprogram(name: "x2realloc", scope: !195, file: !195, line: 74, type: !2978, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!47, !47, !202}
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "p", arg: 1, scope: !2977, file: !195, line: 74, type: !47)
!2982 = !DILocalVariable(name: "pn", arg: 2, scope: !2977, file: !195, line: 74, type: !202)
!2983 = !DILocation(line: 0, scope: !2977)
!2984 = !DILocation(line: 0, scope: !199, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 76, column: 10, scope: !2977)
!2986 = !DILocation(line: 176, column: 14, scope: !199, inlinedAt: !2985)
!2987 = !DILocation(line: 178, column: 9, scope: !2929, inlinedAt: !2985)
!2988 = !DILocation(line: 178, column: 7, scope: !199, inlinedAt: !2985)
!2989 = !DILocation(line: 180, column: 13, scope: !2932, inlinedAt: !2985)
!2990 = !DILocation(line: 180, column: 11, scope: !2933, inlinedAt: !2985)
!2991 = !DILocation(line: 191, column: 11, scope: !2941, inlinedAt: !2985)
!2992 = !DILocation(line: 191, column: 11, scope: !2933, inlinedAt: !2985)
!2993 = !DILocation(line: 192, column: 9, scope: !2941, inlinedAt: !2985)
!2994 = !DILocation(line: 201, column: 11, scope: !2950, inlinedAt: !2985)
!2995 = !DILocation(line: 200, column: 11, scope: !2951, inlinedAt: !2985)
!2996 = !DILocation(line: 202, column: 9, scope: !2950, inlinedAt: !2985)
!2997 = !DILocation(line: 203, column: 14, scope: !2951, inlinedAt: !2985)
!2998 = !DILocation(line: 203, column: 18, scope: !2951, inlinedAt: !2985)
!2999 = !DILocation(line: 203, column: 9, scope: !2951, inlinedAt: !2985)
!3000 = !DILocation(line: 0, scope: !2897, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 207, column: 10, scope: !199, inlinedAt: !2985)
!3002 = !DILocation(line: 53, column: 10, scope: !2905, inlinedAt: !3001)
!3003 = !DILocation(line: 206, column: 7, scope: !199, inlinedAt: !2985)
!3004 = !DILocation(line: 61, column: 7, scope: !2897, inlinedAt: !3001)
!3005 = !DILocation(line: 62, column: 8, scope: !2912, inlinedAt: !3001)
!3006 = !DILocation(line: 62, column: 10, scope: !2912, inlinedAt: !3001)
!3007 = !DILocation(line: 63, column: 5, scope: !2912, inlinedAt: !3001)
!3008 = !DILocation(line: 76, column: 3, scope: !2977)
!3009 = distinct !DISubprogram(name: "xzalloc", scope: !195, file: !195, line: 84, type: !2865, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !3010)
!3010 = !{!3011}
!3011 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !195, line: 84, type: !117)
!3012 = !DILocation(line: 0, scope: !3009)
!3013 = !DILocalVariable(name: "n", arg: 1, scope: !3014, file: !195, line: 93, type: !117)
!3014 = distinct !DISubprogram(name: "xcalloc", scope: !195, file: !195, line: 93, type: !2852, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !3015)
!3015 = !{!3013, !3016, !3017}
!3016 = !DILocalVariable(name: "s", arg: 2, scope: !3014, file: !195, line: 93, type: !117)
!3017 = !DILocalVariable(name: "p", scope: !3014, file: !195, line: 95, type: !47)
!3018 = !DILocation(line: 0, scope: !3014, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 86, column: 10, scope: !3009)
!3020 = !DILocation(line: 100, column: 7, scope: !3021, inlinedAt: !3019)
!3021 = distinct !DILexicalBlock(scope: !3014, file: !195, line: 100, column: 7)
!3022 = !DILocation(line: 101, column: 7, scope: !3021, inlinedAt: !3019)
!3023 = !DILocation(line: 101, column: 18, scope: !3021, inlinedAt: !3019)
!3024 = !DILocation(line: 101, column: 16, scope: !3021, inlinedAt: !3019)
!3025 = !DILocation(line: 100, column: 7, scope: !3014, inlinedAt: !3019)
!3026 = !DILocation(line: 102, column: 5, scope: !3021, inlinedAt: !3019)
!3027 = !DILocation(line: 86, column: 3, scope: !3009)
!3028 = !DILocation(line: 0, scope: !3014)
!3029 = !DILocation(line: 100, column: 7, scope: !3021)
!3030 = !DILocation(line: 101, column: 7, scope: !3021)
!3031 = !DILocation(line: 101, column: 18, scope: !3021)
!3032 = !DILocation(line: 101, column: 16, scope: !3021)
!3033 = !DILocation(line: 100, column: 7, scope: !3014)
!3034 = !DILocation(line: 102, column: 5, scope: !3021)
!3035 = !DILocation(line: 103, column: 3, scope: !3014)
!3036 = distinct !DISubprogram(name: "xmemdup", scope: !195, file: !195, line: 111, type: !3037, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !3041)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!47, !3039, !117}
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "p", arg: 1, scope: !3036, file: !195, line: 111, type: !3039)
!3043 = !DILocalVariable(name: "s", arg: 2, scope: !3036, file: !195, line: 111, type: !117)
!3044 = !DILocation(line: 0, scope: !3036)
!3045 = !DILocation(line: 0, scope: !2864, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 113, column: 18, scope: !3036)
!3047 = !DILocation(line: 41, column: 13, scope: !2864, inlinedAt: !3046)
!3048 = !DILocation(line: 42, column: 8, scope: !2873, inlinedAt: !3046)
!3049 = !DILocation(line: 42, column: 10, scope: !2873, inlinedAt: !3046)
!3050 = !DILocation(line: 43, column: 5, scope: !2873, inlinedAt: !3046)
!3051 = !DILocalVariable(name: "__dest", arg: 1, scope: !3052, file: !1629, line: 26, type: !3055)
!3052 = distinct !DISubprogram(name: "memcpy", scope: !1629, file: !1629, line: 26, type: !3053, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !3057)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!47, !3055, !3056, !117}
!3055 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!3056 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3039)
!3057 = !{!3051, !3058, !3059}
!3058 = !DILocalVariable(name: "__src", arg: 2, scope: !3052, file: !1629, line: 26, type: !3056)
!3059 = !DILocalVariable(name: "__len", arg: 3, scope: !3052, file: !1629, line: 26, type: !117)
!3060 = !DILocation(line: 0, scope: !3052, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 113, column: 10, scope: !3036)
!3062 = !DILocation(line: 29, column: 10, scope: !3052, inlinedAt: !3061)
!3063 = !DILocation(line: 113, column: 3, scope: !3036)
!3064 = distinct !DISubprogram(name: "xstrdup", scope: !195, file: !195, line: 119, type: !1105, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !3065)
!3065 = !{!3066}
!3066 = !DILocalVariable(name: "string", arg: 1, scope: !3064, file: !195, line: 119, type: !55)
!3067 = !DILocation(line: 0, scope: !3064)
!3068 = !DILocation(line: 121, column: 27, scope: !3064)
!3069 = !DILocation(line: 121, column: 43, scope: !3064)
!3070 = !DILocation(line: 0, scope: !3036, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 121, column: 10, scope: !3064)
!3072 = !DILocation(line: 0, scope: !2864, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 113, column: 18, scope: !3036, inlinedAt: !3071)
!3074 = !DILocation(line: 41, column: 13, scope: !2864, inlinedAt: !3073)
!3075 = !DILocation(line: 42, column: 8, scope: !2873, inlinedAt: !3073)
!3076 = !DILocation(line: 42, column: 10, scope: !2873, inlinedAt: !3073)
!3077 = !DILocation(line: 43, column: 5, scope: !2873, inlinedAt: !3073)
!3078 = !DILocation(line: 0, scope: !3052, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 113, column: 10, scope: !3036, inlinedAt: !3071)
!3080 = !DILocation(line: 29, column: 10, scope: !3052, inlinedAt: !3079)
!3081 = !DILocation(line: 121, column: 3, scope: !3064)
!3082 = distinct !DISubprogram(name: "xalloc_die", scope: !212, file: !212, line: 32, type: !1112, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !68)
!3083 = !DILocation(line: 34, column: 10, scope: !3082)
!3084 = !DILocation(line: 34, column: 33, scope: !3082)
!3085 = !DILocation(line: 34, column: 3, scope: !3082)
!3086 = !DILocation(line: 40, column: 3, scope: !3082)
!3087 = distinct !DISubprogram(name: "rpl_calloc", scope: !214, file: !214, line: 42, type: !2852, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3088)
!3088 = !{!3089, !3090, !3091, !3092}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !214, line: 42, type: !117)
!3090 = !DILocalVariable(name: "s", arg: 2, scope: !3087, file: !214, line: 42, type: !117)
!3091 = !DILocalVariable(name: "result", scope: !3087, file: !214, line: 44, type: !47)
!3092 = !DILocalVariable(name: "bytes", scope: !3093, file: !214, line: 56, type: !117)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !214, line: 53, column: 5)
!3094 = distinct !DILexicalBlock(scope: !3087, file: !214, line: 47, column: 7)
!3095 = !DILocation(line: 0, scope: !3087)
!3096 = !DILocation(line: 47, column: 9, scope: !3094)
!3097 = !DILocation(line: 47, column: 14, scope: !3094)
!3098 = !DILocation(line: 0, scope: !3093)
!3099 = !DILocation(line: 57, column: 21, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3093, file: !214, line: 57, column: 11)
!3101 = !DILocation(line: 57, column: 11, scope: !3093)
!3102 = !DILocation(line: 59, column: 11, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !214, line: 58, column: 9)
!3104 = !DILocation(line: 59, column: 17, scope: !3103)
!3105 = !DILocation(line: 65, column: 12, scope: !3087)
!3106 = !DILocation(line: 72, column: 3, scope: !3087)
!3107 = !DILocation(line: 73, column: 1, scope: !3087)
!3108 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !172, file: !172, line: 27, type: !3109, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3112)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!117, !55, !117, !3111}
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!3112 = !{!3113, !3114, !3115}
!3113 = !DILocalVariable(name: "s", arg: 1, scope: !3108, file: !172, line: 27, type: !55)
!3114 = !DILocalVariable(name: "n", arg: 2, scope: !3108, file: !172, line: 27, type: !117)
!3115 = !DILocalVariable(name: "ps", arg: 3, scope: !3108, file: !172, line: 27, type: !3111)
!3116 = !DILocation(line: 0, scope: !3108)
!3117 = !DILocation(line: 29, column: 10, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3108, file: !172, line: 29, column: 7)
!3119 = !DILocation(line: 29, column: 7, scope: !3108)
!3120 = !DILocation(line: 31, column: 10, scope: !3108)
!3121 = !DILocation(line: 31, column: 3, scope: !3108)
!3122 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !216, file: !216, line: 86, type: !3123, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3137)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!117, !3125, !55, !117, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !176, line: 6, baseType: !3128)
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !178, line: 21, baseType: !3129)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 13, size: 64, elements: !3130)
!3130 = !{!3131, !3132}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3129, file: !178, line: 15, baseType: !58, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3129, file: !178, line: 20, baseType: !3133, size: 32, offset: 32)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !178, line: 16, size: 32, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3133, file: !178, line: 18, baseType: !7, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3133, file: !178, line: 19, baseType: !187, size: 32)
!3137 = !{!3138, !3139, !3140, !3141, !3142, !3143, !3144}
!3138 = !DILocalVariable(name: "pwc", arg: 1, scope: !3122, file: !216, line: 86, type: !3125)
!3139 = !DILocalVariable(name: "s", arg: 2, scope: !3122, file: !216, line: 86, type: !55)
!3140 = !DILocalVariable(name: "n", arg: 3, scope: !3122, file: !216, line: 86, type: !117)
!3141 = !DILocalVariable(name: "ps", arg: 4, scope: !3122, file: !216, line: 86, type: !3126)
!3142 = !DILocalVariable(name: "ret", scope: !3122, file: !216, line: 88, type: !117)
!3143 = !DILocalVariable(name: "wc", scope: !3122, file: !216, line: 89, type: !1398)
!3144 = !DILocalVariable(name: "uc", scope: !3145, file: !216, line: 156, type: !1265)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !216, line: 155, column: 5)
!3146 = distinct !DILexicalBlock(scope: !3122, file: !216, line: 154, column: 7)
!3147 = !DILocation(line: 0, scope: !3122)
!3148 = !DILocation(line: 89, column: 3, scope: !3122)
!3149 = !DILocation(line: 105, column: 9, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3122, file: !216, line: 105, column: 7)
!3151 = !DILocation(line: 105, column: 7, scope: !3122)
!3152 = !DILocation(line: 145, column: 9, scope: !3122)
!3153 = !DILocation(line: 154, column: 19, scope: !3146)
!3154 = !DILocation(line: 154, column: 26, scope: !3146)
!3155 = !DILocation(line: 154, column: 41, scope: !3146)
!3156 = !DILocation(line: 154, column: 7, scope: !3122)
!3157 = !DILocation(line: 156, column: 26, scope: !3145)
!3158 = !DILocation(line: 0, scope: !3145)
!3159 = !DILocation(line: 157, column: 14, scope: !3145)
!3160 = !DILocation(line: 157, column: 12, scope: !3145)
!3161 = !DILocation(line: 163, column: 1, scope: !3122)
!3162 = !DISubprogram(name: "mbrtowc", scope: !2062, file: !2062, line: 296, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!119, !60, !55, !119, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3166 = distinct !DISubprogram(name: "close_stream", scope: !219, file: !219, line: 56, type: !3167, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !3203)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!58, !3169}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2696, line: 7, baseType: !3171)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !708, line: 49, size: 1728, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3171, file: !708, line: 51, baseType: !58, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3171, file: !708, line: 54, baseType: !45, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3171, file: !708, line: 55, baseType: !45, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3171, file: !708, line: 56, baseType: !45, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3171, file: !708, line: 57, baseType: !45, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3171, file: !708, line: 58, baseType: !45, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3171, file: !708, line: 59, baseType: !45, size: 64, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3171, file: !708, line: 60, baseType: !45, size: 64, offset: 448)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3171, file: !708, line: 61, baseType: !45, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3171, file: !708, line: 64, baseType: !45, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3171, file: !708, line: 65, baseType: !45, size: 64, offset: 640)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3171, file: !708, line: 66, baseType: !45, size: 64, offset: 704)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3171, file: !708, line: 68, baseType: !723, size: 64, offset: 768)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3171, file: !708, line: 70, baseType: !3187, size: 64, offset: 832)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3171, file: !708, line: 72, baseType: !58, size: 32, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3171, file: !708, line: 73, baseType: !58, size: 32, offset: 928)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3171, file: !708, line: 74, baseType: !729, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3171, file: !708, line: 77, baseType: !116, size: 16, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3171, file: !708, line: 78, baseType: !734, size: 8, offset: 1040)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3171, file: !708, line: 79, baseType: !736, size: 8, offset: 1048)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3171, file: !708, line: 81, baseType: !740, size: 64, offset: 1088)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3171, file: !708, line: 89, baseType: !743, size: 64, offset: 1152)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3171, file: !708, line: 91, baseType: !745, size: 64, offset: 1216)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3171, file: !708, line: 92, baseType: !748, size: 64, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3171, file: !708, line: 93, baseType: !3187, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3171, file: !708, line: 94, baseType: !47, size: 64, offset: 1408)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3171, file: !708, line: 95, baseType: !117, size: 64, offset: 1472)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3171, file: !708, line: 96, baseType: !58, size: 32, offset: 1536)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3171, file: !708, line: 98, baseType: !755, size: 160, offset: 1568)
!3203 = !{!3204, !3205, !3207, !3208}
!3204 = !DILocalVariable(name: "stream", arg: 1, scope: !3166, file: !219, line: 56, type: !3169)
!3205 = !DILocalVariable(name: "some_pending", scope: !3166, file: !219, line: 58, type: !3206)
!3206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!3207 = !DILocalVariable(name: "prev_fail", scope: !3166, file: !219, line: 59, type: !3206)
!3208 = !DILocalVariable(name: "fclose_fail", scope: !3166, file: !219, line: 60, type: !3206)
!3209 = !DILocation(line: 0, scope: !3166)
!3210 = !DILocation(line: 58, column: 30, scope: !3166)
!3211 = !DILocalVariable(name: "__stream", arg: 1, scope: !3212, file: !3213, line: 135, type: !3169)
!3212 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3213, file: !3213, line: 135, type: !3167, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !3214)
!3213 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3214 = !{!3211}
!3215 = !DILocation(line: 0, scope: !3212, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 59, column: 27, scope: !3166)
!3217 = !DILocation(line: 137, column: 10, scope: !3212, inlinedAt: !3216)
!3218 = !{!3219, !793, i64 0}
!3219 = !{!"_IO_FILE", !793, i64 0, !637, i64 8, !637, i64 16, !637, i64 24, !637, i64 32, !637, i64 40, !637, i64 48, !637, i64 56, !637, i64 64, !637, i64 72, !637, i64 80, !637, i64 88, !637, i64 96, !637, i64 104, !793, i64 112, !793, i64 116, !2138, i64 120, !1621, i64 128, !638, i64 130, !638, i64 131, !637, i64 136, !2138, i64 144, !637, i64 152, !637, i64 160, !637, i64 168, !637, i64 176, !2138, i64 184, !793, i64 192, !638, i64 196}
!3220 = !DILocation(line: 59, column: 43, scope: !3166)
!3221 = !DILocation(line: 60, column: 29, scope: !3166)
!3222 = !DILocation(line: 60, column: 45, scope: !3166)
!3223 = !DILocation(line: 70, column: 17, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3166, file: !219, line: 70, column: 7)
!3225 = !DILocation(line: 58, column: 50, scope: !3166)
!3226 = !DILocation(line: 70, column: 33, scope: !3224)
!3227 = !DILocation(line: 70, column: 53, scope: !3224)
!3228 = !DILocation(line: 70, column: 59, scope: !3224)
!3229 = !DILocation(line: 70, column: 7, scope: !3166)
!3230 = !DILocation(line: 72, column: 11, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3224, file: !219, line: 71, column: 5)
!3232 = !DILocation(line: 73, column: 9, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3231, file: !219, line: 72, column: 11)
!3234 = !DILocation(line: 73, column: 15, scope: !3233)
!3235 = !DILocation(line: 78, column: 1, scope: !3166)
!3236 = distinct !DISubprogram(name: "hard_locale", scope: !221, file: !221, line: 27, type: !3237, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!77, !58}
!3239 = !{!3240, !3241}
!3240 = !DILocalVariable(name: "category", arg: 1, scope: !3236, file: !221, line: 27, type: !58)
!3241 = !DILocalVariable(name: "locale", scope: !3236, file: !221, line: 29, type: !3242)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2056, elements: !3243)
!3243 = !{!3244}
!3244 = !DISubrange(count: 257)
!3245 = !DILocation(line: 0, scope: !3236)
!3246 = !DILocation(line: 29, column: 3, scope: !3236)
!3247 = !DILocation(line: 29, column: 8, scope: !3236)
!3248 = !DILocation(line: 31, column: 7, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3236, file: !221, line: 31, column: 7)
!3250 = !DILocation(line: 31, column: 7, scope: !3236)
!3251 = !DILocation(line: 34, column: 12, scope: !3236)
!3252 = !DILocation(line: 34, column: 38, scope: !3236)
!3253 = !DILocation(line: 34, column: 41, scope: !3236)
!3254 = !DILocation(line: 34, column: 66, scope: !3236)
!3255 = !DILocation(line: 35, column: 1, scope: !3236)
!3256 = distinct !DISubprogram(name: "locale_charset", scope: !223, file: !223, line: 831, type: !3257, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!55}
!3259 = !{!3260}
!3260 = !DILocalVariable(name: "codeset", scope: !3256, file: !223, line: 833, type: !55)
!3261 = !DILocation(line: 847, column: 13, scope: !3256)
!3262 = !DILocation(line: 0, scope: !3256)
!3263 = !DILocation(line: 911, column: 15, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3256, file: !223, line: 911, column: 7)
!3265 = !DILocation(line: 911, column: 7, scope: !3256)
!3266 = !DILocation(line: 1070, column: 13, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !223, line: 1070, column: 13)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !223, line: 1060, column: 7)
!3269 = distinct !DILexicalBlock(scope: !3256, file: !223, line: 1019, column: 3)
!3270 = !DILocation(line: 1070, column: 24, scope: !3267)
!3271 = !DILocation(line: 1070, column: 13, scope: !3268)
!3272 = !DILocation(line: 1158, column: 3, scope: !3256)
!3273 = !DISubprogram(name: "nl_langinfo", scope: !226, file: !226, line: 661, type: !3274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!45, !58}
!3276 = distinct !DISubprogram(name: "setlocale_null_r", scope: !612, file: !612, line: 269, type: !3277, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!58, !58, !45, !117}
!3279 = !{!3280, !3281, !3282}
!3280 = !DILocalVariable(name: "category", arg: 1, scope: !3276, file: !612, line: 269, type: !58)
!3281 = !DILocalVariable(name: "buf", arg: 2, scope: !3276, file: !612, line: 269, type: !45)
!3282 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3276, file: !612, line: 269, type: !117)
!3283 = !DILocation(line: 0, scope: !3276)
!3284 = !DILocalVariable(name: "category", arg: 1, scope: !3285, file: !612, line: 91, type: !58)
!3285 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !612, file: !612, line: 91, type: !3277, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3286)
!3286 = !{!3284, !3287, !3288, !3289, !3290}
!3287 = !DILocalVariable(name: "buf", arg: 2, scope: !3285, file: !612, line: 91, type: !45)
!3288 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3285, file: !612, line: 91, type: !117)
!3289 = !DILocalVariable(name: "result", scope: !3285, file: !612, line: 140, type: !55)
!3290 = !DILocalVariable(name: "length", scope: !3291, file: !612, line: 154, type: !117)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !612, line: 153, column: 5)
!3292 = distinct !DILexicalBlock(scope: !3285, file: !612, line: 142, column: 7)
!3293 = !DILocation(line: 0, scope: !3285, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 274, column: 10, scope: !3276)
!3295 = !DILocalVariable(name: "category", arg: 1, scope: !3296, file: !612, line: 60, type: !58)
!3296 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !612, file: !612, line: 60, type: !3297, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!55, !58}
!3299 = !{!3295, !3300}
!3300 = !DILocalVariable(name: "result", scope: !3296, file: !612, line: 62, type: !55)
!3301 = !DILocation(line: 0, scope: !3296, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 140, column: 24, scope: !3285, inlinedAt: !3294)
!3303 = !DILocation(line: 62, column: 24, scope: !3296, inlinedAt: !3302)
!3304 = !DILocation(line: 142, column: 14, scope: !3292, inlinedAt: !3294)
!3305 = !DILocation(line: 142, column: 7, scope: !3285, inlinedAt: !3294)
!3306 = !DILocation(line: 145, column: 19, scope: !3307, inlinedAt: !3294)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !612, line: 145, column: 11)
!3308 = distinct !DILexicalBlock(scope: !3292, file: !612, line: 143, column: 5)
!3309 = !DILocation(line: 145, column: 11, scope: !3308, inlinedAt: !3294)
!3310 = !DILocation(line: 149, column: 16, scope: !3307, inlinedAt: !3294)
!3311 = !DILocation(line: 149, column: 9, scope: !3307, inlinedAt: !3294)
!3312 = !DILocation(line: 154, column: 23, scope: !3291, inlinedAt: !3294)
!3313 = !DILocation(line: 0, scope: !3291, inlinedAt: !3294)
!3314 = !DILocation(line: 155, column: 18, scope: !3315, inlinedAt: !3294)
!3315 = distinct !DILexicalBlock(scope: !3291, file: !612, line: 155, column: 11)
!3316 = !DILocation(line: 155, column: 11, scope: !3291, inlinedAt: !3294)
!3317 = !DILocation(line: 157, column: 39, scope: !3318, inlinedAt: !3294)
!3318 = distinct !DILexicalBlock(scope: !3315, file: !612, line: 156, column: 9)
!3319 = !DILocalVariable(name: "__dest", arg: 1, scope: !3320, file: !1629, line: 26, type: !3055)
!3320 = distinct !DISubprogram(name: "memcpy", scope: !1629, file: !1629, line: 26, type: !3053, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3321)
!3321 = !{!3319, !3322, !3323}
!3322 = !DILocalVariable(name: "__src", arg: 2, scope: !3320, file: !1629, line: 26, type: !3056)
!3323 = !DILocalVariable(name: "__len", arg: 3, scope: !3320, file: !1629, line: 26, type: !117)
!3324 = !DILocation(line: 0, scope: !3320, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 157, column: 11, scope: !3318, inlinedAt: !3294)
!3326 = !DILocation(line: 29, column: 10, scope: !3320, inlinedAt: !3325)
!3327 = !DILocation(line: 158, column: 11, scope: !3318, inlinedAt: !3294)
!3328 = !DILocation(line: 162, column: 23, scope: !3329, inlinedAt: !3294)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !612, line: 162, column: 15)
!3330 = distinct !DILexicalBlock(scope: !3315, file: !612, line: 161, column: 9)
!3331 = !DILocation(line: 162, column: 15, scope: !3330, inlinedAt: !3294)
!3332 = !DILocation(line: 167, column: 44, scope: !3333, inlinedAt: !3294)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !612, line: 163, column: 13)
!3334 = !DILocation(line: 0, scope: !3320, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 167, column: 15, scope: !3333, inlinedAt: !3294)
!3336 = !DILocation(line: 29, column: 10, scope: !3320, inlinedAt: !3335)
!3337 = !DILocation(line: 168, column: 15, scope: !3333, inlinedAt: !3294)
!3338 = !DILocation(line: 168, column: 32, scope: !3333, inlinedAt: !3294)
!3339 = !DILocation(line: 169, column: 13, scope: !3333, inlinedAt: !3294)
!3340 = !DILocation(line: 0, scope: !3292, inlinedAt: !3294)
!3341 = !DILocation(line: 274, column: 3, scope: !3276)
!3342 = distinct !DISubprogram(name: "setlocale_null", scope: !612, file: !612, line: 301, type: !3297, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3343)
!3343 = !{!3344}
!3344 = !DILocalVariable(name: "category", arg: 1, scope: !3342, file: !612, line: 301, type: !58)
!3345 = !DILocation(line: 0, scope: !3342)
!3346 = !DILocation(line: 0, scope: !3296, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 304, column: 10, scope: !3342)
!3348 = !DILocation(line: 62, column: 24, scope: !3296, inlinedAt: !3347)
!3349 = !DILocation(line: 304, column: 3, scope: !3342)
!3350 = distinct !DISubprogram(name: "rpl_fclose", scope: !614, file: !614, line: 58, type: !3351, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !613, retainedNodes: !3387)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!58, !3353}
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2696, line: 7, baseType: !3355)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !708, line: 49, size: 1728, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3355, file: !708, line: 51, baseType: !58, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3355, file: !708, line: 54, baseType: !45, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3355, file: !708, line: 55, baseType: !45, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3355, file: !708, line: 56, baseType: !45, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3355, file: !708, line: 57, baseType: !45, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3355, file: !708, line: 58, baseType: !45, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3355, file: !708, line: 59, baseType: !45, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3355, file: !708, line: 60, baseType: !45, size: 64, offset: 448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3355, file: !708, line: 61, baseType: !45, size: 64, offset: 512)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3355, file: !708, line: 64, baseType: !45, size: 64, offset: 576)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3355, file: !708, line: 65, baseType: !45, size: 64, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3355, file: !708, line: 66, baseType: !45, size: 64, offset: 704)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3355, file: !708, line: 68, baseType: !723, size: 64, offset: 768)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3355, file: !708, line: 70, baseType: !3371, size: 64, offset: 832)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3355, file: !708, line: 72, baseType: !58, size: 32, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3355, file: !708, line: 73, baseType: !58, size: 32, offset: 928)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3355, file: !708, line: 74, baseType: !729, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3355, file: !708, line: 77, baseType: !116, size: 16, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3355, file: !708, line: 78, baseType: !734, size: 8, offset: 1040)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3355, file: !708, line: 79, baseType: !736, size: 8, offset: 1048)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3355, file: !708, line: 81, baseType: !740, size: 64, offset: 1088)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3355, file: !708, line: 89, baseType: !743, size: 64, offset: 1152)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3355, file: !708, line: 91, baseType: !745, size: 64, offset: 1216)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3355, file: !708, line: 92, baseType: !748, size: 64, offset: 1280)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3355, file: !708, line: 93, baseType: !3371, size: 64, offset: 1344)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3355, file: !708, line: 94, baseType: !47, size: 64, offset: 1408)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3355, file: !708, line: 95, baseType: !117, size: 64, offset: 1472)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3355, file: !708, line: 96, baseType: !58, size: 32, offset: 1536)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3355, file: !708, line: 98, baseType: !755, size: 160, offset: 1568)
!3387 = !{!3388, !3389, !3390, !3391}
!3388 = !DILocalVariable(name: "fp", arg: 1, scope: !3350, file: !614, line: 58, type: !3353)
!3389 = !DILocalVariable(name: "saved_errno", scope: !3350, file: !614, line: 60, type: !58)
!3390 = !DILocalVariable(name: "fd", scope: !3350, file: !614, line: 61, type: !58)
!3391 = !DILocalVariable(name: "result", scope: !3350, file: !614, line: 62, type: !58)
!3392 = !DILocation(line: 0, scope: !3350)
!3393 = !DILocation(line: 65, column: 8, scope: !3350)
!3394 = !DILocation(line: 66, column: 10, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3350, file: !614, line: 66, column: 7)
!3396 = !DILocation(line: 66, column: 7, scope: !3350)
!3397 = !DILocation(line: 67, column: 12, scope: !3395)
!3398 = !DILocation(line: 67, column: 5, scope: !3395)
!3399 = !DILocation(line: 72, column: 9, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3350, file: !614, line: 72, column: 7)
!3401 = !DILocation(line: 72, column: 23, scope: !3400)
!3402 = !DILocation(line: 72, column: 33, scope: !3400)
!3403 = !DILocation(line: 72, column: 26, scope: !3400)
!3404 = !DILocation(line: 72, column: 59, scope: !3400)
!3405 = !DILocation(line: 73, column: 7, scope: !3400)
!3406 = !DILocation(line: 73, column: 10, scope: !3400)
!3407 = !DILocation(line: 72, column: 7, scope: !3350)
!3408 = !DILocation(line: 100, column: 12, scope: !3350)
!3409 = !DILocation(line: 105, column: 7, scope: !3350)
!3410 = !DILocation(line: 74, column: 19, scope: !3400)
!3411 = !DILocation(line: 105, column: 19, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3350, file: !614, line: 105, column: 7)
!3413 = !DILocation(line: 107, column: 13, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3412, file: !614, line: 106, column: 5)
!3415 = !DILocation(line: 109, column: 5, scope: !3414)
!3416 = !DILocation(line: 112, column: 1, scope: !3350)
!3417 = !DISubprogram(name: "fileno", scope: !703, file: !703, line: 785, type: !3418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!58, !3371}
!3420 = !DISubprogram(name: "fclose", scope: !703, file: !703, line: 213, type: !3418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!3421 = !DISubprogram(name: "lseek", scope: !1130, file: !1130, line: 334, type: !3422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!731, !58, !731, !58}
!3424 = distinct !DISubprogram(name: "rpl_fflush", scope: !616, file: !616, line: 129, type: !3425, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3461)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!58, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2696, line: 7, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !708, line: 49, size: 1728, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3429, file: !708, line: 51, baseType: !58, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3429, file: !708, line: 54, baseType: !45, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3429, file: !708, line: 55, baseType: !45, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3429, file: !708, line: 56, baseType: !45, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3429, file: !708, line: 57, baseType: !45, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3429, file: !708, line: 58, baseType: !45, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3429, file: !708, line: 59, baseType: !45, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3429, file: !708, line: 60, baseType: !45, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3429, file: !708, line: 61, baseType: !45, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3429, file: !708, line: 64, baseType: !45, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3429, file: !708, line: 65, baseType: !45, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3429, file: !708, line: 66, baseType: !45, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3429, file: !708, line: 68, baseType: !723, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3429, file: !708, line: 70, baseType: !3445, size: 64, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3429, file: !708, line: 72, baseType: !58, size: 32, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3429, file: !708, line: 73, baseType: !58, size: 32, offset: 928)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3429, file: !708, line: 74, baseType: !729, size: 64, offset: 960)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3429, file: !708, line: 77, baseType: !116, size: 16, offset: 1024)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3429, file: !708, line: 78, baseType: !734, size: 8, offset: 1040)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3429, file: !708, line: 79, baseType: !736, size: 8, offset: 1048)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3429, file: !708, line: 81, baseType: !740, size: 64, offset: 1088)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3429, file: !708, line: 89, baseType: !743, size: 64, offset: 1152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3429, file: !708, line: 91, baseType: !745, size: 64, offset: 1216)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3429, file: !708, line: 92, baseType: !748, size: 64, offset: 1280)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3429, file: !708, line: 93, baseType: !3445, size: 64, offset: 1344)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3429, file: !708, line: 94, baseType: !47, size: 64, offset: 1408)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3429, file: !708, line: 95, baseType: !117, size: 64, offset: 1472)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3429, file: !708, line: 96, baseType: !58, size: 32, offset: 1536)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3429, file: !708, line: 98, baseType: !755, size: 160, offset: 1568)
!3461 = !{!3462}
!3462 = !DILocalVariable(name: "stream", arg: 1, scope: !3424, file: !616, line: 129, type: !3427)
!3463 = !DILocation(line: 0, scope: !3424)
!3464 = !DILocation(line: 150, column: 14, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3424, file: !616, line: 150, column: 7)
!3466 = !DILocation(line: 150, column: 22, scope: !3465)
!3467 = !DILocation(line: 150, column: 27, scope: !3465)
!3468 = !DILocation(line: 150, column: 7, scope: !3424)
!3469 = !DILocation(line: 151, column: 12, scope: !3465)
!3470 = !DILocation(line: 151, column: 5, scope: !3465)
!3471 = !DILocalVariable(name: "fp", arg: 1, scope: !3472, file: !616, line: 41, type: !3427)
!3472 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !616, file: !616, line: 41, type: !3473, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !3427}
!3475 = !{!3471}
!3476 = !DILocation(line: 0, scope: !3472, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 156, column: 3, scope: !3424)
!3478 = !DILocation(line: 43, column: 11, scope: !3479, inlinedAt: !3477)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !616, line: 43, column: 7)
!3480 = !DILocation(line: 43, column: 18, scope: !3479, inlinedAt: !3477)
!3481 = !DILocation(line: 43, column: 7, scope: !3472, inlinedAt: !3477)
!3482 = !DILocation(line: 45, column: 5, scope: !3479, inlinedAt: !3477)
!3483 = !DILocation(line: 158, column: 10, scope: !3424)
!3484 = !DILocation(line: 158, column: 3, scope: !3424)
!3485 = !DILocation(line: 235, column: 1, scope: !3424)
!3486 = !DISubprogram(name: "fflush", scope: !703, file: !703, line: 218, type: !3487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!58, !3445}
!3489 = distinct !DISubprogram(name: "rpl_fseeko", scope: !618, file: !618, line: 28, type: !3490, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !617, retainedNodes: !3527)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!58, !3492, !3526, !58}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2696, line: 7, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !708, line: 49, size: 1728, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3494, file: !708, line: 51, baseType: !58, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3494, file: !708, line: 54, baseType: !45, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3494, file: !708, line: 55, baseType: !45, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3494, file: !708, line: 56, baseType: !45, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3494, file: !708, line: 57, baseType: !45, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3494, file: !708, line: 58, baseType: !45, size: 64, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3494, file: !708, line: 59, baseType: !45, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3494, file: !708, line: 60, baseType: !45, size: 64, offset: 448)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3494, file: !708, line: 61, baseType: !45, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3494, file: !708, line: 64, baseType: !45, size: 64, offset: 576)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3494, file: !708, line: 65, baseType: !45, size: 64, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3494, file: !708, line: 66, baseType: !45, size: 64, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3494, file: !708, line: 68, baseType: !723, size: 64, offset: 768)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3494, file: !708, line: 70, baseType: !3510, size: 64, offset: 832)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3494, file: !708, line: 72, baseType: !58, size: 32, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3494, file: !708, line: 73, baseType: !58, size: 32, offset: 928)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3494, file: !708, line: 74, baseType: !729, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3494, file: !708, line: 77, baseType: !116, size: 16, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3494, file: !708, line: 78, baseType: !734, size: 8, offset: 1040)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3494, file: !708, line: 79, baseType: !736, size: 8, offset: 1048)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3494, file: !708, line: 81, baseType: !740, size: 64, offset: 1088)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3494, file: !708, line: 89, baseType: !743, size: 64, offset: 1152)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3494, file: !708, line: 91, baseType: !745, size: 64, offset: 1216)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3494, file: !708, line: 92, baseType: !748, size: 64, offset: 1280)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3494, file: !708, line: 93, baseType: !3510, size: 64, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3494, file: !708, line: 94, baseType: !47, size: 64, offset: 1408)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3494, file: !708, line: 95, baseType: !117, size: 64, offset: 1472)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3494, file: !708, line: 96, baseType: !58, size: 32, offset: 1536)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3494, file: !708, line: 98, baseType: !755, size: 160, offset: 1568)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !703, line: 63, baseType: !729)
!3527 = !{!3528, !3529, !3530, !3531}
!3528 = !DILocalVariable(name: "fp", arg: 1, scope: !3489, file: !618, line: 28, type: !3492)
!3529 = !DILocalVariable(name: "offset", arg: 2, scope: !3489, file: !618, line: 28, type: !3526)
!3530 = !DILocalVariable(name: "whence", arg: 3, scope: !3489, file: !618, line: 28, type: !58)
!3531 = !DILocalVariable(name: "pos", scope: !3532, file: !618, line: 117, type: !3526)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !618, line: 113, column: 5)
!3533 = distinct !DILexicalBlock(scope: !3489, file: !618, line: 52, column: 7)
!3534 = !DILocation(line: 0, scope: !3489)
!3535 = !DILocation(line: 52, column: 11, scope: !3533)
!3536 = !{!3219, !637, i64 16}
!3537 = !DILocation(line: 52, column: 31, scope: !3533)
!3538 = !{!3219, !637, i64 8}
!3539 = !DILocation(line: 52, column: 24, scope: !3533)
!3540 = !DILocation(line: 53, column: 7, scope: !3533)
!3541 = !DILocation(line: 53, column: 14, scope: !3533)
!3542 = !{!3219, !637, i64 40}
!3543 = !DILocation(line: 53, column: 35, scope: !3533)
!3544 = !{!3219, !637, i64 32}
!3545 = !DILocation(line: 53, column: 28, scope: !3533)
!3546 = !DILocation(line: 54, column: 7, scope: !3533)
!3547 = !DILocation(line: 54, column: 14, scope: !3533)
!3548 = !{!3219, !637, i64 72}
!3549 = !DILocation(line: 54, column: 28, scope: !3533)
!3550 = !DILocation(line: 52, column: 7, scope: !3489)
!3551 = !DILocation(line: 117, column: 26, scope: !3532)
!3552 = !DILocation(line: 117, column: 19, scope: !3532)
!3553 = !DILocation(line: 0, scope: !3532)
!3554 = !DILocation(line: 118, column: 15, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3532, file: !618, line: 118, column: 11)
!3556 = !DILocation(line: 118, column: 11, scope: !3532)
!3557 = !DILocation(line: 129, column: 11, scope: !3532)
!3558 = !DILocation(line: 129, column: 18, scope: !3532)
!3559 = !DILocation(line: 130, column: 11, scope: !3532)
!3560 = !DILocation(line: 130, column: 19, scope: !3532)
!3561 = !{!3219, !2138, i64 144}
!3562 = !DILocation(line: 161, column: 7, scope: !3532)
!3563 = !DILocation(line: 163, column: 10, scope: !3489)
!3564 = !DILocation(line: 163, column: 3, scope: !3489)
!3565 = !DILocation(line: 164, column: 1, scope: !3489)
!3566 = !DISubprogram(name: "fseeko", scope: !703, file: !703, line: 712, type: !3567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!58, !3510, !731, !58}
