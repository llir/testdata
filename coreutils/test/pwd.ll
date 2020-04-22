; ModuleID = 'coreutils-8.32/src/pwd.bc'
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_name = type { i8*, i64, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print the full filename of the current working directory.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [111 x i8] c"  -L, --logical   use PWD from environment, even if it contains symlinks\0A  -P, --physical  avoid all symlinks\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\0AIf no option is specified, -P is assumed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.15 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"ignoring non-option arguments\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"cannot open directory %s\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"failed to chdir to %s\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"reading directory %s\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"couldn't find directory entry in %s with matching i-node\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), align 8, !dbg !213
@.str.48 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !218
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !261
@.str.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.52 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !264
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !270
@.str.60 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.72, i32 0, i32 0), i8* null], align 16, !dbg !311
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !400
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !406
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !408
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.74 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.76 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.77 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.78 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.79 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !412
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !419
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !410
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !421
@.str.88 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.90 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.92 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.93 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.94 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.107 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.108 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.109 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.110 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.111 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.112 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.113 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !427
@.str.1.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1101 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1106, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i32 %0, metadata !1105, metadata !DIExpression()), !dbg !1126
  %3 = icmp eq i32 %0, 0, !dbg !1127
  br i1 %3, label %9, label %4, !dbg !1128

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1129, !tbaa !1131
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1129
  %7 = load i8*, i8** @program_name, align 8, !dbg !1129, !tbaa !1131
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1129
  br label %66, !dbg !1129

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1135
  %11 = load i8*, i8** @program_name, align 8, !dbg !1135, !tbaa !1131
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1135
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1136
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !1131
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1136
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1137
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1137, !tbaa !1131
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1137
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1138
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1138, !tbaa !1131
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1138
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1139
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1139, !tbaa !1131
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1139
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1140
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1140, !tbaa !1131
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1140
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #18, !dbg !1141
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1141
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !1109, metadata !DIExpression()) #18, !dbg !1142
  %30 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1143
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %30) #18, !dbg !1143
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %30, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1122
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !1110, metadata !DIExpression()) #18, !dbg !1142
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1111, metadata !DIExpression()) #18, !dbg !1142
  %31 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1144
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !1111, metadata !DIExpression()) #18, !dbg !1142
  br label %32, !dbg !1145

32:                                               ; preds = %37, %9
  %33 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %34 = phi %struct.infomap* [ %38, %37 ], [ %31, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !1111, metadata !DIExpression()) #18, !dbg !1142
  %35 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %33) #21, !dbg !1146
  %36 = icmp eq i32 %35, 0, !dbg !1146
  br i1 %36, label %42, label %37, !dbg !1145

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 1, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1111, metadata !DIExpression()) #18, !dbg !1142
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 0, !dbg !1148
  %40 = load i8*, i8** %39, align 8, !dbg !1148, !tbaa !1149
  %41 = icmp eq i8* %40, null, !dbg !1151
  br i1 %41, label %42, label %32, !dbg !1152, !llvm.loop !1153

42:                                               ; preds = %37, %32
  %43 = phi %struct.infomap* [ %38, %37 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !1111, metadata !DIExpression()) #18, !dbg !1142
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !1111, metadata !DIExpression()) #18, !dbg !1142
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 0, i32 1, !dbg !1154
  %45 = load i8*, i8** %44, align 8, !dbg !1154, !tbaa !1156
  %46 = icmp eq i8* %45, null, !dbg !1157
  %47 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %45, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %47, metadata !1110, metadata !DIExpression()) #18, !dbg !1142
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #18, !dbg !1159
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #18, !dbg !1159
  %50 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %50, metadata !1118, metadata !DIExpression()) #18, !dbg !1142
  %51 = icmp eq i8* %50, null, !dbg !1161
  br i1 %51, label %59, label %52, !dbg !1163

52:                                               ; preds = %42
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #21, !dbg !1164
  %54 = icmp eq i32 %53, 0, !dbg !1164
  br i1 %54, label %59, label %55, !dbg !1165

55:                                               ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1166
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1166, !tbaa !1131
  %58 = tail call i32 @fputs_unlocked(i8* %56, %struct._IO_FILE* %57) #18, !dbg !1166
  br label %59, !dbg !1168

59:                                               ; preds = %42, %52, %55
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #18, !dbg !1169
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1169
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #18, !dbg !1170
  %63 = icmp eq i8* %47, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), !dbg !1170
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !1170
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %47, i8* %64) #18, !dbg !1170
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %30) #18, !dbg !1171
  br label %66

66:                                               ; preds = %59, %4
  tail call void @exit(i32 %0) #22, !dbg !1172
  unreachable, !dbg !1172
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !25 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !35 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !104 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1173 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1193, metadata !DIExpression()), !dbg !1253
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1246, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1246, metadata !DIExpression()), !dbg !1266
  %5 = alloca %struct.timespec, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec* %5, metadata !1262, metadata !DIExpression()), !dbg !1267
  %6 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1264, metadata !DIExpression()), !dbg !1268
  %7 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !1269, metadata !DIExpression()), !dbg !1275
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1272, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i32 %0, metadata !1178, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8** %1, metadata !1179, metadata !DIExpression()), !dbg !1280
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1281
  %10 = icmp ne i8* %9, null, !dbg !1282
  %11 = zext i1 %10 to i8, !dbg !1283
  call void @llvm.dbg.value(metadata i8 %11, metadata !1181, metadata !DIExpression()), !dbg !1280
  %12 = load i8*, i8** %1, align 8, !dbg !1284, !tbaa !1131
  tail call void @set_program_name(i8* %12) #18, !dbg !1285
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1286
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !1287
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !1288
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1289
  br label %17, !dbg !1290

17:                                               ; preds = %21, %2
  %18 = phi i8 [ %11, %2 ], [ %22, %21 ], !dbg !1283
  call void @llvm.dbg.value(metadata i8 %18, metadata !1181, metadata !DIExpression()), !dbg !1280
  %19 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %19, metadata !1182, metadata !DIExpression()), !dbg !1292
  switch i32 %19, label %27 [
    i32 -1, label %28
    i32 76, label %21
    i32 80, label %20
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !1293

20:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 0, metadata !1181, metadata !DIExpression()), !dbg !1280
  br label %21, !dbg !1294

21:                                               ; preds = %20, %17
  %22 = phi i8 [ 0, %20 ], [ 1, %17 ]
  br label %17, !dbg !1280

23:                                               ; preds = %17
  tail call void @usage(i32 0) #23, !dbg !1296
  unreachable, !dbg !1296

24:                                               ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1297, !tbaa !1131
  %26 = load i8*, i8** @Version, align 8, !dbg !1297, !tbaa !1131
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* null) #18, !dbg !1297
  tail call void @exit(i32 0) #22, !dbg !1297
  unreachable, !dbg !1297

27:                                               ; preds = %17
  tail call void @usage(i32 1) #23, !dbg !1298
  unreachable, !dbg !1298

28:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 %18, metadata !1181, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8 %18, metadata !1181, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8 %18, metadata !1181, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8 %18, metadata !1181, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8 %18, metadata !1181, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8 %18, metadata !1181, metadata !DIExpression()), !dbg !1280
  %29 = load i32, i32* @optind, align 4, !dbg !1299, !tbaa !1301
  %30 = icmp slt i32 %29, %0, !dbg !1303
  br i1 %30, label %31, label %33, !dbg !1304

31:                                               ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 5) #18, !dbg !1305
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #18, !dbg !1306
  br label %33, !dbg !1306

33:                                               ; preds = %31, %28
  %34 = icmp eq i8 %18, 0, !dbg !1307
  br i1 %34, label %78, label %35, !dbg !1308

35:                                               ; preds = %33
  %36 = bitcast %struct.stat* %7 to i8*, !dbg !1309
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %36) #18, !dbg !1309
  %37 = bitcast %struct.stat* %8 to i8*, !dbg !1310
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %37) #18, !dbg !1310
  %38 = tail call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #18, !dbg !1311
  call void @llvm.dbg.value(metadata i8* %38, metadata !1273, metadata !DIExpression()) #18, !dbg !1312
  %39 = icmp eq i8* %38, null, !dbg !1313
  br i1 %39, label %75, label %40, !dbg !1315

40:                                               ; preds = %35
  %41 = load i8, i8* %38, align 1, !dbg !1316, !tbaa !1317
  %42 = icmp eq i8 %41, 47, !dbg !1318
  br i1 %42, label %43, label %75, !dbg !1319

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %38, metadata !1274, metadata !DIExpression()) #18, !dbg !1312
  %44 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %38, i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #21, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %44, metadata !1274, metadata !DIExpression()) #18, !dbg !1312
  %45 = icmp eq i8* %44, null, !dbg !1321
  br i1 %45, label %57, label %46, !dbg !1321

46:                                               ; preds = %43, %53
  %47 = phi i8* [ %55, %53 ], [ %44, %43 ]
  %48 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !1322
  %49 = load i8, i8* %48, align 1, !dbg !1322, !tbaa !1317
  switch i8 %49, label %53 [
    i8 0, label %75
    i8 47, label %75
    i8 46, label %50
  ], !dbg !1325

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, i8* %47, i64 3, !dbg !1326
  %52 = load i8, i8* %51, align 1, !dbg !1326, !tbaa !1317
  switch i8 %52, label %53 [
    i8 0, label %75
    i8 47, label %75
  ], !dbg !1327

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %54, metadata !1274, metadata !DIExpression()) #18, !dbg !1312
  %55 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %54, i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #21, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %55, metadata !1274, metadata !DIExpression()) #18, !dbg !1312
  %56 = icmp eq i8* %55, null, !dbg !1321
  br i1 %56, label %57, label %46, !dbg !1321, !llvm.loop !1329

57:                                               ; preds = %53, %43
  call void @llvm.dbg.value(metadata i8* %38, metadata !1331, metadata !DIExpression()) #18, !dbg !1338
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1337, metadata !DIExpression()) #18, !dbg !1338
  %58 = call i32 @__xstat(i32 1, i8* nonnull %38, %struct.stat* nonnull %7) #18, !dbg !1341
  %59 = icmp eq i32 %58, 0, !dbg !1342
  br i1 %59, label %60, label %75, !dbg !1343

60:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !1331, metadata !DIExpression()) #18, !dbg !1344
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !1337, metadata !DIExpression()) #18, !dbg !1344
  %61 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %8) #18, !dbg !1346
  %62 = icmp eq i32 %61, 0, !dbg !1347
  br i1 %62, label %63, label %75, !dbg !1348

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !1349
  %65 = load i64, i64* %64, align 8, !dbg !1349, !tbaa !1350
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 1, !dbg !1349
  %67 = load i64, i64* %66, align 8, !dbg !1349, !tbaa !1350
  %68 = icmp eq i64 %65, %67, !dbg !1349
  br i1 %68, label %69, label %75, !dbg !1349

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !1349
  %71 = load i64, i64* %70, align 8, !dbg !1349, !tbaa !1354
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 0, !dbg !1349
  %73 = load i64, i64* %72, align 8, !dbg !1349, !tbaa !1354
  %74 = icmp eq i64 %71, %73, !dbg !1349
  br i1 %74, label %76, label %75, !dbg !1355

75:                                               ; preds = %50, %50, %46, %46, %40, %35, %69, %63, %60, %57
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %37) #18, !dbg !1356
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #18, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %38, metadata !1180, metadata !DIExpression()), !dbg !1280
  br label %78, !dbg !1357

76:                                               ; preds = %69
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %37) #18, !dbg !1356
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #18, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %38, metadata !1180, metadata !DIExpression()), !dbg !1280
  %77 = call i32 @puts(i8* nonnull %38), !dbg !1358
  br label %249, !dbg !1361

78:                                               ; preds = %75, %33
  %79 = call i8* @xgetcwd() #18, !dbg !1362
  call void @llvm.dbg.value(metadata i8* %79, metadata !1180, metadata !DIExpression()), !dbg !1280
  %80 = icmp eq i8* %79, null, !dbg !1363
  br i1 %80, label %83, label %81, !dbg !1364

81:                                               ; preds = %78
  %82 = call i32 @puts(i8* nonnull %79), !dbg !1365
  call void @free(i8* nonnull %79) #18, !dbg !1367
  br label %249, !dbg !1368

83:                                               ; preds = %78
  %84 = call noalias i8* @xmalloc(i64 24) #18, !dbg !1369
  %85 = bitcast i8* %84 to %struct.file_name*, !dbg !1369
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !1374, metadata !DIExpression()) #18, !dbg !1376
  %86 = getelementptr inbounds i8, i8* %84, i64 8, !dbg !1377
  %87 = bitcast i8* %86 to i64*, !dbg !1377
  store i64 8192, i64* %87, align 8, !dbg !1378, !tbaa !1379
  %88 = call noalias i8* @xmalloc(i64 8192) #18, !dbg !1381
  %89 = bitcast i8* %84 to i8**, !dbg !1382
  store i8* %88, i8** %89, align 8, !dbg !1383, !tbaa !1384
  %90 = getelementptr inbounds i8, i8* %88, i64 8191, !dbg !1385
  %91 = getelementptr inbounds i8, i8* %84, i64 16, !dbg !1386
  %92 = bitcast i8* %91 to i8**, !dbg !1386
  store i8* %90, i8** %92, align 8, !dbg !1387, !tbaa !1388
  store i8 0, i8* %90, align 1, !dbg !1389, !tbaa !1317
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !1184, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !1260, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 1, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  %93 = bitcast %struct.timespec* %5 to i8*, !dbg !1392
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %93) #18, !dbg !1392
  %94 = call %struct.timespec* @get_root_dev_ino(%struct.timespec* nonnull %5) #18, !dbg !1393
  call void @llvm.dbg.value(metadata %struct.timespec* %94, metadata !1263, metadata !DIExpression()) #18, !dbg !1391
  %95 = bitcast %struct.stat* %6 to i8*, !dbg !1394
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %95) #18, !dbg !1394
  %96 = icmp eq %struct.timespec* %94, null, !dbg !1395
  br i1 %96, label %97, label %102, !dbg !1397

97:                                               ; preds = %83
  %98 = tail call i32* @__errno_location() #24, !dbg !1398
  %99 = load i32, i32* %98, align 4, !dbg !1398, !tbaa !1301
  %100 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 5) #18, !dbg !1398
  %101 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #18, !dbg !1398
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %99, i8* %100, i8* %101) #18, !dbg !1398
  unreachable, !dbg !1398

102:                                              ; preds = %83
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !1331, metadata !DIExpression()) #18, !dbg !1399
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !1337, metadata !DIExpression()) #18, !dbg !1399
  %103 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %6) #18, !dbg !1402
  %104 = icmp slt i32 %103, 0, !dbg !1403
  br i1 %104, label %115, label %105, !dbg !1404

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !1405
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %94, i64 0, i32 0, !dbg !1405
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !1405
  %109 = getelementptr inbounds %struct.timespec, %struct.timespec* %94, i64 0, i32 1, !dbg !1405
  %110 = bitcast %struct.stat* %3 to i8*, !dbg !1407
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0, !dbg !1407
  %112 = bitcast %struct.stat* %4 to i8*, !dbg !1408
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1, !dbg !1409
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0, !dbg !1412
  br label %120, !dbg !1414

115:                                              ; preds = %102
  %116 = tail call i32* @__errno_location() #24, !dbg !1415
  %117 = load i32, i32* %116, align 4, !dbg !1415, !tbaa !1301
  %118 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #18, !dbg !1415
  %119 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #18, !dbg !1415
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %117, i8* %118, i8* %119) #18, !dbg !1415
  unreachable, !dbg !1415

120:                                              ; preds = %238, %105
  %121 = phi i64 [ %130, %238 ], [ 1, %105 ], !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  %122 = load i64, i64* %106, align 8, !dbg !1416, !tbaa !1350
  %123 = load i64, i64* %107, align 8, !dbg !1416, !tbaa !1417
  %124 = icmp eq i64 %122, %123, !dbg !1416
  br i1 %124, label %125, label %129, !dbg !1416

125:                                              ; preds = %120
  %126 = load i64, i64* %108, align 8, !dbg !1416, !tbaa !1354
  %127 = load i64, i64* %109, align 8, !dbg !1416, !tbaa !1419
  %128 = icmp eq i64 %126, %127, !dbg !1416
  br i1 %128, label %239, label %129, !dbg !1420

129:                                              ; preds = %125, %120
  %130 = add i64 %121, 1, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %130, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !1233, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !1234, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %121, metadata !1235, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %110) #18, !dbg !1422
  %131 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #18, !dbg !1423
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !1236, metadata !DIExpression()) #18, !dbg !1407
  %132 = icmp eq %struct.__dirstream* %131, null, !dbg !1424
  br i1 %132, label %133, label %139, !dbg !1426

133:                                              ; preds = %129
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  %134 = tail call i32* @__errno_location() #24, !dbg !1427
  %135 = load i32, i32* %134, align 4, !dbg !1427, !tbaa !1301
  %136 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i32 5) #18, !dbg !1427
  %137 = call fastcc i8* @nth_parent(i64 %121) #18, !dbg !1427
  %138 = call i8* @quote(i8* %137) #18, !dbg !1427
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %135, i8* %136, i8* %138) #18, !dbg !1427
  unreachable, !dbg !1427

139:                                              ; preds = %129
  %140 = call i32 @dirfd(%struct.__dirstream* nonnull %131) #18, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %140, metadata !1239, metadata !DIExpression()) #18, !dbg !1407
  %141 = icmp sgt i32 %140, -1, !dbg !1429
  br i1 %141, label %142, label %144, !dbg !1431

142:                                              ; preds = %139
  %143 = call i32 @fchdir(i32 %140) #18, !dbg !1432
  br label %146, !dbg !1431

144:                                              ; preds = %139
  %145 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #18, !dbg !1433
  br label %146, !dbg !1431

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ], !dbg !1431
  %148 = icmp slt i32 %147, 0, !dbg !1434
  br i1 %148, label %149, label %155, !dbg !1435

149:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  %150 = tail call i32* @__errno_location() #24, !dbg !1436
  %151 = load i32, i32* %150, align 4, !dbg !1436, !tbaa !1301
  %152 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), i32 5) #18, !dbg !1436
  %153 = call fastcc i8* @nth_parent(i64 %121) #18, !dbg !1436
  %154 = call i8* @quote(i8* %153) #18, !dbg !1436
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %151, i8* %152, i8* %154) #18, !dbg !1436
  unreachable, !dbg !1436

155:                                              ; preds = %146
  br i1 %141, label %156, label %158, !dbg !1437

156:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 %140, metadata !1439, metadata !DIExpression()) #18, !dbg !1445
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1444, metadata !DIExpression()) #18, !dbg !1445
  %157 = call i32 @__fxstat(i32 1, i32 %140, %struct.stat* nonnull %3) #18, !dbg !1447
  br label %160, !dbg !1437

158:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !1331, metadata !DIExpression()) #18, !dbg !1448
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1337, metadata !DIExpression()) #18, !dbg !1448
  %159 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %3) #18, !dbg !1450
  br label %160, !dbg !1437

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ], !dbg !1437
  %162 = icmp slt i32 %161, 0, !dbg !1451
  br i1 %162, label %163, label %169, !dbg !1452

163:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  %164 = tail call i32* @__errno_location() #24, !dbg !1453
  %165 = load i32, i32* %164, align 4, !dbg !1453, !tbaa !1301
  %166 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #18, !dbg !1453
  %167 = call fastcc i8* @nth_parent(i64 %121) #18, !dbg !1453
  %168 = call i8* @quote(i8* %167) #18, !dbg !1453
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %165, i8* %166, i8* %168) #18, !dbg !1453
  unreachable, !dbg !1453

169:                                              ; preds = %160
  %170 = load i64, i64* %111, align 8, !dbg !1454, !tbaa !1354
  %171 = load i64, i64* %108, align 8, !dbg !1455, !tbaa !1354
  %172 = icmp ne i64 %170, %171, !dbg !1456
  call void @llvm.dbg.value(metadata i1 %172, metadata !1240, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.dbg.value(metadata i8 0, metadata !1241, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !1236, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %112) #18, !dbg !1457
  %173 = tail call i32* @__errno_location() #24, !dbg !1458
  store i32 0, i32* %173, align 4, !dbg !1459, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !1460, metadata !DIExpression()) #18, !dbg !1467
  %174 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %131) #18, !dbg !1469
  call void @llvm.dbg.value(metadata %struct.dirent* %174, metadata !1465, metadata !DIExpression()) #18, !dbg !1470
  %175 = icmp eq %struct.dirent* %174, null, !dbg !1471
  br i1 %175, label %193, label %176, !dbg !1473

176:                                              ; preds = %169, %191
  %177 = phi %struct.dirent* [ %192, %191 ], [ %174, %169 ]
  %178 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 4, i64 0, !dbg !1474
  call void @llvm.dbg.value(metadata i8* %178, metadata !1475, metadata !DIExpression()) #18, !dbg !1483
  %179 = load i8, i8* %178, align 1, !dbg !1485, !tbaa !1317
  %180 = icmp eq i8 %179, 46, !dbg !1486
  br i1 %180, label %181, label %198, !dbg !1487

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 4, i64 1, !dbg !1488
  %183 = load i8, i8* %182, align 1, !dbg !1488, !tbaa !1317
  %184 = icmp eq i8 %183, 46, !dbg !1489
  %185 = select i1 %184, i64 2, i64 1, !dbg !1490
  %186 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 4, i64 %185, !dbg !1490
  %187 = load i8, i8* %186, align 1, !dbg !1490, !tbaa !1317
  call void @llvm.dbg.value(metadata i8 %187, metadata !1480, metadata !DIExpression()) #18, !dbg !1491
  switch i8 %187, label %198 [
    i8 47, label %188
    i8 0, label %188
  ], !dbg !1492

188:                                              ; preds = %181, %181
  %189 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %131) #18, !dbg !1469
  call void @llvm.dbg.value(metadata %struct.dirent* %189, metadata !1465, metadata !DIExpression()) #18, !dbg !1470
  %190 = icmp eq %struct.dirent* %189, null, !dbg !1471
  br i1 %190, label %193, label %191, !dbg !1473

191:                                              ; preds = %188, %220
  %192 = phi %struct.dirent* [ %189, %188 ], [ %221, %220 ]
  br label %176, !dbg !1474

193:                                              ; preds = %220, %188, %169
  call void @llvm.dbg.value(metadata %struct.dirent* %177, metadata !1242, metadata !DIExpression()) #18, !dbg !1408
  %194 = load i32, i32* %173, align 4, !dbg !1493, !tbaa !1301
  %195 = icmp eq i32 %194, 0, !dbg !1493
  br i1 %195, label %223, label %196, !dbg !1494

196:                                              ; preds = %193
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %194, metadata !1248, metadata !DIExpression()) #18, !dbg !1495
  %197 = call i32 @closedir(%struct.__dirstream* nonnull %131) #18, !dbg !1496
  store i32 %194, i32* %173, align 4, !dbg !1497, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct.__dirstream* null, metadata !1236, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !1236, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.dbg.value(metadata i8 0, metadata !1241, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %112) #18, !dbg !1498
  br label %227, !dbg !1499

198:                                              ; preds = %181, %176
  %199 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 4, i64 0, !dbg !1474
  call void @llvm.dbg.value(metadata %struct.dirent* %177, metadata !1242, metadata !DIExpression()) #18, !dbg !1408
  %200 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 0, !dbg !1501
  %201 = load i64, i64* %200, align 8, !dbg !1501, !tbaa !1502
  call void @llvm.dbg.value(metadata i64 %201, metadata !1247, metadata !DIExpression()) #18, !dbg !1408
  %202 = icmp eq i64 %201, 0, !dbg !1505
  %203 = or i1 %172, %202, !dbg !1506
  br i1 %203, label %204, label %209, !dbg !1506

204:                                              ; preds = %198
  call void @llvm.dbg.value(metadata i8* %199, metadata !1507, metadata !DIExpression()) #18, !dbg !1511
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1510, metadata !DIExpression()) #18, !dbg !1511
  %205 = call i32 @__lxstat(i32 1, i8* nonnull %199, %struct.stat* nonnull %4) #18, !dbg !1514
  %206 = icmp slt i32 %205, 0, !dbg !1515
  br i1 %206, label %220, label %207, !dbg !1516, !llvm.loop !1517

207:                                              ; preds = %204
  %208 = load i64, i64* %113, align 8, !dbg !1519, !tbaa !1350
  call void @llvm.dbg.value(metadata i64 %208, metadata !1247, metadata !DIExpression()) #18, !dbg !1408
  br label %209, !dbg !1520

209:                                              ; preds = %207, %198
  %210 = phi i64 [ %208, %207 ], [ %201, %198 ], !dbg !1408
  call void @llvm.dbg.value(metadata i64 %210, metadata !1247, metadata !DIExpression()) #18, !dbg !1408
  %211 = load i64, i64* %106, align 8, !dbg !1521, !tbaa !1350
  %212 = icmp eq i64 %210, %211, !dbg !1523
  br i1 %212, label %213, label %220, !dbg !1524, !llvm.loop !1525

213:                                              ; preds = %209
  br i1 %172, label %214, label %218, !dbg !1526

214:                                              ; preds = %213
  %215 = load i64, i64* %114, align 8, !dbg !1527, !tbaa !1354
  %216 = load i64, i64* %108, align 8, !dbg !1528, !tbaa !1354
  %217 = icmp eq i64 %215, %216, !dbg !1529
  br i1 %217, label %218, label %220, !dbg !1530

218:                                              ; preds = %214, %213
  call void @llvm.dbg.value(metadata %struct.dirent* %177, metadata !1242, metadata !DIExpression()) #18, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.dirent* %177, metadata !1242, metadata !DIExpression()) #18, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.dirent* %177, metadata !1242, metadata !DIExpression()) #18, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.dirent* %177, metadata !1242, metadata !DIExpression()) #18, !dbg !1408
  %219 = call i64 @strlen(i8* nonnull %199) #21, !dbg !1531
  call fastcc void @file_name_prepend(%struct.file_name* %85, i8* nonnull %199, i64 %219) #18, !dbg !1533
  call void @llvm.dbg.value(metadata i8 1, metadata !1241, metadata !DIExpression()) #18, !dbg !1407
  br label %223, !dbg !1534

220:                                              ; preds = %214, %209, %204
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !1236, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.dbg.value(metadata i8 0, metadata !1241, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %112) #18, !dbg !1498
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %112) #18, !dbg !1457
  store i32 0, i32* %173, align 4, !dbg !1459, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !1460, metadata !DIExpression()) #18, !dbg !1467
  %221 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %131) #18, !dbg !1469
  call void @llvm.dbg.value(metadata %struct.dirent* %221, metadata !1465, metadata !DIExpression()) #18, !dbg !1470
  %222 = icmp eq %struct.dirent* %221, null, !dbg !1471
  br i1 %222, label %193, label %191, !dbg !1473

223:                                              ; preds = %218, %193
  %224 = phi i8 [ 0, %193 ], [ 1, %218 ]
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !1236, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.dbg.value(metadata i8 0, metadata !1241, metadata !DIExpression()) #18, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %112) #18, !dbg !1498
  %225 = call i32 @closedir(%struct.__dirstream* nonnull %131) #18, !dbg !1535
  %226 = icmp eq i32 %225, 0, !dbg !1536
  br i1 %226, label %232, label %227, !dbg !1537

227:                                              ; preds = %223, %196
  %228 = load i32, i32* %173, align 4, !dbg !1538, !tbaa !1301
  %229 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i32 5) #18, !dbg !1538
  %230 = call fastcc i8* @nth_parent(i64 %121) #18, !dbg !1538
  %231 = call i8* @quote(i8* %230) #18, !dbg !1538
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %228, i8* %229, i8* %231) #18, !dbg !1538
  unreachable, !dbg !1538

232:                                              ; preds = %223
  %233 = icmp eq i8 %224, 0, !dbg !1540
  br i1 %233, label %234, label %238, !dbg !1542

234:                                              ; preds = %232
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %121, metadata !1261, metadata !DIExpression()) #18, !dbg !1391
  %235 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i64 0, i64 0), i32 5) #18, !dbg !1543
  %236 = call fastcc i8* @nth_parent(i64 %121) #18, !dbg !1543
  %237 = call i8* @quote(i8* %236) #18, !dbg !1543
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %235, i8* %237) #18, !dbg !1543
  unreachable, !dbg !1543

238:                                              ; preds = %232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(144) %95, i8* nonnull align 8 dereferenceable(144) %110, i64 144, i1 false) #18, !dbg !1544, !tbaa.struct !1545
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %110) #18, !dbg !1547
  br label %120, !dbg !1414, !llvm.loop !1548

239:                                              ; preds = %125
  %240 = load i8*, i8** %92, align 8, !dbg !1550, !tbaa !1388
  %241 = load i8, i8* %240, align 1, !dbg !1552, !tbaa !1317
  %242 = icmp eq i8 %241, 0, !dbg !1553
  br i1 %242, label %243, label %245, !dbg !1554

243:                                              ; preds = %239
  call fastcc void @file_name_prepend(%struct.file_name* nonnull %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64 0) #18, !dbg !1555
  %244 = load i8*, i8** %92, align 8, !dbg !1556, !tbaa !1388
  br label %245, !dbg !1555

245:                                              ; preds = %239, %243
  %246 = phi i8* [ %240, %239 ], [ %244, %243 ], !dbg !1556
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %95) #18, !dbg !1557
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %93) #18, !dbg !1557
  %247 = call i32 @puts(i8* nonnull dereferenceable(1) %246), !dbg !1558
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !1559, metadata !DIExpression()) #18, !dbg !1562
  %248 = load i8*, i8** %89, align 8, !dbg !1564, !tbaa !1384
  call void @free(i8* %248) #18, !dbg !1565
  call void @free(i8* nonnull %84) #18, !dbg !1566
  br label %249

249:                                              ; preds = %81, %245, %76
  ret i32 0, !dbg !1567
}

; Function Attrs: nofree nounwind readonly
declare !dbg !96 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !108 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !111 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !112 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !118 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !137 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !141 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !148 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !173 noalias %struct.__dirstream* @opendir(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @nth_parent(i64 %0) unnamed_addr #8 !dbg !1568 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1572, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 3, metadata !1578, metadata !DIExpression()) #18, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %0, metadata !1583, metadata !DIExpression()) #18, !dbg !1584
  %2 = icmp ugt i64 %0, 3074457345618258602, !dbg !1586
  br i1 %2, label %3, label %4, !dbg !1588

3:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !1589
  unreachable, !dbg !1589

4:                                                ; preds = %1
  %5 = mul nuw nsw i64 %0, 3, !dbg !1590
  %6 = tail call noalias i8* @xmalloc(i64 %5) #18, !dbg !1591
  call void @llvm.dbg.value(metadata i8* %6, metadata !1573, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %6, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 0, metadata !1575, metadata !DIExpression()), !dbg !1592
  %7 = icmp eq i64 %0, 0, !dbg !1593
  br i1 %7, label %24, label %8, !dbg !1595

8:                                                ; preds = %4
  %9 = add i64 %0, -1, !dbg !1595
  %10 = and i64 %0, 3, !dbg !1595
  %11 = icmp ult i64 %9, 3, !dbg !1595
  br i1 %11, label %14, label %12, !dbg !1595

12:                                               ; preds = %8
  %13 = sub i64 %0, %10, !dbg !1595
  br label %27, !dbg !1595

14:                                               ; preds = %27, %8
  %15 = phi i8* [ undef, %8 ], [ %33, %27 ]
  %16 = phi i8* [ %6, %8 ], [ %33, %27 ]
  %17 = icmp eq i64 %10, 0, !dbg !1595
  br i1 %17, label %24, label %18, !dbg !1595

18:                                               ; preds = %14, %18
  %19 = phi i8* [ %21, %18 ], [ %16, %14 ]
  %20 = phi i64 [ %22, %18 ], [ %10, %14 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1575, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %19, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %19, metadata !1596, metadata !DIExpression()) #18, !dbg !1606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), metadata !1604, metadata !DIExpression()) #18, !dbg !1606
  call void @llvm.dbg.value(metadata i64 3, metadata !1605, metadata !DIExpression()) #18, !dbg !1606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %19, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #18, !dbg !1609
  %21 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %21, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 undef, metadata !1575, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1592
  %22 = add i64 %20, -1, !dbg !1595
  %23 = icmp eq i64 %22, 0, !dbg !1595
  br i1 %23, label %24, label %18, !dbg !1595, !llvm.loop !1611

24:                                               ; preds = %14, %18, %4
  %25 = phi i8* [ %6, %4 ], [ %15, %14 ], [ %21, %18 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8* %25, metadata !1574, metadata !DIExpression()), !dbg !1577
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !1613
  store i8 0, i8* %26, align 1, !dbg !1614, !tbaa !1317
  ret i8* %6, !dbg !1615

27:                                               ; preds = %27, %12
  %28 = phi i8* [ %6, %12 ], [ %33, %27 ]
  %29 = phi i64 [ %13, %12 ], [ %34, %27 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1575, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %28, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %28, metadata !1596, metadata !DIExpression()) #18, !dbg !1606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), metadata !1604, metadata !DIExpression()) #18, !dbg !1606
  call void @llvm.dbg.value(metadata i64 3, metadata !1605, metadata !DIExpression()) #18, !dbg !1606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %28, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #18, !dbg !1609
  %30 = getelementptr inbounds i8, i8* %28, i64 3, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %30, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 undef, metadata !1575, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %30, metadata !1596, metadata !DIExpression()) #18, !dbg !1606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %30, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #18, !dbg !1609
  %31 = getelementptr inbounds i8, i8* %28, i64 6, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %31, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 undef, metadata !1575, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %31, metadata !1596, metadata !DIExpression()) #18, !dbg !1606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %31, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #18, !dbg !1609
  %32 = getelementptr inbounds i8, i8* %28, i64 9, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %32, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 undef, metadata !1575, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %32, metadata !1596, metadata !DIExpression()) #18, !dbg !1606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %32, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #18, !dbg !1609
  %33 = getelementptr inbounds i8, i8* %28, i64 12, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %33, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 undef, metadata !1575, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1592
  %34 = add i64 %29, -4, !dbg !1595
  %35 = icmp eq i64 %34, 0, !dbg !1595
  br i1 %35, label %14, label %27, !dbg !1595, !llvm.loop !1616
}

; Function Attrs: nounwind
declare !dbg !183 i32 @dirfd(%struct.__dirstream*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !186 i32 @fchdir(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !190 i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

declare !dbg !193 %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !191 i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @file_name_prepend(%struct.file_name* nocapture %0, i8* %1, i64 %2) unnamed_addr #8 !dbg !1618 {
  call void @llvm.dbg.value(metadata %struct.file_name* %0, metadata !1622, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8* %1, metadata !1623, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i64 %2, metadata !1624, metadata !DIExpression()), !dbg !1631
  %4 = getelementptr inbounds %struct.file_name, %struct.file_name* %0, i64 0, i32 2, !dbg !1632
  %5 = bitcast i8** %4 to i64*, !dbg !1632
  %6 = load i64, i64* %5, align 8, !dbg !1632, !tbaa !1388
  %7 = getelementptr inbounds %struct.file_name, %struct.file_name* %0, i64 0, i32 0, !dbg !1633
  %8 = bitcast %struct.file_name* %0 to i64*, !dbg !1633
  %9 = load i64, i64* %8, align 8, !dbg !1633, !tbaa !1384
  %10 = sub i64 %6, %9, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %10, metadata !1625, metadata !DIExpression()), !dbg !1631
  %11 = add i64 %2, 1, !dbg !1635
  %12 = icmp ult i64 %10, %11, !dbg !1636
  %13 = inttoptr i64 %6 to i8*, !dbg !1637
  br i1 %12, label %14, label %31, !dbg !1637

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.file_name, %struct.file_name* %0, i64 0, i32 1, !dbg !1638
  %16 = load i64, i64* %15, align 8, !dbg !1638, !tbaa !1379
  %17 = add i64 %11, %16, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %17, metadata !1626, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 2, metadata !1578, metadata !DIExpression()) #18, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %17, metadata !1583, metadata !DIExpression()) #18, !dbg !1641
  %18 = icmp ugt i64 %17, 4611686018427387903, !dbg !1643
  br i1 %18, label %19, label %20, !dbg !1644

19:                                               ; preds = %14
  tail call void @xalloc_die() #22, !dbg !1645
  unreachable, !dbg !1645

20:                                               ; preds = %14
  %21 = shl nuw nsw i64 %17, 1, !dbg !1646
  %22 = tail call noalias i8* @xmalloc(i64 %21) #18, !dbg !1647
  call void @llvm.dbg.value(metadata i8* %22, metadata !1629, metadata !DIExpression()), !dbg !1640
  %23 = load i64, i64* %15, align 8, !dbg !1648, !tbaa !1379
  %24 = sub i64 %23, %10, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %24, metadata !1630, metadata !DIExpression()), !dbg !1640
  %25 = getelementptr inbounds i8, i8* %22, i64 %21, !dbg !1650
  %26 = sub i64 0, %24, !dbg !1651
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !1651
  store i8* %27, i8** %4, align 8, !dbg !1652, !tbaa !1388
  %28 = load i8*, i8** %7, align 8, !dbg !1653, !tbaa !1384
  %29 = getelementptr inbounds i8, i8* %28, i64 %10, !dbg !1654
  call void @llvm.dbg.value(metadata i8* %27, metadata !1596, metadata !DIExpression()) #18, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %29, metadata !1604, metadata !DIExpression()) #18, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %24, metadata !1605, metadata !DIExpression()) #18, !dbg !1655
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %27, i8* nonnull align 1 %29, i64 %24, i1 false) #18, !dbg !1657
  tail call void @free(i8* %28) #18, !dbg !1658
  store i8* %22, i8** %7, align 8, !dbg !1659, !tbaa !1384
  store i64 %21, i64* %15, align 8, !dbg !1660, !tbaa !1379
  %30 = load i8*, i8** %4, align 8, !dbg !1661, !tbaa !1388
  br label %31, !dbg !1662

31:                                               ; preds = %20, %3
  %32 = phi i8* [ %30, %20 ], [ %13, %3 ], !dbg !1661
  %33 = xor i64 %2, -1, !dbg !1661
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !1661
  store i8* %34, i8** %4, align 8, !dbg !1661, !tbaa !1388
  store i8 47, i8* %34, align 1, !dbg !1663, !tbaa !1317
  %35 = load i8*, i8** %4, align 8, !dbg !1664, !tbaa !1388
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %36, metadata !1596, metadata !DIExpression()) #18, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %1, metadata !1604, metadata !DIExpression()) #18, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %2, metadata !1605, metadata !DIExpression()) #18, !dbg !1666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %36, i8* nonnull align 1 %1, i64 %2, i1 false) #18, !dbg !1668
  ret void, !dbg !1669
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1670 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1672, metadata !DIExpression()), !dbg !1673
  store i8* %0, i8** @file_name, align 8, !dbg !1674, !tbaa !1131
  ret void, !dbg !1675
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1676 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1680, metadata !DIExpression()), !dbg !1681
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1682, !tbaa !1683
  ret void, !dbg !1685
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1686 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1691, !tbaa !1131
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1692
  %3 = icmp eq i32 %2, 0, !dbg !1693
  br i1 %3, label %22, label %4, !dbg !1694

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1695, !tbaa !1683, !range !1696
  %6 = icmp eq i8 %5, 0, !dbg !1695
  br i1 %6, label %11, label %7, !dbg !1697

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1698
  %9 = load i32, i32* %8, align 4, !dbg !1698, !tbaa !1301
  %10 = icmp eq i32 %9, 32, !dbg !1699
  br i1 %10, label %22, label %11, !dbg !1700

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 5) #18, !dbg !1701
  call void @llvm.dbg.value(metadata i8* %12, metadata !1688, metadata !DIExpression()), !dbg !1702
  %13 = load i8*, i8** @file_name, align 8, !dbg !1703, !tbaa !1131
  %14 = icmp eq i8* %13, null, !dbg !1703
  %15 = tail call i32* @__errno_location() #24, !dbg !1705
  %16 = load i32, i32* %15, align 4, !dbg !1705, !tbaa !1301
  br i1 %14, label %19, label %17, !dbg !1706

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1707
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.52, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1708
  br label %20, !dbg !1708

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.53, i64 0, i64 0), i8* %12) #18, !dbg !1709
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1710, !tbaa !1301
  tail call void @_exit(i32 %21) #22, !dbg !1711
  unreachable, !dbg !1711

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1712, !tbaa !1131
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1714
  %25 = icmp eq i32 %24, 0, !dbg !1715
  br i1 %25, label %28, label %26, !dbg !1716

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1717, !tbaa !1301
  tail call void @_exit(i32 %27) #22, !dbg !1718
  unreachable, !dbg !1718

28:                                               ; preds = %22
  ret void, !dbg !1719
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1722, metadata !DIExpression()), !dbg !1725
  %2 = icmp eq i8* %0, null, !dbg !1726
  br i1 %2, label %3, label %6, !dbg !1728

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1729, !tbaa !1131
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1731
  tail call void @abort() #22, !dbg !1732
  unreachable, !dbg !1732

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1733
  call void @llvm.dbg.value(metadata i8* %7, metadata !1723, metadata !DIExpression()), !dbg !1725
  %8 = icmp eq i8* %7, null, !dbg !1734
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1735
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %10, metadata !1724, metadata !DIExpression()), !dbg !1725
  %11 = ptrtoint i8* %10 to i64, !dbg !1736
  %12 = ptrtoint i8* %0 to i64, !dbg !1736
  %13 = sub i64 %11, %12, !dbg !1736
  %14 = icmp sgt i64 %13, 6, !dbg !1738
  br i1 %14, label %15, label %24, !dbg !1739

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1740
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.61, i64 0, i64 0), i64 7) #21, !dbg !1741
  %18 = icmp eq i32 %17, 0, !dbg !1742
  br i1 %18, label %19, label %24, !dbg !1743

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1722, metadata !DIExpression()), !dbg !1725
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i64 3) #21, !dbg !1744
  %21 = icmp eq i32 %20, 0, !dbg !1747
  br i1 %21, label %22, label %24, !dbg !1748

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1749
  call void @llvm.dbg.value(metadata i8* %23, metadata !1722, metadata !DIExpression()), !dbg !1725
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1751, !tbaa !1131
  br label %24, !dbg !1752

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1722, metadata !DIExpression()), !dbg !1725
  store i8* %25, i8** @program_name, align 8, !dbg !1753, !tbaa !1131
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1754, !tbaa !1131
  ret void, !dbg !1755
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1756 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1761, metadata !DIExpression()), !dbg !1764
  %2 = tail call i32* @__errno_location() #24, !dbg !1765
  %3 = load i32, i32* %2, align 4, !dbg !1765, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %3, metadata !1762, metadata !DIExpression()), !dbg !1764
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1766
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1766
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1766
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1767
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1763, metadata !DIExpression()), !dbg !1764
  store i32 %3, i32* %2, align 4, !dbg !1768, !tbaa !1301
  ret %struct.quoting_options* %8, !dbg !1769
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1770 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1774, metadata !DIExpression()), !dbg !1775
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1776
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1776
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1777
  %5 = load i32, i32* %4, align 8, !dbg !1777, !tbaa !1778
  ret i32 %5, !dbg !1780
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1781 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i32 %1, metadata !1786, metadata !DIExpression()), !dbg !1787
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1788
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1788
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1789
  store i32 %1, i32* %5, align 8, !dbg !1790, !tbaa !1778
  ret void, !dbg !1791
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1792 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1796, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 %1, metadata !1797, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i32 %2, metadata !1798, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 %1, metadata !1799, metadata !DIExpression()), !dbg !1804
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1805
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1805
  %6 = lshr i8 %1, 5, !dbg !1806
  %7 = zext i8 %6 to i64, !dbg !1806
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1807
  call void @llvm.dbg.value(metadata i32* %8, metadata !1800, metadata !DIExpression()), !dbg !1804
  %9 = and i8 %1, 31, !dbg !1808
  %10 = zext i8 %9 to i32, !dbg !1808
  call void @llvm.dbg.value(metadata i32 %10, metadata !1802, metadata !DIExpression()), !dbg !1804
  %11 = load i32, i32* %8, align 4, !dbg !1809, !tbaa !1301
  %12 = lshr i32 %11, %10, !dbg !1810
  %13 = and i32 %12, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %13, metadata !1803, metadata !DIExpression()), !dbg !1804
  %14 = and i32 %2, 1, !dbg !1812
  %15 = xor i32 %13, %14, !dbg !1813
  %16 = shl i32 %15, %10, !dbg !1814
  %17 = xor i32 %16, %11, !dbg !1815
  store i32 %17, i32* %8, align 4, !dbg !1815, !tbaa !1301
  ret i32 %13, !dbg !1816
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1817 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1821, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i32 %1, metadata !1822, metadata !DIExpression()), !dbg !1824
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1825
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1827
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1821, metadata !DIExpression()), !dbg !1824
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1828
  %6 = load i32, i32* %5, align 4, !dbg !1828, !tbaa !1829
  call void @llvm.dbg.value(metadata i32 %6, metadata !1823, metadata !DIExpression()), !dbg !1824
  store i32 %1, i32* %5, align 4, !dbg !1830, !tbaa !1829
  ret i32 %6, !dbg !1831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1832 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1836, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %1, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %2, metadata !1838, metadata !DIExpression()), !dbg !1839
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1840
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1842
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1836, metadata !DIExpression()), !dbg !1839
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1843
  store i32 10, i32* %6, align 8, !dbg !1844, !tbaa !1778
  %7 = icmp ne i8* %1, null, !dbg !1845
  %8 = icmp ne i8* %2, null, !dbg !1847
  %9 = and i1 %7, %8, !dbg !1848
  br i1 %9, label %11, label %10, !dbg !1848

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1849
  unreachable, !dbg !1849

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1850
  store i8* %1, i8** %12, align 8, !dbg !1851, !tbaa !1852
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1853
  store i8* %2, i8** %13, align 8, !dbg !1854, !tbaa !1855
  ret void, !dbg !1856
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1861, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %1, metadata !1862, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %2, metadata !1863, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %3, metadata !1864, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1865, metadata !DIExpression()), !dbg !1869
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1870
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1866, metadata !DIExpression()), !dbg !1869
  %8 = tail call i32* @__errno_location() #24, !dbg !1871
  %9 = load i32, i32* %8, align 4, !dbg !1871, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %9, metadata !1867, metadata !DIExpression()), !dbg !1869
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1872
  %11 = load i32, i32* %10, align 8, !dbg !1872, !tbaa !1778
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1873
  %13 = load i32, i32* %12, align 4, !dbg !1873, !tbaa !1829
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1874
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1875
  %16 = load i8*, i8** %15, align 8, !dbg !1875, !tbaa !1852
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1876
  %18 = load i8*, i8** %17, align 8, !dbg !1876, !tbaa !1855
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %19, metadata !1868, metadata !DIExpression()), !dbg !1869
  store i32 %9, i32* %8, align 4, !dbg !1878, !tbaa !1301
  ret i64 %19, !dbg !1879
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1880 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1886, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %1, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %2, metadata !1888, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %3, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %4, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %5, metadata !1891, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32* %6, metadata !1892, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %7, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %8, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* null, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1899, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 0, metadata !1900, metadata !DIExpression()), !dbg !1944
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1945
  %14 = icmp eq i64 %13, 1, !dbg !1946
  call void @llvm.dbg.value(metadata i1 %14, metadata !1901, metadata !DIExpression()), !dbg !1944
  %15 = lshr i32 %5, 1, !dbg !1947
  %16 = trunc i32 %15 to i8, !dbg !1947
  %17 = and i8 %16, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i8 %17, metadata !1902, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 0, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 0, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 1, metadata !1905, metadata !DIExpression()), !dbg !1944
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1948
  %19 = and i32 %5, 4, !dbg !1950
  %20 = icmp eq i32 %19, 0, !dbg !1950
  %21 = and i32 %5, 1, !dbg !1953
  %22 = icmp eq i32 %21, 0, !dbg !1953
  %23 = bitcast i64* %10 to i8*, !dbg !1956
  %24 = bitcast i32* %12 to i8*, !dbg !1957
  %25 = icmp eq i32* %6, null, !dbg !1958
  br label %26, !dbg !1960

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1961
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1962
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1963
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1964
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1944
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1965
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1966
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1967
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %38, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %37, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %36, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %35, metadata !1902, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %34, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %33, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %32, metadata !1899, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %31, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %30, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %29, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %28, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %27, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.label(metadata !1938), !dbg !1968
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
  ], !dbg !1969

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 1, metadata !1902, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %35, metadata !1902, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 5, metadata !1890, metadata !DIExpression()), !dbg !1944
  br label %92, !dbg !1970

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1902, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 5, metadata !1890, metadata !DIExpression()), !dbg !1944
  %42 = and i8 %35, 1, !dbg !1972
  %43 = icmp eq i8 %42, 0, !dbg !1972
  br i1 %43, label %44, label %92, !dbg !1970

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1974
  br i1 %45, label %92, label %46, !dbg !1977

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1974, !tbaa !1317
  br label %92, !dbg !1974

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), i32 %27), !dbg !1978
  call void @llvm.dbg.value(metadata i8* %48, metadata !1893, metadata !DIExpression()), !dbg !1944
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), i32 %27), !dbg !1982
  call void @llvm.dbg.value(metadata i8* %49, metadata !1894, metadata !DIExpression()), !dbg !1944
  br label %50, !dbg !1983

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %51, metadata !1893, metadata !DIExpression()), !dbg !1944
  %53 = and i8 %35, 1, !dbg !1984
  %54 = icmp eq i8 %53, 0, !dbg !1984
  br i1 %54, label %55, label %70, !dbg !1986

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1896, metadata !DIExpression()), !dbg !1944
  %56 = load i8, i8* %51, align 1, !dbg !1987, !tbaa !1317
  %57 = icmp eq i8 %56, 0, !dbg !1990
  br i1 %57, label %70, label %58, !dbg !1990

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %61, metadata !1896, metadata !DIExpression()), !dbg !1944
  %62 = icmp ult i64 %61, %39, !dbg !1991
  br i1 %62, label %63, label %65, !dbg !1994

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1991
  store i8 %59, i8* %64, align 1, !dbg !1991, !tbaa !1317
  br label %65, !dbg !1991

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %66, metadata !1896, metadata !DIExpression()), !dbg !1944
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1995
  call void @llvm.dbg.value(metadata i8* %67, metadata !1898, metadata !DIExpression()), !dbg !1944
  %68 = load i8, i8* %67, align 1, !dbg !1987, !tbaa !1317
  %69 = icmp eq i8 %68, 0, !dbg !1990
  br i1 %69, label %70, label %58, !dbg !1990, !llvm.loop !1996

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1998
  call void @llvm.dbg.value(metadata i64 %71, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 1, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %52, metadata !1898, metadata !DIExpression()), !dbg !1944
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %72, metadata !1899, metadata !DIExpression()), !dbg !1944
  br label %92, !dbg !2000

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1900, metadata !DIExpression()), !dbg !1944
  br label %74, !dbg !2001

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8 %75, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 1, metadata !1902, metadata !DIExpression()), !dbg !1944
  br label %76, !dbg !2002

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1964
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8 %78, metadata !1902, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %77, metadata !1900, metadata !DIExpression()), !dbg !1944
  %79 = and i8 %78, 1, !dbg !2003
  %80 = icmp eq i8 %79, 0, !dbg !2003
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2005
  br label %82, !dbg !2005

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1944
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1947
  call void @llvm.dbg.value(metadata i8 %84, metadata !1902, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %83, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  %85 = and i8 %84, 1, !dbg !2006
  %86 = icmp eq i8 %85, 0, !dbg !2006
  br i1 %86, label %87, label %92, !dbg !2008

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2009
  br i1 %88, label %92, label %89, !dbg !2012

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2009, !tbaa !1317
  br label %92, !dbg !2009

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1902, metadata !DIExpression()), !dbg !1944
  br label %92, !dbg !2013

91:                                               ; preds = %26
  call void @abort() #22, !dbg !2014
  unreachable, !dbg !2014

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1998
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %40 ], !dbg !1944
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1944
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1944
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8 %100, metadata !1902, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %98, metadata !1899, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %96, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %93, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1895, metadata !DIExpression()), !dbg !1944
  %101 = and i8 %99, 1, !dbg !2015
  %102 = icmp ne i8 %101, 0, !dbg !2015
  %103 = icmp ne i32 %93, 2, !dbg !2015
  %104 = and i1 %103, %102, !dbg !2015
  %105 = icmp ne i64 %98, 0, !dbg !2015
  %106 = and i1 %105, %104, !dbg !2015
  %107 = icmp ugt i64 %98, 1, !dbg !2015
  %108 = and i8 %100, 1, !dbg !2017
  %109 = icmp eq i8 %108, 0, !dbg !2017
  %110 = icmp eq i32 %93, 2, !dbg !2020
  %111 = or i1 %103, %109, !dbg !2022
  %112 = icmp ne i8 %108, 0, !dbg !2024
  %113 = and i1 %110, %112, !dbg !2024
  %114 = xor i1 %102, true, !dbg !2025
  %115 = xor i1 %104, true, !dbg !1958
  %116 = and i1 %109, %115, !dbg !1958
  %117 = or i1 %25, %116, !dbg !1958
  %118 = and i8 %99, %100, !dbg !2026
  %119 = and i8 %118, 1, !dbg !2026
  %120 = icmp ne i8 %119, 0, !dbg !2026
  %121 = and i1 %120, %105, !dbg !2026
  br label %122, !dbg !2028

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2029
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1998
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1961
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1965
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1966
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1967
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %126, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %123, metadata !1895, metadata !DIExpression()), !dbg !1944
  %131 = icmp eq i64 %126, -1, !dbg !2030
  br i1 %131, label %132, label %136, !dbg !2031

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2032
  %134 = load i8, i8* %133, align 1, !dbg !2032, !tbaa !1317
  %135 = icmp eq i8 %134, 0, !dbg !2033
  br i1 %135, label %581, label %138, !dbg !2034

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2035
  br i1 %137, label %581, label %138, !dbg !2034

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !2036
  br i1 %106, label %139, label %154, !dbg !2037

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2038
  %141 = and i1 %107, %131, !dbg !2039
  br i1 %141, label %142, label %144, !dbg !2039

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %143, metadata !1889, metadata !DIExpression()), !dbg !1944
  br label %144, !dbg !2041

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1889, metadata !DIExpression()), !dbg !1944
  %146 = icmp ugt i64 %140, %145, !dbg !2042
  br i1 %146, label %154, label %147, !dbg !2043

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2044
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2045
  %150 = icmp ne i32 %149, 0, !dbg !2046
  %151 = or i1 %150, %109, !dbg !2047
  %152 = xor i1 %150, true, !dbg !2047
  %153 = zext i1 %152 to i8, !dbg !2047
  br i1 %151, label %154, label %639, !dbg !2047

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2036
  call void @llvm.dbg.value(metadata i8 %156, metadata !1911, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %155, metadata !1889, metadata !DIExpression()), !dbg !1944
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2048
  %158 = load i8, i8* %157, align 1, !dbg !2048, !tbaa !1317
  call void @llvm.dbg.value(metadata i8 %158, metadata !1906, metadata !DIExpression()), !dbg !2036
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
  ], !dbg !2049

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2050

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2051

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1912, metadata !DIExpression()), !dbg !2036
  %162 = and i8 %127, 1, !dbg !2054
  %163 = icmp eq i8 %162, 0, !dbg !2054
  %164 = and i1 %110, %163, !dbg !2054
  br i1 %164, label %165, label %181, !dbg !2054

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2056
  br i1 %166, label %167, label %169, !dbg !2060

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2056
  store i8 39, i8* %168, align 1, !dbg !2056, !tbaa !1317
  br label %169, !dbg !2056

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %170, metadata !1896, metadata !DIExpression()), !dbg !1944
  %171 = icmp ult i64 %170, %130, !dbg !2061
  br i1 %171, label %172, label %174, !dbg !2064

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2061
  store i8 36, i8* %173, align 1, !dbg !2061, !tbaa !1317
  br label %174, !dbg !2061

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %175, metadata !1896, metadata !DIExpression()), !dbg !1944
  %176 = icmp ult i64 %175, %130, !dbg !2065
  br i1 %176, label %177, label %179, !dbg !2068

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2065
  store i8 39, i8* %178, align 1, !dbg !2065, !tbaa !1317
  br label %179, !dbg !2065

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %180, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 1, metadata !1903, metadata !DIExpression()), !dbg !1944
  br label %181, !dbg !2069

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1944
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8 %183, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %182, metadata !1896, metadata !DIExpression()), !dbg !1944
  %184 = icmp ult i64 %182, %130, !dbg !2070
  br i1 %184, label %185, label %187, !dbg !2073

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2070
  store i8 92, i8* %186, align 1, !dbg !2070, !tbaa !1317
  br label %187, !dbg !2070

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %188, metadata !1896, metadata !DIExpression()), !dbg !1944
  br i1 %103, label %189, label %463, !dbg !2074

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2076
  %191 = icmp ult i64 %190, %155, !dbg !2077
  br i1 %191, label %192, label %463, !dbg !2078

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2079
  %194 = load i8, i8* %193, align 1, !dbg !2079, !tbaa !1317
  %195 = add i8 %194, -48, !dbg !2080
  %196 = icmp ult i8 %195, 10, !dbg !2080
  br i1 %196, label %197, label %463, !dbg !2080

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2081
  br i1 %198, label %199, label %201, !dbg !2085

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2081
  store i8 48, i8* %200, align 1, !dbg !2081, !tbaa !1317
  br label %201, !dbg !2081

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %202, metadata !1896, metadata !DIExpression()), !dbg !1944
  %203 = icmp ult i64 %202, %130, !dbg !2086
  br i1 %203, label %204, label %206, !dbg !2089

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2086
  store i8 48, i8* %205, align 1, !dbg !2086, !tbaa !1317
  br label %206, !dbg !2086

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %207, metadata !1896, metadata !DIExpression()), !dbg !1944
  br label %463, !dbg !2090

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2091

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2092

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2093

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2094

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2095
  %214 = icmp ult i64 %213, %155, !dbg !2096
  br i1 %214, label %215, label %463, !dbg !2097

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2098
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2099
  %218 = load i8, i8* %217, align 1, !dbg !2099, !tbaa !1317
  %219 = icmp eq i8 %218, 63, !dbg !2100
  br i1 %219, label %220, label %463, !dbg !2101

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2102
  %222 = load i8, i8* %221, align 1, !dbg !2102, !tbaa !1317
  %223 = sext i8 %222 to i32, !dbg !2102
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
  ], !dbg !2103

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2104

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1906, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %213, metadata !1895, metadata !DIExpression()), !dbg !1944
  %226 = icmp ult i64 %124, %130, !dbg !2106
  br i1 %226, label %227, label %229, !dbg !2109

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2106
  store i8 63, i8* %228, align 1, !dbg !2106, !tbaa !1317
  br label %229, !dbg !2106

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %230, metadata !1896, metadata !DIExpression()), !dbg !1944
  %231 = icmp ult i64 %230, %130, !dbg !2110
  br i1 %231, label %232, label %234, !dbg !2113

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2110
  store i8 34, i8* %233, align 1, !dbg !2110, !tbaa !1317
  br label %234, !dbg !2110

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %235, metadata !1896, metadata !DIExpression()), !dbg !1944
  %236 = icmp ult i64 %235, %130, !dbg !2114
  br i1 %236, label %237, label %239, !dbg !2117

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2114
  store i8 34, i8* %238, align 1, !dbg !2114, !tbaa !1317
  br label %239, !dbg !2114

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %240, metadata !1896, metadata !DIExpression()), !dbg !1944
  %241 = icmp ult i64 %240, %130, !dbg !2118
  br i1 %241, label %242, label %244, !dbg !2121

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2118
  store i8 63, i8* %243, align 1, !dbg !2118, !tbaa !1317
  br label %244, !dbg !2118

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %245, metadata !1896, metadata !DIExpression()), !dbg !1944
  br label %463, !dbg !2122

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1910, metadata !DIExpression()), !dbg !2036
  br label %256, !dbg !2123

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1910, metadata !DIExpression()), !dbg !2036
  br label %256, !dbg !2124

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1910, metadata !DIExpression()), !dbg !2036
  br label %254, !dbg !2125

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1910, metadata !DIExpression()), !dbg !2036
  br label %254, !dbg !2126

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1910, metadata !DIExpression()), !dbg !2036
  br label %256, !dbg !2127

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1910, metadata !DIExpression()), !dbg !2036
  br i1 %110, label %252, label %253, !dbg !2128

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2129

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2132

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2133
  call void @llvm.dbg.value(metadata i8 %255, metadata !1910, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.label(metadata !1939), !dbg !2134
  br i1 %111, label %256, label %625, !dbg !2135

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2133
  call void @llvm.dbg.value(metadata i8 %257, metadata !1910, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.label(metadata !1940), !dbg !2137
  br i1 %102, label %488, label %463, !dbg !2138

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2139

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2140, !tbaa !1317
  %261 = icmp eq i8 %260, 0, !dbg !2141
  br i1 %261, label %262, label %463, !dbg !2142

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2143
  br i1 %263, label %264, label %463, !dbg !2145

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1913, metadata !DIExpression()), !dbg !2036
  br label %265, !dbg !2146

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2036
  call void @llvm.dbg.value(metadata i8 %266, metadata !1913, metadata !DIExpression()), !dbg !2036
  br i1 %111, label %463, label %625, !dbg !2147

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 1, metadata !1913, metadata !DIExpression()), !dbg !2036
  br i1 %110, label %268, label %463, !dbg !2148

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2149

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2151
  %271 = icmp ne i64 %125, 0, !dbg !2153
  %272 = or i1 %271, %270, !dbg !2154
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2154
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %274, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %273, metadata !1897, metadata !DIExpression()), !dbg !1944
  %275 = icmp ult i64 %124, %274, !dbg !2155
  br i1 %275, label %276, label %278, !dbg !2158

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2155
  store i8 39, i8* %277, align 1, !dbg !2155, !tbaa !1317
  br label %278, !dbg !2155

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %279, metadata !1896, metadata !DIExpression()), !dbg !1944
  %280 = icmp ult i64 %279, %274, !dbg !2159
  br i1 %280, label %281, label %283, !dbg !2162

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2159
  store i8 92, i8* %282, align 1, !dbg !2159, !tbaa !1317
  br label %283, !dbg !2159

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %284, metadata !1896, metadata !DIExpression()), !dbg !1944
  %285 = icmp ult i64 %284, %274, !dbg !2163
  br i1 %285, label %286, label %288, !dbg !2166

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2163
  store i8 39, i8* %287, align 1, !dbg !2163, !tbaa !1317
  br label %288, !dbg !2163

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %289, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 0, metadata !1903, metadata !DIExpression()), !dbg !1944
  br label %463, !dbg !2167

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2168

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1914, metadata !DIExpression()), !dbg !2169
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2170
  %293 = load i16*, i16** %292, align 8, !dbg !2170, !tbaa !1131
  %294 = zext i8 %158 to i64, !dbg !2170
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2170
  %296 = load i16, i16* %295, align 2, !dbg !2170, !tbaa !2172
  %297 = lshr i16 %296, 14, !dbg !2173
  %298 = trunc i16 %297 to i8, !dbg !2173
  %299 = and i8 %298, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i8 %299, metadata !1917, metadata !DIExpression()), !dbg !2169
  br label %355, !dbg !2174

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2175
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1918, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %23, metadata !2177, metadata !DIExpression()) #18, !dbg !2184
  call void @llvm.dbg.value(metadata i32 0, metadata !2182, metadata !DIExpression()) #18, !dbg !2184
  call void @llvm.dbg.value(metadata i64 8, metadata !2183, metadata !DIExpression()) #18, !dbg !2184
  store i64 0, i64* %10, align 8, !dbg !2186
  call void @llvm.dbg.value(metadata i64 0, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 1, metadata !1917, metadata !DIExpression()), !dbg !2169
  %301 = icmp eq i64 %155, -1, !dbg !2187
  br i1 %301, label %302, label %304, !dbg !2189

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %303, metadata !1889, metadata !DIExpression()), !dbg !1944
  br label %304, !dbg !2191

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2036
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  br label %306, !dbg !2192

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2193
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2194
  call void @llvm.dbg.value(metadata i8 %308, metadata !1917, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %307, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2195
  %309 = add i64 %307, %123, !dbg !2196
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2197
  %311 = sub i64 %305, %309, !dbg !2198
  call void @llvm.dbg.value(metadata i32* %12, metadata !1924, metadata !DIExpression(DW_OP_deref)), !dbg !1957
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %312, metadata !1927, metadata !DIExpression()), !dbg !1957
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2200

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %307, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %307, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %307, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %307, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %307, metadata !1914, metadata !DIExpression()), !dbg !2169
  %314 = icmp ugt i64 %305, %309, !dbg !2201
  br i1 %314, label %315, label %340, !dbg !2203

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2204
  br label %317, !dbg !2204

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1914, metadata !DIExpression()), !dbg !2169
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2205
  %321 = load i8, i8* %320, align 1, !dbg !2205, !tbaa !1317
  %322 = icmp eq i8 %321, 0, !dbg !2203
  br i1 %322, label %340, label %323, !dbg !2204

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %324, metadata !1914, metadata !DIExpression()), !dbg !2169
  %325 = add i64 %324, %123, !dbg !2207
  %326 = icmp ult i64 %325, %305, !dbg !2201
  br i1 %326, label %317, label %340, !dbg !2203, !llvm.loop !2208

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2209
  %329 = and i1 %113, %328, !dbg !2212
  call void @llvm.dbg.value(metadata i64 1, metadata !1928, metadata !DIExpression()), !dbg !2213
  br i1 %329, label %330, label %343, !dbg !2212

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1928, metadata !DIExpression()), !dbg !2213
  %332 = add i64 %331, %309, !dbg !2214
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2215
  %334 = load i8, i8* %333, align 1, !dbg !2215, !tbaa !1317
  %335 = sext i8 %334 to i32, !dbg !2215
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2216

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %337, metadata !1928, metadata !DIExpression()), !dbg !2213
  %338 = icmp eq i64 %337, %312, !dbg !2209
  br i1 %338, label %343, label %330, !dbg !2218, !llvm.loop !2219

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %308, metadata !1917, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %307, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %308, metadata !1917, metadata !DIExpression()), !dbg !2169
  br label %340, !dbg !2221

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2221
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2222, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %344, metadata !1924, metadata !DIExpression()), !dbg !1957
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2224
  %346 = icmp eq i32 %345, 0, !dbg !2224
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2225
  call void @llvm.dbg.value(metadata i8 %347, metadata !1917, metadata !DIExpression()), !dbg !2169
  %348 = add i64 %312, %307, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %348, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %347, metadata !1917, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %348, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2221
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2227
  %350 = icmp eq i32 %349, 0, !dbg !2228
  br i1 %350, label %306, label %351, !dbg !2229, !llvm.loop !2230

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2232
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 2, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %99, metadata !1900, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %305, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2232
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2036
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2233
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2233
  call void @llvm.dbg.value(metadata i8 %358, metadata !1917, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %357, metadata !1914, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %356, metadata !1889, metadata !DIExpression()), !dbg !1944
  %359 = and i8 %358, 1, !dbg !2234
  %360 = icmp ne i8 %359, 0, !dbg !2234
  call void @llvm.dbg.value(metadata i8 %359, metadata !1913, metadata !DIExpression()), !dbg !2036
  %361 = icmp ult i64 %357, 2, !dbg !2235
  %362 = or i1 %360, %114, !dbg !2236
  %363 = and i1 %361, %362, !dbg !2237
  br i1 %363, label %463, label %364, !dbg !2237

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %365, metadata !1935, metadata !DIExpression()), !dbg !2239
  br label %366, !dbg !2240

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2029
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1944
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1965
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2036
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2036
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2241
  call void @llvm.dbg.value(metadata i8 %372, metadata !1912, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %371, metadata !1911, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %370, metadata !1906, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %369, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %368, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %367, metadata !1895, metadata !DIExpression()), !dbg !1944
  br i1 %362, label %419, label %373, !dbg !2242

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2247

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1912, metadata !DIExpression()), !dbg !2036
  %375 = and i8 %369, 1, !dbg !2250
  %376 = icmp eq i8 %375, 0, !dbg !2250
  %377 = and i1 %110, %376, !dbg !2250
  br i1 %377, label %378, label %394, !dbg !2250

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2252
  br i1 %379, label %380, label %382, !dbg !2256

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2252
  store i8 39, i8* %381, align 1, !dbg !2252, !tbaa !1317
  br label %382, !dbg !2252

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %383, metadata !1896, metadata !DIExpression()), !dbg !1944
  %384 = icmp ult i64 %383, %130, !dbg !2257
  br i1 %384, label %385, label %387, !dbg !2260

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2257
  store i8 36, i8* %386, align 1, !dbg !2257, !tbaa !1317
  br label %387, !dbg !2257

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %388, metadata !1896, metadata !DIExpression()), !dbg !1944
  %389 = icmp ult i64 %388, %130, !dbg !2261
  br i1 %389, label %390, label %392, !dbg !2264

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2261
  store i8 39, i8* %391, align 1, !dbg !2261, !tbaa !1317
  br label %392, !dbg !2261

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %393, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 1, metadata !1903, metadata !DIExpression()), !dbg !1944
  br label %394, !dbg !2265

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1944
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8 %396, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %395, metadata !1896, metadata !DIExpression()), !dbg !1944
  %397 = icmp ult i64 %395, %130, !dbg !2266
  br i1 %397, label %398, label %400, !dbg !2269

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2266
  store i8 92, i8* %399, align 1, !dbg !2266, !tbaa !1317
  br label %400, !dbg !2266

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %401, metadata !1896, metadata !DIExpression()), !dbg !1944
  %402 = icmp ult i64 %401, %130, !dbg !2270
  br i1 %402, label %403, label %407, !dbg !2273

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2270
  %405 = or i8 %404, 48, !dbg !2270
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2270
  store i8 %405, i8* %406, align 1, !dbg !2270, !tbaa !1317
  br label %407, !dbg !2270

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %408, metadata !1896, metadata !DIExpression()), !dbg !1944
  %409 = icmp ult i64 %408, %130, !dbg !2274
  br i1 %409, label %410, label %415, !dbg !2277

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2274
  %412 = and i8 %411, 7, !dbg !2274
  %413 = or i8 %412, 48, !dbg !2274
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2274
  store i8 %413, i8* %414, align 1, !dbg !2274, !tbaa !1317
  br label %415, !dbg !2274

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %416, metadata !1896, metadata !DIExpression()), !dbg !1944
  %417 = and i8 %370, 7, !dbg !2278
  %418 = or i8 %417, 48, !dbg !2279
  call void @llvm.dbg.value(metadata i8 %418, metadata !1906, metadata !DIExpression()), !dbg !2036
  br label %428, !dbg !2280

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2281
  %421 = icmp eq i8 %420, 0, !dbg !2281
  br i1 %421, label %428, label %422, !dbg !2283

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2284
  br i1 %423, label %424, label %426, !dbg !2288

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2284
  store i8 92, i8* %425, align 1, !dbg !2284, !tbaa !1317
  br label %426, !dbg !2284

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %427, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !2036
  br label %428, !dbg !2289

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1944
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1965
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2036
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2036
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2036
  call void @llvm.dbg.value(metadata i8 %433, metadata !1912, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %432, metadata !1911, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %431, metadata !1906, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %430, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %429, metadata !1896, metadata !DIExpression()), !dbg !1944
  %434 = add i64 %367, 1, !dbg !2290
  %435 = icmp ugt i64 %365, %434, !dbg !2292
  br i1 %435, label %436, label %526, !dbg !2293

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2294
  %438 = icmp ne i8 %437, 0, !dbg !2294
  %439 = and i8 %433, 1, !dbg !2294
  %440 = icmp eq i8 %439, 0, !dbg !2294
  %441 = and i1 %438, %440, !dbg !2294
  br i1 %441, label %442, label %453, !dbg !2294

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2297
  br i1 %443, label %444, label %446, !dbg !2301

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2297
  store i8 39, i8* %445, align 1, !dbg !2297, !tbaa !1317
  br label %446, !dbg !2297

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %447, metadata !1896, metadata !DIExpression()), !dbg !1944
  %448 = icmp ult i64 %447, %130, !dbg !2302
  br i1 %448, label %449, label %451, !dbg !2305

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2302
  store i8 39, i8* %450, align 1, !dbg !2302, !tbaa !1317
  br label %451, !dbg !2302

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %452, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 0, metadata !1903, metadata !DIExpression()), !dbg !1944
  br label %453, !dbg !2306

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2307
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8 %455, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %454, metadata !1896, metadata !DIExpression()), !dbg !1944
  %456 = icmp ult i64 %454, %130, !dbg !2308
  br i1 %456, label %457, label %459, !dbg !2311

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2308
  store i8 %431, i8* %458, align 1, !dbg !2308, !tbaa !1317
  br label %459, !dbg !2308

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %460, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %434, metadata !1895, metadata !DIExpression()), !dbg !1944
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2312
  %462 = load i8, i8* %461, align 1, !dbg !2312, !tbaa !1317
  call void @llvm.dbg.value(metadata i8 %462, metadata !1906, metadata !DIExpression()), !dbg !2036
  br label %366, !dbg !2313, !llvm.loop !2314

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2029
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1944
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1961
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2317
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1944
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1944
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2036
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2036
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2036
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %472, metadata !1913, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %471, metadata !1912, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %156, metadata !1911, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %470, metadata !1906, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %469, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %468, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %467, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %466, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %465, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %464, metadata !1895, metadata !DIExpression()), !dbg !1944
  br i1 %117, label %486, label %474, !dbg !2318

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2319
  %476 = zext i8 %475 to i64, !dbg !2319
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2320
  %478 = load i32, i32* %477, align 4, !dbg !2320, !tbaa !1301
  %479 = and i8 %470, 31, !dbg !2321
  %480 = zext i8 %479 to i32, !dbg !2321
  %481 = shl nuw i32 1, %480, !dbg !2322
  %482 = and i32 %478, %481, !dbg !2322
  %483 = icmp eq i32 %482, 0, !dbg !2322
  %484 = icmp eq i8 %156, 0, !dbg !2323
  %485 = and i1 %484, %483, !dbg !2324
  br i1 %485, label %526, label %488, !dbg !2324

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2323
  br i1 %487, label %526, label %488, !dbg !2325

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2326
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1944
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1961
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2317
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1965
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1966
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2036
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2036
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %496, metadata !1913, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %495, metadata !1906, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %494, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %493, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %492, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %491, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %490, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %489, metadata !1895, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.label(metadata !1941), !dbg !2327
  br i1 %109, label %498, label %629, !dbg !2328

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1912, metadata !DIExpression()), !dbg !2036
  %499 = and i8 %493, 1, !dbg !2330
  %500 = icmp eq i8 %499, 0, !dbg !2330
  %501 = and i1 %110, %500, !dbg !2330
  br i1 %501, label %502, label %518, !dbg !2330

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2332
  br i1 %503, label %504, label %506, !dbg !2336

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2332
  store i8 39, i8* %505, align 1, !dbg !2332, !tbaa !1317
  br label %506, !dbg !2332

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %507, metadata !1896, metadata !DIExpression()), !dbg !1944
  %508 = icmp ult i64 %507, %497, !dbg !2337
  br i1 %508, label %509, label %511, !dbg !2340

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2337
  store i8 36, i8* %510, align 1, !dbg !2337, !tbaa !1317
  br label %511, !dbg !2337

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %512, metadata !1896, metadata !DIExpression()), !dbg !1944
  %513 = icmp ult i64 %512, %497, !dbg !2341
  br i1 %513, label %514, label %516, !dbg !2344

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2341
  store i8 39, i8* %515, align 1, !dbg !2341, !tbaa !1317
  br label %516, !dbg !2341

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %517, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 1, metadata !1903, metadata !DIExpression()), !dbg !1944
  br label %518, !dbg !2345

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2036
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8 %520, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %519, metadata !1896, metadata !DIExpression()), !dbg !1944
  %521 = icmp ult i64 %519, %497, !dbg !2346
  br i1 %521, label %522, label %524, !dbg !2349

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2346
  store i8 92, i8* %523, align 1, !dbg !2346, !tbaa !1317
  br label %524, !dbg !2346

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %525, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %536, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %535, metadata !1913, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %534, metadata !1912, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %533, metadata !1906, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %532, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %531, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %530, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %529, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %528, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %527, metadata !1895, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.label(metadata !1942), !dbg !2350
  br label %553, !dbg !2351

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2326
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1944
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1961
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2317
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1965
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1966
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2354
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2036
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2036
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %535, metadata !1913, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %534, metadata !1912, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %533, metadata !1906, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %532, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %531, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %530, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %529, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %528, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %527, metadata !1895, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.label(metadata !1942), !dbg !2350
  %537 = and i8 %531, 1, !dbg !2351
  %538 = icmp ne i8 %537, 0, !dbg !2351
  %539 = and i8 %534, 1, !dbg !2351
  %540 = icmp eq i8 %539, 0, !dbg !2351
  %541 = and i1 %538, %540, !dbg !2351
  br i1 %541, label %542, label %553, !dbg !2351

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2355
  br i1 %543, label %544, label %546, !dbg !2359

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2355
  store i8 39, i8* %545, align 1, !dbg !2355, !tbaa !1317
  br label %546, !dbg !2355

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %547, metadata !1896, metadata !DIExpression()), !dbg !1944
  %548 = icmp ult i64 %547, %536, !dbg !2360
  br i1 %548, label %549, label %551, !dbg !2363

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2360
  store i8 39, i8* %550, align 1, !dbg !2360, !tbaa !1317
  br label %551, !dbg !2360

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %552, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 0, metadata !1903, metadata !DIExpression()), !dbg !1944
  br label %553, !dbg !2364

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2036
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1944
  call void @llvm.dbg.value(metadata i8 %562, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %561, metadata !1896, metadata !DIExpression()), !dbg !1944
  %563 = icmp ult i64 %561, %554, !dbg !2365
  br i1 %563, label %564, label %566, !dbg !2368

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2365
  store i8 %556, i8* %565, align 1, !dbg !2365, !tbaa !1317
  br label %566, !dbg !2365

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %567, metadata !1896, metadata !DIExpression()), !dbg !1944
  %568 = and i8 %555, 1, !dbg !2369
  %569 = icmp eq i8 %568, 0, !dbg !2369
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2371
  call void @llvm.dbg.value(metadata i8 %570, metadata !1905, metadata !DIExpression()), !dbg !1944
  br label %571, !dbg !2372

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2326
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1944
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1961
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2317
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1965
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1944
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1967
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %578, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %577, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %576, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %575, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %574, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %573, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %572, metadata !1895, metadata !DIExpression()), !dbg !1944
  %580 = add i64 %572, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %580, metadata !1895, metadata !DIExpression()), !dbg !1944
  br label %122, !dbg !2374, !llvm.loop !2375

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %127, metadata !1903, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %128, metadata !1904, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %129, metadata !1905, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  %583 = icmp eq i64 %124, 0, !dbg !2377
  %584 = and i1 %110, %583, !dbg !2379
  %585 = xor i1 %584, true, !dbg !2379
  %586 = or i1 %109, %585, !dbg !2379
  br i1 %586, label %587, label %629, !dbg !2379

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2380
  %589 = xor i1 %588, true, !dbg !2380
  %590 = and i8 %128, 1, !dbg !2382
  %591 = icmp eq i8 %590, 0, !dbg !2382
  %592 = or i1 %591, %589, !dbg !2380
  br i1 %592, label %602, label %593, !dbg !2380

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2383
  %595 = icmp eq i8 %594, 0, !dbg !2383
  br i1 %595, label %598, label %596, !dbg !2386

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %94, metadata !1893, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %95, metadata !1894, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %582, metadata !1889, metadata !DIExpression()), !dbg !1944
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2387
  br label %645, !dbg !2388

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2389
  %600 = icmp ne i64 %125, 0, !dbg !2391
  %601 = and i1 %600, %599, !dbg !2392
  br i1 %601, label %26, label %602, !dbg !2392

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %130, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  %603 = icmp ne i8* %97, null, !dbg !2393
  %604 = and i1 %603, %109, !dbg !2395
  br i1 %604, label %605, label %620, !dbg !2395

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %124, metadata !1896, metadata !DIExpression()), !dbg !1944
  %606 = load i8, i8* %97, align 1, !dbg !2396, !tbaa !1317
  %607 = icmp eq i8 %606, 0, !dbg !2399
  br i1 %607, label %620, label %608, !dbg !2399

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1898, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %611, metadata !1896, metadata !DIExpression()), !dbg !1944
  %612 = icmp ult i64 %611, %130, !dbg !2400
  br i1 %612, label %613, label %615, !dbg !2403

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2400
  store i8 %609, i8* %614, align 1, !dbg !2400, !tbaa !1317
  br label %615, !dbg !2400

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %616, metadata !1896, metadata !DIExpression()), !dbg !1944
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2404
  call void @llvm.dbg.value(metadata i8* %617, metadata !1898, metadata !DIExpression()), !dbg !1944
  %618 = load i8, i8* %617, align 1, !dbg !2396, !tbaa !1317
  %619 = icmp eq i8 %618, 0, !dbg !2399
  br i1 %619, label %620, label %608, !dbg !2399, !llvm.loop !2405

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1998
  call void @llvm.dbg.value(metadata i64 %621, metadata !1896, metadata !DIExpression()), !dbg !1944
  %622 = icmp ult i64 %621, %130, !dbg !2407
  br i1 %622, label %623, label %645, !dbg !2409

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2410
  store i8 0, i8* %624, align 1, !dbg !2411, !tbaa !1317
  br label %645, !dbg !2410

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %630, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.label(metadata !1943), !dbg !2412
  %627 = icmp eq i8 %101, 0, !dbg !2413
  %628 = select i1 %627, i32 2, i32 4, !dbg !2413
  br label %635, !dbg !2413

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1887, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %630, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.label(metadata !1943), !dbg !2412
  %632 = icmp eq i32 %93, 2, !dbg !2415
  %633 = icmp eq i8 %101, 0, !dbg !2413
  %634 = select i1 %633, i32 2, i32 4, !dbg !2413
  br i1 %632, label %635, label %639, !dbg !2413

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2413

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1890, metadata !DIExpression()), !dbg !1944
  %643 = and i32 %5, -3, !dbg !2416
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2417
  br label %645, !dbg !2418

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2419
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2420 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2424, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %1, metadata !2425, metadata !DIExpression()), !dbg !2428
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2429
  call void @llvm.dbg.value(metadata i8* %3, metadata !2426, metadata !DIExpression()), !dbg !2428
  %4 = icmp eq i8* %3, %0, !dbg !2430
  br i1 %4, label %5, label %71, !dbg !2432

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %6, metadata !2427, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* %6, metadata !2434, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8* undef, metadata !2440, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 85, metadata !2441, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 84, metadata !2442, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 70, metadata !2443, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 45, metadata !2444, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 56, metadata !2445, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 0, metadata !2446, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 0, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 0, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 0, metadata !2449, metadata !DIExpression()), !dbg !2450
  %7 = load i8, i8* %6, align 1, !dbg !2453, !tbaa !1317
  %8 = and i8 %7, -33, !dbg !2453
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2453

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2455, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* undef, metadata !2460, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 84, metadata !2461, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 70, metadata !2462, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 45, metadata !2463, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 56, metadata !2464, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 0, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 0, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 0, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 0, metadata !2468, metadata !DIExpression()), !dbg !2469
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2473
  %11 = load i8, i8* %10, align 1, !dbg !2473, !tbaa !1317
  %12 = and i8 %11, -33, !dbg !2473
  %13 = icmp eq i8 %12, 84, !dbg !2473
  br i1 %13, label %14, label %68, !dbg !2473

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8* undef, metadata !2480, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 70, metadata !2481, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 45, metadata !2482, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 56, metadata !2483, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 0, metadata !2484, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 0, metadata !2485, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 0, metadata !2486, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2488
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2492
  %16 = load i8, i8* %15, align 1, !dbg !2492, !tbaa !1317
  %17 = and i8 %16, -33, !dbg !2492
  %18 = icmp eq i8 %17, 70, !dbg !2492
  br i1 %18, label %19, label %68, !dbg !2492

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2494, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8* undef, metadata !2499, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 45, metadata !2500, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 56, metadata !2501, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 0, metadata !2502, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 0, metadata !2503, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 0, metadata !2505, metadata !DIExpression()), !dbg !2506
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2510
  %21 = load i8, i8* %20, align 1, !dbg !2510, !tbaa !1317
  %22 = icmp eq i8 %21, 45, !dbg !2510
  br i1 %22, label %23, label %68, !dbg !2512

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2513, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* undef, metadata !2518, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 56, metadata !2519, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2520, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2524
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2528
  %25 = load i8, i8* %24, align 1, !dbg !2528, !tbaa !1317
  %26 = icmp eq i8 %25, 56, !dbg !2528
  br i1 %26, label %27, label %68, !dbg !2530

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2531, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8* undef, metadata !2536, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 0, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 0, metadata !2540, metadata !DIExpression()), !dbg !2541
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2545
  %29 = load i8, i8* %28, align 1, !dbg !2545, !tbaa !1317
  %30 = icmp eq i8 %29, 0, !dbg !2545
  br i1 %30, label %31, label %68, !dbg !2547

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2548, !tbaa !1317
  %33 = icmp eq i8 %32, 96, !dbg !2549
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.76, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.77, i64 0, i64 0), !dbg !2548
  br label %71, !dbg !2550

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2455, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* undef, metadata !2460, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 66, metadata !2461, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 49, metadata !2462, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 56, metadata !2463, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 48, metadata !2464, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 51, metadata !2465, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 48, metadata !2466, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2467, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2468, metadata !DIExpression()), !dbg !2551
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2555
  %37 = load i8, i8* %36, align 1, !dbg !2555, !tbaa !1317
  %38 = and i8 %37, -33, !dbg !2555
  %39 = icmp eq i8 %38, 66, !dbg !2555
  br i1 %39, label %40, label %68, !dbg !2555

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* undef, metadata !2480, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 49, metadata !2481, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 56, metadata !2482, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 48, metadata !2483, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 51, metadata !2484, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 48, metadata !2485, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 0, metadata !2486, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2556
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2558
  %42 = load i8, i8* %41, align 1, !dbg !2558, !tbaa !1317
  %43 = icmp eq i8 %42, 49, !dbg !2558
  br i1 %43, label %44, label %68, !dbg !2559

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2494, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8* undef, metadata !2499, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 56, metadata !2500, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 48, metadata !2501, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 51, metadata !2502, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 48, metadata !2503, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 0, metadata !2505, metadata !DIExpression()), !dbg !2560
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2562
  %46 = load i8, i8* %45, align 1, !dbg !2562, !tbaa !1317
  %47 = icmp eq i8 %46, 56, !dbg !2562
  br i1 %47, label %48, label %68, !dbg !2563

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2513, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8* undef, metadata !2518, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 48, metadata !2519, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 51, metadata !2520, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 48, metadata !2521, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2564
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2566
  %50 = load i8, i8* %49, align 1, !dbg !2566, !tbaa !1317
  %51 = icmp eq i8 %50, 48, !dbg !2566
  br i1 %51, label %52, label %68, !dbg !2567

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2531, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* undef, metadata !2536, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 51, metadata !2537, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 48, metadata !2538, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 0, metadata !2539, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 0, metadata !2540, metadata !DIExpression()), !dbg !2568
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2570
  %54 = load i8, i8* %53, align 1, !dbg !2570, !tbaa !1317
  %55 = icmp eq i8 %54, 51, !dbg !2570
  br i1 %55, label %56, label %68, !dbg !2571

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2572, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* undef, metadata !2577, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 48, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2581
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2585
  %58 = load i8, i8* %57, align 1, !dbg !2585, !tbaa !1317
  %59 = icmp eq i8 %58, 48, !dbg !2585
  br i1 %59, label %60, label %68, !dbg !2587

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2588, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* undef, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 0, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 0, metadata !2595, metadata !DIExpression()), !dbg !2596
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2600
  %62 = load i8, i8* %61, align 1, !dbg !2600, !tbaa !1317
  %63 = icmp eq i8 %62, 0, !dbg !2600
  br i1 %63, label %64, label %68, !dbg !2602

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2603, !tbaa !1317
  %66 = icmp eq i8 %65, 96, !dbg !2604
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.79, i64 0, i64 0), !dbg !2603
  br label %71, !dbg !2605

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2606
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !2607
  br label %71, !dbg !2608

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2428
  ret i8* %72, !dbg !2609
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !378 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !382 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2610 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2614, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %1, metadata !2615, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2616, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()) #18, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %1, metadata !2623, metadata !DIExpression()) #18, !dbg !2631
  call void @llvm.dbg.value(metadata i64* null, metadata !2624, metadata !DIExpression()) #18, !dbg !2631
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2625, metadata !DIExpression()) #18, !dbg !2631
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2633
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2633
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2626, metadata !DIExpression()) #18, !dbg !2631
  %6 = tail call i32* @__errno_location() #24, !dbg !2634
  %7 = load i32, i32* %6, align 4, !dbg !2634, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %7, metadata !2627, metadata !DIExpression()) #18, !dbg !2631
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2635
  %9 = load i32, i32* %8, align 4, !dbg !2635, !tbaa !1829
  %10 = or i32 %9, 1, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %10, metadata !2628, metadata !DIExpression()) #18, !dbg !2631
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2637
  %12 = load i32, i32* %11, align 8, !dbg !2637, !tbaa !1778
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2638
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2639
  %15 = load i8*, i8** %14, align 8, !dbg !2639, !tbaa !1852
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2640
  %17 = load i8*, i8** %16, align 8, !dbg !2640, !tbaa !1855
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2641
  %19 = add i64 %18, 1, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %19, metadata !2629, metadata !DIExpression()) #18, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %19, metadata !2643, metadata !DIExpression()) #18, !dbg !2646
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %20, metadata !2630, metadata !DIExpression()) #18, !dbg !2631
  %21 = load i32, i32* %11, align 8, !dbg !2649, !tbaa !1778
  %22 = load i8*, i8** %14, align 8, !dbg !2650, !tbaa !1852
  %23 = load i8*, i8** %16, align 8, !dbg !2651, !tbaa !1855
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2652
  store i32 %7, i32* %6, align 4, !dbg !2653, !tbaa !1301
  ret i8* %20, !dbg !2654
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2619 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %1, metadata !2623, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64* %2, metadata !2624, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2625, metadata !DIExpression()), !dbg !2655
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2656
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2656
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2626, metadata !DIExpression()), !dbg !2655
  %7 = tail call i32* @__errno_location() #24, !dbg !2657
  %8 = load i32, i32* %7, align 4, !dbg !2657, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %8, metadata !2627, metadata !DIExpression()), !dbg !2655
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2658
  %10 = load i32, i32* %9, align 4, !dbg !2658, !tbaa !1829
  %11 = icmp ne i64* %2, null, !dbg !2659
  %12 = xor i1 %11, true, !dbg !2659
  %13 = zext i1 %12 to i32, !dbg !2659
  %14 = or i32 %10, %13, !dbg !2660
  call void @llvm.dbg.value(metadata i32 %14, metadata !2628, metadata !DIExpression()), !dbg !2655
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2661
  %16 = load i32, i32* %15, align 8, !dbg !2661, !tbaa !1778
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2662
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2663
  %19 = load i8*, i8** %18, align 8, !dbg !2663, !tbaa !1852
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2664
  %21 = load i8*, i8** %20, align 8, !dbg !2664, !tbaa !1855
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2665
  %23 = add i64 %22, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %23, metadata !2629, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %23, metadata !2643, metadata !DIExpression()) #18, !dbg !2667
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2669
  call void @llvm.dbg.value(metadata i8* %24, metadata !2630, metadata !DIExpression()), !dbg !2655
  %25 = load i32, i32* %15, align 8, !dbg !2670, !tbaa !1778
  %26 = load i8*, i8** %18, align 8, !dbg !2671, !tbaa !1852
  %27 = load i8*, i8** %20, align 8, !dbg !2672, !tbaa !1855
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2673
  store i32 %8, i32* %7, align 4, !dbg !2674, !tbaa !1301
  br i1 %11, label %29, label %30, !dbg !2675

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2676, !tbaa !1546
  br label %30, !dbg !2678

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2679
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2680 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2684, !tbaa !1131
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2682, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 1, metadata !2683, metadata !DIExpression()), !dbg !2685
  %2 = load i32, i32* @nslots, align 4, !dbg !2686, !tbaa !1301
  %3 = icmp sgt i32 %2, 1, !dbg !2689
  br i1 %3, label %4, label %12, !dbg !2690

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2683, metadata !DIExpression()), !dbg !2685
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2691
  %7 = load i8*, i8** %6, align 8, !dbg !2691, !tbaa !2692
  tail call void @free(i8* %7) #18, !dbg !2694
  %8 = add nuw nsw i64 %5, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %8, metadata !2683, metadata !DIExpression()), !dbg !2685
  %9 = load i32, i32* @nslots, align 4, !dbg !2686, !tbaa !1301
  %10 = sext i32 %9 to i64, !dbg !2689
  %11 = icmp slt i64 %8, %10, !dbg !2689
  br i1 %11, label %4, label %12, !dbg !2690, !llvm.loop !2696

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2698
  %14 = load i8*, i8** %13, align 8, !dbg !2698, !tbaa !2692
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2700
  br i1 %15, label %17, label %16, !dbg !2701

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2702
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2704, !tbaa !2705
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2706, !tbaa !2692
  br label %17, !dbg !2707

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2708
  br i1 %18, label %21, label %19, !dbg !2710

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2711
  tail call void @free(i8* %20) #18, !dbg !2713
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2714, !tbaa !1131
  br label %21, !dbg !2715

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2716, !tbaa !1301
  ret void, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2720, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %1, metadata !2721, metadata !DIExpression()), !dbg !2722
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2723
  ret i8* %3, !dbg !2724
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2725 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2729, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8* %1, metadata !2730, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %2, metadata !2731, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2732, metadata !DIExpression()), !dbg !2744
  %5 = tail call i32* @__errno_location() #24, !dbg !2745
  %6 = load i32, i32* %5, align 4, !dbg !2745, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %6, metadata !2733, metadata !DIExpression()), !dbg !2744
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2746, !tbaa !1131
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2734, metadata !DIExpression()), !dbg !2744
  %8 = icmp slt i32 %0, 0, !dbg !2747
  br i1 %8, label %9, label %10, !dbg !2749

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2750
  unreachable, !dbg !2750

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2751, !tbaa !1301
  %12 = icmp sgt i32 %11, %0, !dbg !2752
  br i1 %12, label %34, label %13, !dbg !2753

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2754
  call void @llvm.dbg.value(metadata i1 %14, metadata !2735, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2738, metadata !DIExpression()), !dbg !2755
  %15 = icmp eq i32 %0, 2147483647, !dbg !2756
  br i1 %15, label %16, label %17, !dbg !2758

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2759
  unreachable, !dbg !2759

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2760
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2760
  %20 = add nuw nsw i32 %0, 1, !dbg !2761
  %21 = sext i32 %20 to i64, !dbg !2762
  %22 = shl nuw nsw i64 %21, 4, !dbg !2763
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2764
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2764
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2734, metadata !DIExpression()), !dbg !2744
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2765, !tbaa !1131
  br i1 %14, label %25, label %26, !dbg !2766

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2767, !tbaa.struct !2769
  br label %26, !dbg !2770

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2771, !tbaa !1301
  %28 = sext i32 %27 to i64, !dbg !2772
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2772
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2773
  %31 = sub nsw i32 %20, %27, !dbg !2774
  %32 = sext i32 %31 to i64, !dbg !2775
  %33 = shl nsw i64 %32, 4, !dbg !2776
  call void @llvm.dbg.value(metadata i8* %30, metadata !2177, metadata !DIExpression()) #18, !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2182, metadata !DIExpression()) #18, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %33, metadata !2183, metadata !DIExpression()) #18, !dbg !2777
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2779
  store i32 %20, i32* @nslots, align 4, !dbg !2780, !tbaa !1301
  br label %34, !dbg !2781

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2744
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2734, metadata !DIExpression()), !dbg !2744
  %36 = zext i32 %0 to i64, !dbg !2782
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2783
  %38 = load i64, i64* %37, align 8, !dbg !2783, !tbaa !2705
  call void @llvm.dbg.value(metadata i64 %38, metadata !2739, metadata !DIExpression()), !dbg !2784
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2785
  %40 = load i8*, i8** %39, align 8, !dbg !2785, !tbaa !2692
  call void @llvm.dbg.value(metadata i8* %40, metadata !2741, metadata !DIExpression()), !dbg !2784
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2786
  %42 = load i32, i32* %41, align 4, !dbg !2786, !tbaa !1829
  %43 = or i32 %42, 1, !dbg !2787
  call void @llvm.dbg.value(metadata i32 %43, metadata !2742, metadata !DIExpression()), !dbg !2784
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2788
  %45 = load i32, i32* %44, align 8, !dbg !2788, !tbaa !1778
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2789
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2790
  %48 = load i8*, i8** %47, align 8, !dbg !2790, !tbaa !1852
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2791
  %50 = load i8*, i8** %49, align 8, !dbg !2791, !tbaa !1855
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %51, metadata !2743, metadata !DIExpression()), !dbg !2784
  %52 = icmp ugt i64 %38, %51, !dbg !2793
  br i1 %52, label %63, label %53, !dbg !2795

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %54, metadata !2739, metadata !DIExpression()), !dbg !2784
  store i64 %54, i64* %37, align 8, !dbg !2798, !tbaa !2705
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2799
  br i1 %55, label %57, label %56, !dbg !2801

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2802
  br label %57, !dbg !2802

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2643, metadata !DIExpression()) #18, !dbg !2803
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2805
  call void @llvm.dbg.value(metadata i8* %58, metadata !2741, metadata !DIExpression()), !dbg !2784
  store i8* %58, i8** %39, align 8, !dbg !2806, !tbaa !2692
  %59 = load i32, i32* %44, align 8, !dbg !2807, !tbaa !1778
  %60 = load i8*, i8** %47, align 8, !dbg !2808, !tbaa !1852
  %61 = load i8*, i8** %49, align 8, !dbg !2809, !tbaa !1855
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2810
  br label %63, !dbg !2811

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2784
  call void @llvm.dbg.value(metadata i8* %64, metadata !2741, metadata !DIExpression()), !dbg !2784
  store i32 %6, i32* %5, align 4, !dbg !2812, !tbaa !1301
  ret i8* %64, !dbg !2813
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2814 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %1, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %2, metadata !2820, metadata !DIExpression()), !dbg !2821
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2822
  ret i8* %4, !dbg !2823
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2824 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()) #18, !dbg !2828
  call void @llvm.dbg.value(metadata i8* %0, metadata !2721, metadata !DIExpression()) #18, !dbg !2828
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2830
  ret i8* %2, !dbg !2831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2832 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2836, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %1, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 0, metadata !2818, metadata !DIExpression()) #18, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %0, metadata !2819, metadata !DIExpression()) #18, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %1, metadata !2820, metadata !DIExpression()) #18, !dbg !2839
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2841
  ret i8* %3, !dbg !2842
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2843 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2847, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %1, metadata !2848, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %2, metadata !2849, metadata !DIExpression()), !dbg !2851
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2852
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2852
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2850, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %1, metadata !2854, metadata !DIExpression()) #18, !dbg !2860
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2859, metadata !DIExpression()) #18, !dbg !2862
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2862, !alias.scope !2863
  %6 = icmp eq i32 %1, 10, !dbg !2866
  br i1 %6, label %7, label %8, !dbg !2868

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2869, !noalias !2863
  unreachable, !dbg !2869

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2870
  store i32 %1, i32* %9, align 8, !dbg !2871, !tbaa !1778, !alias.scope !2863
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2872
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2873
  ret i8* %10, !dbg !2874
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2875 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2879, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 %1, metadata !2880, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8* %2, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %3, metadata !2882, metadata !DIExpression()), !dbg !2884
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2885
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2885
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2883, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i32 %1, metadata !2854, metadata !DIExpression()) #18, !dbg !2887
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2859, metadata !DIExpression()) #18, !dbg !2889
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2889, !alias.scope !2890
  %7 = icmp eq i32 %1, 10, !dbg !2893
  br i1 %7, label %8, label %9, !dbg !2894

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2895, !noalias !2890
  unreachable, !dbg !2895

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2896
  store i32 %1, i32* %10, align 8, !dbg !2897, !tbaa !1778, !alias.scope !2890
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2898
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2899
  ret i8* %11, !dbg !2900
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2901 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2859, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2850, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i32 %0, metadata !2903, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8* %1, metadata !2904, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 0, metadata !2847, metadata !DIExpression()) #18, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %0, metadata !2848, metadata !DIExpression()) #18, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %1, metadata !2849, metadata !DIExpression()) #18, !dbg !2910
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2911
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %0, metadata !2854, metadata !DIExpression()) #18, !dbg !2912
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2905, !alias.scope !2913
  %5 = icmp eq i32 %0, 10, !dbg !2916
  br i1 %5, label %6, label %7, !dbg !2917

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2918, !noalias !2913
  unreachable, !dbg !2918

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2919
  store i32 %0, i32* %8, align 8, !dbg !2920, !tbaa !1778, !alias.scope !2913
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2921
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2922
  ret i8* %9, !dbg !2923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2924 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2859, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2883, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8* %1, metadata !2929, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %2, metadata !2930, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 0, metadata !2879, metadata !DIExpression()) #18, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %0, metadata !2880, metadata !DIExpression()) #18, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %1, metadata !2881, metadata !DIExpression()) #18, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %2, metadata !2882, metadata !DIExpression()) #18, !dbg !2936
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2937
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2937
  call void @llvm.dbg.value(metadata i32 %0, metadata !2854, metadata !DIExpression()) #18, !dbg !2938
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2931, !alias.scope !2939
  %6 = icmp eq i32 %0, 10, !dbg !2942
  br i1 %6, label %7, label %8, !dbg !2943

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2944, !noalias !2939
  unreachable, !dbg !2944

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2945
  store i32 %0, i32* %9, align 8, !dbg !2946, !tbaa !1778, !alias.scope !2939
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2948
  ret i8* %10, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2950 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 %2, metadata !2956, metadata !DIExpression()), !dbg !2958
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2959
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2957, metadata !DIExpression()), !dbg !2960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2961, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1796, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %2, metadata !1797, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %2, metadata !1799, metadata !DIExpression()), !dbg !2963
  %6 = lshr i8 %2, 5, !dbg !2965
  %7 = zext i8 %6 to i64, !dbg !2965
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2966
  call void @llvm.dbg.value(metadata i32* %8, metadata !1800, metadata !DIExpression()), !dbg !2963
  %9 = and i8 %2, 31, !dbg !2967
  %10 = zext i8 %9 to i32, !dbg !2967
  call void @llvm.dbg.value(metadata i32 %10, metadata !1802, metadata !DIExpression()), !dbg !2963
  %11 = load i32, i32* %8, align 4, !dbg !2968, !tbaa !1301
  %12 = lshr i32 %11, %10, !dbg !2969
  %13 = and i32 %12, 1, !dbg !2970
  call void @llvm.dbg.value(metadata i32 %13, metadata !1803, metadata !DIExpression()), !dbg !2963
  %14 = xor i32 %13, 1, !dbg !2971
  %15 = shl i32 %14, %10, !dbg !2972
  %16 = xor i32 %15, %11, !dbg !2973
  store i32 %16, i32* %8, align 4, !dbg !2973, !tbaa !1301
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2974
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2975
  ret i8* %17, !dbg !2976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2977 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2957, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %1, metadata !2982, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()) #18, !dbg !2986
  call void @llvm.dbg.value(metadata i64 -1, metadata !2955, metadata !DIExpression()) #18, !dbg !2986
  call void @llvm.dbg.value(metadata i8 %1, metadata !2956, metadata !DIExpression()) #18, !dbg !2986
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2987
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2987
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2988, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1796, metadata !DIExpression()) #18, !dbg !2989
  call void @llvm.dbg.value(metadata i8 %1, metadata !1797, metadata !DIExpression()) #18, !dbg !2989
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()) #18, !dbg !2989
  call void @llvm.dbg.value(metadata i8 %1, metadata !1799, metadata !DIExpression()) #18, !dbg !2989
  %5 = lshr i8 %1, 5, !dbg !2991
  %6 = zext i8 %5 to i64, !dbg !2991
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2992
  call void @llvm.dbg.value(metadata i32* %7, metadata !1800, metadata !DIExpression()) #18, !dbg !2989
  %8 = and i8 %1, 31, !dbg !2993
  %9 = zext i8 %8 to i32, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %9, metadata !1802, metadata !DIExpression()) #18, !dbg !2989
  %10 = load i32, i32* %7, align 4, !dbg !2994, !tbaa !1301
  %11 = lshr i32 %10, %9, !dbg !2995
  %12 = and i32 %11, 1, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %12, metadata !1803, metadata !DIExpression()) #18, !dbg !2989
  %13 = xor i32 %12, 1, !dbg !2997
  %14 = shl i32 %13, %9, !dbg !2998
  %15 = xor i32 %14, %10, !dbg !2999
  store i32 %15, i32* %7, align 4, !dbg !2999, !tbaa !1301
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3000
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3001
  ret i8* %16, !dbg !3002
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3003 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2957, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()) #18, !dbg !3010
  call void @llvm.dbg.value(metadata i8 58, metadata !2982, metadata !DIExpression()) #18, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()) #18, !dbg !3011
  call void @llvm.dbg.value(metadata i64 -1, metadata !2955, metadata !DIExpression()) #18, !dbg !3011
  call void @llvm.dbg.value(metadata i8 58, metadata !2956, metadata !DIExpression()) #18, !dbg !3011
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3012
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3013, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1796, metadata !DIExpression()) #18, !dbg !3014
  call void @llvm.dbg.value(metadata i8 58, metadata !1797, metadata !DIExpression()) #18, !dbg !3014
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()) #18, !dbg !3014
  call void @llvm.dbg.value(metadata i8 58, metadata !1799, metadata !DIExpression()) #18, !dbg !3014
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3016
  call void @llvm.dbg.value(metadata i32* %4, metadata !1800, metadata !DIExpression()) #18, !dbg !3014
  call void @llvm.dbg.value(metadata i32 26, metadata !1802, metadata !DIExpression()) #18, !dbg !3014
  %5 = load i32, i32* %4, align 4, !dbg !3017, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %5, metadata !1803, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3014
  %6 = or i32 %5, 67108864, !dbg !3018
  store i32 %6, i32* %4, align 4, !dbg !3018, !tbaa !1301
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !3019
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3020
  ret i8* %7, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3022 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2957, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %0, metadata !3024, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %1, metadata !3025, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()) #18, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()) #18, !dbg !3029
  call void @llvm.dbg.value(metadata i8 58, metadata !2956, metadata !DIExpression()) #18, !dbg !3029
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3030
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3030
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3031, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1796, metadata !DIExpression()) #18, !dbg !3032
  call void @llvm.dbg.value(metadata i8 58, metadata !1797, metadata !DIExpression()) #18, !dbg !3032
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()) #18, !dbg !3032
  call void @llvm.dbg.value(metadata i8 58, metadata !1799, metadata !DIExpression()) #18, !dbg !3032
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3034
  call void @llvm.dbg.value(metadata i32* %5, metadata !1800, metadata !DIExpression()) #18, !dbg !3032
  call void @llvm.dbg.value(metadata i32 26, metadata !1802, metadata !DIExpression()) #18, !dbg !3032
  %6 = load i32, i32* %5, align 4, !dbg !3035, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %6, metadata !1803, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3032
  %7 = or i32 %6, 67108864, !dbg !3036
  store i32 %7, i32* %5, align 4, !dbg !3036, !tbaa !1301
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !3037
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3038
  ret i8* %8, !dbg !3039
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3040 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2859, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3046
  call void @llvm.dbg.value(metadata i32 %0, metadata !3042, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 %1, metadata !3043, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8* %2, metadata !3044, metadata !DIExpression()), !dbg !3048
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3049
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3049
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3045, metadata !DIExpression()), !dbg !3050
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3051
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3051
  call void @llvm.dbg.value(metadata i32 %1, metadata !2854, metadata !DIExpression()) #18, !dbg !3052
  call void @llvm.dbg.value(metadata i32 0, metadata !2859, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3052
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3046, !alias.scope !3053
  %8 = icmp eq i32 %1, 10, !dbg !3056
  br i1 %8, label %9, label %10, !dbg !3057

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3058, !noalias !3053
  unreachable, !dbg !3058

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2859, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3052
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3051
  store i32 %1, i32* %11, align 8, !dbg !3051, !tbaa.struct !2962
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3051
  %13 = bitcast i32* %12 to i8*, !dbg !3051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3051, !tbaa.struct !2962
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3051
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1796, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 58, metadata !1797, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 58, metadata !1799, metadata !DIExpression()), !dbg !3059
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3061
  call void @llvm.dbg.value(metadata i32* %14, metadata !1800, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i32 26, metadata !1802, metadata !DIExpression()), !dbg !3059
  %15 = load i32, i32* %14, align 4, !dbg !3062, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %15, metadata !1803, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3059
  %16 = or i32 %15, 67108864, !dbg !3063
  store i32 %16, i32* %14, align 4, !dbg !3063, !tbaa !1301
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3064
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3065
  ret i8* %17, !dbg !3066
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3067 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3075, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 %0, metadata !3071, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* %1, metadata !3072, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* %2, metadata !3073, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* %3, metadata !3074, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 %0, metadata !3080, metadata !DIExpression()) #18, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %1, metadata !3081, metadata !DIExpression()) #18, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %2, metadata !3082, metadata !DIExpression()) #18, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %3, metadata !3083, metadata !DIExpression()) #18, !dbg !3088
  call void @llvm.dbg.value(metadata i64 -1, metadata !3084, metadata !DIExpression()) #18, !dbg !3088
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3089
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3090, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1836, metadata !DIExpression()) #18, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %1, metadata !1837, metadata !DIExpression()) #18, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %2, metadata !1838, metadata !DIExpression()) #18, !dbg !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1836, metadata !DIExpression()) #18, !dbg !3091
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3093
  store i32 10, i32* %7, align 8, !dbg !3094, !tbaa !1778
  %8 = icmp ne i8* %1, null, !dbg !3095
  %9 = icmp ne i8* %2, null, !dbg !3096
  %10 = and i1 %8, %9, !dbg !3097
  br i1 %10, label %12, label %11, !dbg !3097

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3098
  unreachable, !dbg !3098

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3099
  store i8* %1, i8** %13, align 8, !dbg !3100, !tbaa !1852
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3101
  store i8* %2, i8** %14, align 8, !dbg !3102, !tbaa !1855
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3103
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3104
  ret i8* %15, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3076 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3080, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %1, metadata !3081, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %2, metadata !3082, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %3, metadata !3083, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %4, metadata !3084, metadata !DIExpression()), !dbg !3106
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3107
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3107
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3075, metadata !DIExpression()), !dbg !3108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3109, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1836, metadata !DIExpression()) #18, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %1, metadata !1837, metadata !DIExpression()) #18, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %2, metadata !1838, metadata !DIExpression()) #18, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1836, metadata !DIExpression()) #18, !dbg !3110
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3112
  store i32 10, i32* %8, align 8, !dbg !3113, !tbaa !1778
  %9 = icmp ne i8* %1, null, !dbg !3114
  %10 = icmp ne i8* %2, null, !dbg !3115
  %11 = and i1 %9, %10, !dbg !3116
  br i1 %11, label %13, label %12, !dbg !3116

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3117
  unreachable, !dbg !3117

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3118
  store i8* %1, i8** %14, align 8, !dbg !3119, !tbaa !1852
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3120
  store i8* %2, i8** %15, align 8, !dbg !3121, !tbaa !1855
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3122
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3123
  ret i8* %16, !dbg !3124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3125 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3075, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* %0, metadata !3129, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8* %1, metadata !3130, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8* %2, metadata !3131, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 0, metadata !3071, metadata !DIExpression()) #18, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()) #18, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %1, metadata !3073, metadata !DIExpression()) #18, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %2, metadata !3074, metadata !DIExpression()) #18, !dbg !3136
  call void @llvm.dbg.value(metadata i32 0, metadata !3080, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %0, metadata !3081, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %1, metadata !3082, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %2, metadata !3083, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i64 -1, metadata !3084, metadata !DIExpression()) #18, !dbg !3137
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3138
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3139, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1836, metadata !DIExpression()) #18, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %0, metadata !1837, metadata !DIExpression()) #18, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %1, metadata !1838, metadata !DIExpression()) #18, !dbg !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1836, metadata !DIExpression()) #18, !dbg !3140
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3142
  store i32 10, i32* %6, align 8, !dbg !3143, !tbaa !1778
  %7 = icmp ne i8* %0, null, !dbg !3144
  %8 = icmp ne i8* %1, null, !dbg !3145
  %9 = and i1 %7, %8, !dbg !3146
  br i1 %9, label %11, label %10, !dbg !3146

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3147
  unreachable, !dbg !3147

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3148
  store i8* %0, i8** %12, align 8, !dbg !3149, !tbaa !1852
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3150
  store i8* %1, i8** %13, align 8, !dbg !3151, !tbaa !1855
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3153
  ret i8* %14, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3155 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3075, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %2, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %3, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 0, metadata !3080, metadata !DIExpression()) #18, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %0, metadata !3081, metadata !DIExpression()) #18, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %1, metadata !3082, metadata !DIExpression()) #18, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %2, metadata !3083, metadata !DIExpression()) #18, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %3, metadata !3084, metadata !DIExpression()) #18, !dbg !3166
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3167
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3168, !tbaa.struct !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1836, metadata !DIExpression()) #18, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %0, metadata !1837, metadata !DIExpression()) #18, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %1, metadata !1838, metadata !DIExpression()) #18, !dbg !3169
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1836, metadata !DIExpression()) #18, !dbg !3169
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3171
  store i32 10, i32* %7, align 8, !dbg !3172, !tbaa !1778
  %8 = icmp ne i8* %0, null, !dbg !3173
  %9 = icmp ne i8* %1, null, !dbg !3174
  %10 = and i1 %8, %9, !dbg !3175
  br i1 %10, label %12, label %11, !dbg !3175

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3176
  unreachable, !dbg !3176

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3177
  store i8* %0, i8** %13, align 8, !dbg !3178, !tbaa !1852
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3179
  store i8* %1, i8** %14, align 8, !dbg !3180, !tbaa !1855
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3181
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3182
  ret i8* %15, !dbg !3183
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3184 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3188, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i8* %1, metadata !3189, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %2, metadata !3190, metadata !DIExpression()), !dbg !3191
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3192
  ret i8* %4, !dbg !3193
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3194 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3198, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %1, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i32 0, metadata !3188, metadata !DIExpression()) #18, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %0, metadata !3189, metadata !DIExpression()) #18, !dbg !3201
  call void @llvm.dbg.value(metadata i64 %1, metadata !3190, metadata !DIExpression()) #18, !dbg !3201
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3203
  ret i8* %3, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3209, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 %0, metadata !3188, metadata !DIExpression()) #18, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %1, metadata !3189, metadata !DIExpression()) #18, !dbg !3212
  call void @llvm.dbg.value(metadata i64 -1, metadata !3190, metadata !DIExpression()) #18, !dbg !3212
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3214
  ret i8* %3, !dbg !3215
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3216 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 0, metadata !3209, metadata !DIExpression()) #18, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %0, metadata !3210, metadata !DIExpression()) #18, !dbg !3220
  call void @llvm.dbg.value(metadata i32 0, metadata !3188, metadata !DIExpression()) #18, !dbg !3222
  call void @llvm.dbg.value(metadata i8* %0, metadata !3189, metadata !DIExpression()) #18, !dbg !3222
  call void @llvm.dbg.value(metadata i64 -1, metadata !3190, metadata !DIExpression()) #18, !dbg !3222
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3224
  ret i8* %2, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.timespec* @get_root_dev_ino(%struct.timespec* %0) local_unnamed_addr #8 !dbg !3226 {
  %2 = alloca %struct.stat, align 16
  call void @llvm.dbg.value(metadata %struct.timespec* %0, metadata !3235, metadata !DIExpression()), !dbg !3258
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !3259
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #18, !dbg !3259
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !3236, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), metadata !3261, metadata !DIExpression()) #18, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !3267, metadata !DIExpression()) #18, !dbg !3268
  %4 = call i32 @__lxstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), %struct.stat* nonnull %2) #18, !dbg !3271
  %5 = icmp eq i32 %4, 0, !dbg !3272
  br i1 %5, label %6, label %11, !dbg !3273

6:                                                ; preds = %1
  %7 = bitcast %struct.stat* %2 to <2 x i64>*, !dbg !3274
  %8 = load <2 x i64>, <2 x i64>* %7, align 16, !dbg !3274, !tbaa !1546
  %9 = shufflevector <2 x i64> %8, <2 x i64> undef, <2 x i32> <i32 1, i32 0>, !dbg !3274
  %10 = bitcast %struct.timespec* %0 to <2 x i64>*, !dbg !3275
  store <2 x i64> %9, <2 x i64>* %10, align 8, !dbg !3275, !tbaa !1546
  br label %11, !dbg !3276

11:                                               ; preds = %1, %6
  %12 = phi %struct.timespec* [ %0, %6 ], [ null, %1 ], !dbg !3258
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #18, !dbg !3277
  ret %struct.timespec* %12, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3278 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3286, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %2, metadata !3288, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %3, metadata !3289, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8** %4, metadata !3290, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %5, metadata !3291, metadata !DIExpression()), !dbg !3292
  %7 = icmp eq i8* %1, null, !dbg !3293
  br i1 %7, label %10, label %8, !dbg !3295

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3296
  br label %12, !dbg !3296

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3297
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.91, i64 0, i64 0), i32 5) #18, !dbg !3298
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3298
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.92, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3299
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.93, i64 0, i64 0), i32 5) #18, !dbg !3300
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.94, i64 0, i64 0)) #18, !dbg !3300
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.92, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3301
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
  ], !dbg !3302

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.95, i64 0, i64 0), i32 5) #18, !dbg !3303
  %21 = load i8*, i8** %4, align 8, !dbg !3303, !tbaa !1131
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3303
  br label %147, !dbg !3305

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.96, i64 0, i64 0), i32 5) #18, !dbg !3306
  %25 = load i8*, i8** %4, align 8, !dbg !3306, !tbaa !1131
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3306
  %27 = load i8*, i8** %26, align 8, !dbg !3306, !tbaa !1131
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3306
  br label %147, !dbg !3307

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.97, i64 0, i64 0), i32 5) #18, !dbg !3308
  %31 = load i8*, i8** %4, align 8, !dbg !3308, !tbaa !1131
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3308
  %33 = load i8*, i8** %32, align 8, !dbg !3308, !tbaa !1131
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3308
  %35 = load i8*, i8** %34, align 8, !dbg !3308, !tbaa !1131
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3308
  br label %147, !dbg !3309

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.98, i64 0, i64 0), i32 5) #18, !dbg !3310
  %39 = load i8*, i8** %4, align 8, !dbg !3310, !tbaa !1131
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3310
  %41 = load i8*, i8** %40, align 8, !dbg !3310, !tbaa !1131
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3310
  %43 = load i8*, i8** %42, align 8, !dbg !3310, !tbaa !1131
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3310
  %45 = load i8*, i8** %44, align 8, !dbg !3310, !tbaa !1131
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3310
  br label %147, !dbg !3311

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.99, i64 0, i64 0), i32 5) #18, !dbg !3312
  %49 = load i8*, i8** %4, align 8, !dbg !3312, !tbaa !1131
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3312
  %51 = load i8*, i8** %50, align 8, !dbg !3312, !tbaa !1131
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3312
  %53 = load i8*, i8** %52, align 8, !dbg !3312, !tbaa !1131
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3312
  %55 = load i8*, i8** %54, align 8, !dbg !3312, !tbaa !1131
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3312
  %57 = load i8*, i8** %56, align 8, !dbg !3312, !tbaa !1131
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3312
  br label %147, !dbg !3313

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.100, i64 0, i64 0), i32 5) #18, !dbg !3314
  %61 = load i8*, i8** %4, align 8, !dbg !3314, !tbaa !1131
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3314
  %63 = load i8*, i8** %62, align 8, !dbg !3314, !tbaa !1131
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3314
  %65 = load i8*, i8** %64, align 8, !dbg !3314, !tbaa !1131
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3314
  %67 = load i8*, i8** %66, align 8, !dbg !3314, !tbaa !1131
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3314
  %69 = load i8*, i8** %68, align 8, !dbg !3314, !tbaa !1131
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3314
  %71 = load i8*, i8** %70, align 8, !dbg !3314, !tbaa !1131
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3314
  br label %147, !dbg !3315

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.101, i64 0, i64 0), i32 5) #18, !dbg !3316
  %75 = load i8*, i8** %4, align 8, !dbg !3316, !tbaa !1131
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3316
  %77 = load i8*, i8** %76, align 8, !dbg !3316, !tbaa !1131
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3316
  %79 = load i8*, i8** %78, align 8, !dbg !3316, !tbaa !1131
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3316
  %81 = load i8*, i8** %80, align 8, !dbg !3316, !tbaa !1131
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3316
  %83 = load i8*, i8** %82, align 8, !dbg !3316, !tbaa !1131
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3316
  %85 = load i8*, i8** %84, align 8, !dbg !3316, !tbaa !1131
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3316
  %87 = load i8*, i8** %86, align 8, !dbg !3316, !tbaa !1131
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3316
  br label %147, !dbg !3317

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.102, i64 0, i64 0), i32 5) #18, !dbg !3318
  %91 = load i8*, i8** %4, align 8, !dbg !3318, !tbaa !1131
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3318
  %93 = load i8*, i8** %92, align 8, !dbg !3318, !tbaa !1131
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3318
  %95 = load i8*, i8** %94, align 8, !dbg !3318, !tbaa !1131
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3318
  %97 = load i8*, i8** %96, align 8, !dbg !3318, !tbaa !1131
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3318
  %99 = load i8*, i8** %98, align 8, !dbg !3318, !tbaa !1131
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3318
  %101 = load i8*, i8** %100, align 8, !dbg !3318, !tbaa !1131
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3318
  %103 = load i8*, i8** %102, align 8, !dbg !3318, !tbaa !1131
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3318
  %105 = load i8*, i8** %104, align 8, !dbg !3318, !tbaa !1131
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3318
  br label %147, !dbg !3319

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #18, !dbg !3320
  %109 = load i8*, i8** %4, align 8, !dbg !3320, !tbaa !1131
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3320
  %111 = load i8*, i8** %110, align 8, !dbg !3320, !tbaa !1131
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3320
  %113 = load i8*, i8** %112, align 8, !dbg !3320, !tbaa !1131
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3320
  %115 = load i8*, i8** %114, align 8, !dbg !3320, !tbaa !1131
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3320
  %117 = load i8*, i8** %116, align 8, !dbg !3320, !tbaa !1131
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3320
  %119 = load i8*, i8** %118, align 8, !dbg !3320, !tbaa !1131
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3320
  %121 = load i8*, i8** %120, align 8, !dbg !3320, !tbaa !1131
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3320
  %123 = load i8*, i8** %122, align 8, !dbg !3320, !tbaa !1131
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3320
  %125 = load i8*, i8** %124, align 8, !dbg !3320, !tbaa !1131
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3320
  br label %147, !dbg !3321

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.104, i64 0, i64 0), i32 5) #18, !dbg !3322
  %129 = load i8*, i8** %4, align 8, !dbg !3322, !tbaa !1131
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3322
  %131 = load i8*, i8** %130, align 8, !dbg !3322, !tbaa !1131
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3322
  %133 = load i8*, i8** %132, align 8, !dbg !3322, !tbaa !1131
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3322
  %135 = load i8*, i8** %134, align 8, !dbg !3322, !tbaa !1131
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3322
  %137 = load i8*, i8** %136, align 8, !dbg !3322, !tbaa !1131
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3322
  %139 = load i8*, i8** %138, align 8, !dbg !3322, !tbaa !1131
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3322
  %141 = load i8*, i8** %140, align 8, !dbg !3322, !tbaa !1131
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3322
  %143 = load i8*, i8** %142, align 8, !dbg !3322, !tbaa !1131
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3322
  %145 = load i8*, i8** %144, align 8, !dbg !3322, !tbaa !1131
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3322
  br label %147, !dbg !3323

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3324
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3325 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3329, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8* %1, metadata !3330, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8* %2, metadata !3331, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8* %3, metadata !3332, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8** %4, metadata !3333, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 0, metadata !3334, metadata !DIExpression()), !dbg !3335
  br label %6, !dbg !3336

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3338
  call void @llvm.dbg.value(metadata i64 %7, metadata !3334, metadata !DIExpression()), !dbg !3335
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3339
  %9 = load i8*, i8** %8, align 8, !dbg !3339, !tbaa !1131
  %10 = icmp eq i8* %9, null, !dbg !3341
  %11 = add i64 %7, 1, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %11, metadata !3334, metadata !DIExpression()), !dbg !3335
  br i1 %10, label %12, label %6, !dbg !3341, !llvm.loop !3343

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %7, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %7, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %7, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %7, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %7, metadata !3334, metadata !DIExpression()), !dbg !3335
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3345
  ret void, !dbg !3346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3347 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3358, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %1, metadata !3359, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %2, metadata !3360, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %3, metadata !3361, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3362, metadata !DIExpression()), !dbg !3366
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3367
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3367
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3364, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 0, metadata !3363, metadata !DIExpression()), !dbg !3366
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3369
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3369
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3369
  %11 = load i32, i32* %8, align 8, !dbg !3372
  %12 = icmp ult i32 %11, 41, !dbg !3372
  br i1 %12, label %13, label %18, !dbg !3372

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3372
  %15 = zext i32 %11 to i64, !dbg !3372
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3372
  %17 = add nuw nsw i32 %11, 8, !dbg !3372
  store i32 %17, i32* %8, align 8, !dbg !3372
  br label %21, !dbg !3372

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3372
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3372
  store i8* %20, i8** %9, align 8, !dbg !3372
  br label %21, !dbg !3372

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3372
  %25 = load i8*, i8** %24, align 8, !dbg !3372
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3373
  store i8* %25, i8** %26, align 16, !dbg !3374, !tbaa !1131
  %27 = icmp eq i8* %25, null, !dbg !3375
  br i1 %27, label %30, label %28, !dbg !3376

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3363, metadata !DIExpression()), !dbg !3366
  %29 = icmp ult i32 %22, 41, !dbg !3372
  br i1 %29, label %35, label %32, !dbg !3372

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3377
  call void @llvm.dbg.value(metadata i64 %31, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64 %31, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3378
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3379
  ret void, !dbg !3379

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3372
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3372
  store i8* %34, i8** %9, align 8, !dbg !3372
  br label %40, !dbg !3372

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3372
  %37 = zext i32 %22 to i64, !dbg !3372
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3372
  %39 = add nuw nsw i32 %22, 8, !dbg !3372
  store i32 %39, i32* %8, align 8, !dbg !3372
  br label %40, !dbg !3372

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3372
  %44 = load i8*, i8** %43, align 8, !dbg !3372
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3373
  store i8* %44, i8** %45, align 8, !dbg !3374, !tbaa !1131
  %46 = icmp eq i8* %44, null, !dbg !3375
  br i1 %46, label %30, label %47, !dbg !3376

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3363, metadata !DIExpression()), !dbg !3366
  %48 = icmp ult i32 %41, 41, !dbg !3372
  br i1 %48, label %52, label %49, !dbg !3372

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3372
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3372
  store i8* %51, i8** %9, align 8, !dbg !3372
  br label %57, !dbg !3372

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3372
  %54 = zext i32 %41 to i64, !dbg !3372
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3372
  %56 = add nuw nsw i32 %41, 8, !dbg !3372
  store i32 %56, i32* %8, align 8, !dbg !3372
  br label %57, !dbg !3372

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3372
  %61 = load i8*, i8** %60, align 8, !dbg !3372
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3373
  store i8* %61, i8** %62, align 16, !dbg !3374, !tbaa !1131
  %63 = icmp eq i8* %61, null, !dbg !3375
  br i1 %63, label %30, label %64, !dbg !3376

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3363, metadata !DIExpression()), !dbg !3366
  %65 = icmp ult i32 %58, 41, !dbg !3372
  br i1 %65, label %69, label %66, !dbg !3372

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3372
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3372
  store i8* %68, i8** %9, align 8, !dbg !3372
  br label %74, !dbg !3372

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3372
  %71 = zext i32 %58 to i64, !dbg !3372
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3372
  %73 = add nuw nsw i32 %58, 8, !dbg !3372
  store i32 %73, i32* %8, align 8, !dbg !3372
  br label %74, !dbg !3372

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3372
  %78 = load i8*, i8** %77, align 8, !dbg !3372
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3373
  store i8* %78, i8** %79, align 8, !dbg !3374, !tbaa !1131
  %80 = icmp eq i8* %78, null, !dbg !3375
  br i1 %80, label %30, label %81, !dbg !3376

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3363, metadata !DIExpression()), !dbg !3366
  %82 = icmp ult i32 %75, 41, !dbg !3372
  br i1 %82, label %86, label %83, !dbg !3372

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3372
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3372
  store i8* %85, i8** %9, align 8, !dbg !3372
  br label %91, !dbg !3372

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3372
  %88 = zext i32 %75 to i64, !dbg !3372
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3372
  %90 = add nuw nsw i32 %75, 8, !dbg !3372
  store i32 %90, i32* %8, align 8, !dbg !3372
  br label %91, !dbg !3372

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3372
  %95 = load i8*, i8** %94, align 8, !dbg !3372
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3373
  store i8* %95, i8** %96, align 16, !dbg !3374, !tbaa !1131
  %97 = icmp eq i8* %95, null, !dbg !3375
  br i1 %97, label %30, label %98, !dbg !3376

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3363, metadata !DIExpression()), !dbg !3366
  %99 = icmp ult i32 %92, 41, !dbg !3372
  br i1 %99, label %103, label %100, !dbg !3372

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3372
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3372
  store i8* %102, i8** %9, align 8, !dbg !3372
  br label %108, !dbg !3372

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3372
  %105 = zext i32 %92 to i64, !dbg !3372
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3372
  %107 = add nuw nsw i32 %92, 8, !dbg !3372
  store i32 %107, i32* %8, align 8, !dbg !3372
  br label %108, !dbg !3372

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3372
  %111 = load i8*, i8** %110, align 8, !dbg !3372
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3373
  store i8* %111, i8** %112, align 8, !dbg !3374, !tbaa !1131
  %113 = icmp eq i8* %111, null, !dbg !3375
  br i1 %113, label %30, label %114, !dbg !3376

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3363, metadata !DIExpression()), !dbg !3366
  %115 = load i8*, i8** %9, align 8, !dbg !3372
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3372
  store i8* %116, i8** %9, align 8, !dbg !3372
  %117 = bitcast i8* %115 to i8**, !dbg !3372
  %118 = load i8*, i8** %117, align 8, !dbg !3372
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3373
  store i8* %118, i8** %119, align 16, !dbg !3374, !tbaa !1131
  %120 = icmp eq i8* %118, null, !dbg !3375
  br i1 %120, label %30, label %121, !dbg !3376

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3363, metadata !DIExpression()), !dbg !3366
  %122 = load i8*, i8** %9, align 8, !dbg !3372
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3372
  store i8* %123, i8** %9, align 8, !dbg !3372
  %124 = bitcast i8* %122 to i8**, !dbg !3372
  %125 = load i8*, i8** %124, align 8, !dbg !3372
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3373
  store i8* %125, i8** %126, align 8, !dbg !3374, !tbaa !1131
  %127 = icmp eq i8* %125, null, !dbg !3375
  br i1 %127, label %30, label %128, !dbg !3376

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3363, metadata !DIExpression()), !dbg !3366
  %129 = load i8*, i8** %9, align 8, !dbg !3372
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3372
  store i8* %130, i8** %9, align 8, !dbg !3372
  %131 = bitcast i8* %129 to i8**, !dbg !3372
  %132 = load i8*, i8** %131, align 8, !dbg !3372
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3373
  store i8* %132, i8** %133, align 16, !dbg !3374, !tbaa !1131
  %134 = icmp eq i8* %132, null, !dbg !3375
  br i1 %134, label %30, label %135, !dbg !3376

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3363, metadata !DIExpression()), !dbg !3366
  %136 = load i8*, i8** %9, align 8, !dbg !3372
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3372
  store i8* %137, i8** %9, align 8, !dbg !3372
  %138 = bitcast i8* %136 to i8**, !dbg !3372
  %139 = load i8*, i8** %138, align 8, !dbg !3372
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3373
  store i8* %139, i8** %140, align 8, !dbg !3374, !tbaa !1131
  %141 = icmp eq i8* %139, null, !dbg !3375
  %142 = select i1 %141, i64 9, i64 10, !dbg !3376
  br label %30, !dbg !3376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3380 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3384, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8* %1, metadata !3385, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8* %2, metadata !3386, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8* %3, metadata !3387, metadata !DIExpression()), !dbg !3394
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3395
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3395
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3388, metadata !DIExpression()), !dbg !3396
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3397
  call void @llvm.va_start(i8* nonnull %6), !dbg !3397
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3398
  call void @llvm.va_end(i8* nonnull %6), !dbg !3399
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3400
  ret void, !dbg !3400
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3401 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3402, !tbaa !1131
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.92, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3402
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.107, i64 0, i64 0), i32 5) #18, !dbg !3403
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.108, i64 0, i64 0)) #18, !dbg !3403
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.109, i64 0, i64 0), i32 5) #18, !dbg !3404
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.110, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.111, i64 0, i64 0)) #18, !dbg !3404
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.112, i64 0, i64 0), i32 5) #18, !dbg !3405
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.113, i64 0, i64 0)) #18, !dbg !3405
  ret void, !dbg !3406
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3407 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3409, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64 %1, metadata !3410, metadata !DIExpression()), !dbg !3411
  %3 = udiv i64 9223372036854775807, %1, !dbg !3412
  %4 = icmp ult i64 %3, %0, !dbg !3412
  br i1 %4, label %5, label %6, !dbg !3414

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3415
  unreachable, !dbg !3415

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %7, metadata !3417, metadata !DIExpression()) #18, !dbg !3423
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %8, metadata !3422, metadata !DIExpression()) #18, !dbg !3423
  %9 = icmp eq i8* %8, null, !dbg !3426
  %10 = icmp ne i64 %7, 0, !dbg !3428
  %11 = and i1 %10, %9, !dbg !3429
  br i1 %11, label %12, label %13, !dbg !3429

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3430
  unreachable, !dbg !3430

13:                                               ; preds = %6
  ret i8* %8, !dbg !3431
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3418 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3417, metadata !DIExpression()), !dbg !3432
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %2, metadata !3422, metadata !DIExpression()), !dbg !3432
  %3 = icmp eq i8* %2, null, !dbg !3434
  %4 = icmp ne i64 %0, 0, !dbg !3435
  %5 = and i1 %4, %3, !dbg !3436
  br i1 %5, label %6, label %7, !dbg !3436

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3437
  unreachable, !dbg !3437

7:                                                ; preds = %1
  ret i8* %2, !dbg !3438
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3443, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3444, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %2, metadata !3445, metadata !DIExpression()), !dbg !3446
  %4 = udiv i64 9223372036854775807, %2, !dbg !3447
  %5 = icmp ult i64 %4, %1, !dbg !3447
  br i1 %5, label %6, label %7, !dbg !3449

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3450
  unreachable, !dbg !3450

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %0, metadata !3452, metadata !DIExpression()) #18, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %8, metadata !3457, metadata !DIExpression()) #18, !dbg !3458
  %9 = icmp eq i64 %8, 0, !dbg !3460
  %10 = icmp ne i8* %0, null, !dbg !3462
  %11 = and i1 %10, %9, !dbg !3463
  br i1 %11, label %12, label %13, !dbg !3463

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3464
  br label %19, !dbg !3466

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %14, metadata !3452, metadata !DIExpression()) #18, !dbg !3458
  %15 = icmp eq i8* %14, null, !dbg !3468
  %16 = icmp ne i64 %8, 0, !dbg !3470
  %17 = and i1 %16, %15, !dbg !3471
  br i1 %17, label %18, label %19, !dbg !3471

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3472
  unreachable, !dbg !3472

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3458
  ret i8* %20, !dbg !3473
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3453 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3452, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %1, metadata !3457, metadata !DIExpression()), !dbg !3474
  %3 = icmp eq i64 %1, 0, !dbg !3475
  %4 = icmp ne i8* %0, null, !dbg !3476
  %5 = and i1 %4, %3, !dbg !3477
  br i1 %5, label %6, label %7, !dbg !3477

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3478
  br label %13, !dbg !3479

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %8, metadata !3452, metadata !DIExpression()), !dbg !3474
  %9 = icmp eq i8* %8, null, !dbg !3481
  %10 = icmp ne i64 %1, 0, !dbg !3482
  %11 = and i1 %10, %9, !dbg !3483
  br i1 %11, label %12, label %13, !dbg !3483

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3484
  unreachable, !dbg !3484

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3474
  ret i8* %14, !dbg !3485
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !488, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64* %1, metadata !489, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %2, metadata !490, metadata !DIExpression()), !dbg !3486
  %4 = load i64, i64* %1, align 8, !dbg !3487, !tbaa !1546
  call void @llvm.dbg.value(metadata i64 %4, metadata !491, metadata !DIExpression()), !dbg !3486
  %5 = icmp eq i8* %0, null, !dbg !3488
  br i1 %5, label %6, label %20, !dbg !3490

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3491
  br i1 %7, label %8, label %13, !dbg !3494

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3495
  call void @llvm.dbg.value(metadata i64 %9, metadata !491, metadata !DIExpression()), !dbg !3486
  %10 = icmp ugt i64 %2, 128, !dbg !3497
  %11 = zext i1 %10 to i64, !dbg !3497
  %12 = add nuw nsw i64 %9, %11, !dbg !3498
  call void @llvm.dbg.value(metadata i64 %12, metadata !491, metadata !DIExpression()), !dbg !3486
  br label %13, !dbg !3499

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3486
  call void @llvm.dbg.value(metadata i64 %14, metadata !491, metadata !DIExpression()), !dbg !3486
  %15 = udiv i64 9223372036854775807, %2, !dbg !3500
  %16 = icmp ult i64 %15, %14, !dbg !3500
  br i1 %16, label %19, label %17, !dbg !3502

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !491, metadata !DIExpression()), !dbg !3486
  store i64 %14, i64* %1, align 8, !dbg !3503, !tbaa !1546
  %18 = mul i64 %14, %2, !dbg !3504
  call void @llvm.dbg.value(metadata i8* %0, metadata !3452, metadata !DIExpression()) #18, !dbg !3505
  call void @llvm.dbg.value(metadata i64 %28, metadata !3457, metadata !DIExpression()) #18, !dbg !3505
  br label %31, !dbg !3507

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3508
  unreachable, !dbg !3508

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3509
  %22 = icmp ugt i64 %21, %4, !dbg !3512
  br i1 %22, label %24, label %23, !dbg !3513

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3514
  unreachable, !dbg !3514

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3515
  %26 = add nuw i64 %4, 1, !dbg !3516
  %27 = add i64 %26, %25, !dbg !3517
  call void @llvm.dbg.value(metadata i64 %27, metadata !491, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %27, metadata !491, metadata !DIExpression()), !dbg !3486
  store i64 %27, i64* %1, align 8, !dbg !3503, !tbaa !1546
  %28 = mul i64 %27, %2, !dbg !3504
  call void @llvm.dbg.value(metadata i8* %0, metadata !3452, metadata !DIExpression()) #18, !dbg !3505
  call void @llvm.dbg.value(metadata i64 %28, metadata !3457, metadata !DIExpression()) #18, !dbg !3505
  %29 = icmp eq i64 %28, 0, !dbg !3518
  br i1 %29, label %30, label %31, !dbg !3507

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3519
  br label %38, !dbg !3520

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3521
  call void @llvm.dbg.value(metadata i8* %33, metadata !3452, metadata !DIExpression()) #18, !dbg !3505
  %34 = icmp eq i8* %33, null, !dbg !3522
  %35 = icmp ne i64 %32, 0, !dbg !3523
  %36 = and i1 %35, %34, !dbg !3524
  br i1 %36, label %37, label %38, !dbg !3524

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3525
  unreachable, !dbg !3525

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3505
  ret i8* %39, !dbg !3526
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3527 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3529, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %0, metadata !3417, metadata !DIExpression()) #18, !dbg !3531
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3533
  call void @llvm.dbg.value(metadata i8* %2, metadata !3422, metadata !DIExpression()) #18, !dbg !3531
  %3 = icmp eq i8* %2, null, !dbg !3534
  %4 = icmp ne i64 %0, 0, !dbg !3535
  %5 = and i1 %4, %3, !dbg !3536
  br i1 %5, label %6, label %7, !dbg !3536

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3537
  unreachable, !dbg !3537

7:                                                ; preds = %1
  ret i8* %2, !dbg !3538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3539 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3543, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64* %1, metadata !3544, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8* %0, metadata !488, metadata !DIExpression()) #18, !dbg !3546
  call void @llvm.dbg.value(metadata i64* %1, metadata !489, metadata !DIExpression()) #18, !dbg !3546
  call void @llvm.dbg.value(metadata i64 1, metadata !490, metadata !DIExpression()) #18, !dbg !3546
  %3 = load i64, i64* %1, align 8, !dbg !3548, !tbaa !1546
  call void @llvm.dbg.value(metadata i64 %3, metadata !491, metadata !DIExpression()) #18, !dbg !3546
  %4 = icmp eq i8* %0, null, !dbg !3549
  br i1 %4, label %5, label %12, !dbg !3550

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3551
  br i1 %6, label %9, label %7, !dbg !3552

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !491, metadata !DIExpression()) #18, !dbg !3546
  %8 = icmp slt i64 %3, 0, !dbg !3553
  br i1 %8, label %11, label %9, !dbg !3554

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !491, metadata !DIExpression()) #18, !dbg !3546
  store i64 %10, i64* %1, align 8, !dbg !3555, !tbaa !1546
  call void @llvm.dbg.value(metadata i8* %0, metadata !3452, metadata !DIExpression()) #18, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %18, metadata !3457, metadata !DIExpression()) #18, !dbg !3556
  br label %21, !dbg !3558

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3559
  unreachable, !dbg !3559

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3560
  br i1 %13, label %15, label %14, !dbg !3561

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3562
  unreachable, !dbg !3562

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3563
  %17 = add nuw nsw i64 %3, 1, !dbg !3564
  %18 = add nuw nsw i64 %17, %16, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %18, metadata !491, metadata !DIExpression()) #18, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %18, metadata !491, metadata !DIExpression()) #18, !dbg !3546
  store i64 %18, i64* %1, align 8, !dbg !3555, !tbaa !1546
  call void @llvm.dbg.value(metadata i8* %0, metadata !3452, metadata !DIExpression()) #18, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %18, metadata !3457, metadata !DIExpression()) #18, !dbg !3556
  %19 = icmp eq i64 %18, 0, !dbg !3566
  br i1 %19, label %20, label %21, !dbg !3558

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3567
  br label %28, !dbg !3568

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3569
  call void @llvm.dbg.value(metadata i8* %23, metadata !3452, metadata !DIExpression()) #18, !dbg !3556
  %24 = icmp eq i8* %23, null, !dbg !3570
  %25 = icmp ne i64 %22, 0, !dbg !3571
  %26 = and i1 %25, %24, !dbg !3572
  br i1 %26, label %27, label %28, !dbg !3572

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3573
  unreachable, !dbg !3573

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3556
  ret i8* %29, !dbg !3574
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3575 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3577, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 %0, metadata !3579, metadata !DIExpression()) #18, !dbg !3584
  call void @llvm.dbg.value(metadata i64 1, metadata !3582, metadata !DIExpression()) #18, !dbg !3584
  %2 = icmp slt i64 %0, 0, !dbg !3586
  br i1 %2, label %6, label %3, !dbg !3588

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %4, metadata !3583, metadata !DIExpression()) #18, !dbg !3584
  %5 = icmp eq i8* %4, null, !dbg !3590
  br i1 %5, label %6, label %7, !dbg !3591

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3592
  unreachable, !dbg !3592

7:                                                ; preds = %3
  ret i8* %4, !dbg !3593
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3580 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3579, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %1, metadata !3582, metadata !DIExpression()), !dbg !3594
  %3 = udiv i64 9223372036854775807, %1, !dbg !3595
  %4 = icmp ult i64 %3, %0, !dbg !3595
  br i1 %4, label %8, label %5, !dbg !3596

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %6, metadata !3583, metadata !DIExpression()), !dbg !3594
  %7 = icmp eq i8* %6, null, !dbg !3598
  br i1 %7, label %8, label %9, !dbg !3599

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3600
  unreachable, !dbg !3600

9:                                                ; preds = %5
  ret i8* %6, !dbg !3601
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3602 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %1, metadata !3607, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %1, metadata !3417, metadata !DIExpression()) #18, !dbg !3609
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %3, metadata !3422, metadata !DIExpression()) #18, !dbg !3609
  %4 = icmp eq i8* %3, null, !dbg !3612
  %5 = icmp ne i64 %1, 0, !dbg !3613
  %6 = and i1 %5, %4, !dbg !3614
  br i1 %6, label %7, label %8, !dbg !3614

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3615
  unreachable, !dbg !3615

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3616, metadata !DIExpression()) #18, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #18, !dbg !3621
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()) #18, !dbg !3621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3623
  ret i8* %3, !dbg !3624
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3625 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3627, metadata !DIExpression()), !dbg !3628
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3629
  %3 = add i64 %2, 1, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %0, metadata !3606, metadata !DIExpression()) #18, !dbg !3631
  call void @llvm.dbg.value(metadata i64 %3, metadata !3607, metadata !DIExpression()) #18, !dbg !3631
  call void @llvm.dbg.value(metadata i64 %3, metadata !3417, metadata !DIExpression()) #18, !dbg !3633
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %4, metadata !3422, metadata !DIExpression()) #18, !dbg !3633
  %5 = icmp eq i8* %4, null, !dbg !3636
  %6 = icmp ne i64 %3, 0, !dbg !3637
  %7 = and i1 %6, %5, !dbg !3638
  br i1 %7, label %8, label %9, !dbg !3638

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3639
  unreachable, !dbg !3639

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3616, metadata !DIExpression()) #18, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #18, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %3, metadata !3620, metadata !DIExpression()) #18, !dbg !3640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3642
  ret i8* %4, !dbg !3643
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3644 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3645, !tbaa !1301
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.124, i64 0, i64 0), i32 5) #18, !dbg !3646
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i64 0, i64 0), i8* %2) #18, !dbg !3647
  tail call void @abort() #22, !dbg !3648
  unreachable, !dbg !3648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xgetcwd() local_unnamed_addr #8 !dbg !3649 {
  %1 = tail call i8* @getcwd(i8* null, i64 0) #18, !dbg !3652
  call void @llvm.dbg.value(metadata i8* %1, metadata !3651, metadata !DIExpression()), !dbg !3653
  %2 = icmp eq i8* %1, null, !dbg !3654
  br i1 %2, label %3, label %8, !dbg !3656

3:                                                ; preds = %0
  %4 = tail call i32* @__errno_location() #24, !dbg !3657
  %5 = load i32, i32* %4, align 4, !dbg !3657, !tbaa !1301
  %6 = icmp eq i32 %5, 12, !dbg !3658
  br i1 %6, label %7, label %8, !dbg !3659

7:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3660
  unreachable, !dbg !3660

8:                                                ; preds = %0, %3
  ret i8* %1, !dbg !3661
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3662 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3664, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %1, metadata !3665, metadata !DIExpression()), !dbg !3670
  %3 = icmp eq i64 %0, 0, !dbg !3671
  %4 = icmp eq i64 %1, 0, !dbg !3672
  %5 = or i1 %3, %4, !dbg !3673
  br i1 %5, label %11, label %6, !dbg !3673

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3667, metadata !DIExpression()), !dbg !3674
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3675
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3675
  br i1 %8, label %9, label %11, !dbg !3677

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3678
  store i32 12, i32* %10, align 4, !dbg !3680, !tbaa !1301
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3664, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %12, metadata !3665, metadata !DIExpression()), !dbg !3670
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3681
  call void @llvm.dbg.value(metadata i8* %14, metadata !3666, metadata !DIExpression()), !dbg !3670
  br label %15, !dbg !3682

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3670
  ret i8* %16, !dbg !3683
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3684 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3692, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8* %1, metadata !3693, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %2, metadata !3694, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3695, metadata !DIExpression()), !dbg !3701
  %6 = bitcast i32* %5 to i8*, !dbg !3702
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3702
  %7 = icmp eq i32* %0, null, !dbg !3703
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3705
  call void @llvm.dbg.value(metadata i32* %8, metadata !3692, metadata !DIExpression()), !dbg !3701
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %9, metadata !3696, metadata !DIExpression()), !dbg !3701
  %10 = icmp ugt i64 %9, -3, !dbg !3707
  %11 = icmp ne i64 %2, 0, !dbg !3708
  %12 = and i1 %11, %10, !dbg !3709
  br i1 %12, label %13, label %18, !dbg !3709

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3710
  br i1 %14, label %18, label %15, !dbg !3711

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3712, !tbaa !1317
  call void @llvm.dbg.value(metadata i8 %16, metadata !3698, metadata !DIExpression()), !dbg !3713
  %17 = zext i8 %16 to i32, !dbg !3714
  store i32 %17, i32* %8, align 4, !dbg !3715, !tbaa !1301
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3701
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3716
  ret i64 %19, !dbg !3716
}

; Function Attrs: nounwind
declare !dbg !512 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3717 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3723, metadata !DIExpression()), !dbg !3728
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3729
  call void @llvm.dbg.value(metadata i1 undef, metadata !3724, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3730, metadata !DIExpression()), !dbg !3734
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3736
  %4 = load i32, i32* %3, align 8, !dbg !3736, !tbaa !3737
  %5 = and i32 %4, 32, !dbg !3736
  %6 = icmp eq i32 %5, 0, !dbg !3739
  call void @llvm.dbg.value(metadata i1 %6, metadata !3726, metadata !DIExpression()), !dbg !3728
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3740
  %8 = icmp ne i32 %7, 0, !dbg !3741
  call void @llvm.dbg.value(metadata i1 %8, metadata !3727, metadata !DIExpression()), !dbg !3728
  br i1 %6, label %9, label %19, !dbg !3742

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3744
  call void @llvm.dbg.value(metadata i1 %10, metadata !3724, metadata !DIExpression()), !dbg !3728
  %11 = xor i1 %8, true, !dbg !3745
  %12 = or i1 %10, %11, !dbg !3745
  %13 = sext i1 %8 to i32, !dbg !3745
  br i1 %12, label %22, label %14, !dbg !3745

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3746
  %16 = load i32, i32* %15, align 4, !dbg !3746, !tbaa !1301
  %17 = icmp ne i32 %16, 9, !dbg !3747
  %18 = sext i1 %17 to i32, !dbg !3748
  br label %22, !dbg !3748

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3749

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3751
  store i32 0, i32* %21, align 4, !dbg !3753, !tbaa !1301
  br label %22, !dbg !3751

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3728
  ret i32 %23, !dbg !3754
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3755 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()), !dbg !3762
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3763
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3763
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3758, metadata !DIExpression()), !dbg !3764
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3765
  %5 = icmp eq i32 %4, 0, !dbg !3765
  br i1 %5, label %6, label %13, !dbg !3767

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3768
  %8 = load i16, i16* %7, align 16, !dbg !3768
  %9 = icmp eq i16 %8, 67, !dbg !3768
  br i1 %9, label %13, label %10, !dbg !3769

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0), i64 6), !dbg !3770
  %12 = icmp ne i32 %11, 0, !dbg !3771
  br label %13, !dbg !3769

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3762
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3772
  ret i1 %14, !dbg !3772
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3773 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3776
  call void @llvm.dbg.value(metadata i8* %1, metadata !3775, metadata !DIExpression()), !dbg !3777
  %2 = icmp eq i8* %1, null, !dbg !3778
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %1, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %3, metadata !3775, metadata !DIExpression()), !dbg !3777
  %4 = load i8, i8* %3, align 1, !dbg !3781, !tbaa !1317
  %5 = icmp eq i8 %4, 0, !dbg !3785
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0), i8* %3, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %6, metadata !3775, metadata !DIExpression()), !dbg !3777
  ret i8* %6, !dbg !3787
}

; Function Attrs: nounwind
declare !dbg !964 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3788 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3792, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i8* %1, metadata !3793, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %2, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %0, metadata !3796, metadata !DIExpression()) #18, !dbg !3805
  call void @llvm.dbg.value(metadata i8* %1, metadata !3799, metadata !DIExpression()) #18, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %2, metadata !3800, metadata !DIExpression()) #18, !dbg !3805
  call void @llvm.dbg.value(metadata i32 %0, metadata !3807, metadata !DIExpression()) #18, !dbg !3813
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3815
  call void @llvm.dbg.value(metadata i8* %4, metadata !3812, metadata !DIExpression()) #18, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %4, metadata !3801, metadata !DIExpression()) #18, !dbg !3805
  %5 = icmp eq i8* %4, null, !dbg !3816
  br i1 %5, label %6, label %9, !dbg !3817

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3818
  br i1 %7, label %19, label %8, !dbg !3821

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3822, !tbaa !1317
  br label %19, !dbg !3823

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %10, metadata !3802, metadata !DIExpression()) #18, !dbg !3825
  %11 = icmp ult i64 %10, %2, !dbg !3826
  br i1 %11, label %12, label %14, !dbg !3828

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3829
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()) #18, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %4, metadata !3834, metadata !DIExpression()) #18, !dbg !3836
  call void @llvm.dbg.value(metadata i64 %13, metadata !3835, metadata !DIExpression()) #18, !dbg !3836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3838
  br label %19, !dbg !3839

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3840
  br i1 %15, label %19, label %16, !dbg !3843

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3844
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()) #18, !dbg !3846
  call void @llvm.dbg.value(metadata i8* %4, metadata !3834, metadata !DIExpression()) #18, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %17, metadata !3835, metadata !DIExpression()) #18, !dbg !3846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3848
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3849
  store i8 0, i8* %18, align 1, !dbg !3850, !tbaa !1317
  br label %19, !dbg !3851

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3852
  ret i32 %20, !dbg !3853
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3854 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3856, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 %0, metadata !3807, metadata !DIExpression()) #18, !dbg !3858
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %2, metadata !3812, metadata !DIExpression()) #18, !dbg !3858
  ret i8* %2, !dbg !3861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3862 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3868, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 0, metadata !3871, metadata !DIExpression()), !dbg !3872
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3873
  call void @llvm.dbg.value(metadata i32 %2, metadata !3870, metadata !DIExpression()), !dbg !3872
  %3 = icmp slt i32 %2, 0, !dbg !3874
  br i1 %3, label %4, label %6, !dbg !3876

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3877
  br label %24, !dbg !3878

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3879
  %8 = icmp eq i32 %7, 0, !dbg !3879
  br i1 %8, label %13, label %9, !dbg !3881

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3882
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3883
  %12 = icmp eq i64 %11, -1, !dbg !3884
  br i1 %12, label %16, label %13, !dbg !3885

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3886
  %15 = icmp eq i32 %14, 0, !dbg !3886
  br i1 %15, label %16, label %18, !dbg !3887

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3869, metadata !DIExpression()), !dbg !3872
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3888
  call void @llvm.dbg.value(metadata i32 %21, metadata !3871, metadata !DIExpression()), !dbg !3872
  br label %24, !dbg !3889

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3890
  %20 = load i32, i32* %19, align 4, !dbg !3890, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 %20, metadata !3869, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %20, metadata !3869, metadata !DIExpression()), !dbg !3872
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3888
  call void @llvm.dbg.value(metadata i32 %21, metadata !3871, metadata !DIExpression()), !dbg !3872
  %22 = icmp eq i32 %20, 0, !dbg !3891
  br i1 %22, label %24, label %23, !dbg !3889

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3893, !tbaa !1301
  call void @llvm.dbg.value(metadata i32 -1, metadata !3871, metadata !DIExpression()), !dbg !3872
  br label %24, !dbg !3895

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3872
  ret i32 %25, !dbg !3896
}

; Function Attrs: nofree nounwind
declare !dbg !973 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1008 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1009 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3897 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3903, metadata !DIExpression()), !dbg !3904
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3905
  br i1 %2, label %6, label %3, !dbg !3907

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3908
  %5 = icmp eq i32 %4, 0, !dbg !3908
  br i1 %5, label %6, label %8, !dbg !3909

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3910
  br label %17, !dbg !3911

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3912, metadata !DIExpression()) #18, !dbg !3917
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3919
  %10 = load i32, i32* %9, align 8, !dbg !3919, !tbaa !3737
  %11 = and i32 %10, 256, !dbg !3921
  %12 = icmp eq i32 %11, 0, !dbg !3921
  br i1 %12, label %15, label %13, !dbg !3922

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3923
  br label %15, !dbg !3923

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3924
  br label %17, !dbg !3925

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3904
  ret i32 %18, !dbg !3926
}

; Function Attrs: nofree nounwind
declare !dbg !1016 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3927 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3934, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i64 %1, metadata !3935, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 %2, metadata !3936, metadata !DIExpression()), !dbg !3940
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3941
  %5 = load i8*, i8** %4, align 8, !dbg !3941, !tbaa !3942
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3943
  %7 = load i8*, i8** %6, align 8, !dbg !3943, !tbaa !3944
  %8 = icmp eq i8* %5, %7, !dbg !3945
  br i1 %8, label %9, label %28, !dbg !3946

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3947
  %11 = load i8*, i8** %10, align 8, !dbg !3947, !tbaa !3948
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3949
  %13 = load i8*, i8** %12, align 8, !dbg !3949, !tbaa !3950
  %14 = icmp eq i8* %11, %13, !dbg !3951
  br i1 %14, label %15, label %28, !dbg !3952

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3953
  %17 = load i8*, i8** %16, align 8, !dbg !3953, !tbaa !3954
  %18 = icmp eq i8* %17, null, !dbg !3955
  br i1 %18, label %19, label %28, !dbg !3956

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3957
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %21, metadata !3937, metadata !DIExpression()), !dbg !3959
  %22 = icmp eq i64 %21, -1, !dbg !3960
  br i1 %22, label %30, label %23, !dbg !3962

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3963
  %25 = load i32, i32* %24, align 8, !dbg !3964, !tbaa !3737
  %26 = and i32 %25, -17, !dbg !3964
  store i32 %26, i32* %24, align 8, !dbg !3964, !tbaa !3737
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3965
  store i64 %21, i64* %27, align 8, !dbg !3966, !tbaa !3967
  br label %30, !dbg !3968

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3969
  br label %30, !dbg !3970

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3940
  ret i32 %31, !dbg !3971
}

; Function Attrs: nofree nounwind
declare !dbg !1092 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!2, !215, !220, !266, !272, !313, !435, !437, !429, !479, !500, !503, !506, !509, !528, !567, !574, !967, !970, !1013, !1054}
!llvm.ident = !{!1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095, !1095}
!llvm.module.flags = !{!1096, !1097, !1098, !1099, !1100}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !210, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !209, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pwd.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 112, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23}
!23 = !DIEnumerator(name: "NOT_AN_INODE_NUMBER", value: 0, isUnsigned: true)
!24 = !{!25, !35, !96, !86, !100, !104, !108, !111, !112, !118, !29, !133, !137, !141, !144, !148, !151, !155, !170, !173, !179, !183, !186, !190, !191, !88, !192, !193}
!25 = !DISubprogram(name: "dcgettext", scope: !26, file: !26, line: 51, type: !27, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!26 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !31, !31, !33}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{}
!35 = !DISubprogram(name: "fputs_unlocked", scope: !36, file: !36, line: 662, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!36 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!37 = !DISubroutineType(types: !38)
!38 = !{!33, !31, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !42)
!41 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !58, !59, !60, !61, !65, !67, !69, !73, !76, !78, !81, !84, !85, !87, !91, !92}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !41, line: 51, baseType: !33, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !40, file: !41, line: 54, baseType: !29, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !40, file: !41, line: 55, baseType: !29, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !40, file: !41, line: 56, baseType: !29, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !40, file: !41, line: 57, baseType: !29, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !40, file: !41, line: 58, baseType: !29, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !40, file: !41, line: 59, baseType: !29, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !40, file: !41, line: 60, baseType: !29, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !40, file: !41, line: 61, baseType: !29, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !40, file: !41, line: 64, baseType: !29, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !40, file: !41, line: 65, baseType: !29, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !40, file: !41, line: 66, baseType: !29, size: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !40, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !41, line: 36, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !40, file: !41, line: 70, baseType: !39, size: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !40, file: !41, line: 72, baseType: !33, size: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !41, line: 73, baseType: !33, size: 32, offset: 928)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !40, file: !41, line: 74, baseType: !62, size: 64, offset: 960)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !63, line: 152, baseType: !64)
!63 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!64 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !40, file: !41, line: 77, baseType: !66, size: 16, offset: 1024)
!66 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !40, file: !41, line: 78, baseType: !68, size: 8, offset: 1040)
!68 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !40, file: !41, line: 79, baseType: !70, size: 8, offset: 1048)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !41, line: 81, baseType: !74, size: 64, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !41, line: 43, baseType: null)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !41, line: 89, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !63, line: 153, baseType: !64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !40, file: !41, line: 91, baseType: !79, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !41, line: 37, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !40, file: !41, line: 92, baseType: !82, size: 64, offset: 1280)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !41, line: 38, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !40, file: !41, line: 93, baseType: !39, size: 64, offset: 1344)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !40, file: !41, line: 94, baseType: !86, size: 64, offset: 1408)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !40, file: !41, line: 95, baseType: !88, size: 64, offset: 1472)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 46, baseType: !90)
!89 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!90 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !40, file: !41, line: 96, baseType: !33, size: 32, offset: 1536)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !40, file: !41, line: 98, baseType: !93, size: 160, offset: 1568)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = !DISubprogram(name: "getenv", scope: !97, file: !97, line: 634, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!97 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!98 = !DISubroutineType(types: !99)
!99 = !{!29, !31}
!100 = !DISubprogram(name: "set_program_name", scope: !101, file: !101, line: 37, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!101 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!102 = !DISubroutineType(types: !103)
!103 = !{null, !31}
!104 = !DISubprogram(name: "setlocale", scope: !105, file: !105, line: 122, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!105 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!106 = !DISubroutineType(types: !107)
!107 = !{!29, !33, !31}
!108 = !DISubprogram(name: "bindtextdomain", scope: !26, file: !26, line: 86, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!109 = !DISubroutineType(types: !110)
!110 = !{!29, !31, !31}
!111 = !DISubprogram(name: "textdomain", scope: !26, file: !26, line: 82, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!112 = !DISubprogram(name: "atexit", scope: !97, file: !97, line: 595, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!113 = !DISubroutineType(types: !114)
!114 = !{!33, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null}
!118 = !DISubprogram(name: "getopt_long", scope: !119, file: !119, line: 66, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!119 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!120 = !DISubroutineType(types: !121)
!121 = !{!33, !33, !122, !31, !124, !131}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !119, line: 50, size: 256, elements: !127)
!127 = !{!128, !129, !130, !132}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !119, line: 52, baseType: !31, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !126, file: !119, line: 55, baseType: !33, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !126, file: !119, line: 56, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !126, file: !119, line: 57, baseType: !33, size: 32, offset: 192)
!133 = !DISubprogram(name: "version_etc", scope: !134, file: !134, line: 69, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!134 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!135 = !DISubroutineType(types: !136)
!136 = !{null, !39, !31, !31, !31, null}
!137 = !DISubprogram(name: "error", scope: !138, file: !138, line: 52, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!138 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !DISubroutineType(types: !140)
!140 = !{null, !33, !33, !31, null}
!141 = !DISubprogram(name: "puts", scope: !36, file: !36, line: 632, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!142 = !DISubroutineType(types: !143)
!143 = !{!33, !31}
!144 = !DISubprogram(name: "xgetcwd", scope: !145, file: !145, line: 17, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!145 = !DIFile(filename: "./lib/xgetcwd.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!146 = !DISubroutineType(types: !147)
!147 = !{!29}
!148 = !DISubprogram(name: "free", scope: !97, file: !97, line: 565, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !86}
!151 = !DISubprogram(name: "xmalloc", scope: !152, file: !152, line: 53, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!152 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !DISubroutineType(types: !154)
!154 = !{!86, !90}
!155 = !DISubprogram(name: "get_root_dev_ino", scope: !156, file: !156, line: 25, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!156 = !DIFile(filename: "./lib/root-dev-ino.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !161, line: 7, size: 128, elements: !162)
!161 = !DIFile(filename: "./lib/dev-ino.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !{!163, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !160, file: !161, line: 9, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !165, line: 47, baseType: !166)
!165 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !63, line: 148, baseType: !90)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !160, file: !161, line: 10, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !165, line: 59, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !63, line: 145, baseType: !90)
!170 = !DISubprogram(name: "quotearg_style", scope: !6, file: !6, line: 377, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!171 = !DISubroutineType(types: !172)
!172 = !{!29, !5, !31}
!173 = !DISubprogram(name: "opendir", scope: !174, file: !174, line: 134, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!174 = !DIFile(filename: "/usr/include/dirent.h", directory: "")
!175 = !DISubroutineType(types: !176)
!176 = !{!177, !31}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !174, line: 127, flags: DIFlagFwdDecl)
!179 = !DISubprogram(name: "quote", scope: !180, file: !180, line: 44, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!180 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = !DISubroutineType(types: !182)
!182 = !{!31, !31}
!183 = !DISubprogram(name: "dirfd", scope: !174, file: !174, line: 224, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!184 = !DISubroutineType(types: !185)
!185 = !{!33, !177}
!186 = !DISubprogram(name: "fchdir", scope: !187, file: !187, line: 501, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!187 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!188 = !DISubroutineType(types: !189)
!189 = !{!33, !33}
!190 = !DISubprogram(name: "chdir", scope: !187, file: !187, line: 497, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!191 = !DISubprogram(name: "closedir", scope: !174, file: !174, line: 149, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!192 = !DISubprogram(name: "xalloc_die", scope: !152, file: !152, line: 51, type: !116, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !34)
!193 = !DISubprogram(name: "readdir", scope: !174, file: !174, line: 162, type: !194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !177}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !198, line: 22, size: 2240, elements: !199)
!198 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "")
!199 = !{!200, !201, !202, !203, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !197, file: !198, line: 25, baseType: !166, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !197, file: !198, line: 26, baseType: !62, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !197, file: !198, line: 31, baseType: !66, size: 16, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !197, file: !198, line: 32, baseType: !204, size: 8, offset: 144)
!204 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !197, file: !198, line: 33, baseType: !206, size: 2048, offset: 152)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 256)
!209 = !{!0}
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1280, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 5)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "Version", scope: !215, file: !216, line: 2, type: !31, isLocal: false, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, globals: !217, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!217 = !{!213}
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "file_name", scope: !220, file: !221, line: 46, type: !31, isLocal: true, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !222, globals: !260, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!222 = !{!223, !25, !259, !137}
!223 = !DISubprogram(name: "close_stream", scope: !224, file: !224, line: 2, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!224 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!225 = !DISubroutineType(types: !226)
!226 = !{!33, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !228, file: !41, line: 51, baseType: !33, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !228, file: !41, line: 54, baseType: !29, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !228, file: !41, line: 55, baseType: !29, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !228, file: !41, line: 56, baseType: !29, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !228, file: !41, line: 57, baseType: !29, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !228, file: !41, line: 58, baseType: !29, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !228, file: !41, line: 59, baseType: !29, size: 64, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !228, file: !41, line: 60, baseType: !29, size: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !228, file: !41, line: 61, baseType: !29, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !228, file: !41, line: 64, baseType: !29, size: 64, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !228, file: !41, line: 65, baseType: !29, size: 64, offset: 640)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !228, file: !41, line: 66, baseType: !29, size: 64, offset: 704)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !228, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !228, file: !41, line: 70, baseType: !227, size: 64, offset: 832)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !228, file: !41, line: 72, baseType: !33, size: 32, offset: 896)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !228, file: !41, line: 73, baseType: !33, size: 32, offset: 928)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !228, file: !41, line: 74, baseType: !62, size: 64, offset: 960)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !228, file: !41, line: 77, baseType: !66, size: 16, offset: 1024)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !228, file: !41, line: 78, baseType: !68, size: 8, offset: 1040)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !228, file: !41, line: 79, baseType: !70, size: 8, offset: 1048)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !228, file: !41, line: 81, baseType: !74, size: 64, offset: 1088)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !228, file: !41, line: 89, baseType: !77, size: 64, offset: 1152)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !228, file: !41, line: 91, baseType: !79, size: 64, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !228, file: !41, line: 92, baseType: !82, size: 64, offset: 1280)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !228, file: !41, line: 93, baseType: !227, size: 64, offset: 1344)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !228, file: !41, line: 94, baseType: !86, size: 64, offset: 1408)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !228, file: !41, line: 95, baseType: !88, size: 64, offset: 1472)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !228, file: !41, line: 96, baseType: !33, size: 32, offset: 1536)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !228, file: !41, line: 98, baseType: !93, size: 160, offset: 1568)
!259 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!260 = !{!218, !261}
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !220, file: !221, line: 56, type: !263, isLocal: true, isDefinition: true)
!263 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "exit_failure", scope: !266, file: !267, line: 24, type: !269, isLocal: false, isDefinition: true)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, globals: !268, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = !{!264}
!269 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "program_name", scope: !272, file: !273, line: 33, type: !31, isLocal: false, isDefinition: true)
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !274, globals: !310, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!274 = !{!86, !275, !29}
!275 = !DISubprogram(name: "fputs", scope: !36, file: !36, line: 626, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!276 = !DISubroutineType(types: !277)
!277 = !{!33, !31, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !279, file: !41, line: 51, baseType: !33, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !279, file: !41, line: 54, baseType: !29, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !279, file: !41, line: 55, baseType: !29, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !279, file: !41, line: 56, baseType: !29, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !279, file: !41, line: 57, baseType: !29, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !279, file: !41, line: 58, baseType: !29, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !279, file: !41, line: 59, baseType: !29, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !279, file: !41, line: 60, baseType: !29, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !279, file: !41, line: 61, baseType: !29, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !279, file: !41, line: 64, baseType: !29, size: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !279, file: !41, line: 65, baseType: !29, size: 64, offset: 640)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !279, file: !41, line: 66, baseType: !29, size: 64, offset: 704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !279, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !279, file: !41, line: 70, baseType: !278, size: 64, offset: 832)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !279, file: !41, line: 72, baseType: !33, size: 32, offset: 896)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !279, file: !41, line: 73, baseType: !33, size: 32, offset: 928)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !279, file: !41, line: 74, baseType: !62, size: 64, offset: 960)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !279, file: !41, line: 77, baseType: !66, size: 16, offset: 1024)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !279, file: !41, line: 78, baseType: !68, size: 8, offset: 1040)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !279, file: !41, line: 79, baseType: !70, size: 8, offset: 1048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !279, file: !41, line: 81, baseType: !74, size: 64, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !279, file: !41, line: 89, baseType: !77, size: 64, offset: 1152)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !279, file: !41, line: 91, baseType: !79, size: 64, offset: 1216)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !279, file: !41, line: 92, baseType: !82, size: 64, offset: 1280)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !279, file: !41, line: 93, baseType: !278, size: 64, offset: 1344)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !279, file: !41, line: 94, baseType: !86, size: 64, offset: 1408)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !279, file: !41, line: 95, baseType: !88, size: 64, offset: 1472)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !279, file: !41, line: 96, baseType: !33, size: 32, offset: 1536)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !279, file: !41, line: 98, baseType: !93, size: 160, offset: 1568)
!310 = !{!270}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !313, file: !314, line: 85, type: !423, isLocal: false, isDefinition: true)
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !315, retainedTypes: !336, globals: !399, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!315 = !{!5, !316, !321}
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !317)
!317 = !{!318, !319, !320}
!318 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!319 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!320 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !322, line: 46, baseType: !7, size: 32, elements: !323)
!322 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!324 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!325 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!326 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!327 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!328 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!329 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!330 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!331 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!332 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!333 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!334 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!335 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!336 = !{!337, !342, !148, !358, !33, !66, !361, !88, !378, !382, !25, !388, !392, !29, !151, !192, !396}
!337 = !DISubprogram(name: "xmemdup", scope: !152, file: !152, line: 62, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!338 = !DISubroutineType(types: !339)
!339 = !{!86, !340, !90}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!342 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!343 = !DISubroutineType(types: !344)
!344 = !{!29, !31, !90, !345, !346}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !314, line: 65, size: 448, elements: !349)
!349 = !{!350, !351, !352, !356, !357}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !348, file: !314, line: 68, baseType: !5, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !314, line: 71, baseType: !33, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !348, file: !314, line: 75, baseType: !353, size: 256, offset: 64)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !348, file: !314, line: 78, baseType: !31, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !348, file: !314, line: 81, baseType: !31, size: 64, offset: 384)
!358 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!359 = !DISubroutineType(types: !360)
!360 = !{!29, !33, !31, !31, !31, !90}
!361 = !DISubprogram(name: "rpl_mbrtowc", scope: !362, file: !362, line: 717, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!362 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!363 = !DISubroutineType(types: !364)
!364 = !{!90, !131, !31, !90, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 13, size: 64, elements: !368)
!367 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !366, file: !367, line: 15, baseType: !33, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !366, file: !367, line: 20, baseType: !371, size: 32, offset: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !367, line: 16, size: 32, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !371, file: !367, line: 18, baseType: !7, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !371, file: !367, line: 19, baseType: !375, size: 32)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 4)
!378 = !DISubprogram(name: "iswprint", scope: !379, file: !379, line: 120, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!379 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!380 = !DISubroutineType(types: !381)
!381 = !{!33, !7}
!382 = !DISubprogram(name: "mbsinit", scope: !383, file: !383, line: 292, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!383 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!384 = !DISubroutineType(types: !385)
!385 = !{!33, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!388 = !DISubprogram(name: "locale_charset", scope: !389, file: !389, line: 35, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!389 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!390 = !DISubroutineType(types: !391)
!391 = !{!31}
!392 = !DISubprogram(name: "c_strcasecmp", scope: !393, file: !393, line: 42, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!393 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!394 = !DISubroutineType(types: !395)
!395 = !{!33, !31, !31}
!396 = !DISubprogram(name: "xrealloc", scope: !152, file: !152, line: 59, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!397 = !DISubroutineType(types: !398)
!398 = !{!86, !86, !90}
!399 = !{!311, !400, !406, !408, !410, !412, !419, !421}
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !313, file: !314, line: 101, type: !402, isLocal: false, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 320, elements: !404)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!404 = !{!405}
!405 = !DISubrange(count: 10)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !313, file: !314, line: 1052, type: !348, isLocal: false, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !313, file: !314, line: 116, type: !348, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "slot0", scope: !313, file: !314, line: 842, type: !206, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "slotvec", scope: !313, file: !314, line: 845, type: !414, isLocal: true, isDefinition: true)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !314, line: 834, size: 128, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !415, file: !314, line: 836, baseType: !88, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !415, file: !314, line: 837, baseType: !29, size: 64, offset: 64)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "nslots", scope: !313, file: !314, line: 843, type: !33, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "slotvec0", scope: !313, file: !314, line: 844, type: !415, isLocal: true, isDefinition: true)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 704, elements: !425)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!425 = !{!426}
!426 = !DISubrange(count: 11)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !429, file: !430, line: 26, type: !432, isLocal: false, isDefinition: true)
!429 = distinct !DICompileUnit(language: DW_LANG_C99, file: !430, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, globals: !431, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!431 = !{!427}
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 376, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 47)
!435 = distinct !DICompileUnit(language: DW_LANG_C99, file: !436, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !439, retainedTypes: !443, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!439 = !{!440}
!440 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 40, baseType: !7, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!443 = !{!25, !444, !86}
!444 = !DISubprogram(name: "fputs_unlocked", scope: !36, file: !36, line: 662, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!445 = !DISubroutineType(types: !446)
!446 = !{!33, !31, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !448, file: !41, line: 51, baseType: !33, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !448, file: !41, line: 54, baseType: !29, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !448, file: !41, line: 55, baseType: !29, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !448, file: !41, line: 56, baseType: !29, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !448, file: !41, line: 57, baseType: !29, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !448, file: !41, line: 58, baseType: !29, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !448, file: !41, line: 59, baseType: !29, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !448, file: !41, line: 60, baseType: !29, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !448, file: !41, line: 61, baseType: !29, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !448, file: !41, line: 64, baseType: !29, size: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !448, file: !41, line: 65, baseType: !29, size: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !448, file: !41, line: 66, baseType: !29, size: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !448, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !448, file: !41, line: 70, baseType: !447, size: 64, offset: 832)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !448, file: !41, line: 72, baseType: !33, size: 32, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !448, file: !41, line: 73, baseType: !33, size: 32, offset: 928)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !448, file: !41, line: 74, baseType: !62, size: 64, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !448, file: !41, line: 77, baseType: !66, size: 16, offset: 1024)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !448, file: !41, line: 78, baseType: !68, size: 8, offset: 1040)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !448, file: !41, line: 79, baseType: !70, size: 8, offset: 1048)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !448, file: !41, line: 81, baseType: !74, size: 64, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !448, file: !41, line: 89, baseType: !77, size: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !448, file: !41, line: 91, baseType: !79, size: 64, offset: 1216)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !448, file: !41, line: 92, baseType: !82, size: 64, offset: 1280)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !448, file: !41, line: 93, baseType: !447, size: 64, offset: 1344)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !448, file: !41, line: 94, baseType: !86, size: 64, offset: 1408)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !448, file: !41, line: 95, baseType: !88, size: 64, offset: 1472)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !448, file: !41, line: 96, baseType: !33, size: 32, offset: 1536)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !448, file: !41, line: 98, baseType: !93, size: 160, offset: 1568)
!479 = distinct !DICompileUnit(language: DW_LANG_C99, file: !480, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !481, retainedTypes: !494, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = !{!482}
!482 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !483, file: !152, line: 186, baseType: !7, size: 32, elements: !492)
!483 = distinct !DISubprogram(name: "x2nrealloc", scope: !152, file: !152, line: 174, type: !484, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !487)
!484 = !DISubroutineType(types: !485)
!485 = !{!86, !86, !486, !88}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!487 = !{!488, !489, !490, !491}
!488 = !DILocalVariable(name: "p", arg: 1, scope: !483, file: !152, line: 174, type: !86)
!489 = !DILocalVariable(name: "pn", arg: 2, scope: !483, file: !152, line: 174, type: !486)
!490 = !DILocalVariable(name: "s", arg: 3, scope: !483, file: !152, line: 174, type: !88)
!491 = !DILocalVariable(name: "n", scope: !483, file: !152, line: 176, type: !88)
!492 = !{!493}
!493 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!494 = !{!88, !192, !151, !396, !29, !148, !86, !495, !498}
!495 = !DISubprogram(name: "xcalloc", scope: !152, file: !152, line: 57, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!496 = !DISubroutineType(types: !497)
!497 = !{!86, !90, !90}
!498 = !DISubprogram(name: "rpl_calloc", scope: !499, file: !499, line: 688, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!499 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !502, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!502 = !{!25, !137}
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !505, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!505 = !{!192}
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !508, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!508 = !{!86}
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !510, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !511, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!511 = !{!512, !88, !524}
!512 = !DISubprogram(name: "mbrtowc", scope: !383, file: !383, line: 296, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!513 = !DISubroutineType(types: !514)
!514 = !{!90, !131, !31, !90, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 13, size: 64, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !516, file: !367, line: 15, baseType: !33, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !516, file: !367, line: 20, baseType: !520, size: 32, offset: 32)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !367, line: 16, size: 32, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !520, file: !367, line: 18, baseType: !7, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !520, file: !367, line: 19, baseType: !375, size: 32)
!524 = !DISubprogram(name: "hard_locale", scope: !525, file: !525, line: 26, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!525 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!526 = !DISubroutineType(types: !527)
!527 = !{!263, !33}
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !530, splitDebugInlining: false, nameTableKind: None)
!529 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!530 = !{!531}
!531 = !DISubprogram(name: "rpl_fclose", scope: !532, file: !532, line: 672, type: !533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!532 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!533 = !DISubroutineType(types: !534)
!534 = !{!33, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !536, file: !41, line: 51, baseType: !33, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !536, file: !41, line: 54, baseType: !29, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !536, file: !41, line: 55, baseType: !29, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !536, file: !41, line: 56, baseType: !29, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !536, file: !41, line: 57, baseType: !29, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !536, file: !41, line: 58, baseType: !29, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !536, file: !41, line: 59, baseType: !29, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !536, file: !41, line: 60, baseType: !29, size: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !536, file: !41, line: 61, baseType: !29, size: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !536, file: !41, line: 64, baseType: !29, size: 64, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !536, file: !41, line: 65, baseType: !29, size: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !536, file: !41, line: 66, baseType: !29, size: 64, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !536, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !536, file: !41, line: 70, baseType: !535, size: 64, offset: 832)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !536, file: !41, line: 72, baseType: !33, size: 32, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !536, file: !41, line: 73, baseType: !33, size: 32, offset: 928)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !536, file: !41, line: 74, baseType: !62, size: 64, offset: 960)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !536, file: !41, line: 77, baseType: !66, size: 16, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !536, file: !41, line: 78, baseType: !68, size: 8, offset: 1040)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !536, file: !41, line: 79, baseType: !70, size: 8, offset: 1048)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !536, file: !41, line: 81, baseType: !74, size: 64, offset: 1088)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !536, file: !41, line: 89, baseType: !77, size: 64, offset: 1152)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !536, file: !41, line: 91, baseType: !79, size: 64, offset: 1216)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !536, file: !41, line: 92, baseType: !82, size: 64, offset: 1280)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !536, file: !41, line: 93, baseType: !535, size: 64, offset: 1344)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !536, file: !41, line: 94, baseType: !86, size: 64, offset: 1408)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !536, file: !41, line: 95, baseType: !88, size: 64, offset: 1472)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !536, file: !41, line: 96, baseType: !33, size: 32, offset: 1536)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !536, file: !41, line: 98, baseType: !93, size: 160, offset: 1568)
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !569, splitDebugInlining: false, nameTableKind: None)
!568 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = !{!570}
!570 = !DISubprogram(name: "setlocale_null_r", scope: !571, file: !571, line: 64, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!571 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!572 = !DISubroutineType(types: !573)
!573 = !{!33, !33, !29, !90}
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !576, retainedTypes: !963, splitDebugInlining: false, nameTableKind: None)
!575 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!576 = !{!577}
!577 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !578, line: 41, baseType: !7, size: 32, elements: !579)
!578 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962}
!580 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!581 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!582 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!583 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!584 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!585 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!586 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!587 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!588 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!589 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!590 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!591 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!592 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!593 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!594 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!595 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!596 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!597 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!598 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!599 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!600 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!601 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!602 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!603 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!604 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!605 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!606 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!607 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!608 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!609 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!610 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!611 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!612 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!613 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!614 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!615 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!616 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!617 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!618 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!619 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!620 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!621 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!622 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!623 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!624 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!625 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!626 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!627 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!628 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!629 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!688 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!691 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!692 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!693 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!694 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!695 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!696 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!697 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!698 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!699 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!700 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!701 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!702 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!775 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!848 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!849 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!850 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!851 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!852 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!853 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!854 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!855 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!856 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!857 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!858 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!859 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!860 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!861 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!862 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!864 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!865 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!866 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!867 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!868 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!869 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!895 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!896 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!897 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!898 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!899 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!904 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!905 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!906 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!907 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!963 = !{!964, !86}
!964 = !DISubprogram(name: "nl_langinfo", scope: !578, file: !578, line: 661, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!965 = !DISubroutineType(types: !966)
!966 = !{!29, !33}
!967 = distinct !DICompileUnit(language: DW_LANG_C99, file: !968, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !969, splitDebugInlining: false, nameTableKind: None)
!968 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!969 = !{!86, !104}
!970 = distinct !DICompileUnit(language: DW_LANG_C99, file: !971, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !972, splitDebugInlining: false, nameTableKind: None)
!971 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!972 = !{!973, !1008, !1009, !1012}
!973 = !DISubprogram(name: "fileno", scope: !36, file: !36, line: 786, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!974 = !DISubroutineType(types: !975)
!975 = !{!33, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !977, file: !41, line: 51, baseType: !33, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !977, file: !41, line: 54, baseType: !29, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !977, file: !41, line: 55, baseType: !29, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !977, file: !41, line: 56, baseType: !29, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !977, file: !41, line: 57, baseType: !29, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !977, file: !41, line: 58, baseType: !29, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !977, file: !41, line: 59, baseType: !29, size: 64, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !977, file: !41, line: 60, baseType: !29, size: 64, offset: 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !977, file: !41, line: 61, baseType: !29, size: 64, offset: 512)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !977, file: !41, line: 64, baseType: !29, size: 64, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !977, file: !41, line: 65, baseType: !29, size: 64, offset: 640)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !977, file: !41, line: 66, baseType: !29, size: 64, offset: 704)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !977, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !977, file: !41, line: 70, baseType: !976, size: 64, offset: 832)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !977, file: !41, line: 72, baseType: !33, size: 32, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !977, file: !41, line: 73, baseType: !33, size: 32, offset: 928)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !977, file: !41, line: 74, baseType: !62, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !977, file: !41, line: 77, baseType: !66, size: 16, offset: 1024)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !977, file: !41, line: 78, baseType: !68, size: 8, offset: 1040)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !977, file: !41, line: 79, baseType: !70, size: 8, offset: 1048)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !977, file: !41, line: 81, baseType: !74, size: 64, offset: 1088)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !977, file: !41, line: 89, baseType: !77, size: 64, offset: 1152)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !977, file: !41, line: 91, baseType: !79, size: 64, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !977, file: !41, line: 92, baseType: !82, size: 64, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !977, file: !41, line: 93, baseType: !976, size: 64, offset: 1344)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !977, file: !41, line: 94, baseType: !86, size: 64, offset: 1408)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !977, file: !41, line: 95, baseType: !88, size: 64, offset: 1472)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !977, file: !41, line: 96, baseType: !33, size: 32, offset: 1536)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !977, file: !41, line: 98, baseType: !93, size: 160, offset: 1568)
!1008 = !DISubprogram(name: "fclose", scope: !36, file: !36, line: 213, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!1009 = !DISubprogram(name: "lseek", scope: !187, file: !187, line: 334, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!64, !33, !64, !33}
!1012 = !DISubprogram(name: "rpl_fflush", scope: !532, file: !532, line: 718, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!1013 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1014, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !1015, splitDebugInlining: false, nameTableKind: None)
!1014 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1015 = !{!86, !1016, !1051}
!1016 = !DISubprogram(name: "fflush", scope: !36, file: !36, line: 218, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!33, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1020, file: !41, line: 51, baseType: !33, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1020, file: !41, line: 54, baseType: !29, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1020, file: !41, line: 55, baseType: !29, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1020, file: !41, line: 56, baseType: !29, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1020, file: !41, line: 57, baseType: !29, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1020, file: !41, line: 58, baseType: !29, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1020, file: !41, line: 59, baseType: !29, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1020, file: !41, line: 60, baseType: !29, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1020, file: !41, line: 61, baseType: !29, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1020, file: !41, line: 64, baseType: !29, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1020, file: !41, line: 65, baseType: !29, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1020, file: !41, line: 66, baseType: !29, size: 64, offset: 704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1020, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1020, file: !41, line: 70, baseType: !1019, size: 64, offset: 832)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1020, file: !41, line: 72, baseType: !33, size: 32, offset: 896)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1020, file: !41, line: 73, baseType: !33, size: 32, offset: 928)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1020, file: !41, line: 74, baseType: !62, size: 64, offset: 960)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1020, file: !41, line: 77, baseType: !66, size: 16, offset: 1024)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1020, file: !41, line: 78, baseType: !68, size: 8, offset: 1040)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1020, file: !41, line: 79, baseType: !70, size: 8, offset: 1048)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1020, file: !41, line: 81, baseType: !74, size: 64, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1020, file: !41, line: 89, baseType: !77, size: 64, offset: 1152)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1020, file: !41, line: 91, baseType: !79, size: 64, offset: 1216)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1020, file: !41, line: 92, baseType: !82, size: 64, offset: 1280)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1020, file: !41, line: 93, baseType: !1019, size: 64, offset: 1344)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1020, file: !41, line: 94, baseType: !86, size: 64, offset: 1408)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1020, file: !41, line: 95, baseType: !88, size: 64, offset: 1472)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1020, file: !41, line: 96, baseType: !33, size: 32, offset: 1536)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1020, file: !41, line: 98, baseType: !93, size: 160, offset: 1568)
!1051 = !DISubprogram(name: "rpl_fseeko", scope: !532, file: !532, line: 1034, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!33, !1019, !64, !33}
!1054 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1055, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !1056, splitDebugInlining: false, nameTableKind: None)
!1055 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1056 = !{!86, !1057, !1009, !1092}
!1057 = !DISubprogram(name: "fileno", scope: !36, file: !36, line: 786, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!33, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1061, file: !41, line: 51, baseType: !33, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1061, file: !41, line: 54, baseType: !29, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1061, file: !41, line: 55, baseType: !29, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1061, file: !41, line: 56, baseType: !29, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1061, file: !41, line: 57, baseType: !29, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1061, file: !41, line: 58, baseType: !29, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1061, file: !41, line: 59, baseType: !29, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1061, file: !41, line: 60, baseType: !29, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1061, file: !41, line: 61, baseType: !29, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1061, file: !41, line: 64, baseType: !29, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1061, file: !41, line: 65, baseType: !29, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1061, file: !41, line: 66, baseType: !29, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1061, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1061, file: !41, line: 70, baseType: !1060, size: 64, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1061, file: !41, line: 72, baseType: !33, size: 32, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1061, file: !41, line: 73, baseType: !33, size: 32, offset: 928)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1061, file: !41, line: 74, baseType: !62, size: 64, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1061, file: !41, line: 77, baseType: !66, size: 16, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1061, file: !41, line: 78, baseType: !68, size: 8, offset: 1040)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1061, file: !41, line: 79, baseType: !70, size: 8, offset: 1048)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1061, file: !41, line: 81, baseType: !74, size: 64, offset: 1088)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1061, file: !41, line: 89, baseType: !77, size: 64, offset: 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1061, file: !41, line: 91, baseType: !79, size: 64, offset: 1216)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1061, file: !41, line: 92, baseType: !82, size: 64, offset: 1280)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1061, file: !41, line: 93, baseType: !1060, size: 64, offset: 1344)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1061, file: !41, line: 94, baseType: !86, size: 64, offset: 1408)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1061, file: !41, line: 95, baseType: !88, size: 64, offset: 1472)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1061, file: !41, line: 96, baseType: !33, size: 32, offset: 1536)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1061, file: !41, line: 98, baseType: !93, size: 160, offset: 1568)
!1092 = !DISubprogram(name: "fseeko", scope: !36, file: !36, line: 707, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!33, !1060, !64, !33}
!1095 = !{!"clang version 10.0.0 "}
!1096 = !{i32 7, !"Dwarf Version", i32 4}
!1097 = !{i32 2, !"Debug Info Version", i32 3}
!1098 = !{i32 1, !"wchar_size", i32 4}
!1099 = !{i32 7, !"PIC Level", i32 2}
!1100 = !{i32 7, !"PIE Level", i32 2}
!1101 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !1102, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !33}
!1104 = !{!1105}
!1105 = !DILocalVariable(name: "status", arg: 1, scope: !1101, file: !3, line: 51, type: !33)
!1106 = !DILocalVariable(name: "infomap", scope: !1107, file: !21, line: 636, type: !1119)
!1107 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !21, file: !21, line: 634, type: !102, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1108 = !{!1109, !1106, !1110, !1111, !1118}
!1109 = !DILocalVariable(name: "program", arg: 1, scope: !1107, file: !21, line: 634, type: !31)
!1110 = !DILocalVariable(name: "node", scope: !1107, file: !21, line: 646, type: !31)
!1111 = !DILocalVariable(name: "map_prog", scope: !1107, file: !21, line: 647, type: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1107, file: !21, line: 636, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1114, file: !21, line: 636, baseType: !31, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1114, file: !21, line: 636, baseType: !31, size: 64, offset: 64)
!1118 = !DILocalVariable(name: "lc_messages", scope: !1107, file: !21, line: 659, type: !31)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 896, elements: !1120)
!1120 = !{!1121}
!1121 = !DISubrange(count: 7)
!1122 = !DILocation(line: 636, column: 67, scope: !1107, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 72, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 56, column: 5)
!1125 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 53, column: 7)
!1126 = !DILocation(line: 0, scope: !1101)
!1127 = !DILocation(line: 53, column: 14, scope: !1125)
!1128 = !DILocation(line: 53, column: 7, scope: !1101)
!1129 = !DILocation(line: 54, column: 5, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 54, column: 5)
!1131 = !{!1132, !1132, i64 0}
!1132 = !{!"any pointer", !1133, i64 0}
!1133 = !{!"omnipotent char", !1134, i64 0}
!1134 = !{!"Simple C/C++ TBAA"}
!1135 = !DILocation(line: 57, column: 7, scope: !1124)
!1136 = !DILocation(line: 58, column: 7, scope: !1124)
!1137 = !DILocation(line: 62, column: 7, scope: !1124)
!1138 = !DILocation(line: 66, column: 7, scope: !1124)
!1139 = !DILocation(line: 67, column: 7, scope: !1124)
!1140 = !DILocation(line: 68, column: 7, scope: !1124)
!1141 = !DILocation(line: 71, column: 7, scope: !1124)
!1142 = !DILocation(line: 0, scope: !1107, inlinedAt: !1123)
!1143 = !DILocation(line: 636, column: 3, scope: !1107, inlinedAt: !1123)
!1144 = !DILocation(line: 647, column: 36, scope: !1107, inlinedAt: !1123)
!1145 = !DILocation(line: 649, column: 3, scope: !1107, inlinedAt: !1123)
!1146 = !DILocation(line: 649, column: 33, scope: !1107, inlinedAt: !1123)
!1147 = !DILocation(line: 650, column: 13, scope: !1107, inlinedAt: !1123)
!1148 = !DILocation(line: 649, column: 20, scope: !1107, inlinedAt: !1123)
!1149 = !{!1150, !1132, i64 0}
!1150 = !{!"infomap", !1132, i64 0, !1132, i64 8}
!1151 = !DILocation(line: 649, column: 10, scope: !1107, inlinedAt: !1123)
!1152 = !DILocation(line: 649, column: 28, scope: !1107, inlinedAt: !1123)
!1153 = distinct !{!1153, !1145, !1147}
!1154 = !DILocation(line: 652, column: 17, scope: !1155, inlinedAt: !1123)
!1155 = distinct !DILexicalBlock(scope: !1107, file: !21, line: 652, column: 7)
!1156 = !{!1150, !1132, i64 8}
!1157 = !DILocation(line: 652, column: 7, scope: !1155, inlinedAt: !1123)
!1158 = !DILocation(line: 652, column: 7, scope: !1107, inlinedAt: !1123)
!1159 = !DILocation(line: 655, column: 3, scope: !1107, inlinedAt: !1123)
!1160 = !DILocation(line: 659, column: 29, scope: !1107, inlinedAt: !1123)
!1161 = !DILocation(line: 660, column: 7, scope: !1162, inlinedAt: !1123)
!1162 = distinct !DILexicalBlock(scope: !1107, file: !21, line: 660, column: 7)
!1163 = !DILocation(line: 660, column: 19, scope: !1162, inlinedAt: !1123)
!1164 = !DILocation(line: 660, column: 22, scope: !1162, inlinedAt: !1123)
!1165 = !DILocation(line: 660, column: 7, scope: !1107, inlinedAt: !1123)
!1166 = !DILocation(line: 666, column: 7, scope: !1167, inlinedAt: !1123)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !21, line: 661, column: 5)
!1168 = !DILocation(line: 668, column: 5, scope: !1167, inlinedAt: !1123)
!1169 = !DILocation(line: 669, column: 3, scope: !1107, inlinedAt: !1123)
!1170 = !DILocation(line: 671, column: 3, scope: !1107, inlinedAt: !1123)
!1171 = !DILocation(line: 673, column: 1, scope: !1107, inlinedAt: !1123)
!1172 = !DILocation(line: 74, column: 3, scope: !1101)
!1173 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 327, type: !1174, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1177)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!33, !33, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1184}
!1178 = !DILocalVariable(name: "argc", arg: 1, scope: !1173, file: !3, line: 327, type: !33)
!1179 = !DILocalVariable(name: "argv", arg: 2, scope: !1173, file: !3, line: 327, type: !1176)
!1180 = !DILocalVariable(name: "wd", scope: !1173, file: !3, line: 329, type: !29)
!1181 = !DILocalVariable(name: "logical", scope: !1173, file: !3, line: 333, type: !263)
!1182 = !DILocalVariable(name: "c", scope: !1183, file: !3, line: 345, type: !33)
!1183 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 344, column: 5)
!1184 = !DILocalVariable(name: "file_name", scope: !1185, file: !3, line: 387, type: !1187)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 386, column: 5)
!1186 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 380, column: 7)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !3, line: 34, size: 192, elements: !1189)
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1188, file: !3, line: 36, baseType: !29, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !1188, file: !3, line: 37, baseType: !88, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1188, file: !3, line: 38, baseType: !29, size: 64, offset: 128)
!1193 = !DILocalVariable(name: "parent_sb", scope: !1194, file: !3, line: 158, type: !1198)
!1194 = distinct !DISubprogram(name: "find_dir_entry", scope: !3, file: !3, line: 153, type: !1195, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1197, !1187, !88}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1199, line: 46, size: 1152, elements: !1200)
!1199 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!1200 = !{!1201, !1202, !1203, !1205, !1207, !1209, !1211, !1212, !1213, !1214, !1216, !1218, !1226, !1227, !1228}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1198, file: !1199, line: 48, baseType: !169, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1198, file: !1199, line: 53, baseType: !166, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1198, file: !1199, line: 61, baseType: !1204, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !63, line: 151, baseType: !90)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1198, file: !1199, line: 62, baseType: !1206, size: 32, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !63, line: 150, baseType: !7)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1198, file: !1199, line: 64, baseType: !1208, size: 32, offset: 224)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !63, line: 146, baseType: !7)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1198, file: !1199, line: 65, baseType: !1210, size: 32, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !63, line: 147, baseType: !7)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1198, file: !1199, line: 67, baseType: !33, size: 32, offset: 288)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1198, file: !1199, line: 69, baseType: !169, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1198, file: !1199, line: 74, baseType: !62, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1198, file: !1199, line: 78, baseType: !1215, size: 64, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !63, line: 174, baseType: !64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1198, file: !1199, line: 80, baseType: !1217, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !63, line: 179, baseType: !64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1198, file: !1199, line: 91, baseType: !1219, size: 128, offset: 576)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1220, line: 10, size: 128, elements: !1221)
!1220 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1221 = !{!1222, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1219, file: !1220, line: 12, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !63, line: 160, baseType: !64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1219, file: !1220, line: 16, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !63, line: 196, baseType: !64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1198, file: !1199, line: 92, baseType: !1219, size: 128, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1198, file: !1199, line: 93, baseType: !1219, size: 128, offset: 832)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1198, file: !1199, line: 106, baseType: !1229, size: 192, offset: 960)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1225, size: 192, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 3)
!1232 = !{!1233, !1234, !1235, !1236, !1239, !1193, !1240, !1241, !1242, !1246, !1247, !1248}
!1233 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !1194, file: !3, line: 153, type: !1197)
!1234 = !DILocalVariable(name: "file_name", arg: 2, scope: !1194, file: !3, line: 153, type: !1187)
!1235 = !DILocalVariable(name: "parent_height", arg: 3, scope: !1194, file: !3, line: 154, type: !88)
!1236 = !DILocalVariable(name: "dirp", scope: !1194, file: !3, line: 156, type: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !174, line: 127, baseType: !178)
!1239 = !DILocalVariable(name: "fd", scope: !1194, file: !3, line: 157, type: !33)
!1240 = !DILocalVariable(name: "use_lstat", scope: !1194, file: !3, line: 159, type: !263)
!1241 = !DILocalVariable(name: "found", scope: !1194, file: !3, line: 160, type: !263)
!1242 = !DILocalVariable(name: "dp", scope: !1243, file: !3, line: 183, type: !1244)
!1243 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 182, column: 5)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!1246 = !DILocalVariable(name: "ent_sb", scope: !1243, file: !3, line: 184, type: !1198)
!1247 = !DILocalVariable(name: "ino", scope: !1243, file: !3, line: 185, type: !164)
!1248 = !DILocalVariable(name: "e", scope: !1249, file: !3, line: 193, type: !33)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 191, column: 13)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 190, column: 15)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 189, column: 9)
!1252 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 188, column: 11)
!1253 = !DILocation(line: 158, column: 15, scope: !1194, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 288, column: 7, scope: !1255, inlinedAt: !1265)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 283, column: 5)
!1256 = distinct !DISubprogram(name: "robust_getcwd", scope: !3, file: !3, line: 268, type: !1257, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !1187}
!1259 = !{!1260, !1261, !1262, !1263, !1264}
!1260 = !DILocalVariable(name: "file_name", arg: 1, scope: !1256, file: !3, line: 268, type: !1187)
!1261 = !DILocalVariable(name: "height", scope: !1256, file: !3, line: 270, type: !88)
!1262 = !DILocalVariable(name: "dev_ino_buf", scope: !1256, file: !3, line: 271, type: !160)
!1263 = !DILocalVariable(name: "root_dev_ino", scope: !1256, file: !3, line: 272, type: !159)
!1264 = !DILocalVariable(name: "dot_sb", scope: !1256, file: !3, line: 273, type: !1198)
!1265 = distinct !DILocation(line: 388, column: 7, scope: !1185)
!1266 = !DILocation(line: 184, column: 19, scope: !1243, inlinedAt: !1254)
!1267 = !DILocation(line: 271, column: 18, scope: !1256, inlinedAt: !1265)
!1268 = !DILocation(line: 273, column: 15, scope: !1256, inlinedAt: !1265)
!1269 = !DILocalVariable(name: "st1", scope: !1270, file: !3, line: 302, type: !1198)
!1270 = distinct !DISubprogram(name: "logical_getcwd", scope: !3, file: !3, line: 300, type: !146, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1271)
!1271 = !{!1269, !1272, !1273, !1274}
!1272 = !DILocalVariable(name: "st2", scope: !1270, file: !3, line: 303, type: !1198)
!1273 = !DILocalVariable(name: "wd", scope: !1270, file: !3, line: 304, type: !29)
!1274 = !DILocalVariable(name: "p", scope: !1270, file: !3, line: 305, type: !29)
!1275 = !DILocation(line: 302, column: 15, scope: !1270, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 371, column: 12, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 370, column: 5)
!1278 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 369, column: 7)
!1279 = !DILocation(line: 303, column: 15, scope: !1270, inlinedAt: !1276)
!1280 = !DILocation(line: 0, scope: !1173)
!1281 = !DILocation(line: 333, column: 19, scope: !1173)
!1282 = !DILocation(line: 333, column: 46, scope: !1173)
!1283 = !DILocation(line: 333, column: 8, scope: !1173)
!1284 = !DILocation(line: 336, column: 21, scope: !1173)
!1285 = !DILocation(line: 336, column: 3, scope: !1173)
!1286 = !DILocation(line: 337, column: 3, scope: !1173)
!1287 = !DILocation(line: 338, column: 3, scope: !1173)
!1288 = !DILocation(line: 339, column: 3, scope: !1173)
!1289 = !DILocation(line: 341, column: 3, scope: !1173)
!1290 = !DILocation(line: 343, column: 3, scope: !1173)
!1291 = !DILocation(line: 345, column: 15, scope: !1183)
!1292 = !DILocation(line: 0, scope: !1183)
!1293 = !DILocation(line: 346, column: 11, scope: !1183)
!1294 = !DILocation(line: 355, column: 11, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 349, column: 9)
!1296 = !DILocation(line: 357, column: 9, scope: !1295)
!1297 = !DILocation(line: 359, column: 9, scope: !1295)
!1298 = !DILocation(line: 362, column: 11, scope: !1295)
!1299 = !DILocation(line: 366, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 366, column: 7)
!1301 = !{!1302, !1302, i64 0}
!1302 = !{!"int", !1133, i64 0}
!1303 = !DILocation(line: 366, column: 14, scope: !1300)
!1304 = !DILocation(line: 366, column: 7, scope: !1173)
!1305 = !DILocation(line: 367, column: 18, scope: !1300)
!1306 = !DILocation(line: 367, column: 5, scope: !1300)
!1307 = !DILocation(line: 369, column: 7, scope: !1278)
!1308 = !DILocation(line: 369, column: 7, scope: !1173)
!1309 = !DILocation(line: 302, column: 3, scope: !1270, inlinedAt: !1276)
!1310 = !DILocation(line: 303, column: 3, scope: !1270, inlinedAt: !1276)
!1311 = !DILocation(line: 304, column: 14, scope: !1270, inlinedAt: !1276)
!1312 = !DILocation(line: 0, scope: !1270, inlinedAt: !1276)
!1313 = !DILocation(line: 308, column: 8, scope: !1314, inlinedAt: !1276)
!1314 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 308, column: 7)
!1315 = !DILocation(line: 308, column: 11, scope: !1314, inlinedAt: !1276)
!1316 = !DILocation(line: 308, column: 14, scope: !1314, inlinedAt: !1276)
!1317 = !{!1133, !1133, i64 0}
!1318 = !DILocation(line: 308, column: 20, scope: !1314, inlinedAt: !1276)
!1319 = !DILocation(line: 308, column: 7, scope: !1270, inlinedAt: !1276)
!1320 = !DILocation(line: 311, column: 15, scope: !1270, inlinedAt: !1276)
!1321 = !DILocation(line: 311, column: 3, scope: !1270, inlinedAt: !1276)
!1322 = !DILocation(line: 313, column: 12, scope: !1323, inlinedAt: !1276)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 313, column: 11)
!1324 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 312, column: 5)
!1325 = !DILocation(line: 313, column: 17, scope: !1323, inlinedAt: !1276)
!1326 = !DILocation(line: 314, column: 32, scope: !1323, inlinedAt: !1276)
!1327 = !DILocation(line: 314, column: 37, scope: !1323, inlinedAt: !1276)
!1328 = !DILocation(line: 316, column: 8, scope: !1324, inlinedAt: !1276)
!1329 = distinct !{!1329, !1321, !1330}
!1330 = !DILocation(line: 317, column: 5, scope: !1270, inlinedAt: !1276)
!1331 = !DILocalVariable(name: "__path", arg: 1, scope: !1332, file: !1333, line: 453, type: !31)
!1332 = distinct !DISubprogram(name: "stat", scope: !1333, file: !1333, line: 453, type: !1334, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1333 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!33, !31, !1197}
!1336 = !{!1331, !1337}
!1337 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1332, file: !1333, line: 453, type: !1197)
!1338 = !DILocation(line: 0, scope: !1332, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 320, column: 7, scope: !1340, inlinedAt: !1276)
!1340 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 320, column: 7)
!1341 = !DILocation(line: 455, column: 10, scope: !1332, inlinedAt: !1339)
!1342 = !DILocation(line: 320, column: 23, scope: !1340, inlinedAt: !1276)
!1343 = !DILocation(line: 320, column: 28, scope: !1340, inlinedAt: !1276)
!1344 = !DILocation(line: 0, scope: !1332, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 320, column: 31, scope: !1340, inlinedAt: !1276)
!1346 = !DILocation(line: 455, column: 10, scope: !1332, inlinedAt: !1345)
!1347 = !DILocation(line: 320, column: 48, scope: !1340, inlinedAt: !1276)
!1348 = !DILocation(line: 320, column: 53, scope: !1340, inlinedAt: !1276)
!1349 = !DILocation(line: 320, column: 56, scope: !1340, inlinedAt: !1276)
!1350 = !{!1351, !1352, i64 8}
!1351 = !{!"stat", !1352, i64 0, !1352, i64 8, !1352, i64 16, !1302, i64 24, !1302, i64 28, !1302, i64 32, !1302, i64 36, !1352, i64 40, !1352, i64 48, !1352, i64 56, !1352, i64 64, !1353, i64 72, !1353, i64 88, !1353, i64 104, !1133, i64 120}
!1352 = !{!"long", !1133, i64 0}
!1353 = !{!"timespec", !1352, i64 0, !1352, i64 8}
!1354 = !{!1351, !1352, i64 0}
!1355 = !DILocation(line: 320, column: 7, scope: !1270, inlinedAt: !1276)
!1356 = !DILocation(line: 323, column: 1, scope: !1270, inlinedAt: !1276)
!1357 = !DILocation(line: 372, column: 11, scope: !1277)
!1358 = !DILocation(line: 374, column: 11, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 373, column: 9)
!1360 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 372, column: 11)
!1361 = !DILocation(line: 375, column: 11, scope: !1359)
!1362 = !DILocation(line: 379, column: 8, scope: !1173)
!1363 = !DILocation(line: 380, column: 10, scope: !1186)
!1364 = !DILocation(line: 380, column: 7, scope: !1173)
!1365 = !DILocation(line: 382, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 381, column: 5)
!1367 = !DILocation(line: 383, column: 7, scope: !1366)
!1368 = !DILocation(line: 384, column: 5, scope: !1366)
!1369 = !DILocation(line: 87, column: 25, scope: !1370, inlinedAt: !1375)
!1370 = distinct !DISubprogram(name: "file_name_init", scope: !3, file: !3, line: 85, type: !1371, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1187}
!1373 = !{!1374}
!1374 = !DILocalVariable(name: "p", scope: !1370, file: !3, line: 87, type: !1187)
!1375 = distinct !DILocation(line: 387, column: 37, scope: !1185)
!1376 = !DILocation(line: 0, scope: !1370, inlinedAt: !1375)
!1377 = !DILocation(line: 91, column: 6, scope: !1370, inlinedAt: !1375)
!1378 = !DILocation(line: 91, column: 14, scope: !1370, inlinedAt: !1375)
!1379 = !{!1380, !1352, i64 8}
!1380 = !{!"file_name", !1132, i64 0, !1352, i64 8, !1132, i64 16}
!1381 = !DILocation(line: 93, column: 12, scope: !1370, inlinedAt: !1375)
!1382 = !DILocation(line: 93, column: 6, scope: !1370, inlinedAt: !1375)
!1383 = !DILocation(line: 93, column: 10, scope: !1370, inlinedAt: !1375)
!1384 = !{!1380, !1132, i64 0}
!1385 = !DILocation(line: 94, column: 21, scope: !1370, inlinedAt: !1375)
!1386 = !DILocation(line: 94, column: 6, scope: !1370, inlinedAt: !1375)
!1387 = !DILocation(line: 94, column: 12, scope: !1370, inlinedAt: !1375)
!1388 = !{!1380, !1132, i64 16}
!1389 = !DILocation(line: 95, column: 15, scope: !1370, inlinedAt: !1375)
!1390 = !DILocation(line: 0, scope: !1185)
!1391 = !DILocation(line: 0, scope: !1256, inlinedAt: !1265)
!1392 = !DILocation(line: 271, column: 3, scope: !1256, inlinedAt: !1265)
!1393 = !DILocation(line: 272, column: 34, scope: !1256, inlinedAt: !1265)
!1394 = !DILocation(line: 273, column: 3, scope: !1256, inlinedAt: !1265)
!1395 = !DILocation(line: 275, column: 20, scope: !1396, inlinedAt: !1265)
!1396 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 275, column: 7)
!1397 = !DILocation(line: 275, column: 7, scope: !1256, inlinedAt: !1265)
!1398 = !DILocation(line: 276, column: 5, scope: !1396, inlinedAt: !1265)
!1399 = !DILocation(line: 0, scope: !1332, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 279, column: 7, scope: !1401, inlinedAt: !1265)
!1401 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 279, column: 7)
!1402 = !DILocation(line: 455, column: 10, scope: !1332, inlinedAt: !1400)
!1403 = !DILocation(line: 279, column: 27, scope: !1401, inlinedAt: !1265)
!1404 = !DILocation(line: 279, column: 7, scope: !1256, inlinedAt: !1265)
!1405 = !DILocation(line: 0, scope: !1406, inlinedAt: !1265)
!1406 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 285, column: 11)
!1407 = !DILocation(line: 0, scope: !1194, inlinedAt: !1254)
!1408 = !DILocation(line: 0, scope: !1243, inlinedAt: !1254)
!1409 = !DILocation(line: 0, scope: !1410, inlinedAt: !1254)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 206, column: 9)
!1411 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 205, column: 11)
!1412 = !DILocation(line: 0, scope: !1413, inlinedAt: !1254)
!1413 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 220, column: 12)
!1414 = !DILocation(line: 282, column: 3, scope: !1256, inlinedAt: !1265)
!1415 = !DILocation(line: 280, column: 5, scope: !1401, inlinedAt: !1265)
!1416 = !DILocation(line: 285, column: 11, scope: !1406, inlinedAt: !1265)
!1417 = !{!1418, !1352, i64 0}
!1418 = !{!"dev_ino", !1352, i64 0, !1352, i64 8}
!1419 = !{!1418, !1352, i64 8}
!1420 = !DILocation(line: 285, column: 11, scope: !1255, inlinedAt: !1265)
!1421 = !DILocation(line: 288, column: 49, scope: !1255, inlinedAt: !1265)
!1422 = !DILocation(line: 158, column: 3, scope: !1194, inlinedAt: !1254)
!1423 = !DILocation(line: 162, column: 10, scope: !1194, inlinedAt: !1254)
!1424 = !DILocation(line: 163, column: 12, scope: !1425, inlinedAt: !1254)
!1425 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 163, column: 7)
!1426 = !DILocation(line: 163, column: 7, scope: !1194, inlinedAt: !1254)
!1427 = !DILocation(line: 164, column: 5, scope: !1425, inlinedAt: !1254)
!1428 = !DILocation(line: 167, column: 8, scope: !1194, inlinedAt: !1254)
!1429 = !DILocation(line: 168, column: 10, scope: !1430, inlinedAt: !1254)
!1430 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 168, column: 7)
!1431 = !DILocation(line: 168, column: 8, scope: !1430, inlinedAt: !1254)
!1432 = !DILocation(line: 168, column: 18, scope: !1430, inlinedAt: !1254)
!1433 = !DILocation(line: 168, column: 32, scope: !1430, inlinedAt: !1254)
!1434 = !DILocation(line: 168, column: 46, scope: !1430, inlinedAt: !1254)
!1435 = !DILocation(line: 168, column: 7, scope: !1194, inlinedAt: !1254)
!1436 = !DILocation(line: 169, column: 5, scope: !1430, inlinedAt: !1254)
!1437 = !DILocation(line: 172, column: 8, scope: !1438, inlinedAt: !1254)
!1438 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 172, column: 7)
!1439 = !DILocalVariable(name: "__fd", arg: 1, scope: !1440, file: !1333, line: 467, type: !33)
!1440 = distinct !DISubprogram(name: "fstat", scope: !1333, file: !1333, line: 467, type: !1441, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!33, !33, !1197}
!1443 = !{!1439, !1444}
!1444 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1440, file: !1333, line: 467, type: !1197)
!1445 = !DILocation(line: 0, scope: !1440, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 172, column: 18, scope: !1438, inlinedAt: !1254)
!1447 = !DILocation(line: 469, column: 10, scope: !1440, inlinedAt: !1446)
!1448 = !DILocation(line: 0, scope: !1332, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 172, column: 43, scope: !1438, inlinedAt: !1254)
!1450 = !DILocation(line: 455, column: 10, scope: !1332, inlinedAt: !1449)
!1451 = !DILocation(line: 172, column: 67, scope: !1438, inlinedAt: !1254)
!1452 = !DILocation(line: 172, column: 7, scope: !1194, inlinedAt: !1254)
!1453 = !DILocation(line: 173, column: 5, scope: !1438, inlinedAt: !1254)
!1454 = !DILocation(line: 178, column: 26, scope: !1194, inlinedAt: !1254)
!1455 = !DILocation(line: 178, column: 44, scope: !1194, inlinedAt: !1254)
!1456 = !DILocation(line: 178, column: 33, scope: !1194, inlinedAt: !1254)
!1457 = !DILocation(line: 184, column: 7, scope: !1243, inlinedAt: !1254)
!1458 = !DILocation(line: 187, column: 7, scope: !1243, inlinedAt: !1254)
!1459 = !DILocation(line: 187, column: 13, scope: !1243, inlinedAt: !1254)
!1460 = !DILocalVariable(name: "dirp", arg: 1, scope: !1461, file: !21, line: 278, type: !1237)
!1461 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !21, file: !21, line: 278, type: !1462, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1464)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1244, !1237}
!1464 = !{!1460, !1465}
!1465 = !DILocalVariable(name: "dp", scope: !1466, file: !21, line: 282, type: !1244)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !21, line: 281, column: 5)
!1467 = !DILocation(line: 0, scope: !1461, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 188, column: 17, scope: !1252, inlinedAt: !1254)
!1469 = !DILocation(line: 282, column: 33, scope: !1466, inlinedAt: !1468)
!1470 = !DILocation(line: 0, scope: !1466, inlinedAt: !1468)
!1471 = !DILocation(line: 283, column: 14, scope: !1472, inlinedAt: !1468)
!1472 = distinct !DILexicalBlock(scope: !1466, file: !21, line: 283, column: 11)
!1473 = !DILocation(line: 283, column: 22, scope: !1472, inlinedAt: !1468)
!1474 = !DILocation(line: 283, column: 42, scope: !1472, inlinedAt: !1468)
!1475 = !DILocalVariable(name: "file_name", arg: 1, scope: !1476, file: !21, line: 265, type: !31)
!1476 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !21, file: !21, line: 265, type: !1477, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!263, !31}
!1479 = !{!1475, !1480}
!1480 = !DILocalVariable(name: "sep", scope: !1481, file: !21, line: 269, type: !30)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !21, line: 268, column: 5)
!1482 = distinct !DILexicalBlock(scope: !1476, file: !21, line: 267, column: 7)
!1483 = !DILocation(line: 0, scope: !1476, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 283, column: 27, scope: !1472, inlinedAt: !1468)
!1485 = !DILocation(line: 267, column: 7, scope: !1482, inlinedAt: !1484)
!1486 = !DILocation(line: 267, column: 20, scope: !1482, inlinedAt: !1484)
!1487 = !DILocation(line: 267, column: 7, scope: !1476, inlinedAt: !1484)
!1488 = !DILocation(line: 269, column: 29, scope: !1481, inlinedAt: !1484)
!1489 = !DILocation(line: 269, column: 42, scope: !1481, inlinedAt: !1484)
!1490 = !DILocation(line: 269, column: 18, scope: !1481, inlinedAt: !1484)
!1491 = !DILocation(line: 0, scope: !1481, inlinedAt: !1484)
!1492 = !DILocation(line: 283, column: 11, scope: !1466, inlinedAt: !1468)
!1493 = !DILocation(line: 190, column: 15, scope: !1250, inlinedAt: !1254)
!1494 = !DILocation(line: 190, column: 15, scope: !1251, inlinedAt: !1254)
!1495 = !DILocation(line: 0, scope: !1249, inlinedAt: !1254)
!1496 = !DILocation(line: 194, column: 15, scope: !1249, inlinedAt: !1254)
!1497 = !DILocation(line: 195, column: 21, scope: !1249, inlinedAt: !1254)
!1498 = !DILocation(line: 226, column: 5, scope: !1194, inlinedAt: !1254)
!1499 = !DILocation(line: 228, column: 20, scope: !1500, inlinedAt: !1254)
!1500 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 228, column: 7)
!1501 = !DILocation(line: 203, column: 13, scope: !1243, inlinedAt: !1254)
!1502 = !{!1503, !1352, i64 0}
!1503 = !{!"dirent", !1352, i64 0, !1352, i64 8, !1504, i64 16, !1133, i64 18, !1133, i64 19}
!1504 = !{!"short", !1133, i64 0}
!1505 = !DILocation(line: 205, column: 15, scope: !1411, inlinedAt: !1254)
!1506 = !DILocation(line: 205, column: 38, scope: !1411, inlinedAt: !1254)
!1507 = !DILocalVariable(name: "__path", arg: 1, scope: !1508, file: !1333, line: 460, type: !31)
!1508 = distinct !DISubprogram(name: "lstat", scope: !1333, file: !1333, line: 460, type: !1334, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1509)
!1509 = !{!1507, !1510}
!1510 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1508, file: !1333, line: 460, type: !1197)
!1511 = !DILocation(line: 0, scope: !1508, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 207, column: 15, scope: !1513, inlinedAt: !1254)
!1513 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 207, column: 15)
!1514 = !DILocation(line: 462, column: 10, scope: !1508, inlinedAt: !1512)
!1515 = !DILocation(line: 207, column: 43, scope: !1513, inlinedAt: !1254)
!1516 = !DILocation(line: 207, column: 15, scope: !1410, inlinedAt: !1254)
!1517 = distinct !{!1517, !1518, !1498}
!1518 = !DILocation(line: 181, column: 3, scope: !1194, inlinedAt: !1254)
!1519 = !DILocation(line: 212, column: 24, scope: !1410, inlinedAt: !1254)
!1520 = !DILocation(line: 213, column: 9, scope: !1410, inlinedAt: !1254)
!1521 = !DILocation(line: 215, column: 26, scope: !1522, inlinedAt: !1254)
!1522 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 215, column: 11)
!1523 = !DILocation(line: 215, column: 15, scope: !1522, inlinedAt: !1254)
!1524 = !DILocation(line: 215, column: 11, scope: !1243, inlinedAt: !1254)
!1525 = distinct !{!1525, !1518, !1498}
!1526 = !DILocation(line: 220, column: 24, scope: !1413, inlinedAt: !1254)
!1527 = !DILocation(line: 220, column: 34, scope: !1413, inlinedAt: !1254)
!1528 = !DILocation(line: 220, column: 52, scope: !1413, inlinedAt: !1254)
!1529 = !DILocation(line: 220, column: 41, scope: !1413, inlinedAt: !1254)
!1530 = !DILocation(line: 220, column: 12, scope: !1243, inlinedAt: !1254)
!1531 = !DILocation(line: 222, column: 53, scope: !1532, inlinedAt: !1254)
!1532 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 221, column: 9)
!1533 = !DILocation(line: 222, column: 11, scope: !1532, inlinedAt: !1254)
!1534 = !DILocation(line: 224, column: 11, scope: !1532, inlinedAt: !1254)
!1535 = !DILocation(line: 228, column: 23, scope: !1500, inlinedAt: !1254)
!1536 = !DILocation(line: 228, column: 39, scope: !1500, inlinedAt: !1254)
!1537 = !DILocation(line: 228, column: 7, scope: !1194, inlinedAt: !1254)
!1538 = !DILocation(line: 232, column: 7, scope: !1539, inlinedAt: !1254)
!1539 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 229, column: 5)
!1540 = !DILocation(line: 236, column: 10, scope: !1541, inlinedAt: !1254)
!1541 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 236, column: 8)
!1542 = !DILocation(line: 236, column: 8, scope: !1194, inlinedAt: !1254)
!1543 = !DILocation(line: 237, column: 5, scope: !1541, inlinedAt: !1254)
!1544 = !DILocation(line: 241, column: 13, scope: !1194, inlinedAt: !1254)
!1545 = !{i64 0, i64 8, !1546, i64 8, i64 8, !1546, i64 16, i64 8, !1546, i64 24, i64 4, !1301, i64 28, i64 4, !1301, i64 32, i64 4, !1301, i64 36, i64 4, !1301, i64 40, i64 8, !1546, i64 48, i64 8, !1546, i64 56, i64 8, !1546, i64 64, i64 8, !1546, i64 72, i64 8, !1546, i64 80, i64 8, !1546, i64 88, i64 8, !1546, i64 96, i64 8, !1546, i64 104, i64 8, !1546, i64 112, i64 8, !1546, i64 120, i64 24, !1317}
!1546 = !{!1352, !1352, i64 0}
!1547 = !DILocation(line: 242, column: 1, scope: !1194, inlinedAt: !1254)
!1548 = distinct !{!1548, !1414, !1549}
!1549 = !DILocation(line: 289, column: 5, scope: !1256, inlinedAt: !1265)
!1550 = !DILocation(line: 292, column: 18, scope: !1551, inlinedAt: !1265)
!1551 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 292, column: 7)
!1552 = !DILocation(line: 292, column: 7, scope: !1551, inlinedAt: !1265)
!1553 = !DILocation(line: 292, column: 27, scope: !1551, inlinedAt: !1265)
!1554 = !DILocation(line: 292, column: 7, scope: !1256, inlinedAt: !1265)
!1555 = !DILocation(line: 293, column: 5, scope: !1551, inlinedAt: !1265)
!1556 = !DILocation(line: 389, column: 24, scope: !1185)
!1557 = !DILocation(line: 294, column: 1, scope: !1256, inlinedAt: !1265)
!1558 = !DILocation(line: 389, column: 7, scope: !1185)
!1559 = !DILocalVariable(name: "p", arg: 1, scope: !1560, file: !3, line: 78, type: !1187)
!1560 = distinct !DISubprogram(name: "file_name_free", scope: !3, file: !3, line: 78, type: !1257, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1561)
!1561 = !{!1559}
!1562 = !DILocation(line: 0, scope: !1560, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 390, column: 7, scope: !1185)
!1564 = !DILocation(line: 80, column: 12, scope: !1560, inlinedAt: !1563)
!1565 = !DILocation(line: 80, column: 3, scope: !1560, inlinedAt: !1563)
!1566 = !DILocation(line: 81, column: 3, scope: !1560, inlinedAt: !1563)
!1567 = !DILocation(line: 394, column: 1, scope: !1173)
!1568 = distinct !DISubprogram(name: "nth_parent", scope: !3, file: !3, line: 127, type: !1569, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!29, !88}
!1571 = !{!1572, !1573, !1574, !1575}
!1572 = !DILocalVariable(name: "n", arg: 1, scope: !1568, file: !3, line: 127, type: !88)
!1573 = !DILocalVariable(name: "buf", scope: !1568, file: !3, line: 129, type: !29)
!1574 = !DILocalVariable(name: "p", scope: !1568, file: !3, line: 130, type: !29)
!1575 = !DILocalVariable(name: "i", scope: !1576, file: !3, line: 132, type: !88)
!1576 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 132, column: 3)
!1577 = !DILocation(line: 0, scope: !1568)
!1578 = !DILocalVariable(name: "n", arg: 1, scope: !1579, file: !152, line: 99, type: !88)
!1579 = distinct !DISubprogram(name: "xnmalloc", scope: !152, file: !152, line: 99, type: !1580, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!86, !88, !88}
!1582 = !{!1578, !1583}
!1583 = !DILocalVariable(name: "s", arg: 2, scope: !1579, file: !152, line: 99, type: !88)
!1584 = !DILocation(line: 0, scope: !1579, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 129, column: 15, scope: !1568)
!1586 = !DILocation(line: 101, column: 7, scope: !1587, inlinedAt: !1585)
!1587 = distinct !DILexicalBlock(scope: !1579, file: !152, line: 101, column: 7)
!1588 = !DILocation(line: 101, column: 7, scope: !1579, inlinedAt: !1585)
!1589 = !DILocation(line: 102, column: 5, scope: !1587, inlinedAt: !1585)
!1590 = !DILocation(line: 103, column: 21, scope: !1579, inlinedAt: !1585)
!1591 = !DILocation(line: 103, column: 10, scope: !1579, inlinedAt: !1585)
!1592 = !DILocation(line: 0, scope: !1576)
!1593 = !DILocation(line: 132, column: 24, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 132, column: 3)
!1595 = !DILocation(line: 132, column: 3, scope: !1576)
!1596 = !DILocalVariable(name: "__dest", arg: 1, scope: !1597, file: !1598, line: 31, type: !1601)
!1597 = distinct !DISubprogram(name: "memcpy", scope: !1598, file: !1598, line: 31, type: !1599, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1603)
!1598 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!86, !1601, !1602, !88}
!1601 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!1602 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !340)
!1603 = !{!1596, !1604, !1605}
!1604 = !DILocalVariable(name: "__src", arg: 2, scope: !1597, file: !1598, line: 31, type: !1602)
!1605 = !DILocalVariable(name: "__len", arg: 3, scope: !1597, file: !1598, line: 31, type: !88)
!1606 = !DILocation(line: 0, scope: !1597, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 134, column: 7, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 133, column: 5)
!1609 = !DILocation(line: 34, column: 10, scope: !1597, inlinedAt: !1607)
!1610 = !DILocation(line: 135, column: 9, scope: !1608)
!1611 = distinct !{!1611, !1612}
!1612 = !{!"llvm.loop.unroll.disable"}
!1613 = !DILocation(line: 137, column: 3, scope: !1568)
!1614 = !DILocation(line: 137, column: 9, scope: !1568)
!1615 = !DILocation(line: 138, column: 3, scope: !1568)
!1616 = distinct !{!1616, !1595, !1617}
!1617 = !DILocation(line: 136, column: 5, scope: !1576)
!1618 = distinct !DISubprogram(name: "file_name_prepend", scope: !3, file: !3, line: 101, type: !1619, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1621)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !1187, !31, !88}
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1629, !1630}
!1622 = !DILocalVariable(name: "p", arg: 1, scope: !1618, file: !3, line: 101, type: !1187)
!1623 = !DILocalVariable(name: "s", arg: 2, scope: !1618, file: !3, line: 101, type: !31)
!1624 = !DILocalVariable(name: "s_len", arg: 3, scope: !1618, file: !3, line: 101, type: !88)
!1625 = !DILocalVariable(name: "n_free", scope: !1618, file: !3, line: 103, type: !88)
!1626 = !DILocalVariable(name: "half", scope: !1627, file: !3, line: 106, type: !88)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 105, column: 5)
!1628 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 104, column: 7)
!1629 = !DILocalVariable(name: "q", scope: !1627, file: !3, line: 111, type: !29)
!1630 = !DILocalVariable(name: "n_used", scope: !1627, file: !3, line: 112, type: !88)
!1631 = !DILocation(line: 0, scope: !1618)
!1632 = !DILocation(line: 103, column: 22, scope: !1618)
!1633 = !DILocation(line: 103, column: 33, scope: !1618)
!1634 = !DILocation(line: 103, column: 28, scope: !1618)
!1635 = !DILocation(line: 104, column: 18, scope: !1628)
!1636 = !DILocation(line: 104, column: 14, scope: !1628)
!1637 = !DILocation(line: 104, column: 7, scope: !1618)
!1638 = !DILocation(line: 106, column: 24, scope: !1627)
!1639 = !DILocation(line: 106, column: 36, scope: !1627)
!1640 = !DILocation(line: 0, scope: !1627)
!1641 = !DILocation(line: 0, scope: !1579, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 111, column: 17, scope: !1627)
!1643 = !DILocation(line: 101, column: 7, scope: !1587, inlinedAt: !1642)
!1644 = !DILocation(line: 101, column: 7, scope: !1579, inlinedAt: !1642)
!1645 = !DILocation(line: 102, column: 5, scope: !1587, inlinedAt: !1642)
!1646 = !DILocation(line: 103, column: 21, scope: !1579, inlinedAt: !1642)
!1647 = !DILocation(line: 103, column: 10, scope: !1579, inlinedAt: !1642)
!1648 = !DILocation(line: 112, column: 26, scope: !1627)
!1649 = !DILocation(line: 112, column: 34, scope: !1627)
!1650 = !DILocation(line: 113, column: 20, scope: !1627)
!1651 = !DILocation(line: 113, column: 31, scope: !1627)
!1652 = !DILocation(line: 113, column: 16, scope: !1627)
!1653 = !DILocation(line: 114, column: 28, scope: !1627)
!1654 = !DILocation(line: 114, column: 32, scope: !1627)
!1655 = !DILocation(line: 0, scope: !1597, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 114, column: 7, scope: !1627)
!1657 = !DILocation(line: 34, column: 10, scope: !1597, inlinedAt: !1656)
!1658 = !DILocation(line: 115, column: 7, scope: !1627)
!1659 = !DILocation(line: 116, column: 14, scope: !1627)
!1660 = !DILocation(line: 117, column: 18, scope: !1627)
!1661 = !DILocation(line: 120, column: 12, scope: !1618)
!1662 = !DILocation(line: 118, column: 5, scope: !1627)
!1663 = !DILocation(line: 121, column: 15, scope: !1618)
!1664 = !DILocation(line: 122, column: 14, scope: !1618)
!1665 = !DILocation(line: 122, column: 20, scope: !1618)
!1666 = !DILocation(line: 0, scope: !1597, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 122, column: 3, scope: !1618)
!1668 = !DILocation(line: 34, column: 10, scope: !1597, inlinedAt: !1667)
!1669 = !DILocation(line: 123, column: 1, scope: !1618)
!1670 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !221, file: !221, line: 51, type: !102, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !1671)
!1671 = !{!1672}
!1672 = !DILocalVariable(name: "file", arg: 1, scope: !1670, file: !221, line: 51, type: !31)
!1673 = !DILocation(line: 0, scope: !1670)
!1674 = !DILocation(line: 53, column: 13, scope: !1670)
!1675 = !DILocation(line: 54, column: 1, scope: !1670)
!1676 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !221, file: !221, line: 88, type: !1677, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !263}
!1679 = !{!1680}
!1680 = !DILocalVariable(name: "ignore", arg: 1, scope: !1676, file: !221, line: 88, type: !263)
!1681 = !DILocation(line: 0, scope: !1676)
!1682 = !DILocation(line: 90, column: 16, scope: !1676)
!1683 = !{!1684, !1684, i64 0}
!1684 = !{!"_Bool", !1133, i64 0}
!1685 = !DILocation(line: 91, column: 1, scope: !1676)
!1686 = distinct !DISubprogram(name: "close_stdout", scope: !221, file: !221, line: 117, type: !116, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !1687)
!1687 = !{!1688}
!1688 = !DILocalVariable(name: "write_error", scope: !1689, file: !221, line: 122, type: !31)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !221, line: 121, column: 5)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !221, line: 119, column: 7)
!1691 = !DILocation(line: 119, column: 21, scope: !1690)
!1692 = !DILocation(line: 119, column: 7, scope: !1690)
!1693 = !DILocation(line: 119, column: 29, scope: !1690)
!1694 = !DILocation(line: 120, column: 7, scope: !1690)
!1695 = !DILocation(line: 120, column: 12, scope: !1690)
!1696 = !{i8 0, i8 2}
!1697 = !DILocation(line: 120, column: 25, scope: !1690)
!1698 = !DILocation(line: 120, column: 28, scope: !1690)
!1699 = !DILocation(line: 120, column: 34, scope: !1690)
!1700 = !DILocation(line: 119, column: 7, scope: !1686)
!1701 = !DILocation(line: 122, column: 33, scope: !1689)
!1702 = !DILocation(line: 0, scope: !1689)
!1703 = !DILocation(line: 123, column: 11, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1689, file: !221, line: 123, column: 11)
!1705 = !DILocation(line: 0, scope: !1704)
!1706 = !DILocation(line: 123, column: 11, scope: !1689)
!1707 = !DILocation(line: 124, column: 36, scope: !1704)
!1708 = !DILocation(line: 124, column: 9, scope: !1704)
!1709 = !DILocation(line: 127, column: 9, scope: !1704)
!1710 = !DILocation(line: 129, column: 14, scope: !1689)
!1711 = !DILocation(line: 129, column: 7, scope: !1689)
!1712 = !DILocation(line: 134, column: 42, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1686, file: !221, line: 134, column: 7)
!1714 = !DILocation(line: 134, column: 28, scope: !1713)
!1715 = !DILocation(line: 134, column: 50, scope: !1713)
!1716 = !DILocation(line: 134, column: 7, scope: !1686)
!1717 = !DILocation(line: 135, column: 12, scope: !1713)
!1718 = !DILocation(line: 135, column: 5, scope: !1713)
!1719 = !DILocation(line: 136, column: 1, scope: !1686)
!1720 = distinct !DISubprogram(name: "set_program_name", scope: !273, file: !273, line: 39, type: !102, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1721)
!1721 = !{!1722, !1723, !1724}
!1722 = !DILocalVariable(name: "argv0", arg: 1, scope: !1720, file: !273, line: 39, type: !31)
!1723 = !DILocalVariable(name: "slash", scope: !1720, file: !273, line: 46, type: !31)
!1724 = !DILocalVariable(name: "base", scope: !1720, file: !273, line: 47, type: !31)
!1725 = !DILocation(line: 0, scope: !1720)
!1726 = !DILocation(line: 51, column: 13, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1720, file: !273, line: 51, column: 7)
!1728 = !DILocation(line: 51, column: 7, scope: !1720)
!1729 = !DILocation(line: 55, column: 14, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1727, file: !273, line: 52, column: 5)
!1731 = !DILocation(line: 54, column: 7, scope: !1730)
!1732 = !DILocation(line: 56, column: 7, scope: !1730)
!1733 = !DILocation(line: 59, column: 11, scope: !1720)
!1734 = !DILocation(line: 60, column: 17, scope: !1720)
!1735 = !DILocation(line: 60, column: 11, scope: !1720)
!1736 = !DILocation(line: 61, column: 12, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1720, file: !273, line: 61, column: 7)
!1738 = !DILocation(line: 61, column: 20, scope: !1737)
!1739 = !DILocation(line: 61, column: 25, scope: !1737)
!1740 = !DILocation(line: 61, column: 42, scope: !1737)
!1741 = !DILocation(line: 61, column: 28, scope: !1737)
!1742 = !DILocation(line: 61, column: 61, scope: !1737)
!1743 = !DILocation(line: 61, column: 7, scope: !1720)
!1744 = !DILocation(line: 64, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !273, line: 64, column: 11)
!1746 = distinct !DILexicalBlock(scope: !1737, file: !273, line: 62, column: 5)
!1747 = !DILocation(line: 64, column: 36, scope: !1745)
!1748 = !DILocation(line: 64, column: 11, scope: !1746)
!1749 = !DILocation(line: 66, column: 24, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !273, line: 65, column: 9)
!1751 = !DILocation(line: 70, column: 41, scope: !1750)
!1752 = !DILocation(line: 72, column: 9, scope: !1750)
!1753 = !DILocation(line: 84, column: 16, scope: !1720)
!1754 = !DILocation(line: 90, column: 27, scope: !1720)
!1755 = !DILocation(line: 92, column: 1, scope: !1720)
!1756 = distinct !DISubprogram(name: "clone_quoting_options", scope: !314, file: !314, line: 122, type: !1757, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1760)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!1759, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!1760 = !{!1761, !1762, !1763}
!1761 = !DILocalVariable(name: "o", arg: 1, scope: !1756, file: !314, line: 122, type: !1759)
!1762 = !DILocalVariable(name: "e", scope: !1756, file: !314, line: 124, type: !33)
!1763 = !DILocalVariable(name: "p", scope: !1756, file: !314, line: 125, type: !1759)
!1764 = !DILocation(line: 0, scope: !1756)
!1765 = !DILocation(line: 124, column: 11, scope: !1756)
!1766 = !DILocation(line: 125, column: 40, scope: !1756)
!1767 = !DILocation(line: 125, column: 31, scope: !1756)
!1768 = !DILocation(line: 127, column: 9, scope: !1756)
!1769 = !DILocation(line: 128, column: 3, scope: !1756)
!1770 = distinct !DISubprogram(name: "get_quoting_style", scope: !314, file: !314, line: 133, type: !1771, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!5, !346}
!1773 = !{!1774}
!1774 = !DILocalVariable(name: "o", arg: 1, scope: !1770, file: !314, line: 133, type: !346)
!1775 = !DILocation(line: 0, scope: !1770)
!1776 = !DILocation(line: 135, column: 11, scope: !1770)
!1777 = !DILocation(line: 135, column: 46, scope: !1770)
!1778 = !{!1779, !1133, i64 0}
!1779 = !{!"quoting_options", !1133, i64 0, !1302, i64 4, !1133, i64 8, !1132, i64 40, !1132, i64 48}
!1780 = !DILocation(line: 135, column: 3, scope: !1770)
!1781 = distinct !DISubprogram(name: "set_quoting_style", scope: !314, file: !314, line: 141, type: !1782, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1759, !5}
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "o", arg: 1, scope: !1781, file: !314, line: 141, type: !1759)
!1786 = !DILocalVariable(name: "s", arg: 2, scope: !1781, file: !314, line: 141, type: !5)
!1787 = !DILocation(line: 0, scope: !1781)
!1788 = !DILocation(line: 143, column: 4, scope: !1781)
!1789 = !DILocation(line: 143, column: 39, scope: !1781)
!1790 = !DILocation(line: 143, column: 45, scope: !1781)
!1791 = !DILocation(line: 144, column: 1, scope: !1781)
!1792 = distinct !DISubprogram(name: "set_char_quoting", scope: !314, file: !314, line: 152, type: !1793, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1795)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!33, !1759, !30, !33}
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1802, !1803}
!1796 = !DILocalVariable(name: "o", arg: 1, scope: !1792, file: !314, line: 152, type: !1759)
!1797 = !DILocalVariable(name: "c", arg: 2, scope: !1792, file: !314, line: 152, type: !30)
!1798 = !DILocalVariable(name: "i", arg: 3, scope: !1792, file: !314, line: 152, type: !33)
!1799 = !DILocalVariable(name: "uc", scope: !1792, file: !314, line: 154, type: !204)
!1800 = !DILocalVariable(name: "p", scope: !1792, file: !314, line: 155, type: !1801)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1802 = !DILocalVariable(name: "shift", scope: !1792, file: !314, line: 157, type: !33)
!1803 = !DILocalVariable(name: "r", scope: !1792, file: !314, line: 158, type: !33)
!1804 = !DILocation(line: 0, scope: !1792)
!1805 = !DILocation(line: 156, column: 6, scope: !1792)
!1806 = !DILocation(line: 156, column: 62, scope: !1792)
!1807 = !DILocation(line: 156, column: 57, scope: !1792)
!1808 = !DILocation(line: 157, column: 15, scope: !1792)
!1809 = !DILocation(line: 158, column: 12, scope: !1792)
!1810 = !DILocation(line: 158, column: 15, scope: !1792)
!1811 = !DILocation(line: 158, column: 25, scope: !1792)
!1812 = !DILocation(line: 159, column: 13, scope: !1792)
!1813 = !DILocation(line: 159, column: 18, scope: !1792)
!1814 = !DILocation(line: 159, column: 23, scope: !1792)
!1815 = !DILocation(line: 159, column: 6, scope: !1792)
!1816 = !DILocation(line: 160, column: 3, scope: !1792)
!1817 = distinct !DISubprogram(name: "set_quoting_flags", scope: !314, file: !314, line: 168, type: !1818, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!33, !1759, !33}
!1820 = !{!1821, !1822, !1823}
!1821 = !DILocalVariable(name: "o", arg: 1, scope: !1817, file: !314, line: 168, type: !1759)
!1822 = !DILocalVariable(name: "i", arg: 2, scope: !1817, file: !314, line: 168, type: !33)
!1823 = !DILocalVariable(name: "r", scope: !1817, file: !314, line: 170, type: !33)
!1824 = !DILocation(line: 0, scope: !1817)
!1825 = !DILocation(line: 171, column: 8, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1817, file: !314, line: 171, column: 7)
!1827 = !DILocation(line: 171, column: 7, scope: !1817)
!1828 = !DILocation(line: 173, column: 10, scope: !1817)
!1829 = !{!1779, !1302, i64 4}
!1830 = !DILocation(line: 174, column: 12, scope: !1817)
!1831 = !DILocation(line: 175, column: 3, scope: !1817)
!1832 = distinct !DISubprogram(name: "set_custom_quoting", scope: !314, file: !314, line: 179, type: !1833, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1759, !31, !31}
!1835 = !{!1836, !1837, !1838}
!1836 = !DILocalVariable(name: "o", arg: 1, scope: !1832, file: !314, line: 179, type: !1759)
!1837 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1832, file: !314, line: 180, type: !31)
!1838 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1832, file: !314, line: 180, type: !31)
!1839 = !DILocation(line: 0, scope: !1832)
!1840 = !DILocation(line: 182, column: 8, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !314, line: 182, column: 7)
!1842 = !DILocation(line: 182, column: 7, scope: !1832)
!1843 = !DILocation(line: 184, column: 6, scope: !1832)
!1844 = !DILocation(line: 184, column: 12, scope: !1832)
!1845 = !DILocation(line: 185, column: 8, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1832, file: !314, line: 185, column: 7)
!1847 = !DILocation(line: 185, column: 23, scope: !1846)
!1848 = !DILocation(line: 185, column: 19, scope: !1846)
!1849 = !DILocation(line: 186, column: 5, scope: !1846)
!1850 = !DILocation(line: 187, column: 6, scope: !1832)
!1851 = !DILocation(line: 187, column: 17, scope: !1832)
!1852 = !{!1779, !1132, i64 40}
!1853 = !DILocation(line: 188, column: 6, scope: !1832)
!1854 = !DILocation(line: 188, column: 18, scope: !1832)
!1855 = !{!1779, !1132, i64 48}
!1856 = !DILocation(line: 189, column: 1, scope: !1832)
!1857 = distinct !DISubprogram(name: "quotearg_buffer", scope: !314, file: !314, line: 784, type: !1858, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!88, !29, !88, !31, !88, !346}
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1861 = !DILocalVariable(name: "buffer", arg: 1, scope: !1857, file: !314, line: 784, type: !29)
!1862 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1857, file: !314, line: 784, type: !88)
!1863 = !DILocalVariable(name: "arg", arg: 3, scope: !1857, file: !314, line: 785, type: !31)
!1864 = !DILocalVariable(name: "argsize", arg: 4, scope: !1857, file: !314, line: 785, type: !88)
!1865 = !DILocalVariable(name: "o", arg: 5, scope: !1857, file: !314, line: 786, type: !346)
!1866 = !DILocalVariable(name: "p", scope: !1857, file: !314, line: 788, type: !346)
!1867 = !DILocalVariable(name: "e", scope: !1857, file: !314, line: 789, type: !33)
!1868 = !DILocalVariable(name: "r", scope: !1857, file: !314, line: 790, type: !88)
!1869 = !DILocation(line: 0, scope: !1857)
!1870 = !DILocation(line: 788, column: 37, scope: !1857)
!1871 = !DILocation(line: 789, column: 11, scope: !1857)
!1872 = !DILocation(line: 791, column: 43, scope: !1857)
!1873 = !DILocation(line: 791, column: 53, scope: !1857)
!1874 = !DILocation(line: 791, column: 60, scope: !1857)
!1875 = !DILocation(line: 792, column: 43, scope: !1857)
!1876 = !DILocation(line: 792, column: 58, scope: !1857)
!1877 = !DILocation(line: 790, column: 14, scope: !1857)
!1878 = !DILocation(line: 793, column: 9, scope: !1857)
!1879 = !DILocation(line: 794, column: 3, scope: !1857)
!1880 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !314, file: !314, line: 256, type: !1881, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1885)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!88, !29, !88, !31, !88, !5, !33, !1883, !31, !31}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1910, !1911, !1912, !1913, !1914, !1917, !1918, !1924, !1927, !1928, !1935, !1938, !1939, !1940, !1941, !1942, !1943}
!1886 = !DILocalVariable(name: "buffer", arg: 1, scope: !1880, file: !314, line: 256, type: !29)
!1887 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1880, file: !314, line: 256, type: !88)
!1888 = !DILocalVariable(name: "arg", arg: 3, scope: !1880, file: !314, line: 257, type: !31)
!1889 = !DILocalVariable(name: "argsize", arg: 4, scope: !1880, file: !314, line: 257, type: !88)
!1890 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1880, file: !314, line: 258, type: !5)
!1891 = !DILocalVariable(name: "flags", arg: 6, scope: !1880, file: !314, line: 258, type: !33)
!1892 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1880, file: !314, line: 259, type: !1883)
!1893 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1880, file: !314, line: 260, type: !31)
!1894 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1880, file: !314, line: 261, type: !31)
!1895 = !DILocalVariable(name: "i", scope: !1880, file: !314, line: 263, type: !88)
!1896 = !DILocalVariable(name: "len", scope: !1880, file: !314, line: 264, type: !88)
!1897 = !DILocalVariable(name: "orig_buffersize", scope: !1880, file: !314, line: 265, type: !88)
!1898 = !DILocalVariable(name: "quote_string", scope: !1880, file: !314, line: 266, type: !31)
!1899 = !DILocalVariable(name: "quote_string_len", scope: !1880, file: !314, line: 267, type: !88)
!1900 = !DILocalVariable(name: "backslash_escapes", scope: !1880, file: !314, line: 268, type: !263)
!1901 = !DILocalVariable(name: "unibyte_locale", scope: !1880, file: !314, line: 269, type: !263)
!1902 = !DILocalVariable(name: "elide_outer_quotes", scope: !1880, file: !314, line: 270, type: !263)
!1903 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1880, file: !314, line: 271, type: !263)
!1904 = !DILocalVariable(name: "encountered_single_quote", scope: !1880, file: !314, line: 272, type: !263)
!1905 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1880, file: !314, line: 273, type: !263)
!1906 = !DILocalVariable(name: "c", scope: !1907, file: !314, line: 402, type: !204)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !314, line: 401, column: 5)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !314, line: 400, column: 3)
!1909 = distinct !DILexicalBlock(scope: !1880, file: !314, line: 400, column: 3)
!1910 = !DILocalVariable(name: "esc", scope: !1907, file: !314, line: 403, type: !204)
!1911 = !DILocalVariable(name: "is_right_quote", scope: !1907, file: !314, line: 404, type: !263)
!1912 = !DILocalVariable(name: "escaping", scope: !1907, file: !314, line: 405, type: !263)
!1913 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1907, file: !314, line: 406, type: !263)
!1914 = !DILocalVariable(name: "m", scope: !1915, file: !314, line: 610, type: !88)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 608, column: 11)
!1916 = distinct !DILexicalBlock(scope: !1907, file: !314, line: 426, column: 9)
!1917 = !DILocalVariable(name: "printable", scope: !1915, file: !314, line: 612, type: !263)
!1918 = !DILocalVariable(name: "mbstate", scope: !1919, file: !314, line: 621, type: !1921)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !314, line: 620, column: 15)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !314, line: 614, column: 17)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1922, line: 6, baseType: !1923)
!1922 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !367, line: 21, baseType: !366)
!1924 = !DILocalVariable(name: "w", scope: !1925, file: !314, line: 631, type: !1926)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !314, line: 630, column: 19)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !89, line: 74, baseType: !33)
!1927 = !DILocalVariable(name: "bytes", scope: !1925, file: !314, line: 632, type: !88)
!1928 = !DILocalVariable(name: "j", scope: !1929, file: !314, line: 657, type: !88)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !314, line: 656, column: 27)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !314, line: 654, column: 29)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !314, line: 649, column: 23)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !314, line: 641, column: 30)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !314, line: 636, column: 30)
!1934 = distinct !DILexicalBlock(scope: !1925, file: !314, line: 634, column: 25)
!1935 = !DILocalVariable(name: "ilim", scope: !1936, file: !314, line: 684, type: !88)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !314, line: 681, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1915, file: !314, line: 680, column: 17)
!1938 = !DILabel(scope: !1880, name: "process_input", file: !314, line: 314)
!1939 = !DILabel(scope: !1916, name: "c_and_shell_escape", file: !314, line: 512)
!1940 = !DILabel(scope: !1916, name: "c_escape", file: !314, line: 517)
!1941 = !DILabel(scope: !1907, name: "store_escape", file: !314, line: 719)
!1942 = !DILabel(scope: !1907, name: "store_c", file: !314, line: 722)
!1943 = !DILabel(scope: !1880, name: "force_outer_quoting_style", file: !314, line: 763)
!1944 = !DILocation(line: 0, scope: !1880)
!1945 = !DILocation(line: 269, column: 25, scope: !1880)
!1946 = !DILocation(line: 269, column: 36, scope: !1880)
!1947 = !DILocation(line: 270, column: 8, scope: !1880)
!1948 = !DILocation(line: 0, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 526, column: 15)
!1950 = !DILocation(line: 0, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !314, line: 462, column: 19)
!1952 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 455, column: 13)
!1953 = !DILocation(line: 0, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !314, line: 449, column: 20)
!1955 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 428, column: 15)
!1956 = !DILocation(line: 0, scope: !1919)
!1957 = !DILocation(line: 0, scope: !1925)
!1958 = !DILocation(line: 0, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1907, file: !314, line: 712, column: 11)
!1960 = !DILocation(line: 273, column: 3, scope: !1880)
!1961 = !DILocation(line: 265, column: 10, scope: !1880)
!1962 = !DILocation(line: 266, column: 15, scope: !1880)
!1963 = !DILocation(line: 267, column: 10, scope: !1880)
!1964 = !DILocation(line: 268, column: 8, scope: !1880)
!1965 = !DILocation(line: 271, column: 8, scope: !1880)
!1966 = !DILocation(line: 272, column: 8, scope: !1880)
!1967 = !DILocation(line: 273, column: 8, scope: !1880)
!1968 = !DILocation(line: 314, column: 2, scope: !1880)
!1969 = !DILocation(line: 316, column: 3, scope: !1880)
!1970 = !DILocation(line: 323, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1880, file: !314, line: 317, column: 5)
!1972 = !DILocation(line: 323, column: 12, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1971, file: !314, line: 323, column: 11)
!1974 = !DILocation(line: 324, column: 9, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !314, line: 324, column: 9)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !314, line: 324, column: 9)
!1977 = !DILocation(line: 324, column: 9, scope: !1976)
!1978 = !DILocation(line: 362, column: 26, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !314, line: 340, column: 11)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !314, line: 339, column: 13)
!1981 = distinct !DILexicalBlock(scope: !1971, file: !314, line: 338, column: 7)
!1982 = !DILocation(line: 363, column: 27, scope: !1979)
!1983 = !DILocation(line: 364, column: 11, scope: !1979)
!1984 = !DILocation(line: 365, column: 14, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !314, line: 365, column: 13)
!1986 = !DILocation(line: 365, column: 13, scope: !1981)
!1987 = !DILocation(line: 366, column: 43, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !314, line: 366, column: 11)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !314, line: 366, column: 11)
!1990 = !DILocation(line: 366, column: 11, scope: !1989)
!1991 = !DILocation(line: 367, column: 13, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !314, line: 367, column: 13)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !314, line: 367, column: 13)
!1994 = !DILocation(line: 367, column: 13, scope: !1993)
!1995 = !DILocation(line: 366, column: 70, scope: !1988)
!1996 = distinct !{!1996, !1990, !1997}
!1997 = !DILocation(line: 367, column: 13, scope: !1989)
!1998 = !DILocation(line: 264, column: 10, scope: !1880)
!1999 = !DILocation(line: 370, column: 28, scope: !1981)
!2000 = !DILocation(line: 372, column: 7, scope: !1971)
!2001 = !DILocation(line: 376, column: 7, scope: !1971)
!2002 = !DILocation(line: 379, column: 7, scope: !1971)
!2003 = !DILocation(line: 381, column: 12, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1971, file: !314, line: 381, column: 11)
!2005 = !DILocation(line: 381, column: 11, scope: !1971)
!2006 = !DILocation(line: 386, column: 12, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1971, file: !314, line: 386, column: 11)
!2008 = !DILocation(line: 386, column: 11, scope: !1971)
!2009 = !DILocation(line: 387, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !314, line: 387, column: 9)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !314, line: 387, column: 9)
!2012 = !DILocation(line: 387, column: 9, scope: !2011)
!2013 = !DILocation(line: 394, column: 7, scope: !1971)
!2014 = !DILocation(line: 397, column: 7, scope: !1971)
!2015 = !DILocation(line: 0, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1907, file: !314, line: 408, column: 11)
!2017 = !DILocation(line: 0, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !314, line: 419, column: 15)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !314, line: 418, column: 9)
!2020 = !DILocation(line: 0, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 556, column: 15)
!2022 = !DILocation(line: 0, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 548, column: 15)
!2024 = !DILocation(line: 0, scope: !1930)
!2025 = !DILocation(line: 0, scope: !1937)
!2026 = !DILocation(line: 0, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 509, column: 15)
!2028 = !DILocation(line: 400, column: 8, scope: !1909)
!2029 = !DILocation(line: 0, scope: !1909)
!2030 = !DILocation(line: 400, column: 27, scope: !1908)
!2031 = !DILocation(line: 400, column: 19, scope: !1908)
!2032 = !DILocation(line: 400, column: 41, scope: !1908)
!2033 = !DILocation(line: 400, column: 48, scope: !1908)
!2034 = !DILocation(line: 400, column: 3, scope: !1909)
!2035 = !DILocation(line: 400, column: 60, scope: !1908)
!2036 = !DILocation(line: 0, scope: !1907)
!2037 = !DILocation(line: 409, column: 11, scope: !2016)
!2038 = !DILocation(line: 411, column: 17, scope: !2016)
!2039 = !DILocation(line: 412, column: 39, scope: !2016)
!2040 = !DILocation(line: 416, column: 32, scope: !2016)
!2041 = !DILocation(line: 412, column: 19, scope: !2016)
!2042 = !DILocation(line: 412, column: 15, scope: !2016)
!2043 = !DILocation(line: 417, column: 11, scope: !2016)
!2044 = !DILocation(line: 417, column: 26, scope: !2016)
!2045 = !DILocation(line: 417, column: 14, scope: !2016)
!2046 = !DILocation(line: 417, column: 63, scope: !2016)
!2047 = !DILocation(line: 408, column: 11, scope: !1907)
!2048 = !DILocation(line: 424, column: 11, scope: !1907)
!2049 = !DILocation(line: 425, column: 7, scope: !1907)
!2050 = !DILocation(line: 428, column: 15, scope: !1916)
!2051 = !DILocation(line: 430, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !314, line: 430, column: 15)
!2053 = distinct !DILexicalBlock(scope: !1955, file: !314, line: 429, column: 13)
!2054 = !DILocation(line: 430, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !314, line: 430, column: 15)
!2056 = !DILocation(line: 430, column: 15, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !314, line: 430, column: 15)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !314, line: 430, column: 15)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !314, line: 430, column: 15)
!2060 = !DILocation(line: 430, column: 15, scope: !2058)
!2061 = !DILocation(line: 430, column: 15, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !314, line: 430, column: 15)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !314, line: 430, column: 15)
!2064 = !DILocation(line: 430, column: 15, scope: !2063)
!2065 = !DILocation(line: 430, column: 15, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !314, line: 430, column: 15)
!2067 = distinct !DILexicalBlock(scope: !2059, file: !314, line: 430, column: 15)
!2068 = !DILocation(line: 430, column: 15, scope: !2067)
!2069 = !DILocation(line: 430, column: 15, scope: !2059)
!2070 = !DILocation(line: 430, column: 15, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !314, line: 430, column: 15)
!2072 = distinct !DILexicalBlock(scope: !2052, file: !314, line: 430, column: 15)
!2073 = !DILocation(line: 430, column: 15, scope: !2072)
!2074 = !DILocation(line: 438, column: 19, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2053, file: !314, line: 437, column: 19)
!2076 = !DILocation(line: 438, column: 24, scope: !2075)
!2077 = !DILocation(line: 438, column: 28, scope: !2075)
!2078 = !DILocation(line: 438, column: 38, scope: !2075)
!2079 = !DILocation(line: 438, column: 48, scope: !2075)
!2080 = !DILocation(line: 438, column: 59, scope: !2075)
!2081 = !DILocation(line: 440, column: 19, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !314, line: 440, column: 19)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !314, line: 440, column: 19)
!2084 = distinct !DILexicalBlock(scope: !2075, file: !314, line: 439, column: 17)
!2085 = !DILocation(line: 440, column: 19, scope: !2083)
!2086 = !DILocation(line: 441, column: 19, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !314, line: 441, column: 19)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !314, line: 441, column: 19)
!2089 = !DILocation(line: 441, column: 19, scope: !2088)
!2090 = !DILocation(line: 442, column: 17, scope: !2084)
!2091 = !DILocation(line: 449, column: 20, scope: !1955)
!2092 = !DILocation(line: 454, column: 11, scope: !1916)
!2093 = !DILocation(line: 457, column: 19, scope: !1952)
!2094 = !DILocation(line: 463, column: 19, scope: !1951)
!2095 = !DILocation(line: 463, column: 24, scope: !1951)
!2096 = !DILocation(line: 463, column: 28, scope: !1951)
!2097 = !DILocation(line: 463, column: 38, scope: !1951)
!2098 = !DILocation(line: 463, column: 47, scope: !1951)
!2099 = !DILocation(line: 463, column: 41, scope: !1951)
!2100 = !DILocation(line: 463, column: 52, scope: !1951)
!2101 = !DILocation(line: 462, column: 19, scope: !1952)
!2102 = !DILocation(line: 464, column: 25, scope: !1951)
!2103 = !DILocation(line: 464, column: 17, scope: !1951)
!2104 = !DILocation(line: 471, column: 25, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1951, file: !314, line: 465, column: 19)
!2106 = !DILocation(line: 475, column: 21, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !314, line: 475, column: 21)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !314, line: 475, column: 21)
!2109 = !DILocation(line: 475, column: 21, scope: !2108)
!2110 = !DILocation(line: 476, column: 21, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !314, line: 476, column: 21)
!2112 = distinct !DILexicalBlock(scope: !2105, file: !314, line: 476, column: 21)
!2113 = !DILocation(line: 476, column: 21, scope: !2112)
!2114 = !DILocation(line: 477, column: 21, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !314, line: 477, column: 21)
!2116 = distinct !DILexicalBlock(scope: !2105, file: !314, line: 477, column: 21)
!2117 = !DILocation(line: 477, column: 21, scope: !2116)
!2118 = !DILocation(line: 478, column: 21, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !314, line: 478, column: 21)
!2120 = distinct !DILexicalBlock(scope: !2105, file: !314, line: 478, column: 21)
!2121 = !DILocation(line: 478, column: 21, scope: !2120)
!2122 = !DILocation(line: 479, column: 21, scope: !2105)
!2123 = !DILocation(line: 492, column: 31, scope: !1916)
!2124 = !DILocation(line: 493, column: 31, scope: !1916)
!2125 = !DILocation(line: 495, column: 31, scope: !1916)
!2126 = !DILocation(line: 496, column: 31, scope: !1916)
!2127 = !DILocation(line: 497, column: 31, scope: !1916)
!2128 = !DILocation(line: 500, column: 15, scope: !1916)
!2129 = !DILocation(line: 502, column: 19, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !314, line: 501, column: 13)
!2131 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 500, column: 15)
!2132 = !DILocation(line: 509, column: 33, scope: !2027)
!2133 = !DILocation(line: 0, scope: !1916)
!2134 = !DILocation(line: 512, column: 9, scope: !1916)
!2135 = !DILocation(line: 514, column: 15, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 513, column: 15)
!2137 = !DILocation(line: 517, column: 9, scope: !1916)
!2138 = !DILocation(line: 518, column: 15, scope: !1916)
!2139 = !DILocation(line: 526, column: 15, scope: !1916)
!2140 = !DILocation(line: 526, column: 40, scope: !1949)
!2141 = !DILocation(line: 526, column: 47, scope: !1949)
!2142 = !DILocation(line: 526, column: 18, scope: !1949)
!2143 = !DILocation(line: 530, column: 17, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1916, file: !314, line: 530, column: 15)
!2145 = !DILocation(line: 530, column: 15, scope: !1916)
!2146 = !DILocation(line: 535, column: 11, scope: !1916)
!2147 = !DILocation(line: 549, column: 15, scope: !2023)
!2148 = !DILocation(line: 556, column: 15, scope: !1916)
!2149 = !DILocation(line: 558, column: 19, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2021, file: !314, line: 557, column: 13)
!2151 = !DILocation(line: 561, column: 19, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2150, file: !314, line: 561, column: 19)
!2153 = !DILocation(line: 561, column: 35, scope: !2152)
!2154 = !DILocation(line: 561, column: 30, scope: !2152)
!2155 = !DILocation(line: 570, column: 15, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !314, line: 570, column: 15)
!2157 = distinct !DILexicalBlock(scope: !2150, file: !314, line: 570, column: 15)
!2158 = !DILocation(line: 570, column: 15, scope: !2157)
!2159 = !DILocation(line: 571, column: 15, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !314, line: 571, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2150, file: !314, line: 571, column: 15)
!2162 = !DILocation(line: 571, column: 15, scope: !2161)
!2163 = !DILocation(line: 572, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !314, line: 572, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2150, file: !314, line: 572, column: 15)
!2166 = !DILocation(line: 572, column: 15, scope: !2165)
!2167 = !DILocation(line: 574, column: 13, scope: !2150)
!2168 = !DILocation(line: 614, column: 17, scope: !1915)
!2169 = !DILocation(line: 0, scope: !1915)
!2170 = !DILocation(line: 617, column: 29, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !1920, file: !314, line: 615, column: 15)
!2172 = !{!1504, !1504, i64 0}
!2173 = !DILocation(line: 617, column: 27, scope: !2171)
!2174 = !DILocation(line: 618, column: 15, scope: !2171)
!2175 = !DILocation(line: 621, column: 17, scope: !1919)
!2176 = !DILocation(line: 621, column: 27, scope: !1919)
!2177 = !DILocalVariable(name: "__dest", arg: 1, scope: !2178, file: !1598, line: 59, type: !86)
!2178 = distinct !DISubprogram(name: "memset", scope: !1598, file: !1598, line: 59, type: !2179, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!86, !86, !33, !88}
!2181 = !{!2177, !2182, !2183}
!2182 = !DILocalVariable(name: "__ch", arg: 2, scope: !2178, file: !1598, line: 59, type: !33)
!2183 = !DILocalVariable(name: "__len", arg: 3, scope: !2178, file: !1598, line: 59, type: !88)
!2184 = !DILocation(line: 0, scope: !2178, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 622, column: 17, scope: !1919)
!2186 = !DILocation(line: 71, column: 10, scope: !2178, inlinedAt: !2185)
!2187 = !DILocation(line: 626, column: 29, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1919, file: !314, line: 626, column: 21)
!2189 = !DILocation(line: 626, column: 21, scope: !1919)
!2190 = !DILocation(line: 627, column: 29, scope: !2188)
!2191 = !DILocation(line: 627, column: 19, scope: !2188)
!2192 = !DILocation(line: 629, column: 17, scope: !1919)
!2193 = !DILocation(line: 624, column: 19, scope: !1919)
!2194 = !DILocation(line: 625, column: 27, scope: !1919)
!2195 = !DILocation(line: 631, column: 21, scope: !1925)
!2196 = !DILocation(line: 632, column: 56, scope: !1925)
!2197 = !DILocation(line: 632, column: 50, scope: !1925)
!2198 = !DILocation(line: 633, column: 53, scope: !1925)
!2199 = !DILocation(line: 632, column: 36, scope: !1925)
!2200 = !DILocation(line: 634, column: 25, scope: !1925)
!2201 = !DILocation(line: 644, column: 38, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !1932, file: !314, line: 642, column: 23)
!2203 = !DILocation(line: 644, column: 48, scope: !2202)
!2204 = !DILocation(line: 644, column: 25, scope: !2202)
!2205 = !DILocation(line: 644, column: 51, scope: !2202)
!2206 = !DILocation(line: 645, column: 28, scope: !2202)
!2207 = !DILocation(line: 644, column: 34, scope: !2202)
!2208 = distinct !{!2208, !2204, !2206}
!2209 = !DILocation(line: 658, column: 43, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !314, line: 658, column: 29)
!2211 = distinct !DILexicalBlock(scope: !1929, file: !314, line: 658, column: 29)
!2212 = !DILocation(line: 655, column: 29, scope: !1930)
!2213 = !DILocation(line: 0, scope: !1929)
!2214 = !DILocation(line: 659, column: 49, scope: !2210)
!2215 = !DILocation(line: 659, column: 39, scope: !2210)
!2216 = !DILocation(line: 659, column: 31, scope: !2210)
!2217 = !DILocation(line: 658, column: 53, scope: !2210)
!2218 = !DILocation(line: 658, column: 29, scope: !2211)
!2219 = distinct !{!2219, !2218, !2220}
!2220 = !DILocation(line: 667, column: 33, scope: !2211)
!2221 = !DILocation(line: 674, column: 19, scope: !1919)
!2222 = !DILocation(line: 670, column: 41, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !1931, file: !314, line: 670, column: 29)
!2224 = !DILocation(line: 670, column: 31, scope: !2223)
!2225 = !DILocation(line: 670, column: 29, scope: !1931)
!2226 = !DILocation(line: 672, column: 27, scope: !1931)
!2227 = !DILocation(line: 675, column: 26, scope: !1919)
!2228 = !DILocation(line: 675, column: 24, scope: !1919)
!2229 = !DILocation(line: 674, column: 19, scope: !1925)
!2230 = distinct !{!2230, !2192, !2231}
!2231 = !DILocation(line: 675, column: 44, scope: !1919)
!2232 = !DILocation(line: 676, column: 15, scope: !1920)
!2233 = !DILocation(line: 0, scope: !1920)
!2234 = !DILocation(line: 678, column: 40, scope: !1915)
!2235 = !DILocation(line: 680, column: 19, scope: !1937)
!2236 = !DILocation(line: 680, column: 45, scope: !1937)
!2237 = !DILocation(line: 680, column: 23, scope: !1937)
!2238 = !DILocation(line: 684, column: 33, scope: !1936)
!2239 = !DILocation(line: 0, scope: !1936)
!2240 = !DILocation(line: 686, column: 17, scope: !1936)
!2241 = !DILocation(line: 405, column: 12, scope: !1907)
!2242 = !DILocation(line: 688, column: 43, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !314, line: 688, column: 25)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !314, line: 687, column: 19)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !314, line: 686, column: 17)
!2246 = distinct !DILexicalBlock(scope: !1936, file: !314, line: 686, column: 17)
!2247 = !DILocation(line: 690, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !314, line: 690, column: 25)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !314, line: 689, column: 23)
!2250 = !DILocation(line: 690, column: 25, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !314, line: 690, column: 25)
!2252 = !DILocation(line: 690, column: 25, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !314, line: 690, column: 25)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !314, line: 690, column: 25)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !314, line: 690, column: 25)
!2256 = !DILocation(line: 690, column: 25, scope: !2254)
!2257 = !DILocation(line: 690, column: 25, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !314, line: 690, column: 25)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !314, line: 690, column: 25)
!2260 = !DILocation(line: 690, column: 25, scope: !2259)
!2261 = !DILocation(line: 690, column: 25, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !314, line: 690, column: 25)
!2263 = distinct !DILexicalBlock(scope: !2255, file: !314, line: 690, column: 25)
!2264 = !DILocation(line: 690, column: 25, scope: !2263)
!2265 = !DILocation(line: 690, column: 25, scope: !2255)
!2266 = !DILocation(line: 690, column: 25, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !314, line: 690, column: 25)
!2268 = distinct !DILexicalBlock(scope: !2248, file: !314, line: 690, column: 25)
!2269 = !DILocation(line: 690, column: 25, scope: !2268)
!2270 = !DILocation(line: 691, column: 25, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !314, line: 691, column: 25)
!2272 = distinct !DILexicalBlock(scope: !2249, file: !314, line: 691, column: 25)
!2273 = !DILocation(line: 691, column: 25, scope: !2272)
!2274 = !DILocation(line: 692, column: 25, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !314, line: 692, column: 25)
!2276 = distinct !DILexicalBlock(scope: !2249, file: !314, line: 692, column: 25)
!2277 = !DILocation(line: 692, column: 25, scope: !2276)
!2278 = !DILocation(line: 693, column: 38, scope: !2249)
!2279 = !DILocation(line: 693, column: 33, scope: !2249)
!2280 = !DILocation(line: 694, column: 23, scope: !2249)
!2281 = !DILocation(line: 695, column: 30, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2243, file: !314, line: 695, column: 30)
!2283 = !DILocation(line: 695, column: 30, scope: !2243)
!2284 = !DILocation(line: 697, column: 25, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !314, line: 697, column: 25)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !314, line: 697, column: 25)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !314, line: 696, column: 23)
!2288 = !DILocation(line: 697, column: 25, scope: !2286)
!2289 = !DILocation(line: 699, column: 23, scope: !2287)
!2290 = !DILocation(line: 700, column: 35, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2244, file: !314, line: 700, column: 25)
!2292 = !DILocation(line: 700, column: 30, scope: !2291)
!2293 = !DILocation(line: 700, column: 25, scope: !2244)
!2294 = !DILocation(line: 702, column: 21, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !314, line: 702, column: 21)
!2296 = distinct !DILexicalBlock(scope: !2244, file: !314, line: 702, column: 21)
!2297 = !DILocation(line: 702, column: 21, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !314, line: 702, column: 21)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !314, line: 702, column: 21)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !314, line: 702, column: 21)
!2301 = !DILocation(line: 702, column: 21, scope: !2299)
!2302 = !DILocation(line: 702, column: 21, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !314, line: 702, column: 21)
!2304 = distinct !DILexicalBlock(scope: !2300, file: !314, line: 702, column: 21)
!2305 = !DILocation(line: 702, column: 21, scope: !2304)
!2306 = !DILocation(line: 702, column: 21, scope: !2300)
!2307 = !DILocation(line: 0, scope: !2244)
!2308 = !DILocation(line: 703, column: 21, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !314, line: 703, column: 21)
!2310 = distinct !DILexicalBlock(scope: !2244, file: !314, line: 703, column: 21)
!2311 = !DILocation(line: 703, column: 21, scope: !2310)
!2312 = !DILocation(line: 704, column: 25, scope: !2244)
!2313 = !DILocation(line: 686, column: 17, scope: !2245)
!2314 = distinct !{!2314, !2315, !2316}
!2315 = !DILocation(line: 686, column: 17, scope: !2246)
!2316 = !DILocation(line: 705, column: 19, scope: !2246)
!2317 = !DILocation(line: 416, column: 30, scope: !2016)
!2318 = !DILocation(line: 712, column: 34, scope: !1959)
!2319 = !DILocation(line: 715, column: 35, scope: !1959)
!2320 = !DILocation(line: 715, column: 17, scope: !1959)
!2321 = !DILocation(line: 715, column: 47, scope: !1959)
!2322 = !DILocation(line: 715, column: 65, scope: !1959)
!2323 = !DILocation(line: 716, column: 15, scope: !1959)
!2324 = !DILocation(line: 716, column: 11, scope: !1959)
!2325 = !DILocation(line: 712, column: 11, scope: !1907)
!2326 = !DILocation(line: 400, column: 10, scope: !1909)
!2327 = !DILocation(line: 719, column: 5, scope: !1907)
!2328 = !DILocation(line: 720, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !1907, file: !314, line: 720, column: 7)
!2330 = !DILocation(line: 720, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2329, file: !314, line: 720, column: 7)
!2332 = !DILocation(line: 720, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !314, line: 720, column: 7)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !314, line: 720, column: 7)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !314, line: 720, column: 7)
!2336 = !DILocation(line: 720, column: 7, scope: !2334)
!2337 = !DILocation(line: 720, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !314, line: 720, column: 7)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !314, line: 720, column: 7)
!2340 = !DILocation(line: 720, column: 7, scope: !2339)
!2341 = !DILocation(line: 720, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !314, line: 720, column: 7)
!2343 = distinct !DILexicalBlock(scope: !2335, file: !314, line: 720, column: 7)
!2344 = !DILocation(line: 720, column: 7, scope: !2343)
!2345 = !DILocation(line: 720, column: 7, scope: !2335)
!2346 = !DILocation(line: 720, column: 7, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !314, line: 720, column: 7)
!2348 = distinct !DILexicalBlock(scope: !2329, file: !314, line: 720, column: 7)
!2349 = !DILocation(line: 720, column: 7, scope: !2348)
!2350 = !DILocation(line: 722, column: 5, scope: !1907)
!2351 = !DILocation(line: 723, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !314, line: 723, column: 7)
!2353 = distinct !DILexicalBlock(scope: !1907, file: !314, line: 723, column: 7)
!2354 = !DILocation(line: 424, column: 9, scope: !1907)
!2355 = !DILocation(line: 723, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !314, line: 723, column: 7)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !314, line: 723, column: 7)
!2358 = distinct !DILexicalBlock(scope: !2352, file: !314, line: 723, column: 7)
!2359 = !DILocation(line: 723, column: 7, scope: !2357)
!2360 = !DILocation(line: 723, column: 7, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !314, line: 723, column: 7)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !314, line: 723, column: 7)
!2363 = !DILocation(line: 723, column: 7, scope: !2362)
!2364 = !DILocation(line: 723, column: 7, scope: !2358)
!2365 = !DILocation(line: 724, column: 7, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !314, line: 724, column: 7)
!2367 = distinct !DILexicalBlock(scope: !1907, file: !314, line: 724, column: 7)
!2368 = !DILocation(line: 724, column: 7, scope: !2367)
!2369 = !DILocation(line: 726, column: 13, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !1907, file: !314, line: 726, column: 11)
!2371 = !DILocation(line: 726, column: 11, scope: !1907)
!2372 = !DILocation(line: 728, column: 5, scope: !1908)
!2373 = !DILocation(line: 400, column: 75, scope: !1908)
!2374 = !DILocation(line: 400, column: 3, scope: !1908)
!2375 = distinct !{!2375, !2034, !2376}
!2376 = !DILocation(line: 728, column: 5, scope: !1909)
!2377 = !DILocation(line: 730, column: 11, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !1880, file: !314, line: 730, column: 7)
!2379 = !DILocation(line: 730, column: 16, scope: !2378)
!2380 = !DILocation(line: 738, column: 51, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !1880, file: !314, line: 738, column: 7)
!2382 = !DILocation(line: 739, column: 10, scope: !2381)
!2383 = !DILocation(line: 741, column: 11, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !314, line: 741, column: 11)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !314, line: 740, column: 5)
!2386 = !DILocation(line: 741, column: 11, scope: !2385)
!2387 = !DILocation(line: 742, column: 16, scope: !2384)
!2388 = !DILocation(line: 742, column: 9, scope: !2384)
!2389 = !DILocation(line: 746, column: 18, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2384, file: !314, line: 746, column: 16)
!2391 = !DILocation(line: 746, column: 32, scope: !2390)
!2392 = !DILocation(line: 746, column: 29, scope: !2390)
!2393 = !DILocation(line: 755, column: 7, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !1880, file: !314, line: 755, column: 7)
!2395 = !DILocation(line: 755, column: 20, scope: !2394)
!2396 = !DILocation(line: 756, column: 12, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !314, line: 756, column: 5)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !314, line: 756, column: 5)
!2399 = !DILocation(line: 756, column: 5, scope: !2398)
!2400 = !DILocation(line: 757, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !314, line: 757, column: 7)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !314, line: 757, column: 7)
!2403 = !DILocation(line: 757, column: 7, scope: !2402)
!2404 = !DILocation(line: 756, column: 39, scope: !2397)
!2405 = distinct !{!2405, !2399, !2406}
!2406 = !DILocation(line: 757, column: 7, scope: !2398)
!2407 = !DILocation(line: 759, column: 11, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !1880, file: !314, line: 759, column: 7)
!2409 = !DILocation(line: 759, column: 7, scope: !1880)
!2410 = !DILocation(line: 760, column: 5, scope: !2408)
!2411 = !DILocation(line: 760, column: 17, scope: !2408)
!2412 = !DILocation(line: 763, column: 2, scope: !1880)
!2413 = !DILocation(line: 766, column: 51, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !1880, file: !314, line: 766, column: 7)
!2415 = !DILocation(line: 766, column: 21, scope: !2414)
!2416 = !DILocation(line: 770, column: 42, scope: !1880)
!2417 = !DILocation(line: 768, column: 10, scope: !1880)
!2418 = !DILocation(line: 768, column: 3, scope: !1880)
!2419 = !DILocation(line: 772, column: 1, scope: !1880)
!2420 = distinct !DISubprogram(name: "gettext_quote", scope: !314, file: !314, line: 207, type: !2421, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!31, !31, !5}
!2423 = !{!2424, !2425, !2426, !2427}
!2424 = !DILocalVariable(name: "msgid", arg: 1, scope: !2420, file: !314, line: 207, type: !31)
!2425 = !DILocalVariable(name: "s", arg: 2, scope: !2420, file: !314, line: 207, type: !5)
!2426 = !DILocalVariable(name: "translation", scope: !2420, file: !314, line: 209, type: !31)
!2427 = !DILocalVariable(name: "locale_code", scope: !2420, file: !314, line: 210, type: !31)
!2428 = !DILocation(line: 0, scope: !2420)
!2429 = !DILocation(line: 209, column: 29, scope: !2420)
!2430 = !DILocation(line: 212, column: 19, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2420, file: !314, line: 212, column: 7)
!2432 = !DILocation(line: 212, column: 7, scope: !2420)
!2433 = !DILocation(line: 233, column: 17, scope: !2420)
!2434 = !DILocalVariable(name: "s1", arg: 1, scope: !2435, file: !2436, line: 160, type: !31)
!2435 = distinct !DISubprogram(name: "strcaseeq0", scope: !2436, file: !2436, line: 160, type: !2437, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2439)
!2436 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!33, !31, !31, !30, !30, !30, !30, !30, !30, !30, !30, !30}
!2439 = !{!2434, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2440 = !DILocalVariable(name: "s2", arg: 2, scope: !2435, file: !2436, line: 160, type: !31)
!2441 = !DILocalVariable(name: "s20", arg: 3, scope: !2435, file: !2436, line: 160, type: !30)
!2442 = !DILocalVariable(name: "s21", arg: 4, scope: !2435, file: !2436, line: 160, type: !30)
!2443 = !DILocalVariable(name: "s22", arg: 5, scope: !2435, file: !2436, line: 160, type: !30)
!2444 = !DILocalVariable(name: "s23", arg: 6, scope: !2435, file: !2436, line: 160, type: !30)
!2445 = !DILocalVariable(name: "s24", arg: 7, scope: !2435, file: !2436, line: 160, type: !30)
!2446 = !DILocalVariable(name: "s25", arg: 8, scope: !2435, file: !2436, line: 160, type: !30)
!2447 = !DILocalVariable(name: "s26", arg: 9, scope: !2435, file: !2436, line: 160, type: !30)
!2448 = !DILocalVariable(name: "s27", arg: 10, scope: !2435, file: !2436, line: 160, type: !30)
!2449 = !DILocalVariable(name: "s28", arg: 11, scope: !2435, file: !2436, line: 160, type: !30)
!2450 = !DILocation(line: 0, scope: !2435, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 234, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2420, file: !314, line: 234, column: 7)
!2453 = !DILocation(line: 162, column: 7, scope: !2454, inlinedAt: !2451)
!2454 = distinct !DILexicalBlock(scope: !2435, file: !2436, line: 162, column: 7)
!2455 = !DILocalVariable(name: "s1", arg: 1, scope: !2456, file: !2436, line: 146, type: !31)
!2456 = distinct !DISubprogram(name: "strcaseeq1", scope: !2436, file: !2436, line: 146, type: !2457, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!33, !31, !31, !30, !30, !30, !30, !30, !30, !30, !30}
!2459 = !{!2455, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468}
!2460 = !DILocalVariable(name: "s2", arg: 2, scope: !2456, file: !2436, line: 146, type: !31)
!2461 = !DILocalVariable(name: "s21", arg: 3, scope: !2456, file: !2436, line: 146, type: !30)
!2462 = !DILocalVariable(name: "s22", arg: 4, scope: !2456, file: !2436, line: 146, type: !30)
!2463 = !DILocalVariable(name: "s23", arg: 5, scope: !2456, file: !2436, line: 146, type: !30)
!2464 = !DILocalVariable(name: "s24", arg: 6, scope: !2456, file: !2436, line: 146, type: !30)
!2465 = !DILocalVariable(name: "s25", arg: 7, scope: !2456, file: !2436, line: 146, type: !30)
!2466 = !DILocalVariable(name: "s26", arg: 8, scope: !2456, file: !2436, line: 146, type: !30)
!2467 = !DILocalVariable(name: "s27", arg: 9, scope: !2456, file: !2436, line: 146, type: !30)
!2468 = !DILocalVariable(name: "s28", arg: 10, scope: !2456, file: !2436, line: 146, type: !30)
!2469 = !DILocation(line: 0, scope: !2456, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 167, column: 16, scope: !2471, inlinedAt: !2451)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !2436, line: 164, column: 11)
!2472 = distinct !DILexicalBlock(scope: !2454, file: !2436, line: 163, column: 5)
!2473 = !DILocation(line: 148, column: 7, scope: !2474, inlinedAt: !2470)
!2474 = distinct !DILexicalBlock(scope: !2456, file: !2436, line: 148, column: 7)
!2475 = !DILocalVariable(name: "s1", arg: 1, scope: !2476, file: !2436, line: 132, type: !31)
!2476 = distinct !DISubprogram(name: "strcaseeq2", scope: !2436, file: !2436, line: 132, type: !2477, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!33, !31, !31, !30, !30, !30, !30, !30, !30, !30}
!2479 = !{!2475, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487}
!2480 = !DILocalVariable(name: "s2", arg: 2, scope: !2476, file: !2436, line: 132, type: !31)
!2481 = !DILocalVariable(name: "s22", arg: 3, scope: !2476, file: !2436, line: 132, type: !30)
!2482 = !DILocalVariable(name: "s23", arg: 4, scope: !2476, file: !2436, line: 132, type: !30)
!2483 = !DILocalVariable(name: "s24", arg: 5, scope: !2476, file: !2436, line: 132, type: !30)
!2484 = !DILocalVariable(name: "s25", arg: 6, scope: !2476, file: !2436, line: 132, type: !30)
!2485 = !DILocalVariable(name: "s26", arg: 7, scope: !2476, file: !2436, line: 132, type: !30)
!2486 = !DILocalVariable(name: "s27", arg: 8, scope: !2476, file: !2436, line: 132, type: !30)
!2487 = !DILocalVariable(name: "s28", arg: 9, scope: !2476, file: !2436, line: 132, type: !30)
!2488 = !DILocation(line: 0, scope: !2476, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 153, column: 16, scope: !2490, inlinedAt: !2470)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !2436, line: 150, column: 11)
!2491 = distinct !DILexicalBlock(scope: !2474, file: !2436, line: 149, column: 5)
!2492 = !DILocation(line: 134, column: 7, scope: !2493, inlinedAt: !2489)
!2493 = distinct !DILexicalBlock(scope: !2476, file: !2436, line: 134, column: 7)
!2494 = !DILocalVariable(name: "s1", arg: 1, scope: !2495, file: !2436, line: 118, type: !31)
!2495 = distinct !DISubprogram(name: "strcaseeq3", scope: !2436, file: !2436, line: 118, type: !2496, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!33, !31, !31, !30, !30, !30, !30, !30, !30}
!2498 = !{!2494, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2499 = !DILocalVariable(name: "s2", arg: 2, scope: !2495, file: !2436, line: 118, type: !31)
!2500 = !DILocalVariable(name: "s23", arg: 3, scope: !2495, file: !2436, line: 118, type: !30)
!2501 = !DILocalVariable(name: "s24", arg: 4, scope: !2495, file: !2436, line: 118, type: !30)
!2502 = !DILocalVariable(name: "s25", arg: 5, scope: !2495, file: !2436, line: 118, type: !30)
!2503 = !DILocalVariable(name: "s26", arg: 6, scope: !2495, file: !2436, line: 118, type: !30)
!2504 = !DILocalVariable(name: "s27", arg: 7, scope: !2495, file: !2436, line: 118, type: !30)
!2505 = !DILocalVariable(name: "s28", arg: 8, scope: !2495, file: !2436, line: 118, type: !30)
!2506 = !DILocation(line: 0, scope: !2495, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 139, column: 16, scope: !2508, inlinedAt: !2489)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !2436, line: 136, column: 11)
!2509 = distinct !DILexicalBlock(scope: !2493, file: !2436, line: 135, column: 5)
!2510 = !DILocation(line: 120, column: 7, scope: !2511, inlinedAt: !2507)
!2511 = distinct !DILexicalBlock(scope: !2495, file: !2436, line: 120, column: 7)
!2512 = !DILocation(line: 120, column: 7, scope: !2495, inlinedAt: !2507)
!2513 = !DILocalVariable(name: "s1", arg: 1, scope: !2514, file: !2436, line: 104, type: !31)
!2514 = distinct !DISubprogram(name: "strcaseeq4", scope: !2436, file: !2436, line: 104, type: !2515, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!33, !31, !31, !30, !30, !30, !30, !30}
!2517 = !{!2513, !2518, !2519, !2520, !2521, !2522, !2523}
!2518 = !DILocalVariable(name: "s2", arg: 2, scope: !2514, file: !2436, line: 104, type: !31)
!2519 = !DILocalVariable(name: "s24", arg: 3, scope: !2514, file: !2436, line: 104, type: !30)
!2520 = !DILocalVariable(name: "s25", arg: 4, scope: !2514, file: !2436, line: 104, type: !30)
!2521 = !DILocalVariable(name: "s26", arg: 5, scope: !2514, file: !2436, line: 104, type: !30)
!2522 = !DILocalVariable(name: "s27", arg: 6, scope: !2514, file: !2436, line: 104, type: !30)
!2523 = !DILocalVariable(name: "s28", arg: 7, scope: !2514, file: !2436, line: 104, type: !30)
!2524 = !DILocation(line: 0, scope: !2514, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 125, column: 16, scope: !2526, inlinedAt: !2507)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !2436, line: 122, column: 11)
!2527 = distinct !DILexicalBlock(scope: !2511, file: !2436, line: 121, column: 5)
!2528 = !DILocation(line: 106, column: 7, scope: !2529, inlinedAt: !2525)
!2529 = distinct !DILexicalBlock(scope: !2514, file: !2436, line: 106, column: 7)
!2530 = !DILocation(line: 106, column: 7, scope: !2514, inlinedAt: !2525)
!2531 = !DILocalVariable(name: "s1", arg: 1, scope: !2532, file: !2436, line: 90, type: !31)
!2532 = distinct !DISubprogram(name: "strcaseeq5", scope: !2436, file: !2436, line: 90, type: !2533, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!33, !31, !31, !30, !30, !30, !30}
!2535 = !{!2531, !2536, !2537, !2538, !2539, !2540}
!2536 = !DILocalVariable(name: "s2", arg: 2, scope: !2532, file: !2436, line: 90, type: !31)
!2537 = !DILocalVariable(name: "s25", arg: 3, scope: !2532, file: !2436, line: 90, type: !30)
!2538 = !DILocalVariable(name: "s26", arg: 4, scope: !2532, file: !2436, line: 90, type: !30)
!2539 = !DILocalVariable(name: "s27", arg: 5, scope: !2532, file: !2436, line: 90, type: !30)
!2540 = !DILocalVariable(name: "s28", arg: 6, scope: !2532, file: !2436, line: 90, type: !30)
!2541 = !DILocation(line: 0, scope: !2532, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 111, column: 16, scope: !2543, inlinedAt: !2525)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !2436, line: 108, column: 11)
!2544 = distinct !DILexicalBlock(scope: !2529, file: !2436, line: 107, column: 5)
!2545 = !DILocation(line: 92, column: 7, scope: !2546, inlinedAt: !2542)
!2546 = distinct !DILexicalBlock(scope: !2532, file: !2436, line: 92, column: 7)
!2547 = !DILocation(line: 92, column: 7, scope: !2532, inlinedAt: !2542)
!2548 = !DILocation(line: 235, column: 12, scope: !2452)
!2549 = !DILocation(line: 235, column: 21, scope: !2452)
!2550 = !DILocation(line: 235, column: 5, scope: !2452)
!2551 = !DILocation(line: 0, scope: !2456, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 167, column: 16, scope: !2471, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 236, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2420, file: !314, line: 236, column: 7)
!2555 = !DILocation(line: 148, column: 7, scope: !2474, inlinedAt: !2552)
!2556 = !DILocation(line: 0, scope: !2476, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 153, column: 16, scope: !2490, inlinedAt: !2552)
!2558 = !DILocation(line: 134, column: 7, scope: !2493, inlinedAt: !2557)
!2559 = !DILocation(line: 134, column: 7, scope: !2476, inlinedAt: !2557)
!2560 = !DILocation(line: 0, scope: !2495, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 139, column: 16, scope: !2508, inlinedAt: !2557)
!2562 = !DILocation(line: 120, column: 7, scope: !2511, inlinedAt: !2561)
!2563 = !DILocation(line: 120, column: 7, scope: !2495, inlinedAt: !2561)
!2564 = !DILocation(line: 0, scope: !2514, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 125, column: 16, scope: !2526, inlinedAt: !2561)
!2566 = !DILocation(line: 106, column: 7, scope: !2529, inlinedAt: !2565)
!2567 = !DILocation(line: 106, column: 7, scope: !2514, inlinedAt: !2565)
!2568 = !DILocation(line: 0, scope: !2532, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 111, column: 16, scope: !2543, inlinedAt: !2565)
!2570 = !DILocation(line: 92, column: 7, scope: !2546, inlinedAt: !2569)
!2571 = !DILocation(line: 92, column: 7, scope: !2532, inlinedAt: !2569)
!2572 = !DILocalVariable(name: "s1", arg: 1, scope: !2573, file: !2436, line: 76, type: !31)
!2573 = distinct !DISubprogram(name: "strcaseeq6", scope: !2436, file: !2436, line: 76, type: !2574, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!33, !31, !31, !30, !30, !30}
!2576 = !{!2572, !2577, !2578, !2579, !2580}
!2577 = !DILocalVariable(name: "s2", arg: 2, scope: !2573, file: !2436, line: 76, type: !31)
!2578 = !DILocalVariable(name: "s26", arg: 3, scope: !2573, file: !2436, line: 76, type: !30)
!2579 = !DILocalVariable(name: "s27", arg: 4, scope: !2573, file: !2436, line: 76, type: !30)
!2580 = !DILocalVariable(name: "s28", arg: 5, scope: !2573, file: !2436, line: 76, type: !30)
!2581 = !DILocation(line: 0, scope: !2573, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 97, column: 16, scope: !2583, inlinedAt: !2569)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !2436, line: 94, column: 11)
!2584 = distinct !DILexicalBlock(scope: !2546, file: !2436, line: 93, column: 5)
!2585 = !DILocation(line: 78, column: 7, scope: !2586, inlinedAt: !2582)
!2586 = distinct !DILexicalBlock(scope: !2573, file: !2436, line: 78, column: 7)
!2587 = !DILocation(line: 78, column: 7, scope: !2573, inlinedAt: !2582)
!2588 = !DILocalVariable(name: "s1", arg: 1, scope: !2589, file: !2436, line: 62, type: !31)
!2589 = distinct !DISubprogram(name: "strcaseeq7", scope: !2436, file: !2436, line: 62, type: !2590, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!33, !31, !31, !30, !30}
!2592 = !{!2588, !2593, !2594, !2595}
!2593 = !DILocalVariable(name: "s2", arg: 2, scope: !2589, file: !2436, line: 62, type: !31)
!2594 = !DILocalVariable(name: "s27", arg: 3, scope: !2589, file: !2436, line: 62, type: !30)
!2595 = !DILocalVariable(name: "s28", arg: 4, scope: !2589, file: !2436, line: 62, type: !30)
!2596 = !DILocation(line: 0, scope: !2589, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 83, column: 16, scope: !2598, inlinedAt: !2582)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !2436, line: 80, column: 11)
!2599 = distinct !DILexicalBlock(scope: !2586, file: !2436, line: 79, column: 5)
!2600 = !DILocation(line: 64, column: 7, scope: !2601, inlinedAt: !2597)
!2601 = distinct !DILexicalBlock(scope: !2589, file: !2436, line: 64, column: 7)
!2602 = !DILocation(line: 236, column: 7, scope: !2420)
!2603 = !DILocation(line: 237, column: 12, scope: !2554)
!2604 = !DILocation(line: 237, column: 21, scope: !2554)
!2605 = !DILocation(line: 237, column: 5, scope: !2554)
!2606 = !DILocation(line: 239, column: 13, scope: !2420)
!2607 = !DILocation(line: 239, column: 11, scope: !2420)
!2608 = !DILocation(line: 239, column: 3, scope: !2420)
!2609 = !DILocation(line: 240, column: 1, scope: !2420)
!2610 = distinct !DISubprogram(name: "quotearg_alloc", scope: !314, file: !314, line: 799, type: !2611, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!29, !31, !88, !346}
!2613 = !{!2614, !2615, !2616}
!2614 = !DILocalVariable(name: "arg", arg: 1, scope: !2610, file: !314, line: 799, type: !31)
!2615 = !DILocalVariable(name: "argsize", arg: 2, scope: !2610, file: !314, line: 799, type: !88)
!2616 = !DILocalVariable(name: "o", arg: 3, scope: !2610, file: !314, line: 800, type: !346)
!2617 = !DILocation(line: 0, scope: !2610)
!2618 = !DILocalVariable(name: "arg", arg: 1, scope: !2619, file: !314, line: 812, type: !31)
!2619 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !314, file: !314, line: 812, type: !2620, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!29, !31, !88, !486, !346}
!2622 = !{!2618, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630}
!2623 = !DILocalVariable(name: "argsize", arg: 2, scope: !2619, file: !314, line: 812, type: !88)
!2624 = !DILocalVariable(name: "size", arg: 3, scope: !2619, file: !314, line: 812, type: !486)
!2625 = !DILocalVariable(name: "o", arg: 4, scope: !2619, file: !314, line: 813, type: !346)
!2626 = !DILocalVariable(name: "p", scope: !2619, file: !314, line: 815, type: !346)
!2627 = !DILocalVariable(name: "e", scope: !2619, file: !314, line: 816, type: !33)
!2628 = !DILocalVariable(name: "flags", scope: !2619, file: !314, line: 818, type: !33)
!2629 = !DILocalVariable(name: "bufsize", scope: !2619, file: !314, line: 819, type: !88)
!2630 = !DILocalVariable(name: "buf", scope: !2619, file: !314, line: 823, type: !29)
!2631 = !DILocation(line: 0, scope: !2619, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 802, column: 10, scope: !2610)
!2633 = !DILocation(line: 815, column: 37, scope: !2619, inlinedAt: !2632)
!2634 = !DILocation(line: 816, column: 11, scope: !2619, inlinedAt: !2632)
!2635 = !DILocation(line: 818, column: 18, scope: !2619, inlinedAt: !2632)
!2636 = !DILocation(line: 818, column: 24, scope: !2619, inlinedAt: !2632)
!2637 = !DILocation(line: 819, column: 69, scope: !2619, inlinedAt: !2632)
!2638 = !DILocation(line: 820, column: 53, scope: !2619, inlinedAt: !2632)
!2639 = !DILocation(line: 821, column: 49, scope: !2619, inlinedAt: !2632)
!2640 = !DILocation(line: 822, column: 49, scope: !2619, inlinedAt: !2632)
!2641 = !DILocation(line: 819, column: 20, scope: !2619, inlinedAt: !2632)
!2642 = !DILocation(line: 822, column: 62, scope: !2619, inlinedAt: !2632)
!2643 = !DILocalVariable(name: "n", arg: 1, scope: !2644, file: !152, line: 216, type: !88)
!2644 = distinct !DISubprogram(name: "xcharalloc", scope: !152, file: !152, line: 216, type: !1569, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2645)
!2645 = !{!2643}
!2646 = !DILocation(line: 0, scope: !2644, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 823, column: 15, scope: !2619, inlinedAt: !2632)
!2648 = !DILocation(line: 218, column: 10, scope: !2644, inlinedAt: !2647)
!2649 = !DILocation(line: 824, column: 60, scope: !2619, inlinedAt: !2632)
!2650 = !DILocation(line: 826, column: 32, scope: !2619, inlinedAt: !2632)
!2651 = !DILocation(line: 826, column: 47, scope: !2619, inlinedAt: !2632)
!2652 = !DILocation(line: 824, column: 3, scope: !2619, inlinedAt: !2632)
!2653 = !DILocation(line: 827, column: 9, scope: !2619, inlinedAt: !2632)
!2654 = !DILocation(line: 802, column: 3, scope: !2610)
!2655 = !DILocation(line: 0, scope: !2619)
!2656 = !DILocation(line: 815, column: 37, scope: !2619)
!2657 = !DILocation(line: 816, column: 11, scope: !2619)
!2658 = !DILocation(line: 818, column: 18, scope: !2619)
!2659 = !DILocation(line: 818, column: 27, scope: !2619)
!2660 = !DILocation(line: 818, column: 24, scope: !2619)
!2661 = !DILocation(line: 819, column: 69, scope: !2619)
!2662 = !DILocation(line: 820, column: 53, scope: !2619)
!2663 = !DILocation(line: 821, column: 49, scope: !2619)
!2664 = !DILocation(line: 822, column: 49, scope: !2619)
!2665 = !DILocation(line: 819, column: 20, scope: !2619)
!2666 = !DILocation(line: 822, column: 62, scope: !2619)
!2667 = !DILocation(line: 0, scope: !2644, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 823, column: 15, scope: !2619)
!2669 = !DILocation(line: 218, column: 10, scope: !2644, inlinedAt: !2668)
!2670 = !DILocation(line: 824, column: 60, scope: !2619)
!2671 = !DILocation(line: 826, column: 32, scope: !2619)
!2672 = !DILocation(line: 826, column: 47, scope: !2619)
!2673 = !DILocation(line: 824, column: 3, scope: !2619)
!2674 = !DILocation(line: 827, column: 9, scope: !2619)
!2675 = !DILocation(line: 828, column: 7, scope: !2619)
!2676 = !DILocation(line: 829, column: 11, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2619, file: !314, line: 828, column: 7)
!2678 = !DILocation(line: 829, column: 5, scope: !2677)
!2679 = !DILocation(line: 830, column: 3, scope: !2619)
!2680 = distinct !DISubprogram(name: "quotearg_free", scope: !314, file: !314, line: 848, type: !116, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2681)
!2681 = !{!2682, !2683}
!2682 = !DILocalVariable(name: "sv", scope: !2680, file: !314, line: 850, type: !414)
!2683 = !DILocalVariable(name: "i", scope: !2680, file: !314, line: 851, type: !33)
!2684 = !DILocation(line: 850, column: 24, scope: !2680)
!2685 = !DILocation(line: 0, scope: !2680)
!2686 = !DILocation(line: 852, column: 19, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !314, line: 852, column: 3)
!2688 = distinct !DILexicalBlock(scope: !2680, file: !314, line: 852, column: 3)
!2689 = !DILocation(line: 852, column: 17, scope: !2687)
!2690 = !DILocation(line: 852, column: 3, scope: !2688)
!2691 = !DILocation(line: 853, column: 17, scope: !2687)
!2692 = !{!2693, !1132, i64 8}
!2693 = !{!"slotvec", !1352, i64 0, !1132, i64 8}
!2694 = !DILocation(line: 853, column: 5, scope: !2687)
!2695 = !DILocation(line: 852, column: 28, scope: !2687)
!2696 = distinct !{!2696, !2690, !2697}
!2697 = !DILocation(line: 853, column: 20, scope: !2688)
!2698 = !DILocation(line: 854, column: 13, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2680, file: !314, line: 854, column: 7)
!2700 = !DILocation(line: 854, column: 17, scope: !2699)
!2701 = !DILocation(line: 854, column: 7, scope: !2680)
!2702 = !DILocation(line: 856, column: 7, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !314, line: 855, column: 5)
!2704 = !DILocation(line: 857, column: 21, scope: !2703)
!2705 = !{!2693, !1352, i64 0}
!2706 = !DILocation(line: 858, column: 20, scope: !2703)
!2707 = !DILocation(line: 859, column: 5, scope: !2703)
!2708 = !DILocation(line: 860, column: 10, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2680, file: !314, line: 860, column: 7)
!2710 = !DILocation(line: 860, column: 7, scope: !2680)
!2711 = !DILocation(line: 862, column: 13, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !314, line: 861, column: 5)
!2713 = !DILocation(line: 862, column: 7, scope: !2712)
!2714 = !DILocation(line: 863, column: 15, scope: !2712)
!2715 = !DILocation(line: 864, column: 5, scope: !2712)
!2716 = !DILocation(line: 865, column: 10, scope: !2680)
!2717 = !DILocation(line: 866, column: 1, scope: !2680)
!2718 = distinct !DISubprogram(name: "quotearg_n", scope: !314, file: !314, line: 931, type: !106, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2719)
!2719 = !{!2720, !2721}
!2720 = !DILocalVariable(name: "n", arg: 1, scope: !2718, file: !314, line: 931, type: !33)
!2721 = !DILocalVariable(name: "arg", arg: 2, scope: !2718, file: !314, line: 931, type: !31)
!2722 = !DILocation(line: 0, scope: !2718)
!2723 = !DILocation(line: 933, column: 10, scope: !2718)
!2724 = !DILocation(line: 933, column: 3, scope: !2718)
!2725 = distinct !DISubprogram(name: "quotearg_n_options", scope: !314, file: !314, line: 877, type: !2726, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!29, !33, !31, !88, !346}
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735, !2738, !2739, !2741, !2742, !2743}
!2729 = !DILocalVariable(name: "n", arg: 1, scope: !2725, file: !314, line: 877, type: !33)
!2730 = !DILocalVariable(name: "arg", arg: 2, scope: !2725, file: !314, line: 877, type: !31)
!2731 = !DILocalVariable(name: "argsize", arg: 3, scope: !2725, file: !314, line: 877, type: !88)
!2732 = !DILocalVariable(name: "options", arg: 4, scope: !2725, file: !314, line: 878, type: !346)
!2733 = !DILocalVariable(name: "e", scope: !2725, file: !314, line: 880, type: !33)
!2734 = !DILocalVariable(name: "sv", scope: !2725, file: !314, line: 882, type: !414)
!2735 = !DILocalVariable(name: "preallocated", scope: !2736, file: !314, line: 889, type: !263)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !314, line: 888, column: 5)
!2737 = distinct !DILexicalBlock(scope: !2725, file: !314, line: 887, column: 7)
!2738 = !DILocalVariable(name: "nmax", scope: !2736, file: !314, line: 890, type: !33)
!2739 = !DILocalVariable(name: "size", scope: !2740, file: !314, line: 903, type: !88)
!2740 = distinct !DILexicalBlock(scope: !2725, file: !314, line: 902, column: 3)
!2741 = !DILocalVariable(name: "val", scope: !2740, file: !314, line: 904, type: !29)
!2742 = !DILocalVariable(name: "flags", scope: !2740, file: !314, line: 906, type: !33)
!2743 = !DILocalVariable(name: "qsize", scope: !2740, file: !314, line: 907, type: !88)
!2744 = !DILocation(line: 0, scope: !2725)
!2745 = !DILocation(line: 880, column: 11, scope: !2725)
!2746 = !DILocation(line: 882, column: 24, scope: !2725)
!2747 = !DILocation(line: 884, column: 9, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2725, file: !314, line: 884, column: 7)
!2749 = !DILocation(line: 884, column: 7, scope: !2725)
!2750 = !DILocation(line: 885, column: 5, scope: !2748)
!2751 = !DILocation(line: 887, column: 7, scope: !2737)
!2752 = !DILocation(line: 887, column: 14, scope: !2737)
!2753 = !DILocation(line: 887, column: 7, scope: !2725)
!2754 = !DILocation(line: 889, column: 31, scope: !2736)
!2755 = !DILocation(line: 0, scope: !2736)
!2756 = !DILocation(line: 892, column: 16, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2736, file: !314, line: 892, column: 11)
!2758 = !DILocation(line: 892, column: 11, scope: !2736)
!2759 = !DILocation(line: 893, column: 9, scope: !2757)
!2760 = !DILocation(line: 895, column: 32, scope: !2736)
!2761 = !DILocation(line: 895, column: 61, scope: !2736)
!2762 = !DILocation(line: 895, column: 58, scope: !2736)
!2763 = !DILocation(line: 895, column: 66, scope: !2736)
!2764 = !DILocation(line: 895, column: 22, scope: !2736)
!2765 = !DILocation(line: 895, column: 15, scope: !2736)
!2766 = !DILocation(line: 896, column: 11, scope: !2736)
!2767 = !DILocation(line: 897, column: 15, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2736, file: !314, line: 896, column: 11)
!2769 = !{i64 0, i64 8, !1546, i64 8, i64 8, !1131}
!2770 = !DILocation(line: 897, column: 9, scope: !2768)
!2771 = !DILocation(line: 898, column: 20, scope: !2736)
!2772 = !DILocation(line: 898, column: 18, scope: !2736)
!2773 = !DILocation(line: 898, column: 15, scope: !2736)
!2774 = !DILocation(line: 898, column: 38, scope: !2736)
!2775 = !DILocation(line: 898, column: 31, scope: !2736)
!2776 = !DILocation(line: 898, column: 48, scope: !2736)
!2777 = !DILocation(line: 0, scope: !2178, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 898, column: 7, scope: !2736)
!2779 = !DILocation(line: 71, column: 10, scope: !2178, inlinedAt: !2778)
!2780 = !DILocation(line: 899, column: 14, scope: !2736)
!2781 = !DILocation(line: 900, column: 5, scope: !2736)
!2782 = !DILocation(line: 903, column: 19, scope: !2740)
!2783 = !DILocation(line: 903, column: 25, scope: !2740)
!2784 = !DILocation(line: 0, scope: !2740)
!2785 = !DILocation(line: 904, column: 23, scope: !2740)
!2786 = !DILocation(line: 906, column: 26, scope: !2740)
!2787 = !DILocation(line: 906, column: 32, scope: !2740)
!2788 = !DILocation(line: 908, column: 55, scope: !2740)
!2789 = !DILocation(line: 909, column: 46, scope: !2740)
!2790 = !DILocation(line: 910, column: 55, scope: !2740)
!2791 = !DILocation(line: 911, column: 55, scope: !2740)
!2792 = !DILocation(line: 907, column: 20, scope: !2740)
!2793 = !DILocation(line: 913, column: 14, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2740, file: !314, line: 913, column: 9)
!2795 = !DILocation(line: 913, column: 9, scope: !2740)
!2796 = !DILocation(line: 915, column: 35, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2794, file: !314, line: 914, column: 7)
!2798 = !DILocation(line: 915, column: 20, scope: !2797)
!2799 = !DILocation(line: 916, column: 17, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2797, file: !314, line: 916, column: 13)
!2801 = !DILocation(line: 916, column: 13, scope: !2797)
!2802 = !DILocation(line: 917, column: 11, scope: !2800)
!2803 = !DILocation(line: 0, scope: !2644, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 918, column: 27, scope: !2797)
!2805 = !DILocation(line: 218, column: 10, scope: !2644, inlinedAt: !2804)
!2806 = !DILocation(line: 918, column: 19, scope: !2797)
!2807 = !DILocation(line: 919, column: 69, scope: !2797)
!2808 = !DILocation(line: 921, column: 44, scope: !2797)
!2809 = !DILocation(line: 922, column: 44, scope: !2797)
!2810 = !DILocation(line: 919, column: 9, scope: !2797)
!2811 = !DILocation(line: 923, column: 7, scope: !2797)
!2812 = !DILocation(line: 925, column: 11, scope: !2740)
!2813 = !DILocation(line: 926, column: 5, scope: !2740)
!2814 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !314, file: !314, line: 937, type: !2815, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!29, !33, !31, !88}
!2817 = !{!2818, !2819, !2820}
!2818 = !DILocalVariable(name: "n", arg: 1, scope: !2814, file: !314, line: 937, type: !33)
!2819 = !DILocalVariable(name: "arg", arg: 2, scope: !2814, file: !314, line: 937, type: !31)
!2820 = !DILocalVariable(name: "argsize", arg: 3, scope: !2814, file: !314, line: 937, type: !88)
!2821 = !DILocation(line: 0, scope: !2814)
!2822 = !DILocation(line: 939, column: 10, scope: !2814)
!2823 = !DILocation(line: 939, column: 3, scope: !2814)
!2824 = distinct !DISubprogram(name: "quotearg", scope: !314, file: !314, line: 943, type: !98, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2825)
!2825 = !{!2826}
!2826 = !DILocalVariable(name: "arg", arg: 1, scope: !2824, file: !314, line: 943, type: !31)
!2827 = !DILocation(line: 0, scope: !2824)
!2828 = !DILocation(line: 0, scope: !2718, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 945, column: 10, scope: !2824)
!2830 = !DILocation(line: 933, column: 10, scope: !2718, inlinedAt: !2829)
!2831 = !DILocation(line: 945, column: 3, scope: !2824)
!2832 = distinct !DISubprogram(name: "quotearg_mem", scope: !314, file: !314, line: 949, type: !2833, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!29, !31, !88}
!2835 = !{!2836, !2837}
!2836 = !DILocalVariable(name: "arg", arg: 1, scope: !2832, file: !314, line: 949, type: !31)
!2837 = !DILocalVariable(name: "argsize", arg: 2, scope: !2832, file: !314, line: 949, type: !88)
!2838 = !DILocation(line: 0, scope: !2832)
!2839 = !DILocation(line: 0, scope: !2814, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 951, column: 10, scope: !2832)
!2841 = !DILocation(line: 939, column: 10, scope: !2814, inlinedAt: !2840)
!2842 = !DILocation(line: 951, column: 3, scope: !2832)
!2843 = distinct !DISubprogram(name: "quotearg_n_style", scope: !314, file: !314, line: 955, type: !2844, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!29, !33, !5, !31}
!2846 = !{!2847, !2848, !2849, !2850}
!2847 = !DILocalVariable(name: "n", arg: 1, scope: !2843, file: !314, line: 955, type: !33)
!2848 = !DILocalVariable(name: "s", arg: 2, scope: !2843, file: !314, line: 955, type: !5)
!2849 = !DILocalVariable(name: "arg", arg: 3, scope: !2843, file: !314, line: 955, type: !31)
!2850 = !DILocalVariable(name: "o", scope: !2843, file: !314, line: 957, type: !347)
!2851 = !DILocation(line: 0, scope: !2843)
!2852 = !DILocation(line: 957, column: 3, scope: !2843)
!2853 = !DILocation(line: 957, column: 32, scope: !2843)
!2854 = !DILocalVariable(name: "style", arg: 1, scope: !2855, file: !314, line: 193, type: !5)
!2855 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !314, file: !314, line: 193, type: !2856, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!348, !5}
!2858 = !{!2854, !2859}
!2859 = !DILocalVariable(name: "o", scope: !2855, file: !314, line: 195, type: !348)
!2860 = !DILocation(line: 0, scope: !2855, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 957, column: 36, scope: !2843)
!2862 = !DILocation(line: 195, column: 26, scope: !2855, inlinedAt: !2861)
!2863 = !{!2864}
!2864 = distinct !{!2864, !2865, !"quoting_options_from_style: argument 0"}
!2865 = distinct !{!2865, !"quoting_options_from_style"}
!2866 = !DILocation(line: 196, column: 13, scope: !2867, inlinedAt: !2861)
!2867 = distinct !DILexicalBlock(scope: !2855, file: !314, line: 196, column: 7)
!2868 = !DILocation(line: 196, column: 7, scope: !2855, inlinedAt: !2861)
!2869 = !DILocation(line: 197, column: 5, scope: !2867, inlinedAt: !2861)
!2870 = !DILocation(line: 198, column: 5, scope: !2855, inlinedAt: !2861)
!2871 = !DILocation(line: 198, column: 11, scope: !2855, inlinedAt: !2861)
!2872 = !DILocation(line: 958, column: 10, scope: !2843)
!2873 = !DILocation(line: 959, column: 1, scope: !2843)
!2874 = !DILocation(line: 958, column: 3, scope: !2843)
!2875 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !314, file: !314, line: 962, type: !2876, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!29, !33, !5, !31, !88}
!2878 = !{!2879, !2880, !2881, !2882, !2883}
!2879 = !DILocalVariable(name: "n", arg: 1, scope: !2875, file: !314, line: 962, type: !33)
!2880 = !DILocalVariable(name: "s", arg: 2, scope: !2875, file: !314, line: 962, type: !5)
!2881 = !DILocalVariable(name: "arg", arg: 3, scope: !2875, file: !314, line: 963, type: !31)
!2882 = !DILocalVariable(name: "argsize", arg: 4, scope: !2875, file: !314, line: 963, type: !88)
!2883 = !DILocalVariable(name: "o", scope: !2875, file: !314, line: 965, type: !347)
!2884 = !DILocation(line: 0, scope: !2875)
!2885 = !DILocation(line: 965, column: 3, scope: !2875)
!2886 = !DILocation(line: 965, column: 32, scope: !2875)
!2887 = !DILocation(line: 0, scope: !2855, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 965, column: 36, scope: !2875)
!2889 = !DILocation(line: 195, column: 26, scope: !2855, inlinedAt: !2888)
!2890 = !{!2891}
!2891 = distinct !{!2891, !2892, !"quoting_options_from_style: argument 0"}
!2892 = distinct !{!2892, !"quoting_options_from_style"}
!2893 = !DILocation(line: 196, column: 13, scope: !2867, inlinedAt: !2888)
!2894 = !DILocation(line: 196, column: 7, scope: !2855, inlinedAt: !2888)
!2895 = !DILocation(line: 197, column: 5, scope: !2867, inlinedAt: !2888)
!2896 = !DILocation(line: 198, column: 5, scope: !2855, inlinedAt: !2888)
!2897 = !DILocation(line: 198, column: 11, scope: !2855, inlinedAt: !2888)
!2898 = !DILocation(line: 966, column: 10, scope: !2875)
!2899 = !DILocation(line: 967, column: 1, scope: !2875)
!2900 = !DILocation(line: 966, column: 3, scope: !2875)
!2901 = distinct !DISubprogram(name: "quotearg_style", scope: !314, file: !314, line: 970, type: !171, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2902)
!2902 = !{!2903, !2904}
!2903 = !DILocalVariable(name: "s", arg: 1, scope: !2901, file: !314, line: 970, type: !5)
!2904 = !DILocalVariable(name: "arg", arg: 2, scope: !2901, file: !314, line: 970, type: !31)
!2905 = !DILocation(line: 195, column: 26, scope: !2855, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 957, column: 36, scope: !2843, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 972, column: 10, scope: !2901)
!2908 = !DILocation(line: 957, column: 32, scope: !2843, inlinedAt: !2907)
!2909 = !DILocation(line: 0, scope: !2901)
!2910 = !DILocation(line: 0, scope: !2843, inlinedAt: !2907)
!2911 = !DILocation(line: 957, column: 3, scope: !2843, inlinedAt: !2907)
!2912 = !DILocation(line: 0, scope: !2855, inlinedAt: !2906)
!2913 = !{!2914}
!2914 = distinct !{!2914, !2915, !"quoting_options_from_style: argument 0"}
!2915 = distinct !{!2915, !"quoting_options_from_style"}
!2916 = !DILocation(line: 196, column: 13, scope: !2867, inlinedAt: !2906)
!2917 = !DILocation(line: 196, column: 7, scope: !2855, inlinedAt: !2906)
!2918 = !DILocation(line: 197, column: 5, scope: !2867, inlinedAt: !2906)
!2919 = !DILocation(line: 198, column: 5, scope: !2855, inlinedAt: !2906)
!2920 = !DILocation(line: 198, column: 11, scope: !2855, inlinedAt: !2906)
!2921 = !DILocation(line: 958, column: 10, scope: !2843, inlinedAt: !2907)
!2922 = !DILocation(line: 959, column: 1, scope: !2843, inlinedAt: !2907)
!2923 = !DILocation(line: 972, column: 3, scope: !2901)
!2924 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !314, file: !314, line: 976, type: !2925, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!29, !5, !31, !88}
!2927 = !{!2928, !2929, !2930}
!2928 = !DILocalVariable(name: "s", arg: 1, scope: !2924, file: !314, line: 976, type: !5)
!2929 = !DILocalVariable(name: "arg", arg: 2, scope: !2924, file: !314, line: 976, type: !31)
!2930 = !DILocalVariable(name: "argsize", arg: 3, scope: !2924, file: !314, line: 976, type: !88)
!2931 = !DILocation(line: 195, column: 26, scope: !2855, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 965, column: 36, scope: !2875, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 978, column: 10, scope: !2924)
!2934 = !DILocation(line: 965, column: 32, scope: !2875, inlinedAt: !2933)
!2935 = !DILocation(line: 0, scope: !2924)
!2936 = !DILocation(line: 0, scope: !2875, inlinedAt: !2933)
!2937 = !DILocation(line: 965, column: 3, scope: !2875, inlinedAt: !2933)
!2938 = !DILocation(line: 0, scope: !2855, inlinedAt: !2932)
!2939 = !{!2940}
!2940 = distinct !{!2940, !2941, !"quoting_options_from_style: argument 0"}
!2941 = distinct !{!2941, !"quoting_options_from_style"}
!2942 = !DILocation(line: 196, column: 13, scope: !2867, inlinedAt: !2932)
!2943 = !DILocation(line: 196, column: 7, scope: !2855, inlinedAt: !2932)
!2944 = !DILocation(line: 197, column: 5, scope: !2867, inlinedAt: !2932)
!2945 = !DILocation(line: 198, column: 5, scope: !2855, inlinedAt: !2932)
!2946 = !DILocation(line: 198, column: 11, scope: !2855, inlinedAt: !2932)
!2947 = !DILocation(line: 966, column: 10, scope: !2875, inlinedAt: !2933)
!2948 = !DILocation(line: 967, column: 1, scope: !2875, inlinedAt: !2933)
!2949 = !DILocation(line: 978, column: 3, scope: !2924)
!2950 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !314, file: !314, line: 982, type: !2951, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!29, !31, !88, !30}
!2953 = !{!2954, !2955, !2956, !2957}
!2954 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !314, line: 982, type: !31)
!2955 = !DILocalVariable(name: "argsize", arg: 2, scope: !2950, file: !314, line: 982, type: !88)
!2956 = !DILocalVariable(name: "ch", arg: 3, scope: !2950, file: !314, line: 982, type: !30)
!2957 = !DILocalVariable(name: "options", scope: !2950, file: !314, line: 984, type: !348)
!2958 = !DILocation(line: 0, scope: !2950)
!2959 = !DILocation(line: 984, column: 3, scope: !2950)
!2960 = !DILocation(line: 984, column: 26, scope: !2950)
!2961 = !DILocation(line: 985, column: 13, scope: !2950)
!2962 = !{i64 0, i64 4, !1317, i64 4, i64 4, !1301, i64 8, i64 32, !1317, i64 40, i64 8, !1131, i64 48, i64 8, !1131}
!2963 = !DILocation(line: 0, scope: !1792, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 986, column: 3, scope: !2950)
!2965 = !DILocation(line: 156, column: 62, scope: !1792, inlinedAt: !2964)
!2966 = !DILocation(line: 156, column: 57, scope: !1792, inlinedAt: !2964)
!2967 = !DILocation(line: 157, column: 15, scope: !1792, inlinedAt: !2964)
!2968 = !DILocation(line: 158, column: 12, scope: !1792, inlinedAt: !2964)
!2969 = !DILocation(line: 158, column: 15, scope: !1792, inlinedAt: !2964)
!2970 = !DILocation(line: 158, column: 25, scope: !1792, inlinedAt: !2964)
!2971 = !DILocation(line: 159, column: 18, scope: !1792, inlinedAt: !2964)
!2972 = !DILocation(line: 159, column: 23, scope: !1792, inlinedAt: !2964)
!2973 = !DILocation(line: 159, column: 6, scope: !1792, inlinedAt: !2964)
!2974 = !DILocation(line: 987, column: 10, scope: !2950)
!2975 = !DILocation(line: 988, column: 1, scope: !2950)
!2976 = !DILocation(line: 987, column: 3, scope: !2950)
!2977 = distinct !DISubprogram(name: "quotearg_char", scope: !314, file: !314, line: 991, type: !2978, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!29, !31, !30}
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "arg", arg: 1, scope: !2977, file: !314, line: 991, type: !31)
!2982 = !DILocalVariable(name: "ch", arg: 2, scope: !2977, file: !314, line: 991, type: !30)
!2983 = !DILocation(line: 984, column: 26, scope: !2950, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 993, column: 10, scope: !2977)
!2985 = !DILocation(line: 0, scope: !2977)
!2986 = !DILocation(line: 0, scope: !2950, inlinedAt: !2984)
!2987 = !DILocation(line: 984, column: 3, scope: !2950, inlinedAt: !2984)
!2988 = !DILocation(line: 985, column: 13, scope: !2950, inlinedAt: !2984)
!2989 = !DILocation(line: 0, scope: !1792, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 986, column: 3, scope: !2950, inlinedAt: !2984)
!2991 = !DILocation(line: 156, column: 62, scope: !1792, inlinedAt: !2990)
!2992 = !DILocation(line: 156, column: 57, scope: !1792, inlinedAt: !2990)
!2993 = !DILocation(line: 157, column: 15, scope: !1792, inlinedAt: !2990)
!2994 = !DILocation(line: 158, column: 12, scope: !1792, inlinedAt: !2990)
!2995 = !DILocation(line: 158, column: 15, scope: !1792, inlinedAt: !2990)
!2996 = !DILocation(line: 158, column: 25, scope: !1792, inlinedAt: !2990)
!2997 = !DILocation(line: 159, column: 18, scope: !1792, inlinedAt: !2990)
!2998 = !DILocation(line: 159, column: 23, scope: !1792, inlinedAt: !2990)
!2999 = !DILocation(line: 159, column: 6, scope: !1792, inlinedAt: !2990)
!3000 = !DILocation(line: 987, column: 10, scope: !2950, inlinedAt: !2984)
!3001 = !DILocation(line: 988, column: 1, scope: !2950, inlinedAt: !2984)
!3002 = !DILocation(line: 993, column: 3, scope: !2977)
!3003 = distinct !DISubprogram(name: "quotearg_colon", scope: !314, file: !314, line: 997, type: !98, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3004)
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "arg", arg: 1, scope: !3003, file: !314, line: 997, type: !31)
!3006 = !DILocation(line: 984, column: 26, scope: !2950, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 993, column: 10, scope: !2977, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 999, column: 10, scope: !3003)
!3009 = !DILocation(line: 0, scope: !3003)
!3010 = !DILocation(line: 0, scope: !2977, inlinedAt: !3008)
!3011 = !DILocation(line: 0, scope: !2950, inlinedAt: !3007)
!3012 = !DILocation(line: 984, column: 3, scope: !2950, inlinedAt: !3007)
!3013 = !DILocation(line: 985, column: 13, scope: !2950, inlinedAt: !3007)
!3014 = !DILocation(line: 0, scope: !1792, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 986, column: 3, scope: !2950, inlinedAt: !3007)
!3016 = !DILocation(line: 156, column: 57, scope: !1792, inlinedAt: !3015)
!3017 = !DILocation(line: 158, column: 12, scope: !1792, inlinedAt: !3015)
!3018 = !DILocation(line: 159, column: 6, scope: !1792, inlinedAt: !3015)
!3019 = !DILocation(line: 987, column: 10, scope: !2950, inlinedAt: !3007)
!3020 = !DILocation(line: 988, column: 1, scope: !2950, inlinedAt: !3007)
!3021 = !DILocation(line: 999, column: 3, scope: !3003)
!3022 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !314, file: !314, line: 1003, type: !2833, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3023)
!3023 = !{!3024, !3025}
!3024 = !DILocalVariable(name: "arg", arg: 1, scope: !3022, file: !314, line: 1003, type: !31)
!3025 = !DILocalVariable(name: "argsize", arg: 2, scope: !3022, file: !314, line: 1003, type: !88)
!3026 = !DILocation(line: 984, column: 26, scope: !2950, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 1005, column: 10, scope: !3022)
!3028 = !DILocation(line: 0, scope: !3022)
!3029 = !DILocation(line: 0, scope: !2950, inlinedAt: !3027)
!3030 = !DILocation(line: 984, column: 3, scope: !2950, inlinedAt: !3027)
!3031 = !DILocation(line: 985, column: 13, scope: !2950, inlinedAt: !3027)
!3032 = !DILocation(line: 0, scope: !1792, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 986, column: 3, scope: !2950, inlinedAt: !3027)
!3034 = !DILocation(line: 156, column: 57, scope: !1792, inlinedAt: !3033)
!3035 = !DILocation(line: 158, column: 12, scope: !1792, inlinedAt: !3033)
!3036 = !DILocation(line: 159, column: 6, scope: !1792, inlinedAt: !3033)
!3037 = !DILocation(line: 987, column: 10, scope: !2950, inlinedAt: !3027)
!3038 = !DILocation(line: 988, column: 1, scope: !2950, inlinedAt: !3027)
!3039 = !DILocation(line: 1005, column: 3, scope: !3022)
!3040 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !314, file: !314, line: 1009, type: !2844, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3041)
!3041 = !{!3042, !3043, !3044, !3045}
!3042 = !DILocalVariable(name: "n", arg: 1, scope: !3040, file: !314, line: 1009, type: !33)
!3043 = !DILocalVariable(name: "s", arg: 2, scope: !3040, file: !314, line: 1009, type: !5)
!3044 = !DILocalVariable(name: "arg", arg: 3, scope: !3040, file: !314, line: 1009, type: !31)
!3045 = !DILocalVariable(name: "options", scope: !3040, file: !314, line: 1011, type: !348)
!3046 = !DILocation(line: 195, column: 26, scope: !2855, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1012, column: 13, scope: !3040)
!3048 = !DILocation(line: 0, scope: !3040)
!3049 = !DILocation(line: 1011, column: 3, scope: !3040)
!3050 = !DILocation(line: 1011, column: 26, scope: !3040)
!3051 = !DILocation(line: 1012, column: 13, scope: !3040)
!3052 = !DILocation(line: 0, scope: !2855, inlinedAt: !3047)
!3053 = !{!3054}
!3054 = distinct !{!3054, !3055, !"quoting_options_from_style: argument 0"}
!3055 = distinct !{!3055, !"quoting_options_from_style"}
!3056 = !DILocation(line: 196, column: 13, scope: !2867, inlinedAt: !3047)
!3057 = !DILocation(line: 196, column: 7, scope: !2855, inlinedAt: !3047)
!3058 = !DILocation(line: 197, column: 5, scope: !2867, inlinedAt: !3047)
!3059 = !DILocation(line: 0, scope: !1792, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 1013, column: 3, scope: !3040)
!3061 = !DILocation(line: 156, column: 57, scope: !1792, inlinedAt: !3060)
!3062 = !DILocation(line: 158, column: 12, scope: !1792, inlinedAt: !3060)
!3063 = !DILocation(line: 159, column: 6, scope: !1792, inlinedAt: !3060)
!3064 = !DILocation(line: 1014, column: 10, scope: !3040)
!3065 = !DILocation(line: 1015, column: 1, scope: !3040)
!3066 = !DILocation(line: 1014, column: 3, scope: !3040)
!3067 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !314, file: !314, line: 1018, type: !3068, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!29, !33, !31, !31, !31}
!3070 = !{!3071, !3072, !3073, !3074}
!3071 = !DILocalVariable(name: "n", arg: 1, scope: !3067, file: !314, line: 1018, type: !33)
!3072 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3067, file: !314, line: 1018, type: !31)
!3073 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3067, file: !314, line: 1019, type: !31)
!3074 = !DILocalVariable(name: "arg", arg: 4, scope: !3067, file: !314, line: 1019, type: !31)
!3075 = !DILocalVariable(name: "o", scope: !3076, file: !314, line: 1030, type: !348)
!3076 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !314, file: !314, line: 1026, type: !3077, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!29, !33, !31, !31, !31, !88}
!3079 = !{!3080, !3081, !3082, !3083, !3084, !3075}
!3080 = !DILocalVariable(name: "n", arg: 1, scope: !3076, file: !314, line: 1026, type: !33)
!3081 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3076, file: !314, line: 1026, type: !31)
!3082 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3076, file: !314, line: 1027, type: !31)
!3083 = !DILocalVariable(name: "arg", arg: 4, scope: !3076, file: !314, line: 1028, type: !31)
!3084 = !DILocalVariable(name: "argsize", arg: 5, scope: !3076, file: !314, line: 1028, type: !88)
!3085 = !DILocation(line: 1030, column: 26, scope: !3076, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 1021, column: 10, scope: !3067)
!3087 = !DILocation(line: 0, scope: !3067)
!3088 = !DILocation(line: 0, scope: !3076, inlinedAt: !3086)
!3089 = !DILocation(line: 1030, column: 3, scope: !3076, inlinedAt: !3086)
!3090 = !DILocation(line: 1030, column: 30, scope: !3076, inlinedAt: !3086)
!3091 = !DILocation(line: 0, scope: !1832, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 1031, column: 3, scope: !3076, inlinedAt: !3086)
!3093 = !DILocation(line: 184, column: 6, scope: !1832, inlinedAt: !3092)
!3094 = !DILocation(line: 184, column: 12, scope: !1832, inlinedAt: !3092)
!3095 = !DILocation(line: 185, column: 8, scope: !1846, inlinedAt: !3092)
!3096 = !DILocation(line: 185, column: 23, scope: !1846, inlinedAt: !3092)
!3097 = !DILocation(line: 185, column: 19, scope: !1846, inlinedAt: !3092)
!3098 = !DILocation(line: 186, column: 5, scope: !1846, inlinedAt: !3092)
!3099 = !DILocation(line: 187, column: 6, scope: !1832, inlinedAt: !3092)
!3100 = !DILocation(line: 187, column: 17, scope: !1832, inlinedAt: !3092)
!3101 = !DILocation(line: 188, column: 6, scope: !1832, inlinedAt: !3092)
!3102 = !DILocation(line: 188, column: 18, scope: !1832, inlinedAt: !3092)
!3103 = !DILocation(line: 1032, column: 10, scope: !3076, inlinedAt: !3086)
!3104 = !DILocation(line: 1033, column: 1, scope: !3076, inlinedAt: !3086)
!3105 = !DILocation(line: 1021, column: 3, scope: !3067)
!3106 = !DILocation(line: 0, scope: !3076)
!3107 = !DILocation(line: 1030, column: 3, scope: !3076)
!3108 = !DILocation(line: 1030, column: 26, scope: !3076)
!3109 = !DILocation(line: 1030, column: 30, scope: !3076)
!3110 = !DILocation(line: 0, scope: !1832, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1031, column: 3, scope: !3076)
!3112 = !DILocation(line: 184, column: 6, scope: !1832, inlinedAt: !3111)
!3113 = !DILocation(line: 184, column: 12, scope: !1832, inlinedAt: !3111)
!3114 = !DILocation(line: 185, column: 8, scope: !1846, inlinedAt: !3111)
!3115 = !DILocation(line: 185, column: 23, scope: !1846, inlinedAt: !3111)
!3116 = !DILocation(line: 185, column: 19, scope: !1846, inlinedAt: !3111)
!3117 = !DILocation(line: 186, column: 5, scope: !1846, inlinedAt: !3111)
!3118 = !DILocation(line: 187, column: 6, scope: !1832, inlinedAt: !3111)
!3119 = !DILocation(line: 187, column: 17, scope: !1832, inlinedAt: !3111)
!3120 = !DILocation(line: 188, column: 6, scope: !1832, inlinedAt: !3111)
!3121 = !DILocation(line: 188, column: 18, scope: !1832, inlinedAt: !3111)
!3122 = !DILocation(line: 1032, column: 10, scope: !3076)
!3123 = !DILocation(line: 1033, column: 1, scope: !3076)
!3124 = !DILocation(line: 1032, column: 3, scope: !3076)
!3125 = distinct !DISubprogram(name: "quotearg_custom", scope: !314, file: !314, line: 1036, type: !3126, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!29, !31, !31, !31}
!3128 = !{!3129, !3130, !3131}
!3129 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3125, file: !314, line: 1036, type: !31)
!3130 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3125, file: !314, line: 1036, type: !31)
!3131 = !DILocalVariable(name: "arg", arg: 3, scope: !3125, file: !314, line: 1037, type: !31)
!3132 = !DILocation(line: 1030, column: 26, scope: !3076, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 1021, column: 10, scope: !3067, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 1039, column: 10, scope: !3125)
!3135 = !DILocation(line: 0, scope: !3125)
!3136 = !DILocation(line: 0, scope: !3067, inlinedAt: !3134)
!3137 = !DILocation(line: 0, scope: !3076, inlinedAt: !3133)
!3138 = !DILocation(line: 1030, column: 3, scope: !3076, inlinedAt: !3133)
!3139 = !DILocation(line: 1030, column: 30, scope: !3076, inlinedAt: !3133)
!3140 = !DILocation(line: 0, scope: !1832, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 1031, column: 3, scope: !3076, inlinedAt: !3133)
!3142 = !DILocation(line: 184, column: 6, scope: !1832, inlinedAt: !3141)
!3143 = !DILocation(line: 184, column: 12, scope: !1832, inlinedAt: !3141)
!3144 = !DILocation(line: 185, column: 8, scope: !1846, inlinedAt: !3141)
!3145 = !DILocation(line: 185, column: 23, scope: !1846, inlinedAt: !3141)
!3146 = !DILocation(line: 185, column: 19, scope: !1846, inlinedAt: !3141)
!3147 = !DILocation(line: 186, column: 5, scope: !1846, inlinedAt: !3141)
!3148 = !DILocation(line: 187, column: 6, scope: !1832, inlinedAt: !3141)
!3149 = !DILocation(line: 187, column: 17, scope: !1832, inlinedAt: !3141)
!3150 = !DILocation(line: 188, column: 6, scope: !1832, inlinedAt: !3141)
!3151 = !DILocation(line: 188, column: 18, scope: !1832, inlinedAt: !3141)
!3152 = !DILocation(line: 1032, column: 10, scope: !3076, inlinedAt: !3133)
!3153 = !DILocation(line: 1033, column: 1, scope: !3076, inlinedAt: !3133)
!3154 = !DILocation(line: 1039, column: 3, scope: !3125)
!3155 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !314, file: !314, line: 1043, type: !3156, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!29, !31, !31, !31, !88}
!3158 = !{!3159, !3160, !3161, !3162}
!3159 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3155, file: !314, line: 1043, type: !31)
!3160 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3155, file: !314, line: 1043, type: !31)
!3161 = !DILocalVariable(name: "arg", arg: 3, scope: !3155, file: !314, line: 1044, type: !31)
!3162 = !DILocalVariable(name: "argsize", arg: 4, scope: !3155, file: !314, line: 1044, type: !88)
!3163 = !DILocation(line: 1030, column: 26, scope: !3076, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 1046, column: 10, scope: !3155)
!3165 = !DILocation(line: 0, scope: !3155)
!3166 = !DILocation(line: 0, scope: !3076, inlinedAt: !3164)
!3167 = !DILocation(line: 1030, column: 3, scope: !3076, inlinedAt: !3164)
!3168 = !DILocation(line: 1030, column: 30, scope: !3076, inlinedAt: !3164)
!3169 = !DILocation(line: 0, scope: !1832, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 1031, column: 3, scope: !3076, inlinedAt: !3164)
!3171 = !DILocation(line: 184, column: 6, scope: !1832, inlinedAt: !3170)
!3172 = !DILocation(line: 184, column: 12, scope: !1832, inlinedAt: !3170)
!3173 = !DILocation(line: 185, column: 8, scope: !1846, inlinedAt: !3170)
!3174 = !DILocation(line: 185, column: 23, scope: !1846, inlinedAt: !3170)
!3175 = !DILocation(line: 185, column: 19, scope: !1846, inlinedAt: !3170)
!3176 = !DILocation(line: 186, column: 5, scope: !1846, inlinedAt: !3170)
!3177 = !DILocation(line: 187, column: 6, scope: !1832, inlinedAt: !3170)
!3178 = !DILocation(line: 187, column: 17, scope: !1832, inlinedAt: !3170)
!3179 = !DILocation(line: 188, column: 6, scope: !1832, inlinedAt: !3170)
!3180 = !DILocation(line: 188, column: 18, scope: !1832, inlinedAt: !3170)
!3181 = !DILocation(line: 1032, column: 10, scope: !3076, inlinedAt: !3164)
!3182 = !DILocation(line: 1033, column: 1, scope: !3076, inlinedAt: !3164)
!3183 = !DILocation(line: 1046, column: 3, scope: !3155)
!3184 = distinct !DISubprogram(name: "quote_n_mem", scope: !314, file: !314, line: 1061, type: !3185, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3187)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!31, !33, !31, !88}
!3187 = !{!3188, !3189, !3190}
!3188 = !DILocalVariable(name: "n", arg: 1, scope: !3184, file: !314, line: 1061, type: !33)
!3189 = !DILocalVariable(name: "arg", arg: 2, scope: !3184, file: !314, line: 1061, type: !31)
!3190 = !DILocalVariable(name: "argsize", arg: 3, scope: !3184, file: !314, line: 1061, type: !88)
!3191 = !DILocation(line: 0, scope: !3184)
!3192 = !DILocation(line: 1063, column: 10, scope: !3184)
!3193 = !DILocation(line: 1063, column: 3, scope: !3184)
!3194 = distinct !DISubprogram(name: "quote_mem", scope: !314, file: !314, line: 1067, type: !3195, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!31, !31, !88}
!3197 = !{!3198, !3199}
!3198 = !DILocalVariable(name: "arg", arg: 1, scope: !3194, file: !314, line: 1067, type: !31)
!3199 = !DILocalVariable(name: "argsize", arg: 2, scope: !3194, file: !314, line: 1067, type: !88)
!3200 = !DILocation(line: 0, scope: !3194)
!3201 = !DILocation(line: 0, scope: !3184, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 1069, column: 10, scope: !3194)
!3203 = !DILocation(line: 1063, column: 10, scope: !3184, inlinedAt: !3202)
!3204 = !DILocation(line: 1069, column: 3, scope: !3194)
!3205 = distinct !DISubprogram(name: "quote_n", scope: !314, file: !314, line: 1073, type: !3206, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!31, !33, !31}
!3208 = !{!3209, !3210}
!3209 = !DILocalVariable(name: "n", arg: 1, scope: !3205, file: !314, line: 1073, type: !33)
!3210 = !DILocalVariable(name: "arg", arg: 2, scope: !3205, file: !314, line: 1073, type: !31)
!3211 = !DILocation(line: 0, scope: !3205)
!3212 = !DILocation(line: 0, scope: !3184, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 1075, column: 10, scope: !3205)
!3214 = !DILocation(line: 1063, column: 10, scope: !3184, inlinedAt: !3213)
!3215 = !DILocation(line: 1075, column: 3, scope: !3205)
!3216 = distinct !DISubprogram(name: "quote", scope: !314, file: !314, line: 1079, type: !181, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3217)
!3217 = !{!3218}
!3218 = !DILocalVariable(name: "arg", arg: 1, scope: !3216, file: !314, line: 1079, type: !31)
!3219 = !DILocation(line: 0, scope: !3216)
!3220 = !DILocation(line: 0, scope: !3205, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 1081, column: 10, scope: !3216)
!3222 = !DILocation(line: 0, scope: !3184, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 1075, column: 10, scope: !3205, inlinedAt: !3221)
!3224 = !DILocation(line: 1063, column: 10, scope: !3184, inlinedAt: !3223)
!3225 = !DILocation(line: 1081, column: 3, scope: !3216)
!3226 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !436, file: !436, line: 29, type: !3227, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !3234)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!3229, !3229}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !161, line: 7, size: 128, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3230, file: !161, line: 9, baseType: !164, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3230, file: !161, line: 10, baseType: !168, size: 64, offset: 64)
!3234 = !{!3235, !3236}
!3235 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !3226, file: !436, line: 29, type: !3229)
!3236 = !DILocalVariable(name: "statbuf", scope: !3226, file: !436, line: 31, type: !3237)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1199, line: 46, size: 1152, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3255, !3256, !3257}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3237, file: !1199, line: 48, baseType: !169, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3237, file: !1199, line: 53, baseType: !166, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3237, file: !1199, line: 61, baseType: !1204, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3237, file: !1199, line: 62, baseType: !1206, size: 32, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3237, file: !1199, line: 64, baseType: !1208, size: 32, offset: 224)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3237, file: !1199, line: 65, baseType: !1210, size: 32, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3237, file: !1199, line: 67, baseType: !33, size: 32, offset: 288)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3237, file: !1199, line: 69, baseType: !169, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3237, file: !1199, line: 74, baseType: !62, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3237, file: !1199, line: 78, baseType: !1215, size: 64, offset: 448)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3237, file: !1199, line: 80, baseType: !1217, size: 64, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3237, file: !1199, line: 91, baseType: !3251, size: 128, offset: 576)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1220, line: 10, size: 128, elements: !3252)
!3252 = !{!3253, !3254}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3251, file: !1220, line: 12, baseType: !1223, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3251, file: !1220, line: 16, baseType: !1225, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3237, file: !1199, line: 92, baseType: !3251, size: 128, offset: 704)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3237, file: !1199, line: 93, baseType: !3251, size: 128, offset: 832)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3237, file: !1199, line: 106, baseType: !1229, size: 192, offset: 960)
!3258 = !DILocation(line: 0, scope: !3226)
!3259 = !DILocation(line: 31, column: 3, scope: !3226)
!3260 = !DILocation(line: 31, column: 15, scope: !3226)
!3261 = !DILocalVariable(name: "__path", arg: 1, scope: !3262, file: !1333, line: 460, type: !31)
!3262 = distinct !DISubprogram(name: "lstat", scope: !1333, file: !1333, line: 460, type: !3263, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !3266)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!33, !31, !3265}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3266 = !{!3261, !3267}
!3267 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3262, file: !1333, line: 460, type: !3265)
!3268 = !DILocation(line: 0, scope: !3262, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 32, column: 7, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3226, file: !436, line: 32, column: 7)
!3271 = !DILocation(line: 462, column: 10, scope: !3262, inlinedAt: !3269)
!3272 = !DILocation(line: 32, column: 7, scope: !3270)
!3273 = !DILocation(line: 32, column: 7, scope: !3226)
!3274 = !DILocation(line: 35, column: 30, scope: !3226)
!3275 = !DILocation(line: 34, column: 20, scope: !3226)
!3276 = !DILocation(line: 36, column: 3, scope: !3226)
!3277 = !DILocation(line: 37, column: 1, scope: !3226)
!3278 = distinct !DISubprogram(name: "version_etc_arn", scope: !438, file: !438, line: 61, type: !3279, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3285)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !3281, !31, !31, !31, !3284, !88}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3283, line: 7, baseType: !448)
!3283 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291}
!3286 = !DILocalVariable(name: "stream", arg: 1, scope: !3278, file: !438, line: 61, type: !3281)
!3287 = !DILocalVariable(name: "command_name", arg: 2, scope: !3278, file: !438, line: 62, type: !31)
!3288 = !DILocalVariable(name: "package", arg: 3, scope: !3278, file: !438, line: 62, type: !31)
!3289 = !DILocalVariable(name: "version", arg: 4, scope: !3278, file: !438, line: 63, type: !31)
!3290 = !DILocalVariable(name: "authors", arg: 5, scope: !3278, file: !438, line: 64, type: !3284)
!3291 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3278, file: !438, line: 64, type: !88)
!3292 = !DILocation(line: 0, scope: !3278)
!3293 = !DILocation(line: 66, column: 7, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3278, file: !438, line: 66, column: 7)
!3295 = !DILocation(line: 66, column: 7, scope: !3278)
!3296 = !DILocation(line: 67, column: 5, scope: !3294)
!3297 = !DILocation(line: 69, column: 5, scope: !3294)
!3298 = !DILocation(line: 83, column: 3, scope: !3278)
!3299 = !DILocation(line: 85, column: 3, scope: !3278)
!3300 = !DILocation(line: 88, column: 3, scope: !3278)
!3301 = !DILocation(line: 95, column: 3, scope: !3278)
!3302 = !DILocation(line: 97, column: 3, scope: !3278)
!3303 = !DILocation(line: 105, column: 7, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3278, file: !438, line: 98, column: 5)
!3305 = !DILocation(line: 106, column: 7, scope: !3304)
!3306 = !DILocation(line: 109, column: 7, scope: !3304)
!3307 = !DILocation(line: 110, column: 7, scope: !3304)
!3308 = !DILocation(line: 113, column: 7, scope: !3304)
!3309 = !DILocation(line: 115, column: 7, scope: !3304)
!3310 = !DILocation(line: 120, column: 7, scope: !3304)
!3311 = !DILocation(line: 122, column: 7, scope: !3304)
!3312 = !DILocation(line: 127, column: 7, scope: !3304)
!3313 = !DILocation(line: 129, column: 7, scope: !3304)
!3314 = !DILocation(line: 134, column: 7, scope: !3304)
!3315 = !DILocation(line: 137, column: 7, scope: !3304)
!3316 = !DILocation(line: 142, column: 7, scope: !3304)
!3317 = !DILocation(line: 145, column: 7, scope: !3304)
!3318 = !DILocation(line: 150, column: 7, scope: !3304)
!3319 = !DILocation(line: 154, column: 7, scope: !3304)
!3320 = !DILocation(line: 159, column: 7, scope: !3304)
!3321 = !DILocation(line: 163, column: 7, scope: !3304)
!3322 = !DILocation(line: 170, column: 7, scope: !3304)
!3323 = !DILocation(line: 174, column: 7, scope: !3304)
!3324 = !DILocation(line: 176, column: 1, scope: !3278)
!3325 = distinct !DISubprogram(name: "version_etc_ar", scope: !438, file: !438, line: 183, type: !3326, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !3281, !31, !31, !31, !3284}
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334}
!3329 = !DILocalVariable(name: "stream", arg: 1, scope: !3325, file: !438, line: 183, type: !3281)
!3330 = !DILocalVariable(name: "command_name", arg: 2, scope: !3325, file: !438, line: 184, type: !31)
!3331 = !DILocalVariable(name: "package", arg: 3, scope: !3325, file: !438, line: 184, type: !31)
!3332 = !DILocalVariable(name: "version", arg: 4, scope: !3325, file: !438, line: 185, type: !31)
!3333 = !DILocalVariable(name: "authors", arg: 5, scope: !3325, file: !438, line: 185, type: !3284)
!3334 = !DILocalVariable(name: "n_authors", scope: !3325, file: !438, line: 187, type: !88)
!3335 = !DILocation(line: 0, scope: !3325)
!3336 = !DILocation(line: 189, column: 8, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3325, file: !438, line: 189, column: 3)
!3338 = !DILocation(line: 0, scope: !3337)
!3339 = !DILocation(line: 189, column: 23, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3337, file: !438, line: 189, column: 3)
!3341 = !DILocation(line: 189, column: 3, scope: !3337)
!3342 = !DILocation(line: 189, column: 52, scope: !3340)
!3343 = distinct !{!3343, !3341, !3344}
!3344 = !DILocation(line: 190, column: 5, scope: !3337)
!3345 = !DILocation(line: 191, column: 3, scope: !3325)
!3346 = !DILocation(line: 192, column: 1, scope: !3325)
!3347 = distinct !DISubprogram(name: "version_etc_va", scope: !438, file: !438, line: 199, type: !3348, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3357)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !3281, !31, !31, !31, !3350}
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !438, line: 192, size: 192, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3356}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3351, file: !438, line: 192, baseType: !7, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3351, file: !438, line: 192, baseType: !7, size: 32, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3351, file: !438, line: 192, baseType: !86, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3351, file: !438, line: 192, baseType: !86, size: 64, offset: 128)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3358 = !DILocalVariable(name: "stream", arg: 1, scope: !3347, file: !438, line: 199, type: !3281)
!3359 = !DILocalVariable(name: "command_name", arg: 2, scope: !3347, file: !438, line: 200, type: !31)
!3360 = !DILocalVariable(name: "package", arg: 3, scope: !3347, file: !438, line: 200, type: !31)
!3361 = !DILocalVariable(name: "version", arg: 4, scope: !3347, file: !438, line: 201, type: !31)
!3362 = !DILocalVariable(name: "authors", arg: 5, scope: !3347, file: !438, line: 201, type: !3350)
!3363 = !DILocalVariable(name: "n_authors", scope: !3347, file: !438, line: 203, type: !88)
!3364 = !DILocalVariable(name: "authtab", scope: !3347, file: !438, line: 204, type: !3365)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !404)
!3366 = !DILocation(line: 0, scope: !3347)
!3367 = !DILocation(line: 204, column: 3, scope: !3347)
!3368 = !DILocation(line: 204, column: 15, scope: !3347)
!3369 = !DILocation(line: 0, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !438, line: 206, column: 3)
!3371 = distinct !DILexicalBlock(scope: !3347, file: !438, line: 206, column: 3)
!3372 = !DILocation(line: 208, column: 35, scope: !3370)
!3373 = !DILocation(line: 208, column: 14, scope: !3370)
!3374 = !DILocation(line: 208, column: 33, scope: !3370)
!3375 = !DILocation(line: 208, column: 67, scope: !3370)
!3376 = !DILocation(line: 206, column: 3, scope: !3371)
!3377 = !DILocation(line: 0, scope: !3371)
!3378 = !DILocation(line: 211, column: 3, scope: !3347)
!3379 = !DILocation(line: 213, column: 1, scope: !3347)
!3380 = distinct !DISubprogram(name: "version_etc", scope: !438, file: !438, line: 230, type: !3381, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !3281, !31, !31, !31, null}
!3383 = !{!3384, !3385, !3386, !3387, !3388}
!3384 = !DILocalVariable(name: "stream", arg: 1, scope: !3380, file: !438, line: 230, type: !3281)
!3385 = !DILocalVariable(name: "command_name", arg: 2, scope: !3380, file: !438, line: 231, type: !31)
!3386 = !DILocalVariable(name: "package", arg: 3, scope: !3380, file: !438, line: 231, type: !31)
!3387 = !DILocalVariable(name: "version", arg: 4, scope: !3380, file: !438, line: 232, type: !31)
!3388 = !DILocalVariable(name: "authors", scope: !3380, file: !438, line: 234, type: !3389)
!3389 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !36, line: 52, baseType: !3390)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3391, line: 32, baseType: !3392)
!3391 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !438, line: 234, baseType: !3393)
!3393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3351, size: 192, elements: !71)
!3394 = !DILocation(line: 0, scope: !3380)
!3395 = !DILocation(line: 234, column: 3, scope: !3380)
!3396 = !DILocation(line: 234, column: 11, scope: !3380)
!3397 = !DILocation(line: 236, column: 3, scope: !3380)
!3398 = !DILocation(line: 237, column: 3, scope: !3380)
!3399 = !DILocation(line: 238, column: 3, scope: !3380)
!3400 = !DILocation(line: 239, column: 1, scope: !3380)
!3401 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !438, file: !438, line: 242, type: !116, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !34)
!3402 = !DILocation(line: 244, column: 3, scope: !3401)
!3403 = !DILocation(line: 249, column: 3, scope: !3401)
!3404 = !DILocation(line: 255, column: 3, scope: !3401)
!3405 = !DILocation(line: 260, column: 3, scope: !3401)
!3406 = !DILocation(line: 262, column: 1, scope: !3401)
!3407 = distinct !DISubprogram(name: "xnmalloc", scope: !152, file: !152, line: 99, type: !1580, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3408)
!3408 = !{!3409, !3410}
!3409 = !DILocalVariable(name: "n", arg: 1, scope: !3407, file: !152, line: 99, type: !88)
!3410 = !DILocalVariable(name: "s", arg: 2, scope: !3407, file: !152, line: 99, type: !88)
!3411 = !DILocation(line: 0, scope: !3407)
!3412 = !DILocation(line: 101, column: 7, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3407, file: !152, line: 101, column: 7)
!3414 = !DILocation(line: 101, column: 7, scope: !3407)
!3415 = !DILocation(line: 102, column: 5, scope: !3413)
!3416 = !DILocation(line: 103, column: 21, scope: !3407)
!3417 = !DILocalVariable(name: "n", arg: 1, scope: !3418, file: !480, line: 39, type: !88)
!3418 = distinct !DISubprogram(name: "xmalloc", scope: !480, file: !480, line: 39, type: !3419, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!86, !88}
!3421 = !{!3417, !3422}
!3422 = !DILocalVariable(name: "p", scope: !3418, file: !480, line: 41, type: !86)
!3423 = !DILocation(line: 0, scope: !3418, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 103, column: 10, scope: !3407)
!3425 = !DILocation(line: 41, column: 13, scope: !3418, inlinedAt: !3424)
!3426 = !DILocation(line: 42, column: 8, scope: !3427, inlinedAt: !3424)
!3427 = distinct !DILexicalBlock(scope: !3418, file: !480, line: 42, column: 7)
!3428 = !DILocation(line: 42, column: 15, scope: !3427, inlinedAt: !3424)
!3429 = !DILocation(line: 42, column: 10, scope: !3427, inlinedAt: !3424)
!3430 = !DILocation(line: 43, column: 5, scope: !3427, inlinedAt: !3424)
!3431 = !DILocation(line: 103, column: 3, scope: !3407)
!3432 = !DILocation(line: 0, scope: !3418)
!3433 = !DILocation(line: 41, column: 13, scope: !3418)
!3434 = !DILocation(line: 42, column: 8, scope: !3427)
!3435 = !DILocation(line: 42, column: 15, scope: !3427)
!3436 = !DILocation(line: 42, column: 10, scope: !3427)
!3437 = !DILocation(line: 43, column: 5, scope: !3427)
!3438 = !DILocation(line: 44, column: 3, scope: !3418)
!3439 = distinct !DISubprogram(name: "xnrealloc", scope: !152, file: !152, line: 112, type: !3440, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!86, !86, !88, !88}
!3442 = !{!3443, !3444, !3445}
!3443 = !DILocalVariable(name: "p", arg: 1, scope: !3439, file: !152, line: 112, type: !86)
!3444 = !DILocalVariable(name: "n", arg: 2, scope: !3439, file: !152, line: 112, type: !88)
!3445 = !DILocalVariable(name: "s", arg: 3, scope: !3439, file: !152, line: 112, type: !88)
!3446 = !DILocation(line: 0, scope: !3439)
!3447 = !DILocation(line: 114, column: 7, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3439, file: !152, line: 114, column: 7)
!3449 = !DILocation(line: 114, column: 7, scope: !3439)
!3450 = !DILocation(line: 115, column: 5, scope: !3448)
!3451 = !DILocation(line: 116, column: 25, scope: !3439)
!3452 = !DILocalVariable(name: "p", arg: 1, scope: !3453, file: !480, line: 51, type: !86)
!3453 = distinct !DISubprogram(name: "xrealloc", scope: !480, file: !480, line: 51, type: !3454, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!86, !86, !88}
!3456 = !{!3452, !3457}
!3457 = !DILocalVariable(name: "n", arg: 2, scope: !3453, file: !480, line: 51, type: !88)
!3458 = !DILocation(line: 0, scope: !3453, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 116, column: 10, scope: !3439)
!3460 = !DILocation(line: 53, column: 8, scope: !3461, inlinedAt: !3459)
!3461 = distinct !DILexicalBlock(scope: !3453, file: !480, line: 53, column: 7)
!3462 = !DILocation(line: 53, column: 13, scope: !3461, inlinedAt: !3459)
!3463 = !DILocation(line: 53, column: 10, scope: !3461, inlinedAt: !3459)
!3464 = !DILocation(line: 57, column: 7, scope: !3465, inlinedAt: !3459)
!3465 = distinct !DILexicalBlock(scope: !3461, file: !480, line: 54, column: 5)
!3466 = !DILocation(line: 58, column: 7, scope: !3465, inlinedAt: !3459)
!3467 = !DILocation(line: 61, column: 7, scope: !3453, inlinedAt: !3459)
!3468 = !DILocation(line: 62, column: 8, scope: !3469, inlinedAt: !3459)
!3469 = distinct !DILexicalBlock(scope: !3453, file: !480, line: 62, column: 7)
!3470 = !DILocation(line: 62, column: 13, scope: !3469, inlinedAt: !3459)
!3471 = !DILocation(line: 62, column: 10, scope: !3469, inlinedAt: !3459)
!3472 = !DILocation(line: 63, column: 5, scope: !3469, inlinedAt: !3459)
!3473 = !DILocation(line: 116, column: 3, scope: !3439)
!3474 = !DILocation(line: 0, scope: !3453)
!3475 = !DILocation(line: 53, column: 8, scope: !3461)
!3476 = !DILocation(line: 53, column: 13, scope: !3461)
!3477 = !DILocation(line: 53, column: 10, scope: !3461)
!3478 = !DILocation(line: 57, column: 7, scope: !3465)
!3479 = !DILocation(line: 58, column: 7, scope: !3465)
!3480 = !DILocation(line: 61, column: 7, scope: !3453)
!3481 = !DILocation(line: 62, column: 8, scope: !3469)
!3482 = !DILocation(line: 62, column: 13, scope: !3469)
!3483 = !DILocation(line: 62, column: 10, scope: !3469)
!3484 = !DILocation(line: 63, column: 5, scope: !3469)
!3485 = !DILocation(line: 65, column: 1, scope: !3453)
!3486 = !DILocation(line: 0, scope: !483)
!3487 = !DILocation(line: 176, column: 14, scope: !483)
!3488 = !DILocation(line: 178, column: 9, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !483, file: !152, line: 178, column: 7)
!3490 = !DILocation(line: 178, column: 7, scope: !483)
!3491 = !DILocation(line: 180, column: 13, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !152, line: 180, column: 11)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !152, line: 179, column: 5)
!3494 = !DILocation(line: 180, column: 11, scope: !3493)
!3495 = !DILocation(line: 188, column: 30, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !152, line: 181, column: 9)
!3497 = !DILocation(line: 189, column: 16, scope: !3496)
!3498 = !DILocation(line: 189, column: 13, scope: !3496)
!3499 = !DILocation(line: 190, column: 9, scope: !3496)
!3500 = !DILocation(line: 191, column: 11, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3493, file: !152, line: 191, column: 11)
!3502 = !DILocation(line: 191, column: 11, scope: !3493)
!3503 = !DILocation(line: 206, column: 7, scope: !483)
!3504 = !DILocation(line: 207, column: 25, scope: !483)
!3505 = !DILocation(line: 0, scope: !3453, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 207, column: 10, scope: !483)
!3507 = !DILocation(line: 53, column: 10, scope: !3461, inlinedAt: !3506)
!3508 = !DILocation(line: 192, column: 9, scope: !3501)
!3509 = !DILocation(line: 200, column: 69, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !152, line: 200, column: 11)
!3511 = distinct !DILexicalBlock(scope: !3489, file: !152, line: 195, column: 5)
!3512 = !DILocation(line: 201, column: 11, scope: !3510)
!3513 = !DILocation(line: 200, column: 11, scope: !3511)
!3514 = !DILocation(line: 202, column: 9, scope: !3510)
!3515 = !DILocation(line: 203, column: 14, scope: !3511)
!3516 = !DILocation(line: 203, column: 18, scope: !3511)
!3517 = !DILocation(line: 203, column: 9, scope: !3511)
!3518 = !DILocation(line: 53, column: 8, scope: !3461, inlinedAt: !3506)
!3519 = !DILocation(line: 57, column: 7, scope: !3465, inlinedAt: !3506)
!3520 = !DILocation(line: 58, column: 7, scope: !3465, inlinedAt: !3506)
!3521 = !DILocation(line: 61, column: 7, scope: !3453, inlinedAt: !3506)
!3522 = !DILocation(line: 62, column: 8, scope: !3469, inlinedAt: !3506)
!3523 = !DILocation(line: 62, column: 13, scope: !3469, inlinedAt: !3506)
!3524 = !DILocation(line: 62, column: 10, scope: !3469, inlinedAt: !3506)
!3525 = !DILocation(line: 63, column: 5, scope: !3469, inlinedAt: !3506)
!3526 = !DILocation(line: 207, column: 3, scope: !483)
!3527 = distinct !DISubprogram(name: "xcharalloc", scope: !152, file: !152, line: 216, type: !1569, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3528)
!3528 = !{!3529}
!3529 = !DILocalVariable(name: "n", arg: 1, scope: !3527, file: !152, line: 216, type: !88)
!3530 = !DILocation(line: 0, scope: !3527)
!3531 = !DILocation(line: 0, scope: !3418, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 218, column: 10, scope: !3527)
!3533 = !DILocation(line: 41, column: 13, scope: !3418, inlinedAt: !3532)
!3534 = !DILocation(line: 42, column: 8, scope: !3427, inlinedAt: !3532)
!3535 = !DILocation(line: 42, column: 15, scope: !3427, inlinedAt: !3532)
!3536 = !DILocation(line: 42, column: 10, scope: !3427, inlinedAt: !3532)
!3537 = !DILocation(line: 43, column: 5, scope: !3427, inlinedAt: !3532)
!3538 = !DILocation(line: 218, column: 3, scope: !3527)
!3539 = distinct !DISubprogram(name: "x2realloc", scope: !480, file: !480, line: 74, type: !3540, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3542)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!86, !86, !486}
!3542 = !{!3543, !3544}
!3543 = !DILocalVariable(name: "p", arg: 1, scope: !3539, file: !480, line: 74, type: !86)
!3544 = !DILocalVariable(name: "pn", arg: 2, scope: !3539, file: !480, line: 74, type: !486)
!3545 = !DILocation(line: 0, scope: !3539)
!3546 = !DILocation(line: 0, scope: !483, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 76, column: 10, scope: !3539)
!3548 = !DILocation(line: 176, column: 14, scope: !483, inlinedAt: !3547)
!3549 = !DILocation(line: 178, column: 9, scope: !3489, inlinedAt: !3547)
!3550 = !DILocation(line: 178, column: 7, scope: !483, inlinedAt: !3547)
!3551 = !DILocation(line: 180, column: 13, scope: !3492, inlinedAt: !3547)
!3552 = !DILocation(line: 180, column: 11, scope: !3493, inlinedAt: !3547)
!3553 = !DILocation(line: 191, column: 11, scope: !3501, inlinedAt: !3547)
!3554 = !DILocation(line: 191, column: 11, scope: !3493, inlinedAt: !3547)
!3555 = !DILocation(line: 206, column: 7, scope: !483, inlinedAt: !3547)
!3556 = !DILocation(line: 0, scope: !3453, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 207, column: 10, scope: !483, inlinedAt: !3547)
!3558 = !DILocation(line: 53, column: 10, scope: !3461, inlinedAt: !3557)
!3559 = !DILocation(line: 192, column: 9, scope: !3501, inlinedAt: !3547)
!3560 = !DILocation(line: 201, column: 11, scope: !3510, inlinedAt: !3547)
!3561 = !DILocation(line: 200, column: 11, scope: !3511, inlinedAt: !3547)
!3562 = !DILocation(line: 202, column: 9, scope: !3510, inlinedAt: !3547)
!3563 = !DILocation(line: 203, column: 14, scope: !3511, inlinedAt: !3547)
!3564 = !DILocation(line: 203, column: 18, scope: !3511, inlinedAt: !3547)
!3565 = !DILocation(line: 203, column: 9, scope: !3511, inlinedAt: !3547)
!3566 = !DILocation(line: 53, column: 8, scope: !3461, inlinedAt: !3557)
!3567 = !DILocation(line: 57, column: 7, scope: !3465, inlinedAt: !3557)
!3568 = !DILocation(line: 58, column: 7, scope: !3465, inlinedAt: !3557)
!3569 = !DILocation(line: 61, column: 7, scope: !3453, inlinedAt: !3557)
!3570 = !DILocation(line: 62, column: 8, scope: !3469, inlinedAt: !3557)
!3571 = !DILocation(line: 62, column: 13, scope: !3469, inlinedAt: !3557)
!3572 = !DILocation(line: 62, column: 10, scope: !3469, inlinedAt: !3557)
!3573 = !DILocation(line: 63, column: 5, scope: !3469, inlinedAt: !3557)
!3574 = !DILocation(line: 76, column: 3, scope: !3539)
!3575 = distinct !DISubprogram(name: "xzalloc", scope: !480, file: !480, line: 84, type: !3419, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3576)
!3576 = !{!3577}
!3577 = !DILocalVariable(name: "n", arg: 1, scope: !3575, file: !480, line: 84, type: !88)
!3578 = !DILocation(line: 0, scope: !3575)
!3579 = !DILocalVariable(name: "n", arg: 1, scope: !3580, file: !480, line: 93, type: !88)
!3580 = distinct !DISubprogram(name: "xcalloc", scope: !480, file: !480, line: 93, type: !1580, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3581)
!3581 = !{!3579, !3582, !3583}
!3582 = !DILocalVariable(name: "s", arg: 2, scope: !3580, file: !480, line: 93, type: !88)
!3583 = !DILocalVariable(name: "p", scope: !3580, file: !480, line: 95, type: !86)
!3584 = !DILocation(line: 0, scope: !3580, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 86, column: 10, scope: !3575)
!3586 = !DILocation(line: 100, column: 7, scope: !3587, inlinedAt: !3585)
!3587 = distinct !DILexicalBlock(scope: !3580, file: !480, line: 100, column: 7)
!3588 = !DILocation(line: 101, column: 7, scope: !3587, inlinedAt: !3585)
!3589 = !DILocation(line: 101, column: 18, scope: !3587, inlinedAt: !3585)
!3590 = !DILocation(line: 101, column: 16, scope: !3587, inlinedAt: !3585)
!3591 = !DILocation(line: 100, column: 7, scope: !3580, inlinedAt: !3585)
!3592 = !DILocation(line: 102, column: 5, scope: !3587, inlinedAt: !3585)
!3593 = !DILocation(line: 86, column: 3, scope: !3575)
!3594 = !DILocation(line: 0, scope: !3580)
!3595 = !DILocation(line: 100, column: 7, scope: !3587)
!3596 = !DILocation(line: 101, column: 7, scope: !3587)
!3597 = !DILocation(line: 101, column: 18, scope: !3587)
!3598 = !DILocation(line: 101, column: 16, scope: !3587)
!3599 = !DILocation(line: 100, column: 7, scope: !3580)
!3600 = !DILocation(line: 102, column: 5, scope: !3587)
!3601 = !DILocation(line: 103, column: 3, scope: !3580)
!3602 = distinct !DISubprogram(name: "xmemdup", scope: !480, file: !480, line: 111, type: !3603, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!86, !340, !88}
!3605 = !{!3606, !3607}
!3606 = !DILocalVariable(name: "p", arg: 1, scope: !3602, file: !480, line: 111, type: !340)
!3607 = !DILocalVariable(name: "s", arg: 2, scope: !3602, file: !480, line: 111, type: !88)
!3608 = !DILocation(line: 0, scope: !3602)
!3609 = !DILocation(line: 0, scope: !3418, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 113, column: 18, scope: !3602)
!3611 = !DILocation(line: 41, column: 13, scope: !3418, inlinedAt: !3610)
!3612 = !DILocation(line: 42, column: 8, scope: !3427, inlinedAt: !3610)
!3613 = !DILocation(line: 42, column: 15, scope: !3427, inlinedAt: !3610)
!3614 = !DILocation(line: 42, column: 10, scope: !3427, inlinedAt: !3610)
!3615 = !DILocation(line: 43, column: 5, scope: !3427, inlinedAt: !3610)
!3616 = !DILocalVariable(name: "__dest", arg: 1, scope: !3617, file: !1598, line: 31, type: !1601)
!3617 = distinct !DISubprogram(name: "memcpy", scope: !1598, file: !1598, line: 31, type: !1599, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3618)
!3618 = !{!3616, !3619, !3620}
!3619 = !DILocalVariable(name: "__src", arg: 2, scope: !3617, file: !1598, line: 31, type: !1602)
!3620 = !DILocalVariable(name: "__len", arg: 3, scope: !3617, file: !1598, line: 31, type: !88)
!3621 = !DILocation(line: 0, scope: !3617, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 113, column: 10, scope: !3602)
!3623 = !DILocation(line: 34, column: 10, scope: !3617, inlinedAt: !3622)
!3624 = !DILocation(line: 113, column: 3, scope: !3602)
!3625 = distinct !DISubprogram(name: "xstrdup", scope: !480, file: !480, line: 119, type: !98, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3626)
!3626 = !{!3627}
!3627 = !DILocalVariable(name: "string", arg: 1, scope: !3625, file: !480, line: 119, type: !31)
!3628 = !DILocation(line: 0, scope: !3625)
!3629 = !DILocation(line: 121, column: 27, scope: !3625)
!3630 = !DILocation(line: 121, column: 43, scope: !3625)
!3631 = !DILocation(line: 0, scope: !3602, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 121, column: 10, scope: !3625)
!3633 = !DILocation(line: 0, scope: !3418, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 113, column: 18, scope: !3602, inlinedAt: !3632)
!3635 = !DILocation(line: 41, column: 13, scope: !3418, inlinedAt: !3634)
!3636 = !DILocation(line: 42, column: 8, scope: !3427, inlinedAt: !3634)
!3637 = !DILocation(line: 42, column: 15, scope: !3427, inlinedAt: !3634)
!3638 = !DILocation(line: 42, column: 10, scope: !3427, inlinedAt: !3634)
!3639 = !DILocation(line: 43, column: 5, scope: !3427, inlinedAt: !3634)
!3640 = !DILocation(line: 0, scope: !3617, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 113, column: 10, scope: !3602, inlinedAt: !3632)
!3642 = !DILocation(line: 34, column: 10, scope: !3617, inlinedAt: !3641)
!3643 = !DILocation(line: 121, column: 3, scope: !3625)
!3644 = distinct !DISubprogram(name: "xalloc_die", scope: !501, file: !501, line: 32, type: !116, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !34)
!3645 = !DILocation(line: 34, column: 10, scope: !3644)
!3646 = !DILocation(line: 34, column: 33, scope: !3644)
!3647 = !DILocation(line: 34, column: 3, scope: !3644)
!3648 = !DILocation(line: 40, column: 3, scope: !3644)
!3649 = distinct !DISubprogram(name: "xgetcwd", scope: !504, file: !504, line: 35, type: !146, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3650)
!3650 = !{!3651}
!3651 = !DILocalVariable(name: "cwd", scope: !3649, file: !504, line: 37, type: !29)
!3652 = !DILocation(line: 37, column: 15, scope: !3649)
!3653 = !DILocation(line: 0, scope: !3649)
!3654 = !DILocation(line: 38, column: 9, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3649, file: !504, line: 38, column: 7)
!3656 = !DILocation(line: 38, column: 13, scope: !3655)
!3657 = !DILocation(line: 38, column: 16, scope: !3655)
!3658 = !DILocation(line: 38, column: 22, scope: !3655)
!3659 = !DILocation(line: 38, column: 7, scope: !3649)
!3660 = !DILocation(line: 39, column: 5, scope: !3655)
!3661 = !DILocation(line: 40, column: 3, scope: !3649)
!3662 = distinct !DISubprogram(name: "rpl_calloc", scope: !507, file: !507, line: 42, type: !1580, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3663)
!3663 = !{!3664, !3665, !3666, !3667}
!3664 = !DILocalVariable(name: "n", arg: 1, scope: !3662, file: !507, line: 42, type: !88)
!3665 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !507, line: 42, type: !88)
!3666 = !DILocalVariable(name: "result", scope: !3662, file: !507, line: 44, type: !86)
!3667 = !DILocalVariable(name: "bytes", scope: !3668, file: !507, line: 56, type: !88)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !507, line: 53, column: 5)
!3669 = distinct !DILexicalBlock(scope: !3662, file: !507, line: 47, column: 7)
!3670 = !DILocation(line: 0, scope: !3662)
!3671 = !DILocation(line: 47, column: 9, scope: !3669)
!3672 = !DILocation(line: 47, column: 19, scope: !3669)
!3673 = !DILocation(line: 47, column: 14, scope: !3669)
!3674 = !DILocation(line: 0, scope: !3668)
!3675 = !DILocation(line: 57, column: 21, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3668, file: !507, line: 57, column: 11)
!3677 = !DILocation(line: 57, column: 11, scope: !3668)
!3678 = !DILocation(line: 59, column: 11, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3676, file: !507, line: 58, column: 9)
!3680 = !DILocation(line: 59, column: 17, scope: !3679)
!3681 = !DILocation(line: 65, column: 12, scope: !3662)
!3682 = !DILocation(line: 72, column: 3, scope: !3662)
!3683 = !DILocation(line: 73, column: 1, scope: !3662)
!3684 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !510, file: !510, line: 86, type: !3685, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !3691)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!88, !3687, !31, !88, !3688}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1922, line: 6, baseType: !3690)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !367, line: 21, baseType: !516)
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3692 = !DILocalVariable(name: "pwc", arg: 1, scope: !3684, file: !510, line: 86, type: !3687)
!3693 = !DILocalVariable(name: "s", arg: 2, scope: !3684, file: !510, line: 86, type: !31)
!3694 = !DILocalVariable(name: "n", arg: 3, scope: !3684, file: !510, line: 86, type: !88)
!3695 = !DILocalVariable(name: "ps", arg: 4, scope: !3684, file: !510, line: 86, type: !3688)
!3696 = !DILocalVariable(name: "ret", scope: !3684, file: !510, line: 88, type: !88)
!3697 = !DILocalVariable(name: "wc", scope: !3684, file: !510, line: 89, type: !1926)
!3698 = !DILocalVariable(name: "uc", scope: !3699, file: !510, line: 156, type: !204)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !510, line: 155, column: 5)
!3700 = distinct !DILexicalBlock(scope: !3684, file: !510, line: 154, column: 7)
!3701 = !DILocation(line: 0, scope: !3684)
!3702 = !DILocation(line: 89, column: 3, scope: !3684)
!3703 = !DILocation(line: 105, column: 9, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3684, file: !510, line: 105, column: 7)
!3705 = !DILocation(line: 105, column: 7, scope: !3684)
!3706 = !DILocation(line: 145, column: 9, scope: !3684)
!3707 = !DILocation(line: 154, column: 19, scope: !3700)
!3708 = !DILocation(line: 154, column: 31, scope: !3700)
!3709 = !DILocation(line: 154, column: 26, scope: !3700)
!3710 = !DILocation(line: 154, column: 41, scope: !3700)
!3711 = !DILocation(line: 154, column: 7, scope: !3684)
!3712 = !DILocation(line: 156, column: 26, scope: !3699)
!3713 = !DILocation(line: 0, scope: !3699)
!3714 = !DILocation(line: 157, column: 14, scope: !3699)
!3715 = !DILocation(line: 157, column: 12, scope: !3699)
!3716 = !DILocation(line: 163, column: 1, scope: !3684)
!3717 = distinct !DISubprogram(name: "close_stream", scope: !529, file: !529, line: 56, type: !3718, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3722)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!33, !3720}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3283, line: 7, baseType: !536)
!3722 = !{!3723, !3724, !3726, !3727}
!3723 = !DILocalVariable(name: "stream", arg: 1, scope: !3717, file: !529, line: 56, type: !3720)
!3724 = !DILocalVariable(name: "some_pending", scope: !3717, file: !529, line: 58, type: !3725)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!3726 = !DILocalVariable(name: "prev_fail", scope: !3717, file: !529, line: 59, type: !3725)
!3727 = !DILocalVariable(name: "fclose_fail", scope: !3717, file: !529, line: 60, type: !3725)
!3728 = !DILocation(line: 0, scope: !3717)
!3729 = !DILocation(line: 58, column: 30, scope: !3717)
!3730 = !DILocalVariable(name: "__stream", arg: 1, scope: !3731, file: !3732, line: 135, type: !3720)
!3731 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3732, file: !3732, line: 135, type: !3718, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3733)
!3732 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3733 = !{!3730}
!3734 = !DILocation(line: 0, scope: !3731, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 59, column: 27, scope: !3717)
!3736 = !DILocation(line: 137, column: 10, scope: !3731, inlinedAt: !3735)
!3737 = !{!3738, !1302, i64 0}
!3738 = !{!"_IO_FILE", !1302, i64 0, !1132, i64 8, !1132, i64 16, !1132, i64 24, !1132, i64 32, !1132, i64 40, !1132, i64 48, !1132, i64 56, !1132, i64 64, !1132, i64 72, !1132, i64 80, !1132, i64 88, !1132, i64 96, !1132, i64 104, !1302, i64 112, !1302, i64 116, !1352, i64 120, !1504, i64 128, !1133, i64 130, !1133, i64 131, !1132, i64 136, !1352, i64 144, !1132, i64 152, !1132, i64 160, !1132, i64 168, !1132, i64 176, !1352, i64 184, !1302, i64 192, !1133, i64 196}
!3739 = !DILocation(line: 59, column: 43, scope: !3717)
!3740 = !DILocation(line: 60, column: 29, scope: !3717)
!3741 = !DILocation(line: 60, column: 45, scope: !3717)
!3742 = !DILocation(line: 70, column: 17, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3717, file: !529, line: 70, column: 7)
!3744 = !DILocation(line: 58, column: 50, scope: !3717)
!3745 = !DILocation(line: 70, column: 33, scope: !3743)
!3746 = !DILocation(line: 70, column: 53, scope: !3743)
!3747 = !DILocation(line: 70, column: 59, scope: !3743)
!3748 = !DILocation(line: 70, column: 7, scope: !3717)
!3749 = !DILocation(line: 72, column: 11, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3743, file: !529, line: 71, column: 5)
!3751 = !DILocation(line: 73, column: 9, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3750, file: !529, line: 72, column: 11)
!3753 = !DILocation(line: 73, column: 15, scope: !3752)
!3754 = !DILocation(line: 78, column: 1, scope: !3717)
!3755 = distinct !DISubprogram(name: "hard_locale", scope: !568, file: !568, line: 27, type: !526, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3756)
!3756 = !{!3757, !3758}
!3757 = !DILocalVariable(name: "category", arg: 1, scope: !3755, file: !568, line: 27, type: !33)
!3758 = !DILocalVariable(name: "locale", scope: !3755, file: !568, line: 29, type: !3759)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2056, elements: !3760)
!3760 = !{!3761}
!3761 = !DISubrange(count: 257)
!3762 = !DILocation(line: 0, scope: !3755)
!3763 = !DILocation(line: 29, column: 3, scope: !3755)
!3764 = !DILocation(line: 29, column: 8, scope: !3755)
!3765 = !DILocation(line: 31, column: 7, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3755, file: !568, line: 31, column: 7)
!3767 = !DILocation(line: 31, column: 7, scope: !3755)
!3768 = !DILocation(line: 34, column: 12, scope: !3755)
!3769 = !DILocation(line: 34, column: 38, scope: !3755)
!3770 = !DILocation(line: 34, column: 41, scope: !3755)
!3771 = !DILocation(line: 34, column: 66, scope: !3755)
!3772 = !DILocation(line: 35, column: 1, scope: !3755)
!3773 = distinct !DISubprogram(name: "locale_charset", scope: !575, file: !575, line: 831, type: !390, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3774)
!3774 = !{!3775}
!3775 = !DILocalVariable(name: "codeset", scope: !3773, file: !575, line: 833, type: !31)
!3776 = !DILocation(line: 847, column: 13, scope: !3773)
!3777 = !DILocation(line: 0, scope: !3773)
!3778 = !DILocation(line: 911, column: 15, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3773, file: !575, line: 911, column: 7)
!3780 = !DILocation(line: 911, column: 7, scope: !3773)
!3781 = !DILocation(line: 1070, column: 13, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !575, line: 1070, column: 13)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !575, line: 1060, column: 7)
!3784 = distinct !DILexicalBlock(scope: !3773, file: !575, line: 1019, column: 3)
!3785 = !DILocation(line: 1070, column: 24, scope: !3782)
!3786 = !DILocation(line: 1070, column: 13, scope: !3783)
!3787 = !DILocation(line: 1158, column: 3, scope: !3773)
!3788 = distinct !DISubprogram(name: "setlocale_null_r", scope: !968, file: !968, line: 269, type: !3789, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!33, !33, !29, !88}
!3791 = !{!3792, !3793, !3794}
!3792 = !DILocalVariable(name: "category", arg: 1, scope: !3788, file: !968, line: 269, type: !33)
!3793 = !DILocalVariable(name: "buf", arg: 2, scope: !3788, file: !968, line: 269, type: !29)
!3794 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3788, file: !968, line: 269, type: !88)
!3795 = !DILocation(line: 0, scope: !3788)
!3796 = !DILocalVariable(name: "category", arg: 1, scope: !3797, file: !968, line: 91, type: !33)
!3797 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !968, file: !968, line: 91, type: !3789, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3798)
!3798 = !{!3796, !3799, !3800, !3801, !3802}
!3799 = !DILocalVariable(name: "buf", arg: 2, scope: !3797, file: !968, line: 91, type: !29)
!3800 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3797, file: !968, line: 91, type: !88)
!3801 = !DILocalVariable(name: "result", scope: !3797, file: !968, line: 140, type: !31)
!3802 = !DILocalVariable(name: "length", scope: !3803, file: !968, line: 154, type: !88)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !968, line: 153, column: 5)
!3804 = distinct !DILexicalBlock(scope: !3797, file: !968, line: 142, column: 7)
!3805 = !DILocation(line: 0, scope: !3797, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 274, column: 10, scope: !3788)
!3807 = !DILocalVariable(name: "category", arg: 1, scope: !3808, file: !968, line: 60, type: !33)
!3808 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !968, file: !968, line: 60, type: !3809, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!31, !33}
!3811 = !{!3807, !3812}
!3812 = !DILocalVariable(name: "result", scope: !3808, file: !968, line: 62, type: !31)
!3813 = !DILocation(line: 0, scope: !3808, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 140, column: 24, scope: !3797, inlinedAt: !3806)
!3815 = !DILocation(line: 62, column: 24, scope: !3808, inlinedAt: !3814)
!3816 = !DILocation(line: 142, column: 14, scope: !3804, inlinedAt: !3806)
!3817 = !DILocation(line: 142, column: 7, scope: !3797, inlinedAt: !3806)
!3818 = !DILocation(line: 145, column: 19, scope: !3819, inlinedAt: !3806)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !968, line: 145, column: 11)
!3820 = distinct !DILexicalBlock(scope: !3804, file: !968, line: 143, column: 5)
!3821 = !DILocation(line: 145, column: 11, scope: !3820, inlinedAt: !3806)
!3822 = !DILocation(line: 149, column: 16, scope: !3819, inlinedAt: !3806)
!3823 = !DILocation(line: 149, column: 9, scope: !3819, inlinedAt: !3806)
!3824 = !DILocation(line: 154, column: 23, scope: !3803, inlinedAt: !3806)
!3825 = !DILocation(line: 0, scope: !3803, inlinedAt: !3806)
!3826 = !DILocation(line: 155, column: 18, scope: !3827, inlinedAt: !3806)
!3827 = distinct !DILexicalBlock(scope: !3803, file: !968, line: 155, column: 11)
!3828 = !DILocation(line: 155, column: 11, scope: !3803, inlinedAt: !3806)
!3829 = !DILocation(line: 157, column: 39, scope: !3830, inlinedAt: !3806)
!3830 = distinct !DILexicalBlock(scope: !3827, file: !968, line: 156, column: 9)
!3831 = !DILocalVariable(name: "__dest", arg: 1, scope: !3832, file: !1598, line: 31, type: !1601)
!3832 = distinct !DISubprogram(name: "memcpy", scope: !1598, file: !1598, line: 31, type: !1599, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3833)
!3833 = !{!3831, !3834, !3835}
!3834 = !DILocalVariable(name: "__src", arg: 2, scope: !3832, file: !1598, line: 31, type: !1602)
!3835 = !DILocalVariable(name: "__len", arg: 3, scope: !3832, file: !1598, line: 31, type: !88)
!3836 = !DILocation(line: 0, scope: !3832, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 157, column: 11, scope: !3830, inlinedAt: !3806)
!3838 = !DILocation(line: 34, column: 10, scope: !3832, inlinedAt: !3837)
!3839 = !DILocation(line: 158, column: 11, scope: !3830, inlinedAt: !3806)
!3840 = !DILocation(line: 162, column: 23, scope: !3841, inlinedAt: !3806)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !968, line: 162, column: 15)
!3842 = distinct !DILexicalBlock(scope: !3827, file: !968, line: 161, column: 9)
!3843 = !DILocation(line: 162, column: 15, scope: !3842, inlinedAt: !3806)
!3844 = !DILocation(line: 167, column: 44, scope: !3845, inlinedAt: !3806)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !968, line: 163, column: 13)
!3846 = !DILocation(line: 0, scope: !3832, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 167, column: 15, scope: !3845, inlinedAt: !3806)
!3848 = !DILocation(line: 34, column: 10, scope: !3832, inlinedAt: !3847)
!3849 = !DILocation(line: 168, column: 15, scope: !3845, inlinedAt: !3806)
!3850 = !DILocation(line: 168, column: 32, scope: !3845, inlinedAt: !3806)
!3851 = !DILocation(line: 169, column: 13, scope: !3845, inlinedAt: !3806)
!3852 = !DILocation(line: 0, scope: !3804, inlinedAt: !3806)
!3853 = !DILocation(line: 274, column: 3, scope: !3788)
!3854 = distinct !DISubprogram(name: "setlocale_null", scope: !968, file: !968, line: 301, type: !3809, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3855)
!3855 = !{!3856}
!3856 = !DILocalVariable(name: "category", arg: 1, scope: !3854, file: !968, line: 301, type: !33)
!3857 = !DILocation(line: 0, scope: !3854)
!3858 = !DILocation(line: 0, scope: !3808, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 304, column: 10, scope: !3854)
!3860 = !DILocation(line: 62, column: 24, scope: !3808, inlinedAt: !3859)
!3861 = !DILocation(line: 304, column: 3, scope: !3854)
!3862 = distinct !DISubprogram(name: "rpl_fclose", scope: !971, file: !971, line: 58, type: !3863, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3867)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!33, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3283, line: 7, baseType: !977)
!3867 = !{!3868, !3869, !3870, !3871}
!3868 = !DILocalVariable(name: "fp", arg: 1, scope: !3862, file: !971, line: 58, type: !3865)
!3869 = !DILocalVariable(name: "saved_errno", scope: !3862, file: !971, line: 60, type: !33)
!3870 = !DILocalVariable(name: "fd", scope: !3862, file: !971, line: 61, type: !33)
!3871 = !DILocalVariable(name: "result", scope: !3862, file: !971, line: 62, type: !33)
!3872 = !DILocation(line: 0, scope: !3862)
!3873 = !DILocation(line: 65, column: 8, scope: !3862)
!3874 = !DILocation(line: 66, column: 10, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3862, file: !971, line: 66, column: 7)
!3876 = !DILocation(line: 66, column: 7, scope: !3862)
!3877 = !DILocation(line: 67, column: 12, scope: !3875)
!3878 = !DILocation(line: 67, column: 5, scope: !3875)
!3879 = !DILocation(line: 72, column: 9, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3862, file: !971, line: 72, column: 7)
!3881 = !DILocation(line: 72, column: 23, scope: !3880)
!3882 = !DILocation(line: 72, column: 33, scope: !3880)
!3883 = !DILocation(line: 72, column: 26, scope: !3880)
!3884 = !DILocation(line: 72, column: 59, scope: !3880)
!3885 = !DILocation(line: 73, column: 7, scope: !3880)
!3886 = !DILocation(line: 73, column: 10, scope: !3880)
!3887 = !DILocation(line: 72, column: 7, scope: !3862)
!3888 = !DILocation(line: 100, column: 12, scope: !3862)
!3889 = !DILocation(line: 105, column: 7, scope: !3862)
!3890 = !DILocation(line: 74, column: 19, scope: !3880)
!3891 = !DILocation(line: 105, column: 19, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3862, file: !971, line: 105, column: 7)
!3893 = !DILocation(line: 107, column: 13, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3892, file: !971, line: 106, column: 5)
!3895 = !DILocation(line: 109, column: 5, scope: !3894)
!3896 = !DILocation(line: 112, column: 1, scope: !3862)
!3897 = distinct !DISubprogram(name: "rpl_fflush", scope: !1014, file: !1014, line: 129, type: !3898, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !3902)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!33, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3283, line: 7, baseType: !1020)
!3902 = !{!3903}
!3903 = !DILocalVariable(name: "stream", arg: 1, scope: !3897, file: !1014, line: 129, type: !3900)
!3904 = !DILocation(line: 0, scope: !3897)
!3905 = !DILocation(line: 150, column: 14, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3897, file: !1014, line: 150, column: 7)
!3907 = !DILocation(line: 150, column: 22, scope: !3906)
!3908 = !DILocation(line: 150, column: 27, scope: !3906)
!3909 = !DILocation(line: 150, column: 7, scope: !3897)
!3910 = !DILocation(line: 151, column: 12, scope: !3906)
!3911 = !DILocation(line: 151, column: 5, scope: !3906)
!3912 = !DILocalVariable(name: "fp", arg: 1, scope: !3913, file: !1014, line: 41, type: !3900)
!3913 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1014, file: !1014, line: 41, type: !3914, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !3900}
!3916 = !{!3912}
!3917 = !DILocation(line: 0, scope: !3913, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 156, column: 3, scope: !3897)
!3919 = !DILocation(line: 43, column: 11, scope: !3920, inlinedAt: !3918)
!3920 = distinct !DILexicalBlock(scope: !3913, file: !1014, line: 43, column: 7)
!3921 = !DILocation(line: 43, column: 18, scope: !3920, inlinedAt: !3918)
!3922 = !DILocation(line: 43, column: 7, scope: !3913, inlinedAt: !3918)
!3923 = !DILocation(line: 45, column: 5, scope: !3920, inlinedAt: !3918)
!3924 = !DILocation(line: 158, column: 10, scope: !3897)
!3925 = !DILocation(line: 158, column: 3, scope: !3897)
!3926 = !DILocation(line: 235, column: 1, scope: !3897)
!3927 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1055, file: !1055, line: 28, type: !3928, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1054, retainedNodes: !3933)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!33, !3930, !3932, !33}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3283, line: 7, baseType: !1061)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !36, line: 63, baseType: !62)
!3933 = !{!3934, !3935, !3936, !3937}
!3934 = !DILocalVariable(name: "fp", arg: 1, scope: !3927, file: !1055, line: 28, type: !3930)
!3935 = !DILocalVariable(name: "offset", arg: 2, scope: !3927, file: !1055, line: 28, type: !3932)
!3936 = !DILocalVariable(name: "whence", arg: 3, scope: !3927, file: !1055, line: 28, type: !33)
!3937 = !DILocalVariable(name: "pos", scope: !3938, file: !1055, line: 117, type: !3932)
!3938 = distinct !DILexicalBlock(scope: !3939, file: !1055, line: 113, column: 5)
!3939 = distinct !DILexicalBlock(scope: !3927, file: !1055, line: 52, column: 7)
!3940 = !DILocation(line: 0, scope: !3927)
!3941 = !DILocation(line: 52, column: 11, scope: !3939)
!3942 = !{!3738, !1132, i64 16}
!3943 = !DILocation(line: 52, column: 31, scope: !3939)
!3944 = !{!3738, !1132, i64 8}
!3945 = !DILocation(line: 52, column: 24, scope: !3939)
!3946 = !DILocation(line: 53, column: 7, scope: !3939)
!3947 = !DILocation(line: 53, column: 14, scope: !3939)
!3948 = !{!3738, !1132, i64 40}
!3949 = !DILocation(line: 53, column: 35, scope: !3939)
!3950 = !{!3738, !1132, i64 32}
!3951 = !DILocation(line: 53, column: 28, scope: !3939)
!3952 = !DILocation(line: 54, column: 7, scope: !3939)
!3953 = !DILocation(line: 54, column: 14, scope: !3939)
!3954 = !{!3738, !1132, i64 72}
!3955 = !DILocation(line: 54, column: 28, scope: !3939)
!3956 = !DILocation(line: 52, column: 7, scope: !3927)
!3957 = !DILocation(line: 117, column: 26, scope: !3938)
!3958 = !DILocation(line: 117, column: 19, scope: !3938)
!3959 = !DILocation(line: 0, scope: !3938)
!3960 = !DILocation(line: 118, column: 15, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3938, file: !1055, line: 118, column: 11)
!3962 = !DILocation(line: 118, column: 11, scope: !3938)
!3963 = !DILocation(line: 129, column: 11, scope: !3938)
!3964 = !DILocation(line: 129, column: 18, scope: !3938)
!3965 = !DILocation(line: 130, column: 11, scope: !3938)
!3966 = !DILocation(line: 130, column: 19, scope: !3938)
!3967 = !{!3738, !1352, i64 144}
!3968 = !DILocation(line: 161, column: 7, scope: !3938)
!3969 = !DILocation(line: 163, column: 10, scope: !3927)
!3970 = !DILocation(line: 163, column: 3, scope: !3927)
!3971 = !DILocation(line: 164, column: 1, scope: !3927)
