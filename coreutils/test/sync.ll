; ModuleID = 'coreutils-8.32/src/sync.bc'
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
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION] [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [137 x i8] c"Synchronize cached writes to persistent storage\0A\0AIf one or more files are specified, sync only them,\0Aor their containing file systems.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"  -d, --data             sync only file data, no unneeded metadata\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"  -f, --file-system      sync the file systems that contain the files\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@long_options = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"cannot specify both --data and --file-system\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"--data needs at least one argument\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"couldn't reset non-blocking mode %s\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"error syncing %s\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !46
@.str.38 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !52
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !57
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.44 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !60
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !66
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !72
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !103
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !109
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !121
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !128
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !135
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !123
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !137
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.80 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.81 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.99 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.100 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !143
@.str.1.111 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !151
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !607 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !611, metadata !DIExpression()), !dbg !612
  %3 = icmp eq i32 %0, 0, !dbg !613
  br i1 %3, label %9, label %4, !dbg !615

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !616, !tbaa !618
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !616
  %7 = load i8*, i8** @program_name, align 8, !dbg !616, !tbaa !618
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !616
  br label %64, !dbg !616

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !622
  %11 = load i8*, i8** @program_name, align 8, !dbg !622, !tbaa !618
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #25, !dbg !622
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !624
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !618
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !624
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !625
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !625, !tbaa !618
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !625
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !626
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !618
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !626
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #25, !dbg !627
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !618
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !627
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #25, !dbg !628
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !618
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !628
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), metadata !629, metadata !DIExpression()) #25, !dbg !648
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !650
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #25, !dbg !650
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !635, metadata !DIExpression()) #25, !dbg !651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !651
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), metadata !644, metadata !DIExpression()) #25, !dbg !648
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !645, metadata !DIExpression()) #25, !dbg !648
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !652
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !645, metadata !DIExpression()) #25, !dbg !648
  br label %30, !dbg !653

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !645, metadata !DIExpression()) #25, !dbg !648
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #26, !dbg !654
  %34 = icmp eq i32 %33, 0, !dbg !654
  br i1 %34, label %40, label %35, !dbg !653

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !655
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !645, metadata !DIExpression()) #25, !dbg !648
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !656
  %38 = load i8*, i8** %37, align 8, !dbg !656, !tbaa !657
  %39 = icmp eq i8* %38, null, !dbg !659
  br i1 %39, label %40, label %30, !dbg !660, !llvm.loop !661

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !663
  %43 = load i8*, i8** %42, align 8, !dbg !663, !tbaa !665
  %44 = icmp eq i8* %43, null, !dbg !666
  %45 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !667
  call void @llvm.dbg.value(metadata i8* %45, metadata !644, metadata !DIExpression()) #25, !dbg !648
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #25, !dbg !668
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #25, !dbg !668
  %48 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !669
  call void @llvm.dbg.value(metadata i8* %48, metadata !647, metadata !DIExpression()) #25, !dbg !648
  %49 = icmp eq i8* %48, null, !dbg !670
  br i1 %49, label %57, label %50, !dbg !672

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #26, !dbg !673
  %52 = icmp eq i32 %51, 0, !dbg !673
  br i1 %52, label %57, label %53, !dbg !674

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #25, !dbg !675
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !675, !tbaa !618
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #25, !dbg !675
  br label %57, !dbg !677

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #25, !dbg !678
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #25, !dbg !678
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #25, !dbg !679
  %61 = icmp eq i8* %45, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), !dbg !679
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !679
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #25, !dbg !679
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #25, !dbg !680
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #27, !dbg !681
  unreachable, !dbg !681
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !682 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !686 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !742 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !746 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !751, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i8** %1, metadata !752, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i8 0, metadata !755, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i8 0, metadata !756, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i8 1, metadata !758, metadata !DIExpression()), !dbg !759
  %3 = load i8*, i8** %1, align 8, !dbg !760, !tbaa !618
  tail call void @set_program_name(i8* %3) #25, !dbg !761
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #25, !dbg !762
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #25, !dbg !763
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #25, !dbg !764
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !765
  br label %8, !dbg !766

8:                                                ; preds = %12, %2
  %9 = phi i1 [ true, %2 ], [ false, %12 ]
  %10 = phi i8 [ 0, %2 ], [ 1, %12 ]
  %11 = phi i8 [ 0, %2 ], [ %13, %12 ]
  br label %12, !dbg !766

12:                                               ; preds = %12, %8
  %13 = phi i8 [ %11, %8 ], [ 1, %12 ], !dbg !759
  call void @llvm.dbg.value(metadata i8 %13, metadata !756, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i8 %10, metadata !755, metadata !DIExpression()), !dbg !759
  %14 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #25, !dbg !767
  call void @llvm.dbg.value(metadata i32 %14, metadata !753, metadata !DIExpression()), !dbg !759
  switch i32 %14, label %19 [
    i32 -1, label %20
    i32 100, label %8
    i32 102, label %12
    i32 -130, label %15
    i32 -131, label %16
  ], !dbg !766, !llvm.loop !768

15:                                               ; preds = %12
  tail call void @usage(i32 0) #28, !dbg !770
  unreachable, !dbg !770

16:                                               ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !773, !tbaa !618
  %18 = load i8*, i8** @Version, align 8, !dbg !773, !tbaa !618
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* null) #25, !dbg !773
  tail call void @exit(i32 0) #27, !dbg !773
  unreachable, !dbg !773

19:                                               ; preds = %12
  tail call void @usage(i32 1) #28, !dbg !774
  unreachable, !dbg !774

20:                                               ; preds = %12
  %21 = load i32, i32* @optind, align 4, !dbg !775, !tbaa !776
  %22 = icmp slt i32 %21, %0, !dbg !778
  call void @llvm.dbg.value(metadata i1 %22, metadata !754, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !759
  %23 = icmp eq i8 %13, 0
  %24 = and i8 %10, %13, !dbg !779
  %25 = icmp eq i8 %24, 0, !dbg !779
  br i1 %25, label %28, label %26, !dbg !779

26:                                               ; preds = %20
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 5) #25, !dbg !781
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %27) #25, !dbg !781
  unreachable, !dbg !781

28:                                               ; preds = %20
  %29 = or i1 %9, %22, !dbg !783
  br i1 %29, label %32, label %30, !dbg !783

30:                                               ; preds = %28
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 5) #25, !dbg !785
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %31) #25, !dbg !785
  unreachable, !dbg !785

32:                                               ; preds = %28
  %33 = xor i1 %9, true, !dbg !786
  %34 = zext i1 %33 to i32, !dbg !786
  %35 = select i1 %23, i32 %34, i32 2, !dbg !786
  %36 = select i1 %22, i32 %35, i32 3, !dbg !786
  call void @llvm.dbg.value(metadata i32 %36, metadata !757, metadata !DIExpression()), !dbg !759
  br i1 %22, label %38, label %37, !dbg !788

37:                                               ; preds = %32
  tail call void @sync() #25, !dbg !789
  br label %100, !dbg !789

38:                                               ; preds = %32, %90
  %39 = phi i32 [ %95, %90 ], [ %21, %32 ]
  %40 = phi i8 [ %93, %90 ], [ 1, %32 ]
  call void @llvm.dbg.value(metadata i8 %40, metadata !758, metadata !DIExpression()), !dbg !759
  %41 = sext i32 %39 to i64, !dbg !791
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !791
  %43 = load i8*, i8** %42, align 8, !dbg !791, !tbaa !618
  call void @llvm.dbg.value(metadata i32 %36, metadata !795, metadata !DIExpression()) #25, !dbg !811
  call void @llvm.dbg.value(metadata i8* %43, metadata !800, metadata !DIExpression()) #25, !dbg !811
  call void @llvm.dbg.value(metadata i8 1, metadata !801, metadata !DIExpression()) #25, !dbg !811
  call void @llvm.dbg.value(metadata i32 2048, metadata !802, metadata !DIExpression()) #25, !dbg !811
  %44 = tail call i32 (i8*, i32, ...) @open(i8* %43, i32 2048) #25, !dbg !813
  call void @llvm.dbg.value(metadata i32 %44, metadata !803, metadata !DIExpression()) #25, !dbg !811
  %45 = icmp slt i32 %44, 0, !dbg !814
  br i1 %45, label %46, label %54, !dbg !815

46:                                               ; preds = %38
  %47 = tail call i32* @__errno_location() #29, !dbg !816
  %48 = load i32, i32* %47, align 4, !dbg !816, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %48, metadata !804, metadata !DIExpression()) #25, !dbg !817
  %49 = tail call i32 (i8*, i32, ...) @open(i8* %43, i32 2049) #25, !dbg !818
  call void @llvm.dbg.value(metadata i32 %49, metadata !803, metadata !DIExpression()) #25, !dbg !811
  %50 = icmp slt i32 %49, 0, !dbg !820
  br i1 %50, label %51, label %54, !dbg !822

51:                                               ; preds = %46
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i32 5) #25, !dbg !823
  %53 = tail call i8* @quotearg_style(i32 4, i8* %43) #25, !dbg !825
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %48, i8* %52, i8* %53) #25, !dbg !826
  br label %90

54:                                               ; preds = %46, %38
  %55 = phi i32 [ %44, %38 ], [ %49, %46 ], !dbg !811
  call void @llvm.dbg.value(metadata i32 %55, metadata !803, metadata !DIExpression()) #25, !dbg !811
  %56 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %55, i32 3) #25, !dbg !827
  call void @llvm.dbg.value(metadata i32 %56, metadata !807, metadata !DIExpression()) #25, !dbg !811
  %57 = icmp eq i32 %56, -1, !dbg !828
  br i1 %57, label %72, label %58, !dbg !830

58:                                               ; preds = %54
  %59 = and i32 %56, -2049, !dbg !831
  %60 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %55, i32 4, i32 %59) #25, !dbg !832
  %61 = icmp slt i32 %60, 0, !dbg !833
  br i1 %61, label %72, label %62, !dbg !834

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i8 1, metadata !801, metadata !DIExpression()) #25, !dbg !811
  call void @llvm.dbg.value(metadata i32 -1, metadata !808, metadata !DIExpression()) #25, !dbg !835
  switch i32 %36, label %72 [
    i32 1, label %63
    i32 0, label %65
    i32 2, label %67
  ], !dbg !836

63:                                               ; preds = %62
  %64 = tail call i32 @fdatasync(i32 %55) #25, !dbg !837
  call void @llvm.dbg.value(metadata i32 %64, metadata !808, metadata !DIExpression()) #25, !dbg !835
  br label %69, !dbg !839

65:                                               ; preds = %62
  %66 = tail call i32 @fsync(i32 %55) #25, !dbg !840
  call void @llvm.dbg.value(metadata i32 %66, metadata !808, metadata !DIExpression()) #25, !dbg !835
  br label %69, !dbg !841

67:                                               ; preds = %62
  %68 = tail call i32 @syncfs(i32 %55) #25, !dbg !842
  call void @llvm.dbg.value(metadata i32 %68, metadata !808, metadata !DIExpression()) #25, !dbg !835
  br label %69, !dbg !843

69:                                               ; preds = %67, %65, %63
  %70 = phi i32 [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], !dbg !835
  call void @llvm.dbg.value(metadata i32 %70, metadata !808, metadata !DIExpression()) #25, !dbg !835
  %71 = icmp slt i32 %70, 0, !dbg !844
  br i1 %71, label %72, label %78, !dbg !846

72:                                               ; preds = %62, %69, %54, %58
  %73 = phi i8* [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %58 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %54 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), %69 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), %62 ]
  %74 = tail call i32* @__errno_location() #29, !dbg !811
  %75 = load i32, i32* %74, align 4, !dbg !811, !tbaa !776
  %76 = tail call i8* @dcgettext(i8* null, i8* %73, i32 5) #25, !dbg !811
  %77 = tail call i8* @quotearg_style(i32 4, i8* %43) #25, !dbg !811
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %75, i8* %76, i8* %77) #25, !dbg !811
  br label %78, !dbg !847

78:                                               ; preds = %72, %69
  %79 = phi i8 [ 1, %69 ], [ 0, %72 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %79, metadata !801, metadata !DIExpression()) #25, !dbg !811
  %80 = tail call i32 @close(i32 %55) #25, !dbg !847
  %81 = icmp slt i32 %80, 0, !dbg !849
  br i1 %81, label %82, label %87, !dbg !850

82:                                               ; preds = %78
  %83 = tail call i32* @__errno_location() #29, !dbg !851
  %84 = load i32, i32* %83, align 4, !dbg !851, !tbaa !776
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i32 5) #25, !dbg !853
  %86 = tail call i8* @quotearg_style(i32 4, i8* %43) #25, !dbg !854
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %84, i8* %85, i8* %86) #25, !dbg !855
  call void @llvm.dbg.value(metadata i8 0, metadata !801, metadata !DIExpression()) #25, !dbg !811
  br label %87, !dbg !856

87:                                               ; preds = %82, %78
  %88 = phi i8 [ 0, %82 ], [ %79, %78 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %88, metadata !801, metadata !DIExpression()) #25, !dbg !811
  %89 = icmp ne i8 %88, 0, !dbg !857
  br label %90

90:                                               ; preds = %51, %87
  %91 = phi i1 [ %89, %87 ], [ false, %51 ], !dbg !811
  %92 = zext i1 %91 to i8, !dbg !858
  %93 = and i8 %40, %92, !dbg !859
  call void @llvm.dbg.value(metadata i8 %93, metadata !758, metadata !DIExpression()), !dbg !759
  %94 = load i32, i32* @optind, align 4, !dbg !860, !tbaa !776
  %95 = add nsw i32 %94, 1, !dbg !860
  store i32 %95, i32* @optind, align 4, !dbg !860, !tbaa !776
  %96 = icmp slt i32 %95, %0, !dbg !861
  br i1 %96, label %38, label %97, !dbg !862, !llvm.loop !863

97:                                               ; preds = %90
  %98 = xor i8 %93, 1, !dbg !865
  %99 = zext i8 %98 to i32, !dbg !865
  br label %100, !dbg !865

100:                                              ; preds = %97, %37
  %101 = phi i32 [ 0, %37 ], [ %99, %97 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !758, metadata !DIExpression()), !dbg !759
  ret i32 %101, !dbg !866
}

; Function Attrs: nounwind
declare !dbg !867 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !870 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !873 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !880 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !886 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !890 void @sync() local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !892 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

declare !dbg !896 i32 @fdatasync(i32) local_unnamed_addr #3

declare !dbg !899 i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !900 i32 @syncfs(i32) local_unnamed_addr #2

declare !dbg !901 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !902 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !904, metadata !DIExpression()), !dbg !905
  store i8* %0, i8** @file_name, align 8, !dbg !906, !tbaa !618
  ret void, !dbg !907
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !908 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !912, metadata !DIExpression()), !dbg !913
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !914, !tbaa !915
  ret void, !dbg !917
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !918 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !923, !tbaa !618
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !924
  %3 = icmp eq i32 %2, 0, !dbg !925
  br i1 %3, label %22, label %4, !dbg !926

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !927, !tbaa !915, !range !928
  %6 = icmp eq i8 %5, 0, !dbg !927
  br i1 %6, label %11, label %7, !dbg !929

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !930
  %9 = load i32, i32* %8, align 4, !dbg !930, !tbaa !776
  %10 = icmp eq i32 %9, 32, !dbg !931
  br i1 %10, label %22, label %11, !dbg !932

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #25, !dbg !933
  call void @llvm.dbg.value(metadata i8* %12, metadata !920, metadata !DIExpression()), !dbg !934
  %13 = load i8*, i8** @file_name, align 8, !dbg !935, !tbaa !618
  %14 = icmp eq i8* %13, null, !dbg !935
  %15 = tail call i32* @__errno_location() #29, !dbg !937
  %16 = load i32, i32* %15, align 4, !dbg !937, !tbaa !776
  br i1 %14, label %19, label %17, !dbg !938

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !939
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.44, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !940
  br label %20, !dbg !940

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.45, i64 0, i64 0), i8* %12) #25, !dbg !941
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !942, !tbaa !776
  tail call void @_exit(i32 %21) #27, !dbg !943
  unreachable, !dbg !943

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !944, !tbaa !618
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !946
  %25 = icmp eq i32 %24, 0, !dbg !947
  br i1 %25, label %28, label %26, !dbg !948

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !949, !tbaa !776
  tail call void @_exit(i32 %27) #27, !dbg !950
  unreachable, !dbg !950

28:                                               ; preds = %22
  ret void, !dbg !951
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !952 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !954, metadata !DIExpression()), !dbg !957
  %2 = icmp eq i8* %0, null, !dbg !958
  br i1 %2, label %3, label %6, !dbg !960

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !961, !tbaa !618
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !963
  tail call void @abort() #27, !dbg !964
  unreachable, !dbg !964

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !965
  call void @llvm.dbg.value(metadata i8* %7, metadata !955, metadata !DIExpression()), !dbg !957
  %8 = icmp eq i8* %7, null, !dbg !966
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !967
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !967
  call void @llvm.dbg.value(metadata i8* %10, metadata !956, metadata !DIExpression()), !dbg !957
  %11 = ptrtoint i8* %10 to i64, !dbg !968
  %12 = ptrtoint i8* %0 to i64, !dbg !968
  %13 = sub i64 %11, %12, !dbg !968
  %14 = icmp sgt i64 %13, 6, !dbg !970
  br i1 %14, label %15, label %24, !dbg !971

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !972
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #26, !dbg !973
  %18 = icmp eq i32 %17, 0, !dbg !974
  br i1 %18, label %19, label %24, !dbg !975

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !954, metadata !DIExpression()), !dbg !957
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #26, !dbg !976
  %21 = icmp eq i32 %20, 0, !dbg !979
  br i1 %21, label %22, label %24, !dbg !980

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !981
  call void @llvm.dbg.value(metadata i8* %23, metadata !954, metadata !DIExpression()), !dbg !957
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !983, !tbaa !618
  br label %24, !dbg !984

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !954, metadata !DIExpression()), !dbg !957
  store i8* %25, i8** @program_name, align 8, !dbg !985, !tbaa !618
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !986, !tbaa !618
  ret void, !dbg !987
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !988 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !993, metadata !DIExpression()), !dbg !996
  %2 = tail call i32* @__errno_location() #29, !dbg !997
  %3 = load i32, i32* %2, align 4, !dbg !997, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %3, metadata !994, metadata !DIExpression()), !dbg !996
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !998
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !998
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !998
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !999
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !999
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !995, metadata !DIExpression()), !dbg !996
  store i32 %3, i32* %2, align 4, !dbg !1000, !tbaa !776
  ret %struct.quoting_options* %8, !dbg !1001
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1002 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1008, metadata !DIExpression()), !dbg !1009
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1010
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1010
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1011
  %5 = load i32, i32* %4, align 8, !dbg !1011, !tbaa !1012
  ret i32 %5, !dbg !1014
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1015 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1019, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i32 %1, metadata !1020, metadata !DIExpression()), !dbg !1021
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1022
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1022
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1023
  store i32 %1, i32* %5, align 8, !dbg !1024, !tbaa !1012
  ret void, !dbg !1025
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1026 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1030, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i8 %1, metadata !1031, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i32 %2, metadata !1032, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i8 %1, metadata !1033, metadata !DIExpression()), !dbg !1039
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1040
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1040
  %6 = lshr i8 %1, 5, !dbg !1041
  %7 = zext i8 %6 to i64, !dbg !1041
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1042
  call void @llvm.dbg.value(metadata i32* %8, metadata !1035, metadata !DIExpression()), !dbg !1039
  %9 = and i8 %1, 31, !dbg !1043
  %10 = zext i8 %9 to i32, !dbg !1043
  call void @llvm.dbg.value(metadata i32 %10, metadata !1037, metadata !DIExpression()), !dbg !1039
  %11 = load i32, i32* %8, align 4, !dbg !1044, !tbaa !776
  %12 = lshr i32 %11, %10, !dbg !1045
  %13 = and i32 %12, 1, !dbg !1046
  call void @llvm.dbg.value(metadata i32 %13, metadata !1038, metadata !DIExpression()), !dbg !1039
  %14 = and i32 %2, 1, !dbg !1047
  %15 = xor i32 %13, %14, !dbg !1048
  %16 = shl i32 %15, %10, !dbg !1049
  %17 = xor i32 %16, %11, !dbg !1050
  store i32 %17, i32* %8, align 4, !dbg !1050, !tbaa !776
  ret i32 %13, !dbg !1051
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1052 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1056, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 %1, metadata !1057, metadata !DIExpression()), !dbg !1059
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1060
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1056, metadata !DIExpression()), !dbg !1059
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1063
  %6 = load i32, i32* %5, align 4, !dbg !1063, !tbaa !1064
  call void @llvm.dbg.value(metadata i32 %6, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i32 %1, i32* %5, align 4, !dbg !1065, !tbaa !1064
  ret i32 %6, !dbg !1066
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1067 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1071, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i8* %1, metadata !1072, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i8* %2, metadata !1073, metadata !DIExpression()), !dbg !1074
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1075
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1071, metadata !DIExpression()), !dbg !1074
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1078
  store i32 10, i32* %6, align 8, !dbg !1079, !tbaa !1012
  %7 = icmp ne i8* %1, null, !dbg !1080
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1082
  br i1 %9, label %11, label %10, !dbg !1082

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !1083
  unreachable, !dbg !1083

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1084
  store i8* %1, i8** %12, align 8, !dbg !1085, !tbaa !1086
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1087
  store i8* %2, i8** %13, align 8, !dbg !1088, !tbaa !1089
  ret void, !dbg !1090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1091 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1095, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %1, metadata !1096, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %2, metadata !1097, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %3, metadata !1098, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1099, metadata !DIExpression()), !dbg !1103
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1104
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1100, metadata !DIExpression()), !dbg !1103
  %8 = tail call i32* @__errno_location() #29, !dbg !1105
  %9 = load i32, i32* %8, align 4, !dbg !1105, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %9, metadata !1101, metadata !DIExpression()), !dbg !1103
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1106
  %11 = load i32, i32* %10, align 8, !dbg !1106, !tbaa !1012
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1107
  %13 = load i32, i32* %12, align 4, !dbg !1107, !tbaa !1064
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1108
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1109
  %16 = load i8*, i8** %15, align 8, !dbg !1109, !tbaa !1086
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1110
  %18 = load i8*, i8** %17, align 8, !dbg !1110, !tbaa !1089
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %19, metadata !1102, metadata !DIExpression()), !dbg !1103
  store i32 %9, i32* %8, align 4, !dbg !1112, !tbaa !776
  ret i64 %19, !dbg !1113
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1114 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1120, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %1, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %2, metadata !1122, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %3, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 %4, metadata !1124, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 %5, metadata !1125, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32* %6, metadata !1126, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %7, metadata !1127, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %8, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !1131, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* null, metadata !1132, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !1133, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1134, metadata !DIExpression()), !dbg !1190
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !1191
  %14 = icmp eq i64 %13, 1, !dbg !1192
  call void @llvm.dbg.value(metadata i1 %14, metadata !1135, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1190
  %15 = lshr i32 %5, 1, !dbg !1193
  %16 = trunc i32 %15 to i8, !dbg !1193
  %17 = and i8 %16, 1, !dbg !1193
  call void @llvm.dbg.value(metadata i8 %17, metadata !1136, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1138, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 1, metadata !1139, metadata !DIExpression()), !dbg !1190
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1194

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1195
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1196
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1197
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1198
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1190
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1199
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1200
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1201
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %38, metadata !1139, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %37, metadata !1138, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %36, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %35, metadata !1136, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %34, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %33, metadata !1134, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %32, metadata !1133, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %31, metadata !1132, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %30, metadata !1131, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %29, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %28, metadata !1127, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 %27, metadata !1124, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.label(metadata !1184), !dbg !1202
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
  ], !dbg !1203

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1136, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 5, metadata !1124, metadata !DIExpression()), !dbg !1190
  br label %92, !dbg !1204

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1136, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 5, metadata !1124, metadata !DIExpression()), !dbg !1190
  %42 = and i8 %35, 1, !dbg !1206
  %43 = icmp eq i8 %42, 0, !dbg !1206
  br i1 %43, label %44, label %92, !dbg !1204

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1208
  br i1 %45, label %92, label %46, !dbg !1211

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1208, !tbaa !1212
  br label %92, !dbg !1208

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %27), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %48, metadata !1127, metadata !DIExpression()), !dbg !1190
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %27), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %49, metadata !1128, metadata !DIExpression()), !dbg !1190
  br label %50, !dbg !1218

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %51, metadata !1127, metadata !DIExpression()), !dbg !1190
  %53 = and i8 %35, 1, !dbg !1219
  %54 = icmp eq i8 %53, 0, !dbg !1219
  br i1 %54, label %55, label %70, !dbg !1221

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1132, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !1130, metadata !DIExpression()), !dbg !1190
  %56 = load i8, i8* %51, align 1, !dbg !1222, !tbaa !1212
  %57 = icmp eq i8 %56, 0, !dbg !1225
  br i1 %57, label %70, label %58, !dbg !1225

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1132, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %61, metadata !1130, metadata !DIExpression()), !dbg !1190
  %62 = icmp ult i64 %61, %39, !dbg !1226
  br i1 %62, label %63, label %65, !dbg !1229

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1226
  store i8 %59, i8* %64, align 1, !dbg !1226, !tbaa !1212
  br label %65, !dbg !1226

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %66, metadata !1130, metadata !DIExpression()), !dbg !1190
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %67, metadata !1132, metadata !DIExpression()), !dbg !1190
  %68 = load i8, i8* %67, align 1, !dbg !1222, !tbaa !1212
  %69 = icmp eq i8 %68, 0, !dbg !1225
  br i1 %69, label %70, label %58, !dbg !1225, !llvm.loop !1231

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1233
  call void @llvm.dbg.value(metadata i64 %71, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 1, metadata !1134, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %52, metadata !1132, metadata !DIExpression()), !dbg !1190
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %72, metadata !1133, metadata !DIExpression()), !dbg !1190
  br label %92, !dbg !1235

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1134, metadata !DIExpression()), !dbg !1190
  br label %74, !dbg !1236

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8 %75, metadata !1134, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 1, metadata !1136, metadata !DIExpression()), !dbg !1190
  br label %76, !dbg !1237

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1198
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8 %78, metadata !1136, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %77, metadata !1134, metadata !DIExpression()), !dbg !1190
  %79 = and i8 %78, 1, !dbg !1238
  %80 = icmp eq i8 %79, 0, !dbg !1238
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1240
  br label %82, !dbg !1240

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1190
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1193
  call void @llvm.dbg.value(metadata i8 %84, metadata !1136, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %83, metadata !1134, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 2, metadata !1124, metadata !DIExpression()), !dbg !1190
  %85 = and i8 %84, 1, !dbg !1241
  %86 = icmp eq i8 %85, 0, !dbg !1241
  br i1 %86, label %87, label %92, !dbg !1243

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1244
  br i1 %88, label %92, label %89, !dbg !1247

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1244, !tbaa !1212
  br label %92, !dbg !1244

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1136, metadata !DIExpression()), !dbg !1190
  br label %92, !dbg !1248

91:                                               ; preds = %26
  call void @abort() #27, !dbg !1249
  unreachable, !dbg !1249

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1233
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %40 ], !dbg !1190
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1190
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1190
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8 %100, metadata !1136, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %99, metadata !1134, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %98, metadata !1133, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %97, metadata !1132, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %96, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %95, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %94, metadata !1127, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 %93, metadata !1124, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !1129, metadata !DIExpression()), !dbg !1190
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
  br label %121, !dbg !1250

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1251
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1233
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1195
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1199
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1200
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1201
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %128, metadata !1139, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %127, metadata !1138, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %126, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %125, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %124, metadata !1131, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %123, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %122, metadata !1129, metadata !DIExpression()), !dbg !1190
  %130 = icmp eq i64 %125, -1, !dbg !1252
  br i1 %130, label %131, label %135, !dbg !1253

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1254
  %133 = load i8, i8* %132, align 1, !dbg !1254, !tbaa !1212
  %134 = icmp eq i8 %133, 0, !dbg !1255
  br i1 %134, label %587, label %137, !dbg !1256

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1257
  br i1 %136, label %587, label %137, !dbg !1256

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1145, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 0, metadata !1146, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 0, metadata !1147, metadata !DIExpression()), !dbg !1258
  br i1 %106, label %138, label %153, !dbg !1259

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1261
  %140 = and i1 %107, %130, !dbg !1262
  br i1 %140, label %141, label %143, !dbg !1262

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %142, metadata !1123, metadata !DIExpression()), !dbg !1190
  br label %143, !dbg !1264

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1264
  call void @llvm.dbg.value(metadata i64 %144, metadata !1123, metadata !DIExpression()), !dbg !1190
  %145 = icmp ugt i64 %139, %144, !dbg !1265
  br i1 %145, label %153, label %146, !dbg !1266

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1267
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1268
  %149 = icmp ne i32 %148, 0, !dbg !1269
  %150 = or i1 %149, %109, !dbg !1270
  %151 = xor i1 %149, true, !dbg !1270
  %152 = zext i1 %151 to i8, !dbg !1270
  br i1 %150, label %153, label %646, !dbg !1270

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1258
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1258
  call void @llvm.dbg.value(metadata i8 %156, metadata !1145, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %154, metadata !1123, metadata !DIExpression()), !dbg !1190
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1271
  %158 = load i8, i8* %157, align 1, !dbg !1271, !tbaa !1212
  call void @llvm.dbg.value(metadata i8 %158, metadata !1140, metadata !DIExpression()), !dbg !1258
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
  ], !dbg !1272

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1273

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1274

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1146, metadata !DIExpression()), !dbg !1258
  %162 = and i8 %126, 1, !dbg !1278
  %163 = icmp eq i8 %162, 0, !dbg !1278
  %164 = and i1 %110, %163, !dbg !1278
  br i1 %164, label %165, label %181, !dbg !1278

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1280
  br i1 %166, label %167, label %169, !dbg !1284

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1280
  store i8 39, i8* %168, align 1, !dbg !1280, !tbaa !1212
  br label %169, !dbg !1280

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %170, metadata !1130, metadata !DIExpression()), !dbg !1190
  %171 = icmp ult i64 %170, %129, !dbg !1285
  br i1 %171, label %172, label %174, !dbg !1288

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1285
  store i8 36, i8* %173, align 1, !dbg !1285, !tbaa !1212
  br label %174, !dbg !1285

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %175, metadata !1130, metadata !DIExpression()), !dbg !1190
  %176 = icmp ult i64 %175, %129, !dbg !1289
  br i1 %176, label %177, label %179, !dbg !1292

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1289
  store i8 39, i8* %178, align 1, !dbg !1289, !tbaa !1212
  br label %179, !dbg !1289

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %180, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 1, metadata !1137, metadata !DIExpression()), !dbg !1190
  br label %181, !dbg !1293

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1190
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8 %183, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %182, metadata !1130, metadata !DIExpression()), !dbg !1190
  %184 = icmp ult i64 %182, %129, !dbg !1294
  br i1 %184, label %185, label %187, !dbg !1297

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1294
  store i8 92, i8* %186, align 1, !dbg !1294, !tbaa !1212
  br label %187, !dbg !1294

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %188, metadata !1130, metadata !DIExpression()), !dbg !1190
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1298
  br i1 %191, label %192, label %473, !dbg !1298

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1300
  %194 = load i8, i8* %193, align 1, !dbg !1300, !tbaa !1212
  %195 = add i8 %194, -48, !dbg !1301
  %196 = icmp ult i8 %195, 10, !dbg !1301
  br i1 %196, label %197, label %473, !dbg !1301

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1302
  br i1 %198, label %199, label %201, !dbg !1306

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1302
  store i8 48, i8* %200, align 1, !dbg !1302, !tbaa !1212
  br label %201, !dbg !1302

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %202, metadata !1130, metadata !DIExpression()), !dbg !1190
  %203 = icmp ult i64 %202, %129, !dbg !1307
  br i1 %203, label %204, label %206, !dbg !1310

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1307
  store i8 48, i8* %205, align 1, !dbg !1307, !tbaa !1212
  br label %206, !dbg !1307

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %207, metadata !1130, metadata !DIExpression()), !dbg !1190
  br label %473, !dbg !1311

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1312

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1313

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1314

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1316
  br i1 %214, label %215, label %473, !dbg !1316

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1318
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1319
  %218 = load i8, i8* %217, align 1, !dbg !1319, !tbaa !1212
  %219 = icmp eq i8 %218, 63, !dbg !1320
  br i1 %219, label %220, label %473, !dbg !1321

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1322
  %222 = load i8, i8* %221, align 1, !dbg !1322, !tbaa !1212
  %223 = sext i8 %222 to i32, !dbg !1322
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
  ], !dbg !1323

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1324

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1140, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 undef, metadata !1129, metadata !DIExpression()), !dbg !1190
  %226 = icmp ult i64 %123, %129, !dbg !1326
  br i1 %226, label %227, label %229, !dbg !1329

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1326
  store i8 63, i8* %228, align 1, !dbg !1326, !tbaa !1212
  br label %229, !dbg !1326

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %230, metadata !1130, metadata !DIExpression()), !dbg !1190
  %231 = icmp ult i64 %230, %129, !dbg !1330
  br i1 %231, label %232, label %234, !dbg !1333

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1330
  store i8 34, i8* %233, align 1, !dbg !1330, !tbaa !1212
  br label %234, !dbg !1330

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %235, metadata !1130, metadata !DIExpression()), !dbg !1190
  %236 = icmp ult i64 %235, %129, !dbg !1334
  br i1 %236, label %237, label %239, !dbg !1337

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1334
  store i8 34, i8* %238, align 1, !dbg !1334, !tbaa !1212
  br label %239, !dbg !1334

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %240, metadata !1130, metadata !DIExpression()), !dbg !1190
  %241 = icmp ult i64 %240, %129, !dbg !1338
  br i1 %241, label %242, label %244, !dbg !1341

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1338
  store i8 63, i8* %243, align 1, !dbg !1338, !tbaa !1212
  br label %244, !dbg !1338

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %245, metadata !1130, metadata !DIExpression()), !dbg !1190
  br label %473, !dbg !1342

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1144, metadata !DIExpression()), !dbg !1258
  br label %256, !dbg !1343

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1144, metadata !DIExpression()), !dbg !1258
  br label %256, !dbg !1344

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1144, metadata !DIExpression()), !dbg !1258
  br label %254, !dbg !1345

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1144, metadata !DIExpression()), !dbg !1258
  br label %254, !dbg !1346

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1144, metadata !DIExpression()), !dbg !1258
  br label %256, !dbg !1347

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1144, metadata !DIExpression()), !dbg !1258
  br i1 %110, label %252, label %253, !dbg !1348

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1349

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1352

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1354
  call void @llvm.dbg.value(metadata i8 %255, metadata !1144, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.label(metadata !1185), !dbg !1355
  br i1 %111, label %256, label %631, !dbg !1356

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1354
  call void @llvm.dbg.value(metadata i8 %257, metadata !1144, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.label(metadata !1186), !dbg !1358
  br i1 %102, label %495, label %473, !dbg !1359

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1360

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1361, !tbaa !1212
  %261 = icmp eq i8 %260, 0, !dbg !1363
  br i1 %261, label %262, label %473, !dbg !1364

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1365
  br i1 %263, label %264, label %473, !dbg !1367

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1147, metadata !DIExpression()), !dbg !1258
  br label %265, !dbg !1368

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1258
  call void @llvm.dbg.value(metadata i8 %266, metadata !1147, metadata !DIExpression()), !dbg !1258
  br i1 %111, label %473, label %631, !dbg !1369

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1138, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 1, metadata !1147, metadata !DIExpression()), !dbg !1258
  br i1 %110, label %268, label %473, !dbg !1371

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1372

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1375
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1377
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1377
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %274, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %273, metadata !1131, metadata !DIExpression()), !dbg !1190
  %275 = icmp ult i64 %123, %274, !dbg !1378
  br i1 %275, label %276, label %278, !dbg !1381

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1378
  store i8 39, i8* %277, align 1, !dbg !1378, !tbaa !1212
  br label %278, !dbg !1378

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %279, metadata !1130, metadata !DIExpression()), !dbg !1190
  %280 = icmp ult i64 %279, %274, !dbg !1382
  br i1 %280, label %281, label %283, !dbg !1385

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1382
  store i8 92, i8* %282, align 1, !dbg !1382, !tbaa !1212
  br label %283, !dbg !1382

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %284, metadata !1130, metadata !DIExpression()), !dbg !1190
  %285 = icmp ult i64 %284, %274, !dbg !1386
  br i1 %285, label %286, label %288, !dbg !1389

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1386
  store i8 39, i8* %287, align 1, !dbg !1386, !tbaa !1212
  br label %288, !dbg !1386

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %289, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1137, metadata !DIExpression()), !dbg !1190
  br label %473, !dbg !1390

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1391

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1148, metadata !DIExpression()), !dbg !1392
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !1393
  %293 = load i16*, i16** %292, align 8, !dbg !1393, !tbaa !618
  %294 = zext i8 %158 to i64, !dbg !1393
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1393
  %296 = load i16, i16* %295, align 2, !dbg !1393, !tbaa !1395
  %297 = lshr i16 %296, 14, !dbg !1397
  %298 = trunc i16 %297 to i8, !dbg !1397
  %299 = and i8 %298, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i8 %354, metadata !1151, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %355, metadata !1148, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %306, metadata !1123, metadata !DIExpression()), !dbg !1190
  %300 = icmp eq i8 %299, 0, !dbg !1398
  call void @llvm.dbg.value(metadata i1 %357, metadata !1147, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1258
  br label %359, !dbg !1399

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1400
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1152, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %23, metadata !1402, metadata !DIExpression()) #25, !dbg !1410
  call void @llvm.dbg.value(metadata i32 0, metadata !1408, metadata !DIExpression()) #25, !dbg !1410
  call void @llvm.dbg.value(metadata i64 8, metadata !1409, metadata !DIExpression()) #25, !dbg !1410
  store i64 0, i64* %10, align 8, !dbg !1412
  call void @llvm.dbg.value(metadata i64 0, metadata !1148, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8 1, metadata !1151, metadata !DIExpression()), !dbg !1392
  %302 = icmp eq i64 %154, -1, !dbg !1413
  br i1 %302, label %303, label %305, !dbg !1415

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %304, metadata !1123, metadata !DIExpression()), !dbg !1190
  br label %305, !dbg !1417

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1258
  call void @llvm.dbg.value(metadata i64 %306, metadata !1123, metadata !DIExpression()), !dbg !1190
  br label %307, !dbg !1418

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1419
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1420
  call void @llvm.dbg.value(metadata i8 %309, metadata !1151, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %308, metadata !1148, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1421
  %310 = add i64 %308, %122, !dbg !1422
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1423
  %312 = sub i64 %306, %310, !dbg !1424
  call void @llvm.dbg.value(metadata i32* %12, metadata !1170, metadata !DIExpression(DW_OP_deref)), !dbg !1425
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %313, metadata !1173, metadata !DIExpression()), !dbg !1425
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1427

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1148, metadata !DIExpression()), !dbg !1392
  %315 = icmp ugt i64 %306, %310, !dbg !1428
  br i1 %315, label %316, label %341, !dbg !1430

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1431
  br label %318, !dbg !1431

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1148, metadata !DIExpression()), !dbg !1392
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1432
  %322 = load i8, i8* %321, align 1, !dbg !1432, !tbaa !1212
  %323 = icmp eq i8 %322, 0, !dbg !1430
  br i1 %323, label %341, label %324, !dbg !1431

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %325, metadata !1148, metadata !DIExpression()), !dbg !1392
  %326 = add i64 %325, %122, !dbg !1434
  %327 = icmp ult i64 %326, %306, !dbg !1428
  br i1 %327, label %318, label %341, !dbg !1430, !llvm.loop !1435

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1436
  call void @llvm.dbg.value(metadata i64 1, metadata !1174, metadata !DIExpression()), !dbg !1437
  br i1 %330, label %331, label %344, !dbg !1436

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1174, metadata !DIExpression()), !dbg !1437
  %333 = add i64 %332, %310, !dbg !1438
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1441
  %335 = load i8, i8* %334, align 1, !dbg !1441, !tbaa !1212
  %336 = sext i8 %335 to i32, !dbg !1441
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1442

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %338, metadata !1174, metadata !DIExpression()), !dbg !1437
  %339 = icmp eq i64 %338, %313, !dbg !1444
  br i1 %339, label %344, label %331, !dbg !1445, !llvm.loop !1446

340:                                              ; preds = %307
  br label %341, !dbg !1448

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1151, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 undef, metadata !1148, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1448
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1449, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %345, metadata !1170, metadata !DIExpression()), !dbg !1425
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !1451
  %347 = icmp eq i32 %346, 0, !dbg !1451
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1452
  call void @llvm.dbg.value(metadata i8 %348, metadata !1151, metadata !DIExpression()), !dbg !1392
  %349 = add i64 %313, %308, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %349, metadata !1148, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1448
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1454
  %351 = icmp eq i32 %350, 0, !dbg !1455
  br i1 %351, label %307, label %353, !dbg !1456, !llvm.loop !1457

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1151, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 undef, metadata !1148, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1448
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1459
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1459
  call void @llvm.dbg.value(metadata i8 %354, metadata !1151, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %355, metadata !1148, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %306, metadata !1123, metadata !DIExpression()), !dbg !1190
  %356 = and i8 %354, 1, !dbg !1398
  %357 = icmp eq i8 %356, 0, !dbg !1398
  call void @llvm.dbg.value(metadata i1 %357, metadata !1147, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1258
  %358 = icmp ugt i64 %355, 1, !dbg !1460
  br i1 %358, label %367, label %359, !dbg !1399

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1461
  br i1 %364, label %367, label %365, !dbg !1461

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i8 %472, metadata !1147, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %441, metadata !1146, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %440, metadata !1145, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %439, metadata !1140, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %438, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %371, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %437, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %375, metadata !1129, metadata !DIExpression()), !dbg !1190
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %372, metadata !1181, metadata !DIExpression()), !dbg !1463
  %373 = and i1 %102, %368
  br label %374, !dbg !1464

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1251
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1190
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1199
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1258
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1258
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1465
  call void @llvm.dbg.value(metadata i8 %380, metadata !1146, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %379, metadata !1145, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %378, metadata !1140, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %377, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %376, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %375, metadata !1129, metadata !DIExpression()), !dbg !1190
  br i1 %373, label %381, label %427, !dbg !1466

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1471

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1146, metadata !DIExpression()), !dbg !1258
  %383 = and i8 %377, 1, !dbg !1474
  %384 = icmp eq i8 %383, 0, !dbg !1474
  %385 = and i1 %110, %384, !dbg !1474
  br i1 %385, label %386, label %402, !dbg !1474

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1476
  br i1 %387, label %388, label %390, !dbg !1480

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1476
  store i8 39, i8* %389, align 1, !dbg !1476, !tbaa !1212
  br label %390, !dbg !1476

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %391, metadata !1130, metadata !DIExpression()), !dbg !1190
  %392 = icmp ult i64 %391, %129, !dbg !1481
  br i1 %392, label %393, label %395, !dbg !1484

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1481
  store i8 36, i8* %394, align 1, !dbg !1481, !tbaa !1212
  br label %395, !dbg !1481

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %396, metadata !1130, metadata !DIExpression()), !dbg !1190
  %397 = icmp ult i64 %396, %129, !dbg !1485
  br i1 %397, label %398, label %400, !dbg !1488

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1485
  store i8 39, i8* %399, align 1, !dbg !1485, !tbaa !1212
  br label %400, !dbg !1485

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %401, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 1, metadata !1137, metadata !DIExpression()), !dbg !1190
  br label %402, !dbg !1489

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1190
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8 %404, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %403, metadata !1130, metadata !DIExpression()), !dbg !1190
  %405 = icmp ult i64 %403, %129, !dbg !1490
  br i1 %405, label %406, label %408, !dbg !1493

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1490
  store i8 92, i8* %407, align 1, !dbg !1490, !tbaa !1212
  br label %408, !dbg !1490

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %409, metadata !1130, metadata !DIExpression()), !dbg !1190
  %410 = icmp ult i64 %409, %129, !dbg !1494
  br i1 %410, label %411, label %415, !dbg !1497

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1494
  %413 = or i8 %412, 48, !dbg !1494
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1494
  store i8 %413, i8* %414, align 1, !dbg !1494, !tbaa !1212
  br label %415, !dbg !1494

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %416, metadata !1130, metadata !DIExpression()), !dbg !1190
  %417 = icmp ult i64 %416, %129, !dbg !1498
  br i1 %417, label %418, label %423, !dbg !1501

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1498
  %420 = and i8 %419, 7, !dbg !1498
  %421 = or i8 %420, 48, !dbg !1498
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1498
  store i8 %421, i8* %422, align 1, !dbg !1498, !tbaa !1212
  br label %423, !dbg !1498

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %424, metadata !1130, metadata !DIExpression()), !dbg !1190
  %425 = and i8 %378, 7, !dbg !1502
  %426 = or i8 %425, 48, !dbg !1503
  call void @llvm.dbg.value(metadata i8 %426, metadata !1140, metadata !DIExpression()), !dbg !1258
  br label %436, !dbg !1504

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1505
  %429 = icmp eq i8 %428, 0, !dbg !1505
  br i1 %429, label %436, label %430, !dbg !1507

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1508
  br i1 %431, label %432, label %434, !dbg !1512

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1508
  store i8 92, i8* %433, align 1, !dbg !1508, !tbaa !1212
  br label %434, !dbg !1508

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %435, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1145, metadata !DIExpression()), !dbg !1258
  br label %436, !dbg !1513

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1190
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1199
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1258
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1258
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1258
  call void @llvm.dbg.value(metadata i8 %441, metadata !1146, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %440, metadata !1145, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %439, metadata !1140, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %438, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %437, metadata !1130, metadata !DIExpression()), !dbg !1190
  %442 = add i64 %375, 1, !dbg !1514
  %443 = icmp ugt i64 %372, %442, !dbg !1516
  br i1 %443, label %444, label %471, !dbg !1517

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1518
  %446 = icmp ne i8 %445, 0, !dbg !1518
  %447 = and i8 %441, 1, !dbg !1518
  %448 = icmp eq i8 %447, 0, !dbg !1518
  %449 = and i1 %446, %448, !dbg !1518
  br i1 %449, label %450, label %461, !dbg !1518

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1521
  br i1 %451, label %452, label %454, !dbg !1525

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1521
  store i8 39, i8* %453, align 1, !dbg !1521, !tbaa !1212
  br label %454, !dbg !1521

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %455, metadata !1130, metadata !DIExpression()), !dbg !1190
  %456 = icmp ult i64 %455, %129, !dbg !1526
  br i1 %456, label %457, label %459, !dbg !1529

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1526
  store i8 39, i8* %458, align 1, !dbg !1526, !tbaa !1212
  br label %459, !dbg !1526

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %460, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1137, metadata !DIExpression()), !dbg !1190
  br label %461, !dbg !1530

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1531
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8 %463, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %462, metadata !1130, metadata !DIExpression()), !dbg !1190
  %464 = icmp ult i64 %462, %129, !dbg !1532
  br i1 %464, label %465, label %467, !dbg !1535

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1532
  store i8 %439, i8* %466, align 1, !dbg !1532, !tbaa !1212
  br label %467, !dbg !1532

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %468, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %442, metadata !1129, metadata !DIExpression()), !dbg !1190
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1536
  %470 = load i8, i8* %469, align 1, !dbg !1536, !tbaa !1212
  call void @llvm.dbg.value(metadata i8 %470, metadata !1140, metadata !DIExpression()), !dbg !1258
  br label %374, !dbg !1537, !llvm.loop !1538

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i8 %472, metadata !1147, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %441, metadata !1146, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %440, metadata !1145, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %439, metadata !1140, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %438, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %371, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %437, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %375, metadata !1129, metadata !DIExpression()), !dbg !1190
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1251
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1190
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1195
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1541
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1190
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1190
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1258
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1258
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1258
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %482, metadata !1147, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %481, metadata !1146, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %156, metadata !1145, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %480, metadata !1140, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %479, metadata !1138, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %478, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %477, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %476, metadata !1131, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %475, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %474, metadata !1129, metadata !DIExpression()), !dbg !1190
  br i1 %116, label %494, label %484, !dbg !1542

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1544
  %486 = zext i8 %485 to i64, !dbg !1544
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1545
  %488 = load i32, i32* %487, align 4, !dbg !1545, !tbaa !776
  %489 = and i8 %480, 31, !dbg !1546
  %490 = zext i8 %489 to i32, !dbg !1546
  %491 = shl nuw i32 1, %490, !dbg !1547
  %492 = and i32 %488, %491, !dbg !1547
  %493 = icmp eq i32 %492, 0, !dbg !1547
  br i1 %493, label %494, label %495, !dbg !1548

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1549

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1550
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1190
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1195
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1541
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1199
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1200
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1258
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1258
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %503, metadata !1147, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %502, metadata !1140, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %501, metadata !1138, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %500, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %499, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %498, metadata !1131, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %497, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %496, metadata !1129, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.label(metadata !1187), !dbg !1551
  br i1 %109, label %505, label %635, !dbg !1552

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1146, metadata !DIExpression()), !dbg !1258
  %506 = and i8 %500, 1, !dbg !1554
  %507 = icmp eq i8 %506, 0, !dbg !1554
  %508 = and i1 %110, %507, !dbg !1554
  br i1 %508, label %509, label %525, !dbg !1554

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1556
  br i1 %510, label %511, label %513, !dbg !1560

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1556
  store i8 39, i8* %512, align 1, !dbg !1556, !tbaa !1212
  br label %513, !dbg !1556

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %514, metadata !1130, metadata !DIExpression()), !dbg !1190
  %515 = icmp ult i64 %514, %504, !dbg !1561
  br i1 %515, label %516, label %518, !dbg !1564

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1561
  store i8 36, i8* %517, align 1, !dbg !1561, !tbaa !1212
  br label %518, !dbg !1561

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %519, metadata !1130, metadata !DIExpression()), !dbg !1190
  %520 = icmp ult i64 %519, %504, !dbg !1565
  br i1 %520, label %521, label %523, !dbg !1568

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1565
  store i8 39, i8* %522, align 1, !dbg !1565, !tbaa !1212
  br label %523, !dbg !1565

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %524, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 1, metadata !1137, metadata !DIExpression()), !dbg !1190
  br label %525, !dbg !1569

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1258
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8 %527, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %526, metadata !1130, metadata !DIExpression()), !dbg !1190
  %528 = icmp ult i64 %526, %504, !dbg !1570
  br i1 %528, label %529, label %531, !dbg !1573

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1570
  store i8 92, i8* %530, align 1, !dbg !1570, !tbaa !1212
  br label %531, !dbg !1570

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %543, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %542, metadata !1147, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %541, metadata !1146, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %540, metadata !1140, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %539, metadata !1138, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %538, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %537, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %536, metadata !1131, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %535, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %534, metadata !1129, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.label(metadata !1188), !dbg !1574
  br label %560, !dbg !1575

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1550
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1190
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1195
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1541
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1199
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1200
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1578
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1258
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1258
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %542, metadata !1147, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %541, metadata !1146, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %540, metadata !1140, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %539, metadata !1138, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %538, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %537, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %536, metadata !1131, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %535, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %534, metadata !1129, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.label(metadata !1188), !dbg !1574
  %544 = and i8 %538, 1, !dbg !1575
  %545 = icmp ne i8 %544, 0, !dbg !1575
  %546 = and i8 %541, 1, !dbg !1575
  %547 = icmp eq i8 %546, 0, !dbg !1575
  %548 = and i1 %545, %547, !dbg !1575
  br i1 %548, label %549, label %560, !dbg !1575

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1579
  br i1 %550, label %551, label %553, !dbg !1583

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1579
  store i8 39, i8* %552, align 1, !dbg !1579, !tbaa !1212
  br label %553, !dbg !1579

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %554, metadata !1130, metadata !DIExpression()), !dbg !1190
  %555 = icmp ult i64 %554, %543, !dbg !1584
  br i1 %555, label %556, label %558, !dbg !1587

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1584
  store i8 39, i8* %557, align 1, !dbg !1584, !tbaa !1212
  br label %558, !dbg !1584

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %559, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1137, metadata !DIExpression()), !dbg !1190
  br label %560, !dbg !1588

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1258
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8 %569, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %568, metadata !1130, metadata !DIExpression()), !dbg !1190
  %570 = icmp ult i64 %568, %561, !dbg !1589
  br i1 %570, label %571, label %573, !dbg !1592

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1589
  store i8 %563, i8* %572, align 1, !dbg !1589, !tbaa !1212
  br label %573, !dbg !1589

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %574, metadata !1130, metadata !DIExpression()), !dbg !1190
  %575 = icmp eq i8 %562, 0, !dbg !1593
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1595
  call void @llvm.dbg.value(metadata i8 %576, metadata !1139, metadata !DIExpression()), !dbg !1190
  br label %577, !dbg !1596

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1550
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1190
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1195
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1541
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1199
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1190
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1201
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %584, metadata !1139, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %583, metadata !1138, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %582, metadata !1137, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %581, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %580, metadata !1131, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %579, metadata !1130, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %578, metadata !1129, metadata !DIExpression()), !dbg !1190
  %586 = add i64 %578, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %586, metadata !1129, metadata !DIExpression()), !dbg !1190
  br label %121, !dbg !1598, !llvm.loop !1599

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1601
  %590 = and i1 %110, %589, !dbg !1603
  %591 = xor i1 %590, true, !dbg !1603
  %592 = or i1 %109, %591, !dbg !1603
  br i1 %592, label %593, label %635, !dbg !1603

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1604
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1604
  br i1 %597, label %598, label %607, !dbg !1604

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1606
  %600 = icmp eq i8 %599, 0, !dbg !1606
  br i1 %600, label %603, label %601, !dbg !1609

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1610
  br label %652, !dbg !1611

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1612
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1614
  br i1 %606, label %26, label %607, !dbg !1614

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1615
  %610 = and i1 %609, %608, !dbg !1617
  br i1 %610, label %611, label %626, !dbg !1617

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1132, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %123, metadata !1130, metadata !DIExpression()), !dbg !1190
  %612 = load i8, i8* %97, align 1, !dbg !1618, !tbaa !1212
  %613 = icmp eq i8 %612, 0, !dbg !1621
  br i1 %613, label %626, label %614, !dbg !1621

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1132, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %617, metadata !1130, metadata !DIExpression()), !dbg !1190
  %618 = icmp ult i64 %617, %129, !dbg !1622
  br i1 %618, label %619, label %621, !dbg !1625

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1622
  store i8 %615, i8* %620, align 1, !dbg !1622, !tbaa !1212
  br label %621, !dbg !1622

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %622, metadata !1130, metadata !DIExpression()), !dbg !1190
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %623, metadata !1132, metadata !DIExpression()), !dbg !1190
  %624 = load i8, i8* %623, align 1, !dbg !1618, !tbaa !1212
  %625 = icmp eq i8 %624, 0, !dbg !1621
  br i1 %625, label %626, label %614, !dbg !1621, !llvm.loop !1627

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1233
  call void @llvm.dbg.value(metadata i64 %627, metadata !1130, metadata !DIExpression()), !dbg !1190
  %628 = icmp ult i64 %627, %129, !dbg !1629
  br i1 %628, label %629, label %652, !dbg !1631

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1632
  store i8 0, i8* %630, align 1, !dbg !1633, !tbaa !1212
  br label %652, !dbg !1632

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %637, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.label(metadata !1189), !dbg !1634
  %633 = icmp eq i8 %101, 0, !dbg !1635
  %634 = select i1 %633, i32 2, i32 4, !dbg !1635
  br label %642, !dbg !1635

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1121, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %637, metadata !1123, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.label(metadata !1189), !dbg !1634
  %639 = icmp eq i32 %93, 2, !dbg !1637
  %640 = icmp eq i8 %636, 0, !dbg !1635
  %641 = select i1 %640, i32 2, i32 4, !dbg !1635
  br i1 %639, label %642, label %646, !dbg !1635

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1635

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1124, metadata !DIExpression()), !dbg !1190
  %650 = and i32 %5, -3, !dbg !1638
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1639
  br label %652, !dbg !1640

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1641
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1642 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1646, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %1, metadata !1647, metadata !DIExpression()), !dbg !1650
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %3, metadata !1648, metadata !DIExpression()), !dbg !1650
  %4 = icmp eq i8* %3, %0, !dbg !1652
  br i1 %4, label %5, label %72, !dbg !1654

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %6, metadata !1649, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %6, metadata !1656, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8* undef, metadata !1662, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 85, metadata !1663, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 84, metadata !1664, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 70, metadata !1665, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 45, metadata !1666, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 56, metadata !1667, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 0, metadata !1668, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 0, metadata !1669, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 0, metadata !1670, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 0, metadata !1671, metadata !DIExpression()), !dbg !1672
  %7 = load i8, i8* %6, align 1, !dbg !1675, !tbaa !1212
  %8 = and i8 %7, -33, !dbg !1675
  %9 = sext i8 %8 to i32, !dbg !1675
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1675

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1677, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* undef, metadata !1682, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 84, metadata !1683, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 70, metadata !1684, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 45, metadata !1685, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 56, metadata !1686, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, metadata !1687, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, metadata !1688, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, metadata !1689, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, metadata !1690, metadata !DIExpression()), !dbg !1691
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1695
  %12 = load i8, i8* %11, align 1, !dbg !1695, !tbaa !1212
  %13 = and i8 %12, -33, !dbg !1695
  %14 = icmp eq i8 %13, 84, !dbg !1695
  br i1 %14, label %15, label %69, !dbg !1695

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1697, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8* undef, metadata !1702, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 70, metadata !1703, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 45, metadata !1704, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 56, metadata !1705, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 0, metadata !1707, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 0, metadata !1708, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 0, metadata !1709, metadata !DIExpression()), !dbg !1710
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1714
  %17 = load i8, i8* %16, align 1, !dbg !1714, !tbaa !1212
  %18 = and i8 %17, -33, !dbg !1714
  %19 = icmp eq i8 %18, 70, !dbg !1714
  br i1 %19, label %20, label %69, !dbg !1714

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1716, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8* undef, metadata !1721, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 45, metadata !1722, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 56, metadata !1723, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1728
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1732
  %22 = load i8, i8* %21, align 1, !dbg !1732, !tbaa !1212
  %23 = icmp eq i8 %22, 45, !dbg !1732
  br i1 %23, label %24, label %69, !dbg !1734

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1735, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* undef, metadata !1740, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 56, metadata !1741, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1744, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1746
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1750
  %26 = load i8, i8* %25, align 1, !dbg !1750, !tbaa !1212
  %27 = icmp eq i8 %26, 56, !dbg !1750
  br i1 %27, label %28, label %69, !dbg !1752

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1753, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8* undef, metadata !1758, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1763
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1767
  %30 = load i8, i8* %29, align 1, !dbg !1767, !tbaa !1212
  %31 = icmp eq i8 %30, 0, !dbg !1767
  br i1 %31, label %32, label %69, !dbg !1769

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1770, !tbaa !1212
  %34 = icmp eq i8 %33, 96, !dbg !1771
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !1770
  br label %72, !dbg !1772

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1677, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* undef, metadata !1682, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 66, metadata !1683, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 49, metadata !1684, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 56, metadata !1685, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 48, metadata !1686, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 51, metadata !1687, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 48, metadata !1688, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 0, metadata !1689, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 0, metadata !1690, metadata !DIExpression()), !dbg !1773
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1777
  %38 = load i8, i8* %37, align 1, !dbg !1777, !tbaa !1212
  %39 = and i8 %38, -33, !dbg !1777
  %40 = icmp eq i8 %39, 66, !dbg !1777
  br i1 %40, label %41, label %69, !dbg !1777

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1697, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* undef, metadata !1702, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 49, metadata !1703, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 56, metadata !1704, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 48, metadata !1705, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 51, metadata !1706, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 48, metadata !1707, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1708, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1709, metadata !DIExpression()), !dbg !1778
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1780
  %43 = load i8, i8* %42, align 1, !dbg !1780, !tbaa !1212
  %44 = icmp eq i8 %43, 49, !dbg !1780
  br i1 %44, label %45, label %69, !dbg !1781

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1716, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* undef, metadata !1721, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 56, metadata !1722, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 48, metadata !1723, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 51, metadata !1724, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 48, metadata !1725, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1782
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1784
  %47 = load i8, i8* %46, align 1, !dbg !1784, !tbaa !1212
  %48 = icmp eq i8 %47, 56, !dbg !1784
  br i1 %48, label %49, label %69, !dbg !1785

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1735, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8* undef, metadata !1740, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 48, metadata !1741, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 51, metadata !1742, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 48, metadata !1743, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 0, metadata !1744, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1786
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1788
  %51 = load i8, i8* %50, align 1, !dbg !1788, !tbaa !1212
  %52 = icmp eq i8 %51, 48, !dbg !1788
  br i1 %52, label %53, label %69, !dbg !1789

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1753, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8* undef, metadata !1758, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 51, metadata !1759, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 48, metadata !1760, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1790
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1792
  %55 = load i8, i8* %54, align 1, !dbg !1792, !tbaa !1212
  %56 = icmp eq i8 %55, 51, !dbg !1792
  br i1 %56, label %57, label %69, !dbg !1793

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1794, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* undef, metadata !1799, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 48, metadata !1800, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1803
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1807
  %59 = load i8, i8* %58, align 1, !dbg !1807, !tbaa !1212
  %60 = icmp eq i8 %59, 48, !dbg !1807
  br i1 %60, label %61, label %69, !dbg !1809

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1810, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* undef, metadata !1815, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1818
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1822
  %63 = load i8, i8* %62, align 1, !dbg !1822, !tbaa !1212
  %64 = icmp eq i8 %63, 0, !dbg !1822
  br i1 %64, label %65, label %69, !dbg !1824

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1825, !tbaa !1212
  %67 = icmp eq i8 %66, 96, !dbg !1826
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !1825
  br label %72, !dbg !1827

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1828
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !1829
  br label %72, !dbg !1830

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1650
  ret i8* %73, !dbg !1831
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1832 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1836 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1842 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1846, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %1, metadata !1847, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1848, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8* %0, metadata !1850, metadata !DIExpression()) #25, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %1, metadata !1855, metadata !DIExpression()) #25, !dbg !1863
  call void @llvm.dbg.value(metadata i64* null, metadata !1856, metadata !DIExpression()) #25, !dbg !1863
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1857, metadata !DIExpression()) #25, !dbg !1863
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1865
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1865
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1858, metadata !DIExpression()) #25, !dbg !1863
  %6 = tail call i32* @__errno_location() #29, !dbg !1866
  %7 = load i32, i32* %6, align 4, !dbg !1866, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %7, metadata !1859, metadata !DIExpression()) #25, !dbg !1863
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1867
  %9 = load i32, i32* %8, align 4, !dbg !1867, !tbaa !1064
  %10 = or i32 %9, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i32 %10, metadata !1860, metadata !DIExpression()) #25, !dbg !1863
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1869
  %12 = load i32, i32* %11, align 8, !dbg !1869, !tbaa !1012
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1870
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1871
  %15 = load i8*, i8** %14, align 8, !dbg !1871, !tbaa !1086
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1872
  %17 = load i8*, i8** %16, align 8, !dbg !1872, !tbaa !1089
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !1873
  %19 = add i64 %18, 1, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %19, metadata !1861, metadata !DIExpression()) #25, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %19, metadata !1875, metadata !DIExpression()) #25, !dbg !1880
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !1882
  call void @llvm.dbg.value(metadata i8* %20, metadata !1862, metadata !DIExpression()) #25, !dbg !1863
  %21 = load i32, i32* %11, align 8, !dbg !1883, !tbaa !1012
  %22 = load i8*, i8** %14, align 8, !dbg !1884, !tbaa !1086
  %23 = load i8*, i8** %16, align 8, !dbg !1885, !tbaa !1089
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !1886
  store i32 %7, i32* %6, align 4, !dbg !1887, !tbaa !776
  ret i8* %20, !dbg !1888
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1851 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1850, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %1, metadata !1855, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64* %2, metadata !1856, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1857, metadata !DIExpression()), !dbg !1889
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1890
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1890
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1858, metadata !DIExpression()), !dbg !1889
  %7 = tail call i32* @__errno_location() #29, !dbg !1891
  %8 = load i32, i32* %7, align 4, !dbg !1891, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %8, metadata !1859, metadata !DIExpression()), !dbg !1889
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1892
  %10 = load i32, i32* %9, align 4, !dbg !1892, !tbaa !1064
  %11 = icmp eq i64* %2, null, !dbg !1893
  %12 = zext i1 %11 to i32, !dbg !1893
  %13 = or i32 %10, %12, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %13, metadata !1860, metadata !DIExpression()), !dbg !1889
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1895
  %15 = load i32, i32* %14, align 8, !dbg !1895, !tbaa !1012
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1896
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1897
  %18 = load i8*, i8** %17, align 8, !dbg !1897, !tbaa !1086
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1898
  %20 = load i8*, i8** %19, align 8, !dbg !1898, !tbaa !1089
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1899
  %22 = add i64 %21, 1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %22, metadata !1861, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %22, metadata !1875, metadata !DIExpression()) #25, !dbg !1901
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !1903
  call void @llvm.dbg.value(metadata i8* %23, metadata !1862, metadata !DIExpression()), !dbg !1889
  %24 = load i32, i32* %14, align 8, !dbg !1904, !tbaa !1012
  %25 = load i8*, i8** %17, align 8, !dbg !1905, !tbaa !1086
  %26 = load i8*, i8** %19, align 8, !dbg !1906, !tbaa !1089
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1907
  store i32 %8, i32* %7, align 4, !dbg !1908, !tbaa !776
  br i1 %11, label %29, label %28, !dbg !1909

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1910, !tbaa !1912
  br label %29, !dbg !1914

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1915
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1916 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1920, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1918, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 1, metadata !1919, metadata !DIExpression()), !dbg !1921
  %2 = load i32, i32* @nslots, align 4, !dbg !1922, !tbaa !776
  %3 = icmp sgt i32 %2, 1, !dbg !1925
  br i1 %3, label %4, label %12, !dbg !1926

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1925
  br label %6, !dbg !1926

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1919, metadata !DIExpression()), !dbg !1921
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1927
  %9 = load i8*, i8** %8, align 8, !dbg !1927, !tbaa !1928
  tail call void @free(i8* %9) #25, !dbg !1930
  %10 = add nuw nsw i64 %7, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %10, metadata !1919, metadata !DIExpression()), !dbg !1921
  %11 = icmp eq i64 %10, %5, !dbg !1925
  br i1 %11, label %12, label %6, !dbg !1926, !llvm.loop !1932

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1934
  %14 = load i8*, i8** %13, align 8, !dbg !1934, !tbaa !1928
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1936
  br i1 %15, label %17, label %16, !dbg !1937

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !1938
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1940, !tbaa !1941
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1942, !tbaa !1928
  br label %17, !dbg !1943

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1944
  br i1 %18, label %21, label %19, !dbg !1946

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1947
  tail call void @free(i8* %20) #25, !dbg !1949
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1950, !tbaa !618
  br label %21, !dbg !1951

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1952, !tbaa !776
  ret void, !dbg !1953
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1954 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1956, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %1, metadata !1957, metadata !DIExpression()), !dbg !1958
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1959
  ret i8* %3, !dbg !1960
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !1961 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1965, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8* %1, metadata !1966, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %2, metadata !1967, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1968, metadata !DIExpression()), !dbg !1980
  %5 = tail call i32* @__errno_location() #29, !dbg !1981
  %6 = load i32, i32* %5, align 4, !dbg !1981, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %6, metadata !1969, metadata !DIExpression()), !dbg !1980
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1982, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1970, metadata !DIExpression()), !dbg !1980
  %8 = icmp slt i32 %0, 0, !dbg !1983
  br i1 %8, label %9, label %10, !dbg !1985

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !1986
  unreachable, !dbg !1986

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1987, !tbaa !776
  %12 = icmp sgt i32 %11, %0, !dbg !1988
  br i1 %12, label %34, label %13, !dbg !1989

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1990
  call void @llvm.dbg.value(metadata i1 %14, metadata !1971, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1974, metadata !DIExpression()), !dbg !1991
  %15 = icmp eq i32 %0, 2147483647, !dbg !1992
  br i1 %15, label %16, label %17, !dbg !1994

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !1995
  unreachable, !dbg !1995

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1996
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1996
  %20 = add nuw nsw i32 %0, 1, !dbg !1997
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1998
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !1999
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1999
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1970, metadata !DIExpression()), !dbg !1980
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2000, !tbaa !618
  br i1 %14, label %25, label %26, !dbg !2001

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2002, !tbaa.struct !2004
  br label %26, !dbg !2005

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2006, !tbaa !776
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2007
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2008
  %31 = sub nsw i32 %20, %27, !dbg !2009
  %32 = sext i32 %31 to i64, !dbg !2010
  %33 = shl nsw i64 %32, 4, !dbg !2011
  call void @llvm.dbg.value(metadata i8* %30, metadata !1402, metadata !DIExpression()) #25, !dbg !2012
  call void @llvm.dbg.value(metadata i32 0, metadata !1408, metadata !DIExpression()) #25, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %33, metadata !1409, metadata !DIExpression()) #25, !dbg !2012
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !2014
  store i32 %20, i32* @nslots, align 4, !dbg !2015, !tbaa !776
  br label %34, !dbg !2016

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1980
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1970, metadata !DIExpression()), !dbg !1980
  %36 = zext i32 %0 to i64, !dbg !2017
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2018
  %38 = load i64, i64* %37, align 8, !dbg !2018, !tbaa !1941
  call void @llvm.dbg.value(metadata i64 %38, metadata !1975, metadata !DIExpression()), !dbg !2019
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2020
  %40 = load i8*, i8** %39, align 8, !dbg !2020, !tbaa !1928
  call void @llvm.dbg.value(metadata i8* %40, metadata !1977, metadata !DIExpression()), !dbg !2019
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2021
  %42 = load i32, i32* %41, align 4, !dbg !2021, !tbaa !1064
  %43 = or i32 %42, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %43, metadata !1978, metadata !DIExpression()), !dbg !2019
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2023
  %45 = load i32, i32* %44, align 8, !dbg !2023, !tbaa !1012
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2024
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2025
  %48 = load i8*, i8** %47, align 8, !dbg !2025, !tbaa !1086
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2026
  %50 = load i8*, i8** %49, align 8, !dbg !2026, !tbaa !1089
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2027
  call void @llvm.dbg.value(metadata i64 %51, metadata !1979, metadata !DIExpression()), !dbg !2019
  %52 = icmp ugt i64 %38, %51, !dbg !2028
  br i1 %52, label %63, label %53, !dbg !2030

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %54, metadata !1975, metadata !DIExpression()), !dbg !2019
  store i64 %54, i64* %37, align 8, !dbg !2033, !tbaa !1941
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2034
  br i1 %55, label %57, label %56, !dbg !2036

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !2037
  br label %57, !dbg !2037

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1875, metadata !DIExpression()) #25, !dbg !2038
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !2040
  call void @llvm.dbg.value(metadata i8* %58, metadata !1977, metadata !DIExpression()), !dbg !2019
  store i8* %58, i8** %39, align 8, !dbg !2041, !tbaa !1928
  %59 = load i32, i32* %44, align 8, !dbg !2042, !tbaa !1012
  %60 = load i8*, i8** %47, align 8, !dbg !2043, !tbaa !1086
  %61 = load i8*, i8** %49, align 8, !dbg !2044, !tbaa !1089
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2045
  br label %63, !dbg !2046

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2019
  call void @llvm.dbg.value(metadata i8* %64, metadata !1977, metadata !DIExpression()), !dbg !2019
  store i32 %6, i32* %5, align 4, !dbg !2047, !tbaa !776
  ret i8* %64, !dbg !2048
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2049 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2053, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %1, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %2, metadata !2055, metadata !DIExpression()), !dbg !2056
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2057
  ret i8* %4, !dbg !2058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2059 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2061, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32 0, metadata !1956, metadata !DIExpression()) #25, !dbg !2063
  call void @llvm.dbg.value(metadata i8* %0, metadata !1957, metadata !DIExpression()) #25, !dbg !2063
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2065
  ret i8* %2, !dbg !2066
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2067 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2071, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %1, metadata !2072, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()) #25, !dbg !2074
  call void @llvm.dbg.value(metadata i8* %0, metadata !2054, metadata !DIExpression()) #25, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %1, metadata !2055, metadata !DIExpression()) #25, !dbg !2074
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2076
  ret i8* %3, !dbg !2077
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2078 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2082, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1, metadata !2083, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %2, metadata !2084, metadata !DIExpression()), !dbg !2086
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2087
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2087
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2085, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %1, metadata !2093, metadata !DIExpression()) #25, !dbg !2099
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2098, metadata !DIExpression()) #25, !dbg !2101
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2101, !alias.scope !2089
  %6 = icmp eq i32 %1, 10, !dbg !2102
  br i1 %6, label %7, label %8, !dbg !2104

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2105, !noalias !2089
  unreachable, !dbg !2105

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2106
  store i32 %1, i32* %9, align 8, !dbg !2107, !tbaa !1012, !alias.scope !2089
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2109
  ret i8* %10, !dbg !2110
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2111 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2115, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 %1, metadata !2116, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8* %2, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %3, metadata !2118, metadata !DIExpression()), !dbg !2120
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2121
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2121
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2119, metadata !DIExpression()), !dbg !2122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %1, metadata !2093, metadata !DIExpression()) #25, !dbg !2127
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2098, metadata !DIExpression()) #25, !dbg !2129
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !2129, !alias.scope !2123
  %7 = icmp eq i32 %1, 10, !dbg !2130
  br i1 %7, label %8, label %9, !dbg !2131

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2132, !noalias !2123
  unreachable, !dbg !2132

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2133
  store i32 %1, i32* %10, align 8, !dbg !2134, !tbaa !1012, !alias.scope !2123
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2135
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2136
  ret i8* %11, !dbg !2137
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2138 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8* %1, metadata !2143, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 0, metadata !2082, metadata !DIExpression()) #25, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %0, metadata !2083, metadata !DIExpression()) #25, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %1, metadata !2084, metadata !DIExpression()) #25, !dbg !2145
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2147
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2147
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2085, metadata !DIExpression()) #25, !dbg !2148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149) #25, !dbg !2152
  call void @llvm.dbg.value(metadata i32 %0, metadata !2093, metadata !DIExpression()) #25, !dbg !2153
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2098, metadata !DIExpression()) #25, !dbg !2155
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !2155, !alias.scope !2149
  %5 = icmp eq i32 %0, 10, !dbg !2156
  br i1 %5, label %6, label %7, !dbg !2157

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !2158, !noalias !2149
  unreachable, !dbg !2158

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2159
  store i32 %0, i32* %8, align 8, !dbg !2160, !tbaa !1012, !alias.scope !2149
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2161
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2162
  ret i8* %9, !dbg !2163
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2164 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8* %1, metadata !2169, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i64 %2, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i32 0, metadata !2115, metadata !DIExpression()) #25, !dbg !2172
  call void @llvm.dbg.value(metadata i32 %0, metadata !2116, metadata !DIExpression()) #25, !dbg !2172
  call void @llvm.dbg.value(metadata i8* %1, metadata !2117, metadata !DIExpression()) #25, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %2, metadata !2118, metadata !DIExpression()) #25, !dbg !2172
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2174
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2174
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2119, metadata !DIExpression()) #25, !dbg !2175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176) #25, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %0, metadata !2093, metadata !DIExpression()) #25, !dbg !2180
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2098, metadata !DIExpression()) #25, !dbg !2182
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2182, !alias.scope !2176
  %6 = icmp eq i32 %0, 10, !dbg !2183
  br i1 %6, label %7, label %8, !dbg !2184

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2185, !noalias !2176
  unreachable, !dbg !2185

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2186
  store i32 %0, i32* %9, align 8, !dbg !2187, !tbaa !1012, !alias.scope !2176
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !2188
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2189
  ret i8* %10, !dbg !2190
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2191 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2195, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %1, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %2, metadata !2197, metadata !DIExpression()), !dbg !2199
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2200
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2200
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2198, metadata !DIExpression()), !dbg !2201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2202, !tbaa.struct !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1030, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %2, metadata !1031, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 1, metadata !1032, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %2, metadata !1033, metadata !DIExpression()), !dbg !2204
  %6 = lshr i8 %2, 5, !dbg !2206
  %7 = zext i8 %6 to i64, !dbg !2206
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2207
  call void @llvm.dbg.value(metadata i32* %8, metadata !1035, metadata !DIExpression()), !dbg !2204
  %9 = and i8 %2, 31, !dbg !2208
  %10 = zext i8 %9 to i32, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %10, metadata !1037, metadata !DIExpression()), !dbg !2204
  %11 = load i32, i32* %8, align 4, !dbg !2209, !tbaa !776
  %12 = lshr i32 %11, %10, !dbg !2210
  %13 = and i32 %12, 1, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %13, metadata !1038, metadata !DIExpression()), !dbg !2204
  %14 = xor i32 %13, 1, !dbg !2212
  %15 = shl i32 %14, %10, !dbg !2213
  %16 = xor i32 %15, %11, !dbg !2214
  store i32 %16, i32* %8, align 4, !dbg !2214, !tbaa !776
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2216
  ret i8* %17, !dbg !2217
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2218 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2222, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8 %1, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %0, metadata !2195, metadata !DIExpression()) #25, !dbg !2225
  call void @llvm.dbg.value(metadata i64 -1, metadata !2196, metadata !DIExpression()) #25, !dbg !2225
  call void @llvm.dbg.value(metadata i8 %1, metadata !2197, metadata !DIExpression()) #25, !dbg !2225
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2227
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2227
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2198, metadata !DIExpression()) #25, !dbg !2228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2229, !tbaa.struct !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1030, metadata !DIExpression()) #25, !dbg !2230
  call void @llvm.dbg.value(metadata i8 %1, metadata !1031, metadata !DIExpression()) #25, !dbg !2230
  call void @llvm.dbg.value(metadata i32 1, metadata !1032, metadata !DIExpression()) #25, !dbg !2230
  call void @llvm.dbg.value(metadata i8 %1, metadata !1033, metadata !DIExpression()) #25, !dbg !2230
  %5 = lshr i8 %1, 5, !dbg !2232
  %6 = zext i8 %5 to i64, !dbg !2232
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2233
  call void @llvm.dbg.value(metadata i32* %7, metadata !1035, metadata !DIExpression()) #25, !dbg !2230
  %8 = and i8 %1, 31, !dbg !2234
  %9 = zext i8 %8 to i32, !dbg !2234
  call void @llvm.dbg.value(metadata i32 %9, metadata !1037, metadata !DIExpression()) #25, !dbg !2230
  %10 = load i32, i32* %7, align 4, !dbg !2235, !tbaa !776
  %11 = lshr i32 %10, %9, !dbg !2236
  %12 = and i32 %11, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i32 %12, metadata !1038, metadata !DIExpression()) #25, !dbg !2230
  %13 = xor i32 %12, 1, !dbg !2238
  %14 = shl i32 %13, %9, !dbg !2239
  %15 = xor i32 %14, %10, !dbg !2240
  store i32 %15, i32* %7, align 4, !dbg !2240, !tbaa !776
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2241
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2242
  ret i8* %16, !dbg !2243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2244 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2246, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i8* %0, metadata !2222, metadata !DIExpression()) #25, !dbg !2248
  call void @llvm.dbg.value(metadata i8 58, metadata !2223, metadata !DIExpression()) #25, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %0, metadata !2195, metadata !DIExpression()) #25, !dbg !2250
  call void @llvm.dbg.value(metadata i64 -1, metadata !2196, metadata !DIExpression()) #25, !dbg !2250
  call void @llvm.dbg.value(metadata i8 58, metadata !2197, metadata !DIExpression()) #25, !dbg !2250
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2252
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2252
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2198, metadata !DIExpression()) #25, !dbg !2253
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2254, !tbaa.struct !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1030, metadata !DIExpression()) #25, !dbg !2255
  call void @llvm.dbg.value(metadata i8 58, metadata !1031, metadata !DIExpression()) #25, !dbg !2255
  call void @llvm.dbg.value(metadata i32 1, metadata !1032, metadata !DIExpression()) #25, !dbg !2255
  call void @llvm.dbg.value(metadata i8 58, metadata !1033, metadata !DIExpression()) #25, !dbg !2255
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2257
  call void @llvm.dbg.value(metadata i32* %4, metadata !1035, metadata !DIExpression()) #25, !dbg !2255
  call void @llvm.dbg.value(metadata i32 26, metadata !1037, metadata !DIExpression()) #25, !dbg !2255
  %5 = load i32, i32* %4, align 4, !dbg !2258, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %5, metadata !1038, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2255
  %6 = or i32 %5, 67108864, !dbg !2259
  store i32 %6, i32* %4, align 4, !dbg !2259, !tbaa !776
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2261
  ret i8* %7, !dbg !2262
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2263 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %1, metadata !2266, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %0, metadata !2195, metadata !DIExpression()) #25, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %1, metadata !2196, metadata !DIExpression()) #25, !dbg !2268
  call void @llvm.dbg.value(metadata i8 58, metadata !2197, metadata !DIExpression()) #25, !dbg !2268
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2270
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2270
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2198, metadata !DIExpression()) #25, !dbg !2271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2272, !tbaa.struct !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1030, metadata !DIExpression()) #25, !dbg !2273
  call void @llvm.dbg.value(metadata i8 58, metadata !1031, metadata !DIExpression()) #25, !dbg !2273
  call void @llvm.dbg.value(metadata i32 1, metadata !1032, metadata !DIExpression()) #25, !dbg !2273
  call void @llvm.dbg.value(metadata i8 58, metadata !1033, metadata !DIExpression()) #25, !dbg !2273
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2275
  call void @llvm.dbg.value(metadata i32* %5, metadata !1035, metadata !DIExpression()) #25, !dbg !2273
  call void @llvm.dbg.value(metadata i32 26, metadata !1037, metadata !DIExpression()) #25, !dbg !2273
  %6 = load i32, i32* %5, align 4, !dbg !2276, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %6, metadata !1038, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2273
  %7 = or i32 %6, 67108864, !dbg !2277
  store i32 %7, i32* %5, align 4, !dbg !2277, !tbaa !776
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !2278
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2279
  ret i8* %8, !dbg !2280
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2281 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2098, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %0, metadata !2283, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %1, metadata !2284, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %2, metadata !2285, metadata !DIExpression()), !dbg !2289
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2290
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2286, metadata !DIExpression()), !dbg !2291
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2292
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2292
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2293), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %1, metadata !2093, metadata !DIExpression()) #25, !dbg !2296
  call void @llvm.dbg.value(metadata i32 0, metadata !2098, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2296
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2287, !alias.scope !2293
  %8 = icmp eq i32 %1, 10, !dbg !2297
  br i1 %8, label %9, label %10, !dbg !2298

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2299, !noalias !2293
  unreachable, !dbg !2299

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2098, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2296
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2292
  store i32 %1, i32* %11, align 8, !dbg !2292, !tbaa.struct !2203
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2292
  %13 = bitcast i32* %12 to i8*, !dbg !2292
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2292, !tbaa.struct !2300
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2292
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1030, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 58, metadata !1031, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 1, metadata !1032, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 58, metadata !1033, metadata !DIExpression()), !dbg !2301
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2303
  call void @llvm.dbg.value(metadata i32* %14, metadata !1035, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 26, metadata !1037, metadata !DIExpression()), !dbg !2301
  %15 = load i32, i32* %14, align 4, !dbg !2304, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %15, metadata !1038, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2301
  %16 = or i32 %15, 67108864, !dbg !2305
  store i32 %16, i32* %14, align 4, !dbg !2305, !tbaa !776
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2306
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2307
  ret i8* %17, !dbg !2308
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2309 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2313, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i8* %1, metadata !2314, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i8* %2, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i8* %3, metadata !2316, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 %0, metadata !2318, metadata !DIExpression()) #25, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %1, metadata !2323, metadata !DIExpression()) #25, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %2, metadata !2324, metadata !DIExpression()) #25, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %3, metadata !2325, metadata !DIExpression()) #25, !dbg !2328
  call void @llvm.dbg.value(metadata i64 -1, metadata !2326, metadata !DIExpression()) #25, !dbg !2328
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2330
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2327, metadata !DIExpression()) #25, !dbg !2331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2332, !tbaa.struct !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1071, metadata !DIExpression()) #25, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %1, metadata !1072, metadata !DIExpression()) #25, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %2, metadata !1073, metadata !DIExpression()) #25, !dbg !2333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1071, metadata !DIExpression()) #25, !dbg !2333
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2335
  store i32 10, i32* %7, align 8, !dbg !2336, !tbaa !1012
  %8 = icmp ne i8* %1, null, !dbg !2337
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2338
  br i1 %10, label %12, label %11, !dbg !2338

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2339
  unreachable, !dbg !2339

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2340
  store i8* %1, i8** %13, align 8, !dbg !2341, !tbaa !1086
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2342
  store i8* %2, i8** %14, align 8, !dbg !2343, !tbaa !1089
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !2344
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2345
  ret i8* %15, !dbg !2346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2319 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2318, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %1, metadata !2323, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %2, metadata !2324, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %3, metadata !2325, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %4, metadata !2326, metadata !DIExpression()), !dbg !2347
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2348
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2348
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2327, metadata !DIExpression()), !dbg !2349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2350, !tbaa.struct !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1071, metadata !DIExpression()) #25, !dbg !2351
  call void @llvm.dbg.value(metadata i8* %1, metadata !1072, metadata !DIExpression()) #25, !dbg !2351
  call void @llvm.dbg.value(metadata i8* %2, metadata !1073, metadata !DIExpression()) #25, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1071, metadata !DIExpression()) #25, !dbg !2351
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2353
  store i32 10, i32* %8, align 8, !dbg !2354, !tbaa !1012
  %9 = icmp ne i8* %1, null, !dbg !2355
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2356
  br i1 %11, label %13, label %12, !dbg !2356

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !2357
  unreachable, !dbg !2357

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2358
  store i8* %1, i8** %14, align 8, !dbg !2359, !tbaa !1086
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2360
  store i8* %2, i8** %15, align 8, !dbg !2361, !tbaa !1089
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2363
  ret i8* %16, !dbg !2364
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2365 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2369, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8* %1, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8* %2, metadata !2371, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i32 0, metadata !2313, metadata !DIExpression()) #25, !dbg !2373
  call void @llvm.dbg.value(metadata i8* %0, metadata !2314, metadata !DIExpression()) #25, !dbg !2373
  call void @llvm.dbg.value(metadata i8* %1, metadata !2315, metadata !DIExpression()) #25, !dbg !2373
  call void @llvm.dbg.value(metadata i8* %2, metadata !2316, metadata !DIExpression()) #25, !dbg !2373
  call void @llvm.dbg.value(metadata i32 0, metadata !2318, metadata !DIExpression()) #25, !dbg !2375
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()) #25, !dbg !2375
  call void @llvm.dbg.value(metadata i8* %1, metadata !2324, metadata !DIExpression()) #25, !dbg !2375
  call void @llvm.dbg.value(metadata i8* %2, metadata !2325, metadata !DIExpression()) #25, !dbg !2375
  call void @llvm.dbg.value(metadata i64 -1, metadata !2326, metadata !DIExpression()) #25, !dbg !2375
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2377
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2327, metadata !DIExpression()) #25, !dbg !2378
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2379, !tbaa.struct !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1071, metadata !DIExpression()) #25, !dbg !2380
  call void @llvm.dbg.value(metadata i8* %0, metadata !1072, metadata !DIExpression()) #25, !dbg !2380
  call void @llvm.dbg.value(metadata i8* %1, metadata !1073, metadata !DIExpression()) #25, !dbg !2380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1071, metadata !DIExpression()) #25, !dbg !2380
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2382
  store i32 10, i32* %6, align 8, !dbg !2383, !tbaa !1012
  %7 = icmp ne i8* %0, null, !dbg !2384
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2385
  br i1 %9, label %11, label %10, !dbg !2385

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2386
  unreachable, !dbg !2386

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2387
  store i8* %0, i8** %12, align 8, !dbg !2388, !tbaa !1086
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2389
  store i8* %1, i8** %13, align 8, !dbg !2390, !tbaa !1089
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !2391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2392
  ret i8* %14, !dbg !2393
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2394 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2398, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8* %1, metadata !2399, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8* %2, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i64 %3, metadata !2401, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 0, metadata !2318, metadata !DIExpression()) #25, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()) #25, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %1, metadata !2324, metadata !DIExpression()) #25, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %2, metadata !2325, metadata !DIExpression()) #25, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %3, metadata !2326, metadata !DIExpression()) #25, !dbg !2403
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2405
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2405
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2327, metadata !DIExpression()) #25, !dbg !2406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2407, !tbaa.struct !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1071, metadata !DIExpression()) #25, !dbg !2408
  call void @llvm.dbg.value(metadata i8* %0, metadata !1072, metadata !DIExpression()) #25, !dbg !2408
  call void @llvm.dbg.value(metadata i8* %1, metadata !1073, metadata !DIExpression()) #25, !dbg !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1071, metadata !DIExpression()) #25, !dbg !2408
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2410
  store i32 10, i32* %7, align 8, !dbg !2411, !tbaa !1012
  %8 = icmp ne i8* %0, null, !dbg !2412
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2413
  br i1 %10, label %12, label %11, !dbg !2413

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2414
  unreachable, !dbg !2414

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2415
  store i8* %0, i8** %13, align 8, !dbg !2416, !tbaa !1086
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2417
  store i8* %1, i8** %14, align 8, !dbg !2418, !tbaa !1089
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2420
  ret i8* %15, !dbg !2421
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2422 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %1, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %2, metadata !2428, metadata !DIExpression()), !dbg !2429
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2430
  ret i8* %4, !dbg !2431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2432 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2436, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %1, metadata !2437, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()) #25, !dbg !2439
  call void @llvm.dbg.value(metadata i8* %0, metadata !2427, metadata !DIExpression()) #25, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %1, metadata !2428, metadata !DIExpression()) #25, !dbg !2439
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2441
  ret i8* %3, !dbg !2442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2443 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %1, metadata !2448, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()) #25, !dbg !2450
  call void @llvm.dbg.value(metadata i8* %1, metadata !2427, metadata !DIExpression()) #25, !dbg !2450
  call void @llvm.dbg.value(metadata i64 -1, metadata !2428, metadata !DIExpression()) #25, !dbg !2450
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2452
  ret i8* %3, !dbg !2453
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2454 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()) #25, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %0, metadata !2448, metadata !DIExpression()) #25, !dbg !2460
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()) #25, !dbg !2462
  call void @llvm.dbg.value(metadata i8* %0, metadata !2427, metadata !DIExpression()) #25, !dbg !2462
  call void @llvm.dbg.value(metadata i64 -1, metadata !2428, metadata !DIExpression()) #25, !dbg !2462
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2464
  ret i8* %2, !dbg !2465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2466 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2506, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8* %1, metadata !2507, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8* %2, metadata !2508, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8* %3, metadata !2509, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8** %4, metadata !2510, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i64 %5, metadata !2511, metadata !DIExpression()), !dbg !2512
  %7 = icmp eq i8* %1, null, !dbg !2513
  br i1 %7, label %10, label %8, !dbg !2515

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !2516
  br label %12, !dbg !2516

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !2517
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #25, !dbg !2518
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !2518
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2519
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #25, !dbg !2520
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.81, i64 0, i64 0)) #25, !dbg !2520
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2521
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
  ], !dbg !2522

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #25, !dbg !2523
  %21 = load i8*, i8** %4, align 8, !dbg !2523, !tbaa !618
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !2523
  br label %147, !dbg !2525

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #25, !dbg !2526
  %25 = load i8*, i8** %4, align 8, !dbg !2526, !tbaa !618
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2526
  %27 = load i8*, i8** %26, align 8, !dbg !2526, !tbaa !618
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !2526
  br label %147, !dbg !2527

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #25, !dbg !2528
  %31 = load i8*, i8** %4, align 8, !dbg !2528, !tbaa !618
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2528
  %33 = load i8*, i8** %32, align 8, !dbg !2528, !tbaa !618
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2528
  %35 = load i8*, i8** %34, align 8, !dbg !2528, !tbaa !618
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !2528
  br label %147, !dbg !2529

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #25, !dbg !2530
  %39 = load i8*, i8** %4, align 8, !dbg !2530, !tbaa !618
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2530
  %41 = load i8*, i8** %40, align 8, !dbg !2530, !tbaa !618
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2530
  %43 = load i8*, i8** %42, align 8, !dbg !2530, !tbaa !618
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2530
  %45 = load i8*, i8** %44, align 8, !dbg !2530, !tbaa !618
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !2530
  br label %147, !dbg !2531

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #25, !dbg !2532
  %49 = load i8*, i8** %4, align 8, !dbg !2532, !tbaa !618
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2532
  %51 = load i8*, i8** %50, align 8, !dbg !2532, !tbaa !618
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2532
  %53 = load i8*, i8** %52, align 8, !dbg !2532, !tbaa !618
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2532
  %55 = load i8*, i8** %54, align 8, !dbg !2532, !tbaa !618
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2532
  %57 = load i8*, i8** %56, align 8, !dbg !2532, !tbaa !618
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !2532
  br label %147, !dbg !2533

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #25, !dbg !2534
  %61 = load i8*, i8** %4, align 8, !dbg !2534, !tbaa !618
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2534
  %63 = load i8*, i8** %62, align 8, !dbg !2534, !tbaa !618
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2534
  %65 = load i8*, i8** %64, align 8, !dbg !2534, !tbaa !618
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2534
  %67 = load i8*, i8** %66, align 8, !dbg !2534, !tbaa !618
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2534
  %69 = load i8*, i8** %68, align 8, !dbg !2534, !tbaa !618
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2534
  %71 = load i8*, i8** %70, align 8, !dbg !2534, !tbaa !618
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !2534
  br label %147, !dbg !2535

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #25, !dbg !2536
  %75 = load i8*, i8** %4, align 8, !dbg !2536, !tbaa !618
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2536
  %77 = load i8*, i8** %76, align 8, !dbg !2536, !tbaa !618
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2536
  %79 = load i8*, i8** %78, align 8, !dbg !2536, !tbaa !618
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2536
  %81 = load i8*, i8** %80, align 8, !dbg !2536, !tbaa !618
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2536
  %83 = load i8*, i8** %82, align 8, !dbg !2536, !tbaa !618
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2536
  %85 = load i8*, i8** %84, align 8, !dbg !2536, !tbaa !618
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2536
  %87 = load i8*, i8** %86, align 8, !dbg !2536, !tbaa !618
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !2536
  br label %147, !dbg !2537

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #25, !dbg !2538
  %91 = load i8*, i8** %4, align 8, !dbg !2538, !tbaa !618
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2538
  %93 = load i8*, i8** %92, align 8, !dbg !2538, !tbaa !618
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2538
  %95 = load i8*, i8** %94, align 8, !dbg !2538, !tbaa !618
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2538
  %97 = load i8*, i8** %96, align 8, !dbg !2538, !tbaa !618
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2538
  %99 = load i8*, i8** %98, align 8, !dbg !2538, !tbaa !618
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2538
  %101 = load i8*, i8** %100, align 8, !dbg !2538, !tbaa !618
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2538
  %103 = load i8*, i8** %102, align 8, !dbg !2538, !tbaa !618
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2538
  %105 = load i8*, i8** %104, align 8, !dbg !2538, !tbaa !618
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !2538
  br label %147, !dbg !2539

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #25, !dbg !2540
  %109 = load i8*, i8** %4, align 8, !dbg !2540, !tbaa !618
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2540
  %111 = load i8*, i8** %110, align 8, !dbg !2540, !tbaa !618
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2540
  %113 = load i8*, i8** %112, align 8, !dbg !2540, !tbaa !618
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2540
  %115 = load i8*, i8** %114, align 8, !dbg !2540, !tbaa !618
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2540
  %117 = load i8*, i8** %116, align 8, !dbg !2540, !tbaa !618
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2540
  %119 = load i8*, i8** %118, align 8, !dbg !2540, !tbaa !618
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2540
  %121 = load i8*, i8** %120, align 8, !dbg !2540, !tbaa !618
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2540
  %123 = load i8*, i8** %122, align 8, !dbg !2540, !tbaa !618
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2540
  %125 = load i8*, i8** %124, align 8, !dbg !2540, !tbaa !618
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !2540
  br label %147, !dbg !2541

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.91, i64 0, i64 0), i32 5) #25, !dbg !2542
  %129 = load i8*, i8** %4, align 8, !dbg !2542, !tbaa !618
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2542
  %131 = load i8*, i8** %130, align 8, !dbg !2542, !tbaa !618
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2542
  %133 = load i8*, i8** %132, align 8, !dbg !2542, !tbaa !618
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2542
  %135 = load i8*, i8** %134, align 8, !dbg !2542, !tbaa !618
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2542
  %137 = load i8*, i8** %136, align 8, !dbg !2542, !tbaa !618
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2542
  %139 = load i8*, i8** %138, align 8, !dbg !2542, !tbaa !618
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2542
  %141 = load i8*, i8** %140, align 8, !dbg !2542, !tbaa !618
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2542
  %143 = load i8*, i8** %142, align 8, !dbg !2542, !tbaa !618
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2542
  %145 = load i8*, i8** %144, align 8, !dbg !2542, !tbaa !618
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !2542
  br label %147, !dbg !2543

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2544
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2545 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2549, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %1, metadata !2550, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %2, metadata !2551, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %3, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8** %4, metadata !2553, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 0, metadata !2554, metadata !DIExpression()), !dbg !2555
  br label %6, !dbg !2556

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2558
  call void @llvm.dbg.value(metadata i64 %7, metadata !2554, metadata !DIExpression()), !dbg !2555
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2559
  %9 = load i8*, i8** %8, align 8, !dbg !2559, !tbaa !618
  %10 = icmp eq i8* %9, null, !dbg !2561
  %11 = add i64 %7, 1, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %11, metadata !2554, metadata !DIExpression()), !dbg !2555
  br i1 %10, label %12, label %6, !dbg !2561, !llvm.loop !2563

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2565
  ret void, !dbg !2566
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2567 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2578, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %1, metadata !2579, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %2, metadata !2580, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %3, metadata !2581, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2582, metadata !DIExpression()), !dbg !2586
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2587
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2584, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2583, metadata !DIExpression()), !dbg !2586
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2583, metadata !DIExpression()), !dbg !2586
  %11 = load i32, i32* %8, align 8, !dbg !2589
  %12 = icmp ult i32 %11, 41, !dbg !2589
  br i1 %12, label %13, label %18, !dbg !2589

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2589
  %15 = zext i32 %11 to i64, !dbg !2589
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2589
  %17 = add nuw nsw i32 %11, 8, !dbg !2589
  store i32 %17, i32* %8, align 8, !dbg !2589
  br label %21, !dbg !2589

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2589
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2589
  store i8* %20, i8** %9, align 8, !dbg !2589
  br label %21, !dbg !2589

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2589
  %25 = load i8*, i8** %24, align 8, !dbg !2589
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2592
  store i8* %25, i8** %26, align 16, !dbg !2593, !tbaa !618
  %27 = icmp eq i8* %25, null, !dbg !2594
  br i1 %27, label %30, label %28, !dbg !2595

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 1, metadata !2583, metadata !DIExpression()), !dbg !2586
  %29 = icmp ult i32 %22, 41, !dbg !2589
  br i1 %29, label %35, label %32, !dbg !2589

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2596
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2597
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2598
  ret void, !dbg !2598

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2589
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2589
  store i8* %34, i8** %9, align 8, !dbg !2589
  br label %40, !dbg !2589

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2589
  %37 = zext i32 %22 to i64, !dbg !2589
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2589
  %39 = add nuw nsw i32 %22, 8, !dbg !2589
  store i32 %39, i32* %8, align 8, !dbg !2589
  br label %40, !dbg !2589

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2589
  %44 = load i8*, i8** %43, align 8, !dbg !2589
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2592
  store i8* %44, i8** %45, align 8, !dbg !2593, !tbaa !618
  %46 = icmp eq i8* %44, null, !dbg !2594
  br i1 %46, label %30, label %47, !dbg !2595

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 2, metadata !2583, metadata !DIExpression()), !dbg !2586
  %48 = icmp ult i32 %41, 41, !dbg !2589
  br i1 %48, label %52, label %49, !dbg !2589

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2589
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2589
  store i8* %51, i8** %9, align 8, !dbg !2589
  br label %57, !dbg !2589

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2589
  %54 = zext i32 %41 to i64, !dbg !2589
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2589
  %56 = add nuw nsw i32 %41, 8, !dbg !2589
  store i32 %56, i32* %8, align 8, !dbg !2589
  br label %57, !dbg !2589

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2589
  %61 = load i8*, i8** %60, align 8, !dbg !2589
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2592
  store i8* %61, i8** %62, align 16, !dbg !2593, !tbaa !618
  %63 = icmp eq i8* %61, null, !dbg !2594
  br i1 %63, label %30, label %64, !dbg !2595

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 3, metadata !2583, metadata !DIExpression()), !dbg !2586
  %65 = icmp ult i32 %58, 41, !dbg !2589
  br i1 %65, label %69, label %66, !dbg !2589

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2589
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2589
  store i8* %68, i8** %9, align 8, !dbg !2589
  br label %74, !dbg !2589

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2589
  %71 = zext i32 %58 to i64, !dbg !2589
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2589
  %73 = add nuw nsw i32 %58, 8, !dbg !2589
  store i32 %73, i32* %8, align 8, !dbg !2589
  br label %74, !dbg !2589

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2589
  %78 = load i8*, i8** %77, align 8, !dbg !2589
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2592
  store i8* %78, i8** %79, align 8, !dbg !2593, !tbaa !618
  %80 = icmp eq i8* %78, null, !dbg !2594
  br i1 %80, label %30, label %81, !dbg !2595

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 4, metadata !2583, metadata !DIExpression()), !dbg !2586
  %82 = icmp ult i32 %75, 41, !dbg !2589
  br i1 %82, label %86, label %83, !dbg !2589

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2589
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2589
  store i8* %85, i8** %9, align 8, !dbg !2589
  br label %91, !dbg !2589

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2589
  %88 = zext i32 %75 to i64, !dbg !2589
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2589
  %90 = add nuw nsw i32 %75, 8, !dbg !2589
  store i32 %90, i32* %8, align 8, !dbg !2589
  br label %91, !dbg !2589

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2589
  %95 = load i8*, i8** %94, align 8, !dbg !2589
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2592
  store i8* %95, i8** %96, align 16, !dbg !2593, !tbaa !618
  %97 = icmp eq i8* %95, null, !dbg !2594
  br i1 %97, label %30, label %98, !dbg !2595

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 5, metadata !2583, metadata !DIExpression()), !dbg !2586
  %99 = icmp ult i32 %92, 41, !dbg !2589
  br i1 %99, label %103, label %100, !dbg !2589

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2589
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2589
  store i8* %102, i8** %9, align 8, !dbg !2589
  br label %108, !dbg !2589

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2589
  %105 = zext i32 %92 to i64, !dbg !2589
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2589
  %107 = add nuw nsw i32 %92, 8, !dbg !2589
  store i32 %107, i32* %8, align 8, !dbg !2589
  br label %108, !dbg !2589

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2589
  %111 = load i8*, i8** %110, align 8, !dbg !2589
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2592
  store i8* %111, i8** %112, align 8, !dbg !2593, !tbaa !618
  %113 = icmp eq i8* %111, null, !dbg !2594
  br i1 %113, label %30, label %114, !dbg !2595

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2583, metadata !DIExpression()), !dbg !2586
  %115 = load i8*, i8** %9, align 8, !dbg !2589
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2589
  store i8* %116, i8** %9, align 8, !dbg !2589
  %117 = bitcast i8* %115 to i8**, !dbg !2589
  %118 = load i8*, i8** %117, align 8, !dbg !2589
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2592
  store i8* %118, i8** %119, align 16, !dbg !2593, !tbaa !618
  %120 = icmp eq i8* %118, null, !dbg !2594
  br i1 %120, label %30, label %121, !dbg !2595

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2583, metadata !DIExpression()), !dbg !2586
  %122 = load i8*, i8** %9, align 8, !dbg !2589
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2589
  store i8* %123, i8** %9, align 8, !dbg !2589
  %124 = bitcast i8* %122 to i8**, !dbg !2589
  %125 = load i8*, i8** %124, align 8, !dbg !2589
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2592
  store i8* %125, i8** %126, align 8, !dbg !2593, !tbaa !618
  %127 = icmp eq i8* %125, null, !dbg !2594
  br i1 %127, label %30, label %128, !dbg !2595

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2583, metadata !DIExpression()), !dbg !2586
  %129 = load i8*, i8** %9, align 8, !dbg !2589
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2589
  store i8* %130, i8** %9, align 8, !dbg !2589
  %131 = bitcast i8* %129 to i8**, !dbg !2589
  %132 = load i8*, i8** %131, align 8, !dbg !2589
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2592
  store i8* %132, i8** %133, align 16, !dbg !2593, !tbaa !618
  %134 = icmp eq i8* %132, null, !dbg !2594
  br i1 %134, label %30, label %135, !dbg !2595

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2583, metadata !DIExpression()), !dbg !2586
  %136 = load i8*, i8** %9, align 8, !dbg !2589
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2589
  store i8* %137, i8** %9, align 8, !dbg !2589
  %138 = bitcast i8* %136 to i8**, !dbg !2589
  %139 = load i8*, i8** %138, align 8, !dbg !2589
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2592
  store i8* %139, i8** %140, align 8, !dbg !2593, !tbaa !618
  %141 = icmp eq i8* %139, null, !dbg !2594
  %142 = select i1 %141, i64 9, i64 10, !dbg !2595
  br label %30, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2599 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2603, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %1, metadata !2604, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %2, metadata !2605, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %3, metadata !2606, metadata !DIExpression()), !dbg !2613
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2614
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2614
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2607, metadata !DIExpression()), !dbg !2615
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2616
  call void @llvm.va_start(i8* nonnull %6), !dbg !2616
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2617
  call void @llvm.va_end(i8* nonnull %6), !dbg !2618
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2619
  ret void, !dbg !2619
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2620 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2621, !tbaa !618
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2621
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #25, !dbg !2622
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.95, i64 0, i64 0)) #25, !dbg !2622
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.96, i64 0, i64 0), i32 5) #25, !dbg !2623
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.97, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.98, i64 0, i64 0)) #25, !dbg !2623
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.99, i64 0, i64 0), i32 5) #25, !dbg !2624
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.100, i64 0, i64 0)) #25, !dbg !2624
  ret void, !dbg !2625
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !2626 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2630, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %1, metadata !2631, metadata !DIExpression()), !dbg !2632
  %3 = udiv i64 9223372036854775807, %1, !dbg !2633
  %4 = icmp ult i64 %3, %0, !dbg !2633
  br i1 %4, label %5, label %6, !dbg !2635

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !2636
  unreachable, !dbg !2636

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %7, metadata !2638, metadata !DIExpression()) #25, !dbg !2644
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !2646
  call void @llvm.dbg.value(metadata i8* %8, metadata !2643, metadata !DIExpression()) #25, !dbg !2644
  %9 = icmp eq i8* %8, null, !dbg !2647
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2649
  br i1 %11, label %12, label %13, !dbg !2649

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !2650
  unreachable, !dbg !2650

13:                                               ; preds = %6
  ret i8* %8, !dbg !2651
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2639 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2638, metadata !DIExpression()), !dbg !2652
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %2, metadata !2643, metadata !DIExpression()), !dbg !2652
  %3 = icmp eq i8* %2, null, !dbg !2654
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2655
  br i1 %5, label %6, label %7, !dbg !2655

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2656
  unreachable, !dbg !2656

7:                                                ; preds = %1
  ret i8* %2, !dbg !2657
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !2658 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %2, metadata !2664, metadata !DIExpression()), !dbg !2665
  %4 = udiv i64 9223372036854775807, %2, !dbg !2666
  %5 = icmp ult i64 %4, %1, !dbg !2666
  br i1 %5, label %6, label %7, !dbg !2668

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !2669
  unreachable, !dbg !2669

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2670
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()) #25, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %8, metadata !2676, metadata !DIExpression()) #25, !dbg !2677
  %9 = icmp eq i64 %8, 0, !dbg !2679
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2681
  br i1 %11, label %12, label %13, !dbg !2681

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !2682
  br label %19, !dbg !2684

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %14, metadata !2671, metadata !DIExpression()) #25, !dbg !2677
  %15 = icmp eq i8* %14, null, !dbg !2686
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2688
  br i1 %17, label %18, label %19, !dbg !2688

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2689
  unreachable, !dbg !2689

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2677
  ret i8* %20, !dbg !2690
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2672 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %1, metadata !2676, metadata !DIExpression()), !dbg !2691
  %3 = icmp eq i64 %1, 0, !dbg !2692
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2693
  br i1 %5, label %6, label %7, !dbg !2693

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !2694
  br label %13, !dbg !2695

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %8, metadata !2671, metadata !DIExpression()), !dbg !2691
  %9 = icmp eq i8* %8, null, !dbg !2697
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2698
  br i1 %11, label %12, label %13, !dbg !2698

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !2699
  unreachable, !dbg !2699

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2691
  ret i8* %14, !dbg !2700
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !181 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !186, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64* %1, metadata !187, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %2, metadata !188, metadata !DIExpression()), !dbg !2701
  %4 = load i64, i64* %1, align 8, !dbg !2702, !tbaa !1912
  call void @llvm.dbg.value(metadata i64 %4, metadata !189, metadata !DIExpression()), !dbg !2701
  %5 = icmp eq i8* %0, null, !dbg !2703
  br i1 %5, label %6, label %20, !dbg !2705

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2706
  br i1 %7, label %8, label %13, !dbg !2709

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression()), !dbg !2701
  %10 = icmp ugt i64 %2, 128, !dbg !2712
  %11 = zext i1 %10 to i64, !dbg !2712
  %12 = add nuw nsw i64 %9, %11, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %12, metadata !189, metadata !DIExpression()), !dbg !2701
  br label %13, !dbg !2714

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2701
  call void @llvm.dbg.value(metadata i64 %14, metadata !189, metadata !DIExpression()), !dbg !2701
  %15 = udiv i64 9223372036854775807, %2, !dbg !2715
  %16 = icmp ult i64 %15, %14, !dbg !2715
  br i1 %16, label %19, label %17, !dbg !2717

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !189, metadata !DIExpression()), !dbg !2701
  store i64 %14, i64* %1, align 8, !dbg !2718, !tbaa !1912
  %18 = mul i64 %14, %2, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()) #25, !dbg !2720
  call void @llvm.dbg.value(metadata i64 %28, metadata !2676, metadata !DIExpression()) #25, !dbg !2720
  br label %31, !dbg !2722

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2723
  unreachable, !dbg !2723

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2724
  %22 = icmp ugt i64 %21, %4, !dbg !2727
  br i1 %22, label %24, label %23, !dbg !2728

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !2729
  unreachable, !dbg !2729

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2730
  %26 = add nuw i64 %4, 1, !dbg !2731
  %27 = add i64 %26, %25, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %27, metadata !189, metadata !DIExpression()), !dbg !2701
  store i64 %27, i64* %1, align 8, !dbg !2718, !tbaa !1912
  %28 = mul i64 %27, %2, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()) #25, !dbg !2720
  call void @llvm.dbg.value(metadata i64 %28, metadata !2676, metadata !DIExpression()) #25, !dbg !2720
  %29 = icmp eq i64 %28, 0, !dbg !2733
  br i1 %29, label %30, label %31, !dbg !2722

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !2734
  br label %38, !dbg !2735

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !2736
  call void @llvm.dbg.value(metadata i8* %33, metadata !2671, metadata !DIExpression()) #25, !dbg !2720
  %34 = icmp eq i8* %33, null, !dbg !2737
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2738
  br i1 %36, label %37, label %38, !dbg !2738

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !2739
  unreachable, !dbg !2739

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2720
  ret i8* %39, !dbg !2740
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !2741 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %0, metadata !2638, metadata !DIExpression()) #25, !dbg !2745
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2747
  call void @llvm.dbg.value(metadata i8* %2, metadata !2643, metadata !DIExpression()) #25, !dbg !2745
  %3 = icmp eq i8* %2, null, !dbg !2748
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2749
  br i1 %5, label %6, label %7, !dbg !2749

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2750
  unreachable, !dbg !2750

7:                                                ; preds = %1
  ret i8* %2, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2752 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64* %1, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %0, metadata !186, metadata !DIExpression()) #25, !dbg !2759
  call void @llvm.dbg.value(metadata i64* %1, metadata !187, metadata !DIExpression()) #25, !dbg !2759
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()) #25, !dbg !2759
  %3 = load i64, i64* %1, align 8, !dbg !2761, !tbaa !1912
  call void @llvm.dbg.value(metadata i64 %3, metadata !189, metadata !DIExpression()) #25, !dbg !2759
  %4 = icmp eq i8* %0, null, !dbg !2762
  br i1 %4, label %5, label %10, !dbg !2763

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2764
  br i1 %6, label %17, label %7, !dbg !2765

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !189, metadata !DIExpression()) #25, !dbg !2759
  %8 = icmp slt i64 %3, 0, !dbg !2766
  br i1 %8, label %9, label %17, !dbg !2767

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !2768
  unreachable, !dbg !2768

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2769
  br i1 %11, label %13, label %12, !dbg !2770

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !2771
  unreachable, !dbg !2771

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2772
  %15 = add nuw nsw i64 %3, 1, !dbg !2773
  %16 = add nuw nsw i64 %15, %14, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %16, metadata !189, metadata !DIExpression()) #25, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()) #25, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %16, metadata !2676, metadata !DIExpression()) #25, !dbg !2775
  br label %17, !dbg !2777

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2778
  store i64 %18, i64* %1, align 8, !dbg !2778, !tbaa !1912
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %19, metadata !2671, metadata !DIExpression()) #25, !dbg !2775
  %20 = icmp eq i8* %19, null, !dbg !2780
  br i1 %20, label %21, label %22, !dbg !2781

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !2782
  unreachable, !dbg !2782

22:                                               ; preds = %17
  ret i8* %19, !dbg !2783
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2784 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %0, metadata !2788, metadata !DIExpression()) #25, !dbg !2793
  call void @llvm.dbg.value(metadata i64 1, metadata !2791, metadata !DIExpression()) #25, !dbg !2793
  %2 = icmp slt i64 %0, 0, !dbg !2795
  br i1 %2, label %6, label %3, !dbg !2797

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !2798
  call void @llvm.dbg.value(metadata i8* %4, metadata !2792, metadata !DIExpression()) #25, !dbg !2793
  %5 = icmp eq i8* %4, null, !dbg !2799
  br i1 %5, label %6, label %7, !dbg !2800

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !2801
  unreachable, !dbg !2801

7:                                                ; preds = %3
  ret i8* %4, !dbg !2802
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2789 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2788, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i64 %1, metadata !2791, metadata !DIExpression()), !dbg !2803
  %3 = udiv i64 9223372036854775807, %1, !dbg !2804
  %4 = icmp ult i64 %3, %0, !dbg !2804
  br i1 %4, label %8, label %5, !dbg !2805

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !2806
  call void @llvm.dbg.value(metadata i8* %6, metadata !2792, metadata !DIExpression()), !dbg !2803
  %7 = icmp eq i8* %6, null, !dbg !2807
  br i1 %7, label %8, label %9, !dbg !2808

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !2809
  unreachable, !dbg !2809

9:                                                ; preds = %5
  ret i8* %6, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2811 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2817, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i64 %1, metadata !2818, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i64 %1, metadata !2638, metadata !DIExpression()) #25, !dbg !2820
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !2822
  call void @llvm.dbg.value(metadata i8* %3, metadata !2643, metadata !DIExpression()) #25, !dbg !2820
  %4 = icmp eq i8* %3, null, !dbg !2823
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2824
  br i1 %6, label %7, label %8, !dbg !2824

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !2825
  unreachable, !dbg !2825

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2826, metadata !DIExpression()) #25, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %0, metadata !2833, metadata !DIExpression()) #25, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %1, metadata !2834, metadata !DIExpression()) #25, !dbg !2835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !2837
  ret i8* %3, !dbg !2838
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2839 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2841, metadata !DIExpression()), !dbg !2842
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !2843
  %3 = add i64 %2, 1, !dbg !2844
  call void @llvm.dbg.value(metadata i8* %0, metadata !2817, metadata !DIExpression()) #25, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %3, metadata !2818, metadata !DIExpression()) #25, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %3, metadata !2638, metadata !DIExpression()) #25, !dbg !2847
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %4, metadata !2643, metadata !DIExpression()) #25, !dbg !2847
  %5 = icmp eq i8* %4, null, !dbg !2850
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2851
  br i1 %7, label %8, label %9, !dbg !2851

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2852
  unreachable, !dbg !2852

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2826, metadata !DIExpression()) #25, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %0, metadata !2833, metadata !DIExpression()) #25, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %3, metadata !2834, metadata !DIExpression()) #25, !dbg !2853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !2855
  ret i8* %4, !dbg !2856
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2857 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2858, !tbaa !776
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.111, i64 0, i64 0), i32 5) #25, !dbg !2859
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i64 0, i64 0), i8* %2) #25, !dbg !2860
  tail call void @abort() #27, !dbg !2861
  unreachable, !dbg !2861
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !2862 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2864, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1, metadata !2865, metadata !DIExpression()), !dbg !2870
  %3 = icmp eq i64 %0, 0, !dbg !2871
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2872
  br i1 %5, label %11, label %6, !dbg !2872

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2867, metadata !DIExpression()), !dbg !2873
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2874
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2874
  br i1 %8, label %9, label %11, !dbg !2876

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !2877
  store i32 12, i32* %10, align 4, !dbg !2879, !tbaa !776
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2864, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %12, metadata !2865, metadata !DIExpression()), !dbg !2870
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %14, metadata !2866, metadata !DIExpression()), !dbg !2870
  br label %15, !dbg !2881

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2870
  ret i8* %16, !dbg !2882
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !2883 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2887, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i32 %1, metadata !2888, metadata !DIExpression()), !dbg !2911
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2912
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #25, !dbg !2912
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !2889, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 -1, metadata !2899, metadata !DIExpression()), !dbg !2911
  call void @llvm.va_start(i8* nonnull %4), !dbg !2914
  switch i32 %1, label %97 [
    i32 0, label %5
    i32 1030, label %24
    i32 1, label %76
    i32 3, label %76
    i32 1025, label %76
    i32 9, label %76
    i32 1032, label %76
    i32 1034, label %76
    i32 11, label %76
    i32 1033, label %78
    i32 1031, label %78
    i32 10, label %78
    i32 1026, label %78
    i32 2, label %78
    i32 4, label %78
    i32 1024, label %78
    i32 8, label %78
  ], !dbg !2915

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !2916
  %7 = load i32, i32* %6, align 16, !dbg !2916
  %8 = icmp ult i32 %7, 41, !dbg !2916
  br i1 %8, label %9, label %15, !dbg !2916

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !2916
  %11 = load i8*, i8** %10, align 16, !dbg !2916
  %12 = zext i32 %7 to i64, !dbg !2916
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !2916
  %14 = add nuw nsw i32 %7, 8, !dbg !2916
  store i32 %14, i32* %6, align 16, !dbg !2916
  br label %19, !dbg !2916

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !2916
  %17 = load i8*, i8** %16, align 8, !dbg !2916
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !2916
  store i8* %18, i8** %16, align 8, !dbg !2916
  br label %19, !dbg !2916

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !2916
  %22 = load i32, i32* %21, align 4, !dbg !2916
  call void @llvm.dbg.value(metadata i32 %22, metadata !2900, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 %0, metadata !2918, metadata !DIExpression()) #25, !dbg !2923
  call void @llvm.dbg.value(metadata i32 %22, metadata !2921, metadata !DIExpression()) #25, !dbg !2923
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #25, !dbg !2925
  call void @llvm.dbg.value(metadata i32 %23, metadata !2922, metadata !DIExpression()) #25, !dbg !2923
  call void @llvm.dbg.value(metadata i32 %23, metadata !2899, metadata !DIExpression()), !dbg !2911
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !2926
  %26 = load i32, i32* %25, align 16, !dbg !2926
  %27 = icmp ult i32 %26, 41, !dbg !2926
  br i1 %27, label %28, label %34, !dbg !2926

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !2926
  %30 = load i8*, i8** %29, align 16, !dbg !2926
  %31 = zext i32 %26 to i64, !dbg !2926
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !2926
  %33 = add nuw nsw i32 %26, 8, !dbg !2926
  store i32 %33, i32* %25, align 16, !dbg !2926
  br label %38, !dbg !2926

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !2926
  %36 = load i8*, i8** %35, align 8, !dbg !2926
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !2926
  store i8* %37, i8** %35, align 8, !dbg !2926
  br label %38, !dbg !2926

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !2926
  %41 = load i32, i32* %40, align 4, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %41, metadata !2903, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()) #25, !dbg !2928
  call void @llvm.dbg.value(metadata i32 %41, metadata !161, metadata !DIExpression()) #25, !dbg !2928
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2930, !tbaa !776
  %43 = icmp sgt i32 %42, -1, !dbg !2932
  br i1 %43, label %44, label %56, !dbg !2933

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #25, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %45, metadata !162, metadata !DIExpression()) #25, !dbg !2928
  %46 = icmp sgt i32 %45, -1, !dbg !2936
  br i1 %46, label %51, label %47, !dbg !2938

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #29, !dbg !2939
  %49 = load i32, i32* %48, align 4, !dbg !2939, !tbaa !776
  %50 = icmp eq i32 %49, 22, !dbg !2940
  br i1 %50, label %52, label %51, !dbg !2941

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2942, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %62, metadata !162, metadata !DIExpression()) #25, !dbg !2928
  br label %116, !dbg !2944

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !2918, metadata !DIExpression()) #25, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %41, metadata !2921, metadata !DIExpression()) #25, !dbg !2945
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #25, !dbg !2948
  call void @llvm.dbg.value(metadata i32 %53, metadata !2922, metadata !DIExpression()) #25, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %53, metadata !162, metadata !DIExpression()) #25, !dbg !2928
  %54 = icmp sgt i32 %53, -1, !dbg !2949
  br i1 %54, label %55, label %116, !dbg !2951

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2952, !tbaa !776
  br label %60, !dbg !2953

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !2918, metadata !DIExpression()) #25, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %41, metadata !2921, metadata !DIExpression()) #25, !dbg !2954
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #25, !dbg !2956
  call void @llvm.dbg.value(metadata i32 %57, metadata !2922, metadata !DIExpression()) #25, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %57, metadata !162, metadata !DIExpression()) #25, !dbg !2928
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !2957
  call void @llvm.dbg.value(metadata i32 %62, metadata !162, metadata !DIExpression()) #25, !dbg !2928
  %63 = icmp sgt i32 %62, -1, !dbg !2958
  %64 = and i1 %61, %63, !dbg !2944
  br i1 %64, label %65, label %116, !dbg !2944

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #25, !dbg !2959
  call void @llvm.dbg.value(metadata i32 %66, metadata !163, metadata !DIExpression()) #25, !dbg !2960
  %67 = icmp slt i32 %66, 0, !dbg !2961
  br i1 %67, label %72, label %68, !dbg !2962

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !2963
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #25, !dbg !2964
  %71 = icmp eq i32 %70, -1, !dbg !2965
  br i1 %71, label %72, label %116, !dbg !2966

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #29, !dbg !2967
  %74 = load i32, i32* %73, align 4, !dbg !2967, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %74, metadata !166, metadata !DIExpression()) #25, !dbg !2968
  %75 = call i32 @close(i32 %62) #25, !dbg !2969
  store i32 %74, i32* %73, align 4, !dbg !2970, !tbaa !776
  call void @llvm.dbg.value(metadata i32 -1, metadata !162, metadata !DIExpression()) #25, !dbg !2928
  br label %116, !dbg !2971

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #25, !dbg !2972
  call void @llvm.dbg.value(metadata i32 %77, metadata !2899, metadata !DIExpression()), !dbg !2911
  br label %116, !dbg !2973

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !2974
  %80 = load i32, i32* %79, align 16, !dbg !2974
  %81 = icmp ult i32 %80, 41, !dbg !2974
  br i1 %81, label %82, label %88, !dbg !2974

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !2974
  %84 = load i8*, i8** %83, align 16, !dbg !2974
  %85 = zext i32 %80 to i64, !dbg !2974
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !2974
  %87 = add nuw nsw i32 %80, 8, !dbg !2974
  store i32 %87, i32* %79, align 16, !dbg !2974
  br label %92, !dbg !2974

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !2974
  %90 = load i8*, i8** %89, align 8, !dbg !2974
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !2974
  store i8* %91, i8** %89, align 8, !dbg !2974
  br label %92, !dbg !2974

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !2974
  %95 = load i32, i32* %94, align 4, !dbg !2974
  call void @llvm.dbg.value(metadata i32 %95, metadata !2905, metadata !DIExpression()), !dbg !2975
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #25, !dbg !2976
  call void @llvm.dbg.value(metadata i32 %96, metadata !2899, metadata !DIExpression()), !dbg !2911
  br label %116, !dbg !2977

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !2978
  %99 = load i32, i32* %98, align 16, !dbg !2978
  %100 = icmp ult i32 %99, 41, !dbg !2978
  br i1 %100, label %101, label %107, !dbg !2978

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !2978
  %103 = load i8*, i8** %102, align 16, !dbg !2978
  %104 = zext i32 %99 to i64, !dbg !2978
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !2978
  %106 = add nuw nsw i32 %99, 8, !dbg !2978
  store i32 %106, i32* %98, align 16, !dbg !2978
  br label %111, !dbg !2978

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !2978
  %109 = load i8*, i8** %108, align 8, !dbg !2978
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !2978
  store i8* %110, i8** %108, align 8, !dbg !2978
  br label %111, !dbg !2978

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !2978
  %114 = load i8*, i8** %113, align 8, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %114, metadata !2909, metadata !DIExpression()), !dbg !2979
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #25, !dbg !2980
  call void @llvm.dbg.value(metadata i32 %115, metadata !2899, metadata !DIExpression()), !dbg !2911
  br label %116, !dbg !2981

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !2982
  call void @llvm.dbg.value(metadata i32 %117, metadata !2899, metadata !DIExpression()), !dbg !2911
  call void @llvm.va_end(i8* nonnull %4), !dbg !2983
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #25, !dbg !2984
  ret i32 %117, !dbg !2985
}

declare !dbg !2986 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2987 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3003, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %1, metadata !3004, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %2, metadata !3005, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3006, metadata !DIExpression()), !dbg !3012
  %6 = bitcast i32* %5 to i8*, !dbg !3013
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3013
  %7 = icmp eq i32* %0, null, !dbg !3014
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3016
  call void @llvm.dbg.value(metadata i32* %8, metadata !3003, metadata !DIExpression()), !dbg !3012
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %9, metadata !3007, metadata !DIExpression()), !dbg !3012
  %10 = icmp ugt i64 %9, -3, !dbg !3018
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3019
  br i1 %12, label %13, label %18, !dbg !3019

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !3020
  br i1 %14, label %18, label %15, !dbg !3021

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3022, !tbaa !1212
  call void @llvm.dbg.value(metadata i8 %16, metadata !3009, metadata !DIExpression()), !dbg !3023
  %17 = zext i8 %16 to i32, !dbg !3024
  store i32 %17, i32* %8, align 4, !dbg !3025, !tbaa !776
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3012
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3026
  ret i64 %19, !dbg !3026
}

; Function Attrs: nounwind
declare !dbg !3027 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3031 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3069, metadata !DIExpression()), !dbg !3074
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !3075
  call void @llvm.dbg.value(metadata i1 undef, metadata !3070, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3074
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3076, metadata !DIExpression()), !dbg !3080
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3082
  %4 = load i32, i32* %3, align 8, !dbg !3082, !tbaa !3083
  %5 = and i32 %4, 32, !dbg !3085
  %6 = icmp eq i32 %5, 0, !dbg !3085
  call void @llvm.dbg.value(metadata i1 %6, metadata !3072, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3074
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !3086
  %8 = icmp eq i32 %7, 0, !dbg !3087
  call void @llvm.dbg.value(metadata i1 %8, metadata !3073, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3074
  br i1 %6, label %9, label %19, !dbg !3088

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3090
  call void @llvm.dbg.value(metadata i1 %10, metadata !3070, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3074
  %11 = or i1 %10, %8, !dbg !3091
  %12 = xor i1 %8, true, !dbg !3091
  %13 = sext i1 %12 to i32, !dbg !3091
  br i1 %11, label %22, label %14, !dbg !3091

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !3092
  %16 = load i32, i32* %15, align 4, !dbg !3092, !tbaa !776
  %17 = icmp ne i32 %16, 9, !dbg !3093
  %18 = sext i1 %17 to i32, !dbg !3094
  br label %22, !dbg !3094

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3095

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !3097
  store i32 0, i32* %21, align 4, !dbg !3099, !tbaa !776
  br label %22, !dbg !3097

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3074
  ret i32 %23, !dbg !3100
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3101 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3105, metadata !DIExpression()), !dbg !3110
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3111
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3111
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3106, metadata !DIExpression()), !dbg !3112
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !3113
  %5 = icmp eq i32 %4, 0, !dbg !3113
  br i1 %5, label %6, label %13, !dbg !3115

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3116
  %8 = load i16, i16* %7, align 16, !dbg !3116
  %9 = icmp eq i16 %8, 67, !dbg !3116
  br i1 %9, label %13, label %10, !dbg !3117

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i64 0, i64 0), i64 6), !dbg !3118
  %12 = icmp ne i32 %11, 0, !dbg !3119
  br label %13, !dbg !3117

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3110
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3120
  ret i1 %14, !dbg !3120
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3121 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !3126
  call void @llvm.dbg.value(metadata i8* %1, metadata !3125, metadata !DIExpression()), !dbg !3127
  %2 = icmp eq i8* %1, null, !dbg !3128
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.126, i64 0, i64 0), i8* %1, !dbg !3130
  call void @llvm.dbg.value(metadata i8* %3, metadata !3125, metadata !DIExpression()), !dbg !3127
  %4 = load i8, i8* %3, align 1, !dbg !3131, !tbaa !1212
  %5 = icmp eq i8 %4, 0, !dbg !3135
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i8* %3, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %6, metadata !3125, metadata !DIExpression()), !dbg !3127
  ret i8* %6, !dbg !3137
}

; Function Attrs: nounwind
declare !dbg !3138 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3145, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8* %1, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %2, metadata !3147, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 %0, metadata !3149, metadata !DIExpression()) #25, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %1, metadata !3152, metadata !DIExpression()) #25, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %2, metadata !3153, metadata !DIExpression()) #25, !dbg !3158
  call void @llvm.dbg.value(metadata i32 %0, metadata !3160, metadata !DIExpression()) #25, !dbg !3166
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3168
  call void @llvm.dbg.value(metadata i8* %4, metadata !3165, metadata !DIExpression()) #25, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %4, metadata !3154, metadata !DIExpression()) #25, !dbg !3158
  %5 = icmp eq i8* %4, null, !dbg !3169
  br i1 %5, label %6, label %9, !dbg !3170

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3171
  br i1 %7, label %19, label %8, !dbg !3174

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3175, !tbaa !1212
  br label %19, !dbg !3176

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %10, metadata !3155, metadata !DIExpression()) #25, !dbg !3178
  %11 = icmp ult i64 %10, %2, !dbg !3179
  br i1 %11, label %12, label %14, !dbg !3181

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3182
  call void @llvm.dbg.value(metadata i8* %1, metadata !3184, metadata !DIExpression()) #25, !dbg !3189
  call void @llvm.dbg.value(metadata i8* %4, metadata !3187, metadata !DIExpression()) #25, !dbg !3189
  call void @llvm.dbg.value(metadata i64 %13, metadata !3188, metadata !DIExpression()) #25, !dbg !3189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !3191
  br label %19, !dbg !3192

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3193
  br i1 %15, label %19, label %16, !dbg !3196

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %1, metadata !3184, metadata !DIExpression()) #25, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %4, metadata !3187, metadata !DIExpression()) #25, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %17, metadata !3188, metadata !DIExpression()) #25, !dbg !3199
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !3201
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3202
  store i8 0, i8* %18, align 1, !dbg !3203, !tbaa !1212
  br label %19, !dbg !3204

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3205
  ret i32 %20, !dbg !3206
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3207 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i32 %0, metadata !3160, metadata !DIExpression()) #25, !dbg !3211
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %2, metadata !3165, metadata !DIExpression()) #25, !dbg !3211
  ret i8* %2, !dbg !3214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3215 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3253, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i32 0, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i32 0, metadata !3256, metadata !DIExpression()), !dbg !3257
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3258
  call void @llvm.dbg.value(metadata i32 %2, metadata !3255, metadata !DIExpression()), !dbg !3257
  %3 = icmp slt i32 %2, 0, !dbg !3259
  br i1 %3, label %4, label %6, !dbg !3261

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3262
  br label %24, !dbg !3263

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3264
  %8 = icmp eq i32 %7, 0, !dbg !3264
  br i1 %8, label %13, label %9, !dbg !3266

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3267
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !3268
  %12 = icmp eq i64 %11, -1, !dbg !3269
  br i1 %12, label %16, label %13, !dbg !3270

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !3271
  %15 = icmp eq i32 %14, 0, !dbg !3271
  br i1 %15, label %16, label %18, !dbg !3272

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3254, metadata !DIExpression()), !dbg !3257
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3273
  call void @llvm.dbg.value(metadata i32 %21, metadata !3256, metadata !DIExpression()), !dbg !3257
  br label %24, !dbg !3274

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !3275
  %20 = load i32, i32* %19, align 4, !dbg !3275, !tbaa !776
  call void @llvm.dbg.value(metadata i32 %20, metadata !3254, metadata !DIExpression()), !dbg !3257
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3273
  call void @llvm.dbg.value(metadata i32 %21, metadata !3256, metadata !DIExpression()), !dbg !3257
  %22 = icmp eq i32 %20, 0, !dbg !3276
  br i1 %22, label %24, label %23, !dbg !3274

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3278, !tbaa !776
  call void @llvm.dbg.value(metadata i32 -1, metadata !3256, metadata !DIExpression()), !dbg !3257
  br label %24, !dbg !3280

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3257
  ret i32 %25, !dbg !3281
}

; Function Attrs: nofree nounwind
declare !dbg !3282 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3285 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3286 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3289 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3327, metadata !DIExpression()), !dbg !3328
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3329
  br i1 %2, label %6, label %3, !dbg !3331

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3332
  %5 = icmp eq i32 %4, 0, !dbg !3332
  br i1 %5, label %6, label %8, !dbg !3333

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3334
  br label %17, !dbg !3335

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3336, metadata !DIExpression()) #25, !dbg !3341
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3343
  %10 = load i32, i32* %9, align 8, !dbg !3343, !tbaa !3083
  %11 = and i32 %10, 256, !dbg !3345
  %12 = icmp eq i32 %11, 0, !dbg !3345
  br i1 %12, label %15, label %13, !dbg !3346

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !3347
  br label %15, !dbg !3347

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3348
  br label %17, !dbg !3349

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3328
  ret i32 %18, !dbg !3350
}

; Function Attrs: nofree nounwind
declare !dbg !3351 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3354 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3393, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %1, metadata !3394, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i32 %2, metadata !3395, metadata !DIExpression()), !dbg !3399
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3400
  %5 = load i8*, i8** %4, align 8, !dbg !3400, !tbaa !3401
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3402
  %7 = load i8*, i8** %6, align 8, !dbg !3402, !tbaa !3403
  %8 = icmp eq i8* %5, %7, !dbg !3404
  br i1 %8, label %9, label %28, !dbg !3405

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3406
  %11 = load i8*, i8** %10, align 8, !dbg !3406, !tbaa !3407
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3408
  %13 = load i8*, i8** %12, align 8, !dbg !3408, !tbaa !3409
  %14 = icmp eq i8* %11, %13, !dbg !3410
  br i1 %14, label %15, label %28, !dbg !3411

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3412
  %17 = load i8*, i8** %16, align 8, !dbg !3412, !tbaa !3413
  %18 = icmp eq i8* %17, null, !dbg !3414
  br i1 %18, label %19, label %28, !dbg !3415

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3416
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %21, metadata !3396, metadata !DIExpression()), !dbg !3418
  %22 = icmp eq i64 %21, -1, !dbg !3419
  br i1 %22, label %30, label %23, !dbg !3421

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3422
  %25 = load i32, i32* %24, align 8, !dbg !3423, !tbaa !3083
  %26 = and i32 %25, -17, !dbg !3423
  store i32 %26, i32* %24, align 8, !dbg !3423, !tbaa !3083
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3424
  store i64 %21, i64* %27, align 8, !dbg !3425, !tbaa !3426
  br label %30, !dbg !3427

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3428
  br label %30, !dbg !3429

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3399
  ret i32 %31, !dbg !3430
}

; Function Attrs: nofree nounwind
declare !dbg !3431 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !48, !54, !62, !68, !74, !169, !145, !176, !193, !195, !157, !197, !200, !202, !204, !593, !595, !597, !599}
!llvm.ident = !{!601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601}
!llvm.module.flags = !{!602, !603, !604, !605, !606}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 48, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/sync.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !3, line: 40, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "MODE_FILE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "MODE_DATA", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "MODE_SYNC", value: 3, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, baseType: !6, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!15 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!21 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!22 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!23 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!24 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!25 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!26 = !{!27, !29}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !{!0}
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1280, elements: !44)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !34, line: 50, size: 256, elements: !35)
!34 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!35 = !{!36, !39, !41, !43}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !33, file: !34, line: 52, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !33, file: !34, line: 55, baseType: !40, size: 32, offset: 64)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !33, file: !34, line: 56, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !33, file: !34, line: 57, baseType: !40, size: 32, offset: 192)
!44 = !{!45}
!45 = !DISubrange(count: 5)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "Version", scope: !48, file: !49, line: 2, type: !37, isLocal: false, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !51, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!50 = !{}
!51 = !{!46}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "file_name", scope: !54, file: !55, line: 46, type: !37, isLocal: true, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !56, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!56 = !{!52, !57}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !54, file: !55, line: 56, type: !59, isLocal: true, isDefinition: true)
!59 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "exit_failure", scope: !62, file: !63, line: 24, type: !65, isLocal: false, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !64, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!64 = !{!60}
!65 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "program_name", scope: !68, file: !69, line: 33, type: !37, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !70, globals: !71, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!70 = !{!29, !27}
!71 = !{!66}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !74, file: !75, line: 85, type: !139, isLocal: false, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !97, globals: !102, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!76 = !{!12, !77, !82}
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, baseType: !6, size: 32, elements: !78)
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 46, baseType: !6, size: 32, elements: !84)
!83 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!85 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!94 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!97 = !{!40, !98, !99, !27}
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 46, baseType: !101)
!100 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !{!72, !103, !109, !121, !123, !128, !135, !137}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !74, file: !75, line: 101, type: !105, isLocal: false, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 320, elements: !107)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!107 = !{!108}
!108 = !DISubrange(count: 10)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !74, file: !75, line: 1052, type: !111, isLocal: false, isDefinition: true)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !75, line: 65, size: 448, elements: !112)
!112 = !{!113, !114, !115, !119, !120}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !111, file: !75, line: 68, baseType: !12, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !75, line: 71, baseType: !40, size: 32, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !111, file: !75, line: 75, baseType: !116, size: 256, offset: 64)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !111, file: !75, line: 78, baseType: !37, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !111, file: !75, line: 81, baseType: !37, size: 64, offset: 384)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !74, file: !75, line: 116, type: !111, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "slot0", scope: !74, file: !75, line: 842, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 256)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "slotvec", scope: !74, file: !75, line: 845, type: !130, isLocal: true, isDefinition: true)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !75, line: 834, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !131, file: !75, line: 836, baseType: !99, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !131, file: !75, line: 837, baseType: !27, size: 64, offset: 64)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "nslots", scope: !74, file: !75, line: 843, type: !40, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "slotvec0", scope: !74, file: !75, line: 844, type: !131, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 704, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!141 = !{!142}
!142 = !DISubrange(count: 11)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !145, file: !146, line: 26, type: !148, isLocal: false, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !147, splitDebugInlining: false, nameTableKind: None)
!146 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = !{!143}
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 47)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !153, file: !154, line: 507, type: !40, isLocal: true, isDefinition: true)
!153 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !154, file: !154, line: 488, type: !155, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !159)
!154 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = !DISubroutineType(types: !156)
!156 = !{!40, !40, !40}
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !158, splitDebugInlining: false, nameTableKind: None)
!158 = !{!151}
!159 = !{!160, !161, !162, !163, !166}
!160 = !DILocalVariable(name: "fd", arg: 1, scope: !153, file: !154, line: 488, type: !40)
!161 = !DILocalVariable(name: "target", arg: 2, scope: !153, file: !154, line: 488, type: !40)
!162 = !DILocalVariable(name: "result", scope: !153, file: !154, line: 490, type: !40)
!163 = !DILocalVariable(name: "flags", scope: !164, file: !154, line: 531, type: !40)
!164 = distinct !DILexicalBlock(scope: !165, file: !154, line: 530, column: 5)
!165 = distinct !DILexicalBlock(scope: !153, file: !154, line: 529, column: 7)
!166 = !DILocalVariable(name: "saved_errno", scope: !167, file: !154, line: 534, type: !40)
!167 = distinct !DILexicalBlock(scope: !168, file: !154, line: 533, column: 9)
!168 = distinct !DILexicalBlock(scope: !164, file: !154, line: 532, column: 11)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !171, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !{!172}
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 40, baseType: !6, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!175 = !{!29}
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !192, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!178 = !{!179}
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !181, file: !180, line: 186, baseType: !6, size: 32, elements: !190)
!180 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = distinct !DISubprogram(name: "x2nrealloc", scope: !180, file: !180, line: 174, type: !182, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !185)
!182 = !DISubroutineType(types: !183)
!183 = !{!29, !29, !184, !99}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!185 = !{!186, !187, !188, !189}
!186 = !DILocalVariable(name: "p", arg: 1, scope: !181, file: !180, line: 174, type: !29)
!187 = !DILocalVariable(name: "pn", arg: 2, scope: !181, file: !180, line: 174, type: !184)
!188 = !DILocalVariable(name: "s", arg: 3, scope: !181, file: !180, line: 174, type: !99)
!189 = !DILocalVariable(name: "n", scope: !181, file: !180, line: 176, type: !99)
!190 = !{!191}
!191 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!192 = !{!99, !27, !29}
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !199, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !{!99}
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!205 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!206 = !{!207}
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !208, line: 41, baseType: !6, size: 32, elements: !209)
!208 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!210 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!211 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!212 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!213 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!214 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!215 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!216 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!218 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!219 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!220 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!221 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!222 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!223 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!248 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!249 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!250 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!251 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!252 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!253 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!254 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!255 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!256 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!257 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!258 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!259 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!318 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!405 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!478 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!479 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!480 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!481 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!482 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!483 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!484 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!485 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!486 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!487 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!488 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!489 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!490 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!491 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!492 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!496 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!497 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!498 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!499 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!525 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!526 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!527 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!528 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!529 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!534 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!535 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!536 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!537 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!594 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, splitDebugInlining: false, nameTableKind: None)
!596 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!598 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!600 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!601 = !{!"clang version 12.0.1"}
!602 = !{i32 7, !"Dwarf Version", i32 4}
!603 = !{i32 2, !"Debug Info Version", i32 3}
!604 = !{i32 1, !"wchar_size", i32 4}
!605 = !{i32 7, !"PIC Level", i32 2}
!606 = !{i32 7, !"PIE Level", i32 2}
!607 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 58, type: !608, scopeLine: 59, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !40}
!610 = !{!611}
!611 = !DILocalVariable(name: "status", arg: 1, scope: !607, file: !3, line: 58, type: !40)
!612 = !DILocation(line: 0, scope: !607)
!613 = !DILocation(line: 60, column: 14, scope: !614)
!614 = distinct !DILexicalBlock(scope: !607, file: !3, line: 60, column: 7)
!615 = !DILocation(line: 60, column: 7, scope: !607)
!616 = !DILocation(line: 61, column: 5, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !3, line: 61, column: 5)
!618 = !{!619, !619, i64 0}
!619 = !{!"any pointer", !620, i64 0}
!620 = !{!"omnipotent char", !621, i64 0}
!621 = !{!"Simple C/C++ TBAA"}
!622 = !DILocation(line: 64, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !614, file: !3, line: 63, column: 5)
!624 = !DILocation(line: 65, column: 7, scope: !623)
!625 = !DILocation(line: 73, column: 7, scope: !623)
!626 = !DILocation(line: 76, column: 7, scope: !623)
!627 = !DILocation(line: 80, column: 7, scope: !623)
!628 = !DILocation(line: 81, column: 7, scope: !623)
!629 = !DILocalVariable(name: "program", arg: 1, scope: !630, file: !631, line: 634, type: !37)
!630 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !631, file: !631, line: 634, type: !632, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !634)
!631 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!632 = !DISubroutineType(types: !633)
!633 = !{null, !37}
!634 = !{!629, !635, !644, !645, !647}
!635 = !DILocalVariable(name: "infomap", scope: !630, file: !631, line: 636, type: !636)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 896, elements: !642)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !630, file: !631, line: 636, size: 128, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !638, file: !631, line: 636, baseType: !37, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !631, line: 636, baseType: !37, size: 64, offset: 64)
!642 = !{!643}
!643 = !DISubrange(count: 7)
!644 = !DILocalVariable(name: "node", scope: !630, file: !631, line: 646, type: !37)
!645 = !DILocalVariable(name: "map_prog", scope: !630, file: !631, line: 647, type: !646)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!647 = !DILocalVariable(name: "lc_messages", scope: !630, file: !631, line: 659, type: !37)
!648 = !DILocation(line: 0, scope: !630, inlinedAt: !649)
!649 = distinct !DILocation(line: 82, column: 7, scope: !623)
!650 = !DILocation(line: 636, column: 3, scope: !630, inlinedAt: !649)
!651 = !DILocation(line: 636, column: 67, scope: !630, inlinedAt: !649)
!652 = !DILocation(line: 647, column: 36, scope: !630, inlinedAt: !649)
!653 = !DILocation(line: 649, column: 3, scope: !630, inlinedAt: !649)
!654 = !DILocation(line: 649, column: 33, scope: !630, inlinedAt: !649)
!655 = !DILocation(line: 650, column: 13, scope: !630, inlinedAt: !649)
!656 = !DILocation(line: 649, column: 20, scope: !630, inlinedAt: !649)
!657 = !{!658, !619, i64 0}
!658 = !{!"infomap", !619, i64 0, !619, i64 8}
!659 = !DILocation(line: 649, column: 10, scope: !630, inlinedAt: !649)
!660 = !DILocation(line: 649, column: 28, scope: !630, inlinedAt: !649)
!661 = distinct !{!661, !653, !655, !662}
!662 = !{!"llvm.loop.mustprogress"}
!663 = !DILocation(line: 652, column: 17, scope: !664, inlinedAt: !649)
!664 = distinct !DILexicalBlock(scope: !630, file: !631, line: 652, column: 7)
!665 = !{!658, !619, i64 8}
!666 = !DILocation(line: 652, column: 7, scope: !664, inlinedAt: !649)
!667 = !DILocation(line: 652, column: 7, scope: !630, inlinedAt: !649)
!668 = !DILocation(line: 655, column: 3, scope: !630, inlinedAt: !649)
!669 = !DILocation(line: 659, column: 29, scope: !630, inlinedAt: !649)
!670 = !DILocation(line: 660, column: 7, scope: !671, inlinedAt: !649)
!671 = distinct !DILexicalBlock(scope: !630, file: !631, line: 660, column: 7)
!672 = !DILocation(line: 660, column: 19, scope: !671, inlinedAt: !649)
!673 = !DILocation(line: 660, column: 22, scope: !671, inlinedAt: !649)
!674 = !DILocation(line: 660, column: 7, scope: !630, inlinedAt: !649)
!675 = !DILocation(line: 666, column: 7, scope: !676, inlinedAt: !649)
!676 = distinct !DILexicalBlock(scope: !671, file: !631, line: 661, column: 5)
!677 = !DILocation(line: 668, column: 5, scope: !676, inlinedAt: !649)
!678 = !DILocation(line: 669, column: 3, scope: !630, inlinedAt: !649)
!679 = !DILocation(line: 671, column: 3, scope: !630, inlinedAt: !649)
!680 = !DILocation(line: 673, column: 1, scope: !630, inlinedAt: !649)
!681 = !DILocation(line: 84, column: 3, scope: !607)
!682 = !DISubprogram(name: "dcgettext", scope: !683, file: !683, line: 51, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!683 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!684 = !DISubroutineType(types: !685)
!685 = !{!27, !37, !37, !40}
!686 = !DISubprogram(name: "fputs_unlocked", scope: !687, file: !687, line: 667, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!687 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!688 = !DISubroutineType(types: !689)
!689 = !{!40, !37, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !692, line: 49, size: 1728, elements: !693)
!692 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !709, !710, !711, !712, !716, !717, !719, !723, !726, !728, !731, !734, !735, !736, !737, !738}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !691, file: !692, line: 51, baseType: !40, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !691, file: !692, line: 54, baseType: !27, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !691, file: !692, line: 55, baseType: !27, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !691, file: !692, line: 56, baseType: !27, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !691, file: !692, line: 57, baseType: !27, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !691, file: !692, line: 58, baseType: !27, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !691, file: !692, line: 59, baseType: !27, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !691, file: !692, line: 60, baseType: !27, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !691, file: !692, line: 61, baseType: !27, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !691, file: !692, line: 64, baseType: !27, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !691, file: !692, line: 65, baseType: !27, size: 64, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !691, file: !692, line: 66, baseType: !27, size: 64, offset: 704)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !691, file: !692, line: 68, baseType: !707, size: 64, offset: 768)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !692, line: 36, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !691, file: !692, line: 70, baseType: !690, size: 64, offset: 832)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !691, file: !692, line: 72, baseType: !40, size: 32, offset: 896)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !691, file: !692, line: 73, baseType: !40, size: 32, offset: 928)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !691, file: !692, line: 74, baseType: !713, size: 64, offset: 960)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !714, line: 152, baseType: !715)
!714 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!715 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !691, file: !692, line: 77, baseType: !98, size: 16, offset: 1024)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !691, file: !692, line: 78, baseType: !718, size: 8, offset: 1040)
!718 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !691, file: !692, line: 79, baseType: !720, size: 8, offset: 1048)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 1)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !691, file: !692, line: 81, baseType: !724, size: 64, offset: 1088)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !692, line: 43, baseType: null)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !691, file: !692, line: 89, baseType: !727, size: 64, offset: 1152)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !714, line: 153, baseType: !715)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !691, file: !692, line: 91, baseType: !729, size: 64, offset: 1216)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !692, line: 37, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !691, file: !692, line: 92, baseType: !732, size: 64, offset: 1280)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !692, line: 38, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !691, file: !692, line: 93, baseType: !690, size: 64, offset: 1344)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !691, file: !692, line: 94, baseType: !29, size: 64, offset: 1408)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !691, file: !692, line: 95, baseType: !99, size: 64, offset: 1472)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !691, file: !692, line: 96, baseType: !40, size: 32, offset: 1536)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !691, file: !692, line: 98, baseType: !739, size: 160, offset: 1568)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 20)
!742 = !DISubprogram(name: "setlocale", scope: !743, file: !743, line: 122, type: !744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!743 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!744 = !DISubroutineType(types: !745)
!745 = !{!27, !40, !37}
!746 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 172, type: !747, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !750)
!747 = !DISubroutineType(types: !748)
!748 = !{!40, !40, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758}
!751 = !DILocalVariable(name: "argc", arg: 1, scope: !746, file: !3, line: 172, type: !40)
!752 = !DILocalVariable(name: "argv", arg: 2, scope: !746, file: !3, line: 172, type: !749)
!753 = !DILocalVariable(name: "c", scope: !746, file: !3, line: 174, type: !40)
!754 = !DILocalVariable(name: "args_specified", scope: !746, file: !3, line: 175, type: !59)
!755 = !DILocalVariable(name: "arg_data", scope: !746, file: !3, line: 176, type: !59)
!756 = !DILocalVariable(name: "arg_file_system", scope: !746, file: !3, line: 176, type: !59)
!757 = !DILocalVariable(name: "mode", scope: !746, file: !3, line: 177, type: !5)
!758 = !DILocalVariable(name: "ok", scope: !746, file: !3, line: 178, type: !59)
!759 = !DILocation(line: 0, scope: !746)
!760 = !DILocation(line: 181, column: 21, scope: !746)
!761 = !DILocation(line: 181, column: 3, scope: !746)
!762 = !DILocation(line: 182, column: 3, scope: !746)
!763 = !DILocation(line: 183, column: 3, scope: !746)
!764 = !DILocation(line: 184, column: 3, scope: !746)
!765 = !DILocation(line: 186, column: 3, scope: !746)
!766 = !DILocation(line: 188, column: 3, scope: !746)
!767 = !DILocation(line: 188, column: 15, scope: !746)
!768 = distinct !{!768, !766, !769, !662}
!769 = !DILocation(line: 208, column: 5, scope: !746)
!770 = !DILocation(line: 201, column: 9, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 192, column: 9)
!772 = distinct !DILexicalBlock(scope: !746, file: !3, line: 190, column: 5)
!773 = !DILocation(line: 203, column: 9, scope: !771)
!774 = !DILocation(line: 206, column: 11, scope: !771)
!775 = !DILocation(line: 210, column: 20, scope: !746)
!776 = !{!777, !777, i64 0}
!777 = !{!"int", !620, i64 0}
!778 = !DILocation(line: 210, column: 27, scope: !746)
!779 = !DILocation(line: 212, column: 16, scope: !780)
!780 = distinct !DILexicalBlock(scope: !746, file: !3, line: 212, column: 7)
!781 = !DILocation(line: 214, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !780, file: !3, line: 213, column: 5)
!783 = !DILocation(line: 218, column: 23, scope: !784)
!784 = distinct !DILexicalBlock(scope: !746, file: !3, line: 218, column: 7)
!785 = !DILocation(line: 219, column: 5, scope: !784)
!786 = !DILocation(line: 221, column: 24, scope: !787)
!787 = distinct !DILexicalBlock(scope: !746, file: !3, line: 221, column: 7)
!788 = !DILocation(line: 230, column: 7, scope: !746)
!789 = !DILocation(line: 231, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !746, file: !3, line: 230, column: 7)
!791 = !DILocation(line: 235, column: 31, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 234, column: 7)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 234, column: 7)
!794 = distinct !DILexicalBlock(scope: !790, file: !3, line: 233, column: 5)
!795 = !DILocalVariable(name: "mode", arg: 1, scope: !796, file: !3, line: 91, type: !5)
!796 = distinct !DISubprogram(name: "sync_arg", scope: !3, file: !3, line: 91, type: !797, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!59, !5, !37}
!799 = !{!795, !800, !801, !802, !803, !804, !807, !808}
!800 = !DILocalVariable(name: "file", arg: 2, scope: !796, file: !3, line: 91, type: !37)
!801 = !DILocalVariable(name: "ret", scope: !796, file: !3, line: 93, type: !59)
!802 = !DILocalVariable(name: "open_flags", scope: !796, file: !3, line: 94, type: !40)
!803 = !DILocalVariable(name: "fd", scope: !796, file: !3, line: 95, type: !40)
!804 = !DILocalVariable(name: "rd_errno", scope: !805, file: !3, line: 110, type: !40)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 107, column: 5)
!806 = distinct !DILexicalBlock(scope: !796, file: !3, line: 106, column: 7)
!807 = !DILocalVariable(name: "fdflags", scope: !796, file: !3, line: 122, type: !40)
!808 = !DILocalVariable(name: "sync_status", scope: !809, file: !3, line: 133, type: !40)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 132, column: 5)
!810 = distinct !DILexicalBlock(scope: !796, file: !3, line: 131, column: 7)
!811 = !DILocation(line: 0, scope: !796, inlinedAt: !812)
!812 = distinct !DILocation(line: 235, column: 15, scope: !792)
!813 = !DILocation(line: 105, column: 8, scope: !796, inlinedAt: !812)
!814 = !DILocation(line: 106, column: 10, scope: !806, inlinedAt: !812)
!815 = !DILocation(line: 106, column: 7, scope: !796, inlinedAt: !812)
!816 = !DILocation(line: 110, column: 22, scope: !805, inlinedAt: !812)
!817 = !DILocation(line: 0, scope: !805, inlinedAt: !812)
!818 = !DILocation(line: 112, column: 14, scope: !819, inlinedAt: !812)
!819 = distinct !DILexicalBlock(scope: !805, file: !3, line: 111, column: 11)
!820 = !DILocation(line: 113, column: 14, scope: !821, inlinedAt: !812)
!821 = distinct !DILexicalBlock(scope: !805, file: !3, line: 113, column: 11)
!822 = !DILocation(line: 113, column: 11, scope: !805, inlinedAt: !812)
!823 = !DILocation(line: 115, column: 31, scope: !824, inlinedAt: !812)
!824 = distinct !DILexicalBlock(scope: !821, file: !3, line: 114, column: 9)
!825 = !DILocation(line: 115, column: 54, scope: !824, inlinedAt: !812)
!826 = !DILocation(line: 115, column: 11, scope: !824, inlinedAt: !812)
!827 = !DILocation(line: 122, column: 17, scope: !796, inlinedAt: !812)
!828 = !DILocation(line: 123, column: 15, scope: !829, inlinedAt: !812)
!829 = distinct !DILexicalBlock(scope: !796, file: !3, line: 123, column: 7)
!830 = !DILocation(line: 124, column: 7, scope: !829, inlinedAt: !812)
!831 = !DILocation(line: 124, column: 38, scope: !829, inlinedAt: !812)
!832 = !DILocation(line: 124, column: 10, scope: !829, inlinedAt: !812)
!833 = !DILocation(line: 124, column: 53, scope: !829, inlinedAt: !812)
!834 = !DILocation(line: 123, column: 7, scope: !796, inlinedAt: !812)
!835 = !DILocation(line: 0, scope: !809, inlinedAt: !812)
!836 = !DILocation(line: 135, column: 7, scope: !809, inlinedAt: !812)
!837 = !DILocation(line: 138, column: 25, scope: !838, inlinedAt: !812)
!838 = distinct !DILexicalBlock(scope: !809, file: !3, line: 136, column: 9)
!839 = !DILocation(line: 139, column: 11, scope: !838, inlinedAt: !812)
!840 = !DILocation(line: 142, column: 25, scope: !838, inlinedAt: !812)
!841 = !DILocation(line: 143, column: 11, scope: !838, inlinedAt: !812)
!842 = !DILocation(line: 147, column: 25, scope: !838, inlinedAt: !812)
!843 = !DILocation(line: 148, column: 11, scope: !838, inlinedAt: !812)
!844 = !DILocation(line: 155, column: 23, scope: !845, inlinedAt: !812)
!845 = distinct !DILexicalBlock(scope: !809, file: !3, line: 155, column: 11)
!846 = !DILocation(line: 155, column: 11, scope: !809, inlinedAt: !812)
!847 = !DILocation(line: 162, column: 7, scope: !848, inlinedAt: !812)
!848 = distinct !DILexicalBlock(scope: !796, file: !3, line: 162, column: 7)
!849 = !DILocation(line: 162, column: 18, scope: !848, inlinedAt: !812)
!850 = !DILocation(line: 162, column: 7, scope: !796, inlinedAt: !812)
!851 = !DILocation(line: 164, column: 17, scope: !852, inlinedAt: !812)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 163, column: 5)
!853 = !DILocation(line: 164, column: 24, scope: !852, inlinedAt: !812)
!854 = !DILocation(line: 164, column: 49, scope: !852, inlinedAt: !812)
!855 = !DILocation(line: 164, column: 7, scope: !852, inlinedAt: !812)
!856 = !DILocation(line: 166, column: 5, scope: !852, inlinedAt: !812)
!857 = !DILocation(line: 168, column: 10, scope: !796, inlinedAt: !812)
!858 = !DILocation(line: 235, column: 15, scope: !792)
!859 = !DILocation(line: 235, column: 12, scope: !792)
!860 = !DILocation(line: 234, column: 35, scope: !792)
!861 = !DILocation(line: 234, column: 21, scope: !792)
!862 = !DILocation(line: 234, column: 7, scope: !793)
!863 = distinct !{!863, !862, !864, !662}
!864 = !DILocation(line: 235, column: 43, scope: !793)
!865 = !DILocation(line: 238, column: 10, scope: !746)
!866 = !DILocation(line: 239, column: 1, scope: !746)
!867 = !DISubprogram(name: "bindtextdomain", scope: !683, file: !683, line: 86, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!868 = !DISubroutineType(types: !869)
!869 = !{!27, !37, !37}
!870 = !DISubprogram(name: "textdomain", scope: !683, file: !683, line: 82, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!871 = !DISubroutineType(types: !872)
!872 = !{!27, !37}
!873 = !DISubprogram(name: "atexit", scope: !874, file: !874, line: 595, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!874 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!875 = !DISubroutineType(types: !876)
!876 = !{!40, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null}
!880 = !DISubprogram(name: "getopt_long", scope: !34, file: !34, line: 66, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!881 = !DISubroutineType(types: !882)
!882 = !{!40, !40, !883, !37, !885, !42}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!886 = !DISubprogram(name: "error", scope: !887, file: !887, line: 52, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!887 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!888 = !DISubroutineType(types: !889)
!889 = !{null, !40, !40, !37, null}
!890 = !DISubprogram(name: "sync", scope: !891, file: !891, line: 984, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!891 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!892 = !DISubprogram(name: "open", scope: !893, file: !893, line: 196, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!893 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!894 = !DISubroutineType(types: !895)
!895 = !{!40, !37, !40, null}
!896 = !DISubprogram(name: "fdatasync", scope: !891, file: !891, line: 1129, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!897 = !DISubroutineType(types: !898)
!898 = !{!40, !40}
!899 = !DISubprogram(name: "fsync", scope: !891, file: !891, line: 968, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!900 = !DISubprogram(name: "syncfs", scope: !891, file: !891, line: 974, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!901 = !DISubprogram(name: "close", scope: !891, file: !891, line: 353, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!902 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !55, file: !55, line: 51, type: !632, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !903)
!903 = !{!904}
!904 = !DILocalVariable(name: "file", arg: 1, scope: !902, file: !55, line: 51, type: !37)
!905 = !DILocation(line: 0, scope: !902)
!906 = !DILocation(line: 53, column: 13, scope: !902)
!907 = !DILocation(line: 54, column: 1, scope: !902)
!908 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !55, file: !55, line: 88, type: !909, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !59}
!911 = !{!912}
!912 = !DILocalVariable(name: "ignore", arg: 1, scope: !908, file: !55, line: 88, type: !59)
!913 = !DILocation(line: 0, scope: !908)
!914 = !DILocation(line: 90, column: 16, scope: !908)
!915 = !{!916, !916, i64 0}
!916 = !{!"_Bool", !620, i64 0}
!917 = !DILocation(line: 91, column: 1, scope: !908)
!918 = distinct !DISubprogram(name: "close_stdout", scope: !55, file: !55, line: 117, type: !878, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !919)
!919 = !{!920}
!920 = !DILocalVariable(name: "write_error", scope: !921, file: !55, line: 122, type: !37)
!921 = distinct !DILexicalBlock(scope: !922, file: !55, line: 121, column: 5)
!922 = distinct !DILexicalBlock(scope: !918, file: !55, line: 119, column: 7)
!923 = !DILocation(line: 119, column: 21, scope: !922)
!924 = !DILocation(line: 119, column: 7, scope: !922)
!925 = !DILocation(line: 119, column: 29, scope: !922)
!926 = !DILocation(line: 120, column: 7, scope: !922)
!927 = !DILocation(line: 120, column: 12, scope: !922)
!928 = !{i8 0, i8 2}
!929 = !DILocation(line: 120, column: 25, scope: !922)
!930 = !DILocation(line: 120, column: 28, scope: !922)
!931 = !DILocation(line: 120, column: 34, scope: !922)
!932 = !DILocation(line: 119, column: 7, scope: !918)
!933 = !DILocation(line: 122, column: 33, scope: !921)
!934 = !DILocation(line: 0, scope: !921)
!935 = !DILocation(line: 123, column: 11, scope: !936)
!936 = distinct !DILexicalBlock(scope: !921, file: !55, line: 123, column: 11)
!937 = !DILocation(line: 0, scope: !936)
!938 = !DILocation(line: 123, column: 11, scope: !921)
!939 = !DILocation(line: 124, column: 36, scope: !936)
!940 = !DILocation(line: 124, column: 9, scope: !936)
!941 = !DILocation(line: 127, column: 9, scope: !936)
!942 = !DILocation(line: 129, column: 14, scope: !921)
!943 = !DILocation(line: 129, column: 7, scope: !921)
!944 = !DILocation(line: 134, column: 42, scope: !945)
!945 = distinct !DILexicalBlock(scope: !918, file: !55, line: 134, column: 7)
!946 = !DILocation(line: 134, column: 28, scope: !945)
!947 = !DILocation(line: 134, column: 50, scope: !945)
!948 = !DILocation(line: 134, column: 7, scope: !918)
!949 = !DILocation(line: 135, column: 12, scope: !945)
!950 = !DILocation(line: 135, column: 5, scope: !945)
!951 = !DILocation(line: 136, column: 1, scope: !918)
!952 = distinct !DISubprogram(name: "set_program_name", scope: !69, file: !69, line: 39, type: !632, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !953)
!953 = !{!954, !955, !956}
!954 = !DILocalVariable(name: "argv0", arg: 1, scope: !952, file: !69, line: 39, type: !37)
!955 = !DILocalVariable(name: "slash", scope: !952, file: !69, line: 46, type: !37)
!956 = !DILocalVariable(name: "base", scope: !952, file: !69, line: 47, type: !37)
!957 = !DILocation(line: 0, scope: !952)
!958 = !DILocation(line: 51, column: 13, scope: !959)
!959 = distinct !DILexicalBlock(scope: !952, file: !69, line: 51, column: 7)
!960 = !DILocation(line: 51, column: 7, scope: !952)
!961 = !DILocation(line: 55, column: 14, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !69, line: 52, column: 5)
!963 = !DILocation(line: 54, column: 7, scope: !962)
!964 = !DILocation(line: 56, column: 7, scope: !962)
!965 = !DILocation(line: 59, column: 11, scope: !952)
!966 = !DILocation(line: 60, column: 17, scope: !952)
!967 = !DILocation(line: 60, column: 11, scope: !952)
!968 = !DILocation(line: 61, column: 12, scope: !969)
!969 = distinct !DILexicalBlock(scope: !952, file: !69, line: 61, column: 7)
!970 = !DILocation(line: 61, column: 20, scope: !969)
!971 = !DILocation(line: 61, column: 25, scope: !969)
!972 = !DILocation(line: 61, column: 42, scope: !969)
!973 = !DILocation(line: 61, column: 28, scope: !969)
!974 = !DILocation(line: 61, column: 61, scope: !969)
!975 = !DILocation(line: 61, column: 7, scope: !952)
!976 = !DILocation(line: 64, column: 11, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !69, line: 64, column: 11)
!978 = distinct !DILexicalBlock(scope: !969, file: !69, line: 62, column: 5)
!979 = !DILocation(line: 64, column: 36, scope: !977)
!980 = !DILocation(line: 64, column: 11, scope: !978)
!981 = !DILocation(line: 66, column: 24, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !69, line: 65, column: 9)
!983 = !DILocation(line: 70, column: 41, scope: !982)
!984 = !DILocation(line: 72, column: 9, scope: !982)
!985 = !DILocation(line: 84, column: 16, scope: !952)
!986 = !DILocation(line: 90, column: 27, scope: !952)
!987 = !DILocation(line: 92, column: 1, scope: !952)
!988 = distinct !DISubprogram(name: "clone_quoting_options", scope: !75, file: !75, line: 122, type: !989, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !992)
!989 = !DISubroutineType(types: !990)
!990 = !{!991, !991}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!992 = !{!993, !994, !995}
!993 = !DILocalVariable(name: "o", arg: 1, scope: !988, file: !75, line: 122, type: !991)
!994 = !DILocalVariable(name: "e", scope: !988, file: !75, line: 124, type: !40)
!995 = !DILocalVariable(name: "p", scope: !988, file: !75, line: 125, type: !991)
!996 = !DILocation(line: 0, scope: !988)
!997 = !DILocation(line: 124, column: 11, scope: !988)
!998 = !DILocation(line: 125, column: 40, scope: !988)
!999 = !DILocation(line: 125, column: 31, scope: !988)
!1000 = !DILocation(line: 127, column: 9, scope: !988)
!1001 = !DILocation(line: 128, column: 3, scope: !988)
!1002 = distinct !DISubprogram(name: "get_quoting_style", scope: !75, file: !75, line: 133, type: !1003, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1007)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!12, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!1007 = !{!1008}
!1008 = !DILocalVariable(name: "o", arg: 1, scope: !1002, file: !75, line: 133, type: !1005)
!1009 = !DILocation(line: 0, scope: !1002)
!1010 = !DILocation(line: 135, column: 11, scope: !1002)
!1011 = !DILocation(line: 135, column: 46, scope: !1002)
!1012 = !{!1013, !620, i64 0}
!1013 = !{!"quoting_options", !620, i64 0, !777, i64 4, !620, i64 8, !619, i64 40, !619, i64 48}
!1014 = !DILocation(line: 135, column: 3, scope: !1002)
!1015 = distinct !DISubprogram(name: "set_quoting_style", scope: !75, file: !75, line: 141, type: !1016, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !991, !12}
!1018 = !{!1019, !1020}
!1019 = !DILocalVariable(name: "o", arg: 1, scope: !1015, file: !75, line: 141, type: !991)
!1020 = !DILocalVariable(name: "s", arg: 2, scope: !1015, file: !75, line: 141, type: !12)
!1021 = !DILocation(line: 0, scope: !1015)
!1022 = !DILocation(line: 143, column: 4, scope: !1015)
!1023 = !DILocation(line: 143, column: 39, scope: !1015)
!1024 = !DILocation(line: 143, column: 45, scope: !1015)
!1025 = !DILocation(line: 144, column: 1, scope: !1015)
!1026 = distinct !DISubprogram(name: "set_char_quoting", scope: !75, file: !75, line: 152, type: !1027, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!40, !991, !28, !40}
!1029 = !{!1030, !1031, !1032, !1033, !1035, !1037, !1038}
!1030 = !DILocalVariable(name: "o", arg: 1, scope: !1026, file: !75, line: 152, type: !991)
!1031 = !DILocalVariable(name: "c", arg: 2, scope: !1026, file: !75, line: 152, type: !28)
!1032 = !DILocalVariable(name: "i", arg: 3, scope: !1026, file: !75, line: 152, type: !40)
!1033 = !DILocalVariable(name: "uc", scope: !1026, file: !75, line: 154, type: !1034)
!1034 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1035 = !DILocalVariable(name: "p", scope: !1026, file: !75, line: 155, type: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1037 = !DILocalVariable(name: "shift", scope: !1026, file: !75, line: 157, type: !40)
!1038 = !DILocalVariable(name: "r", scope: !1026, file: !75, line: 158, type: !40)
!1039 = !DILocation(line: 0, scope: !1026)
!1040 = !DILocation(line: 156, column: 6, scope: !1026)
!1041 = !DILocation(line: 156, column: 62, scope: !1026)
!1042 = !DILocation(line: 156, column: 57, scope: !1026)
!1043 = !DILocation(line: 157, column: 15, scope: !1026)
!1044 = !DILocation(line: 158, column: 12, scope: !1026)
!1045 = !DILocation(line: 158, column: 15, scope: !1026)
!1046 = !DILocation(line: 158, column: 25, scope: !1026)
!1047 = !DILocation(line: 159, column: 13, scope: !1026)
!1048 = !DILocation(line: 159, column: 18, scope: !1026)
!1049 = !DILocation(line: 159, column: 23, scope: !1026)
!1050 = !DILocation(line: 159, column: 6, scope: !1026)
!1051 = !DILocation(line: 160, column: 3, scope: !1026)
!1052 = distinct !DISubprogram(name: "set_quoting_flags", scope: !75, file: !75, line: 168, type: !1053, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!40, !991, !40}
!1055 = !{!1056, !1057, !1058}
!1056 = !DILocalVariable(name: "o", arg: 1, scope: !1052, file: !75, line: 168, type: !991)
!1057 = !DILocalVariable(name: "i", arg: 2, scope: !1052, file: !75, line: 168, type: !40)
!1058 = !DILocalVariable(name: "r", scope: !1052, file: !75, line: 170, type: !40)
!1059 = !DILocation(line: 0, scope: !1052)
!1060 = !DILocation(line: 171, column: 8, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1052, file: !75, line: 171, column: 7)
!1062 = !DILocation(line: 171, column: 7, scope: !1052)
!1063 = !DILocation(line: 173, column: 10, scope: !1052)
!1064 = !{!1013, !777, i64 4}
!1065 = !DILocation(line: 174, column: 12, scope: !1052)
!1066 = !DILocation(line: 175, column: 3, scope: !1052)
!1067 = distinct !DISubprogram(name: "set_custom_quoting", scope: !75, file: !75, line: 179, type: !1068, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !991, !37, !37}
!1070 = !{!1071, !1072, !1073}
!1071 = !DILocalVariable(name: "o", arg: 1, scope: !1067, file: !75, line: 179, type: !991)
!1072 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1067, file: !75, line: 180, type: !37)
!1073 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1067, file: !75, line: 180, type: !37)
!1074 = !DILocation(line: 0, scope: !1067)
!1075 = !DILocation(line: 182, column: 8, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1067, file: !75, line: 182, column: 7)
!1077 = !DILocation(line: 182, column: 7, scope: !1067)
!1078 = !DILocation(line: 184, column: 6, scope: !1067)
!1079 = !DILocation(line: 184, column: 12, scope: !1067)
!1080 = !DILocation(line: 185, column: 8, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1067, file: !75, line: 185, column: 7)
!1082 = !DILocation(line: 185, column: 19, scope: !1081)
!1083 = !DILocation(line: 186, column: 5, scope: !1081)
!1084 = !DILocation(line: 187, column: 6, scope: !1067)
!1085 = !DILocation(line: 187, column: 17, scope: !1067)
!1086 = !{!1013, !619, i64 40}
!1087 = !DILocation(line: 188, column: 6, scope: !1067)
!1088 = !DILocation(line: 188, column: 18, scope: !1067)
!1089 = !{!1013, !619, i64 48}
!1090 = !DILocation(line: 189, column: 1, scope: !1067)
!1091 = distinct !DISubprogram(name: "quotearg_buffer", scope: !75, file: !75, line: 784, type: !1092, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1094)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!99, !27, !99, !37, !99, !1005}
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1095 = !DILocalVariable(name: "buffer", arg: 1, scope: !1091, file: !75, line: 784, type: !27)
!1096 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1091, file: !75, line: 784, type: !99)
!1097 = !DILocalVariable(name: "arg", arg: 3, scope: !1091, file: !75, line: 785, type: !37)
!1098 = !DILocalVariable(name: "argsize", arg: 4, scope: !1091, file: !75, line: 785, type: !99)
!1099 = !DILocalVariable(name: "o", arg: 5, scope: !1091, file: !75, line: 786, type: !1005)
!1100 = !DILocalVariable(name: "p", scope: !1091, file: !75, line: 788, type: !1005)
!1101 = !DILocalVariable(name: "e", scope: !1091, file: !75, line: 789, type: !40)
!1102 = !DILocalVariable(name: "r", scope: !1091, file: !75, line: 790, type: !99)
!1103 = !DILocation(line: 0, scope: !1091)
!1104 = !DILocation(line: 788, column: 37, scope: !1091)
!1105 = !DILocation(line: 789, column: 11, scope: !1091)
!1106 = !DILocation(line: 791, column: 43, scope: !1091)
!1107 = !DILocation(line: 791, column: 53, scope: !1091)
!1108 = !DILocation(line: 791, column: 60, scope: !1091)
!1109 = !DILocation(line: 792, column: 43, scope: !1091)
!1110 = !DILocation(line: 792, column: 58, scope: !1091)
!1111 = !DILocation(line: 790, column: 14, scope: !1091)
!1112 = !DILocation(line: 793, column: 9, scope: !1091)
!1113 = !DILocation(line: 794, column: 3, scope: !1091)
!1114 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !75, file: !75, line: 256, type: !1115, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1119)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!99, !27, !99, !37, !99, !12, !40, !1117, !37, !37}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1119 = !{!1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1144, !1145, !1146, !1147, !1148, !1151, !1152, !1170, !1173, !1174, !1181, !1184, !1185, !1186, !1187, !1188, !1189}
!1120 = !DILocalVariable(name: "buffer", arg: 1, scope: !1114, file: !75, line: 256, type: !27)
!1121 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1114, file: !75, line: 256, type: !99)
!1122 = !DILocalVariable(name: "arg", arg: 3, scope: !1114, file: !75, line: 257, type: !37)
!1123 = !DILocalVariable(name: "argsize", arg: 4, scope: !1114, file: !75, line: 257, type: !99)
!1124 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1114, file: !75, line: 258, type: !12)
!1125 = !DILocalVariable(name: "flags", arg: 6, scope: !1114, file: !75, line: 258, type: !40)
!1126 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1114, file: !75, line: 259, type: !1117)
!1127 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1114, file: !75, line: 260, type: !37)
!1128 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1114, file: !75, line: 261, type: !37)
!1129 = !DILocalVariable(name: "i", scope: !1114, file: !75, line: 263, type: !99)
!1130 = !DILocalVariable(name: "len", scope: !1114, file: !75, line: 264, type: !99)
!1131 = !DILocalVariable(name: "orig_buffersize", scope: !1114, file: !75, line: 265, type: !99)
!1132 = !DILocalVariable(name: "quote_string", scope: !1114, file: !75, line: 266, type: !37)
!1133 = !DILocalVariable(name: "quote_string_len", scope: !1114, file: !75, line: 267, type: !99)
!1134 = !DILocalVariable(name: "backslash_escapes", scope: !1114, file: !75, line: 268, type: !59)
!1135 = !DILocalVariable(name: "unibyte_locale", scope: !1114, file: !75, line: 269, type: !59)
!1136 = !DILocalVariable(name: "elide_outer_quotes", scope: !1114, file: !75, line: 270, type: !59)
!1137 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1114, file: !75, line: 271, type: !59)
!1138 = !DILocalVariable(name: "encountered_single_quote", scope: !1114, file: !75, line: 272, type: !59)
!1139 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1114, file: !75, line: 273, type: !59)
!1140 = !DILocalVariable(name: "c", scope: !1141, file: !75, line: 402, type: !1034)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !75, line: 401, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !75, line: 400, column: 3)
!1143 = distinct !DILexicalBlock(scope: !1114, file: !75, line: 400, column: 3)
!1144 = !DILocalVariable(name: "esc", scope: !1141, file: !75, line: 403, type: !1034)
!1145 = !DILocalVariable(name: "is_right_quote", scope: !1141, file: !75, line: 404, type: !59)
!1146 = !DILocalVariable(name: "escaping", scope: !1141, file: !75, line: 405, type: !59)
!1147 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1141, file: !75, line: 406, type: !59)
!1148 = !DILocalVariable(name: "m", scope: !1149, file: !75, line: 610, type: !99)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 608, column: 11)
!1150 = distinct !DILexicalBlock(scope: !1141, file: !75, line: 426, column: 9)
!1151 = !DILocalVariable(name: "printable", scope: !1149, file: !75, line: 612, type: !59)
!1152 = !DILocalVariable(name: "mbstate", scope: !1153, file: !75, line: 621, type: !1155)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !75, line: 620, column: 15)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !75, line: 614, column: 17)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1156, line: 6, baseType: !1157)
!1156 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1158, line: 21, baseType: !1159)
!1158 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 13, size: 64, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1159, file: !1158, line: 15, baseType: !40, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1159, file: !1158, line: 20, baseType: !1163, size: 32, offset: 32)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1159, file: !1158, line: 16, size: 32, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1163, file: !1158, line: 18, baseType: !6, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1163, file: !1158, line: 19, baseType: !1167, size: 32)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !1168)
!1168 = !{!1169}
!1169 = !DISubrange(count: 4)
!1170 = !DILocalVariable(name: "w", scope: !1171, file: !75, line: 631, type: !1172)
!1171 = distinct !DILexicalBlock(scope: !1153, file: !75, line: 630, column: 19)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !100, line: 74, baseType: !40)
!1173 = !DILocalVariable(name: "bytes", scope: !1171, file: !75, line: 632, type: !99)
!1174 = !DILocalVariable(name: "j", scope: !1175, file: !75, line: 657, type: !99)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !75, line: 656, column: 27)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !75, line: 654, column: 29)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !75, line: 649, column: 23)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !75, line: 641, column: 30)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !75, line: 636, column: 30)
!1180 = distinct !DILexicalBlock(scope: !1171, file: !75, line: 634, column: 25)
!1181 = !DILocalVariable(name: "ilim", scope: !1182, file: !75, line: 684, type: !99)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !75, line: 681, column: 15)
!1183 = distinct !DILexicalBlock(scope: !1149, file: !75, line: 680, column: 17)
!1184 = !DILabel(scope: !1114, name: "process_input", file: !75, line: 314)
!1185 = !DILabel(scope: !1150, name: "c_and_shell_escape", file: !75, line: 512)
!1186 = !DILabel(scope: !1150, name: "c_escape", file: !75, line: 517)
!1187 = !DILabel(scope: !1141, name: "store_escape", file: !75, line: 719)
!1188 = !DILabel(scope: !1141, name: "store_c", file: !75, line: 722)
!1189 = !DILabel(scope: !1114, name: "force_outer_quoting_style", file: !75, line: 763)
!1190 = !DILocation(line: 0, scope: !1114)
!1191 = !DILocation(line: 269, column: 25, scope: !1114)
!1192 = !DILocation(line: 269, column: 36, scope: !1114)
!1193 = !DILocation(line: 270, column: 8, scope: !1114)
!1194 = !DILocation(line: 273, column: 3, scope: !1114)
!1195 = !DILocation(line: 265, column: 10, scope: !1114)
!1196 = !DILocation(line: 266, column: 15, scope: !1114)
!1197 = !DILocation(line: 267, column: 10, scope: !1114)
!1198 = !DILocation(line: 268, column: 8, scope: !1114)
!1199 = !DILocation(line: 271, column: 8, scope: !1114)
!1200 = !DILocation(line: 272, column: 8, scope: !1114)
!1201 = !DILocation(line: 273, column: 8, scope: !1114)
!1202 = !DILocation(line: 314, column: 2, scope: !1114)
!1203 = !DILocation(line: 316, column: 3, scope: !1114)
!1204 = !DILocation(line: 323, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1114, file: !75, line: 317, column: 5)
!1206 = !DILocation(line: 323, column: 12, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1205, file: !75, line: 323, column: 11)
!1208 = !DILocation(line: 324, column: 9, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !75, line: 324, column: 9)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !75, line: 324, column: 9)
!1211 = !DILocation(line: 324, column: 9, scope: !1210)
!1212 = !{!620, !620, i64 0}
!1213 = !DILocation(line: 362, column: 26, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !75, line: 340, column: 11)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !75, line: 339, column: 13)
!1216 = distinct !DILexicalBlock(scope: !1205, file: !75, line: 338, column: 7)
!1217 = !DILocation(line: 363, column: 27, scope: !1214)
!1218 = !DILocation(line: 364, column: 11, scope: !1214)
!1219 = !DILocation(line: 365, column: 14, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !75, line: 365, column: 13)
!1221 = !DILocation(line: 365, column: 13, scope: !1216)
!1222 = !DILocation(line: 366, column: 43, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !75, line: 366, column: 11)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !75, line: 366, column: 11)
!1225 = !DILocation(line: 366, column: 11, scope: !1224)
!1226 = !DILocation(line: 367, column: 13, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !75, line: 367, column: 13)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !75, line: 367, column: 13)
!1229 = !DILocation(line: 367, column: 13, scope: !1228)
!1230 = !DILocation(line: 366, column: 70, scope: !1223)
!1231 = distinct !{!1231, !1225, !1232, !662}
!1232 = !DILocation(line: 367, column: 13, scope: !1224)
!1233 = !DILocation(line: 264, column: 10, scope: !1114)
!1234 = !DILocation(line: 370, column: 28, scope: !1216)
!1235 = !DILocation(line: 372, column: 7, scope: !1205)
!1236 = !DILocation(line: 376, column: 7, scope: !1205)
!1237 = !DILocation(line: 379, column: 7, scope: !1205)
!1238 = !DILocation(line: 381, column: 12, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1205, file: !75, line: 381, column: 11)
!1240 = !DILocation(line: 381, column: 11, scope: !1205)
!1241 = !DILocation(line: 386, column: 12, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1205, file: !75, line: 386, column: 11)
!1243 = !DILocation(line: 386, column: 11, scope: !1205)
!1244 = !DILocation(line: 387, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !75, line: 387, column: 9)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !75, line: 387, column: 9)
!1247 = !DILocation(line: 387, column: 9, scope: !1246)
!1248 = !DILocation(line: 394, column: 7, scope: !1205)
!1249 = !DILocation(line: 397, column: 7, scope: !1205)
!1250 = !DILocation(line: 400, column: 8, scope: !1143)
!1251 = !DILocation(line: 0, scope: !1143)
!1252 = !DILocation(line: 400, column: 27, scope: !1142)
!1253 = !DILocation(line: 400, column: 19, scope: !1142)
!1254 = !DILocation(line: 400, column: 41, scope: !1142)
!1255 = !DILocation(line: 400, column: 48, scope: !1142)
!1256 = !DILocation(line: 400, column: 3, scope: !1143)
!1257 = !DILocation(line: 400, column: 60, scope: !1142)
!1258 = !DILocation(line: 0, scope: !1141)
!1259 = !DILocation(line: 409, column: 11, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1141, file: !75, line: 408, column: 11)
!1261 = !DILocation(line: 411, column: 17, scope: !1260)
!1262 = !DILocation(line: 412, column: 39, scope: !1260)
!1263 = !DILocation(line: 416, column: 32, scope: !1260)
!1264 = !DILocation(line: 412, column: 19, scope: !1260)
!1265 = !DILocation(line: 412, column: 15, scope: !1260)
!1266 = !DILocation(line: 417, column: 11, scope: !1260)
!1267 = !DILocation(line: 417, column: 26, scope: !1260)
!1268 = !DILocation(line: 417, column: 14, scope: !1260)
!1269 = !DILocation(line: 417, column: 63, scope: !1260)
!1270 = !DILocation(line: 408, column: 11, scope: !1141)
!1271 = !DILocation(line: 424, column: 11, scope: !1141)
!1272 = !DILocation(line: 425, column: 7, scope: !1141)
!1273 = !DILocation(line: 428, column: 15, scope: !1150)
!1274 = !DILocation(line: 430, column: 15, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !75, line: 430, column: 15)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !75, line: 429, column: 13)
!1277 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 428, column: 15)
!1278 = !DILocation(line: 430, column: 15, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !75, line: 430, column: 15)
!1280 = !DILocation(line: 430, column: 15, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !75, line: 430, column: 15)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !75, line: 430, column: 15)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !75, line: 430, column: 15)
!1284 = !DILocation(line: 430, column: 15, scope: !1282)
!1285 = !DILocation(line: 430, column: 15, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !75, line: 430, column: 15)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !75, line: 430, column: 15)
!1288 = !DILocation(line: 430, column: 15, scope: !1287)
!1289 = !DILocation(line: 430, column: 15, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !75, line: 430, column: 15)
!1291 = distinct !DILexicalBlock(scope: !1283, file: !75, line: 430, column: 15)
!1292 = !DILocation(line: 430, column: 15, scope: !1291)
!1293 = !DILocation(line: 430, column: 15, scope: !1283)
!1294 = !DILocation(line: 430, column: 15, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !75, line: 430, column: 15)
!1296 = distinct !DILexicalBlock(scope: !1275, file: !75, line: 430, column: 15)
!1297 = !DILocation(line: 430, column: 15, scope: !1296)
!1298 = !DILocation(line: 438, column: 19, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1276, file: !75, line: 437, column: 19)
!1300 = !DILocation(line: 438, column: 48, scope: !1299)
!1301 = !DILocation(line: 438, column: 59, scope: !1299)
!1302 = !DILocation(line: 440, column: 19, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !75, line: 440, column: 19)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !75, line: 440, column: 19)
!1305 = distinct !DILexicalBlock(scope: !1299, file: !75, line: 439, column: 17)
!1306 = !DILocation(line: 440, column: 19, scope: !1304)
!1307 = !DILocation(line: 441, column: 19, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !75, line: 441, column: 19)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !75, line: 441, column: 19)
!1310 = !DILocation(line: 441, column: 19, scope: !1309)
!1311 = !DILocation(line: 442, column: 17, scope: !1305)
!1312 = !DILocation(line: 449, column: 20, scope: !1277)
!1313 = !DILocation(line: 454, column: 11, scope: !1150)
!1314 = !DILocation(line: 457, column: 19, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 455, column: 13)
!1316 = !DILocation(line: 463, column: 19, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1315, file: !75, line: 462, column: 19)
!1318 = !DILocation(line: 463, column: 47, scope: !1317)
!1319 = !DILocation(line: 463, column: 41, scope: !1317)
!1320 = !DILocation(line: 463, column: 52, scope: !1317)
!1321 = !DILocation(line: 462, column: 19, scope: !1315)
!1322 = !DILocation(line: 464, column: 25, scope: !1317)
!1323 = !DILocation(line: 464, column: 17, scope: !1317)
!1324 = !DILocation(line: 471, column: 25, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1317, file: !75, line: 465, column: 19)
!1326 = !DILocation(line: 475, column: 21, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !75, line: 475, column: 21)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !75, line: 475, column: 21)
!1329 = !DILocation(line: 475, column: 21, scope: !1328)
!1330 = !DILocation(line: 476, column: 21, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !75, line: 476, column: 21)
!1332 = distinct !DILexicalBlock(scope: !1325, file: !75, line: 476, column: 21)
!1333 = !DILocation(line: 476, column: 21, scope: !1332)
!1334 = !DILocation(line: 477, column: 21, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !75, line: 477, column: 21)
!1336 = distinct !DILexicalBlock(scope: !1325, file: !75, line: 477, column: 21)
!1337 = !DILocation(line: 477, column: 21, scope: !1336)
!1338 = !DILocation(line: 478, column: 21, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !75, line: 478, column: 21)
!1340 = distinct !DILexicalBlock(scope: !1325, file: !75, line: 478, column: 21)
!1341 = !DILocation(line: 478, column: 21, scope: !1340)
!1342 = !DILocation(line: 479, column: 21, scope: !1325)
!1343 = !DILocation(line: 492, column: 31, scope: !1150)
!1344 = !DILocation(line: 493, column: 31, scope: !1150)
!1345 = !DILocation(line: 495, column: 31, scope: !1150)
!1346 = !DILocation(line: 496, column: 31, scope: !1150)
!1347 = !DILocation(line: 497, column: 31, scope: !1150)
!1348 = !DILocation(line: 500, column: 15, scope: !1150)
!1349 = !DILocation(line: 502, column: 19, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !75, line: 501, column: 13)
!1351 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 500, column: 15)
!1352 = !DILocation(line: 509, column: 33, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 509, column: 15)
!1354 = !DILocation(line: 0, scope: !1150)
!1355 = !DILocation(line: 512, column: 9, scope: !1150)
!1356 = !DILocation(line: 514, column: 15, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 513, column: 15)
!1358 = !DILocation(line: 517, column: 9, scope: !1150)
!1359 = !DILocation(line: 518, column: 15, scope: !1150)
!1360 = !DILocation(line: 526, column: 15, scope: !1150)
!1361 = !DILocation(line: 526, column: 40, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 526, column: 15)
!1363 = !DILocation(line: 526, column: 47, scope: !1362)
!1364 = !DILocation(line: 526, column: 18, scope: !1362)
!1365 = !DILocation(line: 530, column: 17, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 530, column: 15)
!1367 = !DILocation(line: 530, column: 15, scope: !1150)
!1368 = !DILocation(line: 535, column: 11, scope: !1150)
!1369 = !DILocation(line: 549, column: 15, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 548, column: 15)
!1371 = !DILocation(line: 556, column: 15, scope: !1150)
!1372 = !DILocation(line: 558, column: 19, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !75, line: 557, column: 13)
!1374 = distinct !DILexicalBlock(scope: !1150, file: !75, line: 556, column: 15)
!1375 = !DILocation(line: 561, column: 19, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !75, line: 561, column: 19)
!1377 = !DILocation(line: 561, column: 30, scope: !1376)
!1378 = !DILocation(line: 570, column: 15, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !75, line: 570, column: 15)
!1380 = distinct !DILexicalBlock(scope: !1373, file: !75, line: 570, column: 15)
!1381 = !DILocation(line: 570, column: 15, scope: !1380)
!1382 = !DILocation(line: 571, column: 15, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !75, line: 571, column: 15)
!1384 = distinct !DILexicalBlock(scope: !1373, file: !75, line: 571, column: 15)
!1385 = !DILocation(line: 571, column: 15, scope: !1384)
!1386 = !DILocation(line: 572, column: 15, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !75, line: 572, column: 15)
!1388 = distinct !DILexicalBlock(scope: !1373, file: !75, line: 572, column: 15)
!1389 = !DILocation(line: 572, column: 15, scope: !1388)
!1390 = !DILocation(line: 574, column: 13, scope: !1373)
!1391 = !DILocation(line: 614, column: 17, scope: !1149)
!1392 = !DILocation(line: 0, scope: !1149)
!1393 = !DILocation(line: 617, column: 29, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1154, file: !75, line: 615, column: 15)
!1395 = !{!1396, !1396, i64 0}
!1396 = !{!"short", !620, i64 0}
!1397 = !DILocation(line: 617, column: 27, scope: !1394)
!1398 = !DILocation(line: 678, column: 40, scope: !1149)
!1399 = !DILocation(line: 680, column: 23, scope: !1183)
!1400 = !DILocation(line: 621, column: 17, scope: !1153)
!1401 = !DILocation(line: 621, column: 27, scope: !1153)
!1402 = !DILocalVariable(name: "__dest", arg: 1, scope: !1403, file: !1404, line: 57, type: !29)
!1403 = distinct !DISubprogram(name: "memset", scope: !1404, file: !1404, line: 57, type: !1405, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1407)
!1404 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!29, !29, !40, !99}
!1407 = !{!1402, !1408, !1409}
!1408 = !DILocalVariable(name: "__ch", arg: 2, scope: !1403, file: !1404, line: 57, type: !40)
!1409 = !DILocalVariable(name: "__len", arg: 3, scope: !1403, file: !1404, line: 57, type: !99)
!1410 = !DILocation(line: 0, scope: !1403, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 622, column: 17, scope: !1153)
!1412 = !DILocation(line: 59, column: 10, scope: !1403, inlinedAt: !1411)
!1413 = !DILocation(line: 626, column: 29, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1153, file: !75, line: 626, column: 21)
!1415 = !DILocation(line: 626, column: 21, scope: !1153)
!1416 = !DILocation(line: 627, column: 29, scope: !1414)
!1417 = !DILocation(line: 627, column: 19, scope: !1414)
!1418 = !DILocation(line: 629, column: 17, scope: !1153)
!1419 = !DILocation(line: 624, column: 19, scope: !1153)
!1420 = !DILocation(line: 625, column: 27, scope: !1153)
!1421 = !DILocation(line: 631, column: 21, scope: !1171)
!1422 = !DILocation(line: 632, column: 56, scope: !1171)
!1423 = !DILocation(line: 632, column: 50, scope: !1171)
!1424 = !DILocation(line: 633, column: 53, scope: !1171)
!1425 = !DILocation(line: 0, scope: !1171)
!1426 = !DILocation(line: 632, column: 36, scope: !1171)
!1427 = !DILocation(line: 634, column: 25, scope: !1171)
!1428 = !DILocation(line: 644, column: 38, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1178, file: !75, line: 642, column: 23)
!1430 = !DILocation(line: 644, column: 48, scope: !1429)
!1431 = !DILocation(line: 644, column: 25, scope: !1429)
!1432 = !DILocation(line: 644, column: 51, scope: !1429)
!1433 = !DILocation(line: 645, column: 28, scope: !1429)
!1434 = !DILocation(line: 644, column: 34, scope: !1429)
!1435 = distinct !{!1435, !1431, !1433, !662}
!1436 = !DILocation(line: 655, column: 29, scope: !1176)
!1437 = !DILocation(line: 0, scope: !1175)
!1438 = !DILocation(line: 659, column: 49, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !75, line: 658, column: 29)
!1440 = distinct !DILexicalBlock(scope: !1175, file: !75, line: 658, column: 29)
!1441 = !DILocation(line: 659, column: 39, scope: !1439)
!1442 = !DILocation(line: 659, column: 31, scope: !1439)
!1443 = !DILocation(line: 658, column: 53, scope: !1439)
!1444 = !DILocation(line: 658, column: 43, scope: !1439)
!1445 = !DILocation(line: 658, column: 29, scope: !1440)
!1446 = distinct !{!1446, !1445, !1447, !662}
!1447 = !DILocation(line: 667, column: 33, scope: !1440)
!1448 = !DILocation(line: 674, column: 19, scope: !1153)
!1449 = !DILocation(line: 670, column: 41, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1177, file: !75, line: 670, column: 29)
!1451 = !DILocation(line: 670, column: 31, scope: !1450)
!1452 = !DILocation(line: 670, column: 29, scope: !1177)
!1453 = !DILocation(line: 672, column: 27, scope: !1177)
!1454 = !DILocation(line: 675, column: 26, scope: !1153)
!1455 = !DILocation(line: 675, column: 24, scope: !1153)
!1456 = !DILocation(line: 674, column: 19, scope: !1171)
!1457 = distinct !{!1457, !1418, !1458, !662}
!1458 = !DILocation(line: 675, column: 44, scope: !1153)
!1459 = !DILocation(line: 676, column: 15, scope: !1154)
!1460 = !DILocation(line: 680, column: 19, scope: !1183)
!1461 = !DILocation(line: 680, column: 45, scope: !1183)
!1462 = !DILocation(line: 684, column: 33, scope: !1182)
!1463 = !DILocation(line: 0, scope: !1182)
!1464 = !DILocation(line: 686, column: 17, scope: !1182)
!1465 = !DILocation(line: 405, column: 12, scope: !1141)
!1466 = !DILocation(line: 688, column: 43, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !75, line: 688, column: 25)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !75, line: 687, column: 19)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !75, line: 686, column: 17)
!1470 = distinct !DILexicalBlock(scope: !1182, file: !75, line: 686, column: 17)
!1471 = !DILocation(line: 690, column: 25, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !75, line: 690, column: 25)
!1473 = distinct !DILexicalBlock(scope: !1467, file: !75, line: 689, column: 23)
!1474 = !DILocation(line: 690, column: 25, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !75, line: 690, column: 25)
!1476 = !DILocation(line: 690, column: 25, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !75, line: 690, column: 25)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !75, line: 690, column: 25)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !75, line: 690, column: 25)
!1480 = !DILocation(line: 690, column: 25, scope: !1478)
!1481 = !DILocation(line: 690, column: 25, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !75, line: 690, column: 25)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !75, line: 690, column: 25)
!1484 = !DILocation(line: 690, column: 25, scope: !1483)
!1485 = !DILocation(line: 690, column: 25, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !75, line: 690, column: 25)
!1487 = distinct !DILexicalBlock(scope: !1479, file: !75, line: 690, column: 25)
!1488 = !DILocation(line: 690, column: 25, scope: !1487)
!1489 = !DILocation(line: 690, column: 25, scope: !1479)
!1490 = !DILocation(line: 690, column: 25, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !75, line: 690, column: 25)
!1492 = distinct !DILexicalBlock(scope: !1472, file: !75, line: 690, column: 25)
!1493 = !DILocation(line: 690, column: 25, scope: !1492)
!1494 = !DILocation(line: 691, column: 25, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !75, line: 691, column: 25)
!1496 = distinct !DILexicalBlock(scope: !1473, file: !75, line: 691, column: 25)
!1497 = !DILocation(line: 691, column: 25, scope: !1496)
!1498 = !DILocation(line: 692, column: 25, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !75, line: 692, column: 25)
!1500 = distinct !DILexicalBlock(scope: !1473, file: !75, line: 692, column: 25)
!1501 = !DILocation(line: 692, column: 25, scope: !1500)
!1502 = !DILocation(line: 693, column: 38, scope: !1473)
!1503 = !DILocation(line: 693, column: 33, scope: !1473)
!1504 = !DILocation(line: 694, column: 23, scope: !1473)
!1505 = !DILocation(line: 695, column: 30, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1467, file: !75, line: 695, column: 30)
!1507 = !DILocation(line: 695, column: 30, scope: !1467)
!1508 = !DILocation(line: 697, column: 25, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !75, line: 697, column: 25)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !75, line: 697, column: 25)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !75, line: 696, column: 23)
!1512 = !DILocation(line: 697, column: 25, scope: !1510)
!1513 = !DILocation(line: 699, column: 23, scope: !1511)
!1514 = !DILocation(line: 700, column: 35, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1468, file: !75, line: 700, column: 25)
!1516 = !DILocation(line: 700, column: 30, scope: !1515)
!1517 = !DILocation(line: 700, column: 25, scope: !1468)
!1518 = !DILocation(line: 702, column: 21, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !75, line: 702, column: 21)
!1520 = distinct !DILexicalBlock(scope: !1468, file: !75, line: 702, column: 21)
!1521 = !DILocation(line: 702, column: 21, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !75, line: 702, column: 21)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !75, line: 702, column: 21)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !75, line: 702, column: 21)
!1525 = !DILocation(line: 702, column: 21, scope: !1523)
!1526 = !DILocation(line: 702, column: 21, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !75, line: 702, column: 21)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !75, line: 702, column: 21)
!1529 = !DILocation(line: 702, column: 21, scope: !1528)
!1530 = !DILocation(line: 702, column: 21, scope: !1524)
!1531 = !DILocation(line: 0, scope: !1468)
!1532 = !DILocation(line: 703, column: 21, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !75, line: 703, column: 21)
!1534 = distinct !DILexicalBlock(scope: !1468, file: !75, line: 703, column: 21)
!1535 = !DILocation(line: 703, column: 21, scope: !1534)
!1536 = !DILocation(line: 704, column: 25, scope: !1468)
!1537 = !DILocation(line: 686, column: 17, scope: !1469)
!1538 = distinct !{!1538, !1539, !1540}
!1539 = !DILocation(line: 686, column: 17, scope: !1470)
!1540 = !DILocation(line: 705, column: 19, scope: !1470)
!1541 = !DILocation(line: 416, column: 30, scope: !1260)
!1542 = !DILocation(line: 712, column: 34, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1141, file: !75, line: 712, column: 11)
!1544 = !DILocation(line: 715, column: 35, scope: !1543)
!1545 = !DILocation(line: 715, column: 17, scope: !1543)
!1546 = !DILocation(line: 715, column: 47, scope: !1543)
!1547 = !DILocation(line: 715, column: 65, scope: !1543)
!1548 = !DILocation(line: 716, column: 11, scope: !1543)
!1549 = !DILocation(line: 712, column: 11, scope: !1141)
!1550 = !DILocation(line: 400, column: 10, scope: !1143)
!1551 = !DILocation(line: 719, column: 5, scope: !1141)
!1552 = !DILocation(line: 720, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1141, file: !75, line: 720, column: 7)
!1554 = !DILocation(line: 720, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1553, file: !75, line: 720, column: 7)
!1556 = !DILocation(line: 720, column: 7, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !75, line: 720, column: 7)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !75, line: 720, column: 7)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !75, line: 720, column: 7)
!1560 = !DILocation(line: 720, column: 7, scope: !1558)
!1561 = !DILocation(line: 720, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !75, line: 720, column: 7)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !75, line: 720, column: 7)
!1564 = !DILocation(line: 720, column: 7, scope: !1563)
!1565 = !DILocation(line: 720, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !75, line: 720, column: 7)
!1567 = distinct !DILexicalBlock(scope: !1559, file: !75, line: 720, column: 7)
!1568 = !DILocation(line: 720, column: 7, scope: !1567)
!1569 = !DILocation(line: 720, column: 7, scope: !1559)
!1570 = !DILocation(line: 720, column: 7, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !75, line: 720, column: 7)
!1572 = distinct !DILexicalBlock(scope: !1553, file: !75, line: 720, column: 7)
!1573 = !DILocation(line: 720, column: 7, scope: !1572)
!1574 = !DILocation(line: 722, column: 5, scope: !1141)
!1575 = !DILocation(line: 723, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !75, line: 723, column: 7)
!1577 = distinct !DILexicalBlock(scope: !1141, file: !75, line: 723, column: 7)
!1578 = !DILocation(line: 424, column: 9, scope: !1141)
!1579 = !DILocation(line: 723, column: 7, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !75, line: 723, column: 7)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !75, line: 723, column: 7)
!1582 = distinct !DILexicalBlock(scope: !1576, file: !75, line: 723, column: 7)
!1583 = !DILocation(line: 723, column: 7, scope: !1581)
!1584 = !DILocation(line: 723, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !75, line: 723, column: 7)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !75, line: 723, column: 7)
!1587 = !DILocation(line: 723, column: 7, scope: !1586)
!1588 = !DILocation(line: 723, column: 7, scope: !1582)
!1589 = !DILocation(line: 724, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !75, line: 724, column: 7)
!1591 = distinct !DILexicalBlock(scope: !1141, file: !75, line: 724, column: 7)
!1592 = !DILocation(line: 724, column: 7, scope: !1591)
!1593 = !DILocation(line: 726, column: 13, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1141, file: !75, line: 726, column: 11)
!1595 = !DILocation(line: 726, column: 11, scope: !1141)
!1596 = !DILocation(line: 728, column: 5, scope: !1142)
!1597 = !DILocation(line: 400, column: 75, scope: !1142)
!1598 = !DILocation(line: 400, column: 3, scope: !1142)
!1599 = distinct !{!1599, !1256, !1600, !662}
!1600 = !DILocation(line: 728, column: 5, scope: !1143)
!1601 = !DILocation(line: 730, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1114, file: !75, line: 730, column: 7)
!1603 = !DILocation(line: 730, column: 16, scope: !1602)
!1604 = !DILocation(line: 738, column: 51, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1114, file: !75, line: 738, column: 7)
!1606 = !DILocation(line: 741, column: 11, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !75, line: 741, column: 11)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !75, line: 740, column: 5)
!1609 = !DILocation(line: 741, column: 11, scope: !1608)
!1610 = !DILocation(line: 742, column: 16, scope: !1607)
!1611 = !DILocation(line: 742, column: 9, scope: !1607)
!1612 = !DILocation(line: 746, column: 18, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1607, file: !75, line: 746, column: 16)
!1614 = !DILocation(line: 746, column: 29, scope: !1613)
!1615 = !DILocation(line: 755, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1114, file: !75, line: 755, column: 7)
!1617 = !DILocation(line: 755, column: 20, scope: !1616)
!1618 = !DILocation(line: 756, column: 12, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !75, line: 756, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !75, line: 756, column: 5)
!1621 = !DILocation(line: 756, column: 5, scope: !1620)
!1622 = !DILocation(line: 757, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !75, line: 757, column: 7)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !75, line: 757, column: 7)
!1625 = !DILocation(line: 757, column: 7, scope: !1624)
!1626 = !DILocation(line: 756, column: 39, scope: !1619)
!1627 = distinct !{!1627, !1621, !1628, !662}
!1628 = !DILocation(line: 757, column: 7, scope: !1620)
!1629 = !DILocation(line: 759, column: 11, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1114, file: !75, line: 759, column: 7)
!1631 = !DILocation(line: 759, column: 7, scope: !1114)
!1632 = !DILocation(line: 760, column: 5, scope: !1630)
!1633 = !DILocation(line: 760, column: 17, scope: !1630)
!1634 = !DILocation(line: 763, column: 2, scope: !1114)
!1635 = !DILocation(line: 766, column: 51, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1114, file: !75, line: 766, column: 7)
!1637 = !DILocation(line: 766, column: 21, scope: !1636)
!1638 = !DILocation(line: 770, column: 42, scope: !1114)
!1639 = !DILocation(line: 768, column: 10, scope: !1114)
!1640 = !DILocation(line: 768, column: 3, scope: !1114)
!1641 = !DILocation(line: 772, column: 1, scope: !1114)
!1642 = distinct !DISubprogram(name: "gettext_quote", scope: !75, file: !75, line: 207, type: !1643, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1645)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!37, !37, !12}
!1645 = !{!1646, !1647, !1648, !1649}
!1646 = !DILocalVariable(name: "msgid", arg: 1, scope: !1642, file: !75, line: 207, type: !37)
!1647 = !DILocalVariable(name: "s", arg: 2, scope: !1642, file: !75, line: 207, type: !12)
!1648 = !DILocalVariable(name: "translation", scope: !1642, file: !75, line: 209, type: !37)
!1649 = !DILocalVariable(name: "locale_code", scope: !1642, file: !75, line: 210, type: !37)
!1650 = !DILocation(line: 0, scope: !1642)
!1651 = !DILocation(line: 209, column: 29, scope: !1642)
!1652 = !DILocation(line: 212, column: 19, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1642, file: !75, line: 212, column: 7)
!1654 = !DILocation(line: 212, column: 7, scope: !1642)
!1655 = !DILocation(line: 233, column: 17, scope: !1642)
!1656 = !DILocalVariable(name: "s1", arg: 1, scope: !1657, file: !1658, line: 160, type: !37)
!1657 = distinct !DISubprogram(name: "strcaseeq0", scope: !1658, file: !1658, line: 160, type: !1659, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1661)
!1658 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!40, !37, !37, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!1661 = !{!1656, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671}
!1662 = !DILocalVariable(name: "s2", arg: 2, scope: !1657, file: !1658, line: 160, type: !37)
!1663 = !DILocalVariable(name: "s20", arg: 3, scope: !1657, file: !1658, line: 160, type: !28)
!1664 = !DILocalVariable(name: "s21", arg: 4, scope: !1657, file: !1658, line: 160, type: !28)
!1665 = !DILocalVariable(name: "s22", arg: 5, scope: !1657, file: !1658, line: 160, type: !28)
!1666 = !DILocalVariable(name: "s23", arg: 6, scope: !1657, file: !1658, line: 160, type: !28)
!1667 = !DILocalVariable(name: "s24", arg: 7, scope: !1657, file: !1658, line: 160, type: !28)
!1668 = !DILocalVariable(name: "s25", arg: 8, scope: !1657, file: !1658, line: 160, type: !28)
!1669 = !DILocalVariable(name: "s26", arg: 9, scope: !1657, file: !1658, line: 160, type: !28)
!1670 = !DILocalVariable(name: "s27", arg: 10, scope: !1657, file: !1658, line: 160, type: !28)
!1671 = !DILocalVariable(name: "s28", arg: 11, scope: !1657, file: !1658, line: 160, type: !28)
!1672 = !DILocation(line: 0, scope: !1657, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 234, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1642, file: !75, line: 234, column: 7)
!1675 = !DILocation(line: 162, column: 7, scope: !1676, inlinedAt: !1673)
!1676 = distinct !DILexicalBlock(scope: !1657, file: !1658, line: 162, column: 7)
!1677 = !DILocalVariable(name: "s1", arg: 1, scope: !1678, file: !1658, line: 146, type: !37)
!1678 = distinct !DISubprogram(name: "strcaseeq1", scope: !1658, file: !1658, line: 146, type: !1679, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!40, !37, !37, !28, !28, !28, !28, !28, !28, !28, !28}
!1681 = !{!1677, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690}
!1682 = !DILocalVariable(name: "s2", arg: 2, scope: !1678, file: !1658, line: 146, type: !37)
!1683 = !DILocalVariable(name: "s21", arg: 3, scope: !1678, file: !1658, line: 146, type: !28)
!1684 = !DILocalVariable(name: "s22", arg: 4, scope: !1678, file: !1658, line: 146, type: !28)
!1685 = !DILocalVariable(name: "s23", arg: 5, scope: !1678, file: !1658, line: 146, type: !28)
!1686 = !DILocalVariable(name: "s24", arg: 6, scope: !1678, file: !1658, line: 146, type: !28)
!1687 = !DILocalVariable(name: "s25", arg: 7, scope: !1678, file: !1658, line: 146, type: !28)
!1688 = !DILocalVariable(name: "s26", arg: 8, scope: !1678, file: !1658, line: 146, type: !28)
!1689 = !DILocalVariable(name: "s27", arg: 9, scope: !1678, file: !1658, line: 146, type: !28)
!1690 = !DILocalVariable(name: "s28", arg: 10, scope: !1678, file: !1658, line: 146, type: !28)
!1691 = !DILocation(line: 0, scope: !1678, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 167, column: 16, scope: !1693, inlinedAt: !1673)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !1658, line: 164, column: 11)
!1694 = distinct !DILexicalBlock(scope: !1676, file: !1658, line: 163, column: 5)
!1695 = !DILocation(line: 148, column: 7, scope: !1696, inlinedAt: !1692)
!1696 = distinct !DILexicalBlock(scope: !1678, file: !1658, line: 148, column: 7)
!1697 = !DILocalVariable(name: "s1", arg: 1, scope: !1698, file: !1658, line: 132, type: !37)
!1698 = distinct !DISubprogram(name: "strcaseeq2", scope: !1658, file: !1658, line: 132, type: !1699, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!40, !37, !37, !28, !28, !28, !28, !28, !28, !28}
!1701 = !{!1697, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1702 = !DILocalVariable(name: "s2", arg: 2, scope: !1698, file: !1658, line: 132, type: !37)
!1703 = !DILocalVariable(name: "s22", arg: 3, scope: !1698, file: !1658, line: 132, type: !28)
!1704 = !DILocalVariable(name: "s23", arg: 4, scope: !1698, file: !1658, line: 132, type: !28)
!1705 = !DILocalVariable(name: "s24", arg: 5, scope: !1698, file: !1658, line: 132, type: !28)
!1706 = !DILocalVariable(name: "s25", arg: 6, scope: !1698, file: !1658, line: 132, type: !28)
!1707 = !DILocalVariable(name: "s26", arg: 7, scope: !1698, file: !1658, line: 132, type: !28)
!1708 = !DILocalVariable(name: "s27", arg: 8, scope: !1698, file: !1658, line: 132, type: !28)
!1709 = !DILocalVariable(name: "s28", arg: 9, scope: !1698, file: !1658, line: 132, type: !28)
!1710 = !DILocation(line: 0, scope: !1698, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 153, column: 16, scope: !1712, inlinedAt: !1692)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !1658, line: 150, column: 11)
!1713 = distinct !DILexicalBlock(scope: !1696, file: !1658, line: 149, column: 5)
!1714 = !DILocation(line: 134, column: 7, scope: !1715, inlinedAt: !1711)
!1715 = distinct !DILexicalBlock(scope: !1698, file: !1658, line: 134, column: 7)
!1716 = !DILocalVariable(name: "s1", arg: 1, scope: !1717, file: !1658, line: 118, type: !37)
!1717 = distinct !DISubprogram(name: "strcaseeq3", scope: !1658, file: !1658, line: 118, type: !1718, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!40, !37, !37, !28, !28, !28, !28, !28, !28}
!1720 = !{!1716, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1721 = !DILocalVariable(name: "s2", arg: 2, scope: !1717, file: !1658, line: 118, type: !37)
!1722 = !DILocalVariable(name: "s23", arg: 3, scope: !1717, file: !1658, line: 118, type: !28)
!1723 = !DILocalVariable(name: "s24", arg: 4, scope: !1717, file: !1658, line: 118, type: !28)
!1724 = !DILocalVariable(name: "s25", arg: 5, scope: !1717, file: !1658, line: 118, type: !28)
!1725 = !DILocalVariable(name: "s26", arg: 6, scope: !1717, file: !1658, line: 118, type: !28)
!1726 = !DILocalVariable(name: "s27", arg: 7, scope: !1717, file: !1658, line: 118, type: !28)
!1727 = !DILocalVariable(name: "s28", arg: 8, scope: !1717, file: !1658, line: 118, type: !28)
!1728 = !DILocation(line: 0, scope: !1717, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 139, column: 16, scope: !1730, inlinedAt: !1711)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !1658, line: 136, column: 11)
!1731 = distinct !DILexicalBlock(scope: !1715, file: !1658, line: 135, column: 5)
!1732 = !DILocation(line: 120, column: 7, scope: !1733, inlinedAt: !1729)
!1733 = distinct !DILexicalBlock(scope: !1717, file: !1658, line: 120, column: 7)
!1734 = !DILocation(line: 120, column: 7, scope: !1717, inlinedAt: !1729)
!1735 = !DILocalVariable(name: "s1", arg: 1, scope: !1736, file: !1658, line: 104, type: !37)
!1736 = distinct !DISubprogram(name: "strcaseeq4", scope: !1658, file: !1658, line: 104, type: !1737, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!40, !37, !37, !28, !28, !28, !28, !28}
!1739 = !{!1735, !1740, !1741, !1742, !1743, !1744, !1745}
!1740 = !DILocalVariable(name: "s2", arg: 2, scope: !1736, file: !1658, line: 104, type: !37)
!1741 = !DILocalVariable(name: "s24", arg: 3, scope: !1736, file: !1658, line: 104, type: !28)
!1742 = !DILocalVariable(name: "s25", arg: 4, scope: !1736, file: !1658, line: 104, type: !28)
!1743 = !DILocalVariable(name: "s26", arg: 5, scope: !1736, file: !1658, line: 104, type: !28)
!1744 = !DILocalVariable(name: "s27", arg: 6, scope: !1736, file: !1658, line: 104, type: !28)
!1745 = !DILocalVariable(name: "s28", arg: 7, scope: !1736, file: !1658, line: 104, type: !28)
!1746 = !DILocation(line: 0, scope: !1736, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 125, column: 16, scope: !1748, inlinedAt: !1729)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !1658, line: 122, column: 11)
!1749 = distinct !DILexicalBlock(scope: !1733, file: !1658, line: 121, column: 5)
!1750 = !DILocation(line: 106, column: 7, scope: !1751, inlinedAt: !1747)
!1751 = distinct !DILexicalBlock(scope: !1736, file: !1658, line: 106, column: 7)
!1752 = !DILocation(line: 106, column: 7, scope: !1736, inlinedAt: !1747)
!1753 = !DILocalVariable(name: "s1", arg: 1, scope: !1754, file: !1658, line: 90, type: !37)
!1754 = distinct !DISubprogram(name: "strcaseeq5", scope: !1658, file: !1658, line: 90, type: !1755, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!40, !37, !37, !28, !28, !28, !28}
!1757 = !{!1753, !1758, !1759, !1760, !1761, !1762}
!1758 = !DILocalVariable(name: "s2", arg: 2, scope: !1754, file: !1658, line: 90, type: !37)
!1759 = !DILocalVariable(name: "s25", arg: 3, scope: !1754, file: !1658, line: 90, type: !28)
!1760 = !DILocalVariable(name: "s26", arg: 4, scope: !1754, file: !1658, line: 90, type: !28)
!1761 = !DILocalVariable(name: "s27", arg: 5, scope: !1754, file: !1658, line: 90, type: !28)
!1762 = !DILocalVariable(name: "s28", arg: 6, scope: !1754, file: !1658, line: 90, type: !28)
!1763 = !DILocation(line: 0, scope: !1754, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 111, column: 16, scope: !1765, inlinedAt: !1747)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !1658, line: 108, column: 11)
!1766 = distinct !DILexicalBlock(scope: !1751, file: !1658, line: 107, column: 5)
!1767 = !DILocation(line: 92, column: 7, scope: !1768, inlinedAt: !1764)
!1768 = distinct !DILexicalBlock(scope: !1754, file: !1658, line: 92, column: 7)
!1769 = !DILocation(line: 92, column: 7, scope: !1754, inlinedAt: !1764)
!1770 = !DILocation(line: 235, column: 12, scope: !1674)
!1771 = !DILocation(line: 235, column: 21, scope: !1674)
!1772 = !DILocation(line: 235, column: 5, scope: !1674)
!1773 = !DILocation(line: 0, scope: !1678, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 167, column: 16, scope: !1693, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 236, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1642, file: !75, line: 236, column: 7)
!1777 = !DILocation(line: 148, column: 7, scope: !1696, inlinedAt: !1774)
!1778 = !DILocation(line: 0, scope: !1698, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 153, column: 16, scope: !1712, inlinedAt: !1774)
!1780 = !DILocation(line: 134, column: 7, scope: !1715, inlinedAt: !1779)
!1781 = !DILocation(line: 134, column: 7, scope: !1698, inlinedAt: !1779)
!1782 = !DILocation(line: 0, scope: !1717, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 139, column: 16, scope: !1730, inlinedAt: !1779)
!1784 = !DILocation(line: 120, column: 7, scope: !1733, inlinedAt: !1783)
!1785 = !DILocation(line: 120, column: 7, scope: !1717, inlinedAt: !1783)
!1786 = !DILocation(line: 0, scope: !1736, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 125, column: 16, scope: !1748, inlinedAt: !1783)
!1788 = !DILocation(line: 106, column: 7, scope: !1751, inlinedAt: !1787)
!1789 = !DILocation(line: 106, column: 7, scope: !1736, inlinedAt: !1787)
!1790 = !DILocation(line: 0, scope: !1754, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 111, column: 16, scope: !1765, inlinedAt: !1787)
!1792 = !DILocation(line: 92, column: 7, scope: !1768, inlinedAt: !1791)
!1793 = !DILocation(line: 92, column: 7, scope: !1754, inlinedAt: !1791)
!1794 = !DILocalVariable(name: "s1", arg: 1, scope: !1795, file: !1658, line: 76, type: !37)
!1795 = distinct !DISubprogram(name: "strcaseeq6", scope: !1658, file: !1658, line: 76, type: !1796, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1798)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!40, !37, !37, !28, !28, !28}
!1798 = !{!1794, !1799, !1800, !1801, !1802}
!1799 = !DILocalVariable(name: "s2", arg: 2, scope: !1795, file: !1658, line: 76, type: !37)
!1800 = !DILocalVariable(name: "s26", arg: 3, scope: !1795, file: !1658, line: 76, type: !28)
!1801 = !DILocalVariable(name: "s27", arg: 4, scope: !1795, file: !1658, line: 76, type: !28)
!1802 = !DILocalVariable(name: "s28", arg: 5, scope: !1795, file: !1658, line: 76, type: !28)
!1803 = !DILocation(line: 0, scope: !1795, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 97, column: 16, scope: !1805, inlinedAt: !1791)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !1658, line: 94, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1768, file: !1658, line: 93, column: 5)
!1807 = !DILocation(line: 78, column: 7, scope: !1808, inlinedAt: !1804)
!1808 = distinct !DILexicalBlock(scope: !1795, file: !1658, line: 78, column: 7)
!1809 = !DILocation(line: 78, column: 7, scope: !1795, inlinedAt: !1804)
!1810 = !DILocalVariable(name: "s1", arg: 1, scope: !1811, file: !1658, line: 62, type: !37)
!1811 = distinct !DISubprogram(name: "strcaseeq7", scope: !1658, file: !1658, line: 62, type: !1812, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!40, !37, !37, !28, !28}
!1814 = !{!1810, !1815, !1816, !1817}
!1815 = !DILocalVariable(name: "s2", arg: 2, scope: !1811, file: !1658, line: 62, type: !37)
!1816 = !DILocalVariable(name: "s27", arg: 3, scope: !1811, file: !1658, line: 62, type: !28)
!1817 = !DILocalVariable(name: "s28", arg: 4, scope: !1811, file: !1658, line: 62, type: !28)
!1818 = !DILocation(line: 0, scope: !1811, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 83, column: 16, scope: !1820, inlinedAt: !1804)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !1658, line: 80, column: 11)
!1821 = distinct !DILexicalBlock(scope: !1808, file: !1658, line: 79, column: 5)
!1822 = !DILocation(line: 64, column: 7, scope: !1823, inlinedAt: !1819)
!1823 = distinct !DILexicalBlock(scope: !1811, file: !1658, line: 64, column: 7)
!1824 = !DILocation(line: 236, column: 7, scope: !1642)
!1825 = !DILocation(line: 237, column: 12, scope: !1776)
!1826 = !DILocation(line: 237, column: 21, scope: !1776)
!1827 = !DILocation(line: 237, column: 5, scope: !1776)
!1828 = !DILocation(line: 239, column: 13, scope: !1642)
!1829 = !DILocation(line: 239, column: 11, scope: !1642)
!1830 = !DILocation(line: 239, column: 3, scope: !1642)
!1831 = !DILocation(line: 240, column: 1, scope: !1642)
!1832 = !DISubprogram(name: "iswprint", scope: !1833, file: !1833, line: 120, type: !1834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!1833 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!40, !6}
!1836 = !DISubprogram(name: "mbsinit", scope: !1837, file: !1837, line: 292, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!1837 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!40, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1159)
!1842 = distinct !DISubprogram(name: "quotearg_alloc", scope: !75, file: !75, line: 799, type: !1843, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!27, !37, !99, !1005}
!1845 = !{!1846, !1847, !1848}
!1846 = !DILocalVariable(name: "arg", arg: 1, scope: !1842, file: !75, line: 799, type: !37)
!1847 = !DILocalVariable(name: "argsize", arg: 2, scope: !1842, file: !75, line: 799, type: !99)
!1848 = !DILocalVariable(name: "o", arg: 3, scope: !1842, file: !75, line: 800, type: !1005)
!1849 = !DILocation(line: 0, scope: !1842)
!1850 = !DILocalVariable(name: "arg", arg: 1, scope: !1851, file: !75, line: 812, type: !37)
!1851 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !75, file: !75, line: 812, type: !1852, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!27, !37, !99, !184, !1005}
!1854 = !{!1850, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1855 = !DILocalVariable(name: "argsize", arg: 2, scope: !1851, file: !75, line: 812, type: !99)
!1856 = !DILocalVariable(name: "size", arg: 3, scope: !1851, file: !75, line: 812, type: !184)
!1857 = !DILocalVariable(name: "o", arg: 4, scope: !1851, file: !75, line: 813, type: !1005)
!1858 = !DILocalVariable(name: "p", scope: !1851, file: !75, line: 815, type: !1005)
!1859 = !DILocalVariable(name: "e", scope: !1851, file: !75, line: 816, type: !40)
!1860 = !DILocalVariable(name: "flags", scope: !1851, file: !75, line: 818, type: !40)
!1861 = !DILocalVariable(name: "bufsize", scope: !1851, file: !75, line: 819, type: !99)
!1862 = !DILocalVariable(name: "buf", scope: !1851, file: !75, line: 823, type: !27)
!1863 = !DILocation(line: 0, scope: !1851, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 802, column: 10, scope: !1842)
!1865 = !DILocation(line: 815, column: 37, scope: !1851, inlinedAt: !1864)
!1866 = !DILocation(line: 816, column: 11, scope: !1851, inlinedAt: !1864)
!1867 = !DILocation(line: 818, column: 18, scope: !1851, inlinedAt: !1864)
!1868 = !DILocation(line: 818, column: 24, scope: !1851, inlinedAt: !1864)
!1869 = !DILocation(line: 819, column: 69, scope: !1851, inlinedAt: !1864)
!1870 = !DILocation(line: 820, column: 53, scope: !1851, inlinedAt: !1864)
!1871 = !DILocation(line: 821, column: 49, scope: !1851, inlinedAt: !1864)
!1872 = !DILocation(line: 822, column: 49, scope: !1851, inlinedAt: !1864)
!1873 = !DILocation(line: 819, column: 20, scope: !1851, inlinedAt: !1864)
!1874 = !DILocation(line: 822, column: 62, scope: !1851, inlinedAt: !1864)
!1875 = !DILocalVariable(name: "n", arg: 1, scope: !1876, file: !180, line: 216, type: !99)
!1876 = distinct !DISubprogram(name: "xcharalloc", scope: !180, file: !180, line: 216, type: !1877, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!27, !99}
!1879 = !{!1875}
!1880 = !DILocation(line: 0, scope: !1876, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 823, column: 15, scope: !1851, inlinedAt: !1864)
!1882 = !DILocation(line: 218, column: 10, scope: !1876, inlinedAt: !1881)
!1883 = !DILocation(line: 824, column: 60, scope: !1851, inlinedAt: !1864)
!1884 = !DILocation(line: 826, column: 32, scope: !1851, inlinedAt: !1864)
!1885 = !DILocation(line: 826, column: 47, scope: !1851, inlinedAt: !1864)
!1886 = !DILocation(line: 824, column: 3, scope: !1851, inlinedAt: !1864)
!1887 = !DILocation(line: 827, column: 9, scope: !1851, inlinedAt: !1864)
!1888 = !DILocation(line: 802, column: 3, scope: !1842)
!1889 = !DILocation(line: 0, scope: !1851)
!1890 = !DILocation(line: 815, column: 37, scope: !1851)
!1891 = !DILocation(line: 816, column: 11, scope: !1851)
!1892 = !DILocation(line: 818, column: 18, scope: !1851)
!1893 = !DILocation(line: 818, column: 27, scope: !1851)
!1894 = !DILocation(line: 818, column: 24, scope: !1851)
!1895 = !DILocation(line: 819, column: 69, scope: !1851)
!1896 = !DILocation(line: 820, column: 53, scope: !1851)
!1897 = !DILocation(line: 821, column: 49, scope: !1851)
!1898 = !DILocation(line: 822, column: 49, scope: !1851)
!1899 = !DILocation(line: 819, column: 20, scope: !1851)
!1900 = !DILocation(line: 822, column: 62, scope: !1851)
!1901 = !DILocation(line: 0, scope: !1876, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 823, column: 15, scope: !1851)
!1903 = !DILocation(line: 218, column: 10, scope: !1876, inlinedAt: !1902)
!1904 = !DILocation(line: 824, column: 60, scope: !1851)
!1905 = !DILocation(line: 826, column: 32, scope: !1851)
!1906 = !DILocation(line: 826, column: 47, scope: !1851)
!1907 = !DILocation(line: 824, column: 3, scope: !1851)
!1908 = !DILocation(line: 827, column: 9, scope: !1851)
!1909 = !DILocation(line: 828, column: 7, scope: !1851)
!1910 = !DILocation(line: 829, column: 11, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1851, file: !75, line: 828, column: 7)
!1912 = !{!1913, !1913, i64 0}
!1913 = !{!"long", !620, i64 0}
!1914 = !DILocation(line: 829, column: 5, scope: !1911)
!1915 = !DILocation(line: 830, column: 3, scope: !1851)
!1916 = distinct !DISubprogram(name: "quotearg_free", scope: !75, file: !75, line: 848, type: !878, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1917)
!1917 = !{!1918, !1919}
!1918 = !DILocalVariable(name: "sv", scope: !1916, file: !75, line: 850, type: !130)
!1919 = !DILocalVariable(name: "i", scope: !1916, file: !75, line: 851, type: !40)
!1920 = !DILocation(line: 850, column: 24, scope: !1916)
!1921 = !DILocation(line: 0, scope: !1916)
!1922 = !DILocation(line: 852, column: 19, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !75, line: 852, column: 3)
!1924 = distinct !DILexicalBlock(scope: !1916, file: !75, line: 852, column: 3)
!1925 = !DILocation(line: 852, column: 17, scope: !1923)
!1926 = !DILocation(line: 852, column: 3, scope: !1924)
!1927 = !DILocation(line: 853, column: 17, scope: !1923)
!1928 = !{!1929, !619, i64 8}
!1929 = !{!"slotvec", !1913, i64 0, !619, i64 8}
!1930 = !DILocation(line: 853, column: 5, scope: !1923)
!1931 = !DILocation(line: 852, column: 28, scope: !1923)
!1932 = distinct !{!1932, !1926, !1933, !662}
!1933 = !DILocation(line: 853, column: 20, scope: !1924)
!1934 = !DILocation(line: 854, column: 13, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1916, file: !75, line: 854, column: 7)
!1936 = !DILocation(line: 854, column: 17, scope: !1935)
!1937 = !DILocation(line: 854, column: 7, scope: !1916)
!1938 = !DILocation(line: 856, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !75, line: 855, column: 5)
!1940 = !DILocation(line: 857, column: 21, scope: !1939)
!1941 = !{!1929, !1913, i64 0}
!1942 = !DILocation(line: 858, column: 20, scope: !1939)
!1943 = !DILocation(line: 859, column: 5, scope: !1939)
!1944 = !DILocation(line: 860, column: 10, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1916, file: !75, line: 860, column: 7)
!1946 = !DILocation(line: 860, column: 7, scope: !1916)
!1947 = !DILocation(line: 862, column: 13, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1945, file: !75, line: 861, column: 5)
!1949 = !DILocation(line: 862, column: 7, scope: !1948)
!1950 = !DILocation(line: 863, column: 15, scope: !1948)
!1951 = !DILocation(line: 864, column: 5, scope: !1948)
!1952 = !DILocation(line: 865, column: 10, scope: !1916)
!1953 = !DILocation(line: 866, column: 1, scope: !1916)
!1954 = distinct !DISubprogram(name: "quotearg_n", scope: !75, file: !75, line: 931, type: !744, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1955)
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "n", arg: 1, scope: !1954, file: !75, line: 931, type: !40)
!1957 = !DILocalVariable(name: "arg", arg: 2, scope: !1954, file: !75, line: 931, type: !37)
!1958 = !DILocation(line: 0, scope: !1954)
!1959 = !DILocation(line: 933, column: 10, scope: !1954)
!1960 = !DILocation(line: 933, column: 3, scope: !1954)
!1961 = distinct !DISubprogram(name: "quotearg_n_options", scope: !75, file: !75, line: 877, type: !1962, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!27, !40, !37, !99, !1005}
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970, !1971, !1974, !1975, !1977, !1978, !1979}
!1965 = !DILocalVariable(name: "n", arg: 1, scope: !1961, file: !75, line: 877, type: !40)
!1966 = !DILocalVariable(name: "arg", arg: 2, scope: !1961, file: !75, line: 877, type: !37)
!1967 = !DILocalVariable(name: "argsize", arg: 3, scope: !1961, file: !75, line: 877, type: !99)
!1968 = !DILocalVariable(name: "options", arg: 4, scope: !1961, file: !75, line: 878, type: !1005)
!1969 = !DILocalVariable(name: "e", scope: !1961, file: !75, line: 880, type: !40)
!1970 = !DILocalVariable(name: "sv", scope: !1961, file: !75, line: 882, type: !130)
!1971 = !DILocalVariable(name: "preallocated", scope: !1972, file: !75, line: 889, type: !59)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !75, line: 888, column: 5)
!1973 = distinct !DILexicalBlock(scope: !1961, file: !75, line: 887, column: 7)
!1974 = !DILocalVariable(name: "nmax", scope: !1972, file: !75, line: 890, type: !40)
!1975 = !DILocalVariable(name: "size", scope: !1976, file: !75, line: 903, type: !99)
!1976 = distinct !DILexicalBlock(scope: !1961, file: !75, line: 902, column: 3)
!1977 = !DILocalVariable(name: "val", scope: !1976, file: !75, line: 904, type: !27)
!1978 = !DILocalVariable(name: "flags", scope: !1976, file: !75, line: 906, type: !40)
!1979 = !DILocalVariable(name: "qsize", scope: !1976, file: !75, line: 907, type: !99)
!1980 = !DILocation(line: 0, scope: !1961)
!1981 = !DILocation(line: 880, column: 11, scope: !1961)
!1982 = !DILocation(line: 882, column: 24, scope: !1961)
!1983 = !DILocation(line: 884, column: 9, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1961, file: !75, line: 884, column: 7)
!1985 = !DILocation(line: 884, column: 7, scope: !1961)
!1986 = !DILocation(line: 885, column: 5, scope: !1984)
!1987 = !DILocation(line: 887, column: 7, scope: !1973)
!1988 = !DILocation(line: 887, column: 14, scope: !1973)
!1989 = !DILocation(line: 887, column: 7, scope: !1961)
!1990 = !DILocation(line: 889, column: 31, scope: !1972)
!1991 = !DILocation(line: 0, scope: !1972)
!1992 = !DILocation(line: 892, column: 16, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1972, file: !75, line: 892, column: 11)
!1994 = !DILocation(line: 892, column: 11, scope: !1972)
!1995 = !DILocation(line: 893, column: 9, scope: !1993)
!1996 = !DILocation(line: 895, column: 32, scope: !1972)
!1997 = !DILocation(line: 895, column: 61, scope: !1972)
!1998 = !DILocation(line: 895, column: 66, scope: !1972)
!1999 = !DILocation(line: 895, column: 22, scope: !1972)
!2000 = !DILocation(line: 895, column: 15, scope: !1972)
!2001 = !DILocation(line: 896, column: 11, scope: !1972)
!2002 = !DILocation(line: 897, column: 15, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1972, file: !75, line: 896, column: 11)
!2004 = !{i64 0, i64 8, !1912, i64 8, i64 8, !618}
!2005 = !DILocation(line: 897, column: 9, scope: !2003)
!2006 = !DILocation(line: 898, column: 20, scope: !1972)
!2007 = !DILocation(line: 898, column: 18, scope: !1972)
!2008 = !DILocation(line: 898, column: 15, scope: !1972)
!2009 = !DILocation(line: 898, column: 38, scope: !1972)
!2010 = !DILocation(line: 898, column: 31, scope: !1972)
!2011 = !DILocation(line: 898, column: 48, scope: !1972)
!2012 = !DILocation(line: 0, scope: !1403, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 898, column: 7, scope: !1972)
!2014 = !DILocation(line: 59, column: 10, scope: !1403, inlinedAt: !2013)
!2015 = !DILocation(line: 899, column: 14, scope: !1972)
!2016 = !DILocation(line: 900, column: 5, scope: !1972)
!2017 = !DILocation(line: 903, column: 19, scope: !1976)
!2018 = !DILocation(line: 903, column: 25, scope: !1976)
!2019 = !DILocation(line: 0, scope: !1976)
!2020 = !DILocation(line: 904, column: 23, scope: !1976)
!2021 = !DILocation(line: 906, column: 26, scope: !1976)
!2022 = !DILocation(line: 906, column: 32, scope: !1976)
!2023 = !DILocation(line: 908, column: 55, scope: !1976)
!2024 = !DILocation(line: 909, column: 46, scope: !1976)
!2025 = !DILocation(line: 910, column: 55, scope: !1976)
!2026 = !DILocation(line: 911, column: 55, scope: !1976)
!2027 = !DILocation(line: 907, column: 20, scope: !1976)
!2028 = !DILocation(line: 913, column: 14, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1976, file: !75, line: 913, column: 9)
!2030 = !DILocation(line: 913, column: 9, scope: !1976)
!2031 = !DILocation(line: 915, column: 35, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !75, line: 914, column: 7)
!2033 = !DILocation(line: 915, column: 20, scope: !2032)
!2034 = !DILocation(line: 916, column: 17, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2032, file: !75, line: 916, column: 13)
!2036 = !DILocation(line: 916, column: 13, scope: !2032)
!2037 = !DILocation(line: 917, column: 11, scope: !2035)
!2038 = !DILocation(line: 0, scope: !1876, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 918, column: 27, scope: !2032)
!2040 = !DILocation(line: 218, column: 10, scope: !1876, inlinedAt: !2039)
!2041 = !DILocation(line: 918, column: 19, scope: !2032)
!2042 = !DILocation(line: 919, column: 69, scope: !2032)
!2043 = !DILocation(line: 921, column: 44, scope: !2032)
!2044 = !DILocation(line: 922, column: 44, scope: !2032)
!2045 = !DILocation(line: 919, column: 9, scope: !2032)
!2046 = !DILocation(line: 923, column: 7, scope: !2032)
!2047 = !DILocation(line: 925, column: 11, scope: !1976)
!2048 = !DILocation(line: 926, column: 5, scope: !1976)
!2049 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !75, file: !75, line: 937, type: !2050, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!27, !40, !37, !99}
!2052 = !{!2053, !2054, !2055}
!2053 = !DILocalVariable(name: "n", arg: 1, scope: !2049, file: !75, line: 937, type: !40)
!2054 = !DILocalVariable(name: "arg", arg: 2, scope: !2049, file: !75, line: 937, type: !37)
!2055 = !DILocalVariable(name: "argsize", arg: 3, scope: !2049, file: !75, line: 937, type: !99)
!2056 = !DILocation(line: 0, scope: !2049)
!2057 = !DILocation(line: 939, column: 10, scope: !2049)
!2058 = !DILocation(line: 939, column: 3, scope: !2049)
!2059 = distinct !DISubprogram(name: "quotearg", scope: !75, file: !75, line: 943, type: !871, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2060)
!2060 = !{!2061}
!2061 = !DILocalVariable(name: "arg", arg: 1, scope: !2059, file: !75, line: 943, type: !37)
!2062 = !DILocation(line: 0, scope: !2059)
!2063 = !DILocation(line: 0, scope: !1954, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 945, column: 10, scope: !2059)
!2065 = !DILocation(line: 933, column: 10, scope: !1954, inlinedAt: !2064)
!2066 = !DILocation(line: 945, column: 3, scope: !2059)
!2067 = distinct !DISubprogram(name: "quotearg_mem", scope: !75, file: !75, line: 949, type: !2068, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!27, !37, !99}
!2070 = !{!2071, !2072}
!2071 = !DILocalVariable(name: "arg", arg: 1, scope: !2067, file: !75, line: 949, type: !37)
!2072 = !DILocalVariable(name: "argsize", arg: 2, scope: !2067, file: !75, line: 949, type: !99)
!2073 = !DILocation(line: 0, scope: !2067)
!2074 = !DILocation(line: 0, scope: !2049, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 951, column: 10, scope: !2067)
!2076 = !DILocation(line: 939, column: 10, scope: !2049, inlinedAt: !2075)
!2077 = !DILocation(line: 951, column: 3, scope: !2067)
!2078 = distinct !DISubprogram(name: "quotearg_n_style", scope: !75, file: !75, line: 955, type: !2079, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2081)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!27, !40, !12, !37}
!2081 = !{!2082, !2083, !2084, !2085}
!2082 = !DILocalVariable(name: "n", arg: 1, scope: !2078, file: !75, line: 955, type: !40)
!2083 = !DILocalVariable(name: "s", arg: 2, scope: !2078, file: !75, line: 955, type: !12)
!2084 = !DILocalVariable(name: "arg", arg: 3, scope: !2078, file: !75, line: 955, type: !37)
!2085 = !DILocalVariable(name: "o", scope: !2078, file: !75, line: 957, type: !1006)
!2086 = !DILocation(line: 0, scope: !2078)
!2087 = !DILocation(line: 957, column: 3, scope: !2078)
!2088 = !DILocation(line: 957, column: 32, scope: !2078)
!2089 = !{!2090}
!2090 = distinct !{!2090, !2091, !"quoting_options_from_style: argument 0"}
!2091 = distinct !{!2091, !"quoting_options_from_style"}
!2092 = !DILocation(line: 957, column: 36, scope: !2078)
!2093 = !DILocalVariable(name: "style", arg: 1, scope: !2094, file: !75, line: 193, type: !12)
!2094 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !75, file: !75, line: 193, type: !2095, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!111, !12}
!2097 = !{!2093, !2098}
!2098 = !DILocalVariable(name: "o", scope: !2094, file: !75, line: 195, type: !111)
!2099 = !DILocation(line: 0, scope: !2094, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 957, column: 36, scope: !2078)
!2101 = !DILocation(line: 195, column: 26, scope: !2094, inlinedAt: !2100)
!2102 = !DILocation(line: 196, column: 13, scope: !2103, inlinedAt: !2100)
!2103 = distinct !DILexicalBlock(scope: !2094, file: !75, line: 196, column: 7)
!2104 = !DILocation(line: 196, column: 7, scope: !2094, inlinedAt: !2100)
!2105 = !DILocation(line: 197, column: 5, scope: !2103, inlinedAt: !2100)
!2106 = !DILocation(line: 198, column: 5, scope: !2094, inlinedAt: !2100)
!2107 = !DILocation(line: 198, column: 11, scope: !2094, inlinedAt: !2100)
!2108 = !DILocation(line: 958, column: 10, scope: !2078)
!2109 = !DILocation(line: 959, column: 1, scope: !2078)
!2110 = !DILocation(line: 958, column: 3, scope: !2078)
!2111 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !75, file: !75, line: 962, type: !2112, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!27, !40, !12, !37, !99}
!2114 = !{!2115, !2116, !2117, !2118, !2119}
!2115 = !DILocalVariable(name: "n", arg: 1, scope: !2111, file: !75, line: 962, type: !40)
!2116 = !DILocalVariable(name: "s", arg: 2, scope: !2111, file: !75, line: 962, type: !12)
!2117 = !DILocalVariable(name: "arg", arg: 3, scope: !2111, file: !75, line: 963, type: !37)
!2118 = !DILocalVariable(name: "argsize", arg: 4, scope: !2111, file: !75, line: 963, type: !99)
!2119 = !DILocalVariable(name: "o", scope: !2111, file: !75, line: 965, type: !1006)
!2120 = !DILocation(line: 0, scope: !2111)
!2121 = !DILocation(line: 965, column: 3, scope: !2111)
!2122 = !DILocation(line: 965, column: 32, scope: !2111)
!2123 = !{!2124}
!2124 = distinct !{!2124, !2125, !"quoting_options_from_style: argument 0"}
!2125 = distinct !{!2125, !"quoting_options_from_style"}
!2126 = !DILocation(line: 965, column: 36, scope: !2111)
!2127 = !DILocation(line: 0, scope: !2094, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 965, column: 36, scope: !2111)
!2129 = !DILocation(line: 195, column: 26, scope: !2094, inlinedAt: !2128)
!2130 = !DILocation(line: 196, column: 13, scope: !2103, inlinedAt: !2128)
!2131 = !DILocation(line: 196, column: 7, scope: !2094, inlinedAt: !2128)
!2132 = !DILocation(line: 197, column: 5, scope: !2103, inlinedAt: !2128)
!2133 = !DILocation(line: 198, column: 5, scope: !2094, inlinedAt: !2128)
!2134 = !DILocation(line: 198, column: 11, scope: !2094, inlinedAt: !2128)
!2135 = !DILocation(line: 966, column: 10, scope: !2111)
!2136 = !DILocation(line: 967, column: 1, scope: !2111)
!2137 = !DILocation(line: 966, column: 3, scope: !2111)
!2138 = distinct !DISubprogram(name: "quotearg_style", scope: !75, file: !75, line: 970, type: !2139, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!27, !12, !37}
!2141 = !{!2142, !2143}
!2142 = !DILocalVariable(name: "s", arg: 1, scope: !2138, file: !75, line: 970, type: !12)
!2143 = !DILocalVariable(name: "arg", arg: 2, scope: !2138, file: !75, line: 970, type: !37)
!2144 = !DILocation(line: 0, scope: !2138)
!2145 = !DILocation(line: 0, scope: !2078, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 972, column: 10, scope: !2138)
!2147 = !DILocation(line: 957, column: 3, scope: !2078, inlinedAt: !2146)
!2148 = !DILocation(line: 957, column: 32, scope: !2078, inlinedAt: !2146)
!2149 = !{!2150}
!2150 = distinct !{!2150, !2151, !"quoting_options_from_style: argument 0"}
!2151 = distinct !{!2151, !"quoting_options_from_style"}
!2152 = !DILocation(line: 957, column: 36, scope: !2078, inlinedAt: !2146)
!2153 = !DILocation(line: 0, scope: !2094, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 957, column: 36, scope: !2078, inlinedAt: !2146)
!2155 = !DILocation(line: 195, column: 26, scope: !2094, inlinedAt: !2154)
!2156 = !DILocation(line: 196, column: 13, scope: !2103, inlinedAt: !2154)
!2157 = !DILocation(line: 196, column: 7, scope: !2094, inlinedAt: !2154)
!2158 = !DILocation(line: 197, column: 5, scope: !2103, inlinedAt: !2154)
!2159 = !DILocation(line: 198, column: 5, scope: !2094, inlinedAt: !2154)
!2160 = !DILocation(line: 198, column: 11, scope: !2094, inlinedAt: !2154)
!2161 = !DILocation(line: 958, column: 10, scope: !2078, inlinedAt: !2146)
!2162 = !DILocation(line: 959, column: 1, scope: !2078, inlinedAt: !2146)
!2163 = !DILocation(line: 972, column: 3, scope: !2138)
!2164 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !75, file: !75, line: 976, type: !2165, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!27, !12, !37, !99}
!2167 = !{!2168, !2169, !2170}
!2168 = !DILocalVariable(name: "s", arg: 1, scope: !2164, file: !75, line: 976, type: !12)
!2169 = !DILocalVariable(name: "arg", arg: 2, scope: !2164, file: !75, line: 976, type: !37)
!2170 = !DILocalVariable(name: "argsize", arg: 3, scope: !2164, file: !75, line: 976, type: !99)
!2171 = !DILocation(line: 0, scope: !2164)
!2172 = !DILocation(line: 0, scope: !2111, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 978, column: 10, scope: !2164)
!2174 = !DILocation(line: 965, column: 3, scope: !2111, inlinedAt: !2173)
!2175 = !DILocation(line: 965, column: 32, scope: !2111, inlinedAt: !2173)
!2176 = !{!2177}
!2177 = distinct !{!2177, !2178, !"quoting_options_from_style: argument 0"}
!2178 = distinct !{!2178, !"quoting_options_from_style"}
!2179 = !DILocation(line: 965, column: 36, scope: !2111, inlinedAt: !2173)
!2180 = !DILocation(line: 0, scope: !2094, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 965, column: 36, scope: !2111, inlinedAt: !2173)
!2182 = !DILocation(line: 195, column: 26, scope: !2094, inlinedAt: !2181)
!2183 = !DILocation(line: 196, column: 13, scope: !2103, inlinedAt: !2181)
!2184 = !DILocation(line: 196, column: 7, scope: !2094, inlinedAt: !2181)
!2185 = !DILocation(line: 197, column: 5, scope: !2103, inlinedAt: !2181)
!2186 = !DILocation(line: 198, column: 5, scope: !2094, inlinedAt: !2181)
!2187 = !DILocation(line: 198, column: 11, scope: !2094, inlinedAt: !2181)
!2188 = !DILocation(line: 966, column: 10, scope: !2111, inlinedAt: !2173)
!2189 = !DILocation(line: 967, column: 1, scope: !2111, inlinedAt: !2173)
!2190 = !DILocation(line: 978, column: 3, scope: !2164)
!2191 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !75, file: !75, line: 982, type: !2192, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!27, !37, !99, !28}
!2194 = !{!2195, !2196, !2197, !2198}
!2195 = !DILocalVariable(name: "arg", arg: 1, scope: !2191, file: !75, line: 982, type: !37)
!2196 = !DILocalVariable(name: "argsize", arg: 2, scope: !2191, file: !75, line: 982, type: !99)
!2197 = !DILocalVariable(name: "ch", arg: 3, scope: !2191, file: !75, line: 982, type: !28)
!2198 = !DILocalVariable(name: "options", scope: !2191, file: !75, line: 984, type: !111)
!2199 = !DILocation(line: 0, scope: !2191)
!2200 = !DILocation(line: 984, column: 3, scope: !2191)
!2201 = !DILocation(line: 984, column: 26, scope: !2191)
!2202 = !DILocation(line: 985, column: 13, scope: !2191)
!2203 = !{i64 0, i64 4, !1212, i64 4, i64 4, !776, i64 8, i64 32, !1212, i64 40, i64 8, !618, i64 48, i64 8, !618}
!2204 = !DILocation(line: 0, scope: !1026, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 986, column: 3, scope: !2191)
!2206 = !DILocation(line: 156, column: 62, scope: !1026, inlinedAt: !2205)
!2207 = !DILocation(line: 156, column: 57, scope: !1026, inlinedAt: !2205)
!2208 = !DILocation(line: 157, column: 15, scope: !1026, inlinedAt: !2205)
!2209 = !DILocation(line: 158, column: 12, scope: !1026, inlinedAt: !2205)
!2210 = !DILocation(line: 158, column: 15, scope: !1026, inlinedAt: !2205)
!2211 = !DILocation(line: 158, column: 25, scope: !1026, inlinedAt: !2205)
!2212 = !DILocation(line: 159, column: 18, scope: !1026, inlinedAt: !2205)
!2213 = !DILocation(line: 159, column: 23, scope: !1026, inlinedAt: !2205)
!2214 = !DILocation(line: 159, column: 6, scope: !1026, inlinedAt: !2205)
!2215 = !DILocation(line: 987, column: 10, scope: !2191)
!2216 = !DILocation(line: 988, column: 1, scope: !2191)
!2217 = !DILocation(line: 987, column: 3, scope: !2191)
!2218 = distinct !DISubprogram(name: "quotearg_char", scope: !75, file: !75, line: 991, type: !2219, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!27, !37, !28}
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "arg", arg: 1, scope: !2218, file: !75, line: 991, type: !37)
!2223 = !DILocalVariable(name: "ch", arg: 2, scope: !2218, file: !75, line: 991, type: !28)
!2224 = !DILocation(line: 0, scope: !2218)
!2225 = !DILocation(line: 0, scope: !2191, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 993, column: 10, scope: !2218)
!2227 = !DILocation(line: 984, column: 3, scope: !2191, inlinedAt: !2226)
!2228 = !DILocation(line: 984, column: 26, scope: !2191, inlinedAt: !2226)
!2229 = !DILocation(line: 985, column: 13, scope: !2191, inlinedAt: !2226)
!2230 = !DILocation(line: 0, scope: !1026, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 986, column: 3, scope: !2191, inlinedAt: !2226)
!2232 = !DILocation(line: 156, column: 62, scope: !1026, inlinedAt: !2231)
!2233 = !DILocation(line: 156, column: 57, scope: !1026, inlinedAt: !2231)
!2234 = !DILocation(line: 157, column: 15, scope: !1026, inlinedAt: !2231)
!2235 = !DILocation(line: 158, column: 12, scope: !1026, inlinedAt: !2231)
!2236 = !DILocation(line: 158, column: 15, scope: !1026, inlinedAt: !2231)
!2237 = !DILocation(line: 158, column: 25, scope: !1026, inlinedAt: !2231)
!2238 = !DILocation(line: 159, column: 18, scope: !1026, inlinedAt: !2231)
!2239 = !DILocation(line: 159, column: 23, scope: !1026, inlinedAt: !2231)
!2240 = !DILocation(line: 159, column: 6, scope: !1026, inlinedAt: !2231)
!2241 = !DILocation(line: 987, column: 10, scope: !2191, inlinedAt: !2226)
!2242 = !DILocation(line: 988, column: 1, scope: !2191, inlinedAt: !2226)
!2243 = !DILocation(line: 993, column: 3, scope: !2218)
!2244 = distinct !DISubprogram(name: "quotearg_colon", scope: !75, file: !75, line: 997, type: !871, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2245)
!2245 = !{!2246}
!2246 = !DILocalVariable(name: "arg", arg: 1, scope: !2244, file: !75, line: 997, type: !37)
!2247 = !DILocation(line: 0, scope: !2244)
!2248 = !DILocation(line: 0, scope: !2218, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 999, column: 10, scope: !2244)
!2250 = !DILocation(line: 0, scope: !2191, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 993, column: 10, scope: !2218, inlinedAt: !2249)
!2252 = !DILocation(line: 984, column: 3, scope: !2191, inlinedAt: !2251)
!2253 = !DILocation(line: 984, column: 26, scope: !2191, inlinedAt: !2251)
!2254 = !DILocation(line: 985, column: 13, scope: !2191, inlinedAt: !2251)
!2255 = !DILocation(line: 0, scope: !1026, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 986, column: 3, scope: !2191, inlinedAt: !2251)
!2257 = !DILocation(line: 156, column: 57, scope: !1026, inlinedAt: !2256)
!2258 = !DILocation(line: 158, column: 12, scope: !1026, inlinedAt: !2256)
!2259 = !DILocation(line: 159, column: 6, scope: !1026, inlinedAt: !2256)
!2260 = !DILocation(line: 987, column: 10, scope: !2191, inlinedAt: !2251)
!2261 = !DILocation(line: 988, column: 1, scope: !2191, inlinedAt: !2251)
!2262 = !DILocation(line: 999, column: 3, scope: !2244)
!2263 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !75, file: !75, line: 1003, type: !2068, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2264)
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "arg", arg: 1, scope: !2263, file: !75, line: 1003, type: !37)
!2266 = !DILocalVariable(name: "argsize", arg: 2, scope: !2263, file: !75, line: 1003, type: !99)
!2267 = !DILocation(line: 0, scope: !2263)
!2268 = !DILocation(line: 0, scope: !2191, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 1005, column: 10, scope: !2263)
!2270 = !DILocation(line: 984, column: 3, scope: !2191, inlinedAt: !2269)
!2271 = !DILocation(line: 984, column: 26, scope: !2191, inlinedAt: !2269)
!2272 = !DILocation(line: 985, column: 13, scope: !2191, inlinedAt: !2269)
!2273 = !DILocation(line: 0, scope: !1026, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 986, column: 3, scope: !2191, inlinedAt: !2269)
!2275 = !DILocation(line: 156, column: 57, scope: !1026, inlinedAt: !2274)
!2276 = !DILocation(line: 158, column: 12, scope: !1026, inlinedAt: !2274)
!2277 = !DILocation(line: 159, column: 6, scope: !1026, inlinedAt: !2274)
!2278 = !DILocation(line: 987, column: 10, scope: !2191, inlinedAt: !2269)
!2279 = !DILocation(line: 988, column: 1, scope: !2191, inlinedAt: !2269)
!2280 = !DILocation(line: 1005, column: 3, scope: !2263)
!2281 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !75, file: !75, line: 1009, type: !2079, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2282)
!2282 = !{!2283, !2284, !2285, !2286}
!2283 = !DILocalVariable(name: "n", arg: 1, scope: !2281, file: !75, line: 1009, type: !40)
!2284 = !DILocalVariable(name: "s", arg: 2, scope: !2281, file: !75, line: 1009, type: !12)
!2285 = !DILocalVariable(name: "arg", arg: 3, scope: !2281, file: !75, line: 1009, type: !37)
!2286 = !DILocalVariable(name: "options", scope: !2281, file: !75, line: 1011, type: !111)
!2287 = !DILocation(line: 195, column: 26, scope: !2094, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 1012, column: 13, scope: !2281)
!2289 = !DILocation(line: 0, scope: !2281)
!2290 = !DILocation(line: 1011, column: 3, scope: !2281)
!2291 = !DILocation(line: 1011, column: 26, scope: !2281)
!2292 = !DILocation(line: 1012, column: 13, scope: !2281)
!2293 = !{!2294}
!2294 = distinct !{!2294, !2295, !"quoting_options_from_style: argument 0"}
!2295 = distinct !{!2295, !"quoting_options_from_style"}
!2296 = !DILocation(line: 0, scope: !2094, inlinedAt: !2288)
!2297 = !DILocation(line: 196, column: 13, scope: !2103, inlinedAt: !2288)
!2298 = !DILocation(line: 196, column: 7, scope: !2094, inlinedAt: !2288)
!2299 = !DILocation(line: 197, column: 5, scope: !2103, inlinedAt: !2288)
!2300 = !{i64 0, i64 4, !776, i64 4, i64 32, !1212, i64 36, i64 8, !618, i64 44, i64 8, !618}
!2301 = !DILocation(line: 0, scope: !1026, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 1013, column: 3, scope: !2281)
!2303 = !DILocation(line: 156, column: 57, scope: !1026, inlinedAt: !2302)
!2304 = !DILocation(line: 158, column: 12, scope: !1026, inlinedAt: !2302)
!2305 = !DILocation(line: 159, column: 6, scope: !1026, inlinedAt: !2302)
!2306 = !DILocation(line: 1014, column: 10, scope: !2281)
!2307 = !DILocation(line: 1015, column: 1, scope: !2281)
!2308 = !DILocation(line: 1014, column: 3, scope: !2281)
!2309 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !75, file: !75, line: 1018, type: !2310, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2312)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!27, !40, !37, !37, !37}
!2312 = !{!2313, !2314, !2315, !2316}
!2313 = !DILocalVariable(name: "n", arg: 1, scope: !2309, file: !75, line: 1018, type: !40)
!2314 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2309, file: !75, line: 1018, type: !37)
!2315 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2309, file: !75, line: 1019, type: !37)
!2316 = !DILocalVariable(name: "arg", arg: 4, scope: !2309, file: !75, line: 1019, type: !37)
!2317 = !DILocation(line: 0, scope: !2309)
!2318 = !DILocalVariable(name: "n", arg: 1, scope: !2319, file: !75, line: 1026, type: !40)
!2319 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !75, file: !75, line: 1026, type: !2320, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!27, !40, !37, !37, !37, !99}
!2322 = !{!2318, !2323, !2324, !2325, !2326, !2327}
!2323 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2319, file: !75, line: 1026, type: !37)
!2324 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2319, file: !75, line: 1027, type: !37)
!2325 = !DILocalVariable(name: "arg", arg: 4, scope: !2319, file: !75, line: 1028, type: !37)
!2326 = !DILocalVariable(name: "argsize", arg: 5, scope: !2319, file: !75, line: 1028, type: !99)
!2327 = !DILocalVariable(name: "o", scope: !2319, file: !75, line: 1030, type: !111)
!2328 = !DILocation(line: 0, scope: !2319, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 1021, column: 10, scope: !2309)
!2330 = !DILocation(line: 1030, column: 3, scope: !2319, inlinedAt: !2329)
!2331 = !DILocation(line: 1030, column: 26, scope: !2319, inlinedAt: !2329)
!2332 = !DILocation(line: 1030, column: 30, scope: !2319, inlinedAt: !2329)
!2333 = !DILocation(line: 0, scope: !1067, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 1031, column: 3, scope: !2319, inlinedAt: !2329)
!2335 = !DILocation(line: 184, column: 6, scope: !1067, inlinedAt: !2334)
!2336 = !DILocation(line: 184, column: 12, scope: !1067, inlinedAt: !2334)
!2337 = !DILocation(line: 185, column: 8, scope: !1081, inlinedAt: !2334)
!2338 = !DILocation(line: 185, column: 19, scope: !1081, inlinedAt: !2334)
!2339 = !DILocation(line: 186, column: 5, scope: !1081, inlinedAt: !2334)
!2340 = !DILocation(line: 187, column: 6, scope: !1067, inlinedAt: !2334)
!2341 = !DILocation(line: 187, column: 17, scope: !1067, inlinedAt: !2334)
!2342 = !DILocation(line: 188, column: 6, scope: !1067, inlinedAt: !2334)
!2343 = !DILocation(line: 188, column: 18, scope: !1067, inlinedAt: !2334)
!2344 = !DILocation(line: 1032, column: 10, scope: !2319, inlinedAt: !2329)
!2345 = !DILocation(line: 1033, column: 1, scope: !2319, inlinedAt: !2329)
!2346 = !DILocation(line: 1021, column: 3, scope: !2309)
!2347 = !DILocation(line: 0, scope: !2319)
!2348 = !DILocation(line: 1030, column: 3, scope: !2319)
!2349 = !DILocation(line: 1030, column: 26, scope: !2319)
!2350 = !DILocation(line: 1030, column: 30, scope: !2319)
!2351 = !DILocation(line: 0, scope: !1067, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 1031, column: 3, scope: !2319)
!2353 = !DILocation(line: 184, column: 6, scope: !1067, inlinedAt: !2352)
!2354 = !DILocation(line: 184, column: 12, scope: !1067, inlinedAt: !2352)
!2355 = !DILocation(line: 185, column: 8, scope: !1081, inlinedAt: !2352)
!2356 = !DILocation(line: 185, column: 19, scope: !1081, inlinedAt: !2352)
!2357 = !DILocation(line: 186, column: 5, scope: !1081, inlinedAt: !2352)
!2358 = !DILocation(line: 187, column: 6, scope: !1067, inlinedAt: !2352)
!2359 = !DILocation(line: 187, column: 17, scope: !1067, inlinedAt: !2352)
!2360 = !DILocation(line: 188, column: 6, scope: !1067, inlinedAt: !2352)
!2361 = !DILocation(line: 188, column: 18, scope: !1067, inlinedAt: !2352)
!2362 = !DILocation(line: 1032, column: 10, scope: !2319)
!2363 = !DILocation(line: 1033, column: 1, scope: !2319)
!2364 = !DILocation(line: 1032, column: 3, scope: !2319)
!2365 = distinct !DISubprogram(name: "quotearg_custom", scope: !75, file: !75, line: 1036, type: !2366, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!27, !37, !37, !37}
!2368 = !{!2369, !2370, !2371}
!2369 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2365, file: !75, line: 1036, type: !37)
!2370 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2365, file: !75, line: 1036, type: !37)
!2371 = !DILocalVariable(name: "arg", arg: 3, scope: !2365, file: !75, line: 1037, type: !37)
!2372 = !DILocation(line: 0, scope: !2365)
!2373 = !DILocation(line: 0, scope: !2309, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 1039, column: 10, scope: !2365)
!2375 = !DILocation(line: 0, scope: !2319, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 1021, column: 10, scope: !2309, inlinedAt: !2374)
!2377 = !DILocation(line: 1030, column: 3, scope: !2319, inlinedAt: !2376)
!2378 = !DILocation(line: 1030, column: 26, scope: !2319, inlinedAt: !2376)
!2379 = !DILocation(line: 1030, column: 30, scope: !2319, inlinedAt: !2376)
!2380 = !DILocation(line: 0, scope: !1067, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 1031, column: 3, scope: !2319, inlinedAt: !2376)
!2382 = !DILocation(line: 184, column: 6, scope: !1067, inlinedAt: !2381)
!2383 = !DILocation(line: 184, column: 12, scope: !1067, inlinedAt: !2381)
!2384 = !DILocation(line: 185, column: 8, scope: !1081, inlinedAt: !2381)
!2385 = !DILocation(line: 185, column: 19, scope: !1081, inlinedAt: !2381)
!2386 = !DILocation(line: 186, column: 5, scope: !1081, inlinedAt: !2381)
!2387 = !DILocation(line: 187, column: 6, scope: !1067, inlinedAt: !2381)
!2388 = !DILocation(line: 187, column: 17, scope: !1067, inlinedAt: !2381)
!2389 = !DILocation(line: 188, column: 6, scope: !1067, inlinedAt: !2381)
!2390 = !DILocation(line: 188, column: 18, scope: !1067, inlinedAt: !2381)
!2391 = !DILocation(line: 1032, column: 10, scope: !2319, inlinedAt: !2376)
!2392 = !DILocation(line: 1033, column: 1, scope: !2319, inlinedAt: !2376)
!2393 = !DILocation(line: 1039, column: 3, scope: !2365)
!2394 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !75, file: !75, line: 1043, type: !2395, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!27, !37, !37, !37, !99}
!2397 = !{!2398, !2399, !2400, !2401}
!2398 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2394, file: !75, line: 1043, type: !37)
!2399 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2394, file: !75, line: 1043, type: !37)
!2400 = !DILocalVariable(name: "arg", arg: 3, scope: !2394, file: !75, line: 1044, type: !37)
!2401 = !DILocalVariable(name: "argsize", arg: 4, scope: !2394, file: !75, line: 1044, type: !99)
!2402 = !DILocation(line: 0, scope: !2394)
!2403 = !DILocation(line: 0, scope: !2319, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 1046, column: 10, scope: !2394)
!2405 = !DILocation(line: 1030, column: 3, scope: !2319, inlinedAt: !2404)
!2406 = !DILocation(line: 1030, column: 26, scope: !2319, inlinedAt: !2404)
!2407 = !DILocation(line: 1030, column: 30, scope: !2319, inlinedAt: !2404)
!2408 = !DILocation(line: 0, scope: !1067, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 1031, column: 3, scope: !2319, inlinedAt: !2404)
!2410 = !DILocation(line: 184, column: 6, scope: !1067, inlinedAt: !2409)
!2411 = !DILocation(line: 184, column: 12, scope: !1067, inlinedAt: !2409)
!2412 = !DILocation(line: 185, column: 8, scope: !1081, inlinedAt: !2409)
!2413 = !DILocation(line: 185, column: 19, scope: !1081, inlinedAt: !2409)
!2414 = !DILocation(line: 186, column: 5, scope: !1081, inlinedAt: !2409)
!2415 = !DILocation(line: 187, column: 6, scope: !1067, inlinedAt: !2409)
!2416 = !DILocation(line: 187, column: 17, scope: !1067, inlinedAt: !2409)
!2417 = !DILocation(line: 188, column: 6, scope: !1067, inlinedAt: !2409)
!2418 = !DILocation(line: 188, column: 18, scope: !1067, inlinedAt: !2409)
!2419 = !DILocation(line: 1032, column: 10, scope: !2319, inlinedAt: !2404)
!2420 = !DILocation(line: 1033, column: 1, scope: !2319, inlinedAt: !2404)
!2421 = !DILocation(line: 1046, column: 3, scope: !2394)
!2422 = distinct !DISubprogram(name: "quote_n_mem", scope: !75, file: !75, line: 1061, type: !2423, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!37, !40, !37, !99}
!2425 = !{!2426, !2427, !2428}
!2426 = !DILocalVariable(name: "n", arg: 1, scope: !2422, file: !75, line: 1061, type: !40)
!2427 = !DILocalVariable(name: "arg", arg: 2, scope: !2422, file: !75, line: 1061, type: !37)
!2428 = !DILocalVariable(name: "argsize", arg: 3, scope: !2422, file: !75, line: 1061, type: !99)
!2429 = !DILocation(line: 0, scope: !2422)
!2430 = !DILocation(line: 1063, column: 10, scope: !2422)
!2431 = !DILocation(line: 1063, column: 3, scope: !2422)
!2432 = distinct !DISubprogram(name: "quote_mem", scope: !75, file: !75, line: 1067, type: !2433, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!37, !37, !99}
!2435 = !{!2436, !2437}
!2436 = !DILocalVariable(name: "arg", arg: 1, scope: !2432, file: !75, line: 1067, type: !37)
!2437 = !DILocalVariable(name: "argsize", arg: 2, scope: !2432, file: !75, line: 1067, type: !99)
!2438 = !DILocation(line: 0, scope: !2432)
!2439 = !DILocation(line: 0, scope: !2422, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 1069, column: 10, scope: !2432)
!2441 = !DILocation(line: 1063, column: 10, scope: !2422, inlinedAt: !2440)
!2442 = !DILocation(line: 1069, column: 3, scope: !2432)
!2443 = distinct !DISubprogram(name: "quote_n", scope: !75, file: !75, line: 1073, type: !2444, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!37, !40, !37}
!2446 = !{!2447, !2448}
!2447 = !DILocalVariable(name: "n", arg: 1, scope: !2443, file: !75, line: 1073, type: !40)
!2448 = !DILocalVariable(name: "arg", arg: 2, scope: !2443, file: !75, line: 1073, type: !37)
!2449 = !DILocation(line: 0, scope: !2443)
!2450 = !DILocation(line: 0, scope: !2422, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 1075, column: 10, scope: !2443)
!2452 = !DILocation(line: 1063, column: 10, scope: !2422, inlinedAt: !2451)
!2453 = !DILocation(line: 1075, column: 3, scope: !2443)
!2454 = distinct !DISubprogram(name: "quote", scope: !75, file: !75, line: 1079, type: !2455, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!37, !37}
!2457 = !{!2458}
!2458 = !DILocalVariable(name: "arg", arg: 1, scope: !2454, file: !75, line: 1079, type: !37)
!2459 = !DILocation(line: 0, scope: !2454)
!2460 = !DILocation(line: 0, scope: !2443, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 1081, column: 10, scope: !2454)
!2462 = !DILocation(line: 0, scope: !2422, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 1075, column: 10, scope: !2443, inlinedAt: !2461)
!2464 = !DILocation(line: 1063, column: 10, scope: !2422, inlinedAt: !2463)
!2465 = !DILocation(line: 1081, column: 3, scope: !2454)
!2466 = distinct !DISubprogram(name: "version_etc_arn", scope: !170, file: !170, line: 61, type: !2467, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !2505)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !2469, !37, !37, !37, !2504, !99}
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2471, line: 7, baseType: !2472)
!2471 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !692, line: 49, size: 1728, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2472, file: !692, line: 51, baseType: !40, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2472, file: !692, line: 54, baseType: !27, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2472, file: !692, line: 55, baseType: !27, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2472, file: !692, line: 56, baseType: !27, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2472, file: !692, line: 57, baseType: !27, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2472, file: !692, line: 58, baseType: !27, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2472, file: !692, line: 59, baseType: !27, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2472, file: !692, line: 60, baseType: !27, size: 64, offset: 448)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2472, file: !692, line: 61, baseType: !27, size: 64, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2472, file: !692, line: 64, baseType: !27, size: 64, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2472, file: !692, line: 65, baseType: !27, size: 64, offset: 640)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2472, file: !692, line: 66, baseType: !27, size: 64, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2472, file: !692, line: 68, baseType: !707, size: 64, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2472, file: !692, line: 70, baseType: !2488, size: 64, offset: 832)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2472, file: !692, line: 72, baseType: !40, size: 32, offset: 896)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2472, file: !692, line: 73, baseType: !40, size: 32, offset: 928)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2472, file: !692, line: 74, baseType: !713, size: 64, offset: 960)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2472, file: !692, line: 77, baseType: !98, size: 16, offset: 1024)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2472, file: !692, line: 78, baseType: !718, size: 8, offset: 1040)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2472, file: !692, line: 79, baseType: !720, size: 8, offset: 1048)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2472, file: !692, line: 81, baseType: !724, size: 64, offset: 1088)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2472, file: !692, line: 89, baseType: !727, size: 64, offset: 1152)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2472, file: !692, line: 91, baseType: !729, size: 64, offset: 1216)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2472, file: !692, line: 92, baseType: !732, size: 64, offset: 1280)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2472, file: !692, line: 93, baseType: !2488, size: 64, offset: 1344)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2472, file: !692, line: 94, baseType: !29, size: 64, offset: 1408)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2472, file: !692, line: 95, baseType: !99, size: 64, offset: 1472)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2472, file: !692, line: 96, baseType: !40, size: 32, offset: 1536)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2472, file: !692, line: 98, baseType: !739, size: 160, offset: 1568)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511}
!2506 = !DILocalVariable(name: "stream", arg: 1, scope: !2466, file: !170, line: 61, type: !2469)
!2507 = !DILocalVariable(name: "command_name", arg: 2, scope: !2466, file: !170, line: 62, type: !37)
!2508 = !DILocalVariable(name: "package", arg: 3, scope: !2466, file: !170, line: 62, type: !37)
!2509 = !DILocalVariable(name: "version", arg: 4, scope: !2466, file: !170, line: 63, type: !37)
!2510 = !DILocalVariable(name: "authors", arg: 5, scope: !2466, file: !170, line: 64, type: !2504)
!2511 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2466, file: !170, line: 64, type: !99)
!2512 = !DILocation(line: 0, scope: !2466)
!2513 = !DILocation(line: 66, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2466, file: !170, line: 66, column: 7)
!2515 = !DILocation(line: 66, column: 7, scope: !2466)
!2516 = !DILocation(line: 67, column: 5, scope: !2514)
!2517 = !DILocation(line: 69, column: 5, scope: !2514)
!2518 = !DILocation(line: 83, column: 3, scope: !2466)
!2519 = !DILocation(line: 85, column: 3, scope: !2466)
!2520 = !DILocation(line: 88, column: 3, scope: !2466)
!2521 = !DILocation(line: 95, column: 3, scope: !2466)
!2522 = !DILocation(line: 97, column: 3, scope: !2466)
!2523 = !DILocation(line: 105, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2466, file: !170, line: 98, column: 5)
!2525 = !DILocation(line: 106, column: 7, scope: !2524)
!2526 = !DILocation(line: 109, column: 7, scope: !2524)
!2527 = !DILocation(line: 110, column: 7, scope: !2524)
!2528 = !DILocation(line: 113, column: 7, scope: !2524)
!2529 = !DILocation(line: 115, column: 7, scope: !2524)
!2530 = !DILocation(line: 120, column: 7, scope: !2524)
!2531 = !DILocation(line: 122, column: 7, scope: !2524)
!2532 = !DILocation(line: 127, column: 7, scope: !2524)
!2533 = !DILocation(line: 129, column: 7, scope: !2524)
!2534 = !DILocation(line: 134, column: 7, scope: !2524)
!2535 = !DILocation(line: 137, column: 7, scope: !2524)
!2536 = !DILocation(line: 142, column: 7, scope: !2524)
!2537 = !DILocation(line: 145, column: 7, scope: !2524)
!2538 = !DILocation(line: 150, column: 7, scope: !2524)
!2539 = !DILocation(line: 154, column: 7, scope: !2524)
!2540 = !DILocation(line: 159, column: 7, scope: !2524)
!2541 = !DILocation(line: 163, column: 7, scope: !2524)
!2542 = !DILocation(line: 170, column: 7, scope: !2524)
!2543 = !DILocation(line: 174, column: 7, scope: !2524)
!2544 = !DILocation(line: 176, column: 1, scope: !2466)
!2545 = distinct !DISubprogram(name: "version_etc_ar", scope: !170, file: !170, line: 183, type: !2546, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !2469, !37, !37, !37, !2504}
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554}
!2549 = !DILocalVariable(name: "stream", arg: 1, scope: !2545, file: !170, line: 183, type: !2469)
!2550 = !DILocalVariable(name: "command_name", arg: 2, scope: !2545, file: !170, line: 184, type: !37)
!2551 = !DILocalVariable(name: "package", arg: 3, scope: !2545, file: !170, line: 184, type: !37)
!2552 = !DILocalVariable(name: "version", arg: 4, scope: !2545, file: !170, line: 185, type: !37)
!2553 = !DILocalVariable(name: "authors", arg: 5, scope: !2545, file: !170, line: 185, type: !2504)
!2554 = !DILocalVariable(name: "n_authors", scope: !2545, file: !170, line: 187, type: !99)
!2555 = !DILocation(line: 0, scope: !2545)
!2556 = !DILocation(line: 189, column: 8, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2545, file: !170, line: 189, column: 3)
!2558 = !DILocation(line: 0, scope: !2557)
!2559 = !DILocation(line: 189, column: 23, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !170, line: 189, column: 3)
!2561 = !DILocation(line: 189, column: 3, scope: !2557)
!2562 = !DILocation(line: 189, column: 52, scope: !2560)
!2563 = distinct !{!2563, !2561, !2564, !662}
!2564 = !DILocation(line: 190, column: 5, scope: !2557)
!2565 = !DILocation(line: 191, column: 3, scope: !2545)
!2566 = !DILocation(line: 192, column: 1, scope: !2545)
!2567 = distinct !DISubprogram(name: "version_etc_va", scope: !170, file: !170, line: 199, type: !2568, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !2577)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !2469, !37, !37, !37, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2572)
!2572 = !{!2573, !2574, !2575, !2576}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2571, file: !170, line: 192, baseType: !6, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2571, file: !170, line: 192, baseType: !6, size: 32, offset: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2571, file: !170, line: 192, baseType: !29, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2571, file: !170, line: 192, baseType: !29, size: 64, offset: 128)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2578 = !DILocalVariable(name: "stream", arg: 1, scope: !2567, file: !170, line: 199, type: !2469)
!2579 = !DILocalVariable(name: "command_name", arg: 2, scope: !2567, file: !170, line: 200, type: !37)
!2580 = !DILocalVariable(name: "package", arg: 3, scope: !2567, file: !170, line: 200, type: !37)
!2581 = !DILocalVariable(name: "version", arg: 4, scope: !2567, file: !170, line: 201, type: !37)
!2582 = !DILocalVariable(name: "authors", arg: 5, scope: !2567, file: !170, line: 201, type: !2570)
!2583 = !DILocalVariable(name: "n_authors", scope: !2567, file: !170, line: 203, type: !99)
!2584 = !DILocalVariable(name: "authtab", scope: !2567, file: !170, line: 204, type: !2585)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !107)
!2586 = !DILocation(line: 0, scope: !2567)
!2587 = !DILocation(line: 204, column: 3, scope: !2567)
!2588 = !DILocation(line: 204, column: 15, scope: !2567)
!2589 = !DILocation(line: 208, column: 35, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !170, line: 206, column: 3)
!2591 = distinct !DILexicalBlock(scope: !2567, file: !170, line: 206, column: 3)
!2592 = !DILocation(line: 208, column: 14, scope: !2590)
!2593 = !DILocation(line: 208, column: 33, scope: !2590)
!2594 = !DILocation(line: 208, column: 67, scope: !2590)
!2595 = !DILocation(line: 206, column: 3, scope: !2591)
!2596 = !DILocation(line: 0, scope: !2591)
!2597 = !DILocation(line: 211, column: 3, scope: !2567)
!2598 = !DILocation(line: 213, column: 1, scope: !2567)
!2599 = distinct !DISubprogram(name: "version_etc", scope: !170, file: !170, line: 230, type: !2600, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !2469, !37, !37, !37, null}
!2602 = !{!2603, !2604, !2605, !2606, !2607}
!2603 = !DILocalVariable(name: "stream", arg: 1, scope: !2599, file: !170, line: 230, type: !2469)
!2604 = !DILocalVariable(name: "command_name", arg: 2, scope: !2599, file: !170, line: 231, type: !37)
!2605 = !DILocalVariable(name: "package", arg: 3, scope: !2599, file: !170, line: 231, type: !37)
!2606 = !DILocalVariable(name: "version", arg: 4, scope: !2599, file: !170, line: 232, type: !37)
!2607 = !DILocalVariable(name: "authors", scope: !2599, file: !170, line: 234, type: !2608)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !687, line: 52, baseType: !2609)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2610, line: 32, baseType: !2611)
!2610 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !170, baseType: !2612)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2571, size: 192, elements: !721)
!2613 = !DILocation(line: 0, scope: !2599)
!2614 = !DILocation(line: 234, column: 3, scope: !2599)
!2615 = !DILocation(line: 234, column: 11, scope: !2599)
!2616 = !DILocation(line: 236, column: 3, scope: !2599)
!2617 = !DILocation(line: 237, column: 3, scope: !2599)
!2618 = !DILocation(line: 238, column: 3, scope: !2599)
!2619 = !DILocation(line: 239, column: 1, scope: !2599)
!2620 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !170, file: !170, line: 242, type: !878, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !50)
!2621 = !DILocation(line: 244, column: 3, scope: !2620)
!2622 = !DILocation(line: 249, column: 3, scope: !2620)
!2623 = !DILocation(line: 255, column: 3, scope: !2620)
!2624 = !DILocation(line: 260, column: 3, scope: !2620)
!2625 = !DILocation(line: 262, column: 1, scope: !2620)
!2626 = distinct !DISubprogram(name: "xnmalloc", scope: !180, file: !180, line: 99, type: !2627, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!29, !99, !99}
!2629 = !{!2630, !2631}
!2630 = !DILocalVariable(name: "n", arg: 1, scope: !2626, file: !180, line: 99, type: !99)
!2631 = !DILocalVariable(name: "s", arg: 2, scope: !2626, file: !180, line: 99, type: !99)
!2632 = !DILocation(line: 0, scope: !2626)
!2633 = !DILocation(line: 101, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2626, file: !180, line: 101, column: 7)
!2635 = !DILocation(line: 101, column: 7, scope: !2626)
!2636 = !DILocation(line: 102, column: 5, scope: !2634)
!2637 = !DILocation(line: 103, column: 21, scope: !2626)
!2638 = !DILocalVariable(name: "n", arg: 1, scope: !2639, file: !177, line: 39, type: !99)
!2639 = distinct !DISubprogram(name: "xmalloc", scope: !177, file: !177, line: 39, type: !2640, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!29, !99}
!2642 = !{!2638, !2643}
!2643 = !DILocalVariable(name: "p", scope: !2639, file: !177, line: 41, type: !29)
!2644 = !DILocation(line: 0, scope: !2639, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 103, column: 10, scope: !2626)
!2646 = !DILocation(line: 41, column: 13, scope: !2639, inlinedAt: !2645)
!2647 = !DILocation(line: 42, column: 8, scope: !2648, inlinedAt: !2645)
!2648 = distinct !DILexicalBlock(scope: !2639, file: !177, line: 42, column: 7)
!2649 = !DILocation(line: 42, column: 10, scope: !2648, inlinedAt: !2645)
!2650 = !DILocation(line: 43, column: 5, scope: !2648, inlinedAt: !2645)
!2651 = !DILocation(line: 103, column: 3, scope: !2626)
!2652 = !DILocation(line: 0, scope: !2639)
!2653 = !DILocation(line: 41, column: 13, scope: !2639)
!2654 = !DILocation(line: 42, column: 8, scope: !2648)
!2655 = !DILocation(line: 42, column: 10, scope: !2648)
!2656 = !DILocation(line: 43, column: 5, scope: !2648)
!2657 = !DILocation(line: 44, column: 3, scope: !2639)
!2658 = distinct !DISubprogram(name: "xnrealloc", scope: !180, file: !180, line: 112, type: !2659, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!29, !29, !99, !99}
!2661 = !{!2662, !2663, !2664}
!2662 = !DILocalVariable(name: "p", arg: 1, scope: !2658, file: !180, line: 112, type: !29)
!2663 = !DILocalVariable(name: "n", arg: 2, scope: !2658, file: !180, line: 112, type: !99)
!2664 = !DILocalVariable(name: "s", arg: 3, scope: !2658, file: !180, line: 112, type: !99)
!2665 = !DILocation(line: 0, scope: !2658)
!2666 = !DILocation(line: 114, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2658, file: !180, line: 114, column: 7)
!2668 = !DILocation(line: 114, column: 7, scope: !2658)
!2669 = !DILocation(line: 115, column: 5, scope: !2667)
!2670 = !DILocation(line: 116, column: 25, scope: !2658)
!2671 = !DILocalVariable(name: "p", arg: 1, scope: !2672, file: !177, line: 51, type: !29)
!2672 = distinct !DISubprogram(name: "xrealloc", scope: !177, file: !177, line: 51, type: !2673, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!29, !29, !99}
!2675 = !{!2671, !2676}
!2676 = !DILocalVariable(name: "n", arg: 2, scope: !2672, file: !177, line: 51, type: !99)
!2677 = !DILocation(line: 0, scope: !2672, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 116, column: 10, scope: !2658)
!2679 = !DILocation(line: 53, column: 8, scope: !2680, inlinedAt: !2678)
!2680 = distinct !DILexicalBlock(scope: !2672, file: !177, line: 53, column: 7)
!2681 = !DILocation(line: 53, column: 10, scope: !2680, inlinedAt: !2678)
!2682 = !DILocation(line: 57, column: 7, scope: !2683, inlinedAt: !2678)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !177, line: 54, column: 5)
!2684 = !DILocation(line: 58, column: 7, scope: !2683, inlinedAt: !2678)
!2685 = !DILocation(line: 61, column: 7, scope: !2672, inlinedAt: !2678)
!2686 = !DILocation(line: 62, column: 8, scope: !2687, inlinedAt: !2678)
!2687 = distinct !DILexicalBlock(scope: !2672, file: !177, line: 62, column: 7)
!2688 = !DILocation(line: 62, column: 10, scope: !2687, inlinedAt: !2678)
!2689 = !DILocation(line: 63, column: 5, scope: !2687, inlinedAt: !2678)
!2690 = !DILocation(line: 116, column: 3, scope: !2658)
!2691 = !DILocation(line: 0, scope: !2672)
!2692 = !DILocation(line: 53, column: 8, scope: !2680)
!2693 = !DILocation(line: 53, column: 10, scope: !2680)
!2694 = !DILocation(line: 57, column: 7, scope: !2683)
!2695 = !DILocation(line: 58, column: 7, scope: !2683)
!2696 = !DILocation(line: 61, column: 7, scope: !2672)
!2697 = !DILocation(line: 62, column: 8, scope: !2687)
!2698 = !DILocation(line: 62, column: 10, scope: !2687)
!2699 = !DILocation(line: 63, column: 5, scope: !2687)
!2700 = !DILocation(line: 65, column: 1, scope: !2672)
!2701 = !DILocation(line: 0, scope: !181)
!2702 = !DILocation(line: 176, column: 14, scope: !181)
!2703 = !DILocation(line: 178, column: 9, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !181, file: !180, line: 178, column: 7)
!2705 = !DILocation(line: 178, column: 7, scope: !181)
!2706 = !DILocation(line: 180, column: 13, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !180, line: 180, column: 11)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !180, line: 179, column: 5)
!2709 = !DILocation(line: 180, column: 11, scope: !2708)
!2710 = !DILocation(line: 188, column: 30, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2707, file: !180, line: 181, column: 9)
!2712 = !DILocation(line: 189, column: 16, scope: !2711)
!2713 = !DILocation(line: 189, column: 13, scope: !2711)
!2714 = !DILocation(line: 190, column: 9, scope: !2711)
!2715 = !DILocation(line: 191, column: 11, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2708, file: !180, line: 191, column: 11)
!2717 = !DILocation(line: 191, column: 11, scope: !2708)
!2718 = !DILocation(line: 206, column: 7, scope: !181)
!2719 = !DILocation(line: 207, column: 25, scope: !181)
!2720 = !DILocation(line: 0, scope: !2672, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 207, column: 10, scope: !181)
!2722 = !DILocation(line: 53, column: 10, scope: !2680, inlinedAt: !2721)
!2723 = !DILocation(line: 192, column: 9, scope: !2716)
!2724 = !DILocation(line: 200, column: 69, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !180, line: 200, column: 11)
!2726 = distinct !DILexicalBlock(scope: !2704, file: !180, line: 195, column: 5)
!2727 = !DILocation(line: 201, column: 11, scope: !2725)
!2728 = !DILocation(line: 200, column: 11, scope: !2726)
!2729 = !DILocation(line: 202, column: 9, scope: !2725)
!2730 = !DILocation(line: 203, column: 14, scope: !2726)
!2731 = !DILocation(line: 203, column: 18, scope: !2726)
!2732 = !DILocation(line: 203, column: 9, scope: !2726)
!2733 = !DILocation(line: 53, column: 8, scope: !2680, inlinedAt: !2721)
!2734 = !DILocation(line: 57, column: 7, scope: !2683, inlinedAt: !2721)
!2735 = !DILocation(line: 58, column: 7, scope: !2683, inlinedAt: !2721)
!2736 = !DILocation(line: 61, column: 7, scope: !2672, inlinedAt: !2721)
!2737 = !DILocation(line: 62, column: 8, scope: !2687, inlinedAt: !2721)
!2738 = !DILocation(line: 62, column: 10, scope: !2687, inlinedAt: !2721)
!2739 = !DILocation(line: 63, column: 5, scope: !2687, inlinedAt: !2721)
!2740 = !DILocation(line: 207, column: 3, scope: !181)
!2741 = distinct !DISubprogram(name: "xcharalloc", scope: !180, file: !180, line: 216, type: !1877, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2742)
!2742 = !{!2743}
!2743 = !DILocalVariable(name: "n", arg: 1, scope: !2741, file: !180, line: 216, type: !99)
!2744 = !DILocation(line: 0, scope: !2741)
!2745 = !DILocation(line: 0, scope: !2639, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 218, column: 10, scope: !2741)
!2747 = !DILocation(line: 41, column: 13, scope: !2639, inlinedAt: !2746)
!2748 = !DILocation(line: 42, column: 8, scope: !2648, inlinedAt: !2746)
!2749 = !DILocation(line: 42, column: 10, scope: !2648, inlinedAt: !2746)
!2750 = !DILocation(line: 43, column: 5, scope: !2648, inlinedAt: !2746)
!2751 = !DILocation(line: 218, column: 3, scope: !2741)
!2752 = distinct !DISubprogram(name: "x2realloc", scope: !177, file: !177, line: 74, type: !2753, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!29, !29, !184}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "p", arg: 1, scope: !2752, file: !177, line: 74, type: !29)
!2757 = !DILocalVariable(name: "pn", arg: 2, scope: !2752, file: !177, line: 74, type: !184)
!2758 = !DILocation(line: 0, scope: !2752)
!2759 = !DILocation(line: 0, scope: !181, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 76, column: 10, scope: !2752)
!2761 = !DILocation(line: 176, column: 14, scope: !181, inlinedAt: !2760)
!2762 = !DILocation(line: 178, column: 9, scope: !2704, inlinedAt: !2760)
!2763 = !DILocation(line: 178, column: 7, scope: !181, inlinedAt: !2760)
!2764 = !DILocation(line: 180, column: 13, scope: !2707, inlinedAt: !2760)
!2765 = !DILocation(line: 180, column: 11, scope: !2708, inlinedAt: !2760)
!2766 = !DILocation(line: 191, column: 11, scope: !2716, inlinedAt: !2760)
!2767 = !DILocation(line: 191, column: 11, scope: !2708, inlinedAt: !2760)
!2768 = !DILocation(line: 192, column: 9, scope: !2716, inlinedAt: !2760)
!2769 = !DILocation(line: 201, column: 11, scope: !2725, inlinedAt: !2760)
!2770 = !DILocation(line: 200, column: 11, scope: !2726, inlinedAt: !2760)
!2771 = !DILocation(line: 202, column: 9, scope: !2725, inlinedAt: !2760)
!2772 = !DILocation(line: 203, column: 14, scope: !2726, inlinedAt: !2760)
!2773 = !DILocation(line: 203, column: 18, scope: !2726, inlinedAt: !2760)
!2774 = !DILocation(line: 203, column: 9, scope: !2726, inlinedAt: !2760)
!2775 = !DILocation(line: 0, scope: !2672, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 207, column: 10, scope: !181, inlinedAt: !2760)
!2777 = !DILocation(line: 53, column: 10, scope: !2680, inlinedAt: !2776)
!2778 = !DILocation(line: 206, column: 7, scope: !181, inlinedAt: !2760)
!2779 = !DILocation(line: 61, column: 7, scope: !2672, inlinedAt: !2776)
!2780 = !DILocation(line: 62, column: 8, scope: !2687, inlinedAt: !2776)
!2781 = !DILocation(line: 62, column: 10, scope: !2687, inlinedAt: !2776)
!2782 = !DILocation(line: 63, column: 5, scope: !2687, inlinedAt: !2776)
!2783 = !DILocation(line: 76, column: 3, scope: !2752)
!2784 = distinct !DISubprogram(name: "xzalloc", scope: !177, file: !177, line: 84, type: !2640, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2785)
!2785 = !{!2786}
!2786 = !DILocalVariable(name: "n", arg: 1, scope: !2784, file: !177, line: 84, type: !99)
!2787 = !DILocation(line: 0, scope: !2784)
!2788 = !DILocalVariable(name: "n", arg: 1, scope: !2789, file: !177, line: 93, type: !99)
!2789 = distinct !DISubprogram(name: "xcalloc", scope: !177, file: !177, line: 93, type: !2627, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2790)
!2790 = !{!2788, !2791, !2792}
!2791 = !DILocalVariable(name: "s", arg: 2, scope: !2789, file: !177, line: 93, type: !99)
!2792 = !DILocalVariable(name: "p", scope: !2789, file: !177, line: 95, type: !29)
!2793 = !DILocation(line: 0, scope: !2789, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 86, column: 10, scope: !2784)
!2795 = !DILocation(line: 100, column: 7, scope: !2796, inlinedAt: !2794)
!2796 = distinct !DILexicalBlock(scope: !2789, file: !177, line: 100, column: 7)
!2797 = !DILocation(line: 101, column: 7, scope: !2796, inlinedAt: !2794)
!2798 = !DILocation(line: 101, column: 18, scope: !2796, inlinedAt: !2794)
!2799 = !DILocation(line: 101, column: 16, scope: !2796, inlinedAt: !2794)
!2800 = !DILocation(line: 100, column: 7, scope: !2789, inlinedAt: !2794)
!2801 = !DILocation(line: 102, column: 5, scope: !2796, inlinedAt: !2794)
!2802 = !DILocation(line: 86, column: 3, scope: !2784)
!2803 = !DILocation(line: 0, scope: !2789)
!2804 = !DILocation(line: 100, column: 7, scope: !2796)
!2805 = !DILocation(line: 101, column: 7, scope: !2796)
!2806 = !DILocation(line: 101, column: 18, scope: !2796)
!2807 = !DILocation(line: 101, column: 16, scope: !2796)
!2808 = !DILocation(line: 100, column: 7, scope: !2789)
!2809 = !DILocation(line: 102, column: 5, scope: !2796)
!2810 = !DILocation(line: 103, column: 3, scope: !2789)
!2811 = distinct !DISubprogram(name: "xmemdup", scope: !177, file: !177, line: 111, type: !2812, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2816)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!29, !2814, !99}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2816 = !{!2817, !2818}
!2817 = !DILocalVariable(name: "p", arg: 1, scope: !2811, file: !177, line: 111, type: !2814)
!2818 = !DILocalVariable(name: "s", arg: 2, scope: !2811, file: !177, line: 111, type: !99)
!2819 = !DILocation(line: 0, scope: !2811)
!2820 = !DILocation(line: 0, scope: !2639, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 113, column: 18, scope: !2811)
!2822 = !DILocation(line: 41, column: 13, scope: !2639, inlinedAt: !2821)
!2823 = !DILocation(line: 42, column: 8, scope: !2648, inlinedAt: !2821)
!2824 = !DILocation(line: 42, column: 10, scope: !2648, inlinedAt: !2821)
!2825 = !DILocation(line: 43, column: 5, scope: !2648, inlinedAt: !2821)
!2826 = !DILocalVariable(name: "__dest", arg: 1, scope: !2827, file: !1404, line: 26, type: !2830)
!2827 = distinct !DISubprogram(name: "memcpy", scope: !1404, file: !1404, line: 26, type: !2828, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2832)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!29, !2830, !2831, !99}
!2830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!2831 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2814)
!2832 = !{!2826, !2833, !2834}
!2833 = !DILocalVariable(name: "__src", arg: 2, scope: !2827, file: !1404, line: 26, type: !2831)
!2834 = !DILocalVariable(name: "__len", arg: 3, scope: !2827, file: !1404, line: 26, type: !99)
!2835 = !DILocation(line: 0, scope: !2827, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 113, column: 10, scope: !2811)
!2837 = !DILocation(line: 29, column: 10, scope: !2827, inlinedAt: !2836)
!2838 = !DILocation(line: 113, column: 3, scope: !2811)
!2839 = distinct !DISubprogram(name: "xstrdup", scope: !177, file: !177, line: 119, type: !871, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2840)
!2840 = !{!2841}
!2841 = !DILocalVariable(name: "string", arg: 1, scope: !2839, file: !177, line: 119, type: !37)
!2842 = !DILocation(line: 0, scope: !2839)
!2843 = !DILocation(line: 121, column: 27, scope: !2839)
!2844 = !DILocation(line: 121, column: 43, scope: !2839)
!2845 = !DILocation(line: 0, scope: !2811, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 121, column: 10, scope: !2839)
!2847 = !DILocation(line: 0, scope: !2639, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 113, column: 18, scope: !2811, inlinedAt: !2846)
!2849 = !DILocation(line: 41, column: 13, scope: !2639, inlinedAt: !2848)
!2850 = !DILocation(line: 42, column: 8, scope: !2648, inlinedAt: !2848)
!2851 = !DILocation(line: 42, column: 10, scope: !2648, inlinedAt: !2848)
!2852 = !DILocation(line: 43, column: 5, scope: !2648, inlinedAt: !2848)
!2853 = !DILocation(line: 0, scope: !2827, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 113, column: 10, scope: !2811, inlinedAt: !2846)
!2855 = !DILocation(line: 29, column: 10, scope: !2827, inlinedAt: !2854)
!2856 = !DILocation(line: 121, column: 3, scope: !2839)
!2857 = distinct !DISubprogram(name: "xalloc_die", scope: !194, file: !194, line: 32, type: !878, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !50)
!2858 = !DILocation(line: 34, column: 10, scope: !2857)
!2859 = !DILocation(line: 34, column: 33, scope: !2857)
!2860 = !DILocation(line: 34, column: 3, scope: !2857)
!2861 = !DILocation(line: 40, column: 3, scope: !2857)
!2862 = distinct !DISubprogram(name: "rpl_calloc", scope: !196, file: !196, line: 42, type: !2627, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2863)
!2863 = !{!2864, !2865, !2866, !2867}
!2864 = !DILocalVariable(name: "n", arg: 1, scope: !2862, file: !196, line: 42, type: !99)
!2865 = !DILocalVariable(name: "s", arg: 2, scope: !2862, file: !196, line: 42, type: !99)
!2866 = !DILocalVariable(name: "result", scope: !2862, file: !196, line: 44, type: !29)
!2867 = !DILocalVariable(name: "bytes", scope: !2868, file: !196, line: 56, type: !99)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !196, line: 53, column: 5)
!2869 = distinct !DILexicalBlock(scope: !2862, file: !196, line: 47, column: 7)
!2870 = !DILocation(line: 0, scope: !2862)
!2871 = !DILocation(line: 47, column: 9, scope: !2869)
!2872 = !DILocation(line: 47, column: 14, scope: !2869)
!2873 = !DILocation(line: 0, scope: !2868)
!2874 = !DILocation(line: 57, column: 21, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2868, file: !196, line: 57, column: 11)
!2876 = !DILocation(line: 57, column: 11, scope: !2868)
!2877 = !DILocation(line: 59, column: 11, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2875, file: !196, line: 58, column: 9)
!2879 = !DILocation(line: 59, column: 17, scope: !2878)
!2880 = !DILocation(line: 65, column: 12, scope: !2862)
!2881 = !DILocation(line: 72, column: 3, scope: !2862)
!2882 = !DILocation(line: 73, column: 1, scope: !2862)
!2883 = distinct !DISubprogram(name: "rpl_fcntl", scope: !154, file: !154, line: 202, type: !2884, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!40, !40, !40, null}
!2886 = !{!2887, !2888, !2889, !2899, !2900, !2903, !2905, !2909}
!2887 = !DILocalVariable(name: "fd", arg: 1, scope: !2883, file: !154, line: 202, type: !40)
!2888 = !DILocalVariable(name: "action", arg: 2, scope: !2883, file: !154, line: 202, type: !40)
!2889 = !DILocalVariable(name: "arg", scope: !2883, file: !154, line: 208, type: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2610, line: 14, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !154, baseType: !2892)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 192, elements: !721)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2898}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2893, file: !154, line: 208, baseType: !6, size: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2893, file: !154, line: 208, baseType: !6, size: 32, offset: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2893, file: !154, line: 208, baseType: !29, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2893, file: !154, line: 208, baseType: !29, size: 64, offset: 128)
!2899 = !DILocalVariable(name: "result", scope: !2883, file: !154, line: 209, type: !40)
!2900 = !DILocalVariable(name: "target", scope: !2901, file: !154, line: 215, type: !40)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !154, line: 214, column: 7)
!2902 = distinct !DILexicalBlock(scope: !2883, file: !154, line: 212, column: 5)
!2903 = !DILocalVariable(name: "target", scope: !2904, file: !154, line: 222, type: !40)
!2904 = distinct !DILexicalBlock(scope: !2902, file: !154, line: 221, column: 7)
!2905 = !DILocalVariable(name: "x", scope: !2906, file: !154, line: 423, type: !40)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !154, line: 422, column: 13)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !154, line: 260, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2902, file: !154, line: 257, column: 7)
!2909 = !DILocalVariable(name: "p", scope: !2910, file: !154, line: 431, type: !29)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !154, line: 430, column: 13)
!2911 = !DILocation(line: 0, scope: !2883)
!2912 = !DILocation(line: 208, column: 3, scope: !2883)
!2913 = !DILocation(line: 208, column: 11, scope: !2883)
!2914 = !DILocation(line: 210, column: 3, scope: !2883)
!2915 = !DILocation(line: 211, column: 3, scope: !2883)
!2916 = !DILocation(line: 215, column: 22, scope: !2901)
!2917 = !DILocation(line: 0, scope: !2901)
!2918 = !DILocalVariable(name: "fd", arg: 1, scope: !2919, file: !154, line: 447, type: !40)
!2919 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !154, file: !154, line: 447, type: !155, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2920)
!2920 = !{!2918, !2921, !2922}
!2921 = !DILocalVariable(name: "target", arg: 2, scope: !2919, file: !154, line: 447, type: !40)
!2922 = !DILocalVariable(name: "result", scope: !2919, file: !154, line: 449, type: !40)
!2923 = !DILocation(line: 0, scope: !2919, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 216, column: 18, scope: !2901)
!2925 = !DILocation(line: 482, column: 12, scope: !2919, inlinedAt: !2924)
!2926 = !DILocation(line: 222, column: 22, scope: !2904)
!2927 = !DILocation(line: 0, scope: !2904)
!2928 = !DILocation(line: 0, scope: !153, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 223, column: 18, scope: !2904)
!2930 = !DILocation(line: 508, column: 12, scope: !2931, inlinedAt: !2929)
!2931 = distinct !DILexicalBlock(scope: !153, file: !154, line: 508, column: 7)
!2932 = !DILocation(line: 508, column: 9, scope: !2931, inlinedAt: !2929)
!2933 = !DILocation(line: 508, column: 7, scope: !153, inlinedAt: !2929)
!2934 = !DILocation(line: 510, column: 16, scope: !2935, inlinedAt: !2929)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !154, line: 509, column: 5)
!2936 = !DILocation(line: 511, column: 13, scope: !2937, inlinedAt: !2929)
!2937 = distinct !DILexicalBlock(scope: !2935, file: !154, line: 511, column: 11)
!2938 = !DILocation(line: 511, column: 23, scope: !2937, inlinedAt: !2929)
!2939 = !DILocation(line: 511, column: 26, scope: !2937, inlinedAt: !2929)
!2940 = !DILocation(line: 511, column: 32, scope: !2937, inlinedAt: !2929)
!2941 = !DILocation(line: 511, column: 11, scope: !2935, inlinedAt: !2929)
!2942 = !DILocation(line: 513, column: 30, scope: !2943, inlinedAt: !2929)
!2943 = distinct !DILexicalBlock(scope: !2937, file: !154, line: 512, column: 9)
!2944 = !DILocation(line: 529, column: 19, scope: !165, inlinedAt: !2929)
!2945 = !DILocation(line: 0, scope: !2919, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 521, column: 20, scope: !2947, inlinedAt: !2929)
!2947 = distinct !DILexicalBlock(scope: !2937, file: !154, line: 520, column: 9)
!2948 = !DILocation(line: 482, column: 12, scope: !2919, inlinedAt: !2946)
!2949 = !DILocation(line: 522, column: 22, scope: !2950, inlinedAt: !2929)
!2950 = distinct !DILexicalBlock(scope: !2947, file: !154, line: 522, column: 15)
!2951 = !DILocation(line: 522, column: 15, scope: !2947, inlinedAt: !2929)
!2952 = !DILocation(line: 523, column: 32, scope: !2950, inlinedAt: !2929)
!2953 = !DILocation(line: 523, column: 13, scope: !2950, inlinedAt: !2929)
!2954 = !DILocation(line: 0, scope: !2919, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 528, column: 14, scope: !2931, inlinedAt: !2929)
!2956 = !DILocation(line: 482, column: 12, scope: !2919, inlinedAt: !2955)
!2957 = !DILocation(line: 0, scope: !2931, inlinedAt: !2929)
!2958 = !DILocation(line: 529, column: 9, scope: !165, inlinedAt: !2929)
!2959 = !DILocation(line: 531, column: 19, scope: !164, inlinedAt: !2929)
!2960 = !DILocation(line: 0, scope: !164, inlinedAt: !2929)
!2961 = !DILocation(line: 532, column: 17, scope: !168, inlinedAt: !2929)
!2962 = !DILocation(line: 532, column: 21, scope: !168, inlinedAt: !2929)
!2963 = !DILocation(line: 532, column: 54, scope: !168, inlinedAt: !2929)
!2964 = !DILocation(line: 532, column: 24, scope: !168, inlinedAt: !2929)
!2965 = !DILocation(line: 532, column: 68, scope: !168, inlinedAt: !2929)
!2966 = !DILocation(line: 532, column: 11, scope: !164, inlinedAt: !2929)
!2967 = !DILocation(line: 534, column: 29, scope: !167, inlinedAt: !2929)
!2968 = !DILocation(line: 0, scope: !167, inlinedAt: !2929)
!2969 = !DILocation(line: 535, column: 11, scope: !167, inlinedAt: !2929)
!2970 = !DILocation(line: 536, column: 17, scope: !167, inlinedAt: !2929)
!2971 = !DILocation(line: 538, column: 9, scope: !167, inlinedAt: !2929)
!2972 = !DILocation(line: 328, column: 22, scope: !2907)
!2973 = !DILocation(line: 329, column: 13, scope: !2907)
!2974 = !DILocation(line: 423, column: 23, scope: !2906)
!2975 = !DILocation(line: 0, scope: !2906)
!2976 = !DILocation(line: 424, column: 24, scope: !2906)
!2977 = !DILocation(line: 426, column: 13, scope: !2907)
!2978 = !DILocation(line: 431, column: 25, scope: !2910)
!2979 = !DILocation(line: 0, scope: !2910)
!2980 = !DILocation(line: 432, column: 24, scope: !2910)
!2981 = !DILocation(line: 434, column: 13, scope: !2907)
!2982 = !DILocation(line: 0, scope: !2902)
!2983 = !DILocation(line: 442, column: 3, scope: !2883)
!2984 = !DILocation(line: 444, column: 1, scope: !2883)
!2985 = !DILocation(line: 443, column: 3, scope: !2883)
!2986 = !DISubprogram(name: "fcntl", scope: !893, file: !893, line: 176, type: !2884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!2987 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !198, file: !198, line: 86, type: !2988, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !3002)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!99, !2990, !37, !99, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1156, line: 6, baseType: !2993)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1158, line: 21, baseType: !2994)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 13, size: 64, elements: !2995)
!2995 = !{!2996, !2997}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2994, file: !1158, line: 15, baseType: !40, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2994, file: !1158, line: 20, baseType: !2998, size: 32, offset: 32)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2994, file: !1158, line: 16, size: 32, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2998, file: !1158, line: 18, baseType: !6, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2998, file: !1158, line: 19, baseType: !1167, size: 32)
!3002 = !{!3003, !3004, !3005, !3006, !3007, !3008, !3009}
!3003 = !DILocalVariable(name: "pwc", arg: 1, scope: !2987, file: !198, line: 86, type: !2990)
!3004 = !DILocalVariable(name: "s", arg: 2, scope: !2987, file: !198, line: 86, type: !37)
!3005 = !DILocalVariable(name: "n", arg: 3, scope: !2987, file: !198, line: 86, type: !99)
!3006 = !DILocalVariable(name: "ps", arg: 4, scope: !2987, file: !198, line: 86, type: !2991)
!3007 = !DILocalVariable(name: "ret", scope: !2987, file: !198, line: 88, type: !99)
!3008 = !DILocalVariable(name: "wc", scope: !2987, file: !198, line: 89, type: !1172)
!3009 = !DILocalVariable(name: "uc", scope: !3010, file: !198, line: 156, type: !1034)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !198, line: 155, column: 5)
!3011 = distinct !DILexicalBlock(scope: !2987, file: !198, line: 154, column: 7)
!3012 = !DILocation(line: 0, scope: !2987)
!3013 = !DILocation(line: 89, column: 3, scope: !2987)
!3014 = !DILocation(line: 105, column: 9, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2987, file: !198, line: 105, column: 7)
!3016 = !DILocation(line: 105, column: 7, scope: !2987)
!3017 = !DILocation(line: 145, column: 9, scope: !2987)
!3018 = !DILocation(line: 154, column: 19, scope: !3011)
!3019 = !DILocation(line: 154, column: 26, scope: !3011)
!3020 = !DILocation(line: 154, column: 41, scope: !3011)
!3021 = !DILocation(line: 154, column: 7, scope: !2987)
!3022 = !DILocation(line: 156, column: 26, scope: !3010)
!3023 = !DILocation(line: 0, scope: !3010)
!3024 = !DILocation(line: 157, column: 14, scope: !3010)
!3025 = !DILocation(line: 157, column: 12, scope: !3010)
!3026 = !DILocation(line: 163, column: 1, scope: !2987)
!3027 = !DISubprogram(name: "mbrtowc", scope: !1837, file: !1837, line: 296, type: !3028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!101, !42, !37, !101, !3030}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!3031 = distinct !DISubprogram(name: "close_stream", scope: !201, file: !201, line: 56, type: !3032, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3068)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!40, !3034}
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2471, line: 7, baseType: !3036)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !692, line: 49, size: 1728, elements: !3037)
!3037 = !{!3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3036, file: !692, line: 51, baseType: !40, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3036, file: !692, line: 54, baseType: !27, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3036, file: !692, line: 55, baseType: !27, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3036, file: !692, line: 56, baseType: !27, size: 64, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3036, file: !692, line: 57, baseType: !27, size: 64, offset: 256)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3036, file: !692, line: 58, baseType: !27, size: 64, offset: 320)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3036, file: !692, line: 59, baseType: !27, size: 64, offset: 384)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3036, file: !692, line: 60, baseType: !27, size: 64, offset: 448)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3036, file: !692, line: 61, baseType: !27, size: 64, offset: 512)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3036, file: !692, line: 64, baseType: !27, size: 64, offset: 576)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3036, file: !692, line: 65, baseType: !27, size: 64, offset: 640)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3036, file: !692, line: 66, baseType: !27, size: 64, offset: 704)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3036, file: !692, line: 68, baseType: !707, size: 64, offset: 768)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3036, file: !692, line: 70, baseType: !3052, size: 64, offset: 832)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3036, file: !692, line: 72, baseType: !40, size: 32, offset: 896)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3036, file: !692, line: 73, baseType: !40, size: 32, offset: 928)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3036, file: !692, line: 74, baseType: !713, size: 64, offset: 960)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3036, file: !692, line: 77, baseType: !98, size: 16, offset: 1024)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3036, file: !692, line: 78, baseType: !718, size: 8, offset: 1040)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3036, file: !692, line: 79, baseType: !720, size: 8, offset: 1048)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3036, file: !692, line: 81, baseType: !724, size: 64, offset: 1088)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3036, file: !692, line: 89, baseType: !727, size: 64, offset: 1152)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3036, file: !692, line: 91, baseType: !729, size: 64, offset: 1216)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3036, file: !692, line: 92, baseType: !732, size: 64, offset: 1280)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3036, file: !692, line: 93, baseType: !3052, size: 64, offset: 1344)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3036, file: !692, line: 94, baseType: !29, size: 64, offset: 1408)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3036, file: !692, line: 95, baseType: !99, size: 64, offset: 1472)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3036, file: !692, line: 96, baseType: !40, size: 32, offset: 1536)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3036, file: !692, line: 98, baseType: !739, size: 160, offset: 1568)
!3068 = !{!3069, !3070, !3072, !3073}
!3069 = !DILocalVariable(name: "stream", arg: 1, scope: !3031, file: !201, line: 56, type: !3034)
!3070 = !DILocalVariable(name: "some_pending", scope: !3031, file: !201, line: 58, type: !3071)
!3071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!3072 = !DILocalVariable(name: "prev_fail", scope: !3031, file: !201, line: 59, type: !3071)
!3073 = !DILocalVariable(name: "fclose_fail", scope: !3031, file: !201, line: 60, type: !3071)
!3074 = !DILocation(line: 0, scope: !3031)
!3075 = !DILocation(line: 58, column: 30, scope: !3031)
!3076 = !DILocalVariable(name: "__stream", arg: 1, scope: !3077, file: !3078, line: 135, type: !3034)
!3077 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3078, file: !3078, line: 135, type: !3032, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3079)
!3078 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3079 = !{!3076}
!3080 = !DILocation(line: 0, scope: !3077, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 59, column: 27, scope: !3031)
!3082 = !DILocation(line: 137, column: 10, scope: !3077, inlinedAt: !3081)
!3083 = !{!3084, !777, i64 0}
!3084 = !{!"_IO_FILE", !777, i64 0, !619, i64 8, !619, i64 16, !619, i64 24, !619, i64 32, !619, i64 40, !619, i64 48, !619, i64 56, !619, i64 64, !619, i64 72, !619, i64 80, !619, i64 88, !619, i64 96, !619, i64 104, !777, i64 112, !777, i64 116, !1913, i64 120, !1396, i64 128, !620, i64 130, !620, i64 131, !619, i64 136, !1913, i64 144, !619, i64 152, !619, i64 160, !619, i64 168, !619, i64 176, !1913, i64 184, !777, i64 192, !620, i64 196}
!3085 = !DILocation(line: 59, column: 43, scope: !3031)
!3086 = !DILocation(line: 60, column: 29, scope: !3031)
!3087 = !DILocation(line: 60, column: 45, scope: !3031)
!3088 = !DILocation(line: 70, column: 17, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3031, file: !201, line: 70, column: 7)
!3090 = !DILocation(line: 58, column: 50, scope: !3031)
!3091 = !DILocation(line: 70, column: 33, scope: !3089)
!3092 = !DILocation(line: 70, column: 53, scope: !3089)
!3093 = !DILocation(line: 70, column: 59, scope: !3089)
!3094 = !DILocation(line: 70, column: 7, scope: !3031)
!3095 = !DILocation(line: 72, column: 11, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3089, file: !201, line: 71, column: 5)
!3097 = !DILocation(line: 73, column: 9, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3096, file: !201, line: 72, column: 11)
!3099 = !DILocation(line: 73, column: 15, scope: !3098)
!3100 = !DILocation(line: 78, column: 1, scope: !3031)
!3101 = distinct !DISubprogram(name: "hard_locale", scope: !203, file: !203, line: 27, type: !3102, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!59, !40}
!3104 = !{!3105, !3106}
!3105 = !DILocalVariable(name: "category", arg: 1, scope: !3101, file: !203, line: 27, type: !40)
!3106 = !DILocalVariable(name: "locale", scope: !3101, file: !203, line: 29, type: !3107)
!3107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2056, elements: !3108)
!3108 = !{!3109}
!3109 = !DISubrange(count: 257)
!3110 = !DILocation(line: 0, scope: !3101)
!3111 = !DILocation(line: 29, column: 3, scope: !3101)
!3112 = !DILocation(line: 29, column: 8, scope: !3101)
!3113 = !DILocation(line: 31, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3101, file: !203, line: 31, column: 7)
!3115 = !DILocation(line: 31, column: 7, scope: !3101)
!3116 = !DILocation(line: 34, column: 12, scope: !3101)
!3117 = !DILocation(line: 34, column: 38, scope: !3101)
!3118 = !DILocation(line: 34, column: 41, scope: !3101)
!3119 = !DILocation(line: 34, column: 66, scope: !3101)
!3120 = !DILocation(line: 35, column: 1, scope: !3101)
!3121 = distinct !DISubprogram(name: "locale_charset", scope: !205, file: !205, line: 831, type: !3122, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!37}
!3124 = !{!3125}
!3125 = !DILocalVariable(name: "codeset", scope: !3121, file: !205, line: 833, type: !37)
!3126 = !DILocation(line: 847, column: 13, scope: !3121)
!3127 = !DILocation(line: 0, scope: !3121)
!3128 = !DILocation(line: 911, column: 15, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3121, file: !205, line: 911, column: 7)
!3130 = !DILocation(line: 911, column: 7, scope: !3121)
!3131 = !DILocation(line: 1070, column: 13, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !205, line: 1070, column: 13)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !205, line: 1060, column: 7)
!3134 = distinct !DILexicalBlock(scope: !3121, file: !205, line: 1019, column: 3)
!3135 = !DILocation(line: 1070, column: 24, scope: !3132)
!3136 = !DILocation(line: 1070, column: 13, scope: !3133)
!3137 = !DILocation(line: 1158, column: 3, scope: !3121)
!3138 = !DISubprogram(name: "nl_langinfo", scope: !208, file: !208, line: 661, type: !3139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!27, !40}
!3141 = distinct !DISubprogram(name: "setlocale_null_r", scope: !594, file: !594, line: 269, type: !3142, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!40, !40, !27, !99}
!3144 = !{!3145, !3146, !3147}
!3145 = !DILocalVariable(name: "category", arg: 1, scope: !3141, file: !594, line: 269, type: !40)
!3146 = !DILocalVariable(name: "buf", arg: 2, scope: !3141, file: !594, line: 269, type: !27)
!3147 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3141, file: !594, line: 269, type: !99)
!3148 = !DILocation(line: 0, scope: !3141)
!3149 = !DILocalVariable(name: "category", arg: 1, scope: !3150, file: !594, line: 91, type: !40)
!3150 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !594, file: !594, line: 91, type: !3142, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3151)
!3151 = !{!3149, !3152, !3153, !3154, !3155}
!3152 = !DILocalVariable(name: "buf", arg: 2, scope: !3150, file: !594, line: 91, type: !27)
!3153 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3150, file: !594, line: 91, type: !99)
!3154 = !DILocalVariable(name: "result", scope: !3150, file: !594, line: 140, type: !37)
!3155 = !DILocalVariable(name: "length", scope: !3156, file: !594, line: 154, type: !99)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !594, line: 153, column: 5)
!3157 = distinct !DILexicalBlock(scope: !3150, file: !594, line: 142, column: 7)
!3158 = !DILocation(line: 0, scope: !3150, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 274, column: 10, scope: !3141)
!3160 = !DILocalVariable(name: "category", arg: 1, scope: !3161, file: !594, line: 60, type: !40)
!3161 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !594, file: !594, line: 60, type: !3162, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!37, !40}
!3164 = !{!3160, !3165}
!3165 = !DILocalVariable(name: "result", scope: !3161, file: !594, line: 62, type: !37)
!3166 = !DILocation(line: 0, scope: !3161, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 140, column: 24, scope: !3150, inlinedAt: !3159)
!3168 = !DILocation(line: 62, column: 24, scope: !3161, inlinedAt: !3167)
!3169 = !DILocation(line: 142, column: 14, scope: !3157, inlinedAt: !3159)
!3170 = !DILocation(line: 142, column: 7, scope: !3150, inlinedAt: !3159)
!3171 = !DILocation(line: 145, column: 19, scope: !3172, inlinedAt: !3159)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !594, line: 145, column: 11)
!3173 = distinct !DILexicalBlock(scope: !3157, file: !594, line: 143, column: 5)
!3174 = !DILocation(line: 145, column: 11, scope: !3173, inlinedAt: !3159)
!3175 = !DILocation(line: 149, column: 16, scope: !3172, inlinedAt: !3159)
!3176 = !DILocation(line: 149, column: 9, scope: !3172, inlinedAt: !3159)
!3177 = !DILocation(line: 154, column: 23, scope: !3156, inlinedAt: !3159)
!3178 = !DILocation(line: 0, scope: !3156, inlinedAt: !3159)
!3179 = !DILocation(line: 155, column: 18, scope: !3180, inlinedAt: !3159)
!3180 = distinct !DILexicalBlock(scope: !3156, file: !594, line: 155, column: 11)
!3181 = !DILocation(line: 155, column: 11, scope: !3156, inlinedAt: !3159)
!3182 = !DILocation(line: 157, column: 39, scope: !3183, inlinedAt: !3159)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !594, line: 156, column: 9)
!3184 = !DILocalVariable(name: "__dest", arg: 1, scope: !3185, file: !1404, line: 26, type: !2830)
!3185 = distinct !DISubprogram(name: "memcpy", scope: !1404, file: !1404, line: 26, type: !2828, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3186)
!3186 = !{!3184, !3187, !3188}
!3187 = !DILocalVariable(name: "__src", arg: 2, scope: !3185, file: !1404, line: 26, type: !2831)
!3188 = !DILocalVariable(name: "__len", arg: 3, scope: !3185, file: !1404, line: 26, type: !99)
!3189 = !DILocation(line: 0, scope: !3185, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 157, column: 11, scope: !3183, inlinedAt: !3159)
!3191 = !DILocation(line: 29, column: 10, scope: !3185, inlinedAt: !3190)
!3192 = !DILocation(line: 158, column: 11, scope: !3183, inlinedAt: !3159)
!3193 = !DILocation(line: 162, column: 23, scope: !3194, inlinedAt: !3159)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !594, line: 162, column: 15)
!3195 = distinct !DILexicalBlock(scope: !3180, file: !594, line: 161, column: 9)
!3196 = !DILocation(line: 162, column: 15, scope: !3195, inlinedAt: !3159)
!3197 = !DILocation(line: 167, column: 44, scope: !3198, inlinedAt: !3159)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !594, line: 163, column: 13)
!3199 = !DILocation(line: 0, scope: !3185, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 167, column: 15, scope: !3198, inlinedAt: !3159)
!3201 = !DILocation(line: 29, column: 10, scope: !3185, inlinedAt: !3200)
!3202 = !DILocation(line: 168, column: 15, scope: !3198, inlinedAt: !3159)
!3203 = !DILocation(line: 168, column: 32, scope: !3198, inlinedAt: !3159)
!3204 = !DILocation(line: 169, column: 13, scope: !3198, inlinedAt: !3159)
!3205 = !DILocation(line: 0, scope: !3157, inlinedAt: !3159)
!3206 = !DILocation(line: 274, column: 3, scope: !3141)
!3207 = distinct !DISubprogram(name: "setlocale_null", scope: !594, file: !594, line: 301, type: !3162, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3208)
!3208 = !{!3209}
!3209 = !DILocalVariable(name: "category", arg: 1, scope: !3207, file: !594, line: 301, type: !40)
!3210 = !DILocation(line: 0, scope: !3207)
!3211 = !DILocation(line: 0, scope: !3161, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 304, column: 10, scope: !3207)
!3213 = !DILocation(line: 62, column: 24, scope: !3161, inlinedAt: !3212)
!3214 = !DILocation(line: 304, column: 3, scope: !3207)
!3215 = distinct !DISubprogram(name: "rpl_fclose", scope: !596, file: !596, line: 58, type: !3216, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !3252)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!40, !3218}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2471, line: 7, baseType: !3220)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !692, line: 49, size: 1728, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3220, file: !692, line: 51, baseType: !40, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3220, file: !692, line: 54, baseType: !27, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3220, file: !692, line: 55, baseType: !27, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3220, file: !692, line: 56, baseType: !27, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3220, file: !692, line: 57, baseType: !27, size: 64, offset: 256)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3220, file: !692, line: 58, baseType: !27, size: 64, offset: 320)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3220, file: !692, line: 59, baseType: !27, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3220, file: !692, line: 60, baseType: !27, size: 64, offset: 448)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3220, file: !692, line: 61, baseType: !27, size: 64, offset: 512)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3220, file: !692, line: 64, baseType: !27, size: 64, offset: 576)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3220, file: !692, line: 65, baseType: !27, size: 64, offset: 640)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3220, file: !692, line: 66, baseType: !27, size: 64, offset: 704)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3220, file: !692, line: 68, baseType: !707, size: 64, offset: 768)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3220, file: !692, line: 70, baseType: !3236, size: 64, offset: 832)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3220, file: !692, line: 72, baseType: !40, size: 32, offset: 896)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3220, file: !692, line: 73, baseType: !40, size: 32, offset: 928)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3220, file: !692, line: 74, baseType: !713, size: 64, offset: 960)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3220, file: !692, line: 77, baseType: !98, size: 16, offset: 1024)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3220, file: !692, line: 78, baseType: !718, size: 8, offset: 1040)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3220, file: !692, line: 79, baseType: !720, size: 8, offset: 1048)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3220, file: !692, line: 81, baseType: !724, size: 64, offset: 1088)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3220, file: !692, line: 89, baseType: !727, size: 64, offset: 1152)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3220, file: !692, line: 91, baseType: !729, size: 64, offset: 1216)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3220, file: !692, line: 92, baseType: !732, size: 64, offset: 1280)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3220, file: !692, line: 93, baseType: !3236, size: 64, offset: 1344)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3220, file: !692, line: 94, baseType: !29, size: 64, offset: 1408)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3220, file: !692, line: 95, baseType: !99, size: 64, offset: 1472)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3220, file: !692, line: 96, baseType: !40, size: 32, offset: 1536)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3220, file: !692, line: 98, baseType: !739, size: 160, offset: 1568)
!3252 = !{!3253, !3254, !3255, !3256}
!3253 = !DILocalVariable(name: "fp", arg: 1, scope: !3215, file: !596, line: 58, type: !3218)
!3254 = !DILocalVariable(name: "saved_errno", scope: !3215, file: !596, line: 60, type: !40)
!3255 = !DILocalVariable(name: "fd", scope: !3215, file: !596, line: 61, type: !40)
!3256 = !DILocalVariable(name: "result", scope: !3215, file: !596, line: 62, type: !40)
!3257 = !DILocation(line: 0, scope: !3215)
!3258 = !DILocation(line: 65, column: 8, scope: !3215)
!3259 = !DILocation(line: 66, column: 10, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3215, file: !596, line: 66, column: 7)
!3261 = !DILocation(line: 66, column: 7, scope: !3215)
!3262 = !DILocation(line: 67, column: 12, scope: !3260)
!3263 = !DILocation(line: 67, column: 5, scope: !3260)
!3264 = !DILocation(line: 72, column: 9, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3215, file: !596, line: 72, column: 7)
!3266 = !DILocation(line: 72, column: 23, scope: !3265)
!3267 = !DILocation(line: 72, column: 33, scope: !3265)
!3268 = !DILocation(line: 72, column: 26, scope: !3265)
!3269 = !DILocation(line: 72, column: 59, scope: !3265)
!3270 = !DILocation(line: 73, column: 7, scope: !3265)
!3271 = !DILocation(line: 73, column: 10, scope: !3265)
!3272 = !DILocation(line: 72, column: 7, scope: !3215)
!3273 = !DILocation(line: 100, column: 12, scope: !3215)
!3274 = !DILocation(line: 105, column: 7, scope: !3215)
!3275 = !DILocation(line: 74, column: 19, scope: !3265)
!3276 = !DILocation(line: 105, column: 19, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3215, file: !596, line: 105, column: 7)
!3278 = !DILocation(line: 107, column: 13, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3277, file: !596, line: 106, column: 5)
!3280 = !DILocation(line: 109, column: 5, scope: !3279)
!3281 = !DILocation(line: 112, column: 1, scope: !3215)
!3282 = !DISubprogram(name: "fileno", scope: !687, file: !687, line: 785, type: !3283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!40, !3236}
!3285 = !DISubprogram(name: "fclose", scope: !687, file: !687, line: 213, type: !3283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3286 = !DISubprogram(name: "lseek", scope: !891, file: !891, line: 334, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!715, !40, !715, !40}
!3289 = distinct !DISubprogram(name: "rpl_fflush", scope: !598, file: !598, line: 129, type: !3290, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3326)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!40, !3292}
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2471, line: 7, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !692, line: 49, size: 1728, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3294, file: !692, line: 51, baseType: !40, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3294, file: !692, line: 54, baseType: !27, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3294, file: !692, line: 55, baseType: !27, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3294, file: !692, line: 56, baseType: !27, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3294, file: !692, line: 57, baseType: !27, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3294, file: !692, line: 58, baseType: !27, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3294, file: !692, line: 59, baseType: !27, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3294, file: !692, line: 60, baseType: !27, size: 64, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3294, file: !692, line: 61, baseType: !27, size: 64, offset: 512)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3294, file: !692, line: 64, baseType: !27, size: 64, offset: 576)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3294, file: !692, line: 65, baseType: !27, size: 64, offset: 640)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3294, file: !692, line: 66, baseType: !27, size: 64, offset: 704)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3294, file: !692, line: 68, baseType: !707, size: 64, offset: 768)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3294, file: !692, line: 70, baseType: !3310, size: 64, offset: 832)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3294, file: !692, line: 72, baseType: !40, size: 32, offset: 896)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3294, file: !692, line: 73, baseType: !40, size: 32, offset: 928)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3294, file: !692, line: 74, baseType: !713, size: 64, offset: 960)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3294, file: !692, line: 77, baseType: !98, size: 16, offset: 1024)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3294, file: !692, line: 78, baseType: !718, size: 8, offset: 1040)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3294, file: !692, line: 79, baseType: !720, size: 8, offset: 1048)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3294, file: !692, line: 81, baseType: !724, size: 64, offset: 1088)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3294, file: !692, line: 89, baseType: !727, size: 64, offset: 1152)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3294, file: !692, line: 91, baseType: !729, size: 64, offset: 1216)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3294, file: !692, line: 92, baseType: !732, size: 64, offset: 1280)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3294, file: !692, line: 93, baseType: !3310, size: 64, offset: 1344)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3294, file: !692, line: 94, baseType: !29, size: 64, offset: 1408)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3294, file: !692, line: 95, baseType: !99, size: 64, offset: 1472)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3294, file: !692, line: 96, baseType: !40, size: 32, offset: 1536)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3294, file: !692, line: 98, baseType: !739, size: 160, offset: 1568)
!3326 = !{!3327}
!3327 = !DILocalVariable(name: "stream", arg: 1, scope: !3289, file: !598, line: 129, type: !3292)
!3328 = !DILocation(line: 0, scope: !3289)
!3329 = !DILocation(line: 150, column: 14, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3289, file: !598, line: 150, column: 7)
!3331 = !DILocation(line: 150, column: 22, scope: !3330)
!3332 = !DILocation(line: 150, column: 27, scope: !3330)
!3333 = !DILocation(line: 150, column: 7, scope: !3289)
!3334 = !DILocation(line: 151, column: 12, scope: !3330)
!3335 = !DILocation(line: 151, column: 5, scope: !3330)
!3336 = !DILocalVariable(name: "fp", arg: 1, scope: !3337, file: !598, line: 41, type: !3292)
!3337 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !598, file: !598, line: 41, type: !3338, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{null, !3292}
!3340 = !{!3336}
!3341 = !DILocation(line: 0, scope: !3337, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 156, column: 3, scope: !3289)
!3343 = !DILocation(line: 43, column: 11, scope: !3344, inlinedAt: !3342)
!3344 = distinct !DILexicalBlock(scope: !3337, file: !598, line: 43, column: 7)
!3345 = !DILocation(line: 43, column: 18, scope: !3344, inlinedAt: !3342)
!3346 = !DILocation(line: 43, column: 7, scope: !3337, inlinedAt: !3342)
!3347 = !DILocation(line: 45, column: 5, scope: !3344, inlinedAt: !3342)
!3348 = !DILocation(line: 158, column: 10, scope: !3289)
!3349 = !DILocation(line: 158, column: 3, scope: !3289)
!3350 = !DILocation(line: 235, column: 1, scope: !3289)
!3351 = !DISubprogram(name: "fflush", scope: !687, file: !687, line: 218, type: !3352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!40, !3310}
!3354 = distinct !DISubprogram(name: "rpl_fseeko", scope: !600, file: !600, line: 28, type: !3355, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !599, retainedNodes: !3392)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!40, !3357, !3391, !40}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2471, line: 7, baseType: !3359)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !692, line: 49, size: 1728, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3359, file: !692, line: 51, baseType: !40, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3359, file: !692, line: 54, baseType: !27, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3359, file: !692, line: 55, baseType: !27, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3359, file: !692, line: 56, baseType: !27, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3359, file: !692, line: 57, baseType: !27, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3359, file: !692, line: 58, baseType: !27, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3359, file: !692, line: 59, baseType: !27, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3359, file: !692, line: 60, baseType: !27, size: 64, offset: 448)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3359, file: !692, line: 61, baseType: !27, size: 64, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3359, file: !692, line: 64, baseType: !27, size: 64, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3359, file: !692, line: 65, baseType: !27, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3359, file: !692, line: 66, baseType: !27, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3359, file: !692, line: 68, baseType: !707, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3359, file: !692, line: 70, baseType: !3375, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3359, file: !692, line: 72, baseType: !40, size: 32, offset: 896)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3359, file: !692, line: 73, baseType: !40, size: 32, offset: 928)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3359, file: !692, line: 74, baseType: !713, size: 64, offset: 960)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3359, file: !692, line: 77, baseType: !98, size: 16, offset: 1024)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3359, file: !692, line: 78, baseType: !718, size: 8, offset: 1040)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3359, file: !692, line: 79, baseType: !720, size: 8, offset: 1048)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3359, file: !692, line: 81, baseType: !724, size: 64, offset: 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3359, file: !692, line: 89, baseType: !727, size: 64, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3359, file: !692, line: 91, baseType: !729, size: 64, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3359, file: !692, line: 92, baseType: !732, size: 64, offset: 1280)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3359, file: !692, line: 93, baseType: !3375, size: 64, offset: 1344)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3359, file: !692, line: 94, baseType: !29, size: 64, offset: 1408)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3359, file: !692, line: 95, baseType: !99, size: 64, offset: 1472)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3359, file: !692, line: 96, baseType: !40, size: 32, offset: 1536)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3359, file: !692, line: 98, baseType: !739, size: 160, offset: 1568)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !687, line: 63, baseType: !713)
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "fp", arg: 1, scope: !3354, file: !600, line: 28, type: !3357)
!3394 = !DILocalVariable(name: "offset", arg: 2, scope: !3354, file: !600, line: 28, type: !3391)
!3395 = !DILocalVariable(name: "whence", arg: 3, scope: !3354, file: !600, line: 28, type: !40)
!3396 = !DILocalVariable(name: "pos", scope: !3397, file: !600, line: 117, type: !3391)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !600, line: 113, column: 5)
!3398 = distinct !DILexicalBlock(scope: !3354, file: !600, line: 52, column: 7)
!3399 = !DILocation(line: 0, scope: !3354)
!3400 = !DILocation(line: 52, column: 11, scope: !3398)
!3401 = !{!3084, !619, i64 16}
!3402 = !DILocation(line: 52, column: 31, scope: !3398)
!3403 = !{!3084, !619, i64 8}
!3404 = !DILocation(line: 52, column: 24, scope: !3398)
!3405 = !DILocation(line: 53, column: 7, scope: !3398)
!3406 = !DILocation(line: 53, column: 14, scope: !3398)
!3407 = !{!3084, !619, i64 40}
!3408 = !DILocation(line: 53, column: 35, scope: !3398)
!3409 = !{!3084, !619, i64 32}
!3410 = !DILocation(line: 53, column: 28, scope: !3398)
!3411 = !DILocation(line: 54, column: 7, scope: !3398)
!3412 = !DILocation(line: 54, column: 14, scope: !3398)
!3413 = !{!3084, !619, i64 72}
!3414 = !DILocation(line: 54, column: 28, scope: !3398)
!3415 = !DILocation(line: 52, column: 7, scope: !3354)
!3416 = !DILocation(line: 117, column: 26, scope: !3397)
!3417 = !DILocation(line: 117, column: 19, scope: !3397)
!3418 = !DILocation(line: 0, scope: !3397)
!3419 = !DILocation(line: 118, column: 15, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3397, file: !600, line: 118, column: 11)
!3421 = !DILocation(line: 118, column: 11, scope: !3397)
!3422 = !DILocation(line: 129, column: 11, scope: !3397)
!3423 = !DILocation(line: 129, column: 18, scope: !3397)
!3424 = !DILocation(line: 130, column: 11, scope: !3397)
!3425 = !DILocation(line: 130, column: 19, scope: !3397)
!3426 = !{!3084, !1913, i64 144}
!3427 = !DILocation(line: 161, column: 7, scope: !3397)
!3428 = !DILocation(line: 163, column: 10, scope: !3354)
!3429 = !DILocation(line: 163, column: 3, scope: !3354)
!3430 = !DILocation(line: 164, column: 1, scope: !3354)
!3431 = !DISubprogram(name: "fseeko", scope: !687, file: !687, line: 712, type: !3432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!40, !3375, !715, !40}
