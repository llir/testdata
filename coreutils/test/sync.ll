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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !165
@.str.38 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !170
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !213
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.44 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !216
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !222
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !263
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !360
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !366
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !368
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !375
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !382
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !370
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !384
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !390
@.str.1.111 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !398
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1079 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1084, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i32 %0, metadata !1083, metadata !DIExpression()), !dbg !1105
  %3 = icmp eq i32 %0, 0, !dbg !1106
  br i1 %3, label %9, label %4, !dbg !1107

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1108, !tbaa !1110
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1108
  %7 = load i8*, i8** @program_name, align 8, !dbg !1108, !tbaa !1110
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #19, !dbg !1108
  br label %64, !dbg !1108

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #19, !dbg !1114
  %11 = load i8*, i8** @program_name, align 8, !dbg !1114, !tbaa !1110
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #19, !dbg !1114
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1115
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1115, !tbaa !1110
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1115
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1116
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1116, !tbaa !1110
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1116
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1117
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1117, !tbaa !1110
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1117
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1118
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1118, !tbaa !1110
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1118
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #19, !dbg !1119
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1119, !tbaa !1110
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1119
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), metadata !1088, metadata !DIExpression()) #19, !dbg !1120
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1121
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #19, !dbg !1121
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #19, !dbg !1101
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), metadata !1089, metadata !DIExpression()) #19, !dbg !1120
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1090, metadata !DIExpression()) #19, !dbg !1120
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1122
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1090, metadata !DIExpression()) #19, !dbg !1120
  br label %30, !dbg !1123

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1090, metadata !DIExpression()) #19, !dbg !1120
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #22, !dbg !1124
  %34 = icmp eq i32 %33, 0, !dbg !1124
  br i1 %34, label %40, label %35, !dbg !1123

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !1090, metadata !DIExpression()) #19, !dbg !1120
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !1126
  %38 = load i8*, i8** %37, align 8, !dbg !1126, !tbaa !1127
  %39 = icmp eq i8* %38, null, !dbg !1129
  br i1 %39, label %40, label %30, !dbg !1130, !llvm.loop !1131

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1090, metadata !DIExpression()) #19, !dbg !1120
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1090, metadata !DIExpression()) #19, !dbg !1120
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !1132
  %43 = load i8*, i8** %42, align 8, !dbg !1132, !tbaa !1134
  %44 = icmp eq i8* %43, null, !dbg !1135
  %45 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !1136
  call void @llvm.dbg.value(metadata i8* %45, metadata !1089, metadata !DIExpression()) #19, !dbg !1120
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #19, !dbg !1137
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #19, !dbg !1137
  %48 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1138
  call void @llvm.dbg.value(metadata i8* %48, metadata !1097, metadata !DIExpression()) #19, !dbg !1120
  %49 = icmp eq i8* %48, null, !dbg !1139
  br i1 %49, label %57, label %50, !dbg !1141

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #22, !dbg !1142
  %52 = icmp eq i32 %51, 0, !dbg !1142
  br i1 %52, label %57, label %53, !dbg !1143

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #19, !dbg !1144
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1144, !tbaa !1110
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #19, !dbg !1144
  br label %57, !dbg !1146

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #19, !dbg !1147
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !1147
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #19, !dbg !1148
  %61 = icmp eq i8* %45, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), !dbg !1148
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1148
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #19, !dbg !1148
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #19, !dbg !1149
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #23, !dbg !1150
  unreachable, !dbg !1150
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !27 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !37 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !102 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1151 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1156, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8** %1, metadata !1157, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 0, metadata !1160, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 0, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 1, metadata !1163, metadata !DIExpression()), !dbg !1164
  %3 = load i8*, i8** %1, align 8, !dbg !1165, !tbaa !1110
  tail call void @set_program_name(i8* %3) #19, !dbg !1166
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !1167
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !1168
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !1169
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1170
  br label %8, !dbg !1171

8:                                                ; preds = %11, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %11 ]
  %10 = phi i8 [ 0, %2 ], [ %12, %11 ]
  br label %11, !dbg !1171

11:                                               ; preds = %11, %8
  %12 = phi i8 [ %10, %8 ], [ 1, %11 ], !dbg !1164
  call void @llvm.dbg.value(metadata i8 %12, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %9, metadata !1160, metadata !DIExpression()), !dbg !1164
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #19, !dbg !1172
  call void @llvm.dbg.value(metadata i32 %13, metadata !1158, metadata !DIExpression()), !dbg !1164
  switch i32 %13, label %18 [
    i32 -1, label %19
    i32 100, label %8
    i32 102, label %11
    i32 -130, label %14
    i32 -131, label %15
  ], !dbg !1171, !llvm.loop !1173

14:                                               ; preds = %11
  tail call void @usage(i32 0) #24, !dbg !1175
  unreachable, !dbg !1175

15:                                               ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1178, !tbaa !1110
  %17 = load i8*, i8** @Version, align 8, !dbg !1178, !tbaa !1110
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* null) #19, !dbg !1178
  tail call void @exit(i32 0) #23, !dbg !1178
  unreachable, !dbg !1178

18:                                               ; preds = %11
  tail call void @usage(i32 1) #24, !dbg !1179
  unreachable, !dbg !1179

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %12, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %12, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %9, metadata !1160, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %12, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %9, metadata !1160, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %12, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %9, metadata !1160, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %12, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %9, metadata !1160, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %12, metadata !1161, metadata !DIExpression()), !dbg !1164
  %20 = load i32, i32* @optind, align 4, !dbg !1180, !tbaa !1181
  %21 = icmp slt i32 %20, %0, !dbg !1183
  call void @llvm.dbg.value(metadata i1 %21, metadata !1159, metadata !DIExpression()), !dbg !1164
  %22 = icmp eq i8 %12, 0, !dbg !1184
  %23 = and i8 %9, %12, !dbg !1186
  %24 = icmp eq i8 %23, 0, !dbg !1186
  br i1 %24, label %27, label %25, !dbg !1186

25:                                               ; preds = %19
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 5) #19, !dbg !1187
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #19, !dbg !1187
  unreachable, !dbg !1187

27:                                               ; preds = %19
  %28 = icmp eq i8 %9, 0, !dbg !1189
  %29 = or i1 %28, %21, !dbg !1190
  br i1 %29, label %32, label %30, !dbg !1190

30:                                               ; preds = %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 5) #19, !dbg !1192
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %31) #19, !dbg !1192
  unreachable, !dbg !1192

32:                                               ; preds = %27
  %33 = select i1 %22, i8 %9, i8 2, !dbg !1193
  %34 = zext i8 %33 to i32, !dbg !1193
  call void @llvm.dbg.value(metadata i32 undef, metadata !1162, metadata !DIExpression()), !dbg !1164
  br i1 %21, label %36, label %35, !dbg !1195

35:                                               ; preds = %32
  tail call void @sync() #19, !dbg !1196
  br label %98, !dbg !1196

36:                                               ; preds = %32, %88
  %37 = phi i32 [ %93, %88 ], [ %20, %32 ]
  %38 = phi i8 [ %91, %88 ], [ 1, %32 ]
  call void @llvm.dbg.value(metadata i8 %38, metadata !1163, metadata !DIExpression()), !dbg !1164
  %39 = sext i32 %37 to i64, !dbg !1198
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39, !dbg !1198
  %41 = load i8*, i8** %40, align 8, !dbg !1198, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 undef, metadata !1202, metadata !DIExpression()) #19, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %41, metadata !1207, metadata !DIExpression()) #19, !dbg !1218
  call void @llvm.dbg.value(metadata i8 1, metadata !1208, metadata !DIExpression()) #19, !dbg !1218
  call void @llvm.dbg.value(metadata i32 2048, metadata !1209, metadata !DIExpression()) #19, !dbg !1218
  %42 = tail call i32 (i8*, i32, ...) @open(i8* %41, i32 2048) #19, !dbg !1220
  call void @llvm.dbg.value(metadata i32 %42, metadata !1210, metadata !DIExpression()) #19, !dbg !1218
  %43 = icmp slt i32 %42, 0, !dbg !1221
  br i1 %43, label %44, label %52, !dbg !1222

44:                                               ; preds = %36
  %45 = tail call i32* @__errno_location() #25, !dbg !1223
  %46 = load i32, i32* %45, align 4, !dbg !1223, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %46, metadata !1211, metadata !DIExpression()) #19, !dbg !1224
  %47 = tail call i32 (i8*, i32, ...) @open(i8* %41, i32 2049) #19, !dbg !1225
  call void @llvm.dbg.value(metadata i32 %47, metadata !1210, metadata !DIExpression()) #19, !dbg !1218
  %48 = icmp slt i32 %47, 0, !dbg !1227
  br i1 %48, label %49, label %52, !dbg !1229

49:                                               ; preds = %44
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i32 5) #19, !dbg !1230
  %51 = tail call i8* @quotearg_style(i32 4, i8* %41) #19, !dbg !1232
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %46, i8* %50, i8* %51) #19, !dbg !1233
  br label %88

52:                                               ; preds = %44, %36
  %53 = phi i32 [ %42, %36 ], [ %47, %44 ], !dbg !1218
  call void @llvm.dbg.value(metadata i32 %53, metadata !1210, metadata !DIExpression()) #19, !dbg !1218
  %54 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %53, i32 3) #19, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %54, metadata !1214, metadata !DIExpression()) #19, !dbg !1218
  %55 = icmp eq i32 %54, -1, !dbg !1235
  br i1 %55, label %70, label %56, !dbg !1237

56:                                               ; preds = %52
  %57 = and i32 %54, -2049, !dbg !1238
  %58 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %53, i32 4, i32 %57) #19, !dbg !1239
  %59 = icmp slt i32 %58, 0, !dbg !1240
  br i1 %59, label %70, label %60, !dbg !1241

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8 1, metadata !1208, metadata !DIExpression()) #19, !dbg !1218
  call void @llvm.dbg.value(metadata i32 -1, metadata !1215, metadata !DIExpression()) #19, !dbg !1242
  switch i32 %34, label %70 [
    i32 1, label %61
    i32 0, label %63
    i32 2, label %65
  ], !dbg !1243

61:                                               ; preds = %60
  %62 = tail call i32 @fdatasync(i32 %53) #19, !dbg !1244
  call void @llvm.dbg.value(metadata i32 %62, metadata !1215, metadata !DIExpression()) #19, !dbg !1242
  br label %67, !dbg !1246

63:                                               ; preds = %60
  %64 = tail call i32 @fsync(i32 %53) #19, !dbg !1247
  call void @llvm.dbg.value(metadata i32 %64, metadata !1215, metadata !DIExpression()) #19, !dbg !1242
  br label %67, !dbg !1248

65:                                               ; preds = %60
  %66 = tail call i32 @syncfs(i32 %53) #19, !dbg !1249
  call void @llvm.dbg.value(metadata i32 %66, metadata !1215, metadata !DIExpression()) #19, !dbg !1242
  br label %67, !dbg !1250

67:                                               ; preds = %65, %63, %61
  %68 = phi i32 [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], !dbg !1242
  call void @llvm.dbg.value(metadata i32 %68, metadata !1215, metadata !DIExpression()) #19, !dbg !1242
  %69 = icmp slt i32 %68, 0, !dbg !1251
  br i1 %69, label %70, label %76, !dbg !1253

70:                                               ; preds = %60, %67, %52, %56
  %71 = phi i8* [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %56 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %52 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), %67 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), %60 ]
  %72 = tail call i32* @__errno_location() #25, !dbg !1218
  %73 = load i32, i32* %72, align 4, !dbg !1218, !tbaa !1181
  %74 = tail call i8* @dcgettext(i8* null, i8* %71, i32 5) #19, !dbg !1218
  %75 = tail call i8* @quotearg_style(i32 4, i8* %41) #19, !dbg !1218
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %73, i8* %74, i8* %75) #19, !dbg !1218
  br label %76, !dbg !1254

76:                                               ; preds = %70, %67
  %77 = phi i8 [ 1, %67 ], [ 0, %70 ], !dbg !1218
  call void @llvm.dbg.value(metadata i8 %77, metadata !1208, metadata !DIExpression()) #19, !dbg !1218
  %78 = tail call i32 @close(i32 %53) #19, !dbg !1254
  %79 = icmp slt i32 %78, 0, !dbg !1256
  br i1 %79, label %80, label %85, !dbg !1257

80:                                               ; preds = %76
  %81 = tail call i32* @__errno_location() #25, !dbg !1258
  %82 = load i32, i32* %81, align 4, !dbg !1258, !tbaa !1181
  %83 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i32 5) #19, !dbg !1260
  %84 = tail call i8* @quotearg_style(i32 4, i8* %41) #19, !dbg !1261
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %82, i8* %83, i8* %84) #19, !dbg !1262
  call void @llvm.dbg.value(metadata i8 0, metadata !1208, metadata !DIExpression()) #19, !dbg !1218
  br label %85, !dbg !1263

85:                                               ; preds = %80, %76
  %86 = phi i8 [ 0, %80 ], [ %77, %76 ], !dbg !1218
  call void @llvm.dbg.value(metadata i8 %86, metadata !1208, metadata !DIExpression()) #19, !dbg !1218
  %87 = icmp ne i8 %86, 0, !dbg !1264
  br label %88

88:                                               ; preds = %49, %85
  %89 = phi i1 [ %87, %85 ], [ false, %49 ], !dbg !1218
  %90 = zext i1 %89 to i8, !dbg !1265
  %91 = and i8 %38, %90, !dbg !1266
  call void @llvm.dbg.value(metadata i8 %91, metadata !1163, metadata !DIExpression()), !dbg !1164
  %92 = load i32, i32* @optind, align 4, !dbg !1267, !tbaa !1181
  %93 = add nsw i32 %92, 1, !dbg !1267
  store i32 %93, i32* @optind, align 4, !dbg !1267, !tbaa !1181
  %94 = icmp slt i32 %93, %0, !dbg !1268
  br i1 %94, label %36, label %95, !dbg !1269, !llvm.loop !1270

95:                                               ; preds = %88
  %96 = xor i8 %91, 1, !dbg !1272
  %97 = zext i8 %96 to i32, !dbg !1272
  br label %98, !dbg !1272

98:                                               ; preds = %95, %35
  %99 = phi i32 [ 0, %35 ], [ %97, %95 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1163, metadata !DIExpression()), !dbg !1164
  ret i32 %99, !dbg !1273
}

; Function Attrs: nounwind
declare !dbg !106 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !109 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !112 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !119 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !138 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !142 void @sync() local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !144 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

declare !dbg !155 i32 @fdatasync(i32) local_unnamed_addr #3

declare !dbg !158 i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !159 i32 @syncfs(i32) local_unnamed_addr #2

declare !dbg !160 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1276, metadata !DIExpression()), !dbg !1277
  store i8* %0, i8** @file_name, align 8, !dbg !1278, !tbaa !1110
  ret void, !dbg !1279
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1280 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1284, metadata !DIExpression()), !dbg !1285
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1286, !tbaa !1287
  ret void, !dbg !1289
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1290 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1295, !tbaa !1110
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !1296
  %3 = icmp eq i32 %2, 0, !dbg !1297
  br i1 %3, label %22, label %4, !dbg !1298

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1299, !tbaa !1287, !range !1300
  %6 = icmp eq i8 %5, 0, !dbg !1299
  br i1 %6, label %11, label %7, !dbg !1301

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1302
  %9 = load i32, i32* %8, align 4, !dbg !1302, !tbaa !1181
  %10 = icmp eq i32 %9, 32, !dbg !1303
  br i1 %10, label %22, label %11, !dbg !1304

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #19, !dbg !1305
  call void @llvm.dbg.value(metadata i8* %12, metadata !1292, metadata !DIExpression()), !dbg !1306
  %13 = load i8*, i8** @file_name, align 8, !dbg !1307, !tbaa !1110
  %14 = icmp eq i8* %13, null, !dbg !1307
  %15 = tail call i32* @__errno_location() #25, !dbg !1309
  %16 = load i32, i32* %15, align 4, !dbg !1309, !tbaa !1181
  br i1 %14, label %19, label %17, !dbg !1310

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !1311
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.44, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !1312
  br label %20, !dbg !1312

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.45, i64 0, i64 0), i8* %12) #19, !dbg !1313
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1314, !tbaa !1181
  tail call void @_exit(i32 %21) #23, !dbg !1315
  unreachable, !dbg !1315

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1316, !tbaa !1110
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !1318
  %25 = icmp eq i32 %24, 0, !dbg !1319
  br i1 %25, label %28, label %26, !dbg !1320

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1321, !tbaa !1181
  tail call void @_exit(i32 %27) #23, !dbg !1322
  unreachable, !dbg !1322

28:                                               ; preds = %22
  ret void, !dbg !1323
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1324 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1326, metadata !DIExpression()), !dbg !1329
  %2 = icmp eq i8* %0, null, !dbg !1330
  br i1 %2, label %3, label %6, !dbg !1332

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1333, !tbaa !1110
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1335
  tail call void @abort() #23, !dbg !1336
  unreachable, !dbg !1336

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %7, metadata !1327, metadata !DIExpression()), !dbg !1329
  %8 = icmp eq i8* %7, null, !dbg !1338
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1339
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1339
  call void @llvm.dbg.value(metadata i8* %10, metadata !1328, metadata !DIExpression()), !dbg !1329
  %11 = ptrtoint i8* %10 to i64, !dbg !1340
  %12 = ptrtoint i8* %0 to i64, !dbg !1340
  %13 = sub i64 %11, %12, !dbg !1340
  %14 = icmp sgt i64 %13, 6, !dbg !1342
  br i1 %14, label %15, label %24, !dbg !1343

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1344
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #22, !dbg !1345
  %18 = icmp eq i32 %17, 0, !dbg !1346
  br i1 %18, label %19, label %24, !dbg !1347

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1326, metadata !DIExpression()), !dbg !1329
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #22, !dbg !1348
  %21 = icmp eq i32 %20, 0, !dbg !1351
  br i1 %21, label %22, label %24, !dbg !1352

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %23, metadata !1326, metadata !DIExpression()), !dbg !1329
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1355, !tbaa !1110
  br label %24, !dbg !1356

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1326, metadata !DIExpression()), !dbg !1329
  store i8* %25, i8** @program_name, align 8, !dbg !1357, !tbaa !1110
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1358, !tbaa !1110
  ret void, !dbg !1359
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1360 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1365, metadata !DIExpression()), !dbg !1368
  %2 = tail call i32* @__errno_location() #25, !dbg !1369
  %3 = load i32, i32* %2, align 4, !dbg !1369, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %3, metadata !1366, metadata !DIExpression()), !dbg !1368
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1370
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1370
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1370
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !1371
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1367, metadata !DIExpression()), !dbg !1368
  store i32 %3, i32* %2, align 4, !dbg !1372, !tbaa !1181
  ret %struct.quoting_options* %8, !dbg !1373
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1374 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1378, metadata !DIExpression()), !dbg !1379
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1380
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1380
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1381
  %5 = load i32, i32* %4, align 8, !dbg !1381, !tbaa !1382
  ret i32 %5, !dbg !1384
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1385 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1389, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 %1, metadata !1390, metadata !DIExpression()), !dbg !1391
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1392
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1392
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1393
  store i32 %1, i32* %5, align 8, !dbg !1394, !tbaa !1382
  ret void, !dbg !1395
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1396 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1400, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 %1, metadata !1401, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i32 %2, metadata !1402, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 %1, metadata !1403, metadata !DIExpression()), !dbg !1409
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1410
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1410
  %6 = lshr i8 %1, 5, !dbg !1411
  %7 = zext i8 %6 to i64, !dbg !1411
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1412
  call void @llvm.dbg.value(metadata i32* %8, metadata !1405, metadata !DIExpression()), !dbg !1409
  %9 = and i8 %1, 31, !dbg !1413
  %10 = zext i8 %9 to i32, !dbg !1413
  call void @llvm.dbg.value(metadata i32 %10, metadata !1407, metadata !DIExpression()), !dbg !1409
  %11 = load i32, i32* %8, align 4, !dbg !1414, !tbaa !1181
  %12 = lshr i32 %11, %10, !dbg !1415
  %13 = and i32 %12, 1, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %13, metadata !1408, metadata !DIExpression()), !dbg !1409
  %14 = and i32 %2, 1, !dbg !1417
  %15 = xor i32 %13, %14, !dbg !1418
  %16 = shl i32 %15, %10, !dbg !1419
  %17 = xor i32 %16, %11, !dbg !1420
  store i32 %17, i32* %8, align 4, !dbg !1420, !tbaa !1181
  ret i32 %13, !dbg !1421
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1422 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1426, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %1, metadata !1427, metadata !DIExpression()), !dbg !1429
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1430
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1426, metadata !DIExpression()), !dbg !1429
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1433
  %6 = load i32, i32* %5, align 4, !dbg !1433, !tbaa !1434
  call void @llvm.dbg.value(metadata i32 %6, metadata !1428, metadata !DIExpression()), !dbg !1429
  store i32 %1, i32* %5, align 4, !dbg !1435, !tbaa !1434
  ret i32 %6, !dbg !1436
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1437 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1441, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %1, metadata !1442, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %2, metadata !1443, metadata !DIExpression()), !dbg !1444
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1445
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1441, metadata !DIExpression()), !dbg !1444
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1448
  store i32 10, i32* %6, align 8, !dbg !1449, !tbaa !1382
  %7 = icmp ne i8* %1, null, !dbg !1450
  %8 = icmp ne i8* %2, null, !dbg !1452
  %9 = and i1 %7, %8, !dbg !1453
  br i1 %9, label %11, label %10, !dbg !1453

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !1454
  unreachable, !dbg !1454

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1455
  store i8* %1, i8** %12, align 8, !dbg !1456, !tbaa !1457
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1458
  store i8* %2, i8** %13, align 8, !dbg !1459, !tbaa !1460
  ret void, !dbg !1461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1462 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1466, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i64 %1, metadata !1467, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8* %2, metadata !1468, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i64 %3, metadata !1469, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1470, metadata !DIExpression()), !dbg !1474
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1475
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1471, metadata !DIExpression()), !dbg !1474
  %8 = tail call i32* @__errno_location() #25, !dbg !1476
  %9 = load i32, i32* %8, align 4, !dbg !1476, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %9, metadata !1472, metadata !DIExpression()), !dbg !1474
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1477
  %11 = load i32, i32* %10, align 8, !dbg !1477, !tbaa !1382
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1478
  %13 = load i32, i32* %12, align 4, !dbg !1478, !tbaa !1434
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1479
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1480
  %16 = load i8*, i8** %15, align 8, !dbg !1480, !tbaa !1457
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1481
  %18 = load i8*, i8** %17, align 8, !dbg !1481, !tbaa !1460
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %19, metadata !1473, metadata !DIExpression()), !dbg !1474
  store i32 %9, i32* %8, align 4, !dbg !1483, !tbaa !1181
  ret i64 %19, !dbg !1484
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1485 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1491, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %1, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %2, metadata !1493, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %3, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %4, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %5, metadata !1496, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32* %6, metadata !1497, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %7, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %8, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* null, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, metadata !1504, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1505, metadata !DIExpression()), !dbg !1549
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !1550
  %14 = icmp eq i64 %13, 1, !dbg !1551
  call void @llvm.dbg.value(metadata i1 %14, metadata !1506, metadata !DIExpression()), !dbg !1549
  %15 = lshr i32 %5, 1, !dbg !1552
  %16 = trunc i32 %15 to i8, !dbg !1552
  %17 = and i8 %16, 1, !dbg !1552
  call void @llvm.dbg.value(metadata i8 %17, metadata !1507, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, metadata !1510, metadata !DIExpression()), !dbg !1549
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1553
  %19 = and i32 %5, 4, !dbg !1555
  %20 = icmp eq i32 %19, 0, !dbg !1555
  %21 = and i32 %5, 1, !dbg !1558
  %22 = icmp eq i32 %21, 0, !dbg !1558
  %23 = bitcast i64* %10 to i8*, !dbg !1561
  %24 = bitcast i32* %12 to i8*, !dbg !1562
  %25 = icmp eq i32* %6, null, !dbg !1563
  br label %26, !dbg !1565

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1566
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1567
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1568
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1569
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1549
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1570
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1571
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1572
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %38, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %37, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %36, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %35, metadata !1507, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %34, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %33, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %32, metadata !1504, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %31, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %30, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %29, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %28, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %27, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.label(metadata !1543), !dbg !1573
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
  ], !dbg !1574

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, metadata !1507, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %35, metadata !1507, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 5, metadata !1495, metadata !DIExpression()), !dbg !1549
  br label %92, !dbg !1575

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1507, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 5, metadata !1495, metadata !DIExpression()), !dbg !1549
  %42 = and i8 %35, 1, !dbg !1577
  %43 = icmp eq i8 %42, 0, !dbg !1577
  br i1 %43, label %44, label %92, !dbg !1575

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1579
  br i1 %45, label %92, label %46, !dbg !1582

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1579, !tbaa !1583
  br label %92, !dbg !1579

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %27), !dbg !1584
  call void @llvm.dbg.value(metadata i8* %48, metadata !1498, metadata !DIExpression()), !dbg !1549
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %27), !dbg !1588
  call void @llvm.dbg.value(metadata i8* %49, metadata !1499, metadata !DIExpression()), !dbg !1549
  br label %50, !dbg !1589

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %51, metadata !1498, metadata !DIExpression()), !dbg !1549
  %53 = and i8 %35, 1, !dbg !1590
  %54 = icmp eq i8 %53, 0, !dbg !1590
  br i1 %54, label %55, label %70, !dbg !1592

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, metadata !1501, metadata !DIExpression()), !dbg !1549
  %56 = load i8, i8* %51, align 1, !dbg !1593, !tbaa !1583
  %57 = icmp eq i8 %56, 0, !dbg !1596
  br i1 %57, label %70, label %58, !dbg !1596

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %61, metadata !1501, metadata !DIExpression()), !dbg !1549
  %62 = icmp ult i64 %61, %39, !dbg !1597
  br i1 %62, label %63, label %65, !dbg !1600

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1597
  store i8 %59, i8* %64, align 1, !dbg !1597, !tbaa !1583
  br label %65, !dbg !1597

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %66, metadata !1501, metadata !DIExpression()), !dbg !1549
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1601
  call void @llvm.dbg.value(metadata i8* %67, metadata !1503, metadata !DIExpression()), !dbg !1549
  %68 = load i8, i8* %67, align 1, !dbg !1593, !tbaa !1583
  %69 = icmp eq i8 %68, 0, !dbg !1596
  br i1 %69, label %70, label %58, !dbg !1596, !llvm.loop !1602

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1604
  call void @llvm.dbg.value(metadata i64 %71, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %52, metadata !1503, metadata !DIExpression()), !dbg !1549
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %72, metadata !1504, metadata !DIExpression()), !dbg !1549
  br label %92, !dbg !1606

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1505, metadata !DIExpression()), !dbg !1549
  br label %74, !dbg !1607

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %75, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, metadata !1507, metadata !DIExpression()), !dbg !1549
  br label %76, !dbg !1608

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1569
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %78, metadata !1507, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %77, metadata !1505, metadata !DIExpression()), !dbg !1549
  %79 = and i8 %78, 1, !dbg !1609
  %80 = icmp eq i8 %79, 0, !dbg !1609
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1611
  br label %82, !dbg !1611

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1549
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1552
  call void @llvm.dbg.value(metadata i8 %84, metadata !1507, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %83, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  %85 = and i8 %84, 1, !dbg !1612
  %86 = icmp eq i8 %85, 0, !dbg !1612
  br i1 %86, label %87, label %92, !dbg !1614

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1615
  br i1 %88, label %92, label %89, !dbg !1618

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1615, !tbaa !1583
  br label %92, !dbg !1615

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1507, metadata !DIExpression()), !dbg !1549
  br label %92, !dbg !1619

91:                                               ; preds = %26
  call void @abort() #23, !dbg !1620
  unreachable, !dbg !1620

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1604
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %40 ], !dbg !1549
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1549
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1549
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %100, metadata !1507, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %98, metadata !1504, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %96, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %93, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, metadata !1500, metadata !DIExpression()), !dbg !1549
  %101 = and i8 %99, 1, !dbg !1621
  %102 = icmp ne i8 %101, 0, !dbg !1621
  %103 = icmp ne i32 %93, 2, !dbg !1621
  %104 = and i1 %103, %102, !dbg !1621
  %105 = icmp ne i64 %98, 0, !dbg !1621
  %106 = and i1 %105, %104, !dbg !1621
  %107 = icmp ugt i64 %98, 1, !dbg !1621
  %108 = and i8 %100, 1, !dbg !1623
  %109 = icmp eq i8 %108, 0, !dbg !1623
  %110 = icmp eq i32 %93, 2, !dbg !1626
  %111 = or i1 %103, %109, !dbg !1628
  %112 = icmp ne i8 %108, 0, !dbg !1630
  %113 = and i1 %110, %112, !dbg !1630
  %114 = xor i1 %102, true, !dbg !1631
  %115 = xor i1 %104, true, !dbg !1563
  %116 = and i1 %109, %115, !dbg !1563
  %117 = or i1 %25, %116, !dbg !1563
  %118 = and i8 %99, %100, !dbg !1632
  %119 = and i8 %118, 1, !dbg !1632
  %120 = icmp ne i8 %119, 0, !dbg !1632
  %121 = and i1 %120, %105, !dbg !1632
  br label %122, !dbg !1634

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1635
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1604
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1566
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1570
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1571
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1572
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %126, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %123, metadata !1500, metadata !DIExpression()), !dbg !1549
  %131 = icmp eq i64 %126, -1, !dbg !1636
  br i1 %131, label %132, label %136, !dbg !1637

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1638
  %134 = load i8, i8* %133, align 1, !dbg !1638, !tbaa !1583
  %135 = icmp eq i8 %134, 0, !dbg !1639
  br i1 %135, label %581, label %138, !dbg !1640

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1641
  br i1 %137, label %581, label %138, !dbg !1640

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1516, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 0, metadata !1517, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 0, metadata !1518, metadata !DIExpression()), !dbg !1642
  br i1 %106, label %139, label %154, !dbg !1643

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1644
  %141 = and i1 %107, %131, !dbg !1645
  br i1 %141, label %142, label %144, !dbg !1645

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %143, metadata !1494, metadata !DIExpression()), !dbg !1549
  br label %144, !dbg !1647

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1494, metadata !DIExpression()), !dbg !1549
  %146 = icmp ugt i64 %140, %145, !dbg !1648
  br i1 %146, label %154, label %147, !dbg !1649

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1650
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1651
  %150 = icmp ne i32 %149, 0, !dbg !1652
  %151 = or i1 %150, %109, !dbg !1653
  %152 = xor i1 %150, true, !dbg !1653
  %153 = zext i1 %152 to i8, !dbg !1653
  br i1 %151, label %154, label %639, !dbg !1653

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1642
  call void @llvm.dbg.value(metadata i8 %156, metadata !1516, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i64 %155, metadata !1494, metadata !DIExpression()), !dbg !1549
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1654
  %158 = load i8, i8* %157, align 1, !dbg !1654, !tbaa !1583
  call void @llvm.dbg.value(metadata i8 %158, metadata !1511, metadata !DIExpression()), !dbg !1642
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
    i8 37, label %463
    i8 43, label %463
    i8 44, label %463
    i8 45, label %463
    i8 46, label %463
    i8 47, label %463
    i8 48, label %463
    i8 49, label %463
    i8 50, label %463
    i8 51, label %463
    i8 52, label %463
    i8 53, label %463
    i8 54, label %463
    i8 55, label %463
    i8 56, label %463
    i8 57, label %463
    i8 58, label %463
    i8 65, label %463
    i8 66, label %463
    i8 67, label %463
    i8 68, label %463
    i8 69, label %463
    i8 70, label %463
    i8 71, label %463
    i8 72, label %463
    i8 73, label %463
    i8 74, label %463
    i8 75, label %463
    i8 76, label %463
    i8 77, label %463
    i8 78, label %463
    i8 79, label %463
    i8 80, label %463
    i8 81, label %463
    i8 82, label %463
    i8 83, label %463
    i8 84, label %463
    i8 85, label %463
    i8 86, label %463
    i8 87, label %463
    i8 88, label %463
    i8 89, label %463
    i8 90, label %463
    i8 93, label %463
    i8 95, label %463
    i8 97, label %463
    i8 98, label %463
    i8 99, label %463
    i8 100, label %463
    i8 101, label %463
    i8 102, label %463
    i8 103, label %463
    i8 104, label %463
    i8 105, label %463
    i8 106, label %463
    i8 107, label %463
    i8 108, label %463
    i8 109, label %463
    i8 110, label %463
    i8 111, label %463
    i8 112, label %463
    i8 113, label %463
    i8 114, label %463
    i8 115, label %463
    i8 116, label %463
    i8 117, label %463
    i8 118, label %463
    i8 119, label %463
    i8 120, label %463
    i8 121, label %463
    i8 122, label %463
  ], !dbg !1655

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1656

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1657

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1517, metadata !DIExpression()), !dbg !1642
  %162 = and i8 %127, 1, !dbg !1660
  %163 = icmp eq i8 %162, 0, !dbg !1660
  %164 = and i1 %110, %163, !dbg !1660
  br i1 %164, label %165, label %181, !dbg !1660

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1662
  br i1 %166, label %167, label %169, !dbg !1666

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1662
  store i8 39, i8* %168, align 1, !dbg !1662, !tbaa !1583
  br label %169, !dbg !1662

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %170, metadata !1501, metadata !DIExpression()), !dbg !1549
  %171 = icmp ult i64 %170, %130, !dbg !1667
  br i1 %171, label %172, label %174, !dbg !1670

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1667
  store i8 36, i8* %173, align 1, !dbg !1667, !tbaa !1583
  br label %174, !dbg !1667

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %175, metadata !1501, metadata !DIExpression()), !dbg !1549
  %176 = icmp ult i64 %175, %130, !dbg !1671
  br i1 %176, label %177, label %179, !dbg !1674

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1671
  store i8 39, i8* %178, align 1, !dbg !1671, !tbaa !1583
  br label %179, !dbg !1671

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %180, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, metadata !1508, metadata !DIExpression()), !dbg !1549
  br label %181, !dbg !1675

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1549
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %183, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %182, metadata !1501, metadata !DIExpression()), !dbg !1549
  %184 = icmp ult i64 %182, %130, !dbg !1676
  br i1 %184, label %185, label %187, !dbg !1679

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1676
  store i8 92, i8* %186, align 1, !dbg !1676, !tbaa !1583
  br label %187, !dbg !1676

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %188, metadata !1501, metadata !DIExpression()), !dbg !1549
  br i1 %103, label %189, label %463, !dbg !1680

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1682
  %191 = icmp ult i64 %190, %155, !dbg !1683
  br i1 %191, label %192, label %463, !dbg !1684

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1685
  %194 = load i8, i8* %193, align 1, !dbg !1685, !tbaa !1583
  %195 = add i8 %194, -48, !dbg !1686
  %196 = icmp ult i8 %195, 10, !dbg !1686
  br i1 %196, label %197, label %463, !dbg !1686

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1687
  br i1 %198, label %199, label %201, !dbg !1691

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1687
  store i8 48, i8* %200, align 1, !dbg !1687, !tbaa !1583
  br label %201, !dbg !1687

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %202, metadata !1501, metadata !DIExpression()), !dbg !1549
  %203 = icmp ult i64 %202, %130, !dbg !1692
  br i1 %203, label %204, label %206, !dbg !1695

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1692
  store i8 48, i8* %205, align 1, !dbg !1692, !tbaa !1583
  br label %206, !dbg !1692

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %207, metadata !1501, metadata !DIExpression()), !dbg !1549
  br label %463, !dbg !1696

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1697

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1698

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1699

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1700

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1701
  %214 = icmp ult i64 %213, %155, !dbg !1702
  br i1 %214, label %215, label %463, !dbg !1703

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1704
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1705
  %218 = load i8, i8* %217, align 1, !dbg !1705, !tbaa !1583
  %219 = icmp eq i8 %218, 63, !dbg !1706
  br i1 %219, label %220, label %463, !dbg !1707

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1708
  %222 = load i8, i8* %221, align 1, !dbg !1708, !tbaa !1583
  %223 = sext i8 %222 to i32, !dbg !1708
  switch i32 %223, label %463 [
    i32 33, label %224
    i32 39, label %224
    i32 40, label %224
    i32 41, label %224
    i32 45, label %224
    i32 47, label %224
    i32 60, label %224
    i32 61, label %224
    i32 62, label %224
  ], !dbg !1709

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1710

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1511, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i64 %213, metadata !1500, metadata !DIExpression()), !dbg !1549
  %226 = icmp ult i64 %124, %130, !dbg !1712
  br i1 %226, label %227, label %229, !dbg !1715

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1712
  store i8 63, i8* %228, align 1, !dbg !1712, !tbaa !1583
  br label %229, !dbg !1712

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %230, metadata !1501, metadata !DIExpression()), !dbg !1549
  %231 = icmp ult i64 %230, %130, !dbg !1716
  br i1 %231, label %232, label %234, !dbg !1719

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1716
  store i8 34, i8* %233, align 1, !dbg !1716, !tbaa !1583
  br label %234, !dbg !1716

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %235, metadata !1501, metadata !DIExpression()), !dbg !1549
  %236 = icmp ult i64 %235, %130, !dbg !1720
  br i1 %236, label %237, label %239, !dbg !1723

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1720
  store i8 34, i8* %238, align 1, !dbg !1720, !tbaa !1583
  br label %239, !dbg !1720

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %240, metadata !1501, metadata !DIExpression()), !dbg !1549
  %241 = icmp ult i64 %240, %130, !dbg !1724
  br i1 %241, label %242, label %244, !dbg !1727

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1724
  store i8 63, i8* %243, align 1, !dbg !1724, !tbaa !1583
  br label %244, !dbg !1724

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %245, metadata !1501, metadata !DIExpression()), !dbg !1549
  br label %463, !dbg !1728

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1515, metadata !DIExpression()), !dbg !1642
  br label %256, !dbg !1729

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1515, metadata !DIExpression()), !dbg !1642
  br label %256, !dbg !1730

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1515, metadata !DIExpression()), !dbg !1642
  br label %254, !dbg !1731

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1515, metadata !DIExpression()), !dbg !1642
  br label %254, !dbg !1732

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1515, metadata !DIExpression()), !dbg !1642
  br label %256, !dbg !1733

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1515, metadata !DIExpression()), !dbg !1642
  br i1 %110, label %252, label %253, !dbg !1734

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1735

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1738

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1739
  call void @llvm.dbg.value(metadata i8 %255, metadata !1515, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.label(metadata !1544), !dbg !1740
  br i1 %111, label %256, label %625, !dbg !1741

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1739
  call void @llvm.dbg.value(metadata i8 %257, metadata !1515, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.label(metadata !1545), !dbg !1743
  br i1 %102, label %488, label %463, !dbg !1744

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1745

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1746, !tbaa !1583
  %261 = icmp eq i8 %260, 0, !dbg !1747
  br i1 %261, label %262, label %463, !dbg !1748

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1749
  br i1 %263, label %264, label %463, !dbg !1751

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1518, metadata !DIExpression()), !dbg !1642
  br label %265, !dbg !1752

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1642
  call void @llvm.dbg.value(metadata i8 %266, metadata !1518, metadata !DIExpression()), !dbg !1642
  br i1 %111, label %463, label %625, !dbg !1753

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, metadata !1518, metadata !DIExpression()), !dbg !1642
  br i1 %110, label %268, label %463, !dbg !1754

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1755

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1757
  %271 = icmp ne i64 %125, 0, !dbg !1759
  %272 = or i1 %271, %270, !dbg !1760
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1760
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %274, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %273, metadata !1502, metadata !DIExpression()), !dbg !1549
  %275 = icmp ult i64 %124, %274, !dbg !1761
  br i1 %275, label %276, label %278, !dbg !1764

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1761
  store i8 39, i8* %277, align 1, !dbg !1761, !tbaa !1583
  br label %278, !dbg !1761

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %279, metadata !1501, metadata !DIExpression()), !dbg !1549
  %280 = icmp ult i64 %279, %274, !dbg !1765
  br i1 %280, label %281, label %283, !dbg !1768

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1765
  store i8 92, i8* %282, align 1, !dbg !1765, !tbaa !1583
  br label %283, !dbg !1765

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %284, metadata !1501, metadata !DIExpression()), !dbg !1549
  %285 = icmp ult i64 %284, %274, !dbg !1769
  br i1 %285, label %286, label %288, !dbg !1772

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1769
  store i8 39, i8* %287, align 1, !dbg !1769, !tbaa !1583
  br label %288, !dbg !1769

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %289, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1508, metadata !DIExpression()), !dbg !1549
  br label %463, !dbg !1773

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1774

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1519, metadata !DIExpression()), !dbg !1775
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !1776
  %293 = load i16*, i16** %292, align 8, !dbg !1776, !tbaa !1110
  %294 = zext i8 %158 to i64, !dbg !1776
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1776
  %296 = load i16, i16* %295, align 2, !dbg !1776, !tbaa !1778
  %297 = lshr i16 %296, 14, !dbg !1780
  %298 = trunc i16 %297 to i8, !dbg !1780
  %299 = and i8 %298, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %299, metadata !1522, metadata !DIExpression()), !dbg !1775
  br label %355, !dbg !1781

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1782
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1523, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8* %23, metadata !1784, metadata !DIExpression()) #19, !dbg !1792
  call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()) #19, !dbg !1792
  call void @llvm.dbg.value(metadata i64 8, metadata !1791, metadata !DIExpression()) #19, !dbg !1792
  store i64 0, i64* %10, align 8, !dbg !1794
  call void @llvm.dbg.value(metadata i64 0, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 1, metadata !1522, metadata !DIExpression()), !dbg !1775
  %301 = icmp eq i64 %155, -1, !dbg !1795
  br i1 %301, label %302, label %304, !dbg !1797

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %303, metadata !1494, metadata !DIExpression()), !dbg !1549
  br label %304, !dbg !1799

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1642
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  br label %306, !dbg !1800

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1801
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1802
  call void @llvm.dbg.value(metadata i8 %308, metadata !1522, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %307, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1803
  %309 = add i64 %307, %123, !dbg !1804
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1805
  %311 = sub i64 %305, %309, !dbg !1806
  call void @llvm.dbg.value(metadata i32* %12, metadata !1529, metadata !DIExpression(DW_OP_deref)), !dbg !1562
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %312, metadata !1532, metadata !DIExpression()), !dbg !1562
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1808

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %307, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %307, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %307, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %307, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %307, metadata !1519, metadata !DIExpression()), !dbg !1775
  %314 = icmp ugt i64 %305, %309, !dbg !1809
  br i1 %314, label %315, label %340, !dbg !1811

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1812
  br label %317, !dbg !1812

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1519, metadata !DIExpression()), !dbg !1775
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1813
  %321 = load i8, i8* %320, align 1, !dbg !1813, !tbaa !1583
  %322 = icmp eq i8 %321, 0, !dbg !1811
  br i1 %322, label %340, label %323, !dbg !1812

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %324, metadata !1519, metadata !DIExpression()), !dbg !1775
  %325 = add i64 %324, %123, !dbg !1815
  %326 = icmp ult i64 %325, %305, !dbg !1809
  br i1 %326, label %317, label %340, !dbg !1811, !llvm.loop !1816

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1817
  %329 = and i1 %113, %328, !dbg !1820
  call void @llvm.dbg.value(metadata i64 1, metadata !1533, metadata !DIExpression()), !dbg !1821
  br i1 %329, label %330, label %343, !dbg !1820

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1533, metadata !DIExpression()), !dbg !1821
  %332 = add i64 %331, %309, !dbg !1822
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1823
  %334 = load i8, i8* %333, align 1, !dbg !1823, !tbaa !1583
  %335 = sext i8 %334 to i32, !dbg !1823
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1824

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %337, metadata !1533, metadata !DIExpression()), !dbg !1821
  %338 = icmp eq i64 %337, %312, !dbg !1817
  br i1 %338, label %343, label %330, !dbg !1826, !llvm.loop !1827

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %308, metadata !1522, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %307, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %308, metadata !1522, metadata !DIExpression()), !dbg !1775
  br label %340, !dbg !1829

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1829
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1830, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %344, metadata !1529, metadata !DIExpression()), !dbg !1562
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !1832
  %346 = icmp eq i32 %345, 0, !dbg !1832
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1833
  call void @llvm.dbg.value(metadata i8 %347, metadata !1522, metadata !DIExpression()), !dbg !1775
  %348 = add i64 %312, %307, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %348, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %347, metadata !1522, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %348, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1829
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !1835
  %350 = icmp eq i32 %349, 0, !dbg !1836
  br i1 %350, label %306, label %351, !dbg !1837, !llvm.loop !1838

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1840
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1495, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %99, metadata !1505, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %305, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1829
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1840
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1642
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1841
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1841
  call void @llvm.dbg.value(metadata i8 %358, metadata !1522, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %357, metadata !1519, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %356, metadata !1494, metadata !DIExpression()), !dbg !1549
  %359 = and i8 %358, 1, !dbg !1842
  %360 = icmp ne i8 %359, 0, !dbg !1842
  call void @llvm.dbg.value(metadata i8 %359, metadata !1518, metadata !DIExpression()), !dbg !1642
  %361 = icmp ult i64 %357, 2, !dbg !1843
  %362 = or i1 %360, %114, !dbg !1844
  %363 = and i1 %361, %362, !dbg !1845
  br i1 %363, label %463, label %364, !dbg !1845

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %365, metadata !1540, metadata !DIExpression()), !dbg !1847
  br label %366, !dbg !1848

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1635
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1549
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1570
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1642
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1642
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1849
  call void @llvm.dbg.value(metadata i8 %372, metadata !1517, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %371, metadata !1516, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %370, metadata !1511, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %369, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %368, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %367, metadata !1500, metadata !DIExpression()), !dbg !1549
  br i1 %362, label %419, label %373, !dbg !1850

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1855

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1517, metadata !DIExpression()), !dbg !1642
  %375 = and i8 %369, 1, !dbg !1858
  %376 = icmp eq i8 %375, 0, !dbg !1858
  %377 = and i1 %110, %376, !dbg !1858
  br i1 %377, label %378, label %394, !dbg !1858

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1860
  br i1 %379, label %380, label %382, !dbg !1864

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1860
  store i8 39, i8* %381, align 1, !dbg !1860, !tbaa !1583
  br label %382, !dbg !1860

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %383, metadata !1501, metadata !DIExpression()), !dbg !1549
  %384 = icmp ult i64 %383, %130, !dbg !1865
  br i1 %384, label %385, label %387, !dbg !1868

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1865
  store i8 36, i8* %386, align 1, !dbg !1865, !tbaa !1583
  br label %387, !dbg !1865

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %388, metadata !1501, metadata !DIExpression()), !dbg !1549
  %389 = icmp ult i64 %388, %130, !dbg !1869
  br i1 %389, label %390, label %392, !dbg !1872

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1869
  store i8 39, i8* %391, align 1, !dbg !1869, !tbaa !1583
  br label %392, !dbg !1869

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %393, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, metadata !1508, metadata !DIExpression()), !dbg !1549
  br label %394, !dbg !1873

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1549
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %396, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %395, metadata !1501, metadata !DIExpression()), !dbg !1549
  %397 = icmp ult i64 %395, %130, !dbg !1874
  br i1 %397, label %398, label %400, !dbg !1877

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1874
  store i8 92, i8* %399, align 1, !dbg !1874, !tbaa !1583
  br label %400, !dbg !1874

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %401, metadata !1501, metadata !DIExpression()), !dbg !1549
  %402 = icmp ult i64 %401, %130, !dbg !1878
  br i1 %402, label %403, label %407, !dbg !1881

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1878
  %405 = or i8 %404, 48, !dbg !1878
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1878
  store i8 %405, i8* %406, align 1, !dbg !1878, !tbaa !1583
  br label %407, !dbg !1878

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %408, metadata !1501, metadata !DIExpression()), !dbg !1549
  %409 = icmp ult i64 %408, %130, !dbg !1882
  br i1 %409, label %410, label %415, !dbg !1885

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1882
  %412 = and i8 %411, 7, !dbg !1882
  %413 = or i8 %412, 48, !dbg !1882
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1882
  store i8 %413, i8* %414, align 1, !dbg !1882, !tbaa !1583
  br label %415, !dbg !1882

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %416, metadata !1501, metadata !DIExpression()), !dbg !1549
  %417 = and i8 %370, 7, !dbg !1886
  %418 = or i8 %417, 48, !dbg !1887
  call void @llvm.dbg.value(metadata i8 %418, metadata !1511, metadata !DIExpression()), !dbg !1642
  br label %428, !dbg !1888

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1889
  %421 = icmp eq i8 %420, 0, !dbg !1889
  br i1 %421, label %428, label %422, !dbg !1891

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1892
  br i1 %423, label %424, label %426, !dbg !1896

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1892
  store i8 92, i8* %425, align 1, !dbg !1892, !tbaa !1583
  br label %426, !dbg !1892

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %427, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1516, metadata !DIExpression()), !dbg !1642
  br label %428, !dbg !1897

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1549
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1570
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1642
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1642
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1642
  call void @llvm.dbg.value(metadata i8 %433, metadata !1517, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %432, metadata !1516, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %431, metadata !1511, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %430, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %429, metadata !1501, metadata !DIExpression()), !dbg !1549
  %434 = add i64 %367, 1, !dbg !1898
  %435 = icmp ugt i64 %365, %434, !dbg !1900
  br i1 %435, label %436, label %526, !dbg !1901

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1902
  %438 = icmp ne i8 %437, 0, !dbg !1902
  %439 = and i8 %433, 1, !dbg !1902
  %440 = icmp eq i8 %439, 0, !dbg !1902
  %441 = and i1 %438, %440, !dbg !1902
  br i1 %441, label %442, label %453, !dbg !1902

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1905
  br i1 %443, label %444, label %446, !dbg !1909

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1905
  store i8 39, i8* %445, align 1, !dbg !1905, !tbaa !1583
  br label %446, !dbg !1905

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %447, metadata !1501, metadata !DIExpression()), !dbg !1549
  %448 = icmp ult i64 %447, %130, !dbg !1910
  br i1 %448, label %449, label %451, !dbg !1913

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1910
  store i8 39, i8* %450, align 1, !dbg !1910, !tbaa !1583
  br label %451, !dbg !1910

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %452, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1508, metadata !DIExpression()), !dbg !1549
  br label %453, !dbg !1914

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1915
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %455, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %454, metadata !1501, metadata !DIExpression()), !dbg !1549
  %456 = icmp ult i64 %454, %130, !dbg !1916
  br i1 %456, label %457, label %459, !dbg !1919

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1916
  store i8 %431, i8* %458, align 1, !dbg !1916, !tbaa !1583
  br label %459, !dbg !1916

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %460, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %434, metadata !1500, metadata !DIExpression()), !dbg !1549
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1920
  %462 = load i8, i8* %461, align 1, !dbg !1920, !tbaa !1583
  call void @llvm.dbg.value(metadata i8 %462, metadata !1511, metadata !DIExpression()), !dbg !1642
  br label %366, !dbg !1921, !llvm.loop !1922

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1635
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1549
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1566
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1925
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1549
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1549
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1642
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1642
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1642
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %472, metadata !1518, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %471, metadata !1517, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %156, metadata !1516, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %470, metadata !1511, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %469, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %468, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %467, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %466, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %465, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %464, metadata !1500, metadata !DIExpression()), !dbg !1549
  br i1 %117, label %486, label %474, !dbg !1926

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1927
  %476 = zext i8 %475 to i64, !dbg !1927
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1928
  %478 = load i32, i32* %477, align 4, !dbg !1928, !tbaa !1181
  %479 = and i8 %470, 31, !dbg !1929
  %480 = zext i8 %479 to i32, !dbg !1929
  %481 = shl nuw i32 1, %480, !dbg !1930
  %482 = and i32 %478, %481, !dbg !1930
  %483 = icmp eq i32 %482, 0, !dbg !1930
  %484 = icmp eq i8 %156, 0, !dbg !1931
  %485 = and i1 %484, %483, !dbg !1932
  br i1 %485, label %526, label %488, !dbg !1932

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1931
  br i1 %487, label %526, label %488, !dbg !1933

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1934
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1549
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1566
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1925
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1570
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1571
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1642
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1642
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %496, metadata !1518, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %495, metadata !1511, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %494, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %493, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %492, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %491, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %490, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %489, metadata !1500, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.label(metadata !1546), !dbg !1935
  br i1 %109, label %498, label %629, !dbg !1936

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1517, metadata !DIExpression()), !dbg !1642
  %499 = and i8 %493, 1, !dbg !1938
  %500 = icmp eq i8 %499, 0, !dbg !1938
  %501 = and i1 %110, %500, !dbg !1938
  br i1 %501, label %502, label %518, !dbg !1938

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1940
  br i1 %503, label %504, label %506, !dbg !1944

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1940
  store i8 39, i8* %505, align 1, !dbg !1940, !tbaa !1583
  br label %506, !dbg !1940

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %507, metadata !1501, metadata !DIExpression()), !dbg !1549
  %508 = icmp ult i64 %507, %497, !dbg !1945
  br i1 %508, label %509, label %511, !dbg !1948

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1945
  store i8 36, i8* %510, align 1, !dbg !1945, !tbaa !1583
  br label %511, !dbg !1945

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %512, metadata !1501, metadata !DIExpression()), !dbg !1549
  %513 = icmp ult i64 %512, %497, !dbg !1949
  br i1 %513, label %514, label %516, !dbg !1952

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1949
  store i8 39, i8* %515, align 1, !dbg !1949, !tbaa !1583
  br label %516, !dbg !1949

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %517, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, metadata !1508, metadata !DIExpression()), !dbg !1549
  br label %518, !dbg !1953

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1642
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %520, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %519, metadata !1501, metadata !DIExpression()), !dbg !1549
  %521 = icmp ult i64 %519, %497, !dbg !1954
  br i1 %521, label %522, label %524, !dbg !1957

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1954
  store i8 92, i8* %523, align 1, !dbg !1954, !tbaa !1583
  br label %524, !dbg !1954

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %525, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %536, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %535, metadata !1518, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %534, metadata !1517, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %533, metadata !1511, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %532, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %531, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %530, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %529, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %528, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %527, metadata !1500, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.label(metadata !1547), !dbg !1958
  br label %553, !dbg !1959

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1934
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1549
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1566
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1925
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1570
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1571
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1962
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1642
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1642
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %535, metadata !1518, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %534, metadata !1517, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %533, metadata !1511, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %532, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %531, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %530, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %529, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %528, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %527, metadata !1500, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.label(metadata !1547), !dbg !1958
  %537 = and i8 %531, 1, !dbg !1959
  %538 = icmp ne i8 %537, 0, !dbg !1959
  %539 = and i8 %534, 1, !dbg !1959
  %540 = icmp eq i8 %539, 0, !dbg !1959
  %541 = and i1 %538, %540, !dbg !1959
  br i1 %541, label %542, label %553, !dbg !1959

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1963
  br i1 %543, label %544, label %546, !dbg !1967

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1963
  store i8 39, i8* %545, align 1, !dbg !1963, !tbaa !1583
  br label %546, !dbg !1963

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %547, metadata !1501, metadata !DIExpression()), !dbg !1549
  %548 = icmp ult i64 %547, %536, !dbg !1968
  br i1 %548, label %549, label %551, !dbg !1971

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1968
  store i8 39, i8* %550, align 1, !dbg !1968, !tbaa !1583
  br label %551, !dbg !1968

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %552, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1508, metadata !DIExpression()), !dbg !1549
  br label %553, !dbg !1972

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1642
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %562, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %561, metadata !1501, metadata !DIExpression()), !dbg !1549
  %563 = icmp ult i64 %561, %554, !dbg !1973
  br i1 %563, label %564, label %566, !dbg !1976

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1973
  store i8 %556, i8* %565, align 1, !dbg !1973, !tbaa !1583
  br label %566, !dbg !1973

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %567, metadata !1501, metadata !DIExpression()), !dbg !1549
  %568 = and i8 %555, 1, !dbg !1977
  %569 = icmp eq i8 %568, 0, !dbg !1977
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1979
  call void @llvm.dbg.value(metadata i8 %570, metadata !1510, metadata !DIExpression()), !dbg !1549
  br label %571, !dbg !1980

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1934
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1549
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1566
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1925
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1570
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1549
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1572
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %578, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %577, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %576, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %575, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %574, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %573, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %572, metadata !1500, metadata !DIExpression()), !dbg !1549
  %580 = add i64 %572, 1, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %580, metadata !1500, metadata !DIExpression()), !dbg !1549
  br label %122, !dbg !1982, !llvm.loop !1983

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %127, metadata !1508, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, metadata !1509, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %129, metadata !1510, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  %583 = icmp eq i64 %124, 0, !dbg !1985
  %584 = and i1 %110, %583, !dbg !1987
  %585 = xor i1 %584, true, !dbg !1987
  %586 = or i1 %109, %585, !dbg !1987
  br i1 %586, label %587, label %629, !dbg !1987

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !1988
  %589 = xor i1 %588, true, !dbg !1988
  %590 = and i8 %128, 1, !dbg !1990
  %591 = icmp eq i8 %590, 0, !dbg !1990
  %592 = or i1 %591, %589, !dbg !1988
  br i1 %592, label %602, label %593, !dbg !1988

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !1991
  %595 = icmp eq i8 %594, 0, !dbg !1991
  br i1 %595, label %598, label %596, !dbg !1994

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %94, metadata !1498, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %95, metadata !1499, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %125, metadata !1502, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %582, metadata !1494, metadata !DIExpression()), !dbg !1549
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1995
  br label %645, !dbg !1996

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !1997
  %600 = icmp ne i64 %125, 0, !dbg !1999
  %601 = and i1 %600, %599, !dbg !2000
  br i1 %601, label %26, label %602, !dbg !2000

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %130, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  %603 = icmp ne i8* %97, null, !dbg !2001
  %604 = and i1 %603, %109, !dbg !2003
  br i1 %604, label %605, label %620, !dbg !2003

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, metadata !1501, metadata !DIExpression()), !dbg !1549
  %606 = load i8, i8* %97, align 1, !dbg !2004, !tbaa !1583
  %607 = icmp eq i8 %606, 0, !dbg !2007
  br i1 %607, label %620, label %608, !dbg !2007

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1503, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %611, metadata !1501, metadata !DIExpression()), !dbg !1549
  %612 = icmp ult i64 %611, %130, !dbg !2008
  br i1 %612, label %613, label %615, !dbg !2011

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2008
  store i8 %609, i8* %614, align 1, !dbg !2008, !tbaa !1583
  br label %615, !dbg !2008

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %616, metadata !1501, metadata !DIExpression()), !dbg !1549
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2012
  call void @llvm.dbg.value(metadata i8* %617, metadata !1503, metadata !DIExpression()), !dbg !1549
  %618 = load i8, i8* %617, align 1, !dbg !2004, !tbaa !1583
  %619 = icmp eq i8 %618, 0, !dbg !2007
  br i1 %619, label %620, label %608, !dbg !2007, !llvm.loop !2013

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1604
  call void @llvm.dbg.value(metadata i64 %621, metadata !1501, metadata !DIExpression()), !dbg !1549
  %622 = icmp ult i64 %621, %130, !dbg !2015
  br i1 %622, label %623, label %645, !dbg !2017

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2018
  store i8 0, i8* %624, align 1, !dbg !2019, !tbaa !1583
  br label %645, !dbg !2018

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %630, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.label(metadata !1548), !dbg !2020
  %627 = icmp eq i8 %101, 0, !dbg !2021
  %628 = select i1 %627, i32 2, i32 4, !dbg !2021
  br label %635, !dbg !2021

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1492, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %630, metadata !1494, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.label(metadata !1548), !dbg !2020
  %632 = icmp eq i32 %93, 2, !dbg !2023
  %633 = icmp eq i8 %101, 0, !dbg !2021
  %634 = select i1 %633, i32 2, i32 4, !dbg !2021
  br i1 %632, label %635, label %639, !dbg !2021

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2021

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1495, metadata !DIExpression()), !dbg !1549
  %643 = and i32 %5, -3, !dbg !2024
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2025
  br label %645, !dbg !2026

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2027
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2032, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %1, metadata !2033, metadata !DIExpression()), !dbg !2036
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !2037
  call void @llvm.dbg.value(metadata i8* %3, metadata !2034, metadata !DIExpression()), !dbg !2036
  %4 = icmp eq i8* %3, %0, !dbg !2038
  br i1 %4, label %5, label %71, !dbg !2040

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !2041
  call void @llvm.dbg.value(metadata i8* %6, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %6, metadata !2042, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8* undef, metadata !2048, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 85, metadata !2049, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 84, metadata !2050, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 70, metadata !2051, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 45, metadata !2052, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 56, metadata !2053, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 0, metadata !2057, metadata !DIExpression()), !dbg !2058
  %7 = load i8, i8* %6, align 1, !dbg !2061, !tbaa !1583
  %8 = and i8 %7, -33, !dbg !2061
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2061

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2063, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* undef, metadata !2068, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 84, metadata !2069, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 70, metadata !2070, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 45, metadata !2071, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 56, metadata !2072, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2077
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2081
  %11 = load i8, i8* %10, align 1, !dbg !2081, !tbaa !1583
  %12 = and i8 %11, -33, !dbg !2081
  %13 = icmp eq i8 %12, 84, !dbg !2081
  br i1 %13, label %14, label %68, !dbg !2081

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2083, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8* undef, metadata !2088, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 70, metadata !2089, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 45, metadata !2090, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 56, metadata !2091, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2096
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2100
  %16 = load i8, i8* %15, align 1, !dbg !2100, !tbaa !1583
  %17 = and i8 %16, -33, !dbg !2100
  %18 = icmp eq i8 %17, 70, !dbg !2100
  br i1 %18, label %19, label %68, !dbg !2100

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2102, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8* undef, metadata !2107, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 45, metadata !2108, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 56, metadata !2109, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 0, metadata !2110, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 0, metadata !2111, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 0, metadata !2112, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 0, metadata !2113, metadata !DIExpression()), !dbg !2114
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2118
  %21 = load i8, i8* %20, align 1, !dbg !2118, !tbaa !1583
  %22 = icmp eq i8 %21, 45, !dbg !2118
  br i1 %22, label %23, label %68, !dbg !2120

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2121, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* undef, metadata !2126, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 56, metadata !2127, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 0, metadata !2128, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 0, metadata !2129, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 0, metadata !2130, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2132
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2136
  %25 = load i8, i8* %24, align 1, !dbg !2136, !tbaa !1583
  %26 = icmp eq i8 %25, 56, !dbg !2136
  br i1 %26, label %27, label %68, !dbg !2138

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2139, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8* undef, metadata !2144, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 0, metadata !2147, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2149
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2153
  %29 = load i8, i8* %28, align 1, !dbg !2153, !tbaa !1583
  %30 = icmp eq i8 %29, 0, !dbg !2153
  br i1 %30, label %31, label %68, !dbg !2155

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2156, !tbaa !1583
  %33 = icmp eq i8 %32, 96, !dbg !2157
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2156
  br label %71, !dbg !2158

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2063, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8* undef, metadata !2068, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8 66, metadata !2069, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8 49, metadata !2070, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8 56, metadata !2071, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8 48, metadata !2072, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8 51, metadata !2073, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8 48, metadata !2074, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2159
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2163
  %37 = load i8, i8* %36, align 1, !dbg !2163, !tbaa !1583
  %38 = and i8 %37, -33, !dbg !2163
  %39 = icmp eq i8 %38, 66, !dbg !2163
  br i1 %39, label %40, label %68, !dbg !2163

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2083, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* undef, metadata !2088, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 49, metadata !2089, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 56, metadata !2090, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 48, metadata !2091, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 51, metadata !2092, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 48, metadata !2093, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2164
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2166
  %42 = load i8, i8* %41, align 1, !dbg !2166, !tbaa !1583
  %43 = icmp eq i8 %42, 49, !dbg !2166
  br i1 %43, label %44, label %68, !dbg !2167

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2102, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8* undef, metadata !2107, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 56, metadata !2108, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 48, metadata !2109, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 51, metadata !2110, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 48, metadata !2111, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 0, metadata !2112, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 0, metadata !2113, metadata !DIExpression()), !dbg !2168
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2170
  %46 = load i8, i8* %45, align 1, !dbg !2170, !tbaa !1583
  %47 = icmp eq i8 %46, 56, !dbg !2170
  br i1 %47, label %48, label %68, !dbg !2171

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2121, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8* undef, metadata !2126, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 48, metadata !2127, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 51, metadata !2128, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 48, metadata !2129, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 0, metadata !2130, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2172
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2174
  %50 = load i8, i8* %49, align 1, !dbg !2174, !tbaa !1583
  %51 = icmp eq i8 %50, 48, !dbg !2174
  br i1 %51, label %52, label %68, !dbg !2175

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2139, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* undef, metadata !2144, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 51, metadata !2145, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 48, metadata !2146, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2147, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2176
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2178
  %54 = load i8, i8* %53, align 1, !dbg !2178, !tbaa !1583
  %55 = icmp eq i8 %54, 51, !dbg !2178
  br i1 %55, label %56, label %68, !dbg !2179

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2180, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8* undef, metadata !2185, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8 48, metadata !2186, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2189
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2193
  %58 = load i8, i8* %57, align 1, !dbg !2193, !tbaa !1583
  %59 = icmp eq i8 %58, 48, !dbg !2193
  br i1 %59, label %60, label %68, !dbg !2195

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2196, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8* undef, metadata !2201, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, metadata !2202, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, metadata !2203, metadata !DIExpression()), !dbg !2204
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2208
  %62 = load i8, i8* %61, align 1, !dbg !2208, !tbaa !1583
  %63 = icmp eq i8 %62, 0, !dbg !2208
  br i1 %63, label %64, label %68, !dbg !2210

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2211, !tbaa !1583
  %66 = icmp eq i8 %65, 96, !dbg !2212
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2211
  br label %71, !dbg !2213

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2214
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2215
  br label %71, !dbg !2216

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2036
  ret i8* %72, !dbg !2217
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !334 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !338 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2218 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64 %1, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2224, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()) #19, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %1, metadata !2231, metadata !DIExpression()) #19, !dbg !2239
  call void @llvm.dbg.value(metadata i64* null, metadata !2232, metadata !DIExpression()) #19, !dbg !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2233, metadata !DIExpression()) #19, !dbg !2239
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2241
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2234, metadata !DIExpression()) #19, !dbg !2239
  %6 = tail call i32* @__errno_location() #25, !dbg !2242
  %7 = load i32, i32* %6, align 4, !dbg !2242, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %7, metadata !2235, metadata !DIExpression()) #19, !dbg !2239
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2243
  %9 = load i32, i32* %8, align 4, !dbg !2243, !tbaa !1434
  %10 = or i32 %9, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %10, metadata !2236, metadata !DIExpression()) #19, !dbg !2239
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2245
  %12 = load i32, i32* %11, align 8, !dbg !2245, !tbaa !1382
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2246
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2247
  %15 = load i8*, i8** %14, align 8, !dbg !2247, !tbaa !1457
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2248
  %17 = load i8*, i8** %16, align 8, !dbg !2248, !tbaa !1460
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !2249
  %19 = add i64 %18, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %19, metadata !2237, metadata !DIExpression()) #19, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %19, metadata !2251, metadata !DIExpression()) #19, !dbg !2256
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !2258
  call void @llvm.dbg.value(metadata i8* %20, metadata !2238, metadata !DIExpression()) #19, !dbg !2239
  %21 = load i32, i32* %11, align 8, !dbg !2259, !tbaa !1382
  %22 = load i8*, i8** %14, align 8, !dbg !2260, !tbaa !1457
  %23 = load i8*, i8** %16, align 8, !dbg !2261, !tbaa !1460
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !2262
  store i32 %7, i32* %6, align 4, !dbg !2263, !tbaa !1181
  ret i8* %20, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2227 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %1, metadata !2231, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64* %2, metadata !2232, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2233, metadata !DIExpression()), !dbg !2265
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2266
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2266
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2234, metadata !DIExpression()), !dbg !2265
  %7 = tail call i32* @__errno_location() #25, !dbg !2267
  %8 = load i32, i32* %7, align 4, !dbg !2267, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %8, metadata !2235, metadata !DIExpression()), !dbg !2265
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2268
  %10 = load i32, i32* %9, align 4, !dbg !2268, !tbaa !1434
  %11 = icmp ne i64* %2, null, !dbg !2269
  %12 = xor i1 %11, true, !dbg !2269
  %13 = zext i1 %12 to i32, !dbg !2269
  %14 = or i32 %10, %13, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %14, metadata !2236, metadata !DIExpression()), !dbg !2265
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2271
  %16 = load i32, i32* %15, align 8, !dbg !2271, !tbaa !1382
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2272
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2273
  %19 = load i8*, i8** %18, align 8, !dbg !2273, !tbaa !1457
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2274
  %21 = load i8*, i8** %20, align 8, !dbg !2274, !tbaa !1460
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2275
  %23 = add i64 %22, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %23, metadata !2237, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %23, metadata !2251, metadata !DIExpression()) #19, !dbg !2277
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !2279
  call void @llvm.dbg.value(metadata i8* %24, metadata !2238, metadata !DIExpression()), !dbg !2265
  %25 = load i32, i32* %15, align 8, !dbg !2280, !tbaa !1382
  %26 = load i8*, i8** %18, align 8, !dbg !2281, !tbaa !1457
  %27 = load i8*, i8** %20, align 8, !dbg !2282, !tbaa !1460
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2283
  store i32 %8, i32* %7, align 4, !dbg !2284, !tbaa !1181
  br i1 %11, label %29, label %30, !dbg !2285

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2286, !tbaa !2288
  br label %30, !dbg !2290

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2291
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2292 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2296, !tbaa !1110
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2294, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i32 1, metadata !2295, metadata !DIExpression()), !dbg !2297
  %2 = load i32, i32* @nslots, align 4, !dbg !2298, !tbaa !1181
  %3 = icmp sgt i32 %2, 1, !dbg !2301
  br i1 %3, label %4, label %12, !dbg !2302

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2295, metadata !DIExpression()), !dbg !2297
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2303
  %7 = load i8*, i8** %6, align 8, !dbg !2303, !tbaa !2304
  tail call void @free(i8* %7) #19, !dbg !2306
  %8 = add nuw nsw i64 %5, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %8, metadata !2295, metadata !DIExpression()), !dbg !2297
  %9 = load i32, i32* @nslots, align 4, !dbg !2298, !tbaa !1181
  %10 = sext i32 %9 to i64, !dbg !2301
  %11 = icmp slt i64 %8, %10, !dbg !2301
  br i1 %11, label %4, label %12, !dbg !2302, !llvm.loop !2308

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2310
  %14 = load i8*, i8** %13, align 8, !dbg !2310, !tbaa !2304
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2312
  br i1 %15, label %17, label %16, !dbg !2313

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !2314
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2316, !tbaa !2317
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2318, !tbaa !2304
  br label %17, !dbg !2319

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2320
  br i1 %18, label %21, label %19, !dbg !2322

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2323
  tail call void @free(i8* %20) #19, !dbg !2325
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2326, !tbaa !1110
  br label %21, !dbg !2327

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2328, !tbaa !1181
  ret void, !dbg !2329
}

; Function Attrs: nounwind
declare !dbg !311 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8* %1, metadata !2333, metadata !DIExpression()), !dbg !2334
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2335
  ret i8* %3, !dbg !2336
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2337 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2341, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %1, metadata !2342, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %2, metadata !2343, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2344, metadata !DIExpression()), !dbg !2356
  %5 = tail call i32* @__errno_location() #25, !dbg !2357
  %6 = load i32, i32* %5, align 4, !dbg !2357, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %6, metadata !2345, metadata !DIExpression()), !dbg !2356
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2358, !tbaa !1110
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2346, metadata !DIExpression()), !dbg !2356
  %8 = icmp slt i32 %0, 0, !dbg !2359
  br i1 %8, label %9, label %10, !dbg !2361

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2362
  unreachable, !dbg !2362

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2363, !tbaa !1181
  %12 = icmp sgt i32 %11, %0, !dbg !2364
  br i1 %12, label %34, label %13, !dbg !2365

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2366
  call void @llvm.dbg.value(metadata i1 %14, metadata !2347, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2350, metadata !DIExpression()), !dbg !2367
  %15 = icmp eq i32 %0, 2147483647, !dbg !2368
  br i1 %15, label %16, label %17, !dbg !2370

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2371
  unreachable, !dbg !2371

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2372
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2372
  %20 = add nuw nsw i32 %0, 1, !dbg !2373
  %21 = sext i32 %20 to i64, !dbg !2374
  %22 = shl nuw nsw i64 %21, 4, !dbg !2375
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !2376
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2376
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2346, metadata !DIExpression()), !dbg !2356
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2377, !tbaa !1110
  br i1 %14, label %25, label %26, !dbg !2378

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2379, !tbaa.struct !2381
  br label %26, !dbg !2382

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2383, !tbaa !1181
  %28 = sext i32 %27 to i64, !dbg !2384
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2384
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2385
  %31 = sub nsw i32 %20, %27, !dbg !2386
  %32 = sext i32 %31 to i64, !dbg !2387
  %33 = shl nsw i64 %32, 4, !dbg !2388
  call void @llvm.dbg.value(metadata i8* %30, metadata !1784, metadata !DIExpression()) #19, !dbg !2389
  call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()) #19, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %33, metadata !1791, metadata !DIExpression()) #19, !dbg !2389
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !2391
  store i32 %20, i32* @nslots, align 4, !dbg !2392, !tbaa !1181
  br label %34, !dbg !2393

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2356
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2346, metadata !DIExpression()), !dbg !2356
  %36 = zext i32 %0 to i64, !dbg !2394
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2395
  %38 = load i64, i64* %37, align 8, !dbg !2395, !tbaa !2317
  call void @llvm.dbg.value(metadata i64 %38, metadata !2351, metadata !DIExpression()), !dbg !2396
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2397
  %40 = load i8*, i8** %39, align 8, !dbg !2397, !tbaa !2304
  call void @llvm.dbg.value(metadata i8* %40, metadata !2353, metadata !DIExpression()), !dbg !2396
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2398
  %42 = load i32, i32* %41, align 4, !dbg !2398, !tbaa !1434
  %43 = or i32 %42, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %43, metadata !2354, metadata !DIExpression()), !dbg !2396
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2400
  %45 = load i32, i32* %44, align 8, !dbg !2400, !tbaa !1382
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2401
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2402
  %48 = load i8*, i8** %47, align 8, !dbg !2402, !tbaa !1457
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2403
  %50 = load i8*, i8** %49, align 8, !dbg !2403, !tbaa !1460
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2404
  call void @llvm.dbg.value(metadata i64 %51, metadata !2355, metadata !DIExpression()), !dbg !2396
  %52 = icmp ugt i64 %38, %51, !dbg !2405
  br i1 %52, label %63, label %53, !dbg !2407

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %54, metadata !2351, metadata !DIExpression()), !dbg !2396
  store i64 %54, i64* %37, align 8, !dbg !2410, !tbaa !2317
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2411
  br i1 %55, label %57, label %56, !dbg !2413

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !2414
  br label %57, !dbg !2414

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2251, metadata !DIExpression()) #19, !dbg !2415
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !2417
  call void @llvm.dbg.value(metadata i8* %58, metadata !2353, metadata !DIExpression()), !dbg !2396
  store i8* %58, i8** %39, align 8, !dbg !2418, !tbaa !2304
  %59 = load i32, i32* %44, align 8, !dbg !2419, !tbaa !1382
  %60 = load i8*, i8** %47, align 8, !dbg !2420, !tbaa !1457
  %61 = load i8*, i8** %49, align 8, !dbg !2421, !tbaa !1460
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2422
  br label %63, !dbg !2423

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2396
  call void @llvm.dbg.value(metadata i8* %64, metadata !2353, metadata !DIExpression()), !dbg !2396
  store i32 %6, i32* %5, align 4, !dbg !2424, !tbaa !1181
  ret i8* %64, !dbg !2425
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 %2, metadata !2432, metadata !DIExpression()), !dbg !2433
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2434
  ret i8* %4, !dbg !2435
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2436 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2438, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 0, metadata !2332, metadata !DIExpression()) #19, !dbg !2440
  call void @llvm.dbg.value(metadata i8* %0, metadata !2333, metadata !DIExpression()) #19, !dbg !2440
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2442
  ret i8* %2, !dbg !2443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2444 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i64 %1, metadata !2449, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 0, metadata !2430, metadata !DIExpression()) #19, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %0, metadata !2431, metadata !DIExpression()) #19, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %1, metadata !2432, metadata !DIExpression()) #19, !dbg !2451
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2453
  ret i8* %3, !dbg !2454
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2455 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2459, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 %1, metadata !2460, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* %2, metadata !2461, metadata !DIExpression()), !dbg !2463
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2464
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2464
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2462, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 %1, metadata !2466, metadata !DIExpression()) #19, !dbg !2472
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2471, metadata !DIExpression()) #19, !dbg !2474
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2474, !alias.scope !2475
  %6 = icmp eq i32 %1, 10, !dbg !2478
  br i1 %6, label %7, label %8, !dbg !2480

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2481, !noalias !2475
  unreachable, !dbg !2481

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2482
  store i32 %1, i32* %9, align 8, !dbg !2483, !tbaa !1382, !alias.scope !2475
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2484
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2485
  ret i8* %10, !dbg !2486
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2487 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2491, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %1, metadata !2492, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8* %2, metadata !2493, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i64 %3, metadata !2494, metadata !DIExpression()), !dbg !2496
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2497
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2497
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2495, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %1, metadata !2466, metadata !DIExpression()) #19, !dbg !2499
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2471, metadata !DIExpression()) #19, !dbg !2501
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !2501, !alias.scope !2502
  %7 = icmp eq i32 %1, 10, !dbg !2505
  br i1 %7, label %8, label %9, !dbg !2506

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2507, !noalias !2502
  unreachable, !dbg !2507

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2508
  store i32 %1, i32* %10, align 8, !dbg !2509, !tbaa !1382, !alias.scope !2502
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2510
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2511
  ret i8* %11, !dbg !2512
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2513 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2471, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2462, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i32 %0, metadata !2515, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8* %1, metadata !2516, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()) #19, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()) #19, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %1, metadata !2461, metadata !DIExpression()) #19, !dbg !2522
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2523
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %0, metadata !2466, metadata !DIExpression()) #19, !dbg !2524
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !2517, !alias.scope !2525
  %5 = icmp eq i32 %0, 10, !dbg !2528
  br i1 %5, label %6, label %7, !dbg !2529

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !2530, !noalias !2525
  unreachable, !dbg !2530

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2531
  store i32 %0, i32* %8, align 8, !dbg !2532, !tbaa !1382, !alias.scope !2525
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2534
  ret i8* %9, !dbg !2535
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2536 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2471, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2495, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %0, metadata !2540, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %1, metadata !2541, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 %2, metadata !2542, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 0, metadata !2491, metadata !DIExpression()) #19, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %0, metadata !2492, metadata !DIExpression()) #19, !dbg !2548
  call void @llvm.dbg.value(metadata i8* %1, metadata !2493, metadata !DIExpression()) #19, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %2, metadata !2494, metadata !DIExpression()) #19, !dbg !2548
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2549
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %0, metadata !2466, metadata !DIExpression()) #19, !dbg !2550
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2543, !alias.scope !2551
  %6 = icmp eq i32 %0, 10, !dbg !2554
  br i1 %6, label %7, label %8, !dbg !2555

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2556, !noalias !2551
  unreachable, !dbg !2556

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2557
  store i32 %0, i32* %9, align 8, !dbg !2558, !tbaa !1382, !alias.scope !2551
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2560
  ret i8* %10, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2562 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 %2, metadata !2568, metadata !DIExpression()), !dbg !2570
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2571
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2571
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2573, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1400, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 %2, metadata !1401, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 1, metadata !1402, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 %2, metadata !1403, metadata !DIExpression()), !dbg !2575
  %6 = lshr i8 %2, 5, !dbg !2577
  %7 = zext i8 %6 to i64, !dbg !2577
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2578
  call void @llvm.dbg.value(metadata i32* %8, metadata !1405, metadata !DIExpression()), !dbg !2575
  %9 = and i8 %2, 31, !dbg !2579
  %10 = zext i8 %9 to i32, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %10, metadata !1407, metadata !DIExpression()), !dbg !2575
  %11 = load i32, i32* %8, align 4, !dbg !2580, !tbaa !1181
  %12 = lshr i32 %11, %10, !dbg !2581
  %13 = and i32 %12, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i32 %13, metadata !1408, metadata !DIExpression()), !dbg !2575
  %14 = xor i32 %13, 1, !dbg !2583
  %15 = shl i32 %14, %10, !dbg !2584
  %16 = xor i32 %15, %11, !dbg !2585
  store i32 %16, i32* %8, align 4, !dbg !2585, !tbaa !1181
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2586
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2587
  ret i8* %17, !dbg !2588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2589 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2569, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8 %1, metadata !2594, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #19, !dbg !2598
  call void @llvm.dbg.value(metadata i64 -1, metadata !2567, metadata !DIExpression()) #19, !dbg !2598
  call void @llvm.dbg.value(metadata i8 %1, metadata !2568, metadata !DIExpression()) #19, !dbg !2598
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2599
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2600, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1400, metadata !DIExpression()) #19, !dbg !2601
  call void @llvm.dbg.value(metadata i8 %1, metadata !1401, metadata !DIExpression()) #19, !dbg !2601
  call void @llvm.dbg.value(metadata i32 1, metadata !1402, metadata !DIExpression()) #19, !dbg !2601
  call void @llvm.dbg.value(metadata i8 %1, metadata !1403, metadata !DIExpression()) #19, !dbg !2601
  %5 = lshr i8 %1, 5, !dbg !2603
  %6 = zext i8 %5 to i64, !dbg !2603
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2604
  call void @llvm.dbg.value(metadata i32* %7, metadata !1405, metadata !DIExpression()) #19, !dbg !2601
  %8 = and i8 %1, 31, !dbg !2605
  %9 = zext i8 %8 to i32, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %9, metadata !1407, metadata !DIExpression()) #19, !dbg !2601
  %10 = load i32, i32* %7, align 4, !dbg !2606, !tbaa !1181
  %11 = lshr i32 %10, %9, !dbg !2607
  %12 = and i32 %11, 1, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %12, metadata !1408, metadata !DIExpression()) #19, !dbg !2601
  %13 = xor i32 %12, 1, !dbg !2609
  %14 = shl i32 %13, %9, !dbg !2610
  %15 = xor i32 %14, %10, !dbg !2611
  store i32 %15, i32* %7, align 4, !dbg !2611, !tbaa !1181
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2613
  ret i8* %16, !dbg !2614
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2615 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2569, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()) #19, !dbg !2622
  call void @llvm.dbg.value(metadata i8 58, metadata !2594, metadata !DIExpression()) #19, !dbg !2622
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #19, !dbg !2623
  call void @llvm.dbg.value(metadata i64 -1, metadata !2567, metadata !DIExpression()) #19, !dbg !2623
  call void @llvm.dbg.value(metadata i8 58, metadata !2568, metadata !DIExpression()) #19, !dbg !2623
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2624
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2625, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1400, metadata !DIExpression()) #19, !dbg !2626
  call void @llvm.dbg.value(metadata i8 58, metadata !1401, metadata !DIExpression()) #19, !dbg !2626
  call void @llvm.dbg.value(metadata i32 1, metadata !1402, metadata !DIExpression()) #19, !dbg !2626
  call void @llvm.dbg.value(metadata i8 58, metadata !1403, metadata !DIExpression()) #19, !dbg !2626
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2628
  call void @llvm.dbg.value(metadata i32* %4, metadata !1405, metadata !DIExpression()) #19, !dbg !2626
  call void @llvm.dbg.value(metadata i32 26, metadata !1407, metadata !DIExpression()) #19, !dbg !2626
  %5 = load i32, i32* %4, align 4, !dbg !2629, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %5, metadata !1408, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2626
  %6 = or i32 %5, 67108864, !dbg !2630
  store i32 %6, i32* %4, align 4, !dbg !2630, !tbaa !1181
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !2631
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2632
  ret i8* %7, !dbg !2633
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2634 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2569, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* %0, metadata !2636, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %1, metadata !2637, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #19, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()) #19, !dbg !2641
  call void @llvm.dbg.value(metadata i8 58, metadata !2568, metadata !DIExpression()) #19, !dbg !2641
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2643, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1400, metadata !DIExpression()) #19, !dbg !2644
  call void @llvm.dbg.value(metadata i8 58, metadata !1401, metadata !DIExpression()) #19, !dbg !2644
  call void @llvm.dbg.value(metadata i32 1, metadata !1402, metadata !DIExpression()) #19, !dbg !2644
  call void @llvm.dbg.value(metadata i8 58, metadata !1403, metadata !DIExpression()) #19, !dbg !2644
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2646
  call void @llvm.dbg.value(metadata i32* %5, metadata !1405, metadata !DIExpression()) #19, !dbg !2644
  call void @llvm.dbg.value(metadata i32 26, metadata !1407, metadata !DIExpression()) #19, !dbg !2644
  %6 = load i32, i32* %5, align 4, !dbg !2647, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %6, metadata !1408, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2644
  %7 = or i32 %6, 67108864, !dbg !2648
  store i32 %7, i32* %5, align 4, !dbg !2648, !tbaa !1181
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !2649
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2650
  ret i8* %8, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2652 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2471, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2658
  call void @llvm.dbg.value(metadata i32 %0, metadata !2654, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i32 %1, metadata !2655, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %2, metadata !2656, metadata !DIExpression()), !dbg !2660
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2661
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2661
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2657, metadata !DIExpression()), !dbg !2662
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2663
  call void @llvm.dbg.value(metadata i32 %1, metadata !2466, metadata !DIExpression()) #19, !dbg !2664
  call void @llvm.dbg.value(metadata i32 0, metadata !2471, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2664
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2658, !alias.scope !2665
  %8 = icmp eq i32 %1, 10, !dbg !2668
  br i1 %8, label %9, label %10, !dbg !2669

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2670, !noalias !2665
  unreachable, !dbg !2670

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2471, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2664
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2663
  store i32 %1, i32* %11, align 8, !dbg !2663, !tbaa.struct !2574
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2663
  %13 = bitcast i32* %12 to i8*, !dbg !2663
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2663, !tbaa.struct !2574
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2663
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1400, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 58, metadata !1401, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 1, metadata !1402, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 58, metadata !1403, metadata !DIExpression()), !dbg !2671
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2673
  call void @llvm.dbg.value(metadata i32* %14, metadata !1405, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 26, metadata !1407, metadata !DIExpression()), !dbg !2671
  %15 = load i32, i32* %14, align 4, !dbg !2674, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %15, metadata !1408, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2671
  %16 = or i32 %15, 67108864, !dbg !2675
  store i32 %16, i32* %14, align 4, !dbg !2675, !tbaa !1181
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2677
  ret i8* %17, !dbg !2678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2679 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2687, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %0, metadata !2683, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %1, metadata !2684, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %2, metadata !2685, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %3, metadata !2686, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i32 %0, metadata !2692, metadata !DIExpression()) #19, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %1, metadata !2693, metadata !DIExpression()) #19, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %2, metadata !2694, metadata !DIExpression()) #19, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %3, metadata !2695, metadata !DIExpression()) #19, !dbg !2700
  call void @llvm.dbg.value(metadata i64 -1, metadata !2696, metadata !DIExpression()) #19, !dbg !2700
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2702, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1441, metadata !DIExpression()) #19, !dbg !2703
  call void @llvm.dbg.value(metadata i8* %1, metadata !1442, metadata !DIExpression()) #19, !dbg !2703
  call void @llvm.dbg.value(metadata i8* %2, metadata !1443, metadata !DIExpression()) #19, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1441, metadata !DIExpression()) #19, !dbg !2703
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2705
  store i32 10, i32* %7, align 8, !dbg !2706, !tbaa !1382
  %8 = icmp ne i8* %1, null, !dbg !2707
  %9 = icmp ne i8* %2, null, !dbg !2708
  %10 = and i1 %8, %9, !dbg !2709
  br i1 %10, label %12, label %11, !dbg !2709

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2710
  unreachable, !dbg !2710

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2711
  store i8* %1, i8** %13, align 8, !dbg !2712, !tbaa !1457
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2713
  store i8* %2, i8** %14, align 8, !dbg !2714, !tbaa !1460
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2716
  ret i8* %15, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2688 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2692, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !2693, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %2, metadata !2694, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %3, metadata !2695, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %4, metadata !2696, metadata !DIExpression()), !dbg !2718
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !2719
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2687, metadata !DIExpression()), !dbg !2720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2721, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1441, metadata !DIExpression()) #19, !dbg !2722
  call void @llvm.dbg.value(metadata i8* %1, metadata !1442, metadata !DIExpression()) #19, !dbg !2722
  call void @llvm.dbg.value(metadata i8* %2, metadata !1443, metadata !DIExpression()) #19, !dbg !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1441, metadata !DIExpression()) #19, !dbg !2722
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2724
  store i32 10, i32* %8, align 8, !dbg !2725, !tbaa !1382
  %9 = icmp ne i8* %1, null, !dbg !2726
  %10 = icmp ne i8* %2, null, !dbg !2727
  %11 = and i1 %9, %10, !dbg !2728
  br i1 %11, label %13, label %12, !dbg !2728

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !2729
  unreachable, !dbg !2729

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2730
  store i8* %1, i8** %14, align 8, !dbg !2731, !tbaa !1457
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2732
  store i8* %2, i8** %15, align 8, !dbg !2733, !tbaa !1460
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !2735
  ret i8* %16, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2737 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2687, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %1, metadata !2742, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %2, metadata !2743, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 0, metadata !2683, metadata !DIExpression()) #19, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %0, metadata !2684, metadata !DIExpression()) #19, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %1, metadata !2685, metadata !DIExpression()) #19, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %2, metadata !2686, metadata !DIExpression()) #19, !dbg !2748
  call void @llvm.dbg.value(metadata i32 0, metadata !2692, metadata !DIExpression()) #19, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %0, metadata !2693, metadata !DIExpression()) #19, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %1, metadata !2694, metadata !DIExpression()) #19, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %2, metadata !2695, metadata !DIExpression()) #19, !dbg !2749
  call void @llvm.dbg.value(metadata i64 -1, metadata !2696, metadata !DIExpression()) #19, !dbg !2749
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2750
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2751, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1441, metadata !DIExpression()) #19, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %0, metadata !1442, metadata !DIExpression()) #19, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %1, metadata !1443, metadata !DIExpression()) #19, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1441, metadata !DIExpression()) #19, !dbg !2752
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2754
  store i32 10, i32* %6, align 8, !dbg !2755, !tbaa !1382
  %7 = icmp ne i8* %0, null, !dbg !2756
  %8 = icmp ne i8* %1, null, !dbg !2757
  %9 = and i1 %7, %8, !dbg !2758
  br i1 %9, label %11, label %10, !dbg !2758

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2759
  unreachable, !dbg !2759

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2760
  store i8* %0, i8** %12, align 8, !dbg !2761, !tbaa !1457
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2762
  store i8* %1, i8** %13, align 8, !dbg !2763, !tbaa !1460
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !2764
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2765
  ret i8* %14, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2767 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2687, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %0, metadata !2771, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* %1, metadata !2772, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* %2, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 %3, metadata !2774, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2692, metadata !DIExpression()) #19, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %0, metadata !2693, metadata !DIExpression()) #19, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %1, metadata !2694, metadata !DIExpression()) #19, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %2, metadata !2695, metadata !DIExpression()) #19, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %3, metadata !2696, metadata !DIExpression()) #19, !dbg !2778
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2779
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2779
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2780, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1441, metadata !DIExpression()) #19, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %0, metadata !1442, metadata !DIExpression()) #19, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %1, metadata !1443, metadata !DIExpression()) #19, !dbg !2781
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1441, metadata !DIExpression()) #19, !dbg !2781
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2783
  store i32 10, i32* %7, align 8, !dbg !2784, !tbaa !1382
  %8 = icmp ne i8* %0, null, !dbg !2785
  %9 = icmp ne i8* %1, null, !dbg !2786
  %10 = and i1 %8, %9, !dbg !2787
  br i1 %10, label %12, label %11, !dbg !2787

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2788
  unreachable, !dbg !2788

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2789
  store i8* %0, i8** %13, align 8, !dbg !2790, !tbaa !1457
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2791
  store i8* %1, i8** %14, align 8, !dbg !2792, !tbaa !1460
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !2793
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2794
  ret i8* %15, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2796 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8* %1, metadata !2801, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i64 %2, metadata !2802, metadata !DIExpression()), !dbg !2803
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2804
  ret i8* %4, !dbg !2805
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2806 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %1, metadata !2811, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()) #19, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()) #19, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %1, metadata !2802, metadata !DIExpression()) #19, !dbg !2813
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2815
  ret i8* %3, !dbg !2816
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2821, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %1, metadata !2822, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()) #19, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %1, metadata !2801, metadata !DIExpression()) #19, !dbg !2824
  call void @llvm.dbg.value(metadata i64 -1, metadata !2802, metadata !DIExpression()) #19, !dbg !2824
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2826
  ret i8* %3, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2832, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 0, metadata !2821, metadata !DIExpression()) #19, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #19, !dbg !2834
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()) #19, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()) #19, !dbg !2836
  call void @llvm.dbg.value(metadata i64 -1, metadata !2802, metadata !DIExpression()) #19, !dbg !2836
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2838
  ret i8* %2, !dbg !2839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2840 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2848, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %1, metadata !2849, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %2, metadata !2850, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %3, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8** %4, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %5, metadata !2853, metadata !DIExpression()), !dbg !2854
  %7 = icmp eq i8* %1, null, !dbg !2855
  br i1 %7, label %10, label %8, !dbg !2857

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !2858
  br label %12, !dbg !2858

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !2859
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #19, !dbg !2860
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !2860
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2861
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #19, !dbg !2862
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.81, i64 0, i64 0)) #19, !dbg !2862
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2863
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
  ], !dbg !2864

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #19, !dbg !2865
  %21 = load i8*, i8** %4, align 8, !dbg !2865, !tbaa !1110
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !2865
  br label %147, !dbg !2867

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #19, !dbg !2868
  %25 = load i8*, i8** %4, align 8, !dbg !2868, !tbaa !1110
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2868
  %27 = load i8*, i8** %26, align 8, !dbg !2868, !tbaa !1110
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !2868
  br label %147, !dbg !2869

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #19, !dbg !2870
  %31 = load i8*, i8** %4, align 8, !dbg !2870, !tbaa !1110
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2870
  %33 = load i8*, i8** %32, align 8, !dbg !2870, !tbaa !1110
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2870
  %35 = load i8*, i8** %34, align 8, !dbg !2870, !tbaa !1110
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !2870
  br label %147, !dbg !2871

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #19, !dbg !2872
  %39 = load i8*, i8** %4, align 8, !dbg !2872, !tbaa !1110
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2872
  %41 = load i8*, i8** %40, align 8, !dbg !2872, !tbaa !1110
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2872
  %43 = load i8*, i8** %42, align 8, !dbg !2872, !tbaa !1110
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2872
  %45 = load i8*, i8** %44, align 8, !dbg !2872, !tbaa !1110
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !2872
  br label %147, !dbg !2873

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #19, !dbg !2874
  %49 = load i8*, i8** %4, align 8, !dbg !2874, !tbaa !1110
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2874
  %51 = load i8*, i8** %50, align 8, !dbg !2874, !tbaa !1110
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2874
  %53 = load i8*, i8** %52, align 8, !dbg !2874, !tbaa !1110
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2874
  %55 = load i8*, i8** %54, align 8, !dbg !2874, !tbaa !1110
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2874
  %57 = load i8*, i8** %56, align 8, !dbg !2874, !tbaa !1110
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !2874
  br label %147, !dbg !2875

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #19, !dbg !2876
  %61 = load i8*, i8** %4, align 8, !dbg !2876, !tbaa !1110
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2876
  %63 = load i8*, i8** %62, align 8, !dbg !2876, !tbaa !1110
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2876
  %65 = load i8*, i8** %64, align 8, !dbg !2876, !tbaa !1110
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2876
  %67 = load i8*, i8** %66, align 8, !dbg !2876, !tbaa !1110
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2876
  %69 = load i8*, i8** %68, align 8, !dbg !2876, !tbaa !1110
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2876
  %71 = load i8*, i8** %70, align 8, !dbg !2876, !tbaa !1110
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !2876
  br label %147, !dbg !2877

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #19, !dbg !2878
  %75 = load i8*, i8** %4, align 8, !dbg !2878, !tbaa !1110
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2878
  %77 = load i8*, i8** %76, align 8, !dbg !2878, !tbaa !1110
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2878
  %79 = load i8*, i8** %78, align 8, !dbg !2878, !tbaa !1110
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2878
  %81 = load i8*, i8** %80, align 8, !dbg !2878, !tbaa !1110
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2878
  %83 = load i8*, i8** %82, align 8, !dbg !2878, !tbaa !1110
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2878
  %85 = load i8*, i8** %84, align 8, !dbg !2878, !tbaa !1110
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2878
  %87 = load i8*, i8** %86, align 8, !dbg !2878, !tbaa !1110
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !2878
  br label %147, !dbg !2879

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #19, !dbg !2880
  %91 = load i8*, i8** %4, align 8, !dbg !2880, !tbaa !1110
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2880
  %93 = load i8*, i8** %92, align 8, !dbg !2880, !tbaa !1110
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2880
  %95 = load i8*, i8** %94, align 8, !dbg !2880, !tbaa !1110
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2880
  %97 = load i8*, i8** %96, align 8, !dbg !2880, !tbaa !1110
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2880
  %99 = load i8*, i8** %98, align 8, !dbg !2880, !tbaa !1110
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2880
  %101 = load i8*, i8** %100, align 8, !dbg !2880, !tbaa !1110
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2880
  %103 = load i8*, i8** %102, align 8, !dbg !2880, !tbaa !1110
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2880
  %105 = load i8*, i8** %104, align 8, !dbg !2880, !tbaa !1110
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !2880
  br label %147, !dbg !2881

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #19, !dbg !2882
  %109 = load i8*, i8** %4, align 8, !dbg !2882, !tbaa !1110
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2882
  %111 = load i8*, i8** %110, align 8, !dbg !2882, !tbaa !1110
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2882
  %113 = load i8*, i8** %112, align 8, !dbg !2882, !tbaa !1110
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2882
  %115 = load i8*, i8** %114, align 8, !dbg !2882, !tbaa !1110
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2882
  %117 = load i8*, i8** %116, align 8, !dbg !2882, !tbaa !1110
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2882
  %119 = load i8*, i8** %118, align 8, !dbg !2882, !tbaa !1110
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2882
  %121 = load i8*, i8** %120, align 8, !dbg !2882, !tbaa !1110
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2882
  %123 = load i8*, i8** %122, align 8, !dbg !2882, !tbaa !1110
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2882
  %125 = load i8*, i8** %124, align 8, !dbg !2882, !tbaa !1110
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !2882
  br label %147, !dbg !2883

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.91, i64 0, i64 0), i32 5) #19, !dbg !2884
  %129 = load i8*, i8** %4, align 8, !dbg !2884, !tbaa !1110
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2884
  %131 = load i8*, i8** %130, align 8, !dbg !2884, !tbaa !1110
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2884
  %133 = load i8*, i8** %132, align 8, !dbg !2884, !tbaa !1110
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2884
  %135 = load i8*, i8** %134, align 8, !dbg !2884, !tbaa !1110
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2884
  %137 = load i8*, i8** %136, align 8, !dbg !2884, !tbaa !1110
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2884
  %139 = load i8*, i8** %138, align 8, !dbg !2884, !tbaa !1110
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2884
  %141 = load i8*, i8** %140, align 8, !dbg !2884, !tbaa !1110
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2884
  %143 = load i8*, i8** %142, align 8, !dbg !2884, !tbaa !1110
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2884
  %145 = load i8*, i8** %144, align 8, !dbg !2884, !tbaa !1110
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !2884
  br label %147, !dbg !2885

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2886
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2887 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2891, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8* %1, metadata !2892, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8* %2, metadata !2893, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8* %3, metadata !2894, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8** %4, metadata !2895, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 0, metadata !2896, metadata !DIExpression()), !dbg !2897
  br label %6, !dbg !2898

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2900
  call void @llvm.dbg.value(metadata i64 %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2901
  %9 = load i8*, i8** %8, align 8, !dbg !2901, !tbaa !1110
  %10 = icmp eq i8* %9, null, !dbg !2903
  %11 = add i64 %7, 1, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %11, metadata !2896, metadata !DIExpression()), !dbg !2897
  br i1 %10, label %12, label %6, !dbg !2903, !llvm.loop !2905

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2907
  ret void, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2909 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2920, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8* %1, metadata !2921, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8* %2, metadata !2922, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8* %3, metadata !2923, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2924, metadata !DIExpression()), !dbg !2928
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2929
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !2929
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2926, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2925, metadata !DIExpression()), !dbg !2928
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2931
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2931
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2931
  %11 = load i32, i32* %8, align 8, !dbg !2934
  %12 = icmp ult i32 %11, 41, !dbg !2934
  br i1 %12, label %13, label %18, !dbg !2934

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2934
  %15 = zext i32 %11 to i64, !dbg !2934
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2934
  %17 = add nuw nsw i32 %11, 8, !dbg !2934
  store i32 %17, i32* %8, align 8, !dbg !2934
  br label %21, !dbg !2934

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2934
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2934
  store i8* %20, i8** %9, align 8, !dbg !2934
  br label %21, !dbg !2934

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2934
  %25 = load i8*, i8** %24, align 8, !dbg !2934
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2935
  store i8* %25, i8** %26, align 16, !dbg !2936, !tbaa !1110
  %27 = icmp eq i8* %25, null, !dbg !2937
  br i1 %27, label %30, label %28, !dbg !2938

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2925, metadata !DIExpression()), !dbg !2928
  %29 = icmp ult i32 %22, 41, !dbg !2934
  br i1 %29, label %35, label %32, !dbg !2934

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2939
  call void @llvm.dbg.value(metadata i64 %31, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 %31, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2940
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !2941
  ret void, !dbg !2941

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2934
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2934
  store i8* %34, i8** %9, align 8, !dbg !2934
  br label %40, !dbg !2934

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2934
  %37 = zext i32 %22 to i64, !dbg !2934
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2934
  %39 = add nuw nsw i32 %22, 8, !dbg !2934
  store i32 %39, i32* %8, align 8, !dbg !2934
  br label %40, !dbg !2934

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2934
  %44 = load i8*, i8** %43, align 8, !dbg !2934
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2935
  store i8* %44, i8** %45, align 8, !dbg !2936, !tbaa !1110
  %46 = icmp eq i8* %44, null, !dbg !2937
  br i1 %46, label %30, label %47, !dbg !2938

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2925, metadata !DIExpression()), !dbg !2928
  %48 = icmp ult i32 %41, 41, !dbg !2934
  br i1 %48, label %52, label %49, !dbg !2934

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2934
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2934
  store i8* %51, i8** %9, align 8, !dbg !2934
  br label %57, !dbg !2934

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2934
  %54 = zext i32 %41 to i64, !dbg !2934
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2934
  %56 = add nuw nsw i32 %41, 8, !dbg !2934
  store i32 %56, i32* %8, align 8, !dbg !2934
  br label %57, !dbg !2934

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2934
  %61 = load i8*, i8** %60, align 8, !dbg !2934
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2935
  store i8* %61, i8** %62, align 16, !dbg !2936, !tbaa !1110
  %63 = icmp eq i8* %61, null, !dbg !2937
  br i1 %63, label %30, label %64, !dbg !2938

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2925, metadata !DIExpression()), !dbg !2928
  %65 = icmp ult i32 %58, 41, !dbg !2934
  br i1 %65, label %69, label %66, !dbg !2934

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2934
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2934
  store i8* %68, i8** %9, align 8, !dbg !2934
  br label %74, !dbg !2934

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2934
  %71 = zext i32 %58 to i64, !dbg !2934
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2934
  %73 = add nuw nsw i32 %58, 8, !dbg !2934
  store i32 %73, i32* %8, align 8, !dbg !2934
  br label %74, !dbg !2934

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2934
  %78 = load i8*, i8** %77, align 8, !dbg !2934
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2935
  store i8* %78, i8** %79, align 8, !dbg !2936, !tbaa !1110
  %80 = icmp eq i8* %78, null, !dbg !2937
  br i1 %80, label %30, label %81, !dbg !2938

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2925, metadata !DIExpression()), !dbg !2928
  %82 = icmp ult i32 %75, 41, !dbg !2934
  br i1 %82, label %86, label %83, !dbg !2934

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2934
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2934
  store i8* %85, i8** %9, align 8, !dbg !2934
  br label %91, !dbg !2934

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2934
  %88 = zext i32 %75 to i64, !dbg !2934
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2934
  %90 = add nuw nsw i32 %75, 8, !dbg !2934
  store i32 %90, i32* %8, align 8, !dbg !2934
  br label %91, !dbg !2934

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2934
  %95 = load i8*, i8** %94, align 8, !dbg !2934
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2935
  store i8* %95, i8** %96, align 16, !dbg !2936, !tbaa !1110
  %97 = icmp eq i8* %95, null, !dbg !2937
  br i1 %97, label %30, label %98, !dbg !2938

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2925, metadata !DIExpression()), !dbg !2928
  %99 = icmp ult i32 %92, 41, !dbg !2934
  br i1 %99, label %103, label %100, !dbg !2934

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2934
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2934
  store i8* %102, i8** %9, align 8, !dbg !2934
  br label %108, !dbg !2934

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2934
  %105 = zext i32 %92 to i64, !dbg !2934
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2934
  %107 = add nuw nsw i32 %92, 8, !dbg !2934
  store i32 %107, i32* %8, align 8, !dbg !2934
  br label %108, !dbg !2934

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2934
  %111 = load i8*, i8** %110, align 8, !dbg !2934
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2935
  store i8* %111, i8** %112, align 8, !dbg !2936, !tbaa !1110
  %113 = icmp eq i8* %111, null, !dbg !2937
  br i1 %113, label %30, label %114, !dbg !2938

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2925, metadata !DIExpression()), !dbg !2928
  %115 = load i8*, i8** %9, align 8, !dbg !2934
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2934
  store i8* %116, i8** %9, align 8, !dbg !2934
  %117 = bitcast i8* %115 to i8**, !dbg !2934
  %118 = load i8*, i8** %117, align 8, !dbg !2934
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2935
  store i8* %118, i8** %119, align 16, !dbg !2936, !tbaa !1110
  %120 = icmp eq i8* %118, null, !dbg !2937
  br i1 %120, label %30, label %121, !dbg !2938

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2925, metadata !DIExpression()), !dbg !2928
  %122 = load i8*, i8** %9, align 8, !dbg !2934
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2934
  store i8* %123, i8** %9, align 8, !dbg !2934
  %124 = bitcast i8* %122 to i8**, !dbg !2934
  %125 = load i8*, i8** %124, align 8, !dbg !2934
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2935
  store i8* %125, i8** %126, align 8, !dbg !2936, !tbaa !1110
  %127 = icmp eq i8* %125, null, !dbg !2937
  br i1 %127, label %30, label %128, !dbg !2938

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2925, metadata !DIExpression()), !dbg !2928
  %129 = load i8*, i8** %9, align 8, !dbg !2934
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2934
  store i8* %130, i8** %9, align 8, !dbg !2934
  %131 = bitcast i8* %129 to i8**, !dbg !2934
  %132 = load i8*, i8** %131, align 8, !dbg !2934
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2935
  store i8* %132, i8** %133, align 16, !dbg !2936, !tbaa !1110
  %134 = icmp eq i8* %132, null, !dbg !2937
  br i1 %134, label %30, label %135, !dbg !2938

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2925, metadata !DIExpression()), !dbg !2928
  %136 = load i8*, i8** %9, align 8, !dbg !2934
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2934
  store i8* %137, i8** %9, align 8, !dbg !2934
  %138 = bitcast i8* %136 to i8**, !dbg !2934
  %139 = load i8*, i8** %138, align 8, !dbg !2934
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2935
  store i8* %139, i8** %140, align 8, !dbg !2936, !tbaa !1110
  %141 = icmp eq i8* %139, null, !dbg !2937
  %142 = select i1 %141, i64 9, i64 10, !dbg !2938
  br label %30, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2942 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2946, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8* %1, metadata !2947, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8* %2, metadata !2948, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8* %3, metadata !2949, metadata !DIExpression()), !dbg !2956
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !2957
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2950, metadata !DIExpression()), !dbg !2958
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2959
  call void @llvm.va_start(i8* nonnull %6), !dbg !2959
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2960
  call void @llvm.va_end(i8* nonnull %6), !dbg !2961
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !2962
  ret void, !dbg !2962
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2963 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2964, !tbaa !1110
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2964
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #19, !dbg !2965
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.95, i64 0, i64 0)) #19, !dbg !2965
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.96, i64 0, i64 0), i32 5) #19, !dbg !2966
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.97, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.98, i64 0, i64 0)) #19, !dbg !2966
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.99, i64 0, i64 0), i32 5) #19, !dbg !2967
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.100, i64 0, i64 0)) #19, !dbg !2967
  ret void, !dbg !2968
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !2969 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2973, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %1, metadata !2974, metadata !DIExpression()), !dbg !2975
  %3 = udiv i64 9223372036854775807, %1, !dbg !2976
  %4 = icmp ult i64 %3, %0, !dbg !2976
  br i1 %4, label %5, label %6, !dbg !2978

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !2979
  unreachable, !dbg !2979

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %7, metadata !2981, metadata !DIExpression()) #19, !dbg !2987
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %8, metadata !2986, metadata !DIExpression()) #19, !dbg !2987
  %9 = icmp eq i8* %8, null, !dbg !2990
  %10 = icmp ne i64 %7, 0, !dbg !2992
  %11 = and i1 %10, %9, !dbg !2993
  br i1 %11, label %12, label %13, !dbg !2993

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !2994
  unreachable, !dbg !2994

13:                                               ; preds = %6
  ret i8* %8, !dbg !2995
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2982 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2981, metadata !DIExpression()), !dbg !2996
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %2, metadata !2986, metadata !DIExpression()), !dbg !2996
  %3 = icmp eq i8* %2, null, !dbg !2998
  %4 = icmp ne i64 %0, 0, !dbg !2999
  %5 = and i1 %4, %3, !dbg !3000
  br i1 %5, label %6, label %7, !dbg !3000

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3001
  unreachable, !dbg !3001

7:                                                ; preds = %1
  ret i8* %2, !dbg !3002
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !3003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3007, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %2, metadata !3009, metadata !DIExpression()), !dbg !3010
  %4 = udiv i64 9223372036854775807, %2, !dbg !3011
  %5 = icmp ult i64 %4, %1, !dbg !3011
  br i1 %5, label %6, label %7, !dbg !3013

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3014
  unreachable, !dbg !3014

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3015
  call void @llvm.dbg.value(metadata i8* %0, metadata !3016, metadata !DIExpression()) #19, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %8, metadata !3021, metadata !DIExpression()) #19, !dbg !3022
  %9 = icmp eq i64 %8, 0, !dbg !3024
  %10 = icmp ne i8* %0, null, !dbg !3026
  %11 = and i1 %10, %9, !dbg !3027
  br i1 %11, label %12, label %13, !dbg !3027

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !3028
  br label %19, !dbg !3030

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %14, metadata !3016, metadata !DIExpression()) #19, !dbg !3022
  %15 = icmp eq i8* %14, null, !dbg !3032
  %16 = icmp ne i64 %8, 0, !dbg !3034
  %17 = and i1 %16, %15, !dbg !3035
  br i1 %17, label %18, label %19, !dbg !3035

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3036
  unreachable, !dbg !3036

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3022
  ret i8* %20, !dbg !3037
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3017 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3016, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %1, metadata !3021, metadata !DIExpression()), !dbg !3038
  %3 = icmp eq i64 %1, 0, !dbg !3039
  %4 = icmp ne i8* %0, null, !dbg !3040
  %5 = and i1 %4, %3, !dbg !3041
  br i1 %5, label %6, label %7, !dbg !3041

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !3042
  br label %13, !dbg !3043

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %8, metadata !3016, metadata !DIExpression()), !dbg !3038
  %9 = icmp eq i8* %8, null, !dbg !3045
  %10 = icmp ne i64 %1, 0, !dbg !3046
  %11 = and i1 %10, %9, !dbg !3047
  br i1 %11, label %12, label %13, !dbg !3047

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3048
  unreachable, !dbg !3048

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3038
  ret i8* %14, !dbg !3049
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !464 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !469, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64* %1, metadata !470, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %2, metadata !471, metadata !DIExpression()), !dbg !3050
  %4 = load i64, i64* %1, align 8, !dbg !3051, !tbaa !2288
  call void @llvm.dbg.value(metadata i64 %4, metadata !472, metadata !DIExpression()), !dbg !3050
  %5 = icmp eq i8* %0, null, !dbg !3052
  br i1 %5, label %6, label %20, !dbg !3054

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3055
  br i1 %7, label %8, label %13, !dbg !3058

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %9, metadata !472, metadata !DIExpression()), !dbg !3050
  %10 = icmp ugt i64 %2, 128, !dbg !3061
  %11 = zext i1 %10 to i64, !dbg !3061
  %12 = add nuw nsw i64 %9, %11, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %12, metadata !472, metadata !DIExpression()), !dbg !3050
  br label %13, !dbg !3063

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3050
  call void @llvm.dbg.value(metadata i64 %14, metadata !472, metadata !DIExpression()), !dbg !3050
  %15 = udiv i64 9223372036854775807, %2, !dbg !3064
  %16 = icmp ult i64 %15, %14, !dbg !3064
  br i1 %16, label %19, label %17, !dbg !3066

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !472, metadata !DIExpression()), !dbg !3050
  store i64 %14, i64* %1, align 8, !dbg !3067, !tbaa !2288
  %18 = mul i64 %14, %2, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %0, metadata !3016, metadata !DIExpression()) #19, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %28, metadata !3021, metadata !DIExpression()) #19, !dbg !3069
  br label %31, !dbg !3071

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3072
  unreachable, !dbg !3072

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3073
  %22 = icmp ugt i64 %21, %4, !dbg !3076
  br i1 %22, label %24, label %23, !dbg !3077

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3078
  unreachable, !dbg !3078

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3079
  %26 = add nuw i64 %4, 1, !dbg !3080
  %27 = add i64 %26, %25, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %27, metadata !472, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %27, metadata !472, metadata !DIExpression()), !dbg !3050
  store i64 %27, i64* %1, align 8, !dbg !3067, !tbaa !2288
  %28 = mul i64 %27, %2, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %0, metadata !3016, metadata !DIExpression()) #19, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %28, metadata !3021, metadata !DIExpression()) #19, !dbg !3069
  %29 = icmp eq i64 %28, 0, !dbg !3082
  br i1 %29, label %30, label %31, !dbg !3071

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !3083
  br label %38, !dbg !3084

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !3085
  call void @llvm.dbg.value(metadata i8* %33, metadata !3016, metadata !DIExpression()) #19, !dbg !3069
  %34 = icmp eq i8* %33, null, !dbg !3086
  %35 = icmp ne i64 %32, 0, !dbg !3087
  %36 = and i1 %35, %34, !dbg !3088
  br i1 %36, label %37, label %38, !dbg !3088

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3089
  unreachable, !dbg !3089

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3069
  ret i8* %39, !dbg !3090
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !3091 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %0, metadata !2981, metadata !DIExpression()) #19, !dbg !3095
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %2, metadata !2986, metadata !DIExpression()) #19, !dbg !3095
  %3 = icmp eq i8* %2, null, !dbg !3098
  %4 = icmp ne i64 %0, 0, !dbg !3099
  %5 = and i1 %4, %3, !dbg !3100
  br i1 %5, label %6, label %7, !dbg !3100

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3101
  unreachable, !dbg !3101

7:                                                ; preds = %1
  ret i8* %2, !dbg !3102
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64* %1, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %0, metadata !469, metadata !DIExpression()) #19, !dbg !3110
  call void @llvm.dbg.value(metadata i64* %1, metadata !470, metadata !DIExpression()) #19, !dbg !3110
  call void @llvm.dbg.value(metadata i64 1, metadata !471, metadata !DIExpression()) #19, !dbg !3110
  %3 = load i64, i64* %1, align 8, !dbg !3112, !tbaa !2288
  call void @llvm.dbg.value(metadata i64 %3, metadata !472, metadata !DIExpression()) #19, !dbg !3110
  %4 = icmp eq i8* %0, null, !dbg !3113
  br i1 %4, label %5, label %12, !dbg !3114

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3115
  br i1 %6, label %9, label %7, !dbg !3116

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !472, metadata !DIExpression()) #19, !dbg !3110
  %8 = icmp slt i64 %3, 0, !dbg !3117
  br i1 %8, label %11, label %9, !dbg !3118

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !472, metadata !DIExpression()) #19, !dbg !3110
  store i64 %10, i64* %1, align 8, !dbg !3119, !tbaa !2288
  call void @llvm.dbg.value(metadata i8* %0, metadata !3016, metadata !DIExpression()) #19, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %18, metadata !3021, metadata !DIExpression()) #19, !dbg !3120
  br label %21, !dbg !3122

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3123
  unreachable, !dbg !3123

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3124
  br i1 %13, label %15, label %14, !dbg !3125

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3126
  unreachable, !dbg !3126

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3127
  %17 = add nuw nsw i64 %3, 1, !dbg !3128
  %18 = add nuw nsw i64 %17, %16, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %18, metadata !472, metadata !DIExpression()) #19, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %18, metadata !472, metadata !DIExpression()) #19, !dbg !3110
  store i64 %18, i64* %1, align 8, !dbg !3119, !tbaa !2288
  call void @llvm.dbg.value(metadata i8* %0, metadata !3016, metadata !DIExpression()) #19, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %18, metadata !3021, metadata !DIExpression()) #19, !dbg !3120
  %19 = icmp eq i64 %18, 0, !dbg !3130
  br i1 %19, label %20, label %21, !dbg !3122

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !3131
  br label %28, !dbg !3132

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !3133
  call void @llvm.dbg.value(metadata i8* %23, metadata !3016, metadata !DIExpression()) #19, !dbg !3120
  %24 = icmp eq i8* %23, null, !dbg !3134
  %25 = icmp ne i64 %22, 0, !dbg !3135
  %26 = and i1 %25, %24, !dbg !3136
  br i1 %26, label %27, label %28, !dbg !3136

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3137
  unreachable, !dbg !3137

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3120
  ret i8* %29, !dbg !3138
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3139 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3141, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %0, metadata !3143, metadata !DIExpression()) #19, !dbg !3148
  call void @llvm.dbg.value(metadata i64 1, metadata !3146, metadata !DIExpression()) #19, !dbg !3148
  %2 = icmp slt i64 %0, 0, !dbg !3150
  br i1 %2, label %6, label %3, !dbg !3152

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !3153
  call void @llvm.dbg.value(metadata i8* %4, metadata !3147, metadata !DIExpression()) #19, !dbg !3148
  %5 = icmp eq i8* %4, null, !dbg !3154
  br i1 %5, label %6, label %7, !dbg !3155

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3156
  unreachable, !dbg !3156

7:                                                ; preds = %3
  ret i8* %4, !dbg !3157
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3144 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3143, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3158
  %3 = udiv i64 9223372036854775807, %1, !dbg !3159
  %4 = icmp ult i64 %3, %0, !dbg !3159
  br i1 %4, label %8, label %5, !dbg !3160

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %6, metadata !3147, metadata !DIExpression()), !dbg !3158
  %7 = icmp eq i8* %6, null, !dbg !3162
  br i1 %7, label %8, label %9, !dbg !3163

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3164
  unreachable, !dbg !3164

9:                                                ; preds = %5
  ret i8* %6, !dbg !3165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3166 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3170, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 %1, metadata !3171, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()) #19, !dbg !3173
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !3175
  call void @llvm.dbg.value(metadata i8* %3, metadata !2986, metadata !DIExpression()) #19, !dbg !3173
  %4 = icmp eq i8* %3, null, !dbg !3176
  %5 = icmp ne i64 %1, 0, !dbg !3177
  %6 = and i1 %5, %4, !dbg !3178
  br i1 %6, label %7, label %8, !dbg !3178

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3179
  unreachable, !dbg !3179

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3180, metadata !DIExpression()) #19, !dbg !3189
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()) #19, !dbg !3189
  call void @llvm.dbg.value(metadata i64 %1, metadata !3188, metadata !DIExpression()) #19, !dbg !3189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !3191
  ret i8* %3, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3193 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()), !dbg !3196
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3197
  %3 = add i64 %2, 1, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %0, metadata !3170, metadata !DIExpression()) #19, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %3, metadata !3171, metadata !DIExpression()) #19, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %3, metadata !2981, metadata !DIExpression()) #19, !dbg !3201
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %4, metadata !2986, metadata !DIExpression()) #19, !dbg !3201
  %5 = icmp eq i8* %4, null, !dbg !3204
  %6 = icmp ne i64 %3, 0, !dbg !3205
  %7 = and i1 %6, %5, !dbg !3206
  br i1 %7, label %8, label %9, !dbg !3206

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3207
  unreachable, !dbg !3207

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3180, metadata !DIExpression()) #19, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()) #19, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %3, metadata !3188, metadata !DIExpression()) #19, !dbg !3208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !3210
  ret i8* %4, !dbg !3211
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3212 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3213, !tbaa !1181
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.111, i64 0, i64 0), i32 5) #19, !dbg !3214
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i64 0, i64 0), i8* %2) #19, !dbg !3215
  tail call void @abort() #23, !dbg !3216
  unreachable, !dbg !3216
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3217 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3219, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %1, metadata !3220, metadata !DIExpression()), !dbg !3225
  %3 = icmp eq i64 %0, 0, !dbg !3226
  %4 = icmp eq i64 %1, 0, !dbg !3227
  %5 = or i1 %3, %4, !dbg !3228
  br i1 %5, label %11, label %6, !dbg !3228

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3222, metadata !DIExpression()), !dbg !3229
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3230
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3230
  br i1 %8, label %9, label %11, !dbg !3232

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !3233
  store i32 12, i32* %10, align 4, !dbg !3235, !tbaa !1181
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3219, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %12, metadata !3220, metadata !DIExpression()), !dbg !3225
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %14, metadata !3221, metadata !DIExpression()), !dbg !3225
  br label %15, !dbg !3237

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3225
  ret i8* %16, !dbg !3238
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !3239 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3241, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %1, metadata !3242, metadata !DIExpression()), !dbg !3265
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3266
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #19, !dbg !3266
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !3243, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i32 -1, metadata !3253, metadata !DIExpression()), !dbg !3265
  call void @llvm.va_start(i8* nonnull %4), !dbg !3268
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
  ], !dbg !3269

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3270
  %7 = load i32, i32* %6, align 16, !dbg !3270
  %8 = icmp ult i32 %7, 41, !dbg !3270
  br i1 %8, label %9, label %15, !dbg !3270

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3270
  %11 = load i8*, i8** %10, align 16, !dbg !3270
  %12 = zext i32 %7 to i64, !dbg !3270
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !3270
  %14 = add nuw nsw i32 %7, 8, !dbg !3270
  store i32 %14, i32* %6, align 16, !dbg !3270
  br label %19, !dbg !3270

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3270
  %17 = load i8*, i8** %16, align 8, !dbg !3270
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !3270
  store i8* %18, i8** %16, align 8, !dbg !3270
  br label %19, !dbg !3270

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !3270
  %22 = load i32, i32* %21, align 4, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %22, metadata !3254, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()) #19, !dbg !3277
  call void @llvm.dbg.value(metadata i32 %22, metadata !3275, metadata !DIExpression()) #19, !dbg !3277
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #19, !dbg !3279
  call void @llvm.dbg.value(metadata i32 %23, metadata !3276, metadata !DIExpression()) #19, !dbg !3277
  call void @llvm.dbg.value(metadata i32 %23, metadata !3253, metadata !DIExpression()), !dbg !3265
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3280
  %26 = load i32, i32* %25, align 16, !dbg !3280
  %27 = icmp ult i32 %26, 41, !dbg !3280
  br i1 %27, label %28, label %34, !dbg !3280

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3280
  %30 = load i8*, i8** %29, align 16, !dbg !3280
  %31 = zext i32 %26 to i64, !dbg !3280
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !3280
  %33 = add nuw nsw i32 %26, 8, !dbg !3280
  store i32 %33, i32* %25, align 16, !dbg !3280
  br label %38, !dbg !3280

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3280
  %36 = load i8*, i8** %35, align 8, !dbg !3280
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !3280
  store i8* %37, i8** %35, align 8, !dbg !3280
  br label %38, !dbg !3280

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !3280
  %41 = load i32, i32* %40, align 4, !dbg !3280
  call void @llvm.dbg.value(metadata i32 %41, metadata !3257, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %0, metadata !409, metadata !DIExpression()) #19, !dbg !3282
  call void @llvm.dbg.value(metadata i32 %41, metadata !410, metadata !DIExpression()) #19, !dbg !3282
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3284, !tbaa !1181
  %43 = icmp sgt i32 %42, -1, !dbg !3286
  br i1 %43, label %44, label %56, !dbg !3287

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #19, !dbg !3288
  call void @llvm.dbg.value(metadata i32 %45, metadata !411, metadata !DIExpression()) #19, !dbg !3282
  %46 = icmp sgt i32 %45, -1, !dbg !3290
  br i1 %46, label %51, label %47, !dbg !3292

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #25, !dbg !3293
  %49 = load i32, i32* %48, align 4, !dbg !3293, !tbaa !1181
  %50 = icmp eq i32 %49, 22, !dbg !3294
  br i1 %50, label %52, label %51, !dbg !3295

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3296, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %62, metadata !411, metadata !DIExpression()) #19, !dbg !3282
  br label %116, !dbg !3298

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()) #19, !dbg !3299
  call void @llvm.dbg.value(metadata i32 %41, metadata !3275, metadata !DIExpression()) #19, !dbg !3299
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #19, !dbg !3302
  call void @llvm.dbg.value(metadata i32 %53, metadata !3276, metadata !DIExpression()) #19, !dbg !3299
  call void @llvm.dbg.value(metadata i32 %53, metadata !411, metadata !DIExpression()) #19, !dbg !3282
  %54 = icmp sgt i32 %53, -1, !dbg !3303
  br i1 %54, label %55, label %116, !dbg !3305

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3306, !tbaa !1181
  br label %60, !dbg !3307

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()) #19, !dbg !3308
  call void @llvm.dbg.value(metadata i32 %41, metadata !3275, metadata !DIExpression()) #19, !dbg !3308
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #19, !dbg !3310
  call void @llvm.dbg.value(metadata i32 %57, metadata !3276, metadata !DIExpression()) #19, !dbg !3308
  call void @llvm.dbg.value(metadata i32 %57, metadata !411, metadata !DIExpression()) #19, !dbg !3282
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3311
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !3312
  call void @llvm.dbg.value(metadata i32 %62, metadata !411, metadata !DIExpression()) #19, !dbg !3282
  %63 = icmp sgt i32 %62, -1, !dbg !3313
  %64 = and i1 %61, %63, !dbg !3298
  br i1 %64, label %65, label %116, !dbg !3298

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #19, !dbg !3314
  call void @llvm.dbg.value(metadata i32 %66, metadata !412, metadata !DIExpression()) #19, !dbg !3315
  %67 = icmp slt i32 %66, 0, !dbg !3316
  br i1 %67, label %72, label %68, !dbg !3317

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !3318
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #19, !dbg !3319
  %71 = icmp eq i32 %70, -1, !dbg !3320
  br i1 %71, label %72, label %116, !dbg !3321

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #25, !dbg !3322
  %74 = load i32, i32* %73, align 4, !dbg !3322, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %74, metadata !415, metadata !DIExpression()) #19, !dbg !3323
  %75 = call i32 @close(i32 %62) #19, !dbg !3324
  store i32 %74, i32* %73, align 4, !dbg !3325, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 -1, metadata !411, metadata !DIExpression()) #19, !dbg !3282
  br label %116, !dbg !3326

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #19, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %77, metadata !3253, metadata !DIExpression()), !dbg !3265
  br label %116, !dbg !3328

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3329
  %80 = load i32, i32* %79, align 16, !dbg !3329
  %81 = icmp ult i32 %80, 41, !dbg !3329
  br i1 %81, label %82, label %88, !dbg !3329

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3329
  %84 = load i8*, i8** %83, align 16, !dbg !3329
  %85 = zext i32 %80 to i64, !dbg !3329
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !3329
  %87 = add nuw nsw i32 %80, 8, !dbg !3329
  store i32 %87, i32* %79, align 16, !dbg !3329
  br label %92, !dbg !3329

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3329
  %90 = load i8*, i8** %89, align 8, !dbg !3329
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !3329
  store i8* %91, i8** %89, align 8, !dbg !3329
  br label %92, !dbg !3329

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !3329
  %95 = load i32, i32* %94, align 4, !dbg !3329
  call void @llvm.dbg.value(metadata i32 %95, metadata !3259, metadata !DIExpression()), !dbg !3330
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #19, !dbg !3331
  call void @llvm.dbg.value(metadata i32 %96, metadata !3253, metadata !DIExpression()), !dbg !3265
  br label %116, !dbg !3332

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3333
  %99 = load i32, i32* %98, align 16, !dbg !3333
  %100 = icmp ult i32 %99, 41, !dbg !3333
  br i1 %100, label %101, label %107, !dbg !3333

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3333
  %103 = load i8*, i8** %102, align 16, !dbg !3333
  %104 = zext i32 %99 to i64, !dbg !3333
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !3333
  %106 = add nuw nsw i32 %99, 8, !dbg !3333
  store i32 %106, i32* %98, align 16, !dbg !3333
  br label %111, !dbg !3333

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3333
  %109 = load i8*, i8** %108, align 8, !dbg !3333
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !3333
  store i8* %110, i8** %108, align 8, !dbg !3333
  br label %111, !dbg !3333

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !3333
  %114 = load i8*, i8** %113, align 8, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %114, metadata !3263, metadata !DIExpression()), !dbg !3334
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #19, !dbg !3335
  call void @llvm.dbg.value(metadata i32 %115, metadata !3253, metadata !DIExpression()), !dbg !3265
  br label %116, !dbg !3336

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !3337
  call void @llvm.dbg.value(metadata i32 %117, metadata !3253, metadata !DIExpression()), !dbg !3265
  call void @llvm.va_end(i8* nonnull %4), !dbg !3338
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #19, !dbg !3339
  ret i32 %117, !dbg !3340
}

declare !dbg !406 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3341 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3349, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %1, metadata !3350, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %2, metadata !3351, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3352, metadata !DIExpression()), !dbg !3358
  %6 = bitcast i32* %5 to i8*, !dbg !3359
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3359
  %7 = icmp eq i32* %0, null, !dbg !3360
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3362
  call void @llvm.dbg.value(metadata i32* %8, metadata !3349, metadata !DIExpression()), !dbg !3358
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %9, metadata !3353, metadata !DIExpression()), !dbg !3358
  %10 = icmp ugt i64 %9, -3, !dbg !3364
  %11 = icmp ne i64 %2, 0, !dbg !3365
  %12 = and i1 %11, %10, !dbg !3366
  br i1 %12, label %13, label %18, !dbg !3366

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !3367
  br i1 %14, label %18, label %15, !dbg !3368

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3369, !tbaa !1583
  call void @llvm.dbg.value(metadata i8 %16, metadata !3355, metadata !DIExpression()), !dbg !3370
  %17 = zext i8 %16 to i32, !dbg !3371
  store i32 %17, i32* %8, align 4, !dbg !3372, !tbaa !1181
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3358
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3373
  ret i64 %19, !dbg !3373
}

; Function Attrs: nounwind
declare !dbg !490 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3374 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3380, metadata !DIExpression()), !dbg !3385
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !3386
  call void @llvm.dbg.value(metadata i1 undef, metadata !3381, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3387, metadata !DIExpression()), !dbg !3391
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3393
  %4 = load i32, i32* %3, align 8, !dbg !3393, !tbaa !3394
  %5 = and i32 %4, 32, !dbg !3393
  %6 = icmp eq i32 %5, 0, !dbg !3396
  call void @llvm.dbg.value(metadata i1 %6, metadata !3383, metadata !DIExpression()), !dbg !3385
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !3397
  %8 = icmp ne i32 %7, 0, !dbg !3398
  call void @llvm.dbg.value(metadata i1 %8, metadata !3384, metadata !DIExpression()), !dbg !3385
  br i1 %6, label %9, label %19, !dbg !3399

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3401
  call void @llvm.dbg.value(metadata i1 %10, metadata !3381, metadata !DIExpression()), !dbg !3385
  %11 = xor i1 %8, true, !dbg !3402
  %12 = or i1 %10, %11, !dbg !3402
  %13 = sext i1 %8 to i32, !dbg !3402
  br i1 %12, label %22, label %14, !dbg !3402

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !3403
  %16 = load i32, i32* %15, align 4, !dbg !3403, !tbaa !1181
  %17 = icmp ne i32 %16, 9, !dbg !3404
  %18 = sext i1 %17 to i32, !dbg !3405
  br label %22, !dbg !3405

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3406

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !3408
  store i32 0, i32* %21, align 4, !dbg !3410, !tbaa !1181
  br label %22, !dbg !3408

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3385
  ret i32 %23, !dbg !3411
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3412 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3414, metadata !DIExpression()), !dbg !3419
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3420
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3420
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3415, metadata !DIExpression()), !dbg !3421
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !3422
  %5 = icmp eq i32 %4, 0, !dbg !3422
  br i1 %5, label %6, label %13, !dbg !3424

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3425
  %8 = load i16, i16* %7, align 16, !dbg !3425
  %9 = icmp eq i16 %8, 67, !dbg !3425
  br i1 %9, label %13, label %10, !dbg !3426

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i64 0, i64 0), i64 6), !dbg !3427
  %12 = icmp ne i32 %11, 0, !dbg !3428
  br label %13, !dbg !3426

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3419
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3429
  ret i1 %14, !dbg !3429
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3430 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %1, metadata !3432, metadata !DIExpression()), !dbg !3434
  %2 = icmp eq i8* %1, null, !dbg !3435
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.126, i64 0, i64 0), i8* %1, !dbg !3437
  call void @llvm.dbg.value(metadata i8* %3, metadata !3432, metadata !DIExpression()), !dbg !3434
  %4 = load i8, i8* %3, align 1, !dbg !3438, !tbaa !1583
  %5 = icmp eq i8 %4, 0, !dbg !3442
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i8* %3, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %6, metadata !3432, metadata !DIExpression()), !dbg !3434
  ret i8* %6, !dbg !3444
}

; Function Attrs: nounwind
declare !dbg !942 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3445 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i8* %1, metadata !3450, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i64 %2, metadata !3451, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 %0, metadata !3453, metadata !DIExpression()) #19, !dbg !3462
  call void @llvm.dbg.value(metadata i8* %1, metadata !3456, metadata !DIExpression()) #19, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %2, metadata !3457, metadata !DIExpression()) #19, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()) #19, !dbg !3470
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %4, metadata !3469, metadata !DIExpression()) #19, !dbg !3470
  call void @llvm.dbg.value(metadata i8* %4, metadata !3458, metadata !DIExpression()) #19, !dbg !3462
  %5 = icmp eq i8* %4, null, !dbg !3473
  br i1 %5, label %6, label %9, !dbg !3474

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3475
  br i1 %7, label %19, label %8, !dbg !3478

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3479, !tbaa !1583
  br label %19, !dbg !3480

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3481
  call void @llvm.dbg.value(metadata i64 %10, metadata !3459, metadata !DIExpression()) #19, !dbg !3482
  %11 = icmp ult i64 %10, %2, !dbg !3483
  br i1 %11, label %12, label %14, !dbg !3485

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %1, metadata !3488, metadata !DIExpression()) #19, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %4, metadata !3491, metadata !DIExpression()) #19, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %13, metadata !3492, metadata !DIExpression()) #19, !dbg !3493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !3495
  br label %19, !dbg !3496

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3497
  br i1 %15, label %19, label %16, !dbg !3500

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %1, metadata !3488, metadata !DIExpression()) #19, !dbg !3503
  call void @llvm.dbg.value(metadata i8* %4, metadata !3491, metadata !DIExpression()) #19, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %17, metadata !3492, metadata !DIExpression()) #19, !dbg !3503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !3505
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3506
  store i8 0, i8* %18, align 1, !dbg !3507, !tbaa !1583
  br label %19, !dbg !3508

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3509
  ret i32 %20, !dbg !3510
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()) #19, !dbg !3515
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %2, metadata !3469, metadata !DIExpression()) #19, !dbg !3515
  ret i8* %2, !dbg !3518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3519 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3525, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 0, metadata !3526, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 0, metadata !3528, metadata !DIExpression()), !dbg !3529
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3530
  call void @llvm.dbg.value(metadata i32 %2, metadata !3527, metadata !DIExpression()), !dbg !3529
  %3 = icmp slt i32 %2, 0, !dbg !3531
  br i1 %3, label %4, label %6, !dbg !3533

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3534
  br label %24, !dbg !3535

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !3536
  %8 = icmp eq i32 %7, 0, !dbg !3536
  br i1 %8, label %13, label %9, !dbg !3538

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3539
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !3540
  %12 = icmp eq i64 %11, -1, !dbg !3541
  br i1 %12, label %16, label %13, !dbg !3542

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !3543
  %15 = icmp eq i32 %14, 0, !dbg !3543
  br i1 %15, label %16, label %18, !dbg !3544

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3526, metadata !DIExpression()), !dbg !3529
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3545
  call void @llvm.dbg.value(metadata i32 %21, metadata !3528, metadata !DIExpression()), !dbg !3529
  br label %24, !dbg !3546

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !3547
  %20 = load i32, i32* %19, align 4, !dbg !3547, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 %20, metadata !3526, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 %20, metadata !3526, metadata !DIExpression()), !dbg !3529
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3545
  call void @llvm.dbg.value(metadata i32 %21, metadata !3528, metadata !DIExpression()), !dbg !3529
  %22 = icmp eq i32 %20, 0, !dbg !3548
  br i1 %22, label %24, label %23, !dbg !3546

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3550, !tbaa !1181
  call void @llvm.dbg.value(metadata i32 -1, metadata !3528, metadata !DIExpression()), !dbg !3529
  br label %24, !dbg !3552

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3529
  ret i32 %25, !dbg !3553
}

; Function Attrs: nofree nounwind
declare !dbg !951 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !986 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !987 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3554 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3560, metadata !DIExpression()), !dbg !3561
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3562
  br i1 %2, label %6, label %3, !dbg !3564

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !3565
  %5 = icmp eq i32 %4, 0, !dbg !3565
  br i1 %5, label %6, label %8, !dbg !3566

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3567
  br label %17, !dbg !3568

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3569, metadata !DIExpression()) #19, !dbg !3574
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3576
  %10 = load i32, i32* %9, align 8, !dbg !3576, !tbaa !3394
  %11 = and i32 %10, 256, !dbg !3578
  %12 = icmp eq i32 %11, 0, !dbg !3578
  br i1 %12, label %15, label %13, !dbg !3579

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !3580
  br label %15, !dbg !3580

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3581
  br label %17, !dbg !3582

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3561
  ret i32 %18, !dbg !3583
}

; Function Attrs: nofree nounwind
declare !dbg !994 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3584 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3591, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3592, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %2, metadata !3593, metadata !DIExpression()), !dbg !3597
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3598
  %5 = load i8*, i8** %4, align 8, !dbg !3598, !tbaa !3599
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3600
  %7 = load i8*, i8** %6, align 8, !dbg !3600, !tbaa !3601
  %8 = icmp eq i8* %5, %7, !dbg !3602
  br i1 %8, label %9, label %28, !dbg !3603

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3604
  %11 = load i8*, i8** %10, align 8, !dbg !3604, !tbaa !3605
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3606
  %13 = load i8*, i8** %12, align 8, !dbg !3606, !tbaa !3607
  %14 = icmp eq i8* %11, %13, !dbg !3608
  br i1 %14, label %15, label %28, !dbg !3609

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3610
  %17 = load i8*, i8** %16, align 8, !dbg !3610, !tbaa !3611
  %18 = icmp eq i8* %17, null, !dbg !3612
  br i1 %18, label %19, label %28, !dbg !3613

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3614
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %21, metadata !3594, metadata !DIExpression()), !dbg !3616
  %22 = icmp eq i64 %21, -1, !dbg !3617
  br i1 %22, label %30, label %23, !dbg !3619

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3620
  %25 = load i32, i32* %24, align 8, !dbg !3621, !tbaa !3394
  %26 = and i32 %25, -17, !dbg !3621
  store i32 %26, i32* %24, align 8, !dbg !3621, !tbaa !3394
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3622
  store i64 %21, i64* %27, align 8, !dbg !3623, !tbaa !3624
  br label %30, !dbg !3625

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3626
  br label %30, !dbg !3627

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3597
  ret i32 %31, !dbg !3628
}

; Function Attrs: nofree nounwind
declare !dbg !1070 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !167, !172, !218, !224, !265, !418, !392, !460, !481, !484, !404, !487, !506, !545, !552, !945, !948, !991, !1032}
!llvm.ident = !{!1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073}
!llvm.module.flags = !{!1074, !1075, !1076, !1077, !1078}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 48, type: !162, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !161, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/sync.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !3, line: 40, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "MODE_FILE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "MODE_DATA", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "MODE_SYNC", value: 3, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, baseType: !6, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!26 = !{!27, !37, !98, !102, !106, !109, !112, !119, !31, !88, !134, !138, !142, !144, !148, !151, !155, !158, !159, !160}
!27 = !DISubprogram(name: "dcgettext", scope: !28, file: !28, line: 51, type: !29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!28 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !33, !33, !35}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !{}
!37 = !DISubprogram(name: "fputs_unlocked", scope: !38, file: !38, line: 662, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!38 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!39 = !DISubroutineType(types: !40)
!40 = !{!35, !33, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !44)
!43 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !60, !61, !62, !63, !67, !69, !71, !75, !78, !80, !83, !86, !87, !89, !93, !94}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !43, line: 51, baseType: !35, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !42, file: !43, line: 54, baseType: !31, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !42, file: !43, line: 55, baseType: !31, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !42, file: !43, line: 56, baseType: !31, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !42, file: !43, line: 57, baseType: !31, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !42, file: !43, line: 58, baseType: !31, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !42, file: !43, line: 59, baseType: !31, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !42, file: !43, line: 60, baseType: !31, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !42, file: !43, line: 61, baseType: !31, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !42, file: !43, line: 64, baseType: !31, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !42, file: !43, line: 65, baseType: !31, size: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !42, file: !43, line: 66, baseType: !31, size: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !42, file: !43, line: 68, baseType: !58, size: 64, offset: 768)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !43, line: 36, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !42, file: !43, line: 70, baseType: !41, size: 64, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !42, file: !43, line: 72, baseType: !35, size: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !43, line: 73, baseType: !35, size: 32, offset: 928)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !42, file: !43, line: 74, baseType: !64, size: 64, offset: 960)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !65, line: 152, baseType: !66)
!65 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !42, file: !43, line: 77, baseType: !68, size: 16, offset: 1024)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !42, file: !43, line: 78, baseType: !70, size: 8, offset: 1040)
!70 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !42, file: !43, line: 79, baseType: !72, size: 8, offset: 1048)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !43, line: 81, baseType: !76, size: 64, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !43, line: 43, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !43, line: 89, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !65, line: 153, baseType: !66)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !42, file: !43, line: 91, baseType: !81, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !43, line: 37, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !42, file: !43, line: 92, baseType: !84, size: 64, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !43, line: 38, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !42, file: !43, line: 93, baseType: !41, size: 64, offset: 1344)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !42, file: !43, line: 94, baseType: !88, size: 64, offset: 1408)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !42, file: !43, line: 95, baseType: !90, size: 64, offset: 1472)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 46, baseType: !92)
!91 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!92 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !42, file: !43, line: 96, baseType: !35, size: 32, offset: 1536)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !42, file: !43, line: 98, baseType: !95, size: 160, offset: 1568)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 20)
!98 = !DISubprogram(name: "set_program_name", scope: !99, file: !99, line: 37, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!99 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!100 = !DISubroutineType(types: !101)
!101 = !{null, !33}
!102 = !DISubprogram(name: "setlocale", scope: !103, file: !103, line: 122, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!103 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!104 = !DISubroutineType(types: !105)
!105 = !{!31, !35, !33}
!106 = !DISubprogram(name: "bindtextdomain", scope: !28, file: !28, line: 86, type: !107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!107 = !DISubroutineType(types: !108)
!108 = !{!31, !33, !33}
!109 = !DISubprogram(name: "textdomain", scope: !28, file: !28, line: 82, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!110 = !DISubroutineType(types: !111)
!111 = !{!31, !33}
!112 = !DISubprogram(name: "atexit", scope: !113, file: !113, line: 595, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!113 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!114 = !DISubroutineType(types: !115)
!115 = !{!35, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null}
!119 = !DISubprogram(name: "getopt_long", scope: !120, file: !120, line: 66, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!120 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!121 = !DISubroutineType(types: !122)
!122 = !{!35, !35, !123, !33, !125, !132}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !120, line: 50, size: 256, elements: !128)
!128 = !{!129, !130, !131, !133}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !120, line: 52, baseType: !33, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !127, file: !120, line: 55, baseType: !35, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !127, file: !120, line: 56, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !127, file: !120, line: 57, baseType: !35, size: 32, offset: 192)
!134 = !DISubprogram(name: "version_etc", scope: !135, file: !135, line: 69, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!135 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!136 = !DISubroutineType(types: !137)
!137 = !{null, !41, !33, !33, !33, null}
!138 = !DISubprogram(name: "error", scope: !139, file: !139, line: 52, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!139 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!140 = !DISubroutineType(types: !141)
!141 = !{null, !35, !35, !33, null}
!142 = !DISubprogram(name: "sync", scope: !143, file: !143, line: 970, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!143 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!144 = !DISubprogram(name: "open", scope: !145, file: !145, line: 196, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!145 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!146 = !DISubroutineType(types: !147)
!147 = !{!35, !33, !35, null}
!148 = !DISubprogram(name: "quotearg_style", scope: !13, file: !13, line: 377, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!149 = !DISubroutineType(types: !150)
!150 = !{!31, !12, !33}
!151 = !DISubprogram(name: "rpl_fcntl", scope: !152, file: !152, line: 588, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!152 = !DIFile(filename: "./lib/fcntl.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !DISubroutineType(types: !154)
!154 = !{!35, !35, !35, null}
!155 = !DISubprogram(name: "fdatasync", scope: !143, file: !143, line: 1115, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!156 = !DISubroutineType(types: !157)
!157 = !{!35, !35}
!158 = !DISubprogram(name: "fsync", scope: !143, file: !143, line: 954, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!159 = !DISubprogram(name: "syncfs", scope: !143, file: !143, line: 960, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!160 = !DISubprogram(name: "close", scope: !143, file: !143, line: 353, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!161 = !{!0}
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1280, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 5)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "Version", scope: !167, file: !168, line: 2, type: !33, isLocal: false, isDefinition: true)
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !169, splitDebugInlining: false, nameTableKind: None)
!168 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = !{!165}
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "file_name", scope: !172, file: !173, line: 46, type: !33, isLocal: true, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !174, globals: !212, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = !{!175, !27, !211, !138}
!175 = !DISubprogram(name: "close_stream", scope: !176, file: !176, line: 2, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!176 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !DISubroutineType(types: !178)
!178 = !{!35, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !180, file: !43, line: 51, baseType: !35, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !180, file: !43, line: 54, baseType: !31, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !180, file: !43, line: 55, baseType: !31, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !180, file: !43, line: 56, baseType: !31, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !180, file: !43, line: 57, baseType: !31, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !180, file: !43, line: 58, baseType: !31, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !180, file: !43, line: 59, baseType: !31, size: 64, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !180, file: !43, line: 60, baseType: !31, size: 64, offset: 448)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !180, file: !43, line: 61, baseType: !31, size: 64, offset: 512)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !180, file: !43, line: 64, baseType: !31, size: 64, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !180, file: !43, line: 65, baseType: !31, size: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !180, file: !43, line: 66, baseType: !31, size: 64, offset: 704)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !180, file: !43, line: 68, baseType: !58, size: 64, offset: 768)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !180, file: !43, line: 70, baseType: !179, size: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !180, file: !43, line: 72, baseType: !35, size: 32, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !180, file: !43, line: 73, baseType: !35, size: 32, offset: 928)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !180, file: !43, line: 74, baseType: !64, size: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !180, file: !43, line: 77, baseType: !68, size: 16, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !180, file: !43, line: 78, baseType: !70, size: 8, offset: 1040)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !180, file: !43, line: 79, baseType: !72, size: 8, offset: 1048)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !180, file: !43, line: 81, baseType: !76, size: 64, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !180, file: !43, line: 89, baseType: !79, size: 64, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !180, file: !43, line: 91, baseType: !81, size: 64, offset: 1216)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !180, file: !43, line: 92, baseType: !84, size: 64, offset: 1280)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !180, file: !43, line: 93, baseType: !179, size: 64, offset: 1344)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !180, file: !43, line: 94, baseType: !88, size: 64, offset: 1408)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !180, file: !43, line: 95, baseType: !90, size: 64, offset: 1472)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !180, file: !43, line: 96, baseType: !35, size: 32, offset: 1536)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !180, file: !43, line: 98, baseType: !95, size: 160, offset: 1568)
!211 = !DISubprogram(name: "quotearg_colon", scope: !13, file: !13, line: 391, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!212 = !{!170, !213}
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !172, file: !173, line: 56, type: !215, isLocal: true, isDefinition: true)
!215 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "exit_failure", scope: !218, file: !219, line: 24, type: !221, isLocal: false, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !220, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = !{!216}
!221 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "program_name", scope: !224, file: !225, line: 33, type: !33, isLocal: false, isDefinition: true)
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !226, globals: !262, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!226 = !{!88, !227, !31}
!227 = !DISubprogram(name: "fputs", scope: !38, file: !38, line: 626, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!228 = !DISubroutineType(types: !229)
!229 = !{!35, !33, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !231, file: !43, line: 51, baseType: !35, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !231, file: !43, line: 54, baseType: !31, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !231, file: !43, line: 55, baseType: !31, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !231, file: !43, line: 56, baseType: !31, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !231, file: !43, line: 57, baseType: !31, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !231, file: !43, line: 58, baseType: !31, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !231, file: !43, line: 59, baseType: !31, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !231, file: !43, line: 60, baseType: !31, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !231, file: !43, line: 61, baseType: !31, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !231, file: !43, line: 64, baseType: !31, size: 64, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !231, file: !43, line: 65, baseType: !31, size: 64, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !231, file: !43, line: 66, baseType: !31, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !231, file: !43, line: 68, baseType: !58, size: 64, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !231, file: !43, line: 70, baseType: !230, size: 64, offset: 832)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !231, file: !43, line: 72, baseType: !35, size: 32, offset: 896)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !231, file: !43, line: 73, baseType: !35, size: 32, offset: 928)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !231, file: !43, line: 74, baseType: !64, size: 64, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !231, file: !43, line: 77, baseType: !68, size: 16, offset: 1024)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !231, file: !43, line: 78, baseType: !70, size: 8, offset: 1040)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !231, file: !43, line: 79, baseType: !72, size: 8, offset: 1048)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !231, file: !43, line: 81, baseType: !76, size: 64, offset: 1088)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !231, file: !43, line: 89, baseType: !79, size: 64, offset: 1152)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !231, file: !43, line: 91, baseType: !81, size: 64, offset: 1216)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !231, file: !43, line: 92, baseType: !84, size: 64, offset: 1280)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !231, file: !43, line: 93, baseType: !230, size: 64, offset: 1344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !231, file: !43, line: 94, baseType: !88, size: 64, offset: 1408)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !231, file: !43, line: 95, baseType: !90, size: 64, offset: 1472)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !231, file: !43, line: 96, baseType: !35, size: 32, offset: 1536)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !231, file: !43, line: 98, baseType: !95, size: 160, offset: 1568)
!262 = !{!222}
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !265, file: !266, line: 85, type: !386, isLocal: false, isDefinition: true)
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !267, retainedTypes: !288, globals: !359, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!267 = !{!12, !268, !273}
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, baseType: !6, size: 32, elements: !269)
!269 = !{!270, !271, !272}
!270 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!271 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!272 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 46, baseType: !6, size: 32, elements: !275)
!274 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!276 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!277 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!278 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!279 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!280 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!281 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!282 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!283 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!284 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!285 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!286 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!287 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!288 = !{!289, !295, !311, !314, !35, !68, !317, !90, !334, !338, !27, !344, !348, !31, !352, !355, !356}
!289 = !DISubprogram(name: "xmemdup", scope: !290, file: !290, line: 62, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!290 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!291 = !DISubroutineType(types: !292)
!292 = !{!88, !293, !92}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!295 = !DISubprogram(name: "quotearg_alloc_mem", scope: !13, file: !13, line: 342, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!296 = !DISubroutineType(types: !297)
!297 = !{!31, !33, !92, !298, !299}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !266, line: 65, size: 448, elements: !302)
!302 = !{!303, !304, !305, !309, !310}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !301, file: !266, line: 68, baseType: !12, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !266, line: 71, baseType: !35, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !301, file: !266, line: 75, baseType: !306, size: 256, offset: 64)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !301, file: !266, line: 78, baseType: !33, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !301, file: !266, line: 81, baseType: !33, size: 64, offset: 384)
!311 = !DISubprogram(name: "free", scope: !113, file: !113, line: 565, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !88}
!314 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !13, file: !13, line: 408, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!315 = !DISubroutineType(types: !316)
!316 = !{!31, !35, !33, !33, !33, !92}
!317 = !DISubprogram(name: "rpl_mbrtowc", scope: !318, file: !318, line: 717, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!318 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!319 = !DISubroutineType(types: !320)
!320 = !{!92, !132, !33, !92, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !323, line: 13, size: 64, elements: !324)
!323 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !322, file: !323, line: 15, baseType: !35, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !322, file: !323, line: 20, baseType: !327, size: 32, offset: 32)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !323, line: 16, size: 32, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !327, file: !323, line: 18, baseType: !6, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !327, file: !323, line: 19, baseType: !331, size: 32)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 4)
!334 = !DISubprogram(name: "iswprint", scope: !335, file: !335, line: 120, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!335 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!336 = !DISubroutineType(types: !337)
!337 = !{!35, !6}
!338 = !DISubprogram(name: "mbsinit", scope: !339, file: !339, line: 292, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!339 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!340 = !DISubroutineType(types: !341)
!341 = !{!35, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!344 = !DISubprogram(name: "locale_charset", scope: !345, file: !345, line: 35, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!345 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!346 = !DISubroutineType(types: !347)
!347 = !{!33}
!348 = !DISubprogram(name: "c_strcasecmp", scope: !349, file: !349, line: 42, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!349 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = !DISubroutineType(types: !351)
!351 = !{!35, !33, !33}
!352 = !DISubprogram(name: "xmalloc", scope: !290, file: !290, line: 53, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!353 = !DISubroutineType(types: !354)
!354 = !{!88, !92}
!355 = !DISubprogram(name: "xalloc_die", scope: !290, file: !290, line: 51, type: !117, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !36)
!356 = !DISubprogram(name: "xrealloc", scope: !290, file: !290, line: 59, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!357 = !DISubroutineType(types: !358)
!358 = !{!88, !88, !92}
!359 = !{!263, !360, !366, !368, !370, !375, !382, !384}
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !265, file: !266, line: 101, type: !362, isLocal: false, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 320, elements: !364)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!364 = !{!365}
!365 = !DISubrange(count: 10)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !265, file: !266, line: 1052, type: !301, isLocal: false, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !265, file: !266, line: 116, type: !301, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "slot0", scope: !265, file: !266, line: 842, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 256)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "slotvec", scope: !265, file: !266, line: 845, type: !377, isLocal: true, isDefinition: true)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !266, line: 834, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !378, file: !266, line: 836, baseType: !90, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !266, line: 837, baseType: !31, size: 64, offset: 64)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "nslots", scope: !265, file: !266, line: 843, type: !35, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "slotvec0", scope: !265, file: !266, line: 844, type: !378, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 704, elements: !388)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!388 = !{!389}
!389 = !DISubrange(count: 11)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !392, file: !393, line: 26, type: !395, isLocal: false, isDefinition: true)
!392 = distinct !DICompileUnit(language: DW_LANG_C99, file: !393, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, globals: !394, splitDebugInlining: false, nameTableKind: None)
!393 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!394 = !{!390}
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 376, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 47)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !400, file: !401, line: 507, type: !35, isLocal: true, isDefinition: true)
!400 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !401, file: !401, line: 488, type: !402, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !408)
!401 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!402 = !DISubroutineType(types: !403)
!403 = !{!35, !35, !35}
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !405, globals: !407, splitDebugInlining: false, nameTableKind: None)
!405 = !{!406, !160}
!406 = !DISubprogram(name: "fcntl", scope: !145, file: !145, line: 176, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!407 = !{!398}
!408 = !{!409, !410, !411, !412, !415}
!409 = !DILocalVariable(name: "fd", arg: 1, scope: !400, file: !401, line: 488, type: !35)
!410 = !DILocalVariable(name: "target", arg: 2, scope: !400, file: !401, line: 488, type: !35)
!411 = !DILocalVariable(name: "result", scope: !400, file: !401, line: 490, type: !35)
!412 = !DILocalVariable(name: "flags", scope: !413, file: !401, line: 531, type: !35)
!413 = distinct !DILexicalBlock(scope: !414, file: !401, line: 530, column: 5)
!414 = distinct !DILexicalBlock(scope: !400, file: !401, line: 529, column: 7)
!415 = !DILocalVariable(name: "saved_errno", scope: !416, file: !401, line: 534, type: !35)
!416 = distinct !DILexicalBlock(scope: !417, file: !401, line: 533, column: 9)
!417 = distinct !DILexicalBlock(scope: !413, file: !401, line: 532, column: 11)
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !420, retainedTypes: !424, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!420 = !{!421}
!421 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !419, line: 40, baseType: !6, size: 32, elements: !422)
!422 = !{!423}
!423 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!424 = !{!27, !425, !88}
!425 = !DISubprogram(name: "fputs_unlocked", scope: !38, file: !38, line: 662, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!426 = !DISubroutineType(types: !427)
!427 = !{!35, !33, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !429, file: !43, line: 51, baseType: !35, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !429, file: !43, line: 54, baseType: !31, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !429, file: !43, line: 55, baseType: !31, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !429, file: !43, line: 56, baseType: !31, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !429, file: !43, line: 57, baseType: !31, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !429, file: !43, line: 58, baseType: !31, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !429, file: !43, line: 59, baseType: !31, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !429, file: !43, line: 60, baseType: !31, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !429, file: !43, line: 61, baseType: !31, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !429, file: !43, line: 64, baseType: !31, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !429, file: !43, line: 65, baseType: !31, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !429, file: !43, line: 66, baseType: !31, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !429, file: !43, line: 68, baseType: !58, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !429, file: !43, line: 70, baseType: !428, size: 64, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !429, file: !43, line: 72, baseType: !35, size: 32, offset: 896)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !429, file: !43, line: 73, baseType: !35, size: 32, offset: 928)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !429, file: !43, line: 74, baseType: !64, size: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !429, file: !43, line: 77, baseType: !68, size: 16, offset: 1024)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !429, file: !43, line: 78, baseType: !70, size: 8, offset: 1040)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !429, file: !43, line: 79, baseType: !72, size: 8, offset: 1048)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !429, file: !43, line: 81, baseType: !76, size: 64, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !429, file: !43, line: 89, baseType: !79, size: 64, offset: 1152)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !429, file: !43, line: 91, baseType: !81, size: 64, offset: 1216)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !429, file: !43, line: 92, baseType: !84, size: 64, offset: 1280)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !429, file: !43, line: 93, baseType: !428, size: 64, offset: 1344)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !429, file: !43, line: 94, baseType: !88, size: 64, offset: 1408)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !429, file: !43, line: 95, baseType: !90, size: 64, offset: 1472)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !429, file: !43, line: 96, baseType: !35, size: 32, offset: 1536)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !429, file: !43, line: 98, baseType: !95, size: 160, offset: 1568)
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !462, retainedTypes: !475, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!462 = !{!463}
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !464, file: !290, line: 186, baseType: !6, size: 32, elements: !473)
!464 = distinct !DISubprogram(name: "x2nrealloc", scope: !290, file: !290, line: 174, type: !465, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !468)
!465 = !DISubroutineType(types: !466)
!466 = !{!88, !88, !467, !90}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!468 = !{!469, !470, !471, !472}
!469 = !DILocalVariable(name: "p", arg: 1, scope: !464, file: !290, line: 174, type: !88)
!470 = !DILocalVariable(name: "pn", arg: 2, scope: !464, file: !290, line: 174, type: !467)
!471 = !DILocalVariable(name: "s", arg: 3, scope: !464, file: !290, line: 174, type: !90)
!472 = !DILocalVariable(name: "n", scope: !464, file: !290, line: 176, type: !90)
!473 = !{!474}
!474 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!475 = !{!90, !355, !352, !356, !31, !311, !88, !476, !479}
!476 = !DISubprogram(name: "xcalloc", scope: !290, file: !290, line: 57, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!477 = !DISubroutineType(types: !478)
!478 = !{!88, !92, !92}
!479 = !DISubprogram(name: "rpl_calloc", scope: !480, file: !480, line: 688, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!480 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !483, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!483 = !{!27, !138}
!484 = distinct !DICompileUnit(language: DW_LANG_C99, file: !485, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !486, splitDebugInlining: false, nameTableKind: None)
!485 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!486 = !{!88}
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !488, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !489, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!489 = !{!490, !90, !502}
!490 = !DISubprogram(name: "mbrtowc", scope: !339, file: !339, line: 296, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!491 = !DISubroutineType(types: !492)
!492 = !{!92, !132, !33, !92, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !323, line: 13, size: 64, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !494, file: !323, line: 15, baseType: !35, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !494, file: !323, line: 20, baseType: !498, size: 32, offset: 32)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !323, line: 16, size: 32, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !498, file: !323, line: 18, baseType: !6, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !498, file: !323, line: 19, baseType: !331, size: 32)
!502 = !DISubprogram(name: "hard_locale", scope: !503, file: !503, line: 26, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!503 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!504 = !DISubroutineType(types: !505)
!505 = !{!215, !35}
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !508, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!508 = !{!509}
!509 = !DISubprogram(name: "rpl_fclose", scope: !510, file: !510, line: 672, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!510 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!511 = !DISubroutineType(types: !512)
!512 = !{!35, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !514, file: !43, line: 51, baseType: !35, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !514, file: !43, line: 54, baseType: !31, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !514, file: !43, line: 55, baseType: !31, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !514, file: !43, line: 56, baseType: !31, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !514, file: !43, line: 57, baseType: !31, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !514, file: !43, line: 58, baseType: !31, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !514, file: !43, line: 59, baseType: !31, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !514, file: !43, line: 60, baseType: !31, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !514, file: !43, line: 61, baseType: !31, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !514, file: !43, line: 64, baseType: !31, size: 64, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !514, file: !43, line: 65, baseType: !31, size: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !514, file: !43, line: 66, baseType: !31, size: 64, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !514, file: !43, line: 68, baseType: !58, size: 64, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !514, file: !43, line: 70, baseType: !513, size: 64, offset: 832)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !514, file: !43, line: 72, baseType: !35, size: 32, offset: 896)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !514, file: !43, line: 73, baseType: !35, size: 32, offset: 928)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !514, file: !43, line: 74, baseType: !64, size: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !514, file: !43, line: 77, baseType: !68, size: 16, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !514, file: !43, line: 78, baseType: !70, size: 8, offset: 1040)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !514, file: !43, line: 79, baseType: !72, size: 8, offset: 1048)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !514, file: !43, line: 81, baseType: !76, size: 64, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !514, file: !43, line: 89, baseType: !79, size: 64, offset: 1152)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !514, file: !43, line: 91, baseType: !81, size: 64, offset: 1216)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !514, file: !43, line: 92, baseType: !84, size: 64, offset: 1280)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !514, file: !43, line: 93, baseType: !513, size: 64, offset: 1344)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !514, file: !43, line: 94, baseType: !88, size: 64, offset: 1408)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !514, file: !43, line: 95, baseType: !90, size: 64, offset: 1472)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !514, file: !43, line: 96, baseType: !35, size: 32, offset: 1536)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !514, file: !43, line: 98, baseType: !95, size: 160, offset: 1568)
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !547, splitDebugInlining: false, nameTableKind: None)
!546 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!547 = !{!548}
!548 = !DISubprogram(name: "setlocale_null_r", scope: !549, file: !549, line: 64, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!549 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!550 = !DISubroutineType(types: !551)
!551 = !{!35, !35, !31, !92}
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !554, retainedTypes: !941, splitDebugInlining: false, nameTableKind: None)
!553 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!554 = !{!555}
!555 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !556, line: 41, baseType: !6, size: 32, elements: !557)
!556 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940}
!558 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!559 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!560 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!561 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!562 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!563 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!564 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!565 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!566 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!567 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!568 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!569 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!570 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!571 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!572 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!573 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!574 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!575 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!576 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!577 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!578 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!579 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!580 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!581 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!582 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!583 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!584 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!585 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!586 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!587 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!588 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!589 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!590 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!591 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!592 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!593 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!594 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!595 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!596 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!597 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!598 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!599 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!600 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!601 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!602 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!603 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!604 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!605 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!606 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!607 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!666 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!669 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!670 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!671 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!672 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!673 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!674 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!675 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!676 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!677 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!678 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!679 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!680 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!753 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!826 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!827 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!828 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!829 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!830 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!831 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!832 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!833 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!834 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!835 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!836 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!837 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!838 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!839 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!840 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!842 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!843 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!844 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!845 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!846 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!847 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!873 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!874 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!875 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!876 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!877 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!882 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!883 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!884 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!885 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!941 = !{!942, !88}
!942 = !DISubprogram(name: "nl_langinfo", scope: !556, file: !556, line: 661, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!943 = !DISubroutineType(types: !944)
!944 = !{!31, !35}
!945 = distinct !DICompileUnit(language: DW_LANG_C99, file: !946, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !947, splitDebugInlining: false, nameTableKind: None)
!946 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!947 = !{!88, !102}
!948 = distinct !DICompileUnit(language: DW_LANG_C99, file: !949, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !950, splitDebugInlining: false, nameTableKind: None)
!949 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!950 = !{!951, !986, !987, !990}
!951 = !DISubprogram(name: "fileno", scope: !38, file: !38, line: 786, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!952 = !DISubroutineType(types: !953)
!953 = !{!35, !954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !956)
!956 = !{!957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !955, file: !43, line: 51, baseType: !35, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !955, file: !43, line: 54, baseType: !31, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !955, file: !43, line: 55, baseType: !31, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !955, file: !43, line: 56, baseType: !31, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !955, file: !43, line: 57, baseType: !31, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !955, file: !43, line: 58, baseType: !31, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !955, file: !43, line: 59, baseType: !31, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !955, file: !43, line: 60, baseType: !31, size: 64, offset: 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !955, file: !43, line: 61, baseType: !31, size: 64, offset: 512)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !955, file: !43, line: 64, baseType: !31, size: 64, offset: 576)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !955, file: !43, line: 65, baseType: !31, size: 64, offset: 640)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !955, file: !43, line: 66, baseType: !31, size: 64, offset: 704)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !955, file: !43, line: 68, baseType: !58, size: 64, offset: 768)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !955, file: !43, line: 70, baseType: !954, size: 64, offset: 832)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !955, file: !43, line: 72, baseType: !35, size: 32, offset: 896)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !955, file: !43, line: 73, baseType: !35, size: 32, offset: 928)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !955, file: !43, line: 74, baseType: !64, size: 64, offset: 960)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !955, file: !43, line: 77, baseType: !68, size: 16, offset: 1024)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !955, file: !43, line: 78, baseType: !70, size: 8, offset: 1040)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !955, file: !43, line: 79, baseType: !72, size: 8, offset: 1048)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !955, file: !43, line: 81, baseType: !76, size: 64, offset: 1088)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !955, file: !43, line: 89, baseType: !79, size: 64, offset: 1152)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !955, file: !43, line: 91, baseType: !81, size: 64, offset: 1216)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !955, file: !43, line: 92, baseType: !84, size: 64, offset: 1280)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !955, file: !43, line: 93, baseType: !954, size: 64, offset: 1344)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !955, file: !43, line: 94, baseType: !88, size: 64, offset: 1408)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !955, file: !43, line: 95, baseType: !90, size: 64, offset: 1472)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !955, file: !43, line: 96, baseType: !35, size: 32, offset: 1536)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !955, file: !43, line: 98, baseType: !95, size: 160, offset: 1568)
!986 = !DISubprogram(name: "fclose", scope: !38, file: !38, line: 213, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!987 = !DISubprogram(name: "lseek", scope: !143, file: !143, line: 334, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!988 = !DISubroutineType(types: !989)
!989 = !{!66, !35, !66, !35}
!990 = !DISubprogram(name: "rpl_fflush", scope: !510, file: !510, line: 718, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!991 = distinct !DICompileUnit(language: DW_LANG_C99, file: !992, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !993, splitDebugInlining: false, nameTableKind: None)
!992 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!993 = !{!88, !994, !1029}
!994 = !DISubprogram(name: "fflush", scope: !38, file: !38, line: 218, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!995 = !DISubroutineType(types: !996)
!996 = !{!35, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !999)
!999 = !{!1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !998, file: !43, line: 51, baseType: !35, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !998, file: !43, line: 54, baseType: !31, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !998, file: !43, line: 55, baseType: !31, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !998, file: !43, line: 56, baseType: !31, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !998, file: !43, line: 57, baseType: !31, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !998, file: !43, line: 58, baseType: !31, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !998, file: !43, line: 59, baseType: !31, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !998, file: !43, line: 60, baseType: !31, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !998, file: !43, line: 61, baseType: !31, size: 64, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !998, file: !43, line: 64, baseType: !31, size: 64, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !998, file: !43, line: 65, baseType: !31, size: 64, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !998, file: !43, line: 66, baseType: !31, size: 64, offset: 704)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !998, file: !43, line: 68, baseType: !58, size: 64, offset: 768)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !998, file: !43, line: 70, baseType: !997, size: 64, offset: 832)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !998, file: !43, line: 72, baseType: !35, size: 32, offset: 896)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !998, file: !43, line: 73, baseType: !35, size: 32, offset: 928)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !998, file: !43, line: 74, baseType: !64, size: 64, offset: 960)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !998, file: !43, line: 77, baseType: !68, size: 16, offset: 1024)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !998, file: !43, line: 78, baseType: !70, size: 8, offset: 1040)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !998, file: !43, line: 79, baseType: !72, size: 8, offset: 1048)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !998, file: !43, line: 81, baseType: !76, size: 64, offset: 1088)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !998, file: !43, line: 89, baseType: !79, size: 64, offset: 1152)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !998, file: !43, line: 91, baseType: !81, size: 64, offset: 1216)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !998, file: !43, line: 92, baseType: !84, size: 64, offset: 1280)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !998, file: !43, line: 93, baseType: !997, size: 64, offset: 1344)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !998, file: !43, line: 94, baseType: !88, size: 64, offset: 1408)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !998, file: !43, line: 95, baseType: !90, size: 64, offset: 1472)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !998, file: !43, line: 96, baseType: !35, size: 32, offset: 1536)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !998, file: !43, line: 98, baseType: !95, size: 160, offset: 1568)
!1029 = !DISubprogram(name: "rpl_fseeko", scope: !510, file: !510, line: 1034, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!35, !997, !66, !35}
!1032 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1033, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !1034, splitDebugInlining: false, nameTableKind: None)
!1033 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1034 = !{!88, !1035, !987, !1070}
!1035 = !DISubprogram(name: "fileno", scope: !38, file: !38, line: 786, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!35, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1039, file: !43, line: 51, baseType: !35, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1039, file: !43, line: 54, baseType: !31, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1039, file: !43, line: 55, baseType: !31, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1039, file: !43, line: 56, baseType: !31, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1039, file: !43, line: 57, baseType: !31, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1039, file: !43, line: 58, baseType: !31, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1039, file: !43, line: 59, baseType: !31, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1039, file: !43, line: 60, baseType: !31, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1039, file: !43, line: 61, baseType: !31, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1039, file: !43, line: 64, baseType: !31, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1039, file: !43, line: 65, baseType: !31, size: 64, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1039, file: !43, line: 66, baseType: !31, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1039, file: !43, line: 68, baseType: !58, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1039, file: !43, line: 70, baseType: !1038, size: 64, offset: 832)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1039, file: !43, line: 72, baseType: !35, size: 32, offset: 896)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1039, file: !43, line: 73, baseType: !35, size: 32, offset: 928)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1039, file: !43, line: 74, baseType: !64, size: 64, offset: 960)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1039, file: !43, line: 77, baseType: !68, size: 16, offset: 1024)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1039, file: !43, line: 78, baseType: !70, size: 8, offset: 1040)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1039, file: !43, line: 79, baseType: !72, size: 8, offset: 1048)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1039, file: !43, line: 81, baseType: !76, size: 64, offset: 1088)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1039, file: !43, line: 89, baseType: !79, size: 64, offset: 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1039, file: !43, line: 91, baseType: !81, size: 64, offset: 1216)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1039, file: !43, line: 92, baseType: !84, size: 64, offset: 1280)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1039, file: !43, line: 93, baseType: !1038, size: 64, offset: 1344)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1039, file: !43, line: 94, baseType: !88, size: 64, offset: 1408)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1039, file: !43, line: 95, baseType: !90, size: 64, offset: 1472)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1039, file: !43, line: 96, baseType: !35, size: 32, offset: 1536)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1039, file: !43, line: 98, baseType: !95, size: 160, offset: 1568)
!1070 = !DISubprogram(name: "fseeko", scope: !38, file: !38, line: 707, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !36)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!35, !1038, !66, !35}
!1073 = !{!"clang version 10.0.0 "}
!1074 = !{i32 7, !"Dwarf Version", i32 4}
!1075 = !{i32 2, !"Debug Info Version", i32 3}
!1076 = !{i32 1, !"wchar_size", i32 4}
!1077 = !{i32 7, !"PIC Level", i32 2}
!1078 = !{i32 7, !"PIE Level", i32 2}
!1079 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 58, type: !1080, scopeLine: 59, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1082)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !35}
!1082 = !{!1083}
!1083 = !DILocalVariable(name: "status", arg: 1, scope: !1079, file: !3, line: 58, type: !35)
!1084 = !DILocalVariable(name: "infomap", scope: !1085, file: !1086, line: 636, type: !1098)
!1085 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1086, file: !1086, line: 634, type: !100, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1086 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1087 = !{!1088, !1084, !1089, !1090, !1097}
!1088 = !DILocalVariable(name: "program", arg: 1, scope: !1085, file: !1086, line: 634, type: !33)
!1089 = !DILocalVariable(name: "node", scope: !1085, file: !1086, line: 646, type: !33)
!1090 = !DILocalVariable(name: "map_prog", scope: !1085, file: !1086, line: 647, type: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1085, file: !1086, line: 636, size: 128, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1093, file: !1086, line: 636, baseType: !33, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1093, file: !1086, line: 636, baseType: !33, size: 64, offset: 64)
!1097 = !DILocalVariable(name: "lc_messages", scope: !1085, file: !1086, line: 659, type: !33)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1092, size: 896, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 7)
!1101 = !DILocation(line: 636, column: 67, scope: !1085, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 82, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 63, column: 5)
!1104 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 60, column: 7)
!1105 = !DILocation(line: 0, scope: !1079)
!1106 = !DILocation(line: 60, column: 14, scope: !1104)
!1107 = !DILocation(line: 60, column: 7, scope: !1079)
!1108 = !DILocation(line: 61, column: 5, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 61, column: 5)
!1110 = !{!1111, !1111, i64 0}
!1111 = !{!"any pointer", !1112, i64 0}
!1112 = !{!"omnipotent char", !1113, i64 0}
!1113 = !{!"Simple C/C++ TBAA"}
!1114 = !DILocation(line: 64, column: 7, scope: !1103)
!1115 = !DILocation(line: 65, column: 7, scope: !1103)
!1116 = !DILocation(line: 73, column: 7, scope: !1103)
!1117 = !DILocation(line: 76, column: 7, scope: !1103)
!1118 = !DILocation(line: 80, column: 7, scope: !1103)
!1119 = !DILocation(line: 81, column: 7, scope: !1103)
!1120 = !DILocation(line: 0, scope: !1085, inlinedAt: !1102)
!1121 = !DILocation(line: 636, column: 3, scope: !1085, inlinedAt: !1102)
!1122 = !DILocation(line: 647, column: 36, scope: !1085, inlinedAt: !1102)
!1123 = !DILocation(line: 649, column: 3, scope: !1085, inlinedAt: !1102)
!1124 = !DILocation(line: 649, column: 33, scope: !1085, inlinedAt: !1102)
!1125 = !DILocation(line: 650, column: 13, scope: !1085, inlinedAt: !1102)
!1126 = !DILocation(line: 649, column: 20, scope: !1085, inlinedAt: !1102)
!1127 = !{!1128, !1111, i64 0}
!1128 = !{!"infomap", !1111, i64 0, !1111, i64 8}
!1129 = !DILocation(line: 649, column: 10, scope: !1085, inlinedAt: !1102)
!1130 = !DILocation(line: 649, column: 28, scope: !1085, inlinedAt: !1102)
!1131 = distinct !{!1131, !1123, !1125}
!1132 = !DILocation(line: 652, column: 17, scope: !1133, inlinedAt: !1102)
!1133 = distinct !DILexicalBlock(scope: !1085, file: !1086, line: 652, column: 7)
!1134 = !{!1128, !1111, i64 8}
!1135 = !DILocation(line: 652, column: 7, scope: !1133, inlinedAt: !1102)
!1136 = !DILocation(line: 652, column: 7, scope: !1085, inlinedAt: !1102)
!1137 = !DILocation(line: 655, column: 3, scope: !1085, inlinedAt: !1102)
!1138 = !DILocation(line: 659, column: 29, scope: !1085, inlinedAt: !1102)
!1139 = !DILocation(line: 660, column: 7, scope: !1140, inlinedAt: !1102)
!1140 = distinct !DILexicalBlock(scope: !1085, file: !1086, line: 660, column: 7)
!1141 = !DILocation(line: 660, column: 19, scope: !1140, inlinedAt: !1102)
!1142 = !DILocation(line: 660, column: 22, scope: !1140, inlinedAt: !1102)
!1143 = !DILocation(line: 660, column: 7, scope: !1085, inlinedAt: !1102)
!1144 = !DILocation(line: 666, column: 7, scope: !1145, inlinedAt: !1102)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !1086, line: 661, column: 5)
!1146 = !DILocation(line: 668, column: 5, scope: !1145, inlinedAt: !1102)
!1147 = !DILocation(line: 669, column: 3, scope: !1085, inlinedAt: !1102)
!1148 = !DILocation(line: 671, column: 3, scope: !1085, inlinedAt: !1102)
!1149 = !DILocation(line: 673, column: 1, scope: !1085, inlinedAt: !1102)
!1150 = !DILocation(line: 84, column: 3, scope: !1079)
!1151 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 172, type: !1152, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!35, !35, !1154}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163}
!1156 = !DILocalVariable(name: "argc", arg: 1, scope: !1151, file: !3, line: 172, type: !35)
!1157 = !DILocalVariable(name: "argv", arg: 2, scope: !1151, file: !3, line: 172, type: !1154)
!1158 = !DILocalVariable(name: "c", scope: !1151, file: !3, line: 174, type: !35)
!1159 = !DILocalVariable(name: "args_specified", scope: !1151, file: !3, line: 175, type: !215)
!1160 = !DILocalVariable(name: "arg_data", scope: !1151, file: !3, line: 176, type: !215)
!1161 = !DILocalVariable(name: "arg_file_system", scope: !1151, file: !3, line: 176, type: !215)
!1162 = !DILocalVariable(name: "mode", scope: !1151, file: !3, line: 177, type: !5)
!1163 = !DILocalVariable(name: "ok", scope: !1151, file: !3, line: 178, type: !215)
!1164 = !DILocation(line: 0, scope: !1151)
!1165 = !DILocation(line: 181, column: 21, scope: !1151)
!1166 = !DILocation(line: 181, column: 3, scope: !1151)
!1167 = !DILocation(line: 182, column: 3, scope: !1151)
!1168 = !DILocation(line: 183, column: 3, scope: !1151)
!1169 = !DILocation(line: 184, column: 3, scope: !1151)
!1170 = !DILocation(line: 186, column: 3, scope: !1151)
!1171 = !DILocation(line: 188, column: 3, scope: !1151)
!1172 = !DILocation(line: 188, column: 15, scope: !1151)
!1173 = distinct !{!1173, !1171, !1174}
!1174 = !DILocation(line: 208, column: 5, scope: !1151)
!1175 = !DILocation(line: 201, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 192, column: 9)
!1177 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 190, column: 5)
!1178 = !DILocation(line: 203, column: 9, scope: !1176)
!1179 = !DILocation(line: 206, column: 11, scope: !1176)
!1180 = !DILocation(line: 210, column: 20, scope: !1151)
!1181 = !{!1182, !1182, i64 0}
!1182 = !{!"int", !1112, i64 0}
!1183 = !DILocation(line: 210, column: 27, scope: !1151)
!1184 = !DILocation(line: 212, column: 19, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 212, column: 7)
!1186 = !DILocation(line: 212, column: 16, scope: !1185)
!1187 = !DILocation(line: 214, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 213, column: 5)
!1189 = !DILocation(line: 212, column: 7, scope: !1185)
!1190 = !DILocation(line: 218, column: 23, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 218, column: 7)
!1192 = !DILocation(line: 219, column: 5, scope: !1191)
!1193 = !DILocation(line: 221, column: 24, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 221, column: 7)
!1195 = !DILocation(line: 230, column: 7, scope: !1151)
!1196 = !DILocation(line: 231, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 230, column: 7)
!1198 = !DILocation(line: 235, column: 31, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 234, column: 7)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 234, column: 7)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 233, column: 5)
!1202 = !DILocalVariable(name: "mode", arg: 1, scope: !1203, file: !3, line: 91, type: !5)
!1203 = distinct !DISubprogram(name: "sync_arg", scope: !3, file: !3, line: 91, type: !1204, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!215, !5, !33}
!1206 = !{!1202, !1207, !1208, !1209, !1210, !1211, !1214, !1215}
!1207 = !DILocalVariable(name: "file", arg: 2, scope: !1203, file: !3, line: 91, type: !33)
!1208 = !DILocalVariable(name: "ret", scope: !1203, file: !3, line: 93, type: !215)
!1209 = !DILocalVariable(name: "open_flags", scope: !1203, file: !3, line: 94, type: !35)
!1210 = !DILocalVariable(name: "fd", scope: !1203, file: !3, line: 95, type: !35)
!1211 = !DILocalVariable(name: "rd_errno", scope: !1212, file: !3, line: 110, type: !35)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 107, column: 5)
!1213 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 106, column: 7)
!1214 = !DILocalVariable(name: "fdflags", scope: !1203, file: !3, line: 122, type: !35)
!1215 = !DILocalVariable(name: "sync_status", scope: !1216, file: !3, line: 133, type: !35)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 132, column: 5)
!1217 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 131, column: 7)
!1218 = !DILocation(line: 0, scope: !1203, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 235, column: 15, scope: !1199)
!1220 = !DILocation(line: 105, column: 8, scope: !1203, inlinedAt: !1219)
!1221 = !DILocation(line: 106, column: 10, scope: !1213, inlinedAt: !1219)
!1222 = !DILocation(line: 106, column: 7, scope: !1203, inlinedAt: !1219)
!1223 = !DILocation(line: 110, column: 22, scope: !1212, inlinedAt: !1219)
!1224 = !DILocation(line: 0, scope: !1212, inlinedAt: !1219)
!1225 = !DILocation(line: 112, column: 14, scope: !1226, inlinedAt: !1219)
!1226 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 111, column: 11)
!1227 = !DILocation(line: 113, column: 14, scope: !1228, inlinedAt: !1219)
!1228 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 113, column: 11)
!1229 = !DILocation(line: 113, column: 11, scope: !1212, inlinedAt: !1219)
!1230 = !DILocation(line: 115, column: 31, scope: !1231, inlinedAt: !1219)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 114, column: 9)
!1232 = !DILocation(line: 115, column: 54, scope: !1231, inlinedAt: !1219)
!1233 = !DILocation(line: 115, column: 11, scope: !1231, inlinedAt: !1219)
!1234 = !DILocation(line: 122, column: 17, scope: !1203, inlinedAt: !1219)
!1235 = !DILocation(line: 123, column: 15, scope: !1236, inlinedAt: !1219)
!1236 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 123, column: 7)
!1237 = !DILocation(line: 124, column: 7, scope: !1236, inlinedAt: !1219)
!1238 = !DILocation(line: 124, column: 38, scope: !1236, inlinedAt: !1219)
!1239 = !DILocation(line: 124, column: 10, scope: !1236, inlinedAt: !1219)
!1240 = !DILocation(line: 124, column: 53, scope: !1236, inlinedAt: !1219)
!1241 = !DILocation(line: 123, column: 7, scope: !1203, inlinedAt: !1219)
!1242 = !DILocation(line: 0, scope: !1216, inlinedAt: !1219)
!1243 = !DILocation(line: 135, column: 7, scope: !1216, inlinedAt: !1219)
!1244 = !DILocation(line: 138, column: 25, scope: !1245, inlinedAt: !1219)
!1245 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 136, column: 9)
!1246 = !DILocation(line: 139, column: 11, scope: !1245, inlinedAt: !1219)
!1247 = !DILocation(line: 142, column: 25, scope: !1245, inlinedAt: !1219)
!1248 = !DILocation(line: 143, column: 11, scope: !1245, inlinedAt: !1219)
!1249 = !DILocation(line: 147, column: 25, scope: !1245, inlinedAt: !1219)
!1250 = !DILocation(line: 148, column: 11, scope: !1245, inlinedAt: !1219)
!1251 = !DILocation(line: 155, column: 23, scope: !1252, inlinedAt: !1219)
!1252 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 155, column: 11)
!1253 = !DILocation(line: 155, column: 11, scope: !1216, inlinedAt: !1219)
!1254 = !DILocation(line: 162, column: 7, scope: !1255, inlinedAt: !1219)
!1255 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 162, column: 7)
!1256 = !DILocation(line: 162, column: 18, scope: !1255, inlinedAt: !1219)
!1257 = !DILocation(line: 162, column: 7, scope: !1203, inlinedAt: !1219)
!1258 = !DILocation(line: 164, column: 17, scope: !1259, inlinedAt: !1219)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 163, column: 5)
!1260 = !DILocation(line: 164, column: 24, scope: !1259, inlinedAt: !1219)
!1261 = !DILocation(line: 164, column: 49, scope: !1259, inlinedAt: !1219)
!1262 = !DILocation(line: 164, column: 7, scope: !1259, inlinedAt: !1219)
!1263 = !DILocation(line: 166, column: 5, scope: !1259, inlinedAt: !1219)
!1264 = !DILocation(line: 168, column: 10, scope: !1203, inlinedAt: !1219)
!1265 = !DILocation(line: 235, column: 15, scope: !1199)
!1266 = !DILocation(line: 235, column: 12, scope: !1199)
!1267 = !DILocation(line: 234, column: 35, scope: !1199)
!1268 = !DILocation(line: 234, column: 21, scope: !1199)
!1269 = !DILocation(line: 234, column: 7, scope: !1200)
!1270 = distinct !{!1270, !1269, !1271}
!1271 = !DILocation(line: 235, column: 43, scope: !1200)
!1272 = !DILocation(line: 238, column: 10, scope: !1151)
!1273 = !DILocation(line: 239, column: 1, scope: !1151)
!1274 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !173, file: !173, line: 51, type: !100, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1275)
!1275 = !{!1276}
!1276 = !DILocalVariable(name: "file", arg: 1, scope: !1274, file: !173, line: 51, type: !33)
!1277 = !DILocation(line: 0, scope: !1274)
!1278 = !DILocation(line: 53, column: 13, scope: !1274)
!1279 = !DILocation(line: 54, column: 1, scope: !1274)
!1280 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !173, file: !173, line: 88, type: !1281, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !215}
!1283 = !{!1284}
!1284 = !DILocalVariable(name: "ignore", arg: 1, scope: !1280, file: !173, line: 88, type: !215)
!1285 = !DILocation(line: 0, scope: !1280)
!1286 = !DILocation(line: 90, column: 16, scope: !1280)
!1287 = !{!1288, !1288, i64 0}
!1288 = !{!"_Bool", !1112, i64 0}
!1289 = !DILocation(line: 91, column: 1, scope: !1280)
!1290 = distinct !DISubprogram(name: "close_stdout", scope: !173, file: !173, line: 117, type: !117, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1291)
!1291 = !{!1292}
!1292 = !DILocalVariable(name: "write_error", scope: !1293, file: !173, line: 122, type: !33)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !173, line: 121, column: 5)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !173, line: 119, column: 7)
!1295 = !DILocation(line: 119, column: 21, scope: !1294)
!1296 = !DILocation(line: 119, column: 7, scope: !1294)
!1297 = !DILocation(line: 119, column: 29, scope: !1294)
!1298 = !DILocation(line: 120, column: 7, scope: !1294)
!1299 = !DILocation(line: 120, column: 12, scope: !1294)
!1300 = !{i8 0, i8 2}
!1301 = !DILocation(line: 120, column: 25, scope: !1294)
!1302 = !DILocation(line: 120, column: 28, scope: !1294)
!1303 = !DILocation(line: 120, column: 34, scope: !1294)
!1304 = !DILocation(line: 119, column: 7, scope: !1290)
!1305 = !DILocation(line: 122, column: 33, scope: !1293)
!1306 = !DILocation(line: 0, scope: !1293)
!1307 = !DILocation(line: 123, column: 11, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1293, file: !173, line: 123, column: 11)
!1309 = !DILocation(line: 0, scope: !1308)
!1310 = !DILocation(line: 123, column: 11, scope: !1293)
!1311 = !DILocation(line: 124, column: 36, scope: !1308)
!1312 = !DILocation(line: 124, column: 9, scope: !1308)
!1313 = !DILocation(line: 127, column: 9, scope: !1308)
!1314 = !DILocation(line: 129, column: 14, scope: !1293)
!1315 = !DILocation(line: 129, column: 7, scope: !1293)
!1316 = !DILocation(line: 134, column: 42, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1290, file: !173, line: 134, column: 7)
!1318 = !DILocation(line: 134, column: 28, scope: !1317)
!1319 = !DILocation(line: 134, column: 50, scope: !1317)
!1320 = !DILocation(line: 134, column: 7, scope: !1290)
!1321 = !DILocation(line: 135, column: 12, scope: !1317)
!1322 = !DILocation(line: 135, column: 5, scope: !1317)
!1323 = !DILocation(line: 136, column: 1, scope: !1290)
!1324 = distinct !DISubprogram(name: "set_program_name", scope: !225, file: !225, line: 39, type: !100, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DILocalVariable(name: "argv0", arg: 1, scope: !1324, file: !225, line: 39, type: !33)
!1327 = !DILocalVariable(name: "slash", scope: !1324, file: !225, line: 46, type: !33)
!1328 = !DILocalVariable(name: "base", scope: !1324, file: !225, line: 47, type: !33)
!1329 = !DILocation(line: 0, scope: !1324)
!1330 = !DILocation(line: 51, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !225, line: 51, column: 7)
!1332 = !DILocation(line: 51, column: 7, scope: !1324)
!1333 = !DILocation(line: 55, column: 14, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !225, line: 52, column: 5)
!1335 = !DILocation(line: 54, column: 7, scope: !1334)
!1336 = !DILocation(line: 56, column: 7, scope: !1334)
!1337 = !DILocation(line: 59, column: 11, scope: !1324)
!1338 = !DILocation(line: 60, column: 17, scope: !1324)
!1339 = !DILocation(line: 60, column: 11, scope: !1324)
!1340 = !DILocation(line: 61, column: 12, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1324, file: !225, line: 61, column: 7)
!1342 = !DILocation(line: 61, column: 20, scope: !1341)
!1343 = !DILocation(line: 61, column: 25, scope: !1341)
!1344 = !DILocation(line: 61, column: 42, scope: !1341)
!1345 = !DILocation(line: 61, column: 28, scope: !1341)
!1346 = !DILocation(line: 61, column: 61, scope: !1341)
!1347 = !DILocation(line: 61, column: 7, scope: !1324)
!1348 = !DILocation(line: 64, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !225, line: 64, column: 11)
!1350 = distinct !DILexicalBlock(scope: !1341, file: !225, line: 62, column: 5)
!1351 = !DILocation(line: 64, column: 36, scope: !1349)
!1352 = !DILocation(line: 64, column: 11, scope: !1350)
!1353 = !DILocation(line: 66, column: 24, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !225, line: 65, column: 9)
!1355 = !DILocation(line: 70, column: 41, scope: !1354)
!1356 = !DILocation(line: 72, column: 9, scope: !1354)
!1357 = !DILocation(line: 84, column: 16, scope: !1324)
!1358 = !DILocation(line: 90, column: 27, scope: !1324)
!1359 = !DILocation(line: 92, column: 1, scope: !1324)
!1360 = distinct !DISubprogram(name: "clone_quoting_options", scope: !266, file: !266, line: 122, type: !1361, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1364)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1363, !1363}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!1364 = !{!1365, !1366, !1367}
!1365 = !DILocalVariable(name: "o", arg: 1, scope: !1360, file: !266, line: 122, type: !1363)
!1366 = !DILocalVariable(name: "e", scope: !1360, file: !266, line: 124, type: !35)
!1367 = !DILocalVariable(name: "p", scope: !1360, file: !266, line: 125, type: !1363)
!1368 = !DILocation(line: 0, scope: !1360)
!1369 = !DILocation(line: 124, column: 11, scope: !1360)
!1370 = !DILocation(line: 125, column: 40, scope: !1360)
!1371 = !DILocation(line: 125, column: 31, scope: !1360)
!1372 = !DILocation(line: 127, column: 9, scope: !1360)
!1373 = !DILocation(line: 128, column: 3, scope: !1360)
!1374 = distinct !DISubprogram(name: "get_quoting_style", scope: !266, file: !266, line: 133, type: !1375, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1377)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!12, !299}
!1377 = !{!1378}
!1378 = !DILocalVariable(name: "o", arg: 1, scope: !1374, file: !266, line: 133, type: !299)
!1379 = !DILocation(line: 0, scope: !1374)
!1380 = !DILocation(line: 135, column: 11, scope: !1374)
!1381 = !DILocation(line: 135, column: 46, scope: !1374)
!1382 = !{!1383, !1112, i64 0}
!1383 = !{!"quoting_options", !1112, i64 0, !1182, i64 4, !1112, i64 8, !1111, i64 40, !1111, i64 48}
!1384 = !DILocation(line: 135, column: 3, scope: !1374)
!1385 = distinct !DISubprogram(name: "set_quoting_style", scope: !266, file: !266, line: 141, type: !1386, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1388)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !1363, !12}
!1388 = !{!1389, !1390}
!1389 = !DILocalVariable(name: "o", arg: 1, scope: !1385, file: !266, line: 141, type: !1363)
!1390 = !DILocalVariable(name: "s", arg: 2, scope: !1385, file: !266, line: 141, type: !12)
!1391 = !DILocation(line: 0, scope: !1385)
!1392 = !DILocation(line: 143, column: 4, scope: !1385)
!1393 = !DILocation(line: 143, column: 39, scope: !1385)
!1394 = !DILocation(line: 143, column: 45, scope: !1385)
!1395 = !DILocation(line: 144, column: 1, scope: !1385)
!1396 = distinct !DISubprogram(name: "set_char_quoting", scope: !266, file: !266, line: 152, type: !1397, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!35, !1363, !32, !35}
!1399 = !{!1400, !1401, !1402, !1403, !1405, !1407, !1408}
!1400 = !DILocalVariable(name: "o", arg: 1, scope: !1396, file: !266, line: 152, type: !1363)
!1401 = !DILocalVariable(name: "c", arg: 2, scope: !1396, file: !266, line: 152, type: !32)
!1402 = !DILocalVariable(name: "i", arg: 3, scope: !1396, file: !266, line: 152, type: !35)
!1403 = !DILocalVariable(name: "uc", scope: !1396, file: !266, line: 154, type: !1404)
!1404 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1405 = !DILocalVariable(name: "p", scope: !1396, file: !266, line: 155, type: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1407 = !DILocalVariable(name: "shift", scope: !1396, file: !266, line: 157, type: !35)
!1408 = !DILocalVariable(name: "r", scope: !1396, file: !266, line: 158, type: !35)
!1409 = !DILocation(line: 0, scope: !1396)
!1410 = !DILocation(line: 156, column: 6, scope: !1396)
!1411 = !DILocation(line: 156, column: 62, scope: !1396)
!1412 = !DILocation(line: 156, column: 57, scope: !1396)
!1413 = !DILocation(line: 157, column: 15, scope: !1396)
!1414 = !DILocation(line: 158, column: 12, scope: !1396)
!1415 = !DILocation(line: 158, column: 15, scope: !1396)
!1416 = !DILocation(line: 158, column: 25, scope: !1396)
!1417 = !DILocation(line: 159, column: 13, scope: !1396)
!1418 = !DILocation(line: 159, column: 18, scope: !1396)
!1419 = !DILocation(line: 159, column: 23, scope: !1396)
!1420 = !DILocation(line: 159, column: 6, scope: !1396)
!1421 = !DILocation(line: 160, column: 3, scope: !1396)
!1422 = distinct !DISubprogram(name: "set_quoting_flags", scope: !266, file: !266, line: 168, type: !1423, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!35, !1363, !35}
!1425 = !{!1426, !1427, !1428}
!1426 = !DILocalVariable(name: "o", arg: 1, scope: !1422, file: !266, line: 168, type: !1363)
!1427 = !DILocalVariable(name: "i", arg: 2, scope: !1422, file: !266, line: 168, type: !35)
!1428 = !DILocalVariable(name: "r", scope: !1422, file: !266, line: 170, type: !35)
!1429 = !DILocation(line: 0, scope: !1422)
!1430 = !DILocation(line: 171, column: 8, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1422, file: !266, line: 171, column: 7)
!1432 = !DILocation(line: 171, column: 7, scope: !1422)
!1433 = !DILocation(line: 173, column: 10, scope: !1422)
!1434 = !{!1383, !1182, i64 4}
!1435 = !DILocation(line: 174, column: 12, scope: !1422)
!1436 = !DILocation(line: 175, column: 3, scope: !1422)
!1437 = distinct !DISubprogram(name: "set_custom_quoting", scope: !266, file: !266, line: 179, type: !1438, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !1363, !33, !33}
!1440 = !{!1441, !1442, !1443}
!1441 = !DILocalVariable(name: "o", arg: 1, scope: !1437, file: !266, line: 179, type: !1363)
!1442 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1437, file: !266, line: 180, type: !33)
!1443 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1437, file: !266, line: 180, type: !33)
!1444 = !DILocation(line: 0, scope: !1437)
!1445 = !DILocation(line: 182, column: 8, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1437, file: !266, line: 182, column: 7)
!1447 = !DILocation(line: 182, column: 7, scope: !1437)
!1448 = !DILocation(line: 184, column: 6, scope: !1437)
!1449 = !DILocation(line: 184, column: 12, scope: !1437)
!1450 = !DILocation(line: 185, column: 8, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1437, file: !266, line: 185, column: 7)
!1452 = !DILocation(line: 185, column: 23, scope: !1451)
!1453 = !DILocation(line: 185, column: 19, scope: !1451)
!1454 = !DILocation(line: 186, column: 5, scope: !1451)
!1455 = !DILocation(line: 187, column: 6, scope: !1437)
!1456 = !DILocation(line: 187, column: 17, scope: !1437)
!1457 = !{!1383, !1111, i64 40}
!1458 = !DILocation(line: 188, column: 6, scope: !1437)
!1459 = !DILocation(line: 188, column: 18, scope: !1437)
!1460 = !{!1383, !1111, i64 48}
!1461 = !DILocation(line: 189, column: 1, scope: !1437)
!1462 = distinct !DISubprogram(name: "quotearg_buffer", scope: !266, file: !266, line: 784, type: !1463, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!90, !31, !90, !33, !90, !299}
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1466 = !DILocalVariable(name: "buffer", arg: 1, scope: !1462, file: !266, line: 784, type: !31)
!1467 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1462, file: !266, line: 784, type: !90)
!1468 = !DILocalVariable(name: "arg", arg: 3, scope: !1462, file: !266, line: 785, type: !33)
!1469 = !DILocalVariable(name: "argsize", arg: 4, scope: !1462, file: !266, line: 785, type: !90)
!1470 = !DILocalVariable(name: "o", arg: 5, scope: !1462, file: !266, line: 786, type: !299)
!1471 = !DILocalVariable(name: "p", scope: !1462, file: !266, line: 788, type: !299)
!1472 = !DILocalVariable(name: "e", scope: !1462, file: !266, line: 789, type: !35)
!1473 = !DILocalVariable(name: "r", scope: !1462, file: !266, line: 790, type: !90)
!1474 = !DILocation(line: 0, scope: !1462)
!1475 = !DILocation(line: 788, column: 37, scope: !1462)
!1476 = !DILocation(line: 789, column: 11, scope: !1462)
!1477 = !DILocation(line: 791, column: 43, scope: !1462)
!1478 = !DILocation(line: 791, column: 53, scope: !1462)
!1479 = !DILocation(line: 791, column: 60, scope: !1462)
!1480 = !DILocation(line: 792, column: 43, scope: !1462)
!1481 = !DILocation(line: 792, column: 58, scope: !1462)
!1482 = !DILocation(line: 790, column: 14, scope: !1462)
!1483 = !DILocation(line: 793, column: 9, scope: !1462)
!1484 = !DILocation(line: 794, column: 3, scope: !1462)
!1485 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !266, file: !266, line: 256, type: !1486, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1490)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!90, !31, !90, !33, !90, !12, !35, !1488, !33, !33}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1515, !1516, !1517, !1518, !1519, !1522, !1523, !1529, !1532, !1533, !1540, !1543, !1544, !1545, !1546, !1547, !1548}
!1491 = !DILocalVariable(name: "buffer", arg: 1, scope: !1485, file: !266, line: 256, type: !31)
!1492 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1485, file: !266, line: 256, type: !90)
!1493 = !DILocalVariable(name: "arg", arg: 3, scope: !1485, file: !266, line: 257, type: !33)
!1494 = !DILocalVariable(name: "argsize", arg: 4, scope: !1485, file: !266, line: 257, type: !90)
!1495 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1485, file: !266, line: 258, type: !12)
!1496 = !DILocalVariable(name: "flags", arg: 6, scope: !1485, file: !266, line: 258, type: !35)
!1497 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1485, file: !266, line: 259, type: !1488)
!1498 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1485, file: !266, line: 260, type: !33)
!1499 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1485, file: !266, line: 261, type: !33)
!1500 = !DILocalVariable(name: "i", scope: !1485, file: !266, line: 263, type: !90)
!1501 = !DILocalVariable(name: "len", scope: !1485, file: !266, line: 264, type: !90)
!1502 = !DILocalVariable(name: "orig_buffersize", scope: !1485, file: !266, line: 265, type: !90)
!1503 = !DILocalVariable(name: "quote_string", scope: !1485, file: !266, line: 266, type: !33)
!1504 = !DILocalVariable(name: "quote_string_len", scope: !1485, file: !266, line: 267, type: !90)
!1505 = !DILocalVariable(name: "backslash_escapes", scope: !1485, file: !266, line: 268, type: !215)
!1506 = !DILocalVariable(name: "unibyte_locale", scope: !1485, file: !266, line: 269, type: !215)
!1507 = !DILocalVariable(name: "elide_outer_quotes", scope: !1485, file: !266, line: 270, type: !215)
!1508 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1485, file: !266, line: 271, type: !215)
!1509 = !DILocalVariable(name: "encountered_single_quote", scope: !1485, file: !266, line: 272, type: !215)
!1510 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1485, file: !266, line: 273, type: !215)
!1511 = !DILocalVariable(name: "c", scope: !1512, file: !266, line: 402, type: !1404)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !266, line: 401, column: 5)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !266, line: 400, column: 3)
!1514 = distinct !DILexicalBlock(scope: !1485, file: !266, line: 400, column: 3)
!1515 = !DILocalVariable(name: "esc", scope: !1512, file: !266, line: 403, type: !1404)
!1516 = !DILocalVariable(name: "is_right_quote", scope: !1512, file: !266, line: 404, type: !215)
!1517 = !DILocalVariable(name: "escaping", scope: !1512, file: !266, line: 405, type: !215)
!1518 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1512, file: !266, line: 406, type: !215)
!1519 = !DILocalVariable(name: "m", scope: !1520, file: !266, line: 610, type: !90)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 608, column: 11)
!1521 = distinct !DILexicalBlock(scope: !1512, file: !266, line: 426, column: 9)
!1522 = !DILocalVariable(name: "printable", scope: !1520, file: !266, line: 612, type: !215)
!1523 = !DILocalVariable(name: "mbstate", scope: !1524, file: !266, line: 621, type: !1526)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !266, line: 620, column: 15)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !266, line: 614, column: 17)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1527, line: 6, baseType: !1528)
!1527 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !323, line: 21, baseType: !322)
!1529 = !DILocalVariable(name: "w", scope: !1530, file: !266, line: 631, type: !1531)
!1530 = distinct !DILexicalBlock(scope: !1524, file: !266, line: 630, column: 19)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !91, line: 74, baseType: !35)
!1532 = !DILocalVariable(name: "bytes", scope: !1530, file: !266, line: 632, type: !90)
!1533 = !DILocalVariable(name: "j", scope: !1534, file: !266, line: 657, type: !90)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !266, line: 656, column: 27)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !266, line: 654, column: 29)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !266, line: 649, column: 23)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !266, line: 641, column: 30)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !266, line: 636, column: 30)
!1539 = distinct !DILexicalBlock(scope: !1530, file: !266, line: 634, column: 25)
!1540 = !DILocalVariable(name: "ilim", scope: !1541, file: !266, line: 684, type: !90)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !266, line: 681, column: 15)
!1542 = distinct !DILexicalBlock(scope: !1520, file: !266, line: 680, column: 17)
!1543 = !DILabel(scope: !1485, name: "process_input", file: !266, line: 314)
!1544 = !DILabel(scope: !1521, name: "c_and_shell_escape", file: !266, line: 512)
!1545 = !DILabel(scope: !1521, name: "c_escape", file: !266, line: 517)
!1546 = !DILabel(scope: !1512, name: "store_escape", file: !266, line: 719)
!1547 = !DILabel(scope: !1512, name: "store_c", file: !266, line: 722)
!1548 = !DILabel(scope: !1485, name: "force_outer_quoting_style", file: !266, line: 763)
!1549 = !DILocation(line: 0, scope: !1485)
!1550 = !DILocation(line: 269, column: 25, scope: !1485)
!1551 = !DILocation(line: 269, column: 36, scope: !1485)
!1552 = !DILocation(line: 270, column: 8, scope: !1485)
!1553 = !DILocation(line: 0, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 526, column: 15)
!1555 = !DILocation(line: 0, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !266, line: 462, column: 19)
!1557 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 455, column: 13)
!1558 = !DILocation(line: 0, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !266, line: 449, column: 20)
!1560 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 428, column: 15)
!1561 = !DILocation(line: 0, scope: !1524)
!1562 = !DILocation(line: 0, scope: !1530)
!1563 = !DILocation(line: 0, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1512, file: !266, line: 712, column: 11)
!1565 = !DILocation(line: 273, column: 3, scope: !1485)
!1566 = !DILocation(line: 265, column: 10, scope: !1485)
!1567 = !DILocation(line: 266, column: 15, scope: !1485)
!1568 = !DILocation(line: 267, column: 10, scope: !1485)
!1569 = !DILocation(line: 268, column: 8, scope: !1485)
!1570 = !DILocation(line: 271, column: 8, scope: !1485)
!1571 = !DILocation(line: 272, column: 8, scope: !1485)
!1572 = !DILocation(line: 273, column: 8, scope: !1485)
!1573 = !DILocation(line: 314, column: 2, scope: !1485)
!1574 = !DILocation(line: 316, column: 3, scope: !1485)
!1575 = !DILocation(line: 323, column: 11, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1485, file: !266, line: 317, column: 5)
!1577 = !DILocation(line: 323, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1576, file: !266, line: 323, column: 11)
!1579 = !DILocation(line: 324, column: 9, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !266, line: 324, column: 9)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !266, line: 324, column: 9)
!1582 = !DILocation(line: 324, column: 9, scope: !1581)
!1583 = !{!1112, !1112, i64 0}
!1584 = !DILocation(line: 362, column: 26, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !266, line: 340, column: 11)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !266, line: 339, column: 13)
!1587 = distinct !DILexicalBlock(scope: !1576, file: !266, line: 338, column: 7)
!1588 = !DILocation(line: 363, column: 27, scope: !1585)
!1589 = !DILocation(line: 364, column: 11, scope: !1585)
!1590 = !DILocation(line: 365, column: 14, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !266, line: 365, column: 13)
!1592 = !DILocation(line: 365, column: 13, scope: !1587)
!1593 = !DILocation(line: 366, column: 43, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !266, line: 366, column: 11)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !266, line: 366, column: 11)
!1596 = !DILocation(line: 366, column: 11, scope: !1595)
!1597 = !DILocation(line: 367, column: 13, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !266, line: 367, column: 13)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !266, line: 367, column: 13)
!1600 = !DILocation(line: 367, column: 13, scope: !1599)
!1601 = !DILocation(line: 366, column: 70, scope: !1594)
!1602 = distinct !{!1602, !1596, !1603}
!1603 = !DILocation(line: 367, column: 13, scope: !1595)
!1604 = !DILocation(line: 264, column: 10, scope: !1485)
!1605 = !DILocation(line: 370, column: 28, scope: !1587)
!1606 = !DILocation(line: 372, column: 7, scope: !1576)
!1607 = !DILocation(line: 376, column: 7, scope: !1576)
!1608 = !DILocation(line: 379, column: 7, scope: !1576)
!1609 = !DILocation(line: 381, column: 12, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1576, file: !266, line: 381, column: 11)
!1611 = !DILocation(line: 381, column: 11, scope: !1576)
!1612 = !DILocation(line: 386, column: 12, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1576, file: !266, line: 386, column: 11)
!1614 = !DILocation(line: 386, column: 11, scope: !1576)
!1615 = !DILocation(line: 387, column: 9, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !266, line: 387, column: 9)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !266, line: 387, column: 9)
!1618 = !DILocation(line: 387, column: 9, scope: !1617)
!1619 = !DILocation(line: 394, column: 7, scope: !1576)
!1620 = !DILocation(line: 397, column: 7, scope: !1576)
!1621 = !DILocation(line: 0, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1512, file: !266, line: 408, column: 11)
!1623 = !DILocation(line: 0, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !266, line: 419, column: 15)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !266, line: 418, column: 9)
!1626 = !DILocation(line: 0, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 556, column: 15)
!1628 = !DILocation(line: 0, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 548, column: 15)
!1630 = !DILocation(line: 0, scope: !1535)
!1631 = !DILocation(line: 0, scope: !1542)
!1632 = !DILocation(line: 0, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 509, column: 15)
!1634 = !DILocation(line: 400, column: 8, scope: !1514)
!1635 = !DILocation(line: 0, scope: !1514)
!1636 = !DILocation(line: 400, column: 27, scope: !1513)
!1637 = !DILocation(line: 400, column: 19, scope: !1513)
!1638 = !DILocation(line: 400, column: 41, scope: !1513)
!1639 = !DILocation(line: 400, column: 48, scope: !1513)
!1640 = !DILocation(line: 400, column: 3, scope: !1514)
!1641 = !DILocation(line: 400, column: 60, scope: !1513)
!1642 = !DILocation(line: 0, scope: !1512)
!1643 = !DILocation(line: 409, column: 11, scope: !1622)
!1644 = !DILocation(line: 411, column: 17, scope: !1622)
!1645 = !DILocation(line: 412, column: 39, scope: !1622)
!1646 = !DILocation(line: 416, column: 32, scope: !1622)
!1647 = !DILocation(line: 412, column: 19, scope: !1622)
!1648 = !DILocation(line: 412, column: 15, scope: !1622)
!1649 = !DILocation(line: 417, column: 11, scope: !1622)
!1650 = !DILocation(line: 417, column: 26, scope: !1622)
!1651 = !DILocation(line: 417, column: 14, scope: !1622)
!1652 = !DILocation(line: 417, column: 63, scope: !1622)
!1653 = !DILocation(line: 408, column: 11, scope: !1512)
!1654 = !DILocation(line: 424, column: 11, scope: !1512)
!1655 = !DILocation(line: 425, column: 7, scope: !1512)
!1656 = !DILocation(line: 428, column: 15, scope: !1521)
!1657 = !DILocation(line: 430, column: 15, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !266, line: 430, column: 15)
!1659 = distinct !DILexicalBlock(scope: !1560, file: !266, line: 429, column: 13)
!1660 = !DILocation(line: 430, column: 15, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !266, line: 430, column: 15)
!1662 = !DILocation(line: 430, column: 15, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !266, line: 430, column: 15)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !266, line: 430, column: 15)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !266, line: 430, column: 15)
!1666 = !DILocation(line: 430, column: 15, scope: !1664)
!1667 = !DILocation(line: 430, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !266, line: 430, column: 15)
!1669 = distinct !DILexicalBlock(scope: !1665, file: !266, line: 430, column: 15)
!1670 = !DILocation(line: 430, column: 15, scope: !1669)
!1671 = !DILocation(line: 430, column: 15, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !266, line: 430, column: 15)
!1673 = distinct !DILexicalBlock(scope: !1665, file: !266, line: 430, column: 15)
!1674 = !DILocation(line: 430, column: 15, scope: !1673)
!1675 = !DILocation(line: 430, column: 15, scope: !1665)
!1676 = !DILocation(line: 430, column: 15, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !266, line: 430, column: 15)
!1678 = distinct !DILexicalBlock(scope: !1658, file: !266, line: 430, column: 15)
!1679 = !DILocation(line: 430, column: 15, scope: !1678)
!1680 = !DILocation(line: 438, column: 19, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1659, file: !266, line: 437, column: 19)
!1682 = !DILocation(line: 438, column: 24, scope: !1681)
!1683 = !DILocation(line: 438, column: 28, scope: !1681)
!1684 = !DILocation(line: 438, column: 38, scope: !1681)
!1685 = !DILocation(line: 438, column: 48, scope: !1681)
!1686 = !DILocation(line: 438, column: 59, scope: !1681)
!1687 = !DILocation(line: 440, column: 19, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !266, line: 440, column: 19)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !266, line: 440, column: 19)
!1690 = distinct !DILexicalBlock(scope: !1681, file: !266, line: 439, column: 17)
!1691 = !DILocation(line: 440, column: 19, scope: !1689)
!1692 = !DILocation(line: 441, column: 19, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !266, line: 441, column: 19)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !266, line: 441, column: 19)
!1695 = !DILocation(line: 441, column: 19, scope: !1694)
!1696 = !DILocation(line: 442, column: 17, scope: !1690)
!1697 = !DILocation(line: 449, column: 20, scope: !1560)
!1698 = !DILocation(line: 454, column: 11, scope: !1521)
!1699 = !DILocation(line: 457, column: 19, scope: !1557)
!1700 = !DILocation(line: 463, column: 19, scope: !1556)
!1701 = !DILocation(line: 463, column: 24, scope: !1556)
!1702 = !DILocation(line: 463, column: 28, scope: !1556)
!1703 = !DILocation(line: 463, column: 38, scope: !1556)
!1704 = !DILocation(line: 463, column: 47, scope: !1556)
!1705 = !DILocation(line: 463, column: 41, scope: !1556)
!1706 = !DILocation(line: 463, column: 52, scope: !1556)
!1707 = !DILocation(line: 462, column: 19, scope: !1557)
!1708 = !DILocation(line: 464, column: 25, scope: !1556)
!1709 = !DILocation(line: 464, column: 17, scope: !1556)
!1710 = !DILocation(line: 471, column: 25, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1556, file: !266, line: 465, column: 19)
!1712 = !DILocation(line: 475, column: 21, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !266, line: 475, column: 21)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !266, line: 475, column: 21)
!1715 = !DILocation(line: 475, column: 21, scope: !1714)
!1716 = !DILocation(line: 476, column: 21, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !266, line: 476, column: 21)
!1718 = distinct !DILexicalBlock(scope: !1711, file: !266, line: 476, column: 21)
!1719 = !DILocation(line: 476, column: 21, scope: !1718)
!1720 = !DILocation(line: 477, column: 21, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !266, line: 477, column: 21)
!1722 = distinct !DILexicalBlock(scope: !1711, file: !266, line: 477, column: 21)
!1723 = !DILocation(line: 477, column: 21, scope: !1722)
!1724 = !DILocation(line: 478, column: 21, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !266, line: 478, column: 21)
!1726 = distinct !DILexicalBlock(scope: !1711, file: !266, line: 478, column: 21)
!1727 = !DILocation(line: 478, column: 21, scope: !1726)
!1728 = !DILocation(line: 479, column: 21, scope: !1711)
!1729 = !DILocation(line: 492, column: 31, scope: !1521)
!1730 = !DILocation(line: 493, column: 31, scope: !1521)
!1731 = !DILocation(line: 495, column: 31, scope: !1521)
!1732 = !DILocation(line: 496, column: 31, scope: !1521)
!1733 = !DILocation(line: 497, column: 31, scope: !1521)
!1734 = !DILocation(line: 500, column: 15, scope: !1521)
!1735 = !DILocation(line: 502, column: 19, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !266, line: 501, column: 13)
!1737 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 500, column: 15)
!1738 = !DILocation(line: 509, column: 33, scope: !1633)
!1739 = !DILocation(line: 0, scope: !1521)
!1740 = !DILocation(line: 512, column: 9, scope: !1521)
!1741 = !DILocation(line: 514, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 513, column: 15)
!1743 = !DILocation(line: 517, column: 9, scope: !1521)
!1744 = !DILocation(line: 518, column: 15, scope: !1521)
!1745 = !DILocation(line: 526, column: 15, scope: !1521)
!1746 = !DILocation(line: 526, column: 40, scope: !1554)
!1747 = !DILocation(line: 526, column: 47, scope: !1554)
!1748 = !DILocation(line: 526, column: 18, scope: !1554)
!1749 = !DILocation(line: 530, column: 17, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1521, file: !266, line: 530, column: 15)
!1751 = !DILocation(line: 530, column: 15, scope: !1521)
!1752 = !DILocation(line: 535, column: 11, scope: !1521)
!1753 = !DILocation(line: 549, column: 15, scope: !1629)
!1754 = !DILocation(line: 556, column: 15, scope: !1521)
!1755 = !DILocation(line: 558, column: 19, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1627, file: !266, line: 557, column: 13)
!1757 = !DILocation(line: 561, column: 19, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1756, file: !266, line: 561, column: 19)
!1759 = !DILocation(line: 561, column: 35, scope: !1758)
!1760 = !DILocation(line: 561, column: 30, scope: !1758)
!1761 = !DILocation(line: 570, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !266, line: 570, column: 15)
!1763 = distinct !DILexicalBlock(scope: !1756, file: !266, line: 570, column: 15)
!1764 = !DILocation(line: 570, column: 15, scope: !1763)
!1765 = !DILocation(line: 571, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !266, line: 571, column: 15)
!1767 = distinct !DILexicalBlock(scope: !1756, file: !266, line: 571, column: 15)
!1768 = !DILocation(line: 571, column: 15, scope: !1767)
!1769 = !DILocation(line: 572, column: 15, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !266, line: 572, column: 15)
!1771 = distinct !DILexicalBlock(scope: !1756, file: !266, line: 572, column: 15)
!1772 = !DILocation(line: 572, column: 15, scope: !1771)
!1773 = !DILocation(line: 574, column: 13, scope: !1756)
!1774 = !DILocation(line: 614, column: 17, scope: !1520)
!1775 = !DILocation(line: 0, scope: !1520)
!1776 = !DILocation(line: 617, column: 29, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1525, file: !266, line: 615, column: 15)
!1778 = !{!1779, !1779, i64 0}
!1779 = !{!"short", !1112, i64 0}
!1780 = !DILocation(line: 617, column: 27, scope: !1777)
!1781 = !DILocation(line: 618, column: 15, scope: !1777)
!1782 = !DILocation(line: 621, column: 17, scope: !1524)
!1783 = !DILocation(line: 621, column: 27, scope: !1524)
!1784 = !DILocalVariable(name: "__dest", arg: 1, scope: !1785, file: !1786, line: 59, type: !88)
!1785 = distinct !DISubprogram(name: "memset", scope: !1786, file: !1786, line: 59, type: !1787, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1789)
!1786 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!88, !88, !35, !90}
!1789 = !{!1784, !1790, !1791}
!1790 = !DILocalVariable(name: "__ch", arg: 2, scope: !1785, file: !1786, line: 59, type: !35)
!1791 = !DILocalVariable(name: "__len", arg: 3, scope: !1785, file: !1786, line: 59, type: !90)
!1792 = !DILocation(line: 0, scope: !1785, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 622, column: 17, scope: !1524)
!1794 = !DILocation(line: 71, column: 10, scope: !1785, inlinedAt: !1793)
!1795 = !DILocation(line: 626, column: 29, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1524, file: !266, line: 626, column: 21)
!1797 = !DILocation(line: 626, column: 21, scope: !1524)
!1798 = !DILocation(line: 627, column: 29, scope: !1796)
!1799 = !DILocation(line: 627, column: 19, scope: !1796)
!1800 = !DILocation(line: 629, column: 17, scope: !1524)
!1801 = !DILocation(line: 624, column: 19, scope: !1524)
!1802 = !DILocation(line: 625, column: 27, scope: !1524)
!1803 = !DILocation(line: 631, column: 21, scope: !1530)
!1804 = !DILocation(line: 632, column: 56, scope: !1530)
!1805 = !DILocation(line: 632, column: 50, scope: !1530)
!1806 = !DILocation(line: 633, column: 53, scope: !1530)
!1807 = !DILocation(line: 632, column: 36, scope: !1530)
!1808 = !DILocation(line: 634, column: 25, scope: !1530)
!1809 = !DILocation(line: 644, column: 38, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1537, file: !266, line: 642, column: 23)
!1811 = !DILocation(line: 644, column: 48, scope: !1810)
!1812 = !DILocation(line: 644, column: 25, scope: !1810)
!1813 = !DILocation(line: 644, column: 51, scope: !1810)
!1814 = !DILocation(line: 645, column: 28, scope: !1810)
!1815 = !DILocation(line: 644, column: 34, scope: !1810)
!1816 = distinct !{!1816, !1812, !1814}
!1817 = !DILocation(line: 658, column: 43, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !266, line: 658, column: 29)
!1819 = distinct !DILexicalBlock(scope: !1534, file: !266, line: 658, column: 29)
!1820 = !DILocation(line: 655, column: 29, scope: !1535)
!1821 = !DILocation(line: 0, scope: !1534)
!1822 = !DILocation(line: 659, column: 49, scope: !1818)
!1823 = !DILocation(line: 659, column: 39, scope: !1818)
!1824 = !DILocation(line: 659, column: 31, scope: !1818)
!1825 = !DILocation(line: 658, column: 53, scope: !1818)
!1826 = !DILocation(line: 658, column: 29, scope: !1819)
!1827 = distinct !{!1827, !1826, !1828}
!1828 = !DILocation(line: 667, column: 33, scope: !1819)
!1829 = !DILocation(line: 674, column: 19, scope: !1524)
!1830 = !DILocation(line: 670, column: 41, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1536, file: !266, line: 670, column: 29)
!1832 = !DILocation(line: 670, column: 31, scope: !1831)
!1833 = !DILocation(line: 670, column: 29, scope: !1536)
!1834 = !DILocation(line: 672, column: 27, scope: !1536)
!1835 = !DILocation(line: 675, column: 26, scope: !1524)
!1836 = !DILocation(line: 675, column: 24, scope: !1524)
!1837 = !DILocation(line: 674, column: 19, scope: !1530)
!1838 = distinct !{!1838, !1800, !1839}
!1839 = !DILocation(line: 675, column: 44, scope: !1524)
!1840 = !DILocation(line: 676, column: 15, scope: !1525)
!1841 = !DILocation(line: 0, scope: !1525)
!1842 = !DILocation(line: 678, column: 40, scope: !1520)
!1843 = !DILocation(line: 680, column: 19, scope: !1542)
!1844 = !DILocation(line: 680, column: 45, scope: !1542)
!1845 = !DILocation(line: 680, column: 23, scope: !1542)
!1846 = !DILocation(line: 684, column: 33, scope: !1541)
!1847 = !DILocation(line: 0, scope: !1541)
!1848 = !DILocation(line: 686, column: 17, scope: !1541)
!1849 = !DILocation(line: 405, column: 12, scope: !1512)
!1850 = !DILocation(line: 688, column: 43, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !266, line: 688, column: 25)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !266, line: 687, column: 19)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !266, line: 686, column: 17)
!1854 = distinct !DILexicalBlock(scope: !1541, file: !266, line: 686, column: 17)
!1855 = !DILocation(line: 690, column: 25, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !266, line: 690, column: 25)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !266, line: 689, column: 23)
!1858 = !DILocation(line: 690, column: 25, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !266, line: 690, column: 25)
!1860 = !DILocation(line: 690, column: 25, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !266, line: 690, column: 25)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !266, line: 690, column: 25)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !266, line: 690, column: 25)
!1864 = !DILocation(line: 690, column: 25, scope: !1862)
!1865 = !DILocation(line: 690, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !266, line: 690, column: 25)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !266, line: 690, column: 25)
!1868 = !DILocation(line: 690, column: 25, scope: !1867)
!1869 = !DILocation(line: 690, column: 25, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !266, line: 690, column: 25)
!1871 = distinct !DILexicalBlock(scope: !1863, file: !266, line: 690, column: 25)
!1872 = !DILocation(line: 690, column: 25, scope: !1871)
!1873 = !DILocation(line: 690, column: 25, scope: !1863)
!1874 = !DILocation(line: 690, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !266, line: 690, column: 25)
!1876 = distinct !DILexicalBlock(scope: !1856, file: !266, line: 690, column: 25)
!1877 = !DILocation(line: 690, column: 25, scope: !1876)
!1878 = !DILocation(line: 691, column: 25, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !266, line: 691, column: 25)
!1880 = distinct !DILexicalBlock(scope: !1857, file: !266, line: 691, column: 25)
!1881 = !DILocation(line: 691, column: 25, scope: !1880)
!1882 = !DILocation(line: 692, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !266, line: 692, column: 25)
!1884 = distinct !DILexicalBlock(scope: !1857, file: !266, line: 692, column: 25)
!1885 = !DILocation(line: 692, column: 25, scope: !1884)
!1886 = !DILocation(line: 693, column: 38, scope: !1857)
!1887 = !DILocation(line: 693, column: 33, scope: !1857)
!1888 = !DILocation(line: 694, column: 23, scope: !1857)
!1889 = !DILocation(line: 695, column: 30, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1851, file: !266, line: 695, column: 30)
!1891 = !DILocation(line: 695, column: 30, scope: !1851)
!1892 = !DILocation(line: 697, column: 25, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !266, line: 697, column: 25)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !266, line: 697, column: 25)
!1895 = distinct !DILexicalBlock(scope: !1890, file: !266, line: 696, column: 23)
!1896 = !DILocation(line: 697, column: 25, scope: !1894)
!1897 = !DILocation(line: 699, column: 23, scope: !1895)
!1898 = !DILocation(line: 700, column: 35, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1852, file: !266, line: 700, column: 25)
!1900 = !DILocation(line: 700, column: 30, scope: !1899)
!1901 = !DILocation(line: 700, column: 25, scope: !1852)
!1902 = !DILocation(line: 702, column: 21, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !266, line: 702, column: 21)
!1904 = distinct !DILexicalBlock(scope: !1852, file: !266, line: 702, column: 21)
!1905 = !DILocation(line: 702, column: 21, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !266, line: 702, column: 21)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !266, line: 702, column: 21)
!1908 = distinct !DILexicalBlock(scope: !1903, file: !266, line: 702, column: 21)
!1909 = !DILocation(line: 702, column: 21, scope: !1907)
!1910 = !DILocation(line: 702, column: 21, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !266, line: 702, column: 21)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !266, line: 702, column: 21)
!1913 = !DILocation(line: 702, column: 21, scope: !1912)
!1914 = !DILocation(line: 702, column: 21, scope: !1908)
!1915 = !DILocation(line: 0, scope: !1852)
!1916 = !DILocation(line: 703, column: 21, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !266, line: 703, column: 21)
!1918 = distinct !DILexicalBlock(scope: !1852, file: !266, line: 703, column: 21)
!1919 = !DILocation(line: 703, column: 21, scope: !1918)
!1920 = !DILocation(line: 704, column: 25, scope: !1852)
!1921 = !DILocation(line: 686, column: 17, scope: !1853)
!1922 = distinct !{!1922, !1923, !1924}
!1923 = !DILocation(line: 686, column: 17, scope: !1854)
!1924 = !DILocation(line: 705, column: 19, scope: !1854)
!1925 = !DILocation(line: 416, column: 30, scope: !1622)
!1926 = !DILocation(line: 712, column: 34, scope: !1564)
!1927 = !DILocation(line: 715, column: 35, scope: !1564)
!1928 = !DILocation(line: 715, column: 17, scope: !1564)
!1929 = !DILocation(line: 715, column: 47, scope: !1564)
!1930 = !DILocation(line: 715, column: 65, scope: !1564)
!1931 = !DILocation(line: 716, column: 15, scope: !1564)
!1932 = !DILocation(line: 716, column: 11, scope: !1564)
!1933 = !DILocation(line: 712, column: 11, scope: !1512)
!1934 = !DILocation(line: 400, column: 10, scope: !1514)
!1935 = !DILocation(line: 719, column: 5, scope: !1512)
!1936 = !DILocation(line: 720, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1512, file: !266, line: 720, column: 7)
!1938 = !DILocation(line: 720, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1937, file: !266, line: 720, column: 7)
!1940 = !DILocation(line: 720, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !266, line: 720, column: 7)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !266, line: 720, column: 7)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !266, line: 720, column: 7)
!1944 = !DILocation(line: 720, column: 7, scope: !1942)
!1945 = !DILocation(line: 720, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !266, line: 720, column: 7)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !266, line: 720, column: 7)
!1948 = !DILocation(line: 720, column: 7, scope: !1947)
!1949 = !DILocation(line: 720, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !266, line: 720, column: 7)
!1951 = distinct !DILexicalBlock(scope: !1943, file: !266, line: 720, column: 7)
!1952 = !DILocation(line: 720, column: 7, scope: !1951)
!1953 = !DILocation(line: 720, column: 7, scope: !1943)
!1954 = !DILocation(line: 720, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !266, line: 720, column: 7)
!1956 = distinct !DILexicalBlock(scope: !1937, file: !266, line: 720, column: 7)
!1957 = !DILocation(line: 720, column: 7, scope: !1956)
!1958 = !DILocation(line: 722, column: 5, scope: !1512)
!1959 = !DILocation(line: 723, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !266, line: 723, column: 7)
!1961 = distinct !DILexicalBlock(scope: !1512, file: !266, line: 723, column: 7)
!1962 = !DILocation(line: 424, column: 9, scope: !1512)
!1963 = !DILocation(line: 723, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !266, line: 723, column: 7)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !266, line: 723, column: 7)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !266, line: 723, column: 7)
!1967 = !DILocation(line: 723, column: 7, scope: !1965)
!1968 = !DILocation(line: 723, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !266, line: 723, column: 7)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !266, line: 723, column: 7)
!1971 = !DILocation(line: 723, column: 7, scope: !1970)
!1972 = !DILocation(line: 723, column: 7, scope: !1966)
!1973 = !DILocation(line: 724, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !266, line: 724, column: 7)
!1975 = distinct !DILexicalBlock(scope: !1512, file: !266, line: 724, column: 7)
!1976 = !DILocation(line: 724, column: 7, scope: !1975)
!1977 = !DILocation(line: 726, column: 13, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1512, file: !266, line: 726, column: 11)
!1979 = !DILocation(line: 726, column: 11, scope: !1512)
!1980 = !DILocation(line: 728, column: 5, scope: !1513)
!1981 = !DILocation(line: 400, column: 75, scope: !1513)
!1982 = !DILocation(line: 400, column: 3, scope: !1513)
!1983 = distinct !{!1983, !1640, !1984}
!1984 = !DILocation(line: 728, column: 5, scope: !1514)
!1985 = !DILocation(line: 730, column: 11, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1485, file: !266, line: 730, column: 7)
!1987 = !DILocation(line: 730, column: 16, scope: !1986)
!1988 = !DILocation(line: 738, column: 51, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1485, file: !266, line: 738, column: 7)
!1990 = !DILocation(line: 739, column: 10, scope: !1989)
!1991 = !DILocation(line: 741, column: 11, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !266, line: 741, column: 11)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !266, line: 740, column: 5)
!1994 = !DILocation(line: 741, column: 11, scope: !1993)
!1995 = !DILocation(line: 742, column: 16, scope: !1992)
!1996 = !DILocation(line: 742, column: 9, scope: !1992)
!1997 = !DILocation(line: 746, column: 18, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1992, file: !266, line: 746, column: 16)
!1999 = !DILocation(line: 746, column: 32, scope: !1998)
!2000 = !DILocation(line: 746, column: 29, scope: !1998)
!2001 = !DILocation(line: 755, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1485, file: !266, line: 755, column: 7)
!2003 = !DILocation(line: 755, column: 20, scope: !2002)
!2004 = !DILocation(line: 756, column: 12, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !266, line: 756, column: 5)
!2006 = distinct !DILexicalBlock(scope: !2002, file: !266, line: 756, column: 5)
!2007 = !DILocation(line: 756, column: 5, scope: !2006)
!2008 = !DILocation(line: 757, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !266, line: 757, column: 7)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !266, line: 757, column: 7)
!2011 = !DILocation(line: 757, column: 7, scope: !2010)
!2012 = !DILocation(line: 756, column: 39, scope: !2005)
!2013 = distinct !{!2013, !2007, !2014}
!2014 = !DILocation(line: 757, column: 7, scope: !2006)
!2015 = !DILocation(line: 759, column: 11, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1485, file: !266, line: 759, column: 7)
!2017 = !DILocation(line: 759, column: 7, scope: !1485)
!2018 = !DILocation(line: 760, column: 5, scope: !2016)
!2019 = !DILocation(line: 760, column: 17, scope: !2016)
!2020 = !DILocation(line: 763, column: 2, scope: !1485)
!2021 = !DILocation(line: 766, column: 51, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1485, file: !266, line: 766, column: 7)
!2023 = !DILocation(line: 766, column: 21, scope: !2022)
!2024 = !DILocation(line: 770, column: 42, scope: !1485)
!2025 = !DILocation(line: 768, column: 10, scope: !1485)
!2026 = !DILocation(line: 768, column: 3, scope: !1485)
!2027 = !DILocation(line: 772, column: 1, scope: !1485)
!2028 = distinct !DISubprogram(name: "gettext_quote", scope: !266, file: !266, line: 207, type: !2029, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!33, !33, !12}
!2031 = !{!2032, !2033, !2034, !2035}
!2032 = !DILocalVariable(name: "msgid", arg: 1, scope: !2028, file: !266, line: 207, type: !33)
!2033 = !DILocalVariable(name: "s", arg: 2, scope: !2028, file: !266, line: 207, type: !12)
!2034 = !DILocalVariable(name: "translation", scope: !2028, file: !266, line: 209, type: !33)
!2035 = !DILocalVariable(name: "locale_code", scope: !2028, file: !266, line: 210, type: !33)
!2036 = !DILocation(line: 0, scope: !2028)
!2037 = !DILocation(line: 209, column: 29, scope: !2028)
!2038 = !DILocation(line: 212, column: 19, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2028, file: !266, line: 212, column: 7)
!2040 = !DILocation(line: 212, column: 7, scope: !2028)
!2041 = !DILocation(line: 233, column: 17, scope: !2028)
!2042 = !DILocalVariable(name: "s1", arg: 1, scope: !2043, file: !2044, line: 160, type: !33)
!2043 = distinct !DISubprogram(name: "strcaseeq0", scope: !2044, file: !2044, line: 160, type: !2045, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2047)
!2044 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!35, !33, !33, !32, !32, !32, !32, !32, !32, !32, !32, !32}
!2047 = !{!2042, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057}
!2048 = !DILocalVariable(name: "s2", arg: 2, scope: !2043, file: !2044, line: 160, type: !33)
!2049 = !DILocalVariable(name: "s20", arg: 3, scope: !2043, file: !2044, line: 160, type: !32)
!2050 = !DILocalVariable(name: "s21", arg: 4, scope: !2043, file: !2044, line: 160, type: !32)
!2051 = !DILocalVariable(name: "s22", arg: 5, scope: !2043, file: !2044, line: 160, type: !32)
!2052 = !DILocalVariable(name: "s23", arg: 6, scope: !2043, file: !2044, line: 160, type: !32)
!2053 = !DILocalVariable(name: "s24", arg: 7, scope: !2043, file: !2044, line: 160, type: !32)
!2054 = !DILocalVariable(name: "s25", arg: 8, scope: !2043, file: !2044, line: 160, type: !32)
!2055 = !DILocalVariable(name: "s26", arg: 9, scope: !2043, file: !2044, line: 160, type: !32)
!2056 = !DILocalVariable(name: "s27", arg: 10, scope: !2043, file: !2044, line: 160, type: !32)
!2057 = !DILocalVariable(name: "s28", arg: 11, scope: !2043, file: !2044, line: 160, type: !32)
!2058 = !DILocation(line: 0, scope: !2043, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 234, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2028, file: !266, line: 234, column: 7)
!2061 = !DILocation(line: 162, column: 7, scope: !2062, inlinedAt: !2059)
!2062 = distinct !DILexicalBlock(scope: !2043, file: !2044, line: 162, column: 7)
!2063 = !DILocalVariable(name: "s1", arg: 1, scope: !2064, file: !2044, line: 146, type: !33)
!2064 = distinct !DISubprogram(name: "strcaseeq1", scope: !2044, file: !2044, line: 146, type: !2065, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!35, !33, !33, !32, !32, !32, !32, !32, !32, !32, !32}
!2067 = !{!2063, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076}
!2068 = !DILocalVariable(name: "s2", arg: 2, scope: !2064, file: !2044, line: 146, type: !33)
!2069 = !DILocalVariable(name: "s21", arg: 3, scope: !2064, file: !2044, line: 146, type: !32)
!2070 = !DILocalVariable(name: "s22", arg: 4, scope: !2064, file: !2044, line: 146, type: !32)
!2071 = !DILocalVariable(name: "s23", arg: 5, scope: !2064, file: !2044, line: 146, type: !32)
!2072 = !DILocalVariable(name: "s24", arg: 6, scope: !2064, file: !2044, line: 146, type: !32)
!2073 = !DILocalVariable(name: "s25", arg: 7, scope: !2064, file: !2044, line: 146, type: !32)
!2074 = !DILocalVariable(name: "s26", arg: 8, scope: !2064, file: !2044, line: 146, type: !32)
!2075 = !DILocalVariable(name: "s27", arg: 9, scope: !2064, file: !2044, line: 146, type: !32)
!2076 = !DILocalVariable(name: "s28", arg: 10, scope: !2064, file: !2044, line: 146, type: !32)
!2077 = !DILocation(line: 0, scope: !2064, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 167, column: 16, scope: !2079, inlinedAt: !2059)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !2044, line: 164, column: 11)
!2080 = distinct !DILexicalBlock(scope: !2062, file: !2044, line: 163, column: 5)
!2081 = !DILocation(line: 148, column: 7, scope: !2082, inlinedAt: !2078)
!2082 = distinct !DILexicalBlock(scope: !2064, file: !2044, line: 148, column: 7)
!2083 = !DILocalVariable(name: "s1", arg: 1, scope: !2084, file: !2044, line: 132, type: !33)
!2084 = distinct !DISubprogram(name: "strcaseeq2", scope: !2044, file: !2044, line: 132, type: !2085, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!35, !33, !33, !32, !32, !32, !32, !32, !32, !32}
!2087 = !{!2083, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095}
!2088 = !DILocalVariable(name: "s2", arg: 2, scope: !2084, file: !2044, line: 132, type: !33)
!2089 = !DILocalVariable(name: "s22", arg: 3, scope: !2084, file: !2044, line: 132, type: !32)
!2090 = !DILocalVariable(name: "s23", arg: 4, scope: !2084, file: !2044, line: 132, type: !32)
!2091 = !DILocalVariable(name: "s24", arg: 5, scope: !2084, file: !2044, line: 132, type: !32)
!2092 = !DILocalVariable(name: "s25", arg: 6, scope: !2084, file: !2044, line: 132, type: !32)
!2093 = !DILocalVariable(name: "s26", arg: 7, scope: !2084, file: !2044, line: 132, type: !32)
!2094 = !DILocalVariable(name: "s27", arg: 8, scope: !2084, file: !2044, line: 132, type: !32)
!2095 = !DILocalVariable(name: "s28", arg: 9, scope: !2084, file: !2044, line: 132, type: !32)
!2096 = !DILocation(line: 0, scope: !2084, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 153, column: 16, scope: !2098, inlinedAt: !2078)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !2044, line: 150, column: 11)
!2099 = distinct !DILexicalBlock(scope: !2082, file: !2044, line: 149, column: 5)
!2100 = !DILocation(line: 134, column: 7, scope: !2101, inlinedAt: !2097)
!2101 = distinct !DILexicalBlock(scope: !2084, file: !2044, line: 134, column: 7)
!2102 = !DILocalVariable(name: "s1", arg: 1, scope: !2103, file: !2044, line: 118, type: !33)
!2103 = distinct !DISubprogram(name: "strcaseeq3", scope: !2044, file: !2044, line: 118, type: !2104, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!35, !33, !33, !32, !32, !32, !32, !32, !32}
!2106 = !{!2102, !2107, !2108, !2109, !2110, !2111, !2112, !2113}
!2107 = !DILocalVariable(name: "s2", arg: 2, scope: !2103, file: !2044, line: 118, type: !33)
!2108 = !DILocalVariable(name: "s23", arg: 3, scope: !2103, file: !2044, line: 118, type: !32)
!2109 = !DILocalVariable(name: "s24", arg: 4, scope: !2103, file: !2044, line: 118, type: !32)
!2110 = !DILocalVariable(name: "s25", arg: 5, scope: !2103, file: !2044, line: 118, type: !32)
!2111 = !DILocalVariable(name: "s26", arg: 6, scope: !2103, file: !2044, line: 118, type: !32)
!2112 = !DILocalVariable(name: "s27", arg: 7, scope: !2103, file: !2044, line: 118, type: !32)
!2113 = !DILocalVariable(name: "s28", arg: 8, scope: !2103, file: !2044, line: 118, type: !32)
!2114 = !DILocation(line: 0, scope: !2103, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 139, column: 16, scope: !2116, inlinedAt: !2097)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !2044, line: 136, column: 11)
!2117 = distinct !DILexicalBlock(scope: !2101, file: !2044, line: 135, column: 5)
!2118 = !DILocation(line: 120, column: 7, scope: !2119, inlinedAt: !2115)
!2119 = distinct !DILexicalBlock(scope: !2103, file: !2044, line: 120, column: 7)
!2120 = !DILocation(line: 120, column: 7, scope: !2103, inlinedAt: !2115)
!2121 = !DILocalVariable(name: "s1", arg: 1, scope: !2122, file: !2044, line: 104, type: !33)
!2122 = distinct !DISubprogram(name: "strcaseeq4", scope: !2044, file: !2044, line: 104, type: !2123, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!35, !33, !33, !32, !32, !32, !32, !32}
!2125 = !{!2121, !2126, !2127, !2128, !2129, !2130, !2131}
!2126 = !DILocalVariable(name: "s2", arg: 2, scope: !2122, file: !2044, line: 104, type: !33)
!2127 = !DILocalVariable(name: "s24", arg: 3, scope: !2122, file: !2044, line: 104, type: !32)
!2128 = !DILocalVariable(name: "s25", arg: 4, scope: !2122, file: !2044, line: 104, type: !32)
!2129 = !DILocalVariable(name: "s26", arg: 5, scope: !2122, file: !2044, line: 104, type: !32)
!2130 = !DILocalVariable(name: "s27", arg: 6, scope: !2122, file: !2044, line: 104, type: !32)
!2131 = !DILocalVariable(name: "s28", arg: 7, scope: !2122, file: !2044, line: 104, type: !32)
!2132 = !DILocation(line: 0, scope: !2122, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 125, column: 16, scope: !2134, inlinedAt: !2115)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !2044, line: 122, column: 11)
!2135 = distinct !DILexicalBlock(scope: !2119, file: !2044, line: 121, column: 5)
!2136 = !DILocation(line: 106, column: 7, scope: !2137, inlinedAt: !2133)
!2137 = distinct !DILexicalBlock(scope: !2122, file: !2044, line: 106, column: 7)
!2138 = !DILocation(line: 106, column: 7, scope: !2122, inlinedAt: !2133)
!2139 = !DILocalVariable(name: "s1", arg: 1, scope: !2140, file: !2044, line: 90, type: !33)
!2140 = distinct !DISubprogram(name: "strcaseeq5", scope: !2044, file: !2044, line: 90, type: !2141, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!35, !33, !33, !32, !32, !32, !32}
!2143 = !{!2139, !2144, !2145, !2146, !2147, !2148}
!2144 = !DILocalVariable(name: "s2", arg: 2, scope: !2140, file: !2044, line: 90, type: !33)
!2145 = !DILocalVariable(name: "s25", arg: 3, scope: !2140, file: !2044, line: 90, type: !32)
!2146 = !DILocalVariable(name: "s26", arg: 4, scope: !2140, file: !2044, line: 90, type: !32)
!2147 = !DILocalVariable(name: "s27", arg: 5, scope: !2140, file: !2044, line: 90, type: !32)
!2148 = !DILocalVariable(name: "s28", arg: 6, scope: !2140, file: !2044, line: 90, type: !32)
!2149 = !DILocation(line: 0, scope: !2140, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 111, column: 16, scope: !2151, inlinedAt: !2133)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !2044, line: 108, column: 11)
!2152 = distinct !DILexicalBlock(scope: !2137, file: !2044, line: 107, column: 5)
!2153 = !DILocation(line: 92, column: 7, scope: !2154, inlinedAt: !2150)
!2154 = distinct !DILexicalBlock(scope: !2140, file: !2044, line: 92, column: 7)
!2155 = !DILocation(line: 92, column: 7, scope: !2140, inlinedAt: !2150)
!2156 = !DILocation(line: 235, column: 12, scope: !2060)
!2157 = !DILocation(line: 235, column: 21, scope: !2060)
!2158 = !DILocation(line: 235, column: 5, scope: !2060)
!2159 = !DILocation(line: 0, scope: !2064, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 167, column: 16, scope: !2079, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 236, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2028, file: !266, line: 236, column: 7)
!2163 = !DILocation(line: 148, column: 7, scope: !2082, inlinedAt: !2160)
!2164 = !DILocation(line: 0, scope: !2084, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 153, column: 16, scope: !2098, inlinedAt: !2160)
!2166 = !DILocation(line: 134, column: 7, scope: !2101, inlinedAt: !2165)
!2167 = !DILocation(line: 134, column: 7, scope: !2084, inlinedAt: !2165)
!2168 = !DILocation(line: 0, scope: !2103, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 139, column: 16, scope: !2116, inlinedAt: !2165)
!2170 = !DILocation(line: 120, column: 7, scope: !2119, inlinedAt: !2169)
!2171 = !DILocation(line: 120, column: 7, scope: !2103, inlinedAt: !2169)
!2172 = !DILocation(line: 0, scope: !2122, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 125, column: 16, scope: !2134, inlinedAt: !2169)
!2174 = !DILocation(line: 106, column: 7, scope: !2137, inlinedAt: !2173)
!2175 = !DILocation(line: 106, column: 7, scope: !2122, inlinedAt: !2173)
!2176 = !DILocation(line: 0, scope: !2140, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 111, column: 16, scope: !2151, inlinedAt: !2173)
!2178 = !DILocation(line: 92, column: 7, scope: !2154, inlinedAt: !2177)
!2179 = !DILocation(line: 92, column: 7, scope: !2140, inlinedAt: !2177)
!2180 = !DILocalVariable(name: "s1", arg: 1, scope: !2181, file: !2044, line: 76, type: !33)
!2181 = distinct !DISubprogram(name: "strcaseeq6", scope: !2044, file: !2044, line: 76, type: !2182, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!35, !33, !33, !32, !32, !32}
!2184 = !{!2180, !2185, !2186, !2187, !2188}
!2185 = !DILocalVariable(name: "s2", arg: 2, scope: !2181, file: !2044, line: 76, type: !33)
!2186 = !DILocalVariable(name: "s26", arg: 3, scope: !2181, file: !2044, line: 76, type: !32)
!2187 = !DILocalVariable(name: "s27", arg: 4, scope: !2181, file: !2044, line: 76, type: !32)
!2188 = !DILocalVariable(name: "s28", arg: 5, scope: !2181, file: !2044, line: 76, type: !32)
!2189 = !DILocation(line: 0, scope: !2181, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 97, column: 16, scope: !2191, inlinedAt: !2177)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !2044, line: 94, column: 11)
!2192 = distinct !DILexicalBlock(scope: !2154, file: !2044, line: 93, column: 5)
!2193 = !DILocation(line: 78, column: 7, scope: !2194, inlinedAt: !2190)
!2194 = distinct !DILexicalBlock(scope: !2181, file: !2044, line: 78, column: 7)
!2195 = !DILocation(line: 78, column: 7, scope: !2181, inlinedAt: !2190)
!2196 = !DILocalVariable(name: "s1", arg: 1, scope: !2197, file: !2044, line: 62, type: !33)
!2197 = distinct !DISubprogram(name: "strcaseeq7", scope: !2044, file: !2044, line: 62, type: !2198, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!35, !33, !33, !32, !32}
!2200 = !{!2196, !2201, !2202, !2203}
!2201 = !DILocalVariable(name: "s2", arg: 2, scope: !2197, file: !2044, line: 62, type: !33)
!2202 = !DILocalVariable(name: "s27", arg: 3, scope: !2197, file: !2044, line: 62, type: !32)
!2203 = !DILocalVariable(name: "s28", arg: 4, scope: !2197, file: !2044, line: 62, type: !32)
!2204 = !DILocation(line: 0, scope: !2197, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 83, column: 16, scope: !2206, inlinedAt: !2190)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !2044, line: 80, column: 11)
!2207 = distinct !DILexicalBlock(scope: !2194, file: !2044, line: 79, column: 5)
!2208 = !DILocation(line: 64, column: 7, scope: !2209, inlinedAt: !2205)
!2209 = distinct !DILexicalBlock(scope: !2197, file: !2044, line: 64, column: 7)
!2210 = !DILocation(line: 236, column: 7, scope: !2028)
!2211 = !DILocation(line: 237, column: 12, scope: !2162)
!2212 = !DILocation(line: 237, column: 21, scope: !2162)
!2213 = !DILocation(line: 237, column: 5, scope: !2162)
!2214 = !DILocation(line: 239, column: 13, scope: !2028)
!2215 = !DILocation(line: 239, column: 11, scope: !2028)
!2216 = !DILocation(line: 239, column: 3, scope: !2028)
!2217 = !DILocation(line: 240, column: 1, scope: !2028)
!2218 = distinct !DISubprogram(name: "quotearg_alloc", scope: !266, file: !266, line: 799, type: !2219, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!31, !33, !90, !299}
!2221 = !{!2222, !2223, !2224}
!2222 = !DILocalVariable(name: "arg", arg: 1, scope: !2218, file: !266, line: 799, type: !33)
!2223 = !DILocalVariable(name: "argsize", arg: 2, scope: !2218, file: !266, line: 799, type: !90)
!2224 = !DILocalVariable(name: "o", arg: 3, scope: !2218, file: !266, line: 800, type: !299)
!2225 = !DILocation(line: 0, scope: !2218)
!2226 = !DILocalVariable(name: "arg", arg: 1, scope: !2227, file: !266, line: 812, type: !33)
!2227 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !266, file: !266, line: 812, type: !2228, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!31, !33, !90, !467, !299}
!2230 = !{!2226, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2231 = !DILocalVariable(name: "argsize", arg: 2, scope: !2227, file: !266, line: 812, type: !90)
!2232 = !DILocalVariable(name: "size", arg: 3, scope: !2227, file: !266, line: 812, type: !467)
!2233 = !DILocalVariable(name: "o", arg: 4, scope: !2227, file: !266, line: 813, type: !299)
!2234 = !DILocalVariable(name: "p", scope: !2227, file: !266, line: 815, type: !299)
!2235 = !DILocalVariable(name: "e", scope: !2227, file: !266, line: 816, type: !35)
!2236 = !DILocalVariable(name: "flags", scope: !2227, file: !266, line: 818, type: !35)
!2237 = !DILocalVariable(name: "bufsize", scope: !2227, file: !266, line: 819, type: !90)
!2238 = !DILocalVariable(name: "buf", scope: !2227, file: !266, line: 823, type: !31)
!2239 = !DILocation(line: 0, scope: !2227, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 802, column: 10, scope: !2218)
!2241 = !DILocation(line: 815, column: 37, scope: !2227, inlinedAt: !2240)
!2242 = !DILocation(line: 816, column: 11, scope: !2227, inlinedAt: !2240)
!2243 = !DILocation(line: 818, column: 18, scope: !2227, inlinedAt: !2240)
!2244 = !DILocation(line: 818, column: 24, scope: !2227, inlinedAt: !2240)
!2245 = !DILocation(line: 819, column: 69, scope: !2227, inlinedAt: !2240)
!2246 = !DILocation(line: 820, column: 53, scope: !2227, inlinedAt: !2240)
!2247 = !DILocation(line: 821, column: 49, scope: !2227, inlinedAt: !2240)
!2248 = !DILocation(line: 822, column: 49, scope: !2227, inlinedAt: !2240)
!2249 = !DILocation(line: 819, column: 20, scope: !2227, inlinedAt: !2240)
!2250 = !DILocation(line: 822, column: 62, scope: !2227, inlinedAt: !2240)
!2251 = !DILocalVariable(name: "n", arg: 1, scope: !2252, file: !290, line: 216, type: !90)
!2252 = distinct !DISubprogram(name: "xcharalloc", scope: !290, file: !290, line: 216, type: !2253, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!31, !90}
!2255 = !{!2251}
!2256 = !DILocation(line: 0, scope: !2252, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 823, column: 15, scope: !2227, inlinedAt: !2240)
!2258 = !DILocation(line: 218, column: 10, scope: !2252, inlinedAt: !2257)
!2259 = !DILocation(line: 824, column: 60, scope: !2227, inlinedAt: !2240)
!2260 = !DILocation(line: 826, column: 32, scope: !2227, inlinedAt: !2240)
!2261 = !DILocation(line: 826, column: 47, scope: !2227, inlinedAt: !2240)
!2262 = !DILocation(line: 824, column: 3, scope: !2227, inlinedAt: !2240)
!2263 = !DILocation(line: 827, column: 9, scope: !2227, inlinedAt: !2240)
!2264 = !DILocation(line: 802, column: 3, scope: !2218)
!2265 = !DILocation(line: 0, scope: !2227)
!2266 = !DILocation(line: 815, column: 37, scope: !2227)
!2267 = !DILocation(line: 816, column: 11, scope: !2227)
!2268 = !DILocation(line: 818, column: 18, scope: !2227)
!2269 = !DILocation(line: 818, column: 27, scope: !2227)
!2270 = !DILocation(line: 818, column: 24, scope: !2227)
!2271 = !DILocation(line: 819, column: 69, scope: !2227)
!2272 = !DILocation(line: 820, column: 53, scope: !2227)
!2273 = !DILocation(line: 821, column: 49, scope: !2227)
!2274 = !DILocation(line: 822, column: 49, scope: !2227)
!2275 = !DILocation(line: 819, column: 20, scope: !2227)
!2276 = !DILocation(line: 822, column: 62, scope: !2227)
!2277 = !DILocation(line: 0, scope: !2252, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 823, column: 15, scope: !2227)
!2279 = !DILocation(line: 218, column: 10, scope: !2252, inlinedAt: !2278)
!2280 = !DILocation(line: 824, column: 60, scope: !2227)
!2281 = !DILocation(line: 826, column: 32, scope: !2227)
!2282 = !DILocation(line: 826, column: 47, scope: !2227)
!2283 = !DILocation(line: 824, column: 3, scope: !2227)
!2284 = !DILocation(line: 827, column: 9, scope: !2227)
!2285 = !DILocation(line: 828, column: 7, scope: !2227)
!2286 = !DILocation(line: 829, column: 11, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2227, file: !266, line: 828, column: 7)
!2288 = !{!2289, !2289, i64 0}
!2289 = !{!"long", !1112, i64 0}
!2290 = !DILocation(line: 829, column: 5, scope: !2287)
!2291 = !DILocation(line: 830, column: 3, scope: !2227)
!2292 = distinct !DISubprogram(name: "quotearg_free", scope: !266, file: !266, line: 848, type: !117, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2293)
!2293 = !{!2294, !2295}
!2294 = !DILocalVariable(name: "sv", scope: !2292, file: !266, line: 850, type: !377)
!2295 = !DILocalVariable(name: "i", scope: !2292, file: !266, line: 851, type: !35)
!2296 = !DILocation(line: 850, column: 24, scope: !2292)
!2297 = !DILocation(line: 0, scope: !2292)
!2298 = !DILocation(line: 852, column: 19, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !266, line: 852, column: 3)
!2300 = distinct !DILexicalBlock(scope: !2292, file: !266, line: 852, column: 3)
!2301 = !DILocation(line: 852, column: 17, scope: !2299)
!2302 = !DILocation(line: 852, column: 3, scope: !2300)
!2303 = !DILocation(line: 853, column: 17, scope: !2299)
!2304 = !{!2305, !1111, i64 8}
!2305 = !{!"slotvec", !2289, i64 0, !1111, i64 8}
!2306 = !DILocation(line: 853, column: 5, scope: !2299)
!2307 = !DILocation(line: 852, column: 28, scope: !2299)
!2308 = distinct !{!2308, !2302, !2309}
!2309 = !DILocation(line: 853, column: 20, scope: !2300)
!2310 = !DILocation(line: 854, column: 13, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2292, file: !266, line: 854, column: 7)
!2312 = !DILocation(line: 854, column: 17, scope: !2311)
!2313 = !DILocation(line: 854, column: 7, scope: !2292)
!2314 = !DILocation(line: 856, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2311, file: !266, line: 855, column: 5)
!2316 = !DILocation(line: 857, column: 21, scope: !2315)
!2317 = !{!2305, !2289, i64 0}
!2318 = !DILocation(line: 858, column: 20, scope: !2315)
!2319 = !DILocation(line: 859, column: 5, scope: !2315)
!2320 = !DILocation(line: 860, column: 10, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2292, file: !266, line: 860, column: 7)
!2322 = !DILocation(line: 860, column: 7, scope: !2292)
!2323 = !DILocation(line: 862, column: 13, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !266, line: 861, column: 5)
!2325 = !DILocation(line: 862, column: 7, scope: !2324)
!2326 = !DILocation(line: 863, column: 15, scope: !2324)
!2327 = !DILocation(line: 864, column: 5, scope: !2324)
!2328 = !DILocation(line: 865, column: 10, scope: !2292)
!2329 = !DILocation(line: 866, column: 1, scope: !2292)
!2330 = distinct !DISubprogram(name: "quotearg_n", scope: !266, file: !266, line: 931, type: !104, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2331)
!2331 = !{!2332, !2333}
!2332 = !DILocalVariable(name: "n", arg: 1, scope: !2330, file: !266, line: 931, type: !35)
!2333 = !DILocalVariable(name: "arg", arg: 2, scope: !2330, file: !266, line: 931, type: !33)
!2334 = !DILocation(line: 0, scope: !2330)
!2335 = !DILocation(line: 933, column: 10, scope: !2330)
!2336 = !DILocation(line: 933, column: 3, scope: !2330)
!2337 = distinct !DISubprogram(name: "quotearg_n_options", scope: !266, file: !266, line: 877, type: !2338, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!31, !35, !33, !90, !299}
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2350, !2351, !2353, !2354, !2355}
!2341 = !DILocalVariable(name: "n", arg: 1, scope: !2337, file: !266, line: 877, type: !35)
!2342 = !DILocalVariable(name: "arg", arg: 2, scope: !2337, file: !266, line: 877, type: !33)
!2343 = !DILocalVariable(name: "argsize", arg: 3, scope: !2337, file: !266, line: 877, type: !90)
!2344 = !DILocalVariable(name: "options", arg: 4, scope: !2337, file: !266, line: 878, type: !299)
!2345 = !DILocalVariable(name: "e", scope: !2337, file: !266, line: 880, type: !35)
!2346 = !DILocalVariable(name: "sv", scope: !2337, file: !266, line: 882, type: !377)
!2347 = !DILocalVariable(name: "preallocated", scope: !2348, file: !266, line: 889, type: !215)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !266, line: 888, column: 5)
!2349 = distinct !DILexicalBlock(scope: !2337, file: !266, line: 887, column: 7)
!2350 = !DILocalVariable(name: "nmax", scope: !2348, file: !266, line: 890, type: !35)
!2351 = !DILocalVariable(name: "size", scope: !2352, file: !266, line: 903, type: !90)
!2352 = distinct !DILexicalBlock(scope: !2337, file: !266, line: 902, column: 3)
!2353 = !DILocalVariable(name: "val", scope: !2352, file: !266, line: 904, type: !31)
!2354 = !DILocalVariable(name: "flags", scope: !2352, file: !266, line: 906, type: !35)
!2355 = !DILocalVariable(name: "qsize", scope: !2352, file: !266, line: 907, type: !90)
!2356 = !DILocation(line: 0, scope: !2337)
!2357 = !DILocation(line: 880, column: 11, scope: !2337)
!2358 = !DILocation(line: 882, column: 24, scope: !2337)
!2359 = !DILocation(line: 884, column: 9, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2337, file: !266, line: 884, column: 7)
!2361 = !DILocation(line: 884, column: 7, scope: !2337)
!2362 = !DILocation(line: 885, column: 5, scope: !2360)
!2363 = !DILocation(line: 887, column: 7, scope: !2349)
!2364 = !DILocation(line: 887, column: 14, scope: !2349)
!2365 = !DILocation(line: 887, column: 7, scope: !2337)
!2366 = !DILocation(line: 889, column: 31, scope: !2348)
!2367 = !DILocation(line: 0, scope: !2348)
!2368 = !DILocation(line: 892, column: 16, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2348, file: !266, line: 892, column: 11)
!2370 = !DILocation(line: 892, column: 11, scope: !2348)
!2371 = !DILocation(line: 893, column: 9, scope: !2369)
!2372 = !DILocation(line: 895, column: 32, scope: !2348)
!2373 = !DILocation(line: 895, column: 61, scope: !2348)
!2374 = !DILocation(line: 895, column: 58, scope: !2348)
!2375 = !DILocation(line: 895, column: 66, scope: !2348)
!2376 = !DILocation(line: 895, column: 22, scope: !2348)
!2377 = !DILocation(line: 895, column: 15, scope: !2348)
!2378 = !DILocation(line: 896, column: 11, scope: !2348)
!2379 = !DILocation(line: 897, column: 15, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2348, file: !266, line: 896, column: 11)
!2381 = !{i64 0, i64 8, !2288, i64 8, i64 8, !1110}
!2382 = !DILocation(line: 897, column: 9, scope: !2380)
!2383 = !DILocation(line: 898, column: 20, scope: !2348)
!2384 = !DILocation(line: 898, column: 18, scope: !2348)
!2385 = !DILocation(line: 898, column: 15, scope: !2348)
!2386 = !DILocation(line: 898, column: 38, scope: !2348)
!2387 = !DILocation(line: 898, column: 31, scope: !2348)
!2388 = !DILocation(line: 898, column: 48, scope: !2348)
!2389 = !DILocation(line: 0, scope: !1785, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 898, column: 7, scope: !2348)
!2391 = !DILocation(line: 71, column: 10, scope: !1785, inlinedAt: !2390)
!2392 = !DILocation(line: 899, column: 14, scope: !2348)
!2393 = !DILocation(line: 900, column: 5, scope: !2348)
!2394 = !DILocation(line: 903, column: 19, scope: !2352)
!2395 = !DILocation(line: 903, column: 25, scope: !2352)
!2396 = !DILocation(line: 0, scope: !2352)
!2397 = !DILocation(line: 904, column: 23, scope: !2352)
!2398 = !DILocation(line: 906, column: 26, scope: !2352)
!2399 = !DILocation(line: 906, column: 32, scope: !2352)
!2400 = !DILocation(line: 908, column: 55, scope: !2352)
!2401 = !DILocation(line: 909, column: 46, scope: !2352)
!2402 = !DILocation(line: 910, column: 55, scope: !2352)
!2403 = !DILocation(line: 911, column: 55, scope: !2352)
!2404 = !DILocation(line: 907, column: 20, scope: !2352)
!2405 = !DILocation(line: 913, column: 14, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2352, file: !266, line: 913, column: 9)
!2407 = !DILocation(line: 913, column: 9, scope: !2352)
!2408 = !DILocation(line: 915, column: 35, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !266, line: 914, column: 7)
!2410 = !DILocation(line: 915, column: 20, scope: !2409)
!2411 = !DILocation(line: 916, column: 17, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !266, line: 916, column: 13)
!2413 = !DILocation(line: 916, column: 13, scope: !2409)
!2414 = !DILocation(line: 917, column: 11, scope: !2412)
!2415 = !DILocation(line: 0, scope: !2252, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 918, column: 27, scope: !2409)
!2417 = !DILocation(line: 218, column: 10, scope: !2252, inlinedAt: !2416)
!2418 = !DILocation(line: 918, column: 19, scope: !2409)
!2419 = !DILocation(line: 919, column: 69, scope: !2409)
!2420 = !DILocation(line: 921, column: 44, scope: !2409)
!2421 = !DILocation(line: 922, column: 44, scope: !2409)
!2422 = !DILocation(line: 919, column: 9, scope: !2409)
!2423 = !DILocation(line: 923, column: 7, scope: !2409)
!2424 = !DILocation(line: 925, column: 11, scope: !2352)
!2425 = !DILocation(line: 926, column: 5, scope: !2352)
!2426 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !266, file: !266, line: 937, type: !2427, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!31, !35, !33, !90}
!2429 = !{!2430, !2431, !2432}
!2430 = !DILocalVariable(name: "n", arg: 1, scope: !2426, file: !266, line: 937, type: !35)
!2431 = !DILocalVariable(name: "arg", arg: 2, scope: !2426, file: !266, line: 937, type: !33)
!2432 = !DILocalVariable(name: "argsize", arg: 3, scope: !2426, file: !266, line: 937, type: !90)
!2433 = !DILocation(line: 0, scope: !2426)
!2434 = !DILocation(line: 939, column: 10, scope: !2426)
!2435 = !DILocation(line: 939, column: 3, scope: !2426)
!2436 = distinct !DISubprogram(name: "quotearg", scope: !266, file: !266, line: 943, type: !110, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2437)
!2437 = !{!2438}
!2438 = !DILocalVariable(name: "arg", arg: 1, scope: !2436, file: !266, line: 943, type: !33)
!2439 = !DILocation(line: 0, scope: !2436)
!2440 = !DILocation(line: 0, scope: !2330, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 945, column: 10, scope: !2436)
!2442 = !DILocation(line: 933, column: 10, scope: !2330, inlinedAt: !2441)
!2443 = !DILocation(line: 945, column: 3, scope: !2436)
!2444 = distinct !DISubprogram(name: "quotearg_mem", scope: !266, file: !266, line: 949, type: !2445, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!31, !33, !90}
!2447 = !{!2448, !2449}
!2448 = !DILocalVariable(name: "arg", arg: 1, scope: !2444, file: !266, line: 949, type: !33)
!2449 = !DILocalVariable(name: "argsize", arg: 2, scope: !2444, file: !266, line: 949, type: !90)
!2450 = !DILocation(line: 0, scope: !2444)
!2451 = !DILocation(line: 0, scope: !2426, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 951, column: 10, scope: !2444)
!2453 = !DILocation(line: 939, column: 10, scope: !2426, inlinedAt: !2452)
!2454 = !DILocation(line: 951, column: 3, scope: !2444)
!2455 = distinct !DISubprogram(name: "quotearg_n_style", scope: !266, file: !266, line: 955, type: !2456, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!31, !35, !12, !33}
!2458 = !{!2459, !2460, !2461, !2462}
!2459 = !DILocalVariable(name: "n", arg: 1, scope: !2455, file: !266, line: 955, type: !35)
!2460 = !DILocalVariable(name: "s", arg: 2, scope: !2455, file: !266, line: 955, type: !12)
!2461 = !DILocalVariable(name: "arg", arg: 3, scope: !2455, file: !266, line: 955, type: !33)
!2462 = !DILocalVariable(name: "o", scope: !2455, file: !266, line: 957, type: !300)
!2463 = !DILocation(line: 0, scope: !2455)
!2464 = !DILocation(line: 957, column: 3, scope: !2455)
!2465 = !DILocation(line: 957, column: 32, scope: !2455)
!2466 = !DILocalVariable(name: "style", arg: 1, scope: !2467, file: !266, line: 193, type: !12)
!2467 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !266, file: !266, line: 193, type: !2468, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!301, !12}
!2470 = !{!2466, !2471}
!2471 = !DILocalVariable(name: "o", scope: !2467, file: !266, line: 195, type: !301)
!2472 = !DILocation(line: 0, scope: !2467, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 957, column: 36, scope: !2455)
!2474 = !DILocation(line: 195, column: 26, scope: !2467, inlinedAt: !2473)
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"quoting_options_from_style: argument 0"}
!2477 = distinct !{!2477, !"quoting_options_from_style"}
!2478 = !DILocation(line: 196, column: 13, scope: !2479, inlinedAt: !2473)
!2479 = distinct !DILexicalBlock(scope: !2467, file: !266, line: 196, column: 7)
!2480 = !DILocation(line: 196, column: 7, scope: !2467, inlinedAt: !2473)
!2481 = !DILocation(line: 197, column: 5, scope: !2479, inlinedAt: !2473)
!2482 = !DILocation(line: 198, column: 5, scope: !2467, inlinedAt: !2473)
!2483 = !DILocation(line: 198, column: 11, scope: !2467, inlinedAt: !2473)
!2484 = !DILocation(line: 958, column: 10, scope: !2455)
!2485 = !DILocation(line: 959, column: 1, scope: !2455)
!2486 = !DILocation(line: 958, column: 3, scope: !2455)
!2487 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !266, file: !266, line: 962, type: !2488, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!31, !35, !12, !33, !90}
!2490 = !{!2491, !2492, !2493, !2494, !2495}
!2491 = !DILocalVariable(name: "n", arg: 1, scope: !2487, file: !266, line: 962, type: !35)
!2492 = !DILocalVariable(name: "s", arg: 2, scope: !2487, file: !266, line: 962, type: !12)
!2493 = !DILocalVariable(name: "arg", arg: 3, scope: !2487, file: !266, line: 963, type: !33)
!2494 = !DILocalVariable(name: "argsize", arg: 4, scope: !2487, file: !266, line: 963, type: !90)
!2495 = !DILocalVariable(name: "o", scope: !2487, file: !266, line: 965, type: !300)
!2496 = !DILocation(line: 0, scope: !2487)
!2497 = !DILocation(line: 965, column: 3, scope: !2487)
!2498 = !DILocation(line: 965, column: 32, scope: !2487)
!2499 = !DILocation(line: 0, scope: !2467, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 965, column: 36, scope: !2487)
!2501 = !DILocation(line: 195, column: 26, scope: !2467, inlinedAt: !2500)
!2502 = !{!2503}
!2503 = distinct !{!2503, !2504, !"quoting_options_from_style: argument 0"}
!2504 = distinct !{!2504, !"quoting_options_from_style"}
!2505 = !DILocation(line: 196, column: 13, scope: !2479, inlinedAt: !2500)
!2506 = !DILocation(line: 196, column: 7, scope: !2467, inlinedAt: !2500)
!2507 = !DILocation(line: 197, column: 5, scope: !2479, inlinedAt: !2500)
!2508 = !DILocation(line: 198, column: 5, scope: !2467, inlinedAt: !2500)
!2509 = !DILocation(line: 198, column: 11, scope: !2467, inlinedAt: !2500)
!2510 = !DILocation(line: 966, column: 10, scope: !2487)
!2511 = !DILocation(line: 967, column: 1, scope: !2487)
!2512 = !DILocation(line: 966, column: 3, scope: !2487)
!2513 = distinct !DISubprogram(name: "quotearg_style", scope: !266, file: !266, line: 970, type: !149, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2514)
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "s", arg: 1, scope: !2513, file: !266, line: 970, type: !12)
!2516 = !DILocalVariable(name: "arg", arg: 2, scope: !2513, file: !266, line: 970, type: !33)
!2517 = !DILocation(line: 195, column: 26, scope: !2467, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 957, column: 36, scope: !2455, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 972, column: 10, scope: !2513)
!2520 = !DILocation(line: 957, column: 32, scope: !2455, inlinedAt: !2519)
!2521 = !DILocation(line: 0, scope: !2513)
!2522 = !DILocation(line: 0, scope: !2455, inlinedAt: !2519)
!2523 = !DILocation(line: 957, column: 3, scope: !2455, inlinedAt: !2519)
!2524 = !DILocation(line: 0, scope: !2467, inlinedAt: !2518)
!2525 = !{!2526}
!2526 = distinct !{!2526, !2527, !"quoting_options_from_style: argument 0"}
!2527 = distinct !{!2527, !"quoting_options_from_style"}
!2528 = !DILocation(line: 196, column: 13, scope: !2479, inlinedAt: !2518)
!2529 = !DILocation(line: 196, column: 7, scope: !2467, inlinedAt: !2518)
!2530 = !DILocation(line: 197, column: 5, scope: !2479, inlinedAt: !2518)
!2531 = !DILocation(line: 198, column: 5, scope: !2467, inlinedAt: !2518)
!2532 = !DILocation(line: 198, column: 11, scope: !2467, inlinedAt: !2518)
!2533 = !DILocation(line: 958, column: 10, scope: !2455, inlinedAt: !2519)
!2534 = !DILocation(line: 959, column: 1, scope: !2455, inlinedAt: !2519)
!2535 = !DILocation(line: 972, column: 3, scope: !2513)
!2536 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !266, file: !266, line: 976, type: !2537, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!31, !12, !33, !90}
!2539 = !{!2540, !2541, !2542}
!2540 = !DILocalVariable(name: "s", arg: 1, scope: !2536, file: !266, line: 976, type: !12)
!2541 = !DILocalVariable(name: "arg", arg: 2, scope: !2536, file: !266, line: 976, type: !33)
!2542 = !DILocalVariable(name: "argsize", arg: 3, scope: !2536, file: !266, line: 976, type: !90)
!2543 = !DILocation(line: 195, column: 26, scope: !2467, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 965, column: 36, scope: !2487, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 978, column: 10, scope: !2536)
!2546 = !DILocation(line: 965, column: 32, scope: !2487, inlinedAt: !2545)
!2547 = !DILocation(line: 0, scope: !2536)
!2548 = !DILocation(line: 0, scope: !2487, inlinedAt: !2545)
!2549 = !DILocation(line: 965, column: 3, scope: !2487, inlinedAt: !2545)
!2550 = !DILocation(line: 0, scope: !2467, inlinedAt: !2544)
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"quoting_options_from_style: argument 0"}
!2553 = distinct !{!2553, !"quoting_options_from_style"}
!2554 = !DILocation(line: 196, column: 13, scope: !2479, inlinedAt: !2544)
!2555 = !DILocation(line: 196, column: 7, scope: !2467, inlinedAt: !2544)
!2556 = !DILocation(line: 197, column: 5, scope: !2479, inlinedAt: !2544)
!2557 = !DILocation(line: 198, column: 5, scope: !2467, inlinedAt: !2544)
!2558 = !DILocation(line: 198, column: 11, scope: !2467, inlinedAt: !2544)
!2559 = !DILocation(line: 966, column: 10, scope: !2487, inlinedAt: !2545)
!2560 = !DILocation(line: 967, column: 1, scope: !2487, inlinedAt: !2545)
!2561 = !DILocation(line: 978, column: 3, scope: !2536)
!2562 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !266, file: !266, line: 982, type: !2563, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!31, !33, !90, !32}
!2565 = !{!2566, !2567, !2568, !2569}
!2566 = !DILocalVariable(name: "arg", arg: 1, scope: !2562, file: !266, line: 982, type: !33)
!2567 = !DILocalVariable(name: "argsize", arg: 2, scope: !2562, file: !266, line: 982, type: !90)
!2568 = !DILocalVariable(name: "ch", arg: 3, scope: !2562, file: !266, line: 982, type: !32)
!2569 = !DILocalVariable(name: "options", scope: !2562, file: !266, line: 984, type: !301)
!2570 = !DILocation(line: 0, scope: !2562)
!2571 = !DILocation(line: 984, column: 3, scope: !2562)
!2572 = !DILocation(line: 984, column: 26, scope: !2562)
!2573 = !DILocation(line: 985, column: 13, scope: !2562)
!2574 = !{i64 0, i64 4, !1583, i64 4, i64 4, !1181, i64 8, i64 32, !1583, i64 40, i64 8, !1110, i64 48, i64 8, !1110}
!2575 = !DILocation(line: 0, scope: !1396, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 986, column: 3, scope: !2562)
!2577 = !DILocation(line: 156, column: 62, scope: !1396, inlinedAt: !2576)
!2578 = !DILocation(line: 156, column: 57, scope: !1396, inlinedAt: !2576)
!2579 = !DILocation(line: 157, column: 15, scope: !1396, inlinedAt: !2576)
!2580 = !DILocation(line: 158, column: 12, scope: !1396, inlinedAt: !2576)
!2581 = !DILocation(line: 158, column: 15, scope: !1396, inlinedAt: !2576)
!2582 = !DILocation(line: 158, column: 25, scope: !1396, inlinedAt: !2576)
!2583 = !DILocation(line: 159, column: 18, scope: !1396, inlinedAt: !2576)
!2584 = !DILocation(line: 159, column: 23, scope: !1396, inlinedAt: !2576)
!2585 = !DILocation(line: 159, column: 6, scope: !1396, inlinedAt: !2576)
!2586 = !DILocation(line: 987, column: 10, scope: !2562)
!2587 = !DILocation(line: 988, column: 1, scope: !2562)
!2588 = !DILocation(line: 987, column: 3, scope: !2562)
!2589 = distinct !DISubprogram(name: "quotearg_char", scope: !266, file: !266, line: 991, type: !2590, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!31, !33, !32}
!2592 = !{!2593, !2594}
!2593 = !DILocalVariable(name: "arg", arg: 1, scope: !2589, file: !266, line: 991, type: !33)
!2594 = !DILocalVariable(name: "ch", arg: 2, scope: !2589, file: !266, line: 991, type: !32)
!2595 = !DILocation(line: 984, column: 26, scope: !2562, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 993, column: 10, scope: !2589)
!2597 = !DILocation(line: 0, scope: !2589)
!2598 = !DILocation(line: 0, scope: !2562, inlinedAt: !2596)
!2599 = !DILocation(line: 984, column: 3, scope: !2562, inlinedAt: !2596)
!2600 = !DILocation(line: 985, column: 13, scope: !2562, inlinedAt: !2596)
!2601 = !DILocation(line: 0, scope: !1396, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 986, column: 3, scope: !2562, inlinedAt: !2596)
!2603 = !DILocation(line: 156, column: 62, scope: !1396, inlinedAt: !2602)
!2604 = !DILocation(line: 156, column: 57, scope: !1396, inlinedAt: !2602)
!2605 = !DILocation(line: 157, column: 15, scope: !1396, inlinedAt: !2602)
!2606 = !DILocation(line: 158, column: 12, scope: !1396, inlinedAt: !2602)
!2607 = !DILocation(line: 158, column: 15, scope: !1396, inlinedAt: !2602)
!2608 = !DILocation(line: 158, column: 25, scope: !1396, inlinedAt: !2602)
!2609 = !DILocation(line: 159, column: 18, scope: !1396, inlinedAt: !2602)
!2610 = !DILocation(line: 159, column: 23, scope: !1396, inlinedAt: !2602)
!2611 = !DILocation(line: 159, column: 6, scope: !1396, inlinedAt: !2602)
!2612 = !DILocation(line: 987, column: 10, scope: !2562, inlinedAt: !2596)
!2613 = !DILocation(line: 988, column: 1, scope: !2562, inlinedAt: !2596)
!2614 = !DILocation(line: 993, column: 3, scope: !2589)
!2615 = distinct !DISubprogram(name: "quotearg_colon", scope: !266, file: !266, line: 997, type: !110, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2616)
!2616 = !{!2617}
!2617 = !DILocalVariable(name: "arg", arg: 1, scope: !2615, file: !266, line: 997, type: !33)
!2618 = !DILocation(line: 984, column: 26, scope: !2562, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 993, column: 10, scope: !2589, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 999, column: 10, scope: !2615)
!2621 = !DILocation(line: 0, scope: !2615)
!2622 = !DILocation(line: 0, scope: !2589, inlinedAt: !2620)
!2623 = !DILocation(line: 0, scope: !2562, inlinedAt: !2619)
!2624 = !DILocation(line: 984, column: 3, scope: !2562, inlinedAt: !2619)
!2625 = !DILocation(line: 985, column: 13, scope: !2562, inlinedAt: !2619)
!2626 = !DILocation(line: 0, scope: !1396, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 986, column: 3, scope: !2562, inlinedAt: !2619)
!2628 = !DILocation(line: 156, column: 57, scope: !1396, inlinedAt: !2627)
!2629 = !DILocation(line: 158, column: 12, scope: !1396, inlinedAt: !2627)
!2630 = !DILocation(line: 159, column: 6, scope: !1396, inlinedAt: !2627)
!2631 = !DILocation(line: 987, column: 10, scope: !2562, inlinedAt: !2619)
!2632 = !DILocation(line: 988, column: 1, scope: !2562, inlinedAt: !2619)
!2633 = !DILocation(line: 999, column: 3, scope: !2615)
!2634 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !266, file: !266, line: 1003, type: !2445, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2635)
!2635 = !{!2636, !2637}
!2636 = !DILocalVariable(name: "arg", arg: 1, scope: !2634, file: !266, line: 1003, type: !33)
!2637 = !DILocalVariable(name: "argsize", arg: 2, scope: !2634, file: !266, line: 1003, type: !90)
!2638 = !DILocation(line: 984, column: 26, scope: !2562, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 1005, column: 10, scope: !2634)
!2640 = !DILocation(line: 0, scope: !2634)
!2641 = !DILocation(line: 0, scope: !2562, inlinedAt: !2639)
!2642 = !DILocation(line: 984, column: 3, scope: !2562, inlinedAt: !2639)
!2643 = !DILocation(line: 985, column: 13, scope: !2562, inlinedAt: !2639)
!2644 = !DILocation(line: 0, scope: !1396, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 986, column: 3, scope: !2562, inlinedAt: !2639)
!2646 = !DILocation(line: 156, column: 57, scope: !1396, inlinedAt: !2645)
!2647 = !DILocation(line: 158, column: 12, scope: !1396, inlinedAt: !2645)
!2648 = !DILocation(line: 159, column: 6, scope: !1396, inlinedAt: !2645)
!2649 = !DILocation(line: 987, column: 10, scope: !2562, inlinedAt: !2639)
!2650 = !DILocation(line: 988, column: 1, scope: !2562, inlinedAt: !2639)
!2651 = !DILocation(line: 1005, column: 3, scope: !2634)
!2652 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !266, file: !266, line: 1009, type: !2456, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2653)
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DILocalVariable(name: "n", arg: 1, scope: !2652, file: !266, line: 1009, type: !35)
!2655 = !DILocalVariable(name: "s", arg: 2, scope: !2652, file: !266, line: 1009, type: !12)
!2656 = !DILocalVariable(name: "arg", arg: 3, scope: !2652, file: !266, line: 1009, type: !33)
!2657 = !DILocalVariable(name: "options", scope: !2652, file: !266, line: 1011, type: !301)
!2658 = !DILocation(line: 195, column: 26, scope: !2467, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1012, column: 13, scope: !2652)
!2660 = !DILocation(line: 0, scope: !2652)
!2661 = !DILocation(line: 1011, column: 3, scope: !2652)
!2662 = !DILocation(line: 1011, column: 26, scope: !2652)
!2663 = !DILocation(line: 1012, column: 13, scope: !2652)
!2664 = !DILocation(line: 0, scope: !2467, inlinedAt: !2659)
!2665 = !{!2666}
!2666 = distinct !{!2666, !2667, !"quoting_options_from_style: argument 0"}
!2667 = distinct !{!2667, !"quoting_options_from_style"}
!2668 = !DILocation(line: 196, column: 13, scope: !2479, inlinedAt: !2659)
!2669 = !DILocation(line: 196, column: 7, scope: !2467, inlinedAt: !2659)
!2670 = !DILocation(line: 197, column: 5, scope: !2479, inlinedAt: !2659)
!2671 = !DILocation(line: 0, scope: !1396, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1013, column: 3, scope: !2652)
!2673 = !DILocation(line: 156, column: 57, scope: !1396, inlinedAt: !2672)
!2674 = !DILocation(line: 158, column: 12, scope: !1396, inlinedAt: !2672)
!2675 = !DILocation(line: 159, column: 6, scope: !1396, inlinedAt: !2672)
!2676 = !DILocation(line: 1014, column: 10, scope: !2652)
!2677 = !DILocation(line: 1015, column: 1, scope: !2652)
!2678 = !DILocation(line: 1014, column: 3, scope: !2652)
!2679 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !266, file: !266, line: 1018, type: !2680, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!31, !35, !33, !33, !33}
!2682 = !{!2683, !2684, !2685, !2686}
!2683 = !DILocalVariable(name: "n", arg: 1, scope: !2679, file: !266, line: 1018, type: !35)
!2684 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2679, file: !266, line: 1018, type: !33)
!2685 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2679, file: !266, line: 1019, type: !33)
!2686 = !DILocalVariable(name: "arg", arg: 4, scope: !2679, file: !266, line: 1019, type: !33)
!2687 = !DILocalVariable(name: "o", scope: !2688, file: !266, line: 1030, type: !301)
!2688 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !266, file: !266, line: 1026, type: !2689, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!31, !35, !33, !33, !33, !90}
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2687}
!2692 = !DILocalVariable(name: "n", arg: 1, scope: !2688, file: !266, line: 1026, type: !35)
!2693 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2688, file: !266, line: 1026, type: !33)
!2694 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2688, file: !266, line: 1027, type: !33)
!2695 = !DILocalVariable(name: "arg", arg: 4, scope: !2688, file: !266, line: 1028, type: !33)
!2696 = !DILocalVariable(name: "argsize", arg: 5, scope: !2688, file: !266, line: 1028, type: !90)
!2697 = !DILocation(line: 1030, column: 26, scope: !2688, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1021, column: 10, scope: !2679)
!2699 = !DILocation(line: 0, scope: !2679)
!2700 = !DILocation(line: 0, scope: !2688, inlinedAt: !2698)
!2701 = !DILocation(line: 1030, column: 3, scope: !2688, inlinedAt: !2698)
!2702 = !DILocation(line: 1030, column: 30, scope: !2688, inlinedAt: !2698)
!2703 = !DILocation(line: 0, scope: !1437, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 1031, column: 3, scope: !2688, inlinedAt: !2698)
!2705 = !DILocation(line: 184, column: 6, scope: !1437, inlinedAt: !2704)
!2706 = !DILocation(line: 184, column: 12, scope: !1437, inlinedAt: !2704)
!2707 = !DILocation(line: 185, column: 8, scope: !1451, inlinedAt: !2704)
!2708 = !DILocation(line: 185, column: 23, scope: !1451, inlinedAt: !2704)
!2709 = !DILocation(line: 185, column: 19, scope: !1451, inlinedAt: !2704)
!2710 = !DILocation(line: 186, column: 5, scope: !1451, inlinedAt: !2704)
!2711 = !DILocation(line: 187, column: 6, scope: !1437, inlinedAt: !2704)
!2712 = !DILocation(line: 187, column: 17, scope: !1437, inlinedAt: !2704)
!2713 = !DILocation(line: 188, column: 6, scope: !1437, inlinedAt: !2704)
!2714 = !DILocation(line: 188, column: 18, scope: !1437, inlinedAt: !2704)
!2715 = !DILocation(line: 1032, column: 10, scope: !2688, inlinedAt: !2698)
!2716 = !DILocation(line: 1033, column: 1, scope: !2688, inlinedAt: !2698)
!2717 = !DILocation(line: 1021, column: 3, scope: !2679)
!2718 = !DILocation(line: 0, scope: !2688)
!2719 = !DILocation(line: 1030, column: 3, scope: !2688)
!2720 = !DILocation(line: 1030, column: 26, scope: !2688)
!2721 = !DILocation(line: 1030, column: 30, scope: !2688)
!2722 = !DILocation(line: 0, scope: !1437, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1031, column: 3, scope: !2688)
!2724 = !DILocation(line: 184, column: 6, scope: !1437, inlinedAt: !2723)
!2725 = !DILocation(line: 184, column: 12, scope: !1437, inlinedAt: !2723)
!2726 = !DILocation(line: 185, column: 8, scope: !1451, inlinedAt: !2723)
!2727 = !DILocation(line: 185, column: 23, scope: !1451, inlinedAt: !2723)
!2728 = !DILocation(line: 185, column: 19, scope: !1451, inlinedAt: !2723)
!2729 = !DILocation(line: 186, column: 5, scope: !1451, inlinedAt: !2723)
!2730 = !DILocation(line: 187, column: 6, scope: !1437, inlinedAt: !2723)
!2731 = !DILocation(line: 187, column: 17, scope: !1437, inlinedAt: !2723)
!2732 = !DILocation(line: 188, column: 6, scope: !1437, inlinedAt: !2723)
!2733 = !DILocation(line: 188, column: 18, scope: !1437, inlinedAt: !2723)
!2734 = !DILocation(line: 1032, column: 10, scope: !2688)
!2735 = !DILocation(line: 1033, column: 1, scope: !2688)
!2736 = !DILocation(line: 1032, column: 3, scope: !2688)
!2737 = distinct !DISubprogram(name: "quotearg_custom", scope: !266, file: !266, line: 1036, type: !2738, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!31, !33, !33, !33}
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2737, file: !266, line: 1036, type: !33)
!2742 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2737, file: !266, line: 1036, type: !33)
!2743 = !DILocalVariable(name: "arg", arg: 3, scope: !2737, file: !266, line: 1037, type: !33)
!2744 = !DILocation(line: 1030, column: 26, scope: !2688, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1021, column: 10, scope: !2679, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 1039, column: 10, scope: !2737)
!2747 = !DILocation(line: 0, scope: !2737)
!2748 = !DILocation(line: 0, scope: !2679, inlinedAt: !2746)
!2749 = !DILocation(line: 0, scope: !2688, inlinedAt: !2745)
!2750 = !DILocation(line: 1030, column: 3, scope: !2688, inlinedAt: !2745)
!2751 = !DILocation(line: 1030, column: 30, scope: !2688, inlinedAt: !2745)
!2752 = !DILocation(line: 0, scope: !1437, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1031, column: 3, scope: !2688, inlinedAt: !2745)
!2754 = !DILocation(line: 184, column: 6, scope: !1437, inlinedAt: !2753)
!2755 = !DILocation(line: 184, column: 12, scope: !1437, inlinedAt: !2753)
!2756 = !DILocation(line: 185, column: 8, scope: !1451, inlinedAt: !2753)
!2757 = !DILocation(line: 185, column: 23, scope: !1451, inlinedAt: !2753)
!2758 = !DILocation(line: 185, column: 19, scope: !1451, inlinedAt: !2753)
!2759 = !DILocation(line: 186, column: 5, scope: !1451, inlinedAt: !2753)
!2760 = !DILocation(line: 187, column: 6, scope: !1437, inlinedAt: !2753)
!2761 = !DILocation(line: 187, column: 17, scope: !1437, inlinedAt: !2753)
!2762 = !DILocation(line: 188, column: 6, scope: !1437, inlinedAt: !2753)
!2763 = !DILocation(line: 188, column: 18, scope: !1437, inlinedAt: !2753)
!2764 = !DILocation(line: 1032, column: 10, scope: !2688, inlinedAt: !2745)
!2765 = !DILocation(line: 1033, column: 1, scope: !2688, inlinedAt: !2745)
!2766 = !DILocation(line: 1039, column: 3, scope: !2737)
!2767 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !266, file: !266, line: 1043, type: !2768, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!31, !33, !33, !33, !90}
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2767, file: !266, line: 1043, type: !33)
!2772 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2767, file: !266, line: 1043, type: !33)
!2773 = !DILocalVariable(name: "arg", arg: 3, scope: !2767, file: !266, line: 1044, type: !33)
!2774 = !DILocalVariable(name: "argsize", arg: 4, scope: !2767, file: !266, line: 1044, type: !90)
!2775 = !DILocation(line: 1030, column: 26, scope: !2688, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 1046, column: 10, scope: !2767)
!2777 = !DILocation(line: 0, scope: !2767)
!2778 = !DILocation(line: 0, scope: !2688, inlinedAt: !2776)
!2779 = !DILocation(line: 1030, column: 3, scope: !2688, inlinedAt: !2776)
!2780 = !DILocation(line: 1030, column: 30, scope: !2688, inlinedAt: !2776)
!2781 = !DILocation(line: 0, scope: !1437, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1031, column: 3, scope: !2688, inlinedAt: !2776)
!2783 = !DILocation(line: 184, column: 6, scope: !1437, inlinedAt: !2782)
!2784 = !DILocation(line: 184, column: 12, scope: !1437, inlinedAt: !2782)
!2785 = !DILocation(line: 185, column: 8, scope: !1451, inlinedAt: !2782)
!2786 = !DILocation(line: 185, column: 23, scope: !1451, inlinedAt: !2782)
!2787 = !DILocation(line: 185, column: 19, scope: !1451, inlinedAt: !2782)
!2788 = !DILocation(line: 186, column: 5, scope: !1451, inlinedAt: !2782)
!2789 = !DILocation(line: 187, column: 6, scope: !1437, inlinedAt: !2782)
!2790 = !DILocation(line: 187, column: 17, scope: !1437, inlinedAt: !2782)
!2791 = !DILocation(line: 188, column: 6, scope: !1437, inlinedAt: !2782)
!2792 = !DILocation(line: 188, column: 18, scope: !1437, inlinedAt: !2782)
!2793 = !DILocation(line: 1032, column: 10, scope: !2688, inlinedAt: !2776)
!2794 = !DILocation(line: 1033, column: 1, scope: !2688, inlinedAt: !2776)
!2795 = !DILocation(line: 1046, column: 3, scope: !2767)
!2796 = distinct !DISubprogram(name: "quote_n_mem", scope: !266, file: !266, line: 1061, type: !2797, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!33, !35, !33, !90}
!2799 = !{!2800, !2801, !2802}
!2800 = !DILocalVariable(name: "n", arg: 1, scope: !2796, file: !266, line: 1061, type: !35)
!2801 = !DILocalVariable(name: "arg", arg: 2, scope: !2796, file: !266, line: 1061, type: !33)
!2802 = !DILocalVariable(name: "argsize", arg: 3, scope: !2796, file: !266, line: 1061, type: !90)
!2803 = !DILocation(line: 0, scope: !2796)
!2804 = !DILocation(line: 1063, column: 10, scope: !2796)
!2805 = !DILocation(line: 1063, column: 3, scope: !2796)
!2806 = distinct !DISubprogram(name: "quote_mem", scope: !266, file: !266, line: 1067, type: !2807, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!33, !33, !90}
!2809 = !{!2810, !2811}
!2810 = !DILocalVariable(name: "arg", arg: 1, scope: !2806, file: !266, line: 1067, type: !33)
!2811 = !DILocalVariable(name: "argsize", arg: 2, scope: !2806, file: !266, line: 1067, type: !90)
!2812 = !DILocation(line: 0, scope: !2806)
!2813 = !DILocation(line: 0, scope: !2796, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 1069, column: 10, scope: !2806)
!2815 = !DILocation(line: 1063, column: 10, scope: !2796, inlinedAt: !2814)
!2816 = !DILocation(line: 1069, column: 3, scope: !2806)
!2817 = distinct !DISubprogram(name: "quote_n", scope: !266, file: !266, line: 1073, type: !2818, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!33, !35, !33}
!2820 = !{!2821, !2822}
!2821 = !DILocalVariable(name: "n", arg: 1, scope: !2817, file: !266, line: 1073, type: !35)
!2822 = !DILocalVariable(name: "arg", arg: 2, scope: !2817, file: !266, line: 1073, type: !33)
!2823 = !DILocation(line: 0, scope: !2817)
!2824 = !DILocation(line: 0, scope: !2796, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1075, column: 10, scope: !2817)
!2826 = !DILocation(line: 1063, column: 10, scope: !2796, inlinedAt: !2825)
!2827 = !DILocation(line: 1075, column: 3, scope: !2817)
!2828 = distinct !DISubprogram(name: "quote", scope: !266, file: !266, line: 1079, type: !2829, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!33, !33}
!2831 = !{!2832}
!2832 = !DILocalVariable(name: "arg", arg: 1, scope: !2828, file: !266, line: 1079, type: !33)
!2833 = !DILocation(line: 0, scope: !2828)
!2834 = !DILocation(line: 0, scope: !2817, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 1081, column: 10, scope: !2828)
!2836 = !DILocation(line: 0, scope: !2796, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 1075, column: 10, scope: !2817, inlinedAt: !2835)
!2838 = !DILocation(line: 1063, column: 10, scope: !2796, inlinedAt: !2837)
!2839 = !DILocation(line: 1081, column: 3, scope: !2828)
!2840 = distinct !DISubprogram(name: "version_etc_arn", scope: !419, file: !419, line: 61, type: !2841, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2847)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !2843, !33, !33, !33, !2846, !90}
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2845, line: 7, baseType: !429)
!2845 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!2847 = !{!2848, !2849, !2850, !2851, !2852, !2853}
!2848 = !DILocalVariable(name: "stream", arg: 1, scope: !2840, file: !419, line: 61, type: !2843)
!2849 = !DILocalVariable(name: "command_name", arg: 2, scope: !2840, file: !419, line: 62, type: !33)
!2850 = !DILocalVariable(name: "package", arg: 3, scope: !2840, file: !419, line: 62, type: !33)
!2851 = !DILocalVariable(name: "version", arg: 4, scope: !2840, file: !419, line: 63, type: !33)
!2852 = !DILocalVariable(name: "authors", arg: 5, scope: !2840, file: !419, line: 64, type: !2846)
!2853 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2840, file: !419, line: 64, type: !90)
!2854 = !DILocation(line: 0, scope: !2840)
!2855 = !DILocation(line: 66, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2840, file: !419, line: 66, column: 7)
!2857 = !DILocation(line: 66, column: 7, scope: !2840)
!2858 = !DILocation(line: 67, column: 5, scope: !2856)
!2859 = !DILocation(line: 69, column: 5, scope: !2856)
!2860 = !DILocation(line: 83, column: 3, scope: !2840)
!2861 = !DILocation(line: 85, column: 3, scope: !2840)
!2862 = !DILocation(line: 88, column: 3, scope: !2840)
!2863 = !DILocation(line: 95, column: 3, scope: !2840)
!2864 = !DILocation(line: 97, column: 3, scope: !2840)
!2865 = !DILocation(line: 105, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2840, file: !419, line: 98, column: 5)
!2867 = !DILocation(line: 106, column: 7, scope: !2866)
!2868 = !DILocation(line: 109, column: 7, scope: !2866)
!2869 = !DILocation(line: 110, column: 7, scope: !2866)
!2870 = !DILocation(line: 113, column: 7, scope: !2866)
!2871 = !DILocation(line: 115, column: 7, scope: !2866)
!2872 = !DILocation(line: 120, column: 7, scope: !2866)
!2873 = !DILocation(line: 122, column: 7, scope: !2866)
!2874 = !DILocation(line: 127, column: 7, scope: !2866)
!2875 = !DILocation(line: 129, column: 7, scope: !2866)
!2876 = !DILocation(line: 134, column: 7, scope: !2866)
!2877 = !DILocation(line: 137, column: 7, scope: !2866)
!2878 = !DILocation(line: 142, column: 7, scope: !2866)
!2879 = !DILocation(line: 145, column: 7, scope: !2866)
!2880 = !DILocation(line: 150, column: 7, scope: !2866)
!2881 = !DILocation(line: 154, column: 7, scope: !2866)
!2882 = !DILocation(line: 159, column: 7, scope: !2866)
!2883 = !DILocation(line: 163, column: 7, scope: !2866)
!2884 = !DILocation(line: 170, column: 7, scope: !2866)
!2885 = !DILocation(line: 174, column: 7, scope: !2866)
!2886 = !DILocation(line: 176, column: 1, scope: !2840)
!2887 = distinct !DISubprogram(name: "version_etc_ar", scope: !419, file: !419, line: 183, type: !2888, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{null, !2843, !33, !33, !33, !2846}
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2896}
!2891 = !DILocalVariable(name: "stream", arg: 1, scope: !2887, file: !419, line: 183, type: !2843)
!2892 = !DILocalVariable(name: "command_name", arg: 2, scope: !2887, file: !419, line: 184, type: !33)
!2893 = !DILocalVariable(name: "package", arg: 3, scope: !2887, file: !419, line: 184, type: !33)
!2894 = !DILocalVariable(name: "version", arg: 4, scope: !2887, file: !419, line: 185, type: !33)
!2895 = !DILocalVariable(name: "authors", arg: 5, scope: !2887, file: !419, line: 185, type: !2846)
!2896 = !DILocalVariable(name: "n_authors", scope: !2887, file: !419, line: 187, type: !90)
!2897 = !DILocation(line: 0, scope: !2887)
!2898 = !DILocation(line: 189, column: 8, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2887, file: !419, line: 189, column: 3)
!2900 = !DILocation(line: 0, scope: !2899)
!2901 = !DILocation(line: 189, column: 23, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2899, file: !419, line: 189, column: 3)
!2903 = !DILocation(line: 189, column: 3, scope: !2899)
!2904 = !DILocation(line: 189, column: 52, scope: !2902)
!2905 = distinct !{!2905, !2903, !2906}
!2906 = !DILocation(line: 190, column: 5, scope: !2899)
!2907 = !DILocation(line: 191, column: 3, scope: !2887)
!2908 = !DILocation(line: 192, column: 1, scope: !2887)
!2909 = distinct !DISubprogram(name: "version_etc_va", scope: !419, file: !419, line: 199, type: !2910, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2919)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2843, !33, !33, !33, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !419, line: 192, size: 192, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2913, file: !419, line: 192, baseType: !6, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2913, file: !419, line: 192, baseType: !6, size: 32, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2913, file: !419, line: 192, baseType: !88, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2913, file: !419, line: 192, baseType: !88, size: 64, offset: 128)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926}
!2920 = !DILocalVariable(name: "stream", arg: 1, scope: !2909, file: !419, line: 199, type: !2843)
!2921 = !DILocalVariable(name: "command_name", arg: 2, scope: !2909, file: !419, line: 200, type: !33)
!2922 = !DILocalVariable(name: "package", arg: 3, scope: !2909, file: !419, line: 200, type: !33)
!2923 = !DILocalVariable(name: "version", arg: 4, scope: !2909, file: !419, line: 201, type: !33)
!2924 = !DILocalVariable(name: "authors", arg: 5, scope: !2909, file: !419, line: 201, type: !2912)
!2925 = !DILocalVariable(name: "n_authors", scope: !2909, file: !419, line: 203, type: !90)
!2926 = !DILocalVariable(name: "authtab", scope: !2909, file: !419, line: 204, type: !2927)
!2927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 640, elements: !364)
!2928 = !DILocation(line: 0, scope: !2909)
!2929 = !DILocation(line: 204, column: 3, scope: !2909)
!2930 = !DILocation(line: 204, column: 15, scope: !2909)
!2931 = !DILocation(line: 0, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !419, line: 206, column: 3)
!2933 = distinct !DILexicalBlock(scope: !2909, file: !419, line: 206, column: 3)
!2934 = !DILocation(line: 208, column: 35, scope: !2932)
!2935 = !DILocation(line: 208, column: 14, scope: !2932)
!2936 = !DILocation(line: 208, column: 33, scope: !2932)
!2937 = !DILocation(line: 208, column: 67, scope: !2932)
!2938 = !DILocation(line: 206, column: 3, scope: !2933)
!2939 = !DILocation(line: 0, scope: !2933)
!2940 = !DILocation(line: 211, column: 3, scope: !2909)
!2941 = !DILocation(line: 213, column: 1, scope: !2909)
!2942 = distinct !DISubprogram(name: "version_etc", scope: !419, file: !419, line: 230, type: !2943, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{null, !2843, !33, !33, !33, null}
!2945 = !{!2946, !2947, !2948, !2949, !2950}
!2946 = !DILocalVariable(name: "stream", arg: 1, scope: !2942, file: !419, line: 230, type: !2843)
!2947 = !DILocalVariable(name: "command_name", arg: 2, scope: !2942, file: !419, line: 231, type: !33)
!2948 = !DILocalVariable(name: "package", arg: 3, scope: !2942, file: !419, line: 231, type: !33)
!2949 = !DILocalVariable(name: "version", arg: 4, scope: !2942, file: !419, line: 232, type: !33)
!2950 = !DILocalVariable(name: "authors", scope: !2942, file: !419, line: 234, type: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !38, line: 52, baseType: !2952)
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2953, line: 32, baseType: !2954)
!2953 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !419, line: 234, baseType: !2955)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2913, size: 192, elements: !73)
!2956 = !DILocation(line: 0, scope: !2942)
!2957 = !DILocation(line: 234, column: 3, scope: !2942)
!2958 = !DILocation(line: 234, column: 11, scope: !2942)
!2959 = !DILocation(line: 236, column: 3, scope: !2942)
!2960 = !DILocation(line: 237, column: 3, scope: !2942)
!2961 = !DILocation(line: 238, column: 3, scope: !2942)
!2962 = !DILocation(line: 239, column: 1, scope: !2942)
!2963 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !419, file: !419, line: 242, type: !117, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !36)
!2964 = !DILocation(line: 244, column: 3, scope: !2963)
!2965 = !DILocation(line: 249, column: 3, scope: !2963)
!2966 = !DILocation(line: 255, column: 3, scope: !2963)
!2967 = !DILocation(line: 260, column: 3, scope: !2963)
!2968 = !DILocation(line: 262, column: 1, scope: !2963)
!2969 = distinct !DISubprogram(name: "xnmalloc", scope: !290, file: !290, line: 99, type: !2970, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!88, !90, !90}
!2972 = !{!2973, !2974}
!2973 = !DILocalVariable(name: "n", arg: 1, scope: !2969, file: !290, line: 99, type: !90)
!2974 = !DILocalVariable(name: "s", arg: 2, scope: !2969, file: !290, line: 99, type: !90)
!2975 = !DILocation(line: 0, scope: !2969)
!2976 = !DILocation(line: 101, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2969, file: !290, line: 101, column: 7)
!2978 = !DILocation(line: 101, column: 7, scope: !2969)
!2979 = !DILocation(line: 102, column: 5, scope: !2977)
!2980 = !DILocation(line: 103, column: 21, scope: !2969)
!2981 = !DILocalVariable(name: "n", arg: 1, scope: !2982, file: !461, line: 39, type: !90)
!2982 = distinct !DISubprogram(name: "xmalloc", scope: !461, file: !461, line: 39, type: !2983, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!88, !90}
!2985 = !{!2981, !2986}
!2986 = !DILocalVariable(name: "p", scope: !2982, file: !461, line: 41, type: !88)
!2987 = !DILocation(line: 0, scope: !2982, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 103, column: 10, scope: !2969)
!2989 = !DILocation(line: 41, column: 13, scope: !2982, inlinedAt: !2988)
!2990 = !DILocation(line: 42, column: 8, scope: !2991, inlinedAt: !2988)
!2991 = distinct !DILexicalBlock(scope: !2982, file: !461, line: 42, column: 7)
!2992 = !DILocation(line: 42, column: 15, scope: !2991, inlinedAt: !2988)
!2993 = !DILocation(line: 42, column: 10, scope: !2991, inlinedAt: !2988)
!2994 = !DILocation(line: 43, column: 5, scope: !2991, inlinedAt: !2988)
!2995 = !DILocation(line: 103, column: 3, scope: !2969)
!2996 = !DILocation(line: 0, scope: !2982)
!2997 = !DILocation(line: 41, column: 13, scope: !2982)
!2998 = !DILocation(line: 42, column: 8, scope: !2991)
!2999 = !DILocation(line: 42, column: 15, scope: !2991)
!3000 = !DILocation(line: 42, column: 10, scope: !2991)
!3001 = !DILocation(line: 43, column: 5, scope: !2991)
!3002 = !DILocation(line: 44, column: 3, scope: !2982)
!3003 = distinct !DISubprogram(name: "xnrealloc", scope: !290, file: !290, line: 112, type: !3004, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!88, !88, !90, !90}
!3006 = !{!3007, !3008, !3009}
!3007 = !DILocalVariable(name: "p", arg: 1, scope: !3003, file: !290, line: 112, type: !88)
!3008 = !DILocalVariable(name: "n", arg: 2, scope: !3003, file: !290, line: 112, type: !90)
!3009 = !DILocalVariable(name: "s", arg: 3, scope: !3003, file: !290, line: 112, type: !90)
!3010 = !DILocation(line: 0, scope: !3003)
!3011 = !DILocation(line: 114, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3003, file: !290, line: 114, column: 7)
!3013 = !DILocation(line: 114, column: 7, scope: !3003)
!3014 = !DILocation(line: 115, column: 5, scope: !3012)
!3015 = !DILocation(line: 116, column: 25, scope: !3003)
!3016 = !DILocalVariable(name: "p", arg: 1, scope: !3017, file: !461, line: 51, type: !88)
!3017 = distinct !DISubprogram(name: "xrealloc", scope: !461, file: !461, line: 51, type: !3018, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!88, !88, !90}
!3020 = !{!3016, !3021}
!3021 = !DILocalVariable(name: "n", arg: 2, scope: !3017, file: !461, line: 51, type: !90)
!3022 = !DILocation(line: 0, scope: !3017, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 116, column: 10, scope: !3003)
!3024 = !DILocation(line: 53, column: 8, scope: !3025, inlinedAt: !3023)
!3025 = distinct !DILexicalBlock(scope: !3017, file: !461, line: 53, column: 7)
!3026 = !DILocation(line: 53, column: 13, scope: !3025, inlinedAt: !3023)
!3027 = !DILocation(line: 53, column: 10, scope: !3025, inlinedAt: !3023)
!3028 = !DILocation(line: 57, column: 7, scope: !3029, inlinedAt: !3023)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !461, line: 54, column: 5)
!3030 = !DILocation(line: 58, column: 7, scope: !3029, inlinedAt: !3023)
!3031 = !DILocation(line: 61, column: 7, scope: !3017, inlinedAt: !3023)
!3032 = !DILocation(line: 62, column: 8, scope: !3033, inlinedAt: !3023)
!3033 = distinct !DILexicalBlock(scope: !3017, file: !461, line: 62, column: 7)
!3034 = !DILocation(line: 62, column: 13, scope: !3033, inlinedAt: !3023)
!3035 = !DILocation(line: 62, column: 10, scope: !3033, inlinedAt: !3023)
!3036 = !DILocation(line: 63, column: 5, scope: !3033, inlinedAt: !3023)
!3037 = !DILocation(line: 116, column: 3, scope: !3003)
!3038 = !DILocation(line: 0, scope: !3017)
!3039 = !DILocation(line: 53, column: 8, scope: !3025)
!3040 = !DILocation(line: 53, column: 13, scope: !3025)
!3041 = !DILocation(line: 53, column: 10, scope: !3025)
!3042 = !DILocation(line: 57, column: 7, scope: !3029)
!3043 = !DILocation(line: 58, column: 7, scope: !3029)
!3044 = !DILocation(line: 61, column: 7, scope: !3017)
!3045 = !DILocation(line: 62, column: 8, scope: !3033)
!3046 = !DILocation(line: 62, column: 13, scope: !3033)
!3047 = !DILocation(line: 62, column: 10, scope: !3033)
!3048 = !DILocation(line: 63, column: 5, scope: !3033)
!3049 = !DILocation(line: 65, column: 1, scope: !3017)
!3050 = !DILocation(line: 0, scope: !464)
!3051 = !DILocation(line: 176, column: 14, scope: !464)
!3052 = !DILocation(line: 178, column: 9, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !464, file: !290, line: 178, column: 7)
!3054 = !DILocation(line: 178, column: 7, scope: !464)
!3055 = !DILocation(line: 180, column: 13, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !290, line: 180, column: 11)
!3057 = distinct !DILexicalBlock(scope: !3053, file: !290, line: 179, column: 5)
!3058 = !DILocation(line: 180, column: 11, scope: !3057)
!3059 = !DILocation(line: 188, column: 30, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3056, file: !290, line: 181, column: 9)
!3061 = !DILocation(line: 189, column: 16, scope: !3060)
!3062 = !DILocation(line: 189, column: 13, scope: !3060)
!3063 = !DILocation(line: 190, column: 9, scope: !3060)
!3064 = !DILocation(line: 191, column: 11, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3057, file: !290, line: 191, column: 11)
!3066 = !DILocation(line: 191, column: 11, scope: !3057)
!3067 = !DILocation(line: 206, column: 7, scope: !464)
!3068 = !DILocation(line: 207, column: 25, scope: !464)
!3069 = !DILocation(line: 0, scope: !3017, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 207, column: 10, scope: !464)
!3071 = !DILocation(line: 53, column: 10, scope: !3025, inlinedAt: !3070)
!3072 = !DILocation(line: 192, column: 9, scope: !3065)
!3073 = !DILocation(line: 200, column: 69, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !290, line: 200, column: 11)
!3075 = distinct !DILexicalBlock(scope: !3053, file: !290, line: 195, column: 5)
!3076 = !DILocation(line: 201, column: 11, scope: !3074)
!3077 = !DILocation(line: 200, column: 11, scope: !3075)
!3078 = !DILocation(line: 202, column: 9, scope: !3074)
!3079 = !DILocation(line: 203, column: 14, scope: !3075)
!3080 = !DILocation(line: 203, column: 18, scope: !3075)
!3081 = !DILocation(line: 203, column: 9, scope: !3075)
!3082 = !DILocation(line: 53, column: 8, scope: !3025, inlinedAt: !3070)
!3083 = !DILocation(line: 57, column: 7, scope: !3029, inlinedAt: !3070)
!3084 = !DILocation(line: 58, column: 7, scope: !3029, inlinedAt: !3070)
!3085 = !DILocation(line: 61, column: 7, scope: !3017, inlinedAt: !3070)
!3086 = !DILocation(line: 62, column: 8, scope: !3033, inlinedAt: !3070)
!3087 = !DILocation(line: 62, column: 13, scope: !3033, inlinedAt: !3070)
!3088 = !DILocation(line: 62, column: 10, scope: !3033, inlinedAt: !3070)
!3089 = !DILocation(line: 63, column: 5, scope: !3033, inlinedAt: !3070)
!3090 = !DILocation(line: 207, column: 3, scope: !464)
!3091 = distinct !DISubprogram(name: "xcharalloc", scope: !290, file: !290, line: 216, type: !2253, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3092)
!3092 = !{!3093}
!3093 = !DILocalVariable(name: "n", arg: 1, scope: !3091, file: !290, line: 216, type: !90)
!3094 = !DILocation(line: 0, scope: !3091)
!3095 = !DILocation(line: 0, scope: !2982, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 218, column: 10, scope: !3091)
!3097 = !DILocation(line: 41, column: 13, scope: !2982, inlinedAt: !3096)
!3098 = !DILocation(line: 42, column: 8, scope: !2991, inlinedAt: !3096)
!3099 = !DILocation(line: 42, column: 15, scope: !2991, inlinedAt: !3096)
!3100 = !DILocation(line: 42, column: 10, scope: !2991, inlinedAt: !3096)
!3101 = !DILocation(line: 43, column: 5, scope: !2991, inlinedAt: !3096)
!3102 = !DILocation(line: 218, column: 3, scope: !3091)
!3103 = distinct !DISubprogram(name: "x2realloc", scope: !461, file: !461, line: 74, type: !3104, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!88, !88, !467}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "p", arg: 1, scope: !3103, file: !461, line: 74, type: !88)
!3108 = !DILocalVariable(name: "pn", arg: 2, scope: !3103, file: !461, line: 74, type: !467)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 0, scope: !464, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 76, column: 10, scope: !3103)
!3112 = !DILocation(line: 176, column: 14, scope: !464, inlinedAt: !3111)
!3113 = !DILocation(line: 178, column: 9, scope: !3053, inlinedAt: !3111)
!3114 = !DILocation(line: 178, column: 7, scope: !464, inlinedAt: !3111)
!3115 = !DILocation(line: 180, column: 13, scope: !3056, inlinedAt: !3111)
!3116 = !DILocation(line: 180, column: 11, scope: !3057, inlinedAt: !3111)
!3117 = !DILocation(line: 191, column: 11, scope: !3065, inlinedAt: !3111)
!3118 = !DILocation(line: 191, column: 11, scope: !3057, inlinedAt: !3111)
!3119 = !DILocation(line: 206, column: 7, scope: !464, inlinedAt: !3111)
!3120 = !DILocation(line: 0, scope: !3017, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 207, column: 10, scope: !464, inlinedAt: !3111)
!3122 = !DILocation(line: 53, column: 10, scope: !3025, inlinedAt: !3121)
!3123 = !DILocation(line: 192, column: 9, scope: !3065, inlinedAt: !3111)
!3124 = !DILocation(line: 201, column: 11, scope: !3074, inlinedAt: !3111)
!3125 = !DILocation(line: 200, column: 11, scope: !3075, inlinedAt: !3111)
!3126 = !DILocation(line: 202, column: 9, scope: !3074, inlinedAt: !3111)
!3127 = !DILocation(line: 203, column: 14, scope: !3075, inlinedAt: !3111)
!3128 = !DILocation(line: 203, column: 18, scope: !3075, inlinedAt: !3111)
!3129 = !DILocation(line: 203, column: 9, scope: !3075, inlinedAt: !3111)
!3130 = !DILocation(line: 53, column: 8, scope: !3025, inlinedAt: !3121)
!3131 = !DILocation(line: 57, column: 7, scope: !3029, inlinedAt: !3121)
!3132 = !DILocation(line: 58, column: 7, scope: !3029, inlinedAt: !3121)
!3133 = !DILocation(line: 61, column: 7, scope: !3017, inlinedAt: !3121)
!3134 = !DILocation(line: 62, column: 8, scope: !3033, inlinedAt: !3121)
!3135 = !DILocation(line: 62, column: 13, scope: !3033, inlinedAt: !3121)
!3136 = !DILocation(line: 62, column: 10, scope: !3033, inlinedAt: !3121)
!3137 = !DILocation(line: 63, column: 5, scope: !3033, inlinedAt: !3121)
!3138 = !DILocation(line: 76, column: 3, scope: !3103)
!3139 = distinct !DISubprogram(name: "xzalloc", scope: !461, file: !461, line: 84, type: !2983, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3140)
!3140 = !{!3141}
!3141 = !DILocalVariable(name: "n", arg: 1, scope: !3139, file: !461, line: 84, type: !90)
!3142 = !DILocation(line: 0, scope: !3139)
!3143 = !DILocalVariable(name: "n", arg: 1, scope: !3144, file: !461, line: 93, type: !90)
!3144 = distinct !DISubprogram(name: "xcalloc", scope: !461, file: !461, line: 93, type: !2970, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3145)
!3145 = !{!3143, !3146, !3147}
!3146 = !DILocalVariable(name: "s", arg: 2, scope: !3144, file: !461, line: 93, type: !90)
!3147 = !DILocalVariable(name: "p", scope: !3144, file: !461, line: 95, type: !88)
!3148 = !DILocation(line: 0, scope: !3144, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 86, column: 10, scope: !3139)
!3150 = !DILocation(line: 100, column: 7, scope: !3151, inlinedAt: !3149)
!3151 = distinct !DILexicalBlock(scope: !3144, file: !461, line: 100, column: 7)
!3152 = !DILocation(line: 101, column: 7, scope: !3151, inlinedAt: !3149)
!3153 = !DILocation(line: 101, column: 18, scope: !3151, inlinedAt: !3149)
!3154 = !DILocation(line: 101, column: 16, scope: !3151, inlinedAt: !3149)
!3155 = !DILocation(line: 100, column: 7, scope: !3144, inlinedAt: !3149)
!3156 = !DILocation(line: 102, column: 5, scope: !3151, inlinedAt: !3149)
!3157 = !DILocation(line: 86, column: 3, scope: !3139)
!3158 = !DILocation(line: 0, scope: !3144)
!3159 = !DILocation(line: 100, column: 7, scope: !3151)
!3160 = !DILocation(line: 101, column: 7, scope: !3151)
!3161 = !DILocation(line: 101, column: 18, scope: !3151)
!3162 = !DILocation(line: 101, column: 16, scope: !3151)
!3163 = !DILocation(line: 100, column: 7, scope: !3144)
!3164 = !DILocation(line: 102, column: 5, scope: !3151)
!3165 = !DILocation(line: 103, column: 3, scope: !3144)
!3166 = distinct !DISubprogram(name: "xmemdup", scope: !461, file: !461, line: 111, type: !3167, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!88, !293, !90}
!3169 = !{!3170, !3171}
!3170 = !DILocalVariable(name: "p", arg: 1, scope: !3166, file: !461, line: 111, type: !293)
!3171 = !DILocalVariable(name: "s", arg: 2, scope: !3166, file: !461, line: 111, type: !90)
!3172 = !DILocation(line: 0, scope: !3166)
!3173 = !DILocation(line: 0, scope: !2982, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 113, column: 18, scope: !3166)
!3175 = !DILocation(line: 41, column: 13, scope: !2982, inlinedAt: !3174)
!3176 = !DILocation(line: 42, column: 8, scope: !2991, inlinedAt: !3174)
!3177 = !DILocation(line: 42, column: 15, scope: !2991, inlinedAt: !3174)
!3178 = !DILocation(line: 42, column: 10, scope: !2991, inlinedAt: !3174)
!3179 = !DILocation(line: 43, column: 5, scope: !2991, inlinedAt: !3174)
!3180 = !DILocalVariable(name: "__dest", arg: 1, scope: !3181, file: !1786, line: 31, type: !3184)
!3181 = distinct !DISubprogram(name: "memcpy", scope: !1786, file: !1786, line: 31, type: !3182, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3186)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!88, !3184, !3185, !90}
!3184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3185 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !293)
!3186 = !{!3180, !3187, !3188}
!3187 = !DILocalVariable(name: "__src", arg: 2, scope: !3181, file: !1786, line: 31, type: !3185)
!3188 = !DILocalVariable(name: "__len", arg: 3, scope: !3181, file: !1786, line: 31, type: !90)
!3189 = !DILocation(line: 0, scope: !3181, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 113, column: 10, scope: !3166)
!3191 = !DILocation(line: 34, column: 10, scope: !3181, inlinedAt: !3190)
!3192 = !DILocation(line: 113, column: 3, scope: !3166)
!3193 = distinct !DISubprogram(name: "xstrdup", scope: !461, file: !461, line: 119, type: !110, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3194)
!3194 = !{!3195}
!3195 = !DILocalVariable(name: "string", arg: 1, scope: !3193, file: !461, line: 119, type: !33)
!3196 = !DILocation(line: 0, scope: !3193)
!3197 = !DILocation(line: 121, column: 27, scope: !3193)
!3198 = !DILocation(line: 121, column: 43, scope: !3193)
!3199 = !DILocation(line: 0, scope: !3166, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 121, column: 10, scope: !3193)
!3201 = !DILocation(line: 0, scope: !2982, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 113, column: 18, scope: !3166, inlinedAt: !3200)
!3203 = !DILocation(line: 41, column: 13, scope: !2982, inlinedAt: !3202)
!3204 = !DILocation(line: 42, column: 8, scope: !2991, inlinedAt: !3202)
!3205 = !DILocation(line: 42, column: 15, scope: !2991, inlinedAt: !3202)
!3206 = !DILocation(line: 42, column: 10, scope: !2991, inlinedAt: !3202)
!3207 = !DILocation(line: 43, column: 5, scope: !2991, inlinedAt: !3202)
!3208 = !DILocation(line: 0, scope: !3181, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 113, column: 10, scope: !3166, inlinedAt: !3200)
!3210 = !DILocation(line: 34, column: 10, scope: !3181, inlinedAt: !3209)
!3211 = !DILocation(line: 121, column: 3, scope: !3193)
!3212 = distinct !DISubprogram(name: "xalloc_die", scope: !482, file: !482, line: 32, type: !117, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !36)
!3213 = !DILocation(line: 34, column: 10, scope: !3212)
!3214 = !DILocation(line: 34, column: 33, scope: !3212)
!3215 = !DILocation(line: 34, column: 3, scope: !3212)
!3216 = !DILocation(line: 40, column: 3, scope: !3212)
!3217 = distinct !DISubprogram(name: "rpl_calloc", scope: !485, file: !485, line: 42, type: !2970, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !3218)
!3218 = !{!3219, !3220, !3221, !3222}
!3219 = !DILocalVariable(name: "n", arg: 1, scope: !3217, file: !485, line: 42, type: !90)
!3220 = !DILocalVariable(name: "s", arg: 2, scope: !3217, file: !485, line: 42, type: !90)
!3221 = !DILocalVariable(name: "result", scope: !3217, file: !485, line: 44, type: !88)
!3222 = !DILocalVariable(name: "bytes", scope: !3223, file: !485, line: 56, type: !90)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !485, line: 53, column: 5)
!3224 = distinct !DILexicalBlock(scope: !3217, file: !485, line: 47, column: 7)
!3225 = !DILocation(line: 0, scope: !3217)
!3226 = !DILocation(line: 47, column: 9, scope: !3224)
!3227 = !DILocation(line: 47, column: 19, scope: !3224)
!3228 = !DILocation(line: 47, column: 14, scope: !3224)
!3229 = !DILocation(line: 0, scope: !3223)
!3230 = !DILocation(line: 57, column: 21, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3223, file: !485, line: 57, column: 11)
!3232 = !DILocation(line: 57, column: 11, scope: !3223)
!3233 = !DILocation(line: 59, column: 11, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !485, line: 58, column: 9)
!3235 = !DILocation(line: 59, column: 17, scope: !3234)
!3236 = !DILocation(line: 65, column: 12, scope: !3217)
!3237 = !DILocation(line: 72, column: 3, scope: !3217)
!3238 = !DILocation(line: 73, column: 1, scope: !3217)
!3239 = distinct !DISubprogram(name: "rpl_fcntl", scope: !401, file: !401, line: 202, type: !153, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3240)
!3240 = !{!3241, !3242, !3243, !3253, !3254, !3257, !3259, !3263}
!3241 = !DILocalVariable(name: "fd", arg: 1, scope: !3239, file: !401, line: 202, type: !35)
!3242 = !DILocalVariable(name: "action", arg: 2, scope: !3239, file: !401, line: 202, type: !35)
!3243 = !DILocalVariable(name: "arg", scope: !3239, file: !401, line: 208, type: !3244)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2953, line: 14, baseType: !3245)
!3245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !401, line: 208, baseType: !3246)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3247, size: 192, elements: !73)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !401, line: 208, size: 192, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3247, file: !401, line: 208, baseType: !6, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3247, file: !401, line: 208, baseType: !6, size: 32, offset: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3247, file: !401, line: 208, baseType: !88, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3247, file: !401, line: 208, baseType: !88, size: 64, offset: 128)
!3253 = !DILocalVariable(name: "result", scope: !3239, file: !401, line: 209, type: !35)
!3254 = !DILocalVariable(name: "target", scope: !3255, file: !401, line: 215, type: !35)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !401, line: 214, column: 7)
!3256 = distinct !DILexicalBlock(scope: !3239, file: !401, line: 212, column: 5)
!3257 = !DILocalVariable(name: "target", scope: !3258, file: !401, line: 222, type: !35)
!3258 = distinct !DILexicalBlock(scope: !3256, file: !401, line: 221, column: 7)
!3259 = !DILocalVariable(name: "x", scope: !3260, file: !401, line: 423, type: !35)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !401, line: 422, column: 13)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !401, line: 260, column: 11)
!3262 = distinct !DILexicalBlock(scope: !3256, file: !401, line: 257, column: 7)
!3263 = !DILocalVariable(name: "p", scope: !3264, file: !401, line: 431, type: !88)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !401, line: 430, column: 13)
!3265 = !DILocation(line: 0, scope: !3239)
!3266 = !DILocation(line: 208, column: 3, scope: !3239)
!3267 = !DILocation(line: 208, column: 11, scope: !3239)
!3268 = !DILocation(line: 210, column: 3, scope: !3239)
!3269 = !DILocation(line: 211, column: 3, scope: !3239)
!3270 = !DILocation(line: 215, column: 22, scope: !3255)
!3271 = !DILocation(line: 0, scope: !3255)
!3272 = !DILocalVariable(name: "fd", arg: 1, scope: !3273, file: !401, line: 447, type: !35)
!3273 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !401, file: !401, line: 447, type: !402, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3274)
!3274 = !{!3272, !3275, !3276}
!3275 = !DILocalVariable(name: "target", arg: 2, scope: !3273, file: !401, line: 447, type: !35)
!3276 = !DILocalVariable(name: "result", scope: !3273, file: !401, line: 449, type: !35)
!3277 = !DILocation(line: 0, scope: !3273, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 216, column: 18, scope: !3255)
!3279 = !DILocation(line: 482, column: 12, scope: !3273, inlinedAt: !3278)
!3280 = !DILocation(line: 222, column: 22, scope: !3258)
!3281 = !DILocation(line: 0, scope: !3258)
!3282 = !DILocation(line: 0, scope: !400, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 223, column: 18, scope: !3258)
!3284 = !DILocation(line: 508, column: 12, scope: !3285, inlinedAt: !3283)
!3285 = distinct !DILexicalBlock(scope: !400, file: !401, line: 508, column: 7)
!3286 = !DILocation(line: 508, column: 9, scope: !3285, inlinedAt: !3283)
!3287 = !DILocation(line: 508, column: 7, scope: !400, inlinedAt: !3283)
!3288 = !DILocation(line: 510, column: 16, scope: !3289, inlinedAt: !3283)
!3289 = distinct !DILexicalBlock(scope: !3285, file: !401, line: 509, column: 5)
!3290 = !DILocation(line: 511, column: 13, scope: !3291, inlinedAt: !3283)
!3291 = distinct !DILexicalBlock(scope: !3289, file: !401, line: 511, column: 11)
!3292 = !DILocation(line: 511, column: 23, scope: !3291, inlinedAt: !3283)
!3293 = !DILocation(line: 511, column: 26, scope: !3291, inlinedAt: !3283)
!3294 = !DILocation(line: 511, column: 32, scope: !3291, inlinedAt: !3283)
!3295 = !DILocation(line: 511, column: 11, scope: !3289, inlinedAt: !3283)
!3296 = !DILocation(line: 513, column: 30, scope: !3297, inlinedAt: !3283)
!3297 = distinct !DILexicalBlock(scope: !3291, file: !401, line: 512, column: 9)
!3298 = !DILocation(line: 529, column: 19, scope: !414, inlinedAt: !3283)
!3299 = !DILocation(line: 0, scope: !3273, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 521, column: 20, scope: !3301, inlinedAt: !3283)
!3301 = distinct !DILexicalBlock(scope: !3291, file: !401, line: 520, column: 9)
!3302 = !DILocation(line: 482, column: 12, scope: !3273, inlinedAt: !3300)
!3303 = !DILocation(line: 522, column: 22, scope: !3304, inlinedAt: !3283)
!3304 = distinct !DILexicalBlock(scope: !3301, file: !401, line: 522, column: 15)
!3305 = !DILocation(line: 522, column: 15, scope: !3301, inlinedAt: !3283)
!3306 = !DILocation(line: 523, column: 32, scope: !3304, inlinedAt: !3283)
!3307 = !DILocation(line: 523, column: 13, scope: !3304, inlinedAt: !3283)
!3308 = !DILocation(line: 0, scope: !3273, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 528, column: 14, scope: !3285, inlinedAt: !3283)
!3310 = !DILocation(line: 482, column: 12, scope: !3273, inlinedAt: !3309)
!3311 = !DILocation(line: 529, column: 22, scope: !414, inlinedAt: !3283)
!3312 = !DILocation(line: 0, scope: !3285, inlinedAt: !3283)
!3313 = !DILocation(line: 529, column: 9, scope: !414, inlinedAt: !3283)
!3314 = !DILocation(line: 531, column: 19, scope: !413, inlinedAt: !3283)
!3315 = !DILocation(line: 0, scope: !413, inlinedAt: !3283)
!3316 = !DILocation(line: 532, column: 17, scope: !417, inlinedAt: !3283)
!3317 = !DILocation(line: 532, column: 21, scope: !417, inlinedAt: !3283)
!3318 = !DILocation(line: 532, column: 54, scope: !417, inlinedAt: !3283)
!3319 = !DILocation(line: 532, column: 24, scope: !417, inlinedAt: !3283)
!3320 = !DILocation(line: 532, column: 68, scope: !417, inlinedAt: !3283)
!3321 = !DILocation(line: 532, column: 11, scope: !413, inlinedAt: !3283)
!3322 = !DILocation(line: 534, column: 29, scope: !416, inlinedAt: !3283)
!3323 = !DILocation(line: 0, scope: !416, inlinedAt: !3283)
!3324 = !DILocation(line: 535, column: 11, scope: !416, inlinedAt: !3283)
!3325 = !DILocation(line: 536, column: 17, scope: !416, inlinedAt: !3283)
!3326 = !DILocation(line: 538, column: 9, scope: !416, inlinedAt: !3283)
!3327 = !DILocation(line: 328, column: 22, scope: !3261)
!3328 = !DILocation(line: 329, column: 13, scope: !3261)
!3329 = !DILocation(line: 423, column: 23, scope: !3260)
!3330 = !DILocation(line: 0, scope: !3260)
!3331 = !DILocation(line: 424, column: 24, scope: !3260)
!3332 = !DILocation(line: 426, column: 13, scope: !3261)
!3333 = !DILocation(line: 431, column: 25, scope: !3264)
!3334 = !DILocation(line: 0, scope: !3264)
!3335 = !DILocation(line: 432, column: 24, scope: !3264)
!3336 = !DILocation(line: 434, column: 13, scope: !3261)
!3337 = !DILocation(line: 0, scope: !3256)
!3338 = !DILocation(line: 442, column: 3, scope: !3239)
!3339 = !DILocation(line: 444, column: 1, scope: !3239)
!3340 = !DILocation(line: 443, column: 3, scope: !3239)
!3341 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !488, file: !488, line: 86, type: !3342, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !3348)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!90, !3344, !33, !90, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1527, line: 6, baseType: !3347)
!3347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !323, line: 21, baseType: !494)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354, !3355}
!3349 = !DILocalVariable(name: "pwc", arg: 1, scope: !3341, file: !488, line: 86, type: !3344)
!3350 = !DILocalVariable(name: "s", arg: 2, scope: !3341, file: !488, line: 86, type: !33)
!3351 = !DILocalVariable(name: "n", arg: 3, scope: !3341, file: !488, line: 86, type: !90)
!3352 = !DILocalVariable(name: "ps", arg: 4, scope: !3341, file: !488, line: 86, type: !3345)
!3353 = !DILocalVariable(name: "ret", scope: !3341, file: !488, line: 88, type: !90)
!3354 = !DILocalVariable(name: "wc", scope: !3341, file: !488, line: 89, type: !1531)
!3355 = !DILocalVariable(name: "uc", scope: !3356, file: !488, line: 156, type: !1404)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !488, line: 155, column: 5)
!3357 = distinct !DILexicalBlock(scope: !3341, file: !488, line: 154, column: 7)
!3358 = !DILocation(line: 0, scope: !3341)
!3359 = !DILocation(line: 89, column: 3, scope: !3341)
!3360 = !DILocation(line: 105, column: 9, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3341, file: !488, line: 105, column: 7)
!3362 = !DILocation(line: 105, column: 7, scope: !3341)
!3363 = !DILocation(line: 145, column: 9, scope: !3341)
!3364 = !DILocation(line: 154, column: 19, scope: !3357)
!3365 = !DILocation(line: 154, column: 31, scope: !3357)
!3366 = !DILocation(line: 154, column: 26, scope: !3357)
!3367 = !DILocation(line: 154, column: 41, scope: !3357)
!3368 = !DILocation(line: 154, column: 7, scope: !3341)
!3369 = !DILocation(line: 156, column: 26, scope: !3356)
!3370 = !DILocation(line: 0, scope: !3356)
!3371 = !DILocation(line: 157, column: 14, scope: !3356)
!3372 = !DILocation(line: 157, column: 12, scope: !3356)
!3373 = !DILocation(line: 163, column: 1, scope: !3341)
!3374 = distinct !DISubprogram(name: "close_stream", scope: !507, file: !507, line: 56, type: !3375, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3379)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!35, !3377}
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2845, line: 7, baseType: !514)
!3379 = !{!3380, !3381, !3383, !3384}
!3380 = !DILocalVariable(name: "stream", arg: 1, scope: !3374, file: !507, line: 56, type: !3377)
!3381 = !DILocalVariable(name: "some_pending", scope: !3374, file: !507, line: 58, type: !3382)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!3383 = !DILocalVariable(name: "prev_fail", scope: !3374, file: !507, line: 59, type: !3382)
!3384 = !DILocalVariable(name: "fclose_fail", scope: !3374, file: !507, line: 60, type: !3382)
!3385 = !DILocation(line: 0, scope: !3374)
!3386 = !DILocation(line: 58, column: 30, scope: !3374)
!3387 = !DILocalVariable(name: "__stream", arg: 1, scope: !3388, file: !3389, line: 135, type: !3377)
!3388 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3389, file: !3389, line: 135, type: !3375, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3390)
!3389 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3390 = !{!3387}
!3391 = !DILocation(line: 0, scope: !3388, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 59, column: 27, scope: !3374)
!3393 = !DILocation(line: 137, column: 10, scope: !3388, inlinedAt: !3392)
!3394 = !{!3395, !1182, i64 0}
!3395 = !{!"_IO_FILE", !1182, i64 0, !1111, i64 8, !1111, i64 16, !1111, i64 24, !1111, i64 32, !1111, i64 40, !1111, i64 48, !1111, i64 56, !1111, i64 64, !1111, i64 72, !1111, i64 80, !1111, i64 88, !1111, i64 96, !1111, i64 104, !1182, i64 112, !1182, i64 116, !2289, i64 120, !1779, i64 128, !1112, i64 130, !1112, i64 131, !1111, i64 136, !2289, i64 144, !1111, i64 152, !1111, i64 160, !1111, i64 168, !1111, i64 176, !2289, i64 184, !1182, i64 192, !1112, i64 196}
!3396 = !DILocation(line: 59, column: 43, scope: !3374)
!3397 = !DILocation(line: 60, column: 29, scope: !3374)
!3398 = !DILocation(line: 60, column: 45, scope: !3374)
!3399 = !DILocation(line: 70, column: 17, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3374, file: !507, line: 70, column: 7)
!3401 = !DILocation(line: 58, column: 50, scope: !3374)
!3402 = !DILocation(line: 70, column: 33, scope: !3400)
!3403 = !DILocation(line: 70, column: 53, scope: !3400)
!3404 = !DILocation(line: 70, column: 59, scope: !3400)
!3405 = !DILocation(line: 70, column: 7, scope: !3374)
!3406 = !DILocation(line: 72, column: 11, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3400, file: !507, line: 71, column: 5)
!3408 = !DILocation(line: 73, column: 9, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3407, file: !507, line: 72, column: 11)
!3410 = !DILocation(line: 73, column: 15, scope: !3409)
!3411 = !DILocation(line: 78, column: 1, scope: !3374)
!3412 = distinct !DISubprogram(name: "hard_locale", scope: !546, file: !546, line: 27, type: !504, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3413)
!3413 = !{!3414, !3415}
!3414 = !DILocalVariable(name: "category", arg: 1, scope: !3412, file: !546, line: 27, type: !35)
!3415 = !DILocalVariable(name: "locale", scope: !3412, file: !546, line: 29, type: !3416)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2056, elements: !3417)
!3417 = !{!3418}
!3418 = !DISubrange(count: 257)
!3419 = !DILocation(line: 0, scope: !3412)
!3420 = !DILocation(line: 29, column: 3, scope: !3412)
!3421 = !DILocation(line: 29, column: 8, scope: !3412)
!3422 = !DILocation(line: 31, column: 7, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3412, file: !546, line: 31, column: 7)
!3424 = !DILocation(line: 31, column: 7, scope: !3412)
!3425 = !DILocation(line: 34, column: 12, scope: !3412)
!3426 = !DILocation(line: 34, column: 38, scope: !3412)
!3427 = !DILocation(line: 34, column: 41, scope: !3412)
!3428 = !DILocation(line: 34, column: 66, scope: !3412)
!3429 = !DILocation(line: 35, column: 1, scope: !3412)
!3430 = distinct !DISubprogram(name: "locale_charset", scope: !553, file: !553, line: 831, type: !346, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !552, retainedNodes: !3431)
!3431 = !{!3432}
!3432 = !DILocalVariable(name: "codeset", scope: !3430, file: !553, line: 833, type: !33)
!3433 = !DILocation(line: 847, column: 13, scope: !3430)
!3434 = !DILocation(line: 0, scope: !3430)
!3435 = !DILocation(line: 911, column: 15, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3430, file: !553, line: 911, column: 7)
!3437 = !DILocation(line: 911, column: 7, scope: !3430)
!3438 = !DILocation(line: 1070, column: 13, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !553, line: 1070, column: 13)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !553, line: 1060, column: 7)
!3441 = distinct !DILexicalBlock(scope: !3430, file: !553, line: 1019, column: 3)
!3442 = !DILocation(line: 1070, column: 24, scope: !3439)
!3443 = !DILocation(line: 1070, column: 13, scope: !3440)
!3444 = !DILocation(line: 1158, column: 3, scope: !3430)
!3445 = distinct !DISubprogram(name: "setlocale_null_r", scope: !946, file: !946, line: 269, type: !3446, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!35, !35, !31, !90}
!3448 = !{!3449, !3450, !3451}
!3449 = !DILocalVariable(name: "category", arg: 1, scope: !3445, file: !946, line: 269, type: !35)
!3450 = !DILocalVariable(name: "buf", arg: 2, scope: !3445, file: !946, line: 269, type: !31)
!3451 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3445, file: !946, line: 269, type: !90)
!3452 = !DILocation(line: 0, scope: !3445)
!3453 = !DILocalVariable(name: "category", arg: 1, scope: !3454, file: !946, line: 91, type: !35)
!3454 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !946, file: !946, line: 91, type: !3446, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3455)
!3455 = !{!3453, !3456, !3457, !3458, !3459}
!3456 = !DILocalVariable(name: "buf", arg: 2, scope: !3454, file: !946, line: 91, type: !31)
!3457 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3454, file: !946, line: 91, type: !90)
!3458 = !DILocalVariable(name: "result", scope: !3454, file: !946, line: 140, type: !33)
!3459 = !DILocalVariable(name: "length", scope: !3460, file: !946, line: 154, type: !90)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !946, line: 153, column: 5)
!3461 = distinct !DILexicalBlock(scope: !3454, file: !946, line: 142, column: 7)
!3462 = !DILocation(line: 0, scope: !3454, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 274, column: 10, scope: !3445)
!3464 = !DILocalVariable(name: "category", arg: 1, scope: !3465, file: !946, line: 60, type: !35)
!3465 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !946, file: !946, line: 60, type: !3466, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!33, !35}
!3468 = !{!3464, !3469}
!3469 = !DILocalVariable(name: "result", scope: !3465, file: !946, line: 62, type: !33)
!3470 = !DILocation(line: 0, scope: !3465, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 140, column: 24, scope: !3454, inlinedAt: !3463)
!3472 = !DILocation(line: 62, column: 24, scope: !3465, inlinedAt: !3471)
!3473 = !DILocation(line: 142, column: 14, scope: !3461, inlinedAt: !3463)
!3474 = !DILocation(line: 142, column: 7, scope: !3454, inlinedAt: !3463)
!3475 = !DILocation(line: 145, column: 19, scope: !3476, inlinedAt: !3463)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !946, line: 145, column: 11)
!3477 = distinct !DILexicalBlock(scope: !3461, file: !946, line: 143, column: 5)
!3478 = !DILocation(line: 145, column: 11, scope: !3477, inlinedAt: !3463)
!3479 = !DILocation(line: 149, column: 16, scope: !3476, inlinedAt: !3463)
!3480 = !DILocation(line: 149, column: 9, scope: !3476, inlinedAt: !3463)
!3481 = !DILocation(line: 154, column: 23, scope: !3460, inlinedAt: !3463)
!3482 = !DILocation(line: 0, scope: !3460, inlinedAt: !3463)
!3483 = !DILocation(line: 155, column: 18, scope: !3484, inlinedAt: !3463)
!3484 = distinct !DILexicalBlock(scope: !3460, file: !946, line: 155, column: 11)
!3485 = !DILocation(line: 155, column: 11, scope: !3460, inlinedAt: !3463)
!3486 = !DILocation(line: 157, column: 39, scope: !3487, inlinedAt: !3463)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !946, line: 156, column: 9)
!3488 = !DILocalVariable(name: "__dest", arg: 1, scope: !3489, file: !1786, line: 31, type: !3184)
!3489 = distinct !DISubprogram(name: "memcpy", scope: !1786, file: !1786, line: 31, type: !3182, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3490)
!3490 = !{!3488, !3491, !3492}
!3491 = !DILocalVariable(name: "__src", arg: 2, scope: !3489, file: !1786, line: 31, type: !3185)
!3492 = !DILocalVariable(name: "__len", arg: 3, scope: !3489, file: !1786, line: 31, type: !90)
!3493 = !DILocation(line: 0, scope: !3489, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 157, column: 11, scope: !3487, inlinedAt: !3463)
!3495 = !DILocation(line: 34, column: 10, scope: !3489, inlinedAt: !3494)
!3496 = !DILocation(line: 158, column: 11, scope: !3487, inlinedAt: !3463)
!3497 = !DILocation(line: 162, column: 23, scope: !3498, inlinedAt: !3463)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !946, line: 162, column: 15)
!3499 = distinct !DILexicalBlock(scope: !3484, file: !946, line: 161, column: 9)
!3500 = !DILocation(line: 162, column: 15, scope: !3499, inlinedAt: !3463)
!3501 = !DILocation(line: 167, column: 44, scope: !3502, inlinedAt: !3463)
!3502 = distinct !DILexicalBlock(scope: !3498, file: !946, line: 163, column: 13)
!3503 = !DILocation(line: 0, scope: !3489, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 167, column: 15, scope: !3502, inlinedAt: !3463)
!3505 = !DILocation(line: 34, column: 10, scope: !3489, inlinedAt: !3504)
!3506 = !DILocation(line: 168, column: 15, scope: !3502, inlinedAt: !3463)
!3507 = !DILocation(line: 168, column: 32, scope: !3502, inlinedAt: !3463)
!3508 = !DILocation(line: 169, column: 13, scope: !3502, inlinedAt: !3463)
!3509 = !DILocation(line: 0, scope: !3461, inlinedAt: !3463)
!3510 = !DILocation(line: 274, column: 3, scope: !3445)
!3511 = distinct !DISubprogram(name: "setlocale_null", scope: !946, file: !946, line: 301, type: !3466, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3512)
!3512 = !{!3513}
!3513 = !DILocalVariable(name: "category", arg: 1, scope: !3511, file: !946, line: 301, type: !35)
!3514 = !DILocation(line: 0, scope: !3511)
!3515 = !DILocation(line: 0, scope: !3465, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 304, column: 10, scope: !3511)
!3517 = !DILocation(line: 62, column: 24, scope: !3465, inlinedAt: !3516)
!3518 = !DILocation(line: 304, column: 3, scope: !3511)
!3519 = distinct !DISubprogram(name: "rpl_fclose", scope: !949, file: !949, line: 58, type: !3520, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !3524)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!35, !3522}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2845, line: 7, baseType: !955)
!3524 = !{!3525, !3526, !3527, !3528}
!3525 = !DILocalVariable(name: "fp", arg: 1, scope: !3519, file: !949, line: 58, type: !3522)
!3526 = !DILocalVariable(name: "saved_errno", scope: !3519, file: !949, line: 60, type: !35)
!3527 = !DILocalVariable(name: "fd", scope: !3519, file: !949, line: 61, type: !35)
!3528 = !DILocalVariable(name: "result", scope: !3519, file: !949, line: 62, type: !35)
!3529 = !DILocation(line: 0, scope: !3519)
!3530 = !DILocation(line: 65, column: 8, scope: !3519)
!3531 = !DILocation(line: 66, column: 10, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3519, file: !949, line: 66, column: 7)
!3533 = !DILocation(line: 66, column: 7, scope: !3519)
!3534 = !DILocation(line: 67, column: 12, scope: !3532)
!3535 = !DILocation(line: 67, column: 5, scope: !3532)
!3536 = !DILocation(line: 72, column: 9, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3519, file: !949, line: 72, column: 7)
!3538 = !DILocation(line: 72, column: 23, scope: !3537)
!3539 = !DILocation(line: 72, column: 33, scope: !3537)
!3540 = !DILocation(line: 72, column: 26, scope: !3537)
!3541 = !DILocation(line: 72, column: 59, scope: !3537)
!3542 = !DILocation(line: 73, column: 7, scope: !3537)
!3543 = !DILocation(line: 73, column: 10, scope: !3537)
!3544 = !DILocation(line: 72, column: 7, scope: !3519)
!3545 = !DILocation(line: 100, column: 12, scope: !3519)
!3546 = !DILocation(line: 105, column: 7, scope: !3519)
!3547 = !DILocation(line: 74, column: 19, scope: !3537)
!3548 = !DILocation(line: 105, column: 19, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3519, file: !949, line: 105, column: 7)
!3550 = !DILocation(line: 107, column: 13, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3549, file: !949, line: 106, column: 5)
!3552 = !DILocation(line: 109, column: 5, scope: !3551)
!3553 = !DILocation(line: 112, column: 1, scope: !3519)
!3554 = distinct !DISubprogram(name: "rpl_fflush", scope: !992, file: !992, line: 129, type: !3555, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !3559)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!35, !3557}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2845, line: 7, baseType: !998)
!3559 = !{!3560}
!3560 = !DILocalVariable(name: "stream", arg: 1, scope: !3554, file: !992, line: 129, type: !3557)
!3561 = !DILocation(line: 0, scope: !3554)
!3562 = !DILocation(line: 150, column: 14, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3554, file: !992, line: 150, column: 7)
!3564 = !DILocation(line: 150, column: 22, scope: !3563)
!3565 = !DILocation(line: 150, column: 27, scope: !3563)
!3566 = !DILocation(line: 150, column: 7, scope: !3554)
!3567 = !DILocation(line: 151, column: 12, scope: !3563)
!3568 = !DILocation(line: 151, column: 5, scope: !3563)
!3569 = !DILocalVariable(name: "fp", arg: 1, scope: !3570, file: !992, line: 41, type: !3557)
!3570 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !992, file: !992, line: 41, type: !3571, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{null, !3557}
!3573 = !{!3569}
!3574 = !DILocation(line: 0, scope: !3570, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 156, column: 3, scope: !3554)
!3576 = !DILocation(line: 43, column: 11, scope: !3577, inlinedAt: !3575)
!3577 = distinct !DILexicalBlock(scope: !3570, file: !992, line: 43, column: 7)
!3578 = !DILocation(line: 43, column: 18, scope: !3577, inlinedAt: !3575)
!3579 = !DILocation(line: 43, column: 7, scope: !3570, inlinedAt: !3575)
!3580 = !DILocation(line: 45, column: 5, scope: !3577, inlinedAt: !3575)
!3581 = !DILocation(line: 158, column: 10, scope: !3554)
!3582 = !DILocation(line: 158, column: 3, scope: !3554)
!3583 = !DILocation(line: 235, column: 1, scope: !3554)
!3584 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1033, file: !1033, line: 28, type: !3585, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3590)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!35, !3587, !3589, !35}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2845, line: 7, baseType: !1039)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !38, line: 63, baseType: !64)
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DILocalVariable(name: "fp", arg: 1, scope: !3584, file: !1033, line: 28, type: !3587)
!3592 = !DILocalVariable(name: "offset", arg: 2, scope: !3584, file: !1033, line: 28, type: !3589)
!3593 = !DILocalVariable(name: "whence", arg: 3, scope: !3584, file: !1033, line: 28, type: !35)
!3594 = !DILocalVariable(name: "pos", scope: !3595, file: !1033, line: 117, type: !3589)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !1033, line: 113, column: 5)
!3596 = distinct !DILexicalBlock(scope: !3584, file: !1033, line: 52, column: 7)
!3597 = !DILocation(line: 0, scope: !3584)
!3598 = !DILocation(line: 52, column: 11, scope: !3596)
!3599 = !{!3395, !1111, i64 16}
!3600 = !DILocation(line: 52, column: 31, scope: !3596)
!3601 = !{!3395, !1111, i64 8}
!3602 = !DILocation(line: 52, column: 24, scope: !3596)
!3603 = !DILocation(line: 53, column: 7, scope: !3596)
!3604 = !DILocation(line: 53, column: 14, scope: !3596)
!3605 = !{!3395, !1111, i64 40}
!3606 = !DILocation(line: 53, column: 35, scope: !3596)
!3607 = !{!3395, !1111, i64 32}
!3608 = !DILocation(line: 53, column: 28, scope: !3596)
!3609 = !DILocation(line: 54, column: 7, scope: !3596)
!3610 = !DILocation(line: 54, column: 14, scope: !3596)
!3611 = !{!3395, !1111, i64 72}
!3612 = !DILocation(line: 54, column: 28, scope: !3596)
!3613 = !DILocation(line: 52, column: 7, scope: !3584)
!3614 = !DILocation(line: 117, column: 26, scope: !3595)
!3615 = !DILocation(line: 117, column: 19, scope: !3595)
!3616 = !DILocation(line: 0, scope: !3595)
!3617 = !DILocation(line: 118, column: 15, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3595, file: !1033, line: 118, column: 11)
!3619 = !DILocation(line: 118, column: 11, scope: !3595)
!3620 = !DILocation(line: 129, column: 11, scope: !3595)
!3621 = !DILocation(line: 129, column: 18, scope: !3595)
!3622 = !DILocation(line: 130, column: 11, scope: !3595)
!3623 = !DILocation(line: 130, column: 19, scope: !3595)
!3624 = !{!3395, !2289, i64 144}
!3625 = !DILocation(line: 161, column: 7, scope: !3595)
!3626 = !DILocation(line: 163, column: 10, scope: !3584)
!3627 = !DILocation(line: 163, column: 3, scope: !3584)
!3628 = !DILocation(line: 164, column: 1, scope: !3584)
