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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), align 8, !dbg !47
@.str.48 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !53
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !58
@.str.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.52 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !61
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !67
@.str.60 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.72, i32 0, i32 0), i8* null], align 16, !dbg !73
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !101
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !107
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !119
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.74 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.76 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.77 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.78 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.79 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !126
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !133
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !121
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !135
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !141
@.str.1.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !591 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !595, metadata !DIExpression()), !dbg !596
  %3 = icmp eq i32 %0, 0, !dbg !597
  br i1 %3, label %9, label %4, !dbg !599

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !600, !tbaa !602
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !600
  %7 = load i8*, i8** @program_name, align 8, !dbg !600, !tbaa !602
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !600
  br label %66, !dbg !600

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !606
  %11 = load i8*, i8** @program_name, align 8, !dbg !606, !tbaa !602
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #26, !dbg !606
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !608
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608, !tbaa !602
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !608
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !609
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !602
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !609
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !610
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !602
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !610
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #26, !dbg !611
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !602
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !611
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 5) #26, !dbg !612
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !602
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !612
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #26, !dbg !613
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !614, metadata !DIExpression()) #26, !dbg !632
  %30 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !634
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %30) #26, !dbg !634
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !619, metadata !DIExpression()) #26, !dbg !635
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %30, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !628, metadata !DIExpression()) #26, !dbg !632
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !629, metadata !DIExpression()) #26, !dbg !632
  %31 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !636
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !629, metadata !DIExpression()) #26, !dbg !632
  br label %32, !dbg !637

32:                                               ; preds = %37, %9
  %33 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %34 = phi %struct.infomap* [ %38, %37 ], [ %31, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !629, metadata !DIExpression()) #26, !dbg !632
  %35 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %33) #27, !dbg !638
  %36 = icmp eq i32 %35, 0, !dbg !638
  br i1 %36, label %42, label %37, !dbg !637

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 1, !dbg !639
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !629, metadata !DIExpression()) #26, !dbg !632
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 0, !dbg !640
  %40 = load i8*, i8** %39, align 8, !dbg !640, !tbaa !641
  %41 = icmp eq i8* %40, null, !dbg !643
  br i1 %41, label %42, label %32, !dbg !644, !llvm.loop !645

42:                                               ; preds = %37, %32
  %43 = phi %struct.infomap* [ %34, %32 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 0, i32 1, !dbg !647
  %45 = load i8*, i8** %44, align 8, !dbg !647, !tbaa !649
  %46 = icmp eq i8* %45, null, !dbg !650
  %47 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %45, !dbg !651
  call void @llvm.dbg.value(metadata i8* %47, metadata !628, metadata !DIExpression()) #26, !dbg !632
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #26, !dbg !652
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #26, !dbg !652
  %50 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !653
  call void @llvm.dbg.value(metadata i8* %50, metadata !631, metadata !DIExpression()) #26, !dbg !632
  %51 = icmp eq i8* %50, null, !dbg !654
  br i1 %51, label %59, label %52, !dbg !656

52:                                               ; preds = %42
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #27, !dbg !657
  %54 = icmp eq i32 %53, 0, !dbg !657
  br i1 %54, label %59, label %55, !dbg !658

55:                                               ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #26, !dbg !659
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !602
  %58 = tail call i32 @fputs_unlocked(i8* %56, %struct._IO_FILE* %57) #26, !dbg !659
  br label %59, !dbg !661

59:                                               ; preds = %42, %52, %55
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #26, !dbg !662
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !662
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #26, !dbg !663
  %63 = icmp eq i8* %47, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), !dbg !663
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !663
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %47, i8* %64) #26, !dbg !663
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %30) #26, !dbg !664
  br label %66

66:                                               ; preds = %59, %4
  tail call void @exit(i32 %0) #28, !dbg !665
  unreachable, !dbg !665
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !666 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !670 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !726 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !730 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !735, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8** %1, metadata !736, metadata !DIExpression()), !dbg !750
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)) #26, !dbg !751
  %10 = icmp ne i8* %9, null, !dbg !752
  %11 = zext i1 %10 to i8, !dbg !753
  call void @llvm.dbg.value(metadata i8 %11, metadata !738, metadata !DIExpression()), !dbg !750
  %12 = load i8*, i8** %1, align 8, !dbg !754, !tbaa !602
  tail call void @set_program_name(i8* %12) #26, !dbg !755
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !756
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #26, !dbg !757
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #26, !dbg !758
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !759
  br label %17, !dbg !760

17:                                               ; preds = %20, %2
  %18 = phi i8 [ %11, %2 ], [ %21, %20 ], !dbg !753
  call void @llvm.dbg.value(metadata i8 %18, metadata !738, metadata !DIExpression()), !dbg !750
  %19 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #26, !dbg !761
  call void @llvm.dbg.value(metadata i32 %19, metadata !739, metadata !DIExpression()), !dbg !762
  switch i32 %19, label %27 [
    i32 -1, label %28
    i32 76, label %20
    i32 80, label %22
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !763

20:                                               ; preds = %17, %22
  %21 = phi i8 [ 0, %22 ], [ 1, %17 ]
  br label %17, !dbg !750

22:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 0, metadata !738, metadata !DIExpression()), !dbg !750
  br label %20, !dbg !764

23:                                               ; preds = %17
  tail call void @usage(i32 0) #29, !dbg !766
  unreachable, !dbg !766

24:                                               ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !767, !tbaa !602
  %26 = load i8*, i8** @Version, align 8, !dbg !767, !tbaa !602
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* null) #26, !dbg !767
  tail call void @exit(i32 0) #28, !dbg !767
  unreachable, !dbg !767

27:                                               ; preds = %17
  tail call void @usage(i32 1) #29, !dbg !768
  unreachable, !dbg !768

28:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 undef, metadata !738, metadata !DIExpression()), !dbg !750
  %29 = load i32, i32* @optind, align 4, !dbg !769, !tbaa !771
  %30 = icmp slt i32 %29, %0, !dbg !773
  br i1 %30, label %31, label %33, !dbg !774

31:                                               ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 5) #26, !dbg !775
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #26, !dbg !776
  br label %33, !dbg !776

33:                                               ; preds = %31, %28
  %34 = icmp eq i8 %18, 0, !dbg !777
  br i1 %34, label %78, label %35, !dbg !779

35:                                               ; preds = %33
  %36 = bitcast %struct.stat* %7 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %36) #26, !dbg !780
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !785, metadata !DIExpression()) #26, !dbg !827
  %37 = bitcast %struct.stat* %8 to i8*, !dbg !828
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %37) #26, !dbg !828
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !822, metadata !DIExpression()) #26, !dbg !829
  %38 = tail call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #26, !dbg !830
  call void @llvm.dbg.value(metadata i8* %38, metadata !823, metadata !DIExpression()) #26, !dbg !831
  %39 = icmp eq i8* %38, null, !dbg !832
  br i1 %39, label %75, label %40, !dbg !834

40:                                               ; preds = %35
  %41 = load i8, i8* %38, align 1, !dbg !835, !tbaa !836
  %42 = icmp eq i8 %41, 47, !dbg !837
  br i1 %42, label %43, label %75, !dbg !838

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %38, metadata !824, metadata !DIExpression()) #26, !dbg !831
  %44 = tail call i8* @strstr(i8* nonnull %38, i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #27, !dbg !839
  call void @llvm.dbg.value(metadata i8* %44, metadata !824, metadata !DIExpression()) #26, !dbg !831
  %45 = icmp eq i8* %44, null, !dbg !840
  br i1 %45, label %57, label %46, !dbg !840

46:                                               ; preds = %43, %53
  %47 = phi i8* [ %55, %53 ], [ %44, %43 ]
  %48 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !841
  %49 = load i8, i8* %48, align 1, !dbg !841, !tbaa !836
  switch i8 %49, label %53 [
    i8 0, label %75
    i8 47, label %75
    i8 46, label %50
  ], !dbg !844

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, i8* %47, i64 3, !dbg !845
  %52 = load i8, i8* %51, align 1, !dbg !845, !tbaa !836
  switch i8 %52, label %53 [
    i8 0, label %75
    i8 47, label %75
  ], !dbg !846

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !847
  call void @llvm.dbg.value(metadata i8* %54, metadata !824, metadata !DIExpression()) #26, !dbg !831
  %55 = tail call i8* @strstr(i8* nonnull %54, i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #27, !dbg !839
  call void @llvm.dbg.value(metadata i8* %55, metadata !824, metadata !DIExpression()) #26, !dbg !831
  %56 = icmp eq i8* %55, null, !dbg !840
  br i1 %56, label %57, label %46, !dbg !840, !llvm.loop !848

57:                                               ; preds = %53, %43
  %58 = call i32 @stat(i8* nonnull %38, %struct.stat* nonnull %7) #26, !dbg !850
  %59 = icmp eq i32 %58, 0, !dbg !852
  br i1 %59, label %60, label %75, !dbg !853

60:                                               ; preds = %57
  %61 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %8) #26, !dbg !854
  %62 = icmp eq i32 %61, 0, !dbg !855
  br i1 %62, label %63, label %75, !dbg !856

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !857
  %65 = load i64, i64* %64, align 8, !dbg !857, !tbaa !858
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 1, !dbg !857
  %67 = load i64, i64* %66, align 8, !dbg !857, !tbaa !858
  %68 = icmp eq i64 %65, %67, !dbg !857
  br i1 %68, label %69, label %75, !dbg !857

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !857
  %71 = load i64, i64* %70, align 8, !dbg !857, !tbaa !862
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 0, !dbg !857
  %73 = load i64, i64* %72, align 8, !dbg !857, !tbaa !862
  %74 = icmp eq i64 %71, %73, !dbg !857
  br i1 %74, label %76, label %75, !dbg !863

75:                                               ; preds = %50, %50, %46, %46, %40, %35, %69, %63, %60, %57
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %37) #26, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #26, !dbg !864
  call void @llvm.dbg.value(metadata i8* %38, metadata !737, metadata !DIExpression()), !dbg !750
  br label %78, !dbg !865

76:                                               ; preds = %69
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %37) #26, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #26, !dbg !864
  call void @llvm.dbg.value(metadata i8* %38, metadata !737, metadata !DIExpression()), !dbg !750
  %77 = tail call i32 @puts(i8* nonnull %38), !dbg !866
  br label %246, !dbg !869

78:                                               ; preds = %75, %33
  %79 = tail call i8* @xgetcwd() #26, !dbg !870
  call void @llvm.dbg.value(metadata i8* %79, metadata !737, metadata !DIExpression()), !dbg !750
  %80 = icmp eq i8* %79, null, !dbg !871
  br i1 %80, label %83, label %81, !dbg !872

81:                                               ; preds = %78
  %82 = tail call i32 @puts(i8* nonnull %79), !dbg !873
  tail call void @free(i8* nonnull %79) #26, !dbg !875
  br label %246, !dbg !876

83:                                               ; preds = %78
  %84 = tail call noalias i8* @xmalloc(i64 24) #26, !dbg !877
  %85 = bitcast i8* %84 to %struct.file_name*, !dbg !877
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !882, metadata !DIExpression()) #26, !dbg !884
  %86 = getelementptr inbounds i8, i8* %84, i64 8, !dbg !885
  %87 = bitcast i8* %86 to i64*, !dbg !885
  store i64 8192, i64* %87, align 8, !dbg !886, !tbaa !887
  %88 = tail call noalias i8* @xmalloc(i64 8192) #26, !dbg !889
  %89 = bitcast i8* %84 to i8**, !dbg !890
  store i8* %88, i8** %89, align 8, !dbg !891, !tbaa !892
  %90 = getelementptr inbounds i8, i8* %88, i64 8191, !dbg !893
  %91 = getelementptr inbounds i8, i8* %84, i64 16, !dbg !894
  %92 = bitcast i8* %91 to i8**, !dbg !894
  store i8* %90, i8** %92, align 8, !dbg !895, !tbaa !896
  store i8 0, i8* %90, align 1, !dbg !897, !tbaa !836
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !741, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !899, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.dbg.value(metadata i64 1, metadata !904, metadata !DIExpression()) #26, !dbg !917
  %93 = bitcast %struct.timespec* %5 to i8*, !dbg !919
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %93) #26, !dbg !919
  call void @llvm.dbg.declare(metadata %struct.timespec* %5, metadata !905, metadata !DIExpression()) #26, !dbg !920
  %94 = call %struct.timespec* @get_root_dev_ino(%struct.timespec* nonnull %5) #26, !dbg !921
  call void @llvm.dbg.value(metadata %struct.timespec* %94, metadata !914, metadata !DIExpression()) #26, !dbg !917
  %95 = bitcast %struct.stat* %6 to i8*, !dbg !922
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %95) #26, !dbg !922
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !916, metadata !DIExpression()) #26, !dbg !923
  %96 = icmp eq %struct.timespec* %94, null, !dbg !924
  br i1 %96, label %97, label %102, !dbg !926

97:                                               ; preds = %83
  %98 = tail call i32* @__errno_location() #30, !dbg !927
  %99 = load i32, i32* %98, align 4, !dbg !927, !tbaa !771
  %100 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 5) #26, !dbg !927
  %101 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #26, !dbg !927
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %99, i8* %100, i8* %101) #26, !dbg !927
  unreachable, !dbg !927

102:                                              ; preds = %83
  %103 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %6) #26, !dbg !928
  %104 = icmp slt i32 %103, 0, !dbg !930
  br i1 %104, label %115, label %105, !dbg !931

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %94, i64 0, i32 0
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0
  %109 = getelementptr inbounds %struct.timespec, %struct.timespec* %94, i64 0, i32 1
  %110 = bitcast %struct.stat* %3 to i8*
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %112 = bitcast %struct.stat* %4 to i8*
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  br label %120, !dbg !932

115:                                              ; preds = %102
  %116 = tail call i32* @__errno_location() #30, !dbg !933
  %117 = load i32, i32* %116, align 4, !dbg !933, !tbaa !771
  %118 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #26, !dbg !933
  %119 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #26, !dbg !933
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %117, i8* %118, i8* %119) #26, !dbg !933
  unreachable, !dbg !933

120:                                              ; preds = %235, %105
  %121 = phi i64 [ %130, %235 ], [ 1, %105 ], !dbg !917
  call void @llvm.dbg.value(metadata i64 %121, metadata !904, metadata !DIExpression()) #26, !dbg !917
  %122 = load i64, i64* %106, align 8, !dbg !934, !tbaa !858
  %123 = load i64, i64* %107, align 8, !dbg !934, !tbaa !937
  %124 = icmp eq i64 %122, %123, !dbg !934
  br i1 %124, label %125, label %129, !dbg !934

125:                                              ; preds = %120
  %126 = load i64, i64* %108, align 8, !dbg !934, !tbaa !862
  %127 = load i64, i64* %109, align 8, !dbg !934, !tbaa !939
  %128 = icmp eq i64 %126, %127, !dbg !934
  br i1 %128, label %236, label %129, !dbg !940

129:                                              ; preds = %125, %120
  %130 = add i64 %121, 1, !dbg !941
  call void @llvm.dbg.value(metadata i64 %130, metadata !904, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !942, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !948, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.dbg.value(metadata i64 %121, metadata !949, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %110) #26, !dbg !981
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !956, metadata !DIExpression()) #26, !dbg !982
  %131 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #26, !dbg !983
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !950, metadata !DIExpression()) #26, !dbg !979
  %132 = icmp eq %struct.__dirstream* %131, null, !dbg !984
  br i1 %132, label %133, label %139, !dbg !986

133:                                              ; preds = %129
  %134 = tail call i32* @__errno_location() #30, !dbg !987
  %135 = load i32, i32* %134, align 4, !dbg !987, !tbaa !771
  %136 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i32 5) #26, !dbg !987
  %137 = call fastcc i8* @nth_parent(i64 %121) #26, !dbg !987
  %138 = call i8* @quote(i8* %137) #26, !dbg !987
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %135, i8* %136, i8* %138) #26, !dbg !987
  unreachable, !dbg !987

139:                                              ; preds = %129
  %140 = call i32 @dirfd(%struct.__dirstream* nonnull %131) #26, !dbg !988
  call void @llvm.dbg.value(metadata i32 %140, metadata !955, metadata !DIExpression()) #26, !dbg !979
  %141 = icmp sgt i32 %140, -1, !dbg !989
  br i1 %141, label %142, label %145, !dbg !991

142:                                              ; preds = %139
  %143 = call i32 @fchdir(i32 %140) #26, !dbg !992
  %144 = icmp slt i32 %143, 0, !dbg !993
  br i1 %144, label %148, label %154, !dbg !994

145:                                              ; preds = %139
  %146 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #26, !dbg !995
  %147 = icmp slt i32 %146, 0, !dbg !993
  br i1 %147, label %148, label %156, !dbg !994

148:                                              ; preds = %145, %142
  %149 = tail call i32* @__errno_location() #30, !dbg !996
  %150 = load i32, i32* %149, align 4, !dbg !996, !tbaa !771
  %151 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), i32 5) #26, !dbg !996
  %152 = call fastcc i8* @nth_parent(i64 %121) #26, !dbg !996
  %153 = call i8* @quote(i8* %152) #26, !dbg !996
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %150, i8* %151, i8* %153) #26, !dbg !996
  unreachable, !dbg !996

154:                                              ; preds = %142
  %155 = call i32 @fstat(i32 %140, %struct.stat* nonnull %3) #26, !dbg !997
  br label %158, !dbg !999

156:                                              ; preds = %145
  %157 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %3) #26, !dbg !1000
  br label %158, !dbg !999

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ], !dbg !999
  %160 = icmp slt i32 %159, 0, !dbg !1001
  br i1 %160, label %161, label %167, !dbg !1002

161:                                              ; preds = %158
  %162 = tail call i32* @__errno_location() #30, !dbg !1003
  %163 = load i32, i32* %162, align 4, !dbg !1003, !tbaa !771
  %164 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #26, !dbg !1003
  %165 = call fastcc i8* @nth_parent(i64 %121) #26, !dbg !1003
  %166 = call i8* @quote(i8* %165) #26, !dbg !1003
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %163, i8* %164, i8* %166) #26, !dbg !1003
  unreachable, !dbg !1003

167:                                              ; preds = %158
  %168 = load i64, i64* %111, align 8, !dbg !1004, !tbaa !862
  %169 = load i64, i64* %108, align 8, !dbg !1005, !tbaa !862
  %170 = icmp eq i64 %168, %169, !dbg !1006
  call void @llvm.dbg.value(metadata i1 %170, metadata !957, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !979
  call void @llvm.dbg.value(metadata i8 0, metadata !958, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !950, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %112) #26, !dbg !1007
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !972, metadata !DIExpression()) #26, !dbg !1008
  %171 = tail call i32* @__errno_location() #30, !dbg !1009
  store i32 0, i32* %171, align 4, !dbg !1010, !tbaa !771
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !1011, metadata !DIExpression()) #26, !dbg !1018
  %172 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %131) #26, !dbg !1020
  call void @llvm.dbg.value(metadata %struct.dirent* %172, metadata !1016, metadata !DIExpression()) #26, !dbg !1021
  %173 = icmp eq %struct.dirent* %172, null, !dbg !1022
  br i1 %173, label %191, label %174, !dbg !1024

174:                                              ; preds = %167, %189
  %175 = phi %struct.dirent* [ %190, %189 ], [ %172, %167 ]
  %176 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 4, i64 0, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %176, metadata !1026, metadata !DIExpression()) #26, !dbg !1034
  %177 = load i8, i8* %176, align 1, !dbg !1036, !tbaa !836
  %178 = icmp eq i8 %177, 46, !dbg !1037
  br i1 %178, label %179, label %196, !dbg !1038

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 4, i64 1, !dbg !1039
  %181 = load i8, i8* %180, align 1, !dbg !1039, !tbaa !836
  %182 = icmp eq i8 %181, 46, !dbg !1040
  %183 = select i1 %182, i64 2, i64 1, !dbg !1041
  %184 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 4, i64 %183, !dbg !1041
  %185 = load i8, i8* %184, align 1, !dbg !1041, !tbaa !836
  call void @llvm.dbg.value(metadata i8 %185, metadata !1031, metadata !DIExpression()) #26, !dbg !1042
  switch i8 %185, label %196 [
    i8 47, label %186
    i8 0, label %186
  ], !dbg !1043

186:                                              ; preds = %179, %179
  %187 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %131) #26, !dbg !1020
  call void @llvm.dbg.value(metadata %struct.dirent* %187, metadata !1016, metadata !DIExpression()) #26, !dbg !1021
  %188 = icmp eq %struct.dirent* %187, null, !dbg !1022
  br i1 %188, label %191, label %189, !dbg !1024

189:                                              ; preds = %186, %216
  %190 = phi %struct.dirent* [ %187, %186 ], [ %217, %216 ]
  br label %174, !dbg !1025

191:                                              ; preds = %216, %186, %167
  call void @llvm.dbg.value(metadata %struct.dirent* %175, metadata !959, metadata !DIExpression()) #26, !dbg !1044
  %192 = load i32, i32* %171, align 4, !dbg !1045, !tbaa !771
  %193 = icmp eq i32 %192, 0, !dbg !1045
  br i1 %193, label %219, label %194, !dbg !1046

194:                                              ; preds = %191
  call void @llvm.dbg.value(metadata i32 %192, metadata !974, metadata !DIExpression()) #26, !dbg !1047
  %195 = call i32 @closedir(%struct.__dirstream* nonnull %131) #26, !dbg !1048
  store i32 %192, i32* %171, align 4, !dbg !1049, !tbaa !771
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !950, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.dbg.value(metadata i8 0, metadata !958, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %112) #26, !dbg !1050
  br label %225, !dbg !1051

196:                                              ; preds = %179, %174
  %197 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 4, i64 0, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.dirent* %175, metadata !959, metadata !DIExpression()) #26, !dbg !1044
  %198 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 0, !dbg !1053
  %199 = load i64, i64* %198, align 8, !dbg !1053, !tbaa !1054
  call void @llvm.dbg.value(metadata i64 %199, metadata !973, metadata !DIExpression()) #26, !dbg !1044
  %200 = icmp ne i64 %199, 0, !dbg !1057
  %201 = and i1 %170, %200, !dbg !1059
  br i1 %201, label %207, label %202, !dbg !1059

202:                                              ; preds = %196
  %203 = call i32 @lstat(i8* nonnull %197, %struct.stat* nonnull %4) #26, !dbg !1060
  %204 = icmp slt i32 %203, 0, !dbg !1063
  br i1 %204, label %216, label %205, !dbg !1064, !llvm.loop !1065

205:                                              ; preds = %202
  %206 = load i64, i64* %113, align 8, !dbg !1067, !tbaa !858
  call void @llvm.dbg.value(metadata i64 %206, metadata !973, metadata !DIExpression()) #26, !dbg !1044
  br label %207, !dbg !1068

207:                                              ; preds = %205, %196
  %208 = phi i64 [ %206, %205 ], [ %199, %196 ], !dbg !1044
  call void @llvm.dbg.value(metadata i64 %208, metadata !973, metadata !DIExpression()) #26, !dbg !1044
  %209 = icmp eq i64 %208, %122, !dbg !1069
  br i1 %209, label %210, label %216, !dbg !1071, !llvm.loop !1072

210:                                              ; preds = %207
  %211 = load i64, i64* %114, align 8
  %212 = icmp eq i64 %211, %169
  %213 = or i1 %170, %212, !dbg !1073
  br i1 %213, label %214, label %216, !dbg !1073

214:                                              ; preds = %210
  %215 = call i64 @strlen(i8* nonnull %197) #27, !dbg !1075
  call fastcc void @file_name_prepend(%struct.file_name* %85, i8* nonnull %197, i64 %215) #26, !dbg !1077
  call void @llvm.dbg.value(metadata i8 1, metadata !958, metadata !DIExpression()) #26, !dbg !979
  br label %219, !dbg !1078

216:                                              ; preds = %210, %207, %202
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !950, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.dbg.value(metadata i8 0, metadata !958, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %112) #26, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %112) #26, !dbg !1007
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !972, metadata !DIExpression()) #26, !dbg !1008
  store i32 0, i32* %171, align 4, !dbg !1010, !tbaa !771
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !1011, metadata !DIExpression()) #26, !dbg !1018
  %217 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %131) #26, !dbg !1020
  call void @llvm.dbg.value(metadata %struct.dirent* %217, metadata !1016, metadata !DIExpression()) #26, !dbg !1021
  %218 = icmp eq %struct.dirent* %217, null, !dbg !1022
  br i1 %218, label %191, label %189, !dbg !1024

219:                                              ; preds = %214, %191
  %220 = phi i1 [ false, %214 ], [ true, %191 ]
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !950, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.dbg.value(metadata i8 0, metadata !958, metadata !DIExpression()) #26, !dbg !979
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %112) #26, !dbg !1050
  %221 = call i32 @closedir(%struct.__dirstream* nonnull %131) #26, !dbg !1079
  %222 = icmp eq i32 %221, 0, !dbg !1080
  br i1 %222, label %230, label %223, !dbg !1081

223:                                              ; preds = %219
  %224 = load i32, i32* %171, align 4, !dbg !1082, !tbaa !771
  br label %225, !dbg !1081

225:                                              ; preds = %223, %194
  %226 = phi i32 [ %224, %223 ], [ %192, %194 ], !dbg !1082
  %227 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i32 5) #26, !dbg !1082
  %228 = call fastcc i8* @nth_parent(i64 %121) #26, !dbg !1082
  %229 = call i8* @quote(i8* %228) #26, !dbg !1082
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %226, i8* %227, i8* %229) #26, !dbg !1082
  unreachable, !dbg !1082

230:                                              ; preds = %219
  br i1 %220, label %231, label %235, !dbg !1084

231:                                              ; preds = %230
  %232 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i64 0, i64 0), i32 5) #26, !dbg !1085
  %233 = call fastcc i8* @nth_parent(i64 %121) #26, !dbg !1085
  %234 = call i8* @quote(i8* %233) #26, !dbg !1085
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %232, i8* %234) #26, !dbg !1085
  unreachable, !dbg !1085

235:                                              ; preds = %230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(144) %95, i8* nonnull align 8 dereferenceable(144) %110, i64 144, i1 false) #26, !dbg !1087, !tbaa.struct !1088
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %110) #26, !dbg !1090
  br label %120, !dbg !932, !llvm.loop !1091

236:                                              ; preds = %125
  %237 = load i8*, i8** %92, align 8, !dbg !1093, !tbaa !896
  %238 = load i8, i8* %237, align 1, !dbg !1095, !tbaa !836
  %239 = icmp eq i8 %238, 0, !dbg !1096
  br i1 %239, label %240, label %242, !dbg !1097

240:                                              ; preds = %236
  call fastcc void @file_name_prepend(%struct.file_name* nonnull %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64 0) #26, !dbg !1098
  %241 = load i8*, i8** %92, align 8, !dbg !1099, !tbaa !896
  br label %242, !dbg !1098

242:                                              ; preds = %236, %240
  %243 = phi i8* [ %237, %236 ], [ %241, %240 ], !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %95) #26, !dbg !1100
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %93) #26, !dbg !1100
  %244 = call i32 @puts(i8* nonnull dereferenceable(1) %243), !dbg !1101
  call void @llvm.dbg.value(metadata %struct.file_name* %85, metadata !1102, metadata !DIExpression()) #26, !dbg !1105
  %245 = load i8*, i8** %89, align 8, !dbg !1107, !tbaa !892
  call void @free(i8* %245) #26, !dbg !1108
  call void @free(i8* nonnull %84) #26, !dbg !1109
  br label %246

246:                                              ; preds = %81, %242, %76
  ret i32 0, !dbg !1110
}

; Function Attrs: nofree nounwind readonly
declare !dbg !1111 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1115 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1118 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1119 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1125 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1131 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1135 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1139 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !1142 noalias noundef %struct.__dirstream* @opendir(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @nth_parent(i64 %0) unnamed_addr #8 !dbg !1146 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1150, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 3, metadata !1156, metadata !DIExpression()) #26, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %0, metadata !1161, metadata !DIExpression()) #26, !dbg !1162
  %2 = icmp ugt i64 %0, 3074457345618258602, !dbg !1164
  br i1 %2, label %3, label %4, !dbg !1166

3:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !1167
  unreachable, !dbg !1167

4:                                                ; preds = %1
  %5 = mul nuw nsw i64 %0, 3, !dbg !1168
  %6 = tail call noalias i8* @xmalloc(i64 %5) #26, !dbg !1169
  call void @llvm.dbg.value(metadata i8* %6, metadata !1151, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i8* %6, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 0, metadata !1153, metadata !DIExpression()), !dbg !1170
  %7 = icmp eq i64 %0, 0, !dbg !1171
  br i1 %7, label %24, label %8, !dbg !1173

8:                                                ; preds = %4
  %9 = add i64 %0, -1, !dbg !1173
  %10 = and i64 %0, 3, !dbg !1173
  %11 = icmp ult i64 %9, 3, !dbg !1173
  br i1 %11, label %14, label %12, !dbg !1173

12:                                               ; preds = %8
  %13 = and i64 %0, -4, !dbg !1173
  br label %27, !dbg !1173

14:                                               ; preds = %27, %8
  %15 = phi i8* [ undef, %8 ], [ %33, %27 ]
  %16 = phi i8* [ %6, %8 ], [ %33, %27 ]
  %17 = icmp eq i64 %10, 0, !dbg !1173
  br i1 %17, label %24, label %18, !dbg !1173

18:                                               ; preds = %14, %18
  %19 = phi i8* [ %21, %18 ], [ %16, %14 ]
  %20 = phi i64 [ %22, %18 ], [ %10, %14 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %19, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i8* %19, metadata !1174, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), metadata !1184, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i64 3, metadata !1185, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %19, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #26, !dbg !1189
  %21 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %21, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1170
  %22 = add i64 %20, -1, !dbg !1173
  %23 = icmp eq i64 %22, 0, !dbg !1173
  br i1 %23, label %24, label %18, !dbg !1173, !llvm.loop !1191

24:                                               ; preds = %14, %18, %4
  %25 = phi i8* [ %6, %4 ], [ %15, %14 ], [ %21, %18 ], !dbg !1155
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !1193
  store i8 0, i8* %26, align 1, !dbg !1194, !tbaa !836
  ret i8* %6, !dbg !1195

27:                                               ; preds = %27, %12
  %28 = phi i8* [ %6, %12 ], [ %33, %27 ]
  %29 = phi i64 [ %13, %12 ], [ %34, %27 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %28, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i8* %28, metadata !1174, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), metadata !1184, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i64 3, metadata !1185, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %28, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #26, !dbg !1189
  %30 = getelementptr inbounds i8, i8* %28, i64 3, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %30, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1170
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %30, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i8* %30, metadata !1174, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), metadata !1184, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i64 3, metadata !1185, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %30, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #26, !dbg !1189
  %31 = getelementptr inbounds i8, i8* %28, i64 6, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %31, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1170
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %31, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i8* %31, metadata !1174, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), metadata !1184, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i64 3, metadata !1185, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %31, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #26, !dbg !1189
  %32 = getelementptr inbounds i8, i8* %28, i64 9, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %32, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1170
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %32, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i8* %32, metadata !1174, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), metadata !1184, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.dbg.value(metadata i64 3, metadata !1185, metadata !DIExpression()) #26, !dbg !1186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %32, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false) #26, !dbg !1189
  %33 = getelementptr inbounds i8, i8* %28, i64 12, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %33, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 undef, metadata !1153, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1170
  %34 = add i64 %29, -4, !dbg !1173
  %35 = icmp eq i64 %34, 0, !dbg !1173
  br i1 %35, label %14, label %27, !dbg !1173, !llvm.loop !1196
}

; Function Attrs: nounwind
declare !dbg !1198 i32 @dirfd(%struct.__dirstream*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1201 i32 @fchdir(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1205 i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1206 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

declare !dbg !1209 %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1213 noundef i32 @closedir(%struct.__dirstream* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1214 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @file_name_prepend(%struct.file_name* nocapture %0, i8* %1, i64 %2) unnamed_addr #8 !dbg !1215 {
  call void @llvm.dbg.value(metadata %struct.file_name* %0, metadata !1219, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i8* %1, metadata !1220, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i64 %2, metadata !1221, metadata !DIExpression()), !dbg !1228
  %4 = getelementptr inbounds %struct.file_name, %struct.file_name* %0, i64 0, i32 2, !dbg !1229
  %5 = load i8*, i8** %4, align 8, !dbg !1229, !tbaa !896
  %6 = getelementptr inbounds %struct.file_name, %struct.file_name* %0, i64 0, i32 0, !dbg !1230
  %7 = load i8*, i8** %6, align 8, !dbg !1230, !tbaa !892
  %8 = ptrtoint i8* %5 to i64, !dbg !1231
  %9 = ptrtoint i8* %7 to i64, !dbg !1231
  %10 = sub i64 %8, %9, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %10, metadata !1222, metadata !DIExpression()), !dbg !1228
  %11 = add i64 %2, 1, !dbg !1232
  %12 = icmp ult i64 %10, %11, !dbg !1233
  br i1 %12, label %13, label %30, !dbg !1234

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.file_name, %struct.file_name* %0, i64 0, i32 1, !dbg !1235
  %15 = load i64, i64* %14, align 8, !dbg !1235, !tbaa !887
  %16 = add i64 %11, %15, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %16, metadata !1223, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 2, metadata !1156, metadata !DIExpression()) #26, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %16, metadata !1161, metadata !DIExpression()) #26, !dbg !1238
  %17 = icmp ugt i64 %16, 4611686018427387903, !dbg !1240
  br i1 %17, label %18, label %19, !dbg !1241

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !1242
  unreachable, !dbg !1242

19:                                               ; preds = %13
  %20 = shl nuw nsw i64 %16, 1, !dbg !1243
  %21 = tail call noalias i8* @xmalloc(i64 %20) #26, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %21, metadata !1226, metadata !DIExpression()), !dbg !1237
  %22 = load i64, i64* %14, align 8, !dbg !1245, !tbaa !887
  %23 = sub i64 %22, %10, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %23, metadata !1227, metadata !DIExpression()), !dbg !1237
  %24 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !1247
  %25 = sub i64 0, %23, !dbg !1248
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !1248
  store i8* %26, i8** %4, align 8, !dbg !1249, !tbaa !896
  %27 = load i8*, i8** %6, align 8, !dbg !1250, !tbaa !892
  %28 = getelementptr inbounds i8, i8* %27, i64 %10, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %26, metadata !1174, metadata !DIExpression()) #26, !dbg !1252
  call void @llvm.dbg.value(metadata i8* %28, metadata !1184, metadata !DIExpression()) #26, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %23, metadata !1185, metadata !DIExpression()) #26, !dbg !1252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %26, i8* nonnull align 1 %28, i64 %23, i1 false) #26, !dbg !1254
  tail call void @free(i8* %27) #26, !dbg !1255
  store i8* %21, i8** %6, align 8, !dbg !1256, !tbaa !892
  store i64 %20, i64* %14, align 8, !dbg !1257, !tbaa !887
  %29 = load i8*, i8** %4, align 8, !dbg !1258, !tbaa !896
  br label %30, !dbg !1259

30:                                               ; preds = %19, %3
  %31 = phi i8* [ %29, %19 ], [ %5, %3 ], !dbg !1258
  %32 = xor i64 %2, -1, !dbg !1258
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !1258
  store i8* %33, i8** %4, align 8, !dbg !1258, !tbaa !896
  store i8 47, i8* %33, align 1, !dbg !1260, !tbaa !836
  %34 = load i8*, i8** %4, align 8, !dbg !1261, !tbaa !896
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %35, metadata !1174, metadata !DIExpression()) #26, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %1, metadata !1184, metadata !DIExpression()) #26, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %2, metadata !1185, metadata !DIExpression()) #26, !dbg !1263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %35, i8* nonnull align 1 %1, i64 %2, i1 false) #26, !dbg !1265
  ret void, !dbg !1266
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1267 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1269, metadata !DIExpression()), !dbg !1270
  store i8* %0, i8** @file_name, align 8, !dbg !1271, !tbaa !602
  ret void, !dbg !1272
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1273 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1279, !tbaa !1280
  ret void, !dbg !1282
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1283 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1288, !tbaa !602
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !1289
  %3 = icmp eq i32 %2, 0, !dbg !1290
  br i1 %3, label %22, label %4, !dbg !1291

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1292, !tbaa !1280, !range !1293
  %6 = icmp eq i8 %5, 0, !dbg !1292
  br i1 %6, label %11, label %7, !dbg !1294

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !1295
  %9 = load i32, i32* %8, align 4, !dbg !1295, !tbaa !771
  %10 = icmp eq i32 %9, 32, !dbg !1296
  br i1 %10, label %22, label %11, !dbg !1297

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 5) #26, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %12, metadata !1285, metadata !DIExpression()), !dbg !1299
  %13 = load i8*, i8** @file_name, align 8, !dbg !1300, !tbaa !602
  %14 = icmp eq i8* %13, null, !dbg !1300
  %15 = tail call i32* @__errno_location() #30, !dbg !1302
  %16 = load i32, i32* %15, align 4, !dbg !1302, !tbaa !771
  br i1 %14, label %19, label %17, !dbg !1303

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !1304
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.52, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !1305
  br label %20, !dbg !1305

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.53, i64 0, i64 0), i8* %12) #26, !dbg !1306
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1307, !tbaa !771
  tail call void @_exit(i32 %21) #28, !dbg !1308
  unreachable, !dbg !1308

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1309, !tbaa !602
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !1311
  %25 = icmp eq i32 %24, 0, !dbg !1312
  br i1 %25, label %28, label %26, !dbg !1313

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1314, !tbaa !771
  tail call void @_exit(i32 %27) #28, !dbg !1315
  unreachable, !dbg !1315

28:                                               ; preds = %22
  ret void, !dbg !1316
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1319, metadata !DIExpression()), !dbg !1322
  %2 = icmp eq i8* %0, null, !dbg !1323
  br i1 %2, label %3, label %6, !dbg !1325

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1326, !tbaa !602
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1328
  tail call void @abort() #28, !dbg !1329
  unreachable, !dbg !1329

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %7, metadata !1320, metadata !DIExpression()), !dbg !1322
  %8 = icmp eq i8* %7, null, !dbg !1331
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1332
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %10, metadata !1321, metadata !DIExpression()), !dbg !1322
  %11 = ptrtoint i8* %10 to i64, !dbg !1333
  %12 = ptrtoint i8* %0 to i64, !dbg !1333
  %13 = sub i64 %11, %12, !dbg !1333
  %14 = icmp sgt i64 %13, 6, !dbg !1335
  br i1 %14, label %15, label %24, !dbg !1336

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1337
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.61, i64 0, i64 0), i64 7) #27, !dbg !1338
  %18 = icmp eq i32 %17, 0, !dbg !1339
  br i1 %18, label %19, label %24, !dbg !1340

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1319, metadata !DIExpression()), !dbg !1322
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i64 3) #27, !dbg !1341
  %21 = icmp eq i32 %20, 0, !dbg !1344
  br i1 %21, label %22, label %24, !dbg !1345

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %23, metadata !1319, metadata !DIExpression()), !dbg !1322
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1348, !tbaa !602
  br label %24, !dbg !1349

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1319, metadata !DIExpression()), !dbg !1322
  store i8* %25, i8** @program_name, align 8, !dbg !1350, !tbaa !602
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1351, !tbaa !602
  ret void, !dbg !1352
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1353 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1358, metadata !DIExpression()), !dbg !1361
  %2 = tail call i32* @__errno_location() #30, !dbg !1362
  %3 = load i32, i32* %2, align 4, !dbg !1362, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %3, metadata !1359, metadata !DIExpression()), !dbg !1361
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1363
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1363
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1363
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1364
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1364
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1360, metadata !DIExpression()), !dbg !1361
  store i32 %3, i32* %2, align 4, !dbg !1365, !tbaa !771
  ret %struct.quoting_options* %8, !dbg !1366
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1367 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1373, metadata !DIExpression()), !dbg !1374
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1375
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1375
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1376
  %5 = load i32, i32* %4, align 8, !dbg !1376, !tbaa !1377
  ret i32 %5, !dbg !1379
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1380 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1384, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %1, metadata !1385, metadata !DIExpression()), !dbg !1386
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1387
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1387
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1388
  store i32 %1, i32* %5, align 8, !dbg !1389, !tbaa !1377
  ret void, !dbg !1390
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1391 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1395, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %1, metadata !1396, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i32 %2, metadata !1397, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %1, metadata !1398, metadata !DIExpression()), !dbg !1403
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1404
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1404
  %6 = lshr i8 %1, 5, !dbg !1405
  %7 = zext i8 %6 to i64, !dbg !1405
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1406
  call void @llvm.dbg.value(metadata i32* %8, metadata !1399, metadata !DIExpression()), !dbg !1403
  %9 = and i8 %1, 31, !dbg !1407
  %10 = zext i8 %9 to i32, !dbg !1407
  call void @llvm.dbg.value(metadata i32 %10, metadata !1401, metadata !DIExpression()), !dbg !1403
  %11 = load i32, i32* %8, align 4, !dbg !1408, !tbaa !771
  %12 = lshr i32 %11, %10, !dbg !1409
  %13 = and i32 %12, 1, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %13, metadata !1402, metadata !DIExpression()), !dbg !1403
  %14 = and i32 %2, 1, !dbg !1411
  %15 = xor i32 %13, %14, !dbg !1412
  %16 = shl i32 %15, %10, !dbg !1413
  %17 = xor i32 %16, %11, !dbg !1414
  store i32 %17, i32* %8, align 4, !dbg !1414, !tbaa !771
  ret i32 %13, !dbg !1415
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1416 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1420, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %1, metadata !1421, metadata !DIExpression()), !dbg !1423
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1424
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1420, metadata !DIExpression()), !dbg !1423
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1427
  %6 = load i32, i32* %5, align 4, !dbg !1427, !tbaa !1428
  call void @llvm.dbg.value(metadata i32 %6, metadata !1422, metadata !DIExpression()), !dbg !1423
  store i32 %1, i32* %5, align 4, !dbg !1429, !tbaa !1428
  ret i32 %6, !dbg !1430
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1431 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1435, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %1, metadata !1436, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %2, metadata !1437, metadata !DIExpression()), !dbg !1438
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1439
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1435, metadata !DIExpression()), !dbg !1438
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1442
  store i32 10, i32* %6, align 8, !dbg !1443, !tbaa !1377
  %7 = icmp ne i8* %1, null, !dbg !1444
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1446
  br i1 %9, label %11, label %10, !dbg !1446

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1447
  unreachable, !dbg !1447

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1448
  store i8* %1, i8** %12, align 8, !dbg !1449, !tbaa !1450
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1451
  store i8* %2, i8** %13, align 8, !dbg !1452, !tbaa !1453
  ret void, !dbg !1454
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1455 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1459, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %1, metadata !1460, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i8* %2, metadata !1461, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i64 %3, metadata !1462, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1463, metadata !DIExpression()), !dbg !1467
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1468
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1464, metadata !DIExpression()), !dbg !1467
  %8 = tail call i32* @__errno_location() #30, !dbg !1469
  %9 = load i32, i32* %8, align 4, !dbg !1469, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %9, metadata !1465, metadata !DIExpression()), !dbg !1467
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1470
  %11 = load i32, i32* %10, align 8, !dbg !1470, !tbaa !1377
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1471
  %13 = load i32, i32* %12, align 4, !dbg !1471, !tbaa !1428
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1472
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1473
  %16 = load i8*, i8** %15, align 8, !dbg !1473, !tbaa !1450
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1474
  %18 = load i8*, i8** %17, align 8, !dbg !1474, !tbaa !1453
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1475
  call void @llvm.dbg.value(metadata i64 %19, metadata !1466, metadata !DIExpression()), !dbg !1467
  store i32 %9, i32* %8, align 4, !dbg !1476, !tbaa !771
  ret i64 %19, !dbg !1477
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1478 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1484, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %1, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %2, metadata !1486, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %3, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %4, metadata !1488, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %5, metadata !1489, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32* %6, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %7, metadata !1491, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %8, metadata !1492, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 0, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 0, metadata !1495, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* null, metadata !1496, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 0, metadata !1497, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1554
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1555
  %14 = icmp eq i64 %13, 1, !dbg !1556
  call void @llvm.dbg.value(metadata i1 %14, metadata !1499, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1554
  %15 = lshr i32 %5, 1, !dbg !1557
  %16 = trunc i32 %15 to i8, !dbg !1557
  %17 = and i8 %16, 1, !dbg !1557
  call void @llvm.dbg.value(metadata i8 %17, metadata !1500, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, metadata !1502, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 1, metadata !1503, metadata !DIExpression()), !dbg !1554
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1558

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1559
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1560
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1561
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1562
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1554
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1563
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1564
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1565
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %38, metadata !1503, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %37, metadata !1502, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %36, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %35, metadata !1500, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %34, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %33, metadata !1498, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %32, metadata !1497, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %31, metadata !1496, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %30, metadata !1495, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 0, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %29, metadata !1492, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %28, metadata !1491, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %27, metadata !1488, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.label(metadata !1548), !dbg !1566
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
  ], !dbg !1567

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1500, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 5, metadata !1488, metadata !DIExpression()), !dbg !1554
  br label %92, !dbg !1568

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1500, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 5, metadata !1488, metadata !DIExpression()), !dbg !1554
  %42 = and i8 %35, 1, !dbg !1570
  %43 = icmp eq i8 %42, 0, !dbg !1570
  br i1 %43, label %44, label %92, !dbg !1568

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1572
  br i1 %45, label %92, label %46, !dbg !1575

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1572, !tbaa !836
  br label %92, !dbg !1572

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), i32 %27), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %48, metadata !1491, metadata !DIExpression()), !dbg !1554
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), i32 %27), !dbg !1580
  call void @llvm.dbg.value(metadata i8* %49, metadata !1492, metadata !DIExpression()), !dbg !1554
  br label %50, !dbg !1581

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1492, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %51, metadata !1491, metadata !DIExpression()), !dbg !1554
  %53 = and i8 %35, 1, !dbg !1582
  %54 = icmp eq i8 %53, 0, !dbg !1582
  br i1 %54, label %55, label %70, !dbg !1584

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1496, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 0, metadata !1494, metadata !DIExpression()), !dbg !1554
  %56 = load i8, i8* %51, align 1, !dbg !1585, !tbaa !836
  %57 = icmp eq i8 %56, 0, !dbg !1588
  br i1 %57, label %70, label %58, !dbg !1588

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1496, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %61, metadata !1494, metadata !DIExpression()), !dbg !1554
  %62 = icmp ult i64 %61, %39, !dbg !1589
  br i1 %62, label %63, label %65, !dbg !1592

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1589
  store i8 %59, i8* %64, align 1, !dbg !1589, !tbaa !836
  br label %65, !dbg !1589

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %66, metadata !1494, metadata !DIExpression()), !dbg !1554
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1593
  call void @llvm.dbg.value(metadata i8* %67, metadata !1496, metadata !DIExpression()), !dbg !1554
  %68 = load i8, i8* %67, align 1, !dbg !1585, !tbaa !836
  %69 = icmp eq i8 %68, 0, !dbg !1588
  br i1 %69, label %70, label %58, !dbg !1588, !llvm.loop !1594

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1596
  call void @llvm.dbg.value(metadata i64 %71, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 1, metadata !1498, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %52, metadata !1496, metadata !DIExpression()), !dbg !1554
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %72, metadata !1497, metadata !DIExpression()), !dbg !1554
  br label %92, !dbg !1598

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1498, metadata !DIExpression()), !dbg !1554
  br label %74, !dbg !1599

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %75, metadata !1498, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 1, metadata !1500, metadata !DIExpression()), !dbg !1554
  br label %76, !dbg !1600

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1562
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %78, metadata !1500, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %77, metadata !1498, metadata !DIExpression()), !dbg !1554
  %79 = and i8 %78, 1, !dbg !1601
  %80 = icmp eq i8 %79, 0, !dbg !1601
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1603
  br label %82, !dbg !1603

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1554
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1557
  call void @llvm.dbg.value(metadata i8 %84, metadata !1500, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %83, metadata !1498, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 2, metadata !1488, metadata !DIExpression()), !dbg !1554
  %85 = and i8 %84, 1, !dbg !1604
  %86 = icmp eq i8 %85, 0, !dbg !1604
  br i1 %86, label %87, label %92, !dbg !1606

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1607
  br i1 %88, label %92, label %89, !dbg !1610

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1607, !tbaa !836
  br label %92, !dbg !1607

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1500, metadata !DIExpression()), !dbg !1554
  br label %92, !dbg !1611

91:                                               ; preds = %26
  call void @abort() #28, !dbg !1612
  unreachable, !dbg !1612

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1596
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %40 ], !dbg !1554
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1554
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1554
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %100, metadata !1500, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %99, metadata !1498, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %98, metadata !1497, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %97, metadata !1496, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %96, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %95, metadata !1492, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8* %94, metadata !1491, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %93, metadata !1488, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 0, metadata !1493, metadata !DIExpression()), !dbg !1554
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
  br label %121, !dbg !1613

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1614
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1596
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1559
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1563
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1564
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1565
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %128, metadata !1503, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %127, metadata !1502, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %126, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %125, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %124, metadata !1495, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %123, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %122, metadata !1493, metadata !DIExpression()), !dbg !1554
  %130 = icmp eq i64 %125, -1, !dbg !1615
  br i1 %130, label %131, label %135, !dbg !1616

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1617
  %133 = load i8, i8* %132, align 1, !dbg !1617, !tbaa !836
  %134 = icmp eq i8 %133, 0, !dbg !1618
  br i1 %134, label %587, label %137, !dbg !1619

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1620
  br i1 %136, label %587, label %137, !dbg !1619

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1509, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 0, metadata !1510, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 0, metadata !1511, metadata !DIExpression()), !dbg !1621
  br i1 %106, label %138, label %153, !dbg !1622

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1624
  %140 = and i1 %107, %130, !dbg !1625
  br i1 %140, label %141, label %143, !dbg !1625

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %142, metadata !1487, metadata !DIExpression()), !dbg !1554
  br label %143, !dbg !1627

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1627
  call void @llvm.dbg.value(metadata i64 %144, metadata !1487, metadata !DIExpression()), !dbg !1554
  %145 = icmp ugt i64 %139, %144, !dbg !1628
  br i1 %145, label %153, label %146, !dbg !1629

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1630
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1631
  %149 = icmp ne i32 %148, 0, !dbg !1632
  %150 = or i1 %149, %109, !dbg !1633
  %151 = xor i1 %149, true, !dbg !1633
  %152 = zext i1 %151 to i8, !dbg !1633
  br i1 %150, label %153, label %646, !dbg !1633

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1621
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1621
  call void @llvm.dbg.value(metadata i8 %156, metadata !1509, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %154, metadata !1487, metadata !DIExpression()), !dbg !1554
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1634
  %158 = load i8, i8* %157, align 1, !dbg !1634, !tbaa !836
  call void @llvm.dbg.value(metadata i8 %158, metadata !1504, metadata !DIExpression()), !dbg !1621
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
  ], !dbg !1635

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1636

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1637

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1510, metadata !DIExpression()), !dbg !1621
  %162 = and i8 %126, 1, !dbg !1641
  %163 = icmp eq i8 %162, 0, !dbg !1641
  %164 = and i1 %110, %163, !dbg !1641
  br i1 %164, label %165, label %181, !dbg !1641

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1643
  br i1 %166, label %167, label %169, !dbg !1647

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1643
  store i8 39, i8* %168, align 1, !dbg !1643, !tbaa !836
  br label %169, !dbg !1643

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %170, metadata !1494, metadata !DIExpression()), !dbg !1554
  %171 = icmp ult i64 %170, %129, !dbg !1648
  br i1 %171, label %172, label %174, !dbg !1651

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1648
  store i8 36, i8* %173, align 1, !dbg !1648, !tbaa !836
  br label %174, !dbg !1648

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %175, metadata !1494, metadata !DIExpression()), !dbg !1554
  %176 = icmp ult i64 %175, %129, !dbg !1652
  br i1 %176, label %177, label %179, !dbg !1655

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1652
  store i8 39, i8* %178, align 1, !dbg !1652, !tbaa !836
  br label %179, !dbg !1652

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %180, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 1, metadata !1501, metadata !DIExpression()), !dbg !1554
  br label %181, !dbg !1656

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1554
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %183, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %182, metadata !1494, metadata !DIExpression()), !dbg !1554
  %184 = icmp ult i64 %182, %129, !dbg !1657
  br i1 %184, label %185, label %187, !dbg !1660

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1657
  store i8 92, i8* %186, align 1, !dbg !1657, !tbaa !836
  br label %187, !dbg !1657

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %188, metadata !1494, metadata !DIExpression()), !dbg !1554
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1661
  br i1 %191, label %192, label %473, !dbg !1661

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1663
  %194 = load i8, i8* %193, align 1, !dbg !1663, !tbaa !836
  %195 = add i8 %194, -48, !dbg !1664
  %196 = icmp ult i8 %195, 10, !dbg !1664
  br i1 %196, label %197, label %473, !dbg !1664

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1665
  br i1 %198, label %199, label %201, !dbg !1669

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1665
  store i8 48, i8* %200, align 1, !dbg !1665, !tbaa !836
  br label %201, !dbg !1665

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %202, metadata !1494, metadata !DIExpression()), !dbg !1554
  %203 = icmp ult i64 %202, %129, !dbg !1670
  br i1 %203, label %204, label %206, !dbg !1673

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1670
  store i8 48, i8* %205, align 1, !dbg !1670, !tbaa !836
  br label %206, !dbg !1670

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %207, metadata !1494, metadata !DIExpression()), !dbg !1554
  br label %473, !dbg !1674

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1675

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1676

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1677

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1679
  br i1 %214, label %215, label %473, !dbg !1679

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1681
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1682
  %218 = load i8, i8* %217, align 1, !dbg !1682, !tbaa !836
  %219 = icmp eq i8 %218, 63, !dbg !1683
  br i1 %219, label %220, label %473, !dbg !1684

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1685
  %222 = load i8, i8* %221, align 1, !dbg !1685, !tbaa !836
  %223 = sext i8 %222 to i32, !dbg !1685
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
  ], !dbg !1686

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1687

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1504, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i64 undef, metadata !1493, metadata !DIExpression()), !dbg !1554
  %226 = icmp ult i64 %123, %129, !dbg !1689
  br i1 %226, label %227, label %229, !dbg !1692

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1689
  store i8 63, i8* %228, align 1, !dbg !1689, !tbaa !836
  br label %229, !dbg !1689

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %230, metadata !1494, metadata !DIExpression()), !dbg !1554
  %231 = icmp ult i64 %230, %129, !dbg !1693
  br i1 %231, label %232, label %234, !dbg !1696

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1693
  store i8 34, i8* %233, align 1, !dbg !1693, !tbaa !836
  br label %234, !dbg !1693

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %235, metadata !1494, metadata !DIExpression()), !dbg !1554
  %236 = icmp ult i64 %235, %129, !dbg !1697
  br i1 %236, label %237, label %239, !dbg !1700

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1697
  store i8 34, i8* %238, align 1, !dbg !1697, !tbaa !836
  br label %239, !dbg !1697

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %240, metadata !1494, metadata !DIExpression()), !dbg !1554
  %241 = icmp ult i64 %240, %129, !dbg !1701
  br i1 %241, label %242, label %244, !dbg !1704

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1701
  store i8 63, i8* %243, align 1, !dbg !1701, !tbaa !836
  br label %244, !dbg !1701

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %245, metadata !1494, metadata !DIExpression()), !dbg !1554
  br label %473, !dbg !1705

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1508, metadata !DIExpression()), !dbg !1621
  br label %256, !dbg !1706

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1508, metadata !DIExpression()), !dbg !1621
  br label %256, !dbg !1707

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1508, metadata !DIExpression()), !dbg !1621
  br label %254, !dbg !1708

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1508, metadata !DIExpression()), !dbg !1621
  br label %254, !dbg !1709

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1508, metadata !DIExpression()), !dbg !1621
  br label %256, !dbg !1710

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1508, metadata !DIExpression()), !dbg !1621
  br i1 %110, label %252, label %253, !dbg !1711

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1712

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1715

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1717
  call void @llvm.dbg.value(metadata i8 %255, metadata !1508, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.label(metadata !1549), !dbg !1718
  br i1 %111, label %256, label %631, !dbg !1719

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1717
  call void @llvm.dbg.value(metadata i8 %257, metadata !1508, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.label(metadata !1550), !dbg !1721
  br i1 %102, label %495, label %473, !dbg !1722

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1723

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1724, !tbaa !836
  %261 = icmp eq i8 %260, 0, !dbg !1726
  br i1 %261, label %262, label %473, !dbg !1727

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1728
  br i1 %263, label %264, label %473, !dbg !1730

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1511, metadata !DIExpression()), !dbg !1621
  br label %265, !dbg !1731

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1621
  call void @llvm.dbg.value(metadata i8 %266, metadata !1511, metadata !DIExpression()), !dbg !1621
  br i1 %111, label %473, label %631, !dbg !1732

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1502, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 1, metadata !1511, metadata !DIExpression()), !dbg !1621
  br i1 %110, label %268, label %473, !dbg !1734

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1735

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1738
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1740
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1740
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %274, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %273, metadata !1495, metadata !DIExpression()), !dbg !1554
  %275 = icmp ult i64 %123, %274, !dbg !1741
  br i1 %275, label %276, label %278, !dbg !1744

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1741
  store i8 39, i8* %277, align 1, !dbg !1741, !tbaa !836
  br label %278, !dbg !1741

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %279, metadata !1494, metadata !DIExpression()), !dbg !1554
  %280 = icmp ult i64 %279, %274, !dbg !1745
  br i1 %280, label %281, label %283, !dbg !1748

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1745
  store i8 92, i8* %282, align 1, !dbg !1745, !tbaa !836
  br label %283, !dbg !1745

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %284, metadata !1494, metadata !DIExpression()), !dbg !1554
  %285 = icmp ult i64 %284, %274, !dbg !1749
  br i1 %285, label %286, label %288, !dbg !1752

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1749
  store i8 39, i8* %287, align 1, !dbg !1749, !tbaa !836
  br label %288, !dbg !1749

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %289, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, metadata !1501, metadata !DIExpression()), !dbg !1554
  br label %473, !dbg !1753

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1754

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1512, metadata !DIExpression()), !dbg !1755
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !1756
  %293 = load i16*, i16** %292, align 8, !dbg !1756, !tbaa !602
  %294 = zext i8 %158 to i64, !dbg !1756
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1756
  %296 = load i16, i16* %295, align 2, !dbg !1756, !tbaa !1758
  %297 = lshr i16 %296, 14, !dbg !1759
  %298 = trunc i16 %297 to i8, !dbg !1759
  %299 = and i8 %298, 1, !dbg !1759
  call void @llvm.dbg.value(metadata i8 %354, metadata !1515, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %355, metadata !1512, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %306, metadata !1487, metadata !DIExpression()), !dbg !1554
  %300 = icmp eq i8 %299, 0, !dbg !1760
  call void @llvm.dbg.value(metadata i1 %357, metadata !1511, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1621
  br label %359, !dbg !1761

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1762
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1516, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8* %23, metadata !1764, metadata !DIExpression()) #26, !dbg !1771
  call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()) #26, !dbg !1771
  call void @llvm.dbg.value(metadata i64 8, metadata !1770, metadata !DIExpression()) #26, !dbg !1771
  store i64 0, i64* %10, align 8, !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1512, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 1, metadata !1515, metadata !DIExpression()), !dbg !1755
  %302 = icmp eq i64 %154, -1, !dbg !1774
  br i1 %302, label %303, label %305, !dbg !1776

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %304, metadata !1487, metadata !DIExpression()), !dbg !1554
  br label %305, !dbg !1778

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1621
  call void @llvm.dbg.value(metadata i64 %306, metadata !1487, metadata !DIExpression()), !dbg !1554
  br label %307, !dbg !1779

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1780
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1781
  call void @llvm.dbg.value(metadata i8 %309, metadata !1515, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %308, metadata !1512, metadata !DIExpression()), !dbg !1755
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1782
  %310 = add i64 %308, %122, !dbg !1783
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1784
  %312 = sub i64 %306, %310, !dbg !1785
  call void @llvm.dbg.value(metadata i32* %12, metadata !1534, metadata !DIExpression(DW_OP_deref)), !dbg !1786
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %313, metadata !1537, metadata !DIExpression()), !dbg !1786
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1788

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1512, metadata !DIExpression()), !dbg !1755
  %315 = icmp ugt i64 %306, %310, !dbg !1789
  br i1 %315, label %316, label %341, !dbg !1791

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1792
  br label %318, !dbg !1792

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1512, metadata !DIExpression()), !dbg !1755
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1793
  %322 = load i8, i8* %321, align 1, !dbg !1793, !tbaa !836
  %323 = icmp eq i8 %322, 0, !dbg !1791
  br i1 %323, label %341, label %324, !dbg !1792

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %325, metadata !1512, metadata !DIExpression()), !dbg !1755
  %326 = add i64 %325, %122, !dbg !1795
  %327 = icmp ult i64 %326, %306, !dbg !1789
  br i1 %327, label %318, label %341, !dbg !1791, !llvm.loop !1796

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1797
  call void @llvm.dbg.value(metadata i64 1, metadata !1538, metadata !DIExpression()), !dbg !1798
  br i1 %330, label %331, label %344, !dbg !1797

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1538, metadata !DIExpression()), !dbg !1798
  %333 = add i64 %332, %310, !dbg !1799
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1802
  %335 = load i8, i8* %334, align 1, !dbg !1802, !tbaa !836
  %336 = sext i8 %335 to i32, !dbg !1802
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1803

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %338, metadata !1538, metadata !DIExpression()), !dbg !1798
  %339 = icmp eq i64 %338, %313, !dbg !1805
  br i1 %339, label %344, label %331, !dbg !1806, !llvm.loop !1807

340:                                              ; preds = %307
  br label %341, !dbg !1809

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1515, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 undef, metadata !1512, metadata !DIExpression()), !dbg !1755
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1809
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1810, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %345, metadata !1534, metadata !DIExpression()), !dbg !1786
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !1812
  %347 = icmp eq i32 %346, 0, !dbg !1812
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1813
  call void @llvm.dbg.value(metadata i8 %348, metadata !1515, metadata !DIExpression()), !dbg !1755
  %349 = add i64 %313, %308, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %349, metadata !1512, metadata !DIExpression()), !dbg !1755
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1809
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !1815
  %351 = icmp eq i32 %350, 0, !dbg !1816
  br i1 %351, label %307, label %353, !dbg !1817, !llvm.loop !1818

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1515, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 undef, metadata !1512, metadata !DIExpression()), !dbg !1755
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1809
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1820
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1820
  call void @llvm.dbg.value(metadata i8 %354, metadata !1515, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %355, metadata !1512, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %306, metadata !1487, metadata !DIExpression()), !dbg !1554
  %356 = and i8 %354, 1, !dbg !1760
  %357 = icmp eq i8 %356, 0, !dbg !1760
  call void @llvm.dbg.value(metadata i1 %357, metadata !1511, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1621
  %358 = icmp ugt i64 %355, 1, !dbg !1821
  br i1 %358, label %367, label %359, !dbg !1761

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1822
  br i1 %364, label %367, label %365, !dbg !1822

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1621
  call void @llvm.dbg.value(metadata i8 %472, metadata !1511, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %441, metadata !1510, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %440, metadata !1509, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %439, metadata !1504, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %438, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %371, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %437, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %375, metadata !1493, metadata !DIExpression()), !dbg !1554
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %372, metadata !1545, metadata !DIExpression()), !dbg !1824
  %373 = and i1 %102, %368
  br label %374, !dbg !1825

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1614
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1554
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1563
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1621
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1621
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1826
  call void @llvm.dbg.value(metadata i8 %380, metadata !1510, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %379, metadata !1509, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %378, metadata !1504, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %377, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %376, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %375, metadata !1493, metadata !DIExpression()), !dbg !1554
  br i1 %373, label %381, label %427, !dbg !1827

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1832

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1510, metadata !DIExpression()), !dbg !1621
  %383 = and i8 %377, 1, !dbg !1835
  %384 = icmp eq i8 %383, 0, !dbg !1835
  %385 = and i1 %110, %384, !dbg !1835
  br i1 %385, label %386, label %402, !dbg !1835

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1837
  br i1 %387, label %388, label %390, !dbg !1841

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1837
  store i8 39, i8* %389, align 1, !dbg !1837, !tbaa !836
  br label %390, !dbg !1837

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %391, metadata !1494, metadata !DIExpression()), !dbg !1554
  %392 = icmp ult i64 %391, %129, !dbg !1842
  br i1 %392, label %393, label %395, !dbg !1845

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1842
  store i8 36, i8* %394, align 1, !dbg !1842, !tbaa !836
  br label %395, !dbg !1842

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %396, metadata !1494, metadata !DIExpression()), !dbg !1554
  %397 = icmp ult i64 %396, %129, !dbg !1846
  br i1 %397, label %398, label %400, !dbg !1849

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1846
  store i8 39, i8* %399, align 1, !dbg !1846, !tbaa !836
  br label %400, !dbg !1846

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %401, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 1, metadata !1501, metadata !DIExpression()), !dbg !1554
  br label %402, !dbg !1850

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1554
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %404, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %403, metadata !1494, metadata !DIExpression()), !dbg !1554
  %405 = icmp ult i64 %403, %129, !dbg !1851
  br i1 %405, label %406, label %408, !dbg !1854

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1851
  store i8 92, i8* %407, align 1, !dbg !1851, !tbaa !836
  br label %408, !dbg !1851

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %409, metadata !1494, metadata !DIExpression()), !dbg !1554
  %410 = icmp ult i64 %409, %129, !dbg !1855
  br i1 %410, label %411, label %415, !dbg !1858

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1855
  %413 = or i8 %412, 48, !dbg !1855
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1855
  store i8 %413, i8* %414, align 1, !dbg !1855, !tbaa !836
  br label %415, !dbg !1855

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %416, metadata !1494, metadata !DIExpression()), !dbg !1554
  %417 = icmp ult i64 %416, %129, !dbg !1859
  br i1 %417, label %418, label %423, !dbg !1862

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1859
  %420 = and i8 %419, 7, !dbg !1859
  %421 = or i8 %420, 48, !dbg !1859
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1859
  store i8 %421, i8* %422, align 1, !dbg !1859, !tbaa !836
  br label %423, !dbg !1859

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %424, metadata !1494, metadata !DIExpression()), !dbg !1554
  %425 = and i8 %378, 7, !dbg !1863
  %426 = or i8 %425, 48, !dbg !1864
  call void @llvm.dbg.value(metadata i8 %426, metadata !1504, metadata !DIExpression()), !dbg !1621
  br label %436, !dbg !1865

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1866
  %429 = icmp eq i8 %428, 0, !dbg !1866
  br i1 %429, label %436, label %430, !dbg !1868

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1869
  br i1 %431, label %432, label %434, !dbg !1873

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1869
  store i8 92, i8* %433, align 1, !dbg !1869, !tbaa !836
  br label %434, !dbg !1869

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %435, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, metadata !1509, metadata !DIExpression()), !dbg !1621
  br label %436, !dbg !1874

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1554
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1563
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1621
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1621
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1621
  call void @llvm.dbg.value(metadata i8 %441, metadata !1510, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %440, metadata !1509, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %439, metadata !1504, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %438, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %437, metadata !1494, metadata !DIExpression()), !dbg !1554
  %442 = add i64 %375, 1, !dbg !1875
  %443 = icmp ugt i64 %372, %442, !dbg !1877
  br i1 %443, label %444, label %471, !dbg !1878

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1879
  %446 = icmp ne i8 %445, 0, !dbg !1879
  %447 = and i8 %441, 1, !dbg !1879
  %448 = icmp eq i8 %447, 0, !dbg !1879
  %449 = and i1 %446, %448, !dbg !1879
  br i1 %449, label %450, label %461, !dbg !1879

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1882
  br i1 %451, label %452, label %454, !dbg !1886

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1882
  store i8 39, i8* %453, align 1, !dbg !1882, !tbaa !836
  br label %454, !dbg !1882

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %455, metadata !1494, metadata !DIExpression()), !dbg !1554
  %456 = icmp ult i64 %455, %129, !dbg !1887
  br i1 %456, label %457, label %459, !dbg !1890

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1887
  store i8 39, i8* %458, align 1, !dbg !1887, !tbaa !836
  br label %459, !dbg !1887

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %460, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, metadata !1501, metadata !DIExpression()), !dbg !1554
  br label %461, !dbg !1891

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1892
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %463, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %462, metadata !1494, metadata !DIExpression()), !dbg !1554
  %464 = icmp ult i64 %462, %129, !dbg !1893
  br i1 %464, label %465, label %467, !dbg !1896

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1893
  store i8 %439, i8* %466, align 1, !dbg !1893, !tbaa !836
  br label %467, !dbg !1893

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %468, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %442, metadata !1493, metadata !DIExpression()), !dbg !1554
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1897
  %470 = load i8, i8* %469, align 1, !dbg !1897, !tbaa !836
  call void @llvm.dbg.value(metadata i8 %470, metadata !1504, metadata !DIExpression()), !dbg !1621
  br label %374, !dbg !1898, !llvm.loop !1899

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1621
  call void @llvm.dbg.value(metadata i8 %472, metadata !1511, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %441, metadata !1510, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %440, metadata !1509, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %439, metadata !1504, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %438, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %371, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %437, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %375, metadata !1493, metadata !DIExpression()), !dbg !1554
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1614
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1554
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1559
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1902
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1554
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1554
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1621
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1621
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1621
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %482, metadata !1511, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %481, metadata !1510, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %156, metadata !1509, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %480, metadata !1504, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %479, metadata !1502, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %478, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %477, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %476, metadata !1495, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %475, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %474, metadata !1493, metadata !DIExpression()), !dbg !1554
  br i1 %116, label %494, label %484, !dbg !1903

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1905
  %486 = zext i8 %485 to i64, !dbg !1905
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1906
  %488 = load i32, i32* %487, align 4, !dbg !1906, !tbaa !771
  %489 = and i8 %480, 31, !dbg !1907
  %490 = zext i8 %489 to i32, !dbg !1907
  %491 = shl nuw i32 1, %490, !dbg !1908
  %492 = and i32 %488, %491, !dbg !1908
  %493 = icmp eq i32 %492, 0, !dbg !1908
  br i1 %493, label %494, label %495, !dbg !1909

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1910

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1911
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1554
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1559
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1902
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1563
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1564
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1621
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1621
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %503, metadata !1511, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %502, metadata !1504, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %501, metadata !1502, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %500, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %499, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %498, metadata !1495, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %497, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %496, metadata !1493, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.label(metadata !1551), !dbg !1912
  br i1 %109, label %505, label %635, !dbg !1913

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1510, metadata !DIExpression()), !dbg !1621
  %506 = and i8 %500, 1, !dbg !1915
  %507 = icmp eq i8 %506, 0, !dbg !1915
  %508 = and i1 %110, %507, !dbg !1915
  br i1 %508, label %509, label %525, !dbg !1915

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1917
  br i1 %510, label %511, label %513, !dbg !1921

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1917
  store i8 39, i8* %512, align 1, !dbg !1917, !tbaa !836
  br label %513, !dbg !1917

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %514, metadata !1494, metadata !DIExpression()), !dbg !1554
  %515 = icmp ult i64 %514, %504, !dbg !1922
  br i1 %515, label %516, label %518, !dbg !1925

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1922
  store i8 36, i8* %517, align 1, !dbg !1922, !tbaa !836
  br label %518, !dbg !1922

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %519, metadata !1494, metadata !DIExpression()), !dbg !1554
  %520 = icmp ult i64 %519, %504, !dbg !1926
  br i1 %520, label %521, label %523, !dbg !1929

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1926
  store i8 39, i8* %522, align 1, !dbg !1926, !tbaa !836
  br label %523, !dbg !1926

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %524, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 1, metadata !1501, metadata !DIExpression()), !dbg !1554
  br label %525, !dbg !1930

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1621
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %527, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %526, metadata !1494, metadata !DIExpression()), !dbg !1554
  %528 = icmp ult i64 %526, %504, !dbg !1931
  br i1 %528, label %529, label %531, !dbg !1934

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1931
  store i8 92, i8* %530, align 1, !dbg !1931, !tbaa !836
  br label %531, !dbg !1931

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %543, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %542, metadata !1511, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %541, metadata !1510, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %540, metadata !1504, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %539, metadata !1502, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %538, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %537, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %536, metadata !1495, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %535, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %534, metadata !1493, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.label(metadata !1552), !dbg !1935
  br label %560, !dbg !1936

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1911
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1554
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1559
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1902
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1563
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1564
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1939
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1621
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1621
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %542, metadata !1511, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %541, metadata !1510, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %540, metadata !1504, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 %539, metadata !1502, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %538, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %537, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %536, metadata !1495, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %535, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %534, metadata !1493, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.label(metadata !1552), !dbg !1935
  %544 = and i8 %538, 1, !dbg !1936
  %545 = icmp ne i8 %544, 0, !dbg !1936
  %546 = and i8 %541, 1, !dbg !1936
  %547 = icmp eq i8 %546, 0, !dbg !1936
  %548 = and i1 %545, %547, !dbg !1936
  br i1 %548, label %549, label %560, !dbg !1936

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1940
  br i1 %550, label %551, label %553, !dbg !1944

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1940
  store i8 39, i8* %552, align 1, !dbg !1940, !tbaa !836
  br label %553, !dbg !1940

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %554, metadata !1494, metadata !DIExpression()), !dbg !1554
  %555 = icmp ult i64 %554, %543, !dbg !1945
  br i1 %555, label %556, label %558, !dbg !1948

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1945
  store i8 39, i8* %557, align 1, !dbg !1945, !tbaa !836
  br label %558, !dbg !1945

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %559, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, metadata !1501, metadata !DIExpression()), !dbg !1554
  br label %560, !dbg !1949

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1621
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %569, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %568, metadata !1494, metadata !DIExpression()), !dbg !1554
  %570 = icmp ult i64 %568, %561, !dbg !1950
  br i1 %570, label %571, label %573, !dbg !1953

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1950
  store i8 %563, i8* %572, align 1, !dbg !1950, !tbaa !836
  br label %573, !dbg !1950

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %574, metadata !1494, metadata !DIExpression()), !dbg !1554
  %575 = icmp eq i8 %562, 0, !dbg !1954
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1956
  call void @llvm.dbg.value(metadata i8 %576, metadata !1503, metadata !DIExpression()), !dbg !1554
  br label %577, !dbg !1957

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1911
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1554
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1559
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1902
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1563
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1554
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1565
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %584, metadata !1503, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %583, metadata !1502, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %582, metadata !1501, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %581, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %580, metadata !1495, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %579, metadata !1494, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %578, metadata !1493, metadata !DIExpression()), !dbg !1554
  %586 = add i64 %578, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %586, metadata !1493, metadata !DIExpression()), !dbg !1554
  br label %121, !dbg !1959, !llvm.loop !1960

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1962
  %590 = and i1 %110, %589, !dbg !1964
  %591 = xor i1 %590, true, !dbg !1964
  %592 = or i1 %109, %591, !dbg !1964
  br i1 %592, label %593, label %635, !dbg !1964

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1965
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1965
  br i1 %597, label %598, label %607, !dbg !1965

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1967
  %600 = icmp eq i8 %599, 0, !dbg !1967
  br i1 %600, label %603, label %601, !dbg !1970

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1971
  br label %652, !dbg !1972

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1973
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1975
  br i1 %606, label %26, label %607, !dbg !1975

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1976
  %610 = and i1 %609, %608, !dbg !1978
  br i1 %610, label %611, label %626, !dbg !1978

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1496, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %123, metadata !1494, metadata !DIExpression()), !dbg !1554
  %612 = load i8, i8* %97, align 1, !dbg !1979, !tbaa !836
  %613 = icmp eq i8 %612, 0, !dbg !1982
  br i1 %613, label %626, label %614, !dbg !1982

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1496, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %617, metadata !1494, metadata !DIExpression()), !dbg !1554
  %618 = icmp ult i64 %617, %129, !dbg !1983
  br i1 %618, label %619, label %621, !dbg !1986

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1983
  store i8 %615, i8* %620, align 1, !dbg !1983, !tbaa !836
  br label %621, !dbg !1983

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %622, metadata !1494, metadata !DIExpression()), !dbg !1554
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1987
  call void @llvm.dbg.value(metadata i8* %623, metadata !1496, metadata !DIExpression()), !dbg !1554
  %624 = load i8, i8* %623, align 1, !dbg !1979, !tbaa !836
  %625 = icmp eq i8 %624, 0, !dbg !1982
  br i1 %625, label %626, label %614, !dbg !1982, !llvm.loop !1988

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1596
  call void @llvm.dbg.value(metadata i64 %627, metadata !1494, metadata !DIExpression()), !dbg !1554
  %628 = icmp ult i64 %627, %129, !dbg !1990
  br i1 %628, label %629, label %652, !dbg !1992

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1993
  store i8 0, i8* %630, align 1, !dbg !1994, !tbaa !836
  br label %652, !dbg !1993

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %637, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.label(metadata !1553), !dbg !1995
  %633 = icmp eq i8 %101, 0, !dbg !1996
  %634 = select i1 %633, i32 2, i32 4, !dbg !1996
  br label %642, !dbg !1996

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1485, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %637, metadata !1487, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.label(metadata !1553), !dbg !1995
  %639 = icmp eq i32 %93, 2, !dbg !1998
  %640 = icmp eq i8 %636, 0, !dbg !1996
  %641 = select i1 %640, i32 2, i32 4, !dbg !1996
  br i1 %639, label %642, label %646, !dbg !1996

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1996

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1488, metadata !DIExpression()), !dbg !1554
  %650 = and i32 %5, -3, !dbg !1999
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2000
  br label %652, !dbg !2001

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2002
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2007, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %1, metadata !2008, metadata !DIExpression()), !dbg !2011
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !2012
  call void @llvm.dbg.value(metadata i8* %3, metadata !2009, metadata !DIExpression()), !dbg !2011
  %4 = icmp eq i8* %3, %0, !dbg !2013
  br i1 %4, label %5, label %72, !dbg !2015

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !2016
  call void @llvm.dbg.value(metadata i8* %6, metadata !2010, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %6, metadata !2017, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8* undef, metadata !2023, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 85, metadata !2024, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 84, metadata !2025, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 70, metadata !2026, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 45, metadata !2027, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 56, metadata !2028, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 0, metadata !2029, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 0, metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 0, metadata !2032, metadata !DIExpression()), !dbg !2033
  %7 = load i8, i8* %6, align 1, !dbg !2036, !tbaa !836
  %8 = and i8 %7, -33, !dbg !2036
  %9 = sext i8 %8 to i32, !dbg !2036
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2036

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2038, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8* undef, metadata !2043, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 84, metadata !2044, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 70, metadata !2045, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 45, metadata !2046, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 56, metadata !2047, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 0, metadata !2051, metadata !DIExpression()), !dbg !2052
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2056
  %12 = load i8, i8* %11, align 1, !dbg !2056, !tbaa !836
  %13 = and i8 %12, -33, !dbg !2056
  %14 = icmp eq i8 %13, 84, !dbg !2056
  br i1 %14, label %15, label %69, !dbg !2056

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2058, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* undef, metadata !2063, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 70, metadata !2064, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 45, metadata !2065, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 56, metadata !2066, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, metadata !2067, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, metadata !2070, metadata !DIExpression()), !dbg !2071
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2075
  %17 = load i8, i8* %16, align 1, !dbg !2075, !tbaa !836
  %18 = and i8 %17, -33, !dbg !2075
  %19 = icmp eq i8 %18, 70, !dbg !2075
  br i1 %19, label %20, label %69, !dbg !2075

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2077, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8* undef, metadata !2082, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8 45, metadata !2083, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8 56, metadata !2084, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8 0, metadata !2085, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8 0, metadata !2086, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8 0, metadata !2087, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8 0, metadata !2088, metadata !DIExpression()), !dbg !2089
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2093
  %22 = load i8, i8* %21, align 1, !dbg !2093, !tbaa !836
  %23 = icmp eq i8 %22, 45, !dbg !2093
  br i1 %23, label %24, label %69, !dbg !2095

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2096, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8* undef, metadata !2101, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 56, metadata !2102, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2103, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2104, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2105, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2106, metadata !DIExpression()), !dbg !2107
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2111
  %26 = load i8, i8* %25, align 1, !dbg !2111, !tbaa !836
  %27 = icmp eq i8 %26, 56, !dbg !2111
  br i1 %27, label %28, label %69, !dbg !2113

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2114, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* undef, metadata !2119, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2120, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2121, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2123, metadata !DIExpression()), !dbg !2124
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2128
  %30 = load i8, i8* %29, align 1, !dbg !2128, !tbaa !836
  %31 = icmp eq i8 %30, 0, !dbg !2128
  br i1 %31, label %32, label %69, !dbg !2130

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2131, !tbaa !836
  %34 = icmp eq i8 %33, 96, !dbg !2132
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.76, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.77, i64 0, i64 0), !dbg !2131
  br label %72, !dbg !2133

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2038, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* undef, metadata !2043, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 66, metadata !2044, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 49, metadata !2045, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 56, metadata !2046, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 48, metadata !2047, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 51, metadata !2048, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 48, metadata !2049, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2051, metadata !DIExpression()), !dbg !2134
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2138
  %38 = load i8, i8* %37, align 1, !dbg !2138, !tbaa !836
  %39 = and i8 %38, -33, !dbg !2138
  %40 = icmp eq i8 %39, 66, !dbg !2138
  br i1 %40, label %41, label %69, !dbg !2138

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2058, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* undef, metadata !2063, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 49, metadata !2064, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 56, metadata !2065, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 48, metadata !2066, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 51, metadata !2067, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 48, metadata !2068, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2070, metadata !DIExpression()), !dbg !2139
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2141
  %43 = load i8, i8* %42, align 1, !dbg !2141, !tbaa !836
  %44 = icmp eq i8 %43, 49, !dbg !2141
  br i1 %44, label %45, label %69, !dbg !2142

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2077, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* undef, metadata !2082, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 56, metadata !2083, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 48, metadata !2084, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 51, metadata !2085, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 48, metadata !2086, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2087, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2088, metadata !DIExpression()), !dbg !2143
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2145
  %47 = load i8, i8* %46, align 1, !dbg !2145, !tbaa !836
  %48 = icmp eq i8 %47, 56, !dbg !2145
  br i1 %48, label %49, label %69, !dbg !2146

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2096, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8* undef, metadata !2101, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 48, metadata !2102, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 51, metadata !2103, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 48, metadata !2104, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2105, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2106, metadata !DIExpression()), !dbg !2147
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2149
  %51 = load i8, i8* %50, align 1, !dbg !2149, !tbaa !836
  %52 = icmp eq i8 %51, 48, !dbg !2149
  br i1 %52, label %53, label %69, !dbg !2150

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2114, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8* undef, metadata !2119, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 51, metadata !2120, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 48, metadata !2121, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 0, metadata !2122, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 0, metadata !2123, metadata !DIExpression()), !dbg !2151
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2153
  %55 = load i8, i8* %54, align 1, !dbg !2153, !tbaa !836
  %56 = icmp eq i8 %55, 51, !dbg !2153
  br i1 %56, label %57, label %69, !dbg !2154

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2155, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* undef, metadata !2160, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 48, metadata !2161, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2164
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2168
  %59 = load i8, i8* %58, align 1, !dbg !2168, !tbaa !836
  %60 = icmp eq i8 %59, 48, !dbg !2168
  br i1 %60, label %61, label %69, !dbg !2170

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* undef, metadata !2176, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2179
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2183
  %63 = load i8, i8* %62, align 1, !dbg !2183, !tbaa !836
  %64 = icmp eq i8 %63, 0, !dbg !2183
  br i1 %64, label %65, label %69, !dbg !2185

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2186, !tbaa !836
  %67 = icmp eq i8 %66, 96, !dbg !2187
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.79, i64 0, i64 0), !dbg !2186
  br label %72, !dbg !2188

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2189
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !2190
  br label %72, !dbg !2191

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2011
  ret i8* %73, !dbg !2192
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !2193 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2197 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2203 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %1, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2209, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8* %0, metadata !2211, metadata !DIExpression()) #26, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %1, metadata !2216, metadata !DIExpression()) #26, !dbg !2224
  call void @llvm.dbg.value(metadata i64* null, metadata !2217, metadata !DIExpression()) #26, !dbg !2224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2218, metadata !DIExpression()) #26, !dbg !2224
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2226
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2219, metadata !DIExpression()) #26, !dbg !2224
  %6 = tail call i32* @__errno_location() #30, !dbg !2227
  %7 = load i32, i32* %6, align 4, !dbg !2227, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %7, metadata !2220, metadata !DIExpression()) #26, !dbg !2224
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2228
  %9 = load i32, i32* %8, align 4, !dbg !2228, !tbaa !1428
  %10 = or i32 %9, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %10, metadata !2221, metadata !DIExpression()) #26, !dbg !2224
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2230
  %12 = load i32, i32* %11, align 8, !dbg !2230, !tbaa !1377
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2231
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2232
  %15 = load i8*, i8** %14, align 8, !dbg !2232, !tbaa !1450
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2233
  %17 = load i8*, i8** %16, align 8, !dbg !2233, !tbaa !1453
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !2234
  %19 = add i64 %18, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %19, metadata !2222, metadata !DIExpression()) #26, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %19, metadata !2236, metadata !DIExpression()) #26, !dbg !2239
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !2241
  call void @llvm.dbg.value(metadata i8* %20, metadata !2223, metadata !DIExpression()) #26, !dbg !2224
  %21 = load i32, i32* %11, align 8, !dbg !2242, !tbaa !1377
  %22 = load i8*, i8** %14, align 8, !dbg !2243, !tbaa !1450
  %23 = load i8*, i8** %16, align 8, !dbg !2244, !tbaa !1453
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !2245
  store i32 %7, i32* %6, align 4, !dbg !2246, !tbaa !771
  ret i8* %20, !dbg !2247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2212 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2211, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %1, metadata !2216, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64* %2, metadata !2217, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2218, metadata !DIExpression()), !dbg !2248
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2249
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2249
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2219, metadata !DIExpression()), !dbg !2248
  %7 = tail call i32* @__errno_location() #30, !dbg !2250
  %8 = load i32, i32* %7, align 4, !dbg !2250, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %8, metadata !2220, metadata !DIExpression()), !dbg !2248
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2251
  %10 = load i32, i32* %9, align 4, !dbg !2251, !tbaa !1428
  %11 = icmp eq i64* %2, null, !dbg !2252
  %12 = zext i1 %11 to i32, !dbg !2252
  %13 = or i32 %10, %12, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %13, metadata !2221, metadata !DIExpression()), !dbg !2248
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2254
  %15 = load i32, i32* %14, align 8, !dbg !2254, !tbaa !1377
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2255
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2256
  %18 = load i8*, i8** %17, align 8, !dbg !2256, !tbaa !1450
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2257
  %20 = load i8*, i8** %19, align 8, !dbg !2257, !tbaa !1453
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2258
  %22 = add i64 %21, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %22, metadata !2222, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %22, metadata !2236, metadata !DIExpression()) #26, !dbg !2260
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !2262
  call void @llvm.dbg.value(metadata i8* %23, metadata !2223, metadata !DIExpression()), !dbg !2248
  %24 = load i32, i32* %14, align 8, !dbg !2263, !tbaa !1377
  %25 = load i8*, i8** %17, align 8, !dbg !2264, !tbaa !1450
  %26 = load i8*, i8** %19, align 8, !dbg !2265, !tbaa !1453
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2266
  store i32 %8, i32* %7, align 4, !dbg !2267, !tbaa !771
  br i1 %11, label %29, label %28, !dbg !2268

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2269, !tbaa !1089
  br label %29, !dbg !2271

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2273 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2277, !tbaa !602
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2275, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 1, metadata !2276, metadata !DIExpression()), !dbg !2278
  %2 = load i32, i32* @nslots, align 4, !dbg !2279, !tbaa !771
  %3 = icmp sgt i32 %2, 1, !dbg !2282
  br i1 %3, label %4, label %12, !dbg !2283

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2282
  br label %6, !dbg !2283

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2276, metadata !DIExpression()), !dbg !2278
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2284
  %9 = load i8*, i8** %8, align 8, !dbg !2284, !tbaa !2285
  tail call void @free(i8* %9) #26, !dbg !2287
  %10 = add nuw nsw i64 %7, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %10, metadata !2276, metadata !DIExpression()), !dbg !2278
  %11 = icmp eq i64 %10, %5, !dbg !2282
  br i1 %11, label %12, label %6, !dbg !2283, !llvm.loop !2289

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2291
  %14 = load i8*, i8** %13, align 8, !dbg !2291, !tbaa !2285
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2293
  br i1 %15, label %17, label %16, !dbg !2294

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !2295
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2297, !tbaa !2298
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2299, !tbaa !2285
  br label %17, !dbg !2300

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2301
  br i1 %18, label %21, label %19, !dbg !2303

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2304
  tail call void @free(i8* %20) #26, !dbg !2306
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2307, !tbaa !602
  br label %21, !dbg !2308

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2309, !tbaa !771
  ret void, !dbg !2310
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2311 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* %1, metadata !2314, metadata !DIExpression()), !dbg !2315
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2316
  ret i8* %3, !dbg !2317
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2318 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2322, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8* %1, metadata !2323, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i64 %2, metadata !2324, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2325, metadata !DIExpression()), !dbg !2337
  %5 = tail call i32* @__errno_location() #30, !dbg !2338
  %6 = load i32, i32* %5, align 4, !dbg !2338, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %6, metadata !2326, metadata !DIExpression()), !dbg !2337
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2339, !tbaa !602
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2327, metadata !DIExpression()), !dbg !2337
  %8 = icmp slt i32 %0, 0, !dbg !2340
  br i1 %8, label %9, label %10, !dbg !2342

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2343
  unreachable, !dbg !2343

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2344, !tbaa !771
  %12 = icmp sgt i32 %11, %0, !dbg !2345
  br i1 %12, label %34, label %13, !dbg !2346

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2347
  call void @llvm.dbg.value(metadata i1 %14, metadata !2328, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2348
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2331, metadata !DIExpression()), !dbg !2348
  %15 = icmp eq i32 %0, 2147483647, !dbg !2349
  br i1 %15, label %16, label %17, !dbg !2351

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2352
  unreachable, !dbg !2352

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2353
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2353
  %20 = add nuw nsw i32 %0, 1, !dbg !2354
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2355
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2356
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2356
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2327, metadata !DIExpression()), !dbg !2337
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2357, !tbaa !602
  br i1 %14, label %25, label %26, !dbg !2358

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2359, !tbaa.struct !2361
  br label %26, !dbg !2362

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2363, !tbaa !771
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2364
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2365
  %31 = sub nsw i32 %20, %27, !dbg !2366
  %32 = sext i32 %31 to i64, !dbg !2367
  %33 = shl nsw i64 %32, 4, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %30, metadata !1764, metadata !DIExpression()) #26, !dbg !2369
  call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()) #26, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %33, metadata !1770, metadata !DIExpression()) #26, !dbg !2369
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2371
  store i32 %20, i32* @nslots, align 4, !dbg !2372, !tbaa !771
  br label %34, !dbg !2373

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2337
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2327, metadata !DIExpression()), !dbg !2337
  %36 = zext i32 %0 to i64, !dbg !2374
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2375
  %38 = load i64, i64* %37, align 8, !dbg !2375, !tbaa !2298
  call void @llvm.dbg.value(metadata i64 %38, metadata !2332, metadata !DIExpression()), !dbg !2376
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2377
  %40 = load i8*, i8** %39, align 8, !dbg !2377, !tbaa !2285
  call void @llvm.dbg.value(metadata i8* %40, metadata !2334, metadata !DIExpression()), !dbg !2376
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2378
  %42 = load i32, i32* %41, align 4, !dbg !2378, !tbaa !1428
  %43 = or i32 %42, 1, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %43, metadata !2335, metadata !DIExpression()), !dbg !2376
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2380
  %45 = load i32, i32* %44, align 8, !dbg !2380, !tbaa !1377
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2381
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2382
  %48 = load i8*, i8** %47, align 8, !dbg !2382, !tbaa !1450
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2383
  %50 = load i8*, i8** %49, align 8, !dbg !2383, !tbaa !1453
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %51, metadata !2336, metadata !DIExpression()), !dbg !2376
  %52 = icmp ugt i64 %38, %51, !dbg !2385
  br i1 %52, label %63, label %53, !dbg !2387

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %54, metadata !2332, metadata !DIExpression()), !dbg !2376
  store i64 %54, i64* %37, align 8, !dbg !2390, !tbaa !2298
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2391
  br i1 %55, label %57, label %56, !dbg !2393

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2394
  br label %57, !dbg !2394

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2236, metadata !DIExpression()) #26, !dbg !2395
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2397
  call void @llvm.dbg.value(metadata i8* %58, metadata !2334, metadata !DIExpression()), !dbg !2376
  store i8* %58, i8** %39, align 8, !dbg !2398, !tbaa !2285
  %59 = load i32, i32* %44, align 8, !dbg !2399, !tbaa !1377
  %60 = load i8*, i8** %47, align 8, !dbg !2400, !tbaa !1450
  %61 = load i8*, i8** %49, align 8, !dbg !2401, !tbaa !1453
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2402
  br label %63, !dbg !2403

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2376
  call void @llvm.dbg.value(metadata i8* %64, metadata !2334, metadata !DIExpression()), !dbg !2376
  store i32 %6, i32* %5, align 4, !dbg !2404, !tbaa !771
  ret i8* %64, !dbg !2405
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %1, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %2, metadata !2412, metadata !DIExpression()), !dbg !2413
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2414
  ret i8* %4, !dbg !2415
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2416 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 0, metadata !2313, metadata !DIExpression()) #26, !dbg !2420
  call void @llvm.dbg.value(metadata i8* %0, metadata !2314, metadata !DIExpression()) #26, !dbg !2420
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2422
  ret i8* %2, !dbg !2423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %1, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()) #26, !dbg !2431
  call void @llvm.dbg.value(metadata i8* %0, metadata !2411, metadata !DIExpression()) #26, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %1, metadata !2412, metadata !DIExpression()) #26, !dbg !2431
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2433
  ret i8* %3, !dbg !2434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2435 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2439, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i32 %1, metadata !2440, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* %2, metadata !2441, metadata !DIExpression()), !dbg !2443
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2444
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2444
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2442, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()) #26, !dbg !2456
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2455, metadata !DIExpression()) #26, !dbg !2458
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2458, !alias.scope !2446
  %6 = icmp eq i32 %1, 10, !dbg !2459
  br i1 %6, label %7, label %8, !dbg !2461

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2462, !noalias !2446
  unreachable, !dbg !2462

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2463
  store i32 %1, i32* %9, align 8, !dbg !2464, !tbaa !1377, !alias.scope !2446
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2465
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2466
  ret i8* %10, !dbg !2467
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2468 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2472, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %1, metadata !2473, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %2, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %3, metadata !2475, metadata !DIExpression()), !dbg !2477
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2478
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2478
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2476, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()) #26, !dbg !2484
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression()) #26, !dbg !2486
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2486, !alias.scope !2480
  %7 = icmp eq i32 %1, 10, !dbg !2487
  br i1 %7, label %8, label %9, !dbg !2488

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2489, !noalias !2480
  unreachable, !dbg !2489

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2490
  store i32 %1, i32* %10, align 8, !dbg !2491, !tbaa !1377, !alias.scope !2480
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2492
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2493
  ret i8* %11, !dbg !2494
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2495 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2499, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8* %1, metadata !2500, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()) #26, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %0, metadata !2440, metadata !DIExpression()) #26, !dbg !2502
  call void @llvm.dbg.value(metadata i8* %1, metadata !2441, metadata !DIExpression()) #26, !dbg !2502
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2504
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2504
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2442, metadata !DIExpression()) #26, !dbg !2505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2506) #26, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %0, metadata !2450, metadata !DIExpression()) #26, !dbg !2510
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2455, metadata !DIExpression()) #26, !dbg !2512
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2512, !alias.scope !2506
  %5 = icmp eq i32 %0, 10, !dbg !2513
  br i1 %5, label %6, label %7, !dbg !2514

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !2515, !noalias !2506
  unreachable, !dbg !2515

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2516
  store i32 %0, i32* %8, align 8, !dbg !2517, !tbaa !1377, !alias.scope !2506
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2518
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2519
  ret i8* %9, !dbg !2520
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2521 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2525, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %1, metadata !2526, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %2, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !2472, metadata !DIExpression()) #26, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %0, metadata !2473, metadata !DIExpression()) #26, !dbg !2529
  call void @llvm.dbg.value(metadata i8* %1, metadata !2474, metadata !DIExpression()) #26, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %2, metadata !2475, metadata !DIExpression()) #26, !dbg !2529
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2531
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2531
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2476, metadata !DIExpression()) #26, !dbg !2532
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2533) #26, !dbg !2536
  call void @llvm.dbg.value(metadata i32 %0, metadata !2450, metadata !DIExpression()) #26, !dbg !2537
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2455, metadata !DIExpression()) #26, !dbg !2539
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2539, !alias.scope !2533
  %6 = icmp eq i32 %0, 10, !dbg !2540
  br i1 %6, label %7, label %8, !dbg !2541

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2542, !noalias !2533
  unreachable, !dbg !2542

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2543
  store i32 %0, i32* %9, align 8, !dbg !2544, !tbaa !1377, !alias.scope !2533
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2545
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2546
  ret i8* %10, !dbg !2547
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2548 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2552, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i64 %1, metadata !2553, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 %2, metadata !2554, metadata !DIExpression()), !dbg !2556
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2557
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2557
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2555, metadata !DIExpression()), !dbg !2558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2559, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1395, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 %2, metadata !1396, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 1, metadata !1397, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 %2, metadata !1398, metadata !DIExpression()), !dbg !2561
  %6 = lshr i8 %2, 5, !dbg !2563
  %7 = zext i8 %6 to i64, !dbg !2563
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2564
  call void @llvm.dbg.value(metadata i32* %8, metadata !1399, metadata !DIExpression()), !dbg !2561
  %9 = and i8 %2, 31, !dbg !2565
  %10 = zext i8 %9 to i32, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %10, metadata !1401, metadata !DIExpression()), !dbg !2561
  %11 = load i32, i32* %8, align 4, !dbg !2566, !tbaa !771
  %12 = lshr i32 %11, %10, !dbg !2567
  %13 = and i32 %12, 1, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %13, metadata !1402, metadata !DIExpression()), !dbg !2561
  %14 = xor i32 %13, 1, !dbg !2569
  %15 = shl i32 %14, %10, !dbg !2570
  %16 = xor i32 %15, %11, !dbg !2571
  store i32 %16, i32* %8, align 4, !dbg !2571, !tbaa !771
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2572
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2573
  ret i8* %17, !dbg !2574
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2575 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %1, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %0, metadata !2552, metadata !DIExpression()) #26, !dbg !2582
  call void @llvm.dbg.value(metadata i64 -1, metadata !2553, metadata !DIExpression()) #26, !dbg !2582
  call void @llvm.dbg.value(metadata i8 %1, metadata !2554, metadata !DIExpression()) #26, !dbg !2582
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2584
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2584
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2555, metadata !DIExpression()) #26, !dbg !2585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2586, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1395, metadata !DIExpression()) #26, !dbg !2587
  call void @llvm.dbg.value(metadata i8 %1, metadata !1396, metadata !DIExpression()) #26, !dbg !2587
  call void @llvm.dbg.value(metadata i32 1, metadata !1397, metadata !DIExpression()) #26, !dbg !2587
  call void @llvm.dbg.value(metadata i8 %1, metadata !1398, metadata !DIExpression()) #26, !dbg !2587
  %5 = lshr i8 %1, 5, !dbg !2589
  %6 = zext i8 %5 to i64, !dbg !2589
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2590
  call void @llvm.dbg.value(metadata i32* %7, metadata !1399, metadata !DIExpression()) #26, !dbg !2587
  %8 = and i8 %1, 31, !dbg !2591
  %9 = zext i8 %8 to i32, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %9, metadata !1401, metadata !DIExpression()) #26, !dbg !2587
  %10 = load i32, i32* %7, align 4, !dbg !2592, !tbaa !771
  %11 = lshr i32 %10, %9, !dbg !2593
  %12 = and i32 %11, 1, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %12, metadata !1402, metadata !DIExpression()) #26, !dbg !2587
  %13 = xor i32 %12, 1, !dbg !2595
  %14 = shl i32 %13, %9, !dbg !2596
  %15 = xor i32 %14, %10, !dbg !2597
  store i32 %15, i32* %7, align 4, !dbg !2597, !tbaa !771
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2598
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2599
  ret i8* %16, !dbg !2600
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2601 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2603, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8* %0, metadata !2579, metadata !DIExpression()) #26, !dbg !2605
  call void @llvm.dbg.value(metadata i8 58, metadata !2580, metadata !DIExpression()) #26, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %0, metadata !2552, metadata !DIExpression()) #26, !dbg !2607
  call void @llvm.dbg.value(metadata i64 -1, metadata !2553, metadata !DIExpression()) #26, !dbg !2607
  call void @llvm.dbg.value(metadata i8 58, metadata !2554, metadata !DIExpression()) #26, !dbg !2607
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2609
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2609
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2555, metadata !DIExpression()) #26, !dbg !2610
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2611, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1395, metadata !DIExpression()) #26, !dbg !2612
  call void @llvm.dbg.value(metadata i8 58, metadata !1396, metadata !DIExpression()) #26, !dbg !2612
  call void @llvm.dbg.value(metadata i32 1, metadata !1397, metadata !DIExpression()) #26, !dbg !2612
  call void @llvm.dbg.value(metadata i8 58, metadata !1398, metadata !DIExpression()) #26, !dbg !2612
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2614
  call void @llvm.dbg.value(metadata i32* %4, metadata !1399, metadata !DIExpression()) #26, !dbg !2612
  call void @llvm.dbg.value(metadata i32 26, metadata !1401, metadata !DIExpression()) #26, !dbg !2612
  %5 = load i32, i32* %4, align 4, !dbg !2615, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %5, metadata !1402, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2612
  %6 = or i32 %5, 67108864, !dbg !2616
  store i32 %6, i32* %4, align 4, !dbg !2616, !tbaa !771
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2617
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2618
  ret i8* %7, !dbg !2619
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2620 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2622, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %1, metadata !2623, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %0, metadata !2552, metadata !DIExpression()) #26, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %1, metadata !2553, metadata !DIExpression()) #26, !dbg !2625
  call void @llvm.dbg.value(metadata i8 58, metadata !2554, metadata !DIExpression()) #26, !dbg !2625
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2627
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2627
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2555, metadata !DIExpression()) #26, !dbg !2628
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2629, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1395, metadata !DIExpression()) #26, !dbg !2630
  call void @llvm.dbg.value(metadata i8 58, metadata !1396, metadata !DIExpression()) #26, !dbg !2630
  call void @llvm.dbg.value(metadata i32 1, metadata !1397, metadata !DIExpression()) #26, !dbg !2630
  call void @llvm.dbg.value(metadata i8 58, metadata !1398, metadata !DIExpression()) #26, !dbg !2630
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2632
  call void @llvm.dbg.value(metadata i32* %5, metadata !1399, metadata !DIExpression()) #26, !dbg !2630
  call void @llvm.dbg.value(metadata i32 26, metadata !1401, metadata !DIExpression()) #26, !dbg !2630
  %6 = load i32, i32* %5, align 4, !dbg !2633, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %6, metadata !1402, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2630
  %7 = or i32 %6, 67108864, !dbg !2634
  store i32 %7, i32* %5, align 4, !dbg !2634, !tbaa !771
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2635
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2636
  ret i8* %8, !dbg !2637
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2638 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2455, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %0, metadata !2640, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %1, metadata !2641, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8* %2, metadata !2642, metadata !DIExpression()), !dbg !2646
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2647
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2647
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2643, metadata !DIExpression()), !dbg !2648
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2649
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2649
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650), !dbg !2649
  call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()) #26, !dbg !2653
  call void @llvm.dbg.value(metadata i32 0, metadata !2455, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2653
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2644, !alias.scope !2650
  %8 = icmp eq i32 %1, 10, !dbg !2654
  br i1 %8, label %9, label %10, !dbg !2655

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2656, !noalias !2650
  unreachable, !dbg !2656

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2455, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2653
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2649
  store i32 %1, i32* %11, align 8, !dbg !2649, !tbaa.struct !2560
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2649
  %13 = bitcast i32* %12 to i8*, !dbg !2649
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2649, !tbaa.struct !2657
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1395, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8 58, metadata !1396, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32 1, metadata !1397, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8 58, metadata !1398, metadata !DIExpression()), !dbg !2658
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2660
  call void @llvm.dbg.value(metadata i32* %14, metadata !1399, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32 26, metadata !1401, metadata !DIExpression()), !dbg !2658
  %15 = load i32, i32* %14, align 4, !dbg !2661, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %15, metadata !1402, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2658
  %16 = or i32 %15, 67108864, !dbg !2662
  store i32 %16, i32* %14, align 4, !dbg !2662, !tbaa !771
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2663
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2664
  ret i8* %17, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2666 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2670, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %1, metadata !2671, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %2, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %3, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %0, metadata !2675, metadata !DIExpression()) #26, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %1, metadata !2680, metadata !DIExpression()) #26, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %2, metadata !2681, metadata !DIExpression()) #26, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %3, metadata !2682, metadata !DIExpression()) #26, !dbg !2685
  call void @llvm.dbg.value(metadata i64 -1, metadata !2683, metadata !DIExpression()) #26, !dbg !2685
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2687
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2687
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2684, metadata !DIExpression()) #26, !dbg !2688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2689, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1435, metadata !DIExpression()) #26, !dbg !2690
  call void @llvm.dbg.value(metadata i8* %1, metadata !1436, metadata !DIExpression()) #26, !dbg !2690
  call void @llvm.dbg.value(metadata i8* %2, metadata !1437, metadata !DIExpression()) #26, !dbg !2690
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1435, metadata !DIExpression()) #26, !dbg !2690
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2692
  store i32 10, i32* %7, align 8, !dbg !2693, !tbaa !1377
  %8 = icmp ne i8* %1, null, !dbg !2694
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2695
  br i1 %10, label %12, label %11, !dbg !2695

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2696
  unreachable, !dbg !2696

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2697
  store i8* %1, i8** %13, align 8, !dbg !2698, !tbaa !1450
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2699
  store i8* %2, i8** %14, align 8, !dbg !2700, !tbaa !1453
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !2701
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2702
  ret i8* %15, !dbg !2703
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2676 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2675, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %1, metadata !2680, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %2, metadata !2681, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %3, metadata !2682, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %4, metadata !2683, metadata !DIExpression()), !dbg !2704
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2705
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2705
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2684, metadata !DIExpression()), !dbg !2706
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2707, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1435, metadata !DIExpression()) #26, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %1, metadata !1436, metadata !DIExpression()) #26, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %2, metadata !1437, metadata !DIExpression()) #26, !dbg !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1435, metadata !DIExpression()) #26, !dbg !2708
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2710
  store i32 10, i32* %8, align 8, !dbg !2711, !tbaa !1377
  %9 = icmp ne i8* %1, null, !dbg !2712
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2713
  br i1 %11, label %13, label %12, !dbg !2713

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !2714
  unreachable, !dbg !2714

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2715
  store i8* %1, i8** %14, align 8, !dbg !2716, !tbaa !1450
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2717
  store i8* %2, i8** %15, align 8, !dbg !2718, !tbaa !1453
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2719
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2720
  ret i8* %16, !dbg !2721
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2722 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2726, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8* %1, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8* %2, metadata !2728, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32 0, metadata !2670, metadata !DIExpression()) #26, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()) #26, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %1, metadata !2672, metadata !DIExpression()) #26, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %2, metadata !2673, metadata !DIExpression()) #26, !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2675, metadata !DIExpression()) #26, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %0, metadata !2680, metadata !DIExpression()) #26, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %1, metadata !2681, metadata !DIExpression()) #26, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %2, metadata !2682, metadata !DIExpression()) #26, !dbg !2732
  call void @llvm.dbg.value(metadata i64 -1, metadata !2683, metadata !DIExpression()) #26, !dbg !2732
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2734
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2734
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2684, metadata !DIExpression()) #26, !dbg !2735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2736, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1435, metadata !DIExpression()) #26, !dbg !2737
  call void @llvm.dbg.value(metadata i8* %0, metadata !1436, metadata !DIExpression()) #26, !dbg !2737
  call void @llvm.dbg.value(metadata i8* %1, metadata !1437, metadata !DIExpression()) #26, !dbg !2737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1435, metadata !DIExpression()) #26, !dbg !2737
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2739
  store i32 10, i32* %6, align 8, !dbg !2740, !tbaa !1377
  %7 = icmp ne i8* %0, null, !dbg !2741
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2742
  br i1 %9, label %11, label %10, !dbg !2742

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !2743
  unreachable, !dbg !2743

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2744
  store i8* %0, i8** %12, align 8, !dbg !2745, !tbaa !1450
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2746
  store i8* %1, i8** %13, align 8, !dbg !2747, !tbaa !1453
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !2748
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2749
  ret i8* %14, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2751 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2755, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %1, metadata !2756, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %2, metadata !2757, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %3, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 0, metadata !2675, metadata !DIExpression()) #26, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %0, metadata !2680, metadata !DIExpression()) #26, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %1, metadata !2681, metadata !DIExpression()) #26, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %2, metadata !2682, metadata !DIExpression()) #26, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %3, metadata !2683, metadata !DIExpression()) #26, !dbg !2760
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2762
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2762
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2684, metadata !DIExpression()) #26, !dbg !2763
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2764, !tbaa.struct !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1435, metadata !DIExpression()) #26, !dbg !2765
  call void @llvm.dbg.value(metadata i8* %0, metadata !1436, metadata !DIExpression()) #26, !dbg !2765
  call void @llvm.dbg.value(metadata i8* %1, metadata !1437, metadata !DIExpression()) #26, !dbg !2765
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1435, metadata !DIExpression()) #26, !dbg !2765
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2767
  store i32 10, i32* %7, align 8, !dbg !2768, !tbaa !1377
  %8 = icmp ne i8* %0, null, !dbg !2769
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2770
  br i1 %10, label %12, label %11, !dbg !2770

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2771
  unreachable, !dbg !2771

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2772
  store i8* %0, i8** %13, align 8, !dbg !2773, !tbaa !1450
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2774
  store i8* %1, i8** %14, align 8, !dbg !2775, !tbaa !1453
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !2776
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2777
  ret i8* %15, !dbg !2778
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2779 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %1, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %2, metadata !2785, metadata !DIExpression()), !dbg !2786
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2787
  ret i8* %4, !dbg !2788
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2789 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %1, metadata !2794, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 0, metadata !2783, metadata !DIExpression()) #26, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()) #26, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %1, metadata !2785, metadata !DIExpression()) #26, !dbg !2796
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2798
  ret i8* %3, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2800 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2804, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %1, metadata !2805, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %0, metadata !2783, metadata !DIExpression()) #26, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %1, metadata !2784, metadata !DIExpression()) #26, !dbg !2807
  call void @llvm.dbg.value(metadata i64 -1, metadata !2785, metadata !DIExpression()) #26, !dbg !2807
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2809
  ret i8* %3, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2811 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 0, metadata !2804, metadata !DIExpression()) #26, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %0, metadata !2805, metadata !DIExpression()) #26, !dbg !2817
  call void @llvm.dbg.value(metadata i32 0, metadata !2783, metadata !DIExpression()) #26, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()) #26, !dbg !2819
  call void @llvm.dbg.value(metadata i64 -1, metadata !2785, metadata !DIExpression()) #26, !dbg !2819
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2821
  ret i8* %2, !dbg !2822
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local %struct.timespec* @get_root_dev_ino(%struct.timespec* %0) local_unnamed_addr #21 !dbg !2823 {
  %2 = alloca %struct.stat, align 16
  call void @llvm.dbg.value(metadata %struct.timespec* %0, metadata !2832, metadata !DIExpression()), !dbg !2855
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !2856
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #26, !dbg !2856
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !2833, metadata !DIExpression()), !dbg !2857
  %4 = call i32 @lstat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), %struct.stat* nonnull %2) #26, !dbg !2858
  %5 = icmp eq i32 %4, 0, !dbg !2858
  br i1 %5, label %6, label %11, !dbg !2860

6:                                                ; preds = %1
  %7 = bitcast %struct.stat* %2 to <2 x i64>*, !dbg !2861
  %8 = load <2 x i64>, <2 x i64>* %7, align 16, !dbg !2861, !tbaa !1089
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !2861
  %10 = bitcast %struct.timespec* %0 to <2 x i64>*, !dbg !2862
  store <2 x i64> %9, <2 x i64>* %10, align 8, !dbg !2862, !tbaa !1089
  br label %11, !dbg !2863

11:                                               ; preds = %1, %6
  %12 = phi %struct.timespec* [ %0, %6 ], [ null, %1 ], !dbg !2855
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #26, !dbg !2864
  ret %struct.timespec* %12, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2865 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2905, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8* %1, metadata !2906, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8* %2, metadata !2907, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8* %3, metadata !2908, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8** %4, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i64 %5, metadata !2910, metadata !DIExpression()), !dbg !2911
  %7 = icmp eq i8* %1, null, !dbg !2912
  br i1 %7, label %10, label %8, !dbg !2914

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !2915
  br label %12, !dbg !2915

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !2916
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.91, i64 0, i64 0), i32 5) #26, !dbg !2917
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !2917
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.92, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2918
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.93, i64 0, i64 0), i32 5) #26, !dbg !2919
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.94, i64 0, i64 0)) #26, !dbg !2919
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.92, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2920
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
  ], !dbg !2921

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.95, i64 0, i64 0), i32 5) #26, !dbg !2922
  %21 = load i8*, i8** %4, align 8, !dbg !2922, !tbaa !602
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !2922
  br label %147, !dbg !2924

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.96, i64 0, i64 0), i32 5) #26, !dbg !2925
  %25 = load i8*, i8** %4, align 8, !dbg !2925, !tbaa !602
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2925
  %27 = load i8*, i8** %26, align 8, !dbg !2925, !tbaa !602
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !2925
  br label %147, !dbg !2926

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.97, i64 0, i64 0), i32 5) #26, !dbg !2927
  %31 = load i8*, i8** %4, align 8, !dbg !2927, !tbaa !602
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2927
  %33 = load i8*, i8** %32, align 8, !dbg !2927, !tbaa !602
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2927
  %35 = load i8*, i8** %34, align 8, !dbg !2927, !tbaa !602
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !2927
  br label %147, !dbg !2928

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.98, i64 0, i64 0), i32 5) #26, !dbg !2929
  %39 = load i8*, i8** %4, align 8, !dbg !2929, !tbaa !602
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2929
  %41 = load i8*, i8** %40, align 8, !dbg !2929, !tbaa !602
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2929
  %43 = load i8*, i8** %42, align 8, !dbg !2929, !tbaa !602
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2929
  %45 = load i8*, i8** %44, align 8, !dbg !2929, !tbaa !602
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !2929
  br label %147, !dbg !2930

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.99, i64 0, i64 0), i32 5) #26, !dbg !2931
  %49 = load i8*, i8** %4, align 8, !dbg !2931, !tbaa !602
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2931
  %51 = load i8*, i8** %50, align 8, !dbg !2931, !tbaa !602
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2931
  %53 = load i8*, i8** %52, align 8, !dbg !2931, !tbaa !602
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2931
  %55 = load i8*, i8** %54, align 8, !dbg !2931, !tbaa !602
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2931
  %57 = load i8*, i8** %56, align 8, !dbg !2931, !tbaa !602
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !2931
  br label %147, !dbg !2932

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.100, i64 0, i64 0), i32 5) #26, !dbg !2933
  %61 = load i8*, i8** %4, align 8, !dbg !2933, !tbaa !602
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2933
  %63 = load i8*, i8** %62, align 8, !dbg !2933, !tbaa !602
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2933
  %65 = load i8*, i8** %64, align 8, !dbg !2933, !tbaa !602
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2933
  %67 = load i8*, i8** %66, align 8, !dbg !2933, !tbaa !602
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2933
  %69 = load i8*, i8** %68, align 8, !dbg !2933, !tbaa !602
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2933
  %71 = load i8*, i8** %70, align 8, !dbg !2933, !tbaa !602
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !2933
  br label %147, !dbg !2934

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.101, i64 0, i64 0), i32 5) #26, !dbg !2935
  %75 = load i8*, i8** %4, align 8, !dbg !2935, !tbaa !602
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2935
  %77 = load i8*, i8** %76, align 8, !dbg !2935, !tbaa !602
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2935
  %79 = load i8*, i8** %78, align 8, !dbg !2935, !tbaa !602
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2935
  %81 = load i8*, i8** %80, align 8, !dbg !2935, !tbaa !602
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2935
  %83 = load i8*, i8** %82, align 8, !dbg !2935, !tbaa !602
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2935
  %85 = load i8*, i8** %84, align 8, !dbg !2935, !tbaa !602
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2935
  %87 = load i8*, i8** %86, align 8, !dbg !2935, !tbaa !602
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !2935
  br label %147, !dbg !2936

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.102, i64 0, i64 0), i32 5) #26, !dbg !2937
  %91 = load i8*, i8** %4, align 8, !dbg !2937, !tbaa !602
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2937
  %93 = load i8*, i8** %92, align 8, !dbg !2937, !tbaa !602
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2937
  %95 = load i8*, i8** %94, align 8, !dbg !2937, !tbaa !602
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2937
  %97 = load i8*, i8** %96, align 8, !dbg !2937, !tbaa !602
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2937
  %99 = load i8*, i8** %98, align 8, !dbg !2937, !tbaa !602
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2937
  %101 = load i8*, i8** %100, align 8, !dbg !2937, !tbaa !602
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2937
  %103 = load i8*, i8** %102, align 8, !dbg !2937, !tbaa !602
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2937
  %105 = load i8*, i8** %104, align 8, !dbg !2937, !tbaa !602
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !2937
  br label %147, !dbg !2938

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #26, !dbg !2939
  %109 = load i8*, i8** %4, align 8, !dbg !2939, !tbaa !602
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2939
  %111 = load i8*, i8** %110, align 8, !dbg !2939, !tbaa !602
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2939
  %113 = load i8*, i8** %112, align 8, !dbg !2939, !tbaa !602
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2939
  %115 = load i8*, i8** %114, align 8, !dbg !2939, !tbaa !602
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2939
  %117 = load i8*, i8** %116, align 8, !dbg !2939, !tbaa !602
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2939
  %119 = load i8*, i8** %118, align 8, !dbg !2939, !tbaa !602
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2939
  %121 = load i8*, i8** %120, align 8, !dbg !2939, !tbaa !602
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2939
  %123 = load i8*, i8** %122, align 8, !dbg !2939, !tbaa !602
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2939
  %125 = load i8*, i8** %124, align 8, !dbg !2939, !tbaa !602
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !2939
  br label %147, !dbg !2940

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.104, i64 0, i64 0), i32 5) #26, !dbg !2941
  %129 = load i8*, i8** %4, align 8, !dbg !2941, !tbaa !602
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2941
  %131 = load i8*, i8** %130, align 8, !dbg !2941, !tbaa !602
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2941
  %133 = load i8*, i8** %132, align 8, !dbg !2941, !tbaa !602
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2941
  %135 = load i8*, i8** %134, align 8, !dbg !2941, !tbaa !602
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2941
  %137 = load i8*, i8** %136, align 8, !dbg !2941, !tbaa !602
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2941
  %139 = load i8*, i8** %138, align 8, !dbg !2941, !tbaa !602
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2941
  %141 = load i8*, i8** %140, align 8, !dbg !2941, !tbaa !602
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2941
  %143 = load i8*, i8** %142, align 8, !dbg !2941, !tbaa !602
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2941
  %145 = load i8*, i8** %144, align 8, !dbg !2941, !tbaa !602
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !2941
  br label %147, !dbg !2942

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2944 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2948, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8* %1, metadata !2949, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8* %2, metadata !2950, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8* %3, metadata !2951, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8** %4, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 0, metadata !2953, metadata !DIExpression()), !dbg !2954
  br label %6, !dbg !2955

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2957
  call void @llvm.dbg.value(metadata i64 %7, metadata !2953, metadata !DIExpression()), !dbg !2954
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2958
  %9 = load i8*, i8** %8, align 8, !dbg !2958, !tbaa !602
  %10 = icmp eq i8* %9, null, !dbg !2960
  %11 = add i64 %7, 1, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %11, metadata !2953, metadata !DIExpression()), !dbg !2954
  br i1 %10, label %12, label %6, !dbg !2960, !llvm.loop !2962

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2964
  ret void, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2966 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2977, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* %1, metadata !2978, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* %2, metadata !2979, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* %3, metadata !2980, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2981, metadata !DIExpression()), !dbg !2985
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2986
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2986
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2983, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 0, metadata !2982, metadata !DIExpression()), !dbg !2985
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2982, metadata !DIExpression()), !dbg !2985
  %11 = load i32, i32* %8, align 8, !dbg !2988
  %12 = icmp ult i32 %11, 41, !dbg !2988
  br i1 %12, label %13, label %18, !dbg !2988

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2988
  %15 = zext i32 %11 to i64, !dbg !2988
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2988
  %17 = add nuw nsw i32 %11, 8, !dbg !2988
  store i32 %17, i32* %8, align 8, !dbg !2988
  br label %21, !dbg !2988

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2988
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2988
  store i8* %20, i8** %9, align 8, !dbg !2988
  br label %21, !dbg !2988

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2988
  %25 = load i8*, i8** %24, align 8, !dbg !2988
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2991
  store i8* %25, i8** %26, align 16, !dbg !2992, !tbaa !602
  %27 = icmp eq i8* %25, null, !dbg !2993
  br i1 %27, label %30, label %28, !dbg !2994

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2982, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 1, metadata !2982, metadata !DIExpression()), !dbg !2985
  %29 = icmp ult i32 %22, 41, !dbg !2988
  br i1 %29, label %35, label %32, !dbg !2988

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2995
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2996
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2997
  ret void, !dbg !2997

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2988
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2988
  store i8* %34, i8** %9, align 8, !dbg !2988
  br label %40, !dbg !2988

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2988
  %37 = zext i32 %22 to i64, !dbg !2988
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2988
  %39 = add nuw nsw i32 %22, 8, !dbg !2988
  store i32 %39, i32* %8, align 8, !dbg !2988
  br label %40, !dbg !2988

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2988
  %44 = load i8*, i8** %43, align 8, !dbg !2988
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2991
  store i8* %44, i8** %45, align 8, !dbg !2992, !tbaa !602
  %46 = icmp eq i8* %44, null, !dbg !2993
  br i1 %46, label %30, label %47, !dbg !2994

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2982, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 2, metadata !2982, metadata !DIExpression()), !dbg !2985
  %48 = icmp ult i32 %41, 41, !dbg !2988
  br i1 %48, label %52, label %49, !dbg !2988

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2988
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2988
  store i8* %51, i8** %9, align 8, !dbg !2988
  br label %57, !dbg !2988

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2988
  %54 = zext i32 %41 to i64, !dbg !2988
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2988
  %56 = add nuw nsw i32 %41, 8, !dbg !2988
  store i32 %56, i32* %8, align 8, !dbg !2988
  br label %57, !dbg !2988

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2988
  %61 = load i8*, i8** %60, align 8, !dbg !2988
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2991
  store i8* %61, i8** %62, align 16, !dbg !2992, !tbaa !602
  %63 = icmp eq i8* %61, null, !dbg !2993
  br i1 %63, label %30, label %64, !dbg !2994

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2982, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 3, metadata !2982, metadata !DIExpression()), !dbg !2985
  %65 = icmp ult i32 %58, 41, !dbg !2988
  br i1 %65, label %69, label %66, !dbg !2988

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2988
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2988
  store i8* %68, i8** %9, align 8, !dbg !2988
  br label %74, !dbg !2988

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2988
  %71 = zext i32 %58 to i64, !dbg !2988
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2988
  %73 = add nuw nsw i32 %58, 8, !dbg !2988
  store i32 %73, i32* %8, align 8, !dbg !2988
  br label %74, !dbg !2988

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2988
  %78 = load i8*, i8** %77, align 8, !dbg !2988
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2991
  store i8* %78, i8** %79, align 8, !dbg !2992, !tbaa !602
  %80 = icmp eq i8* %78, null, !dbg !2993
  br i1 %80, label %30, label %81, !dbg !2994

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2982, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 4, metadata !2982, metadata !DIExpression()), !dbg !2985
  %82 = icmp ult i32 %75, 41, !dbg !2988
  br i1 %82, label %86, label %83, !dbg !2988

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2988
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2988
  store i8* %85, i8** %9, align 8, !dbg !2988
  br label %91, !dbg !2988

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2988
  %88 = zext i32 %75 to i64, !dbg !2988
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2988
  %90 = add nuw nsw i32 %75, 8, !dbg !2988
  store i32 %90, i32* %8, align 8, !dbg !2988
  br label %91, !dbg !2988

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2988
  %95 = load i8*, i8** %94, align 8, !dbg !2988
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2991
  store i8* %95, i8** %96, align 16, !dbg !2992, !tbaa !602
  %97 = icmp eq i8* %95, null, !dbg !2993
  br i1 %97, label %30, label %98, !dbg !2994

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2982, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 5, metadata !2982, metadata !DIExpression()), !dbg !2985
  %99 = icmp ult i32 %92, 41, !dbg !2988
  br i1 %99, label %103, label %100, !dbg !2988

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2988
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2988
  store i8* %102, i8** %9, align 8, !dbg !2988
  br label %108, !dbg !2988

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2988
  %105 = zext i32 %92 to i64, !dbg !2988
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2988
  %107 = add nuw nsw i32 %92, 8, !dbg !2988
  store i32 %107, i32* %8, align 8, !dbg !2988
  br label %108, !dbg !2988

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2988
  %111 = load i8*, i8** %110, align 8, !dbg !2988
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2991
  store i8* %111, i8** %112, align 8, !dbg !2992, !tbaa !602
  %113 = icmp eq i8* %111, null, !dbg !2993
  br i1 %113, label %30, label %114, !dbg !2994

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2982, metadata !DIExpression()), !dbg !2985
  %115 = load i8*, i8** %9, align 8, !dbg !2988
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2988
  store i8* %116, i8** %9, align 8, !dbg !2988
  %117 = bitcast i8* %115 to i8**, !dbg !2988
  %118 = load i8*, i8** %117, align 8, !dbg !2988
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2991
  store i8* %118, i8** %119, align 16, !dbg !2992, !tbaa !602
  %120 = icmp eq i8* %118, null, !dbg !2993
  br i1 %120, label %30, label %121, !dbg !2994

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2982, metadata !DIExpression()), !dbg !2985
  %122 = load i8*, i8** %9, align 8, !dbg !2988
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2988
  store i8* %123, i8** %9, align 8, !dbg !2988
  %124 = bitcast i8* %122 to i8**, !dbg !2988
  %125 = load i8*, i8** %124, align 8, !dbg !2988
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2991
  store i8* %125, i8** %126, align 8, !dbg !2992, !tbaa !602
  %127 = icmp eq i8* %125, null, !dbg !2993
  br i1 %127, label %30, label %128, !dbg !2994

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2982, metadata !DIExpression()), !dbg !2985
  %129 = load i8*, i8** %9, align 8, !dbg !2988
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2988
  store i8* %130, i8** %9, align 8, !dbg !2988
  %131 = bitcast i8* %129 to i8**, !dbg !2988
  %132 = load i8*, i8** %131, align 8, !dbg !2988
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2991
  store i8* %132, i8** %133, align 16, !dbg !2992, !tbaa !602
  %134 = icmp eq i8* %132, null, !dbg !2993
  br i1 %134, label %30, label %135, !dbg !2994

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2982, metadata !DIExpression()), !dbg !2985
  %136 = load i8*, i8** %9, align 8, !dbg !2988
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2988
  store i8* %137, i8** %9, align 8, !dbg !2988
  %138 = bitcast i8* %136 to i8**, !dbg !2988
  %139 = load i8*, i8** %138, align 8, !dbg !2988
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2991
  store i8* %139, i8** %140, align 8, !dbg !2992, !tbaa !602
  %141 = icmp eq i8* %139, null, !dbg !2993
  %142 = select i1 %141, i64 9, i64 10, !dbg !2994
  br label %30, !dbg !2994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2998 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3002, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %1, metadata !3003, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %2, metadata !3004, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %3, metadata !3005, metadata !DIExpression()), !dbg !3012
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3013
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3013
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3006, metadata !DIExpression()), !dbg !3014
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3015
  call void @llvm.va_start(i8* nonnull %6), !dbg !3015
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3016
  call void @llvm.va_end(i8* nonnull %6), !dbg !3017
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3018
  ret void, !dbg !3018
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3019 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3020, !tbaa !602
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.92, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3020
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.107, i64 0, i64 0), i32 5) #26, !dbg !3021
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.108, i64 0, i64 0)) #26, !dbg !3021
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.109, i64 0, i64 0), i32 5) #26, !dbg !3022
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.110, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.111, i64 0, i64 0)) #26, !dbg !3022
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.112, i64 0, i64 0), i32 5) #26, !dbg !3023
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.113, i64 0, i64 0)) #26, !dbg !3023
  ret void, !dbg !3024
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !3025 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3027, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %1, metadata !3028, metadata !DIExpression()), !dbg !3029
  %3 = udiv i64 9223372036854775807, %1, !dbg !3030
  %4 = icmp ult i64 %3, %0, !dbg !3030
  br i1 %4, label %5, label %6, !dbg !3032

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3033
  unreachable, !dbg !3033

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %7, metadata !3035, metadata !DIExpression()) #26, !dbg !3041
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !3043
  call void @llvm.dbg.value(metadata i8* %8, metadata !3040, metadata !DIExpression()) #26, !dbg !3041
  %9 = icmp eq i8* %8, null, !dbg !3044
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3046
  br i1 %11, label %12, label %13, !dbg !3046

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !3047
  unreachable, !dbg !3047

13:                                               ; preds = %6
  ret i8* %8, !dbg !3048
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3036 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3035, metadata !DIExpression()), !dbg !3049
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %2, metadata !3040, metadata !DIExpression()), !dbg !3049
  %3 = icmp eq i8* %2, null, !dbg !3051
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3052
  br i1 %5, label %6, label %7, !dbg !3052

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3053
  unreachable, !dbg !3053

7:                                                ; preds = %1
  ret i8* %2, !dbg !3054
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !3055 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3059, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %2, metadata !3061, metadata !DIExpression()), !dbg !3062
  %4 = udiv i64 9223372036854775807, %2, !dbg !3063
  %5 = icmp ult i64 %4, %1, !dbg !3063
  br i1 %5, label %6, label %7, !dbg !3065

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !3066
  unreachable, !dbg !3066

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3067
  call void @llvm.dbg.value(metadata i8* %0, metadata !3068, metadata !DIExpression()) #26, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %8, metadata !3073, metadata !DIExpression()) #26, !dbg !3074
  %9 = icmp eq i64 %8, 0, !dbg !3076
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3078
  br i1 %11, label %12, label %13, !dbg !3078

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !3079
  br label %19, !dbg !3081

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !3082
  call void @llvm.dbg.value(metadata i8* %14, metadata !3068, metadata !DIExpression()) #26, !dbg !3074
  %15 = icmp eq i8* %14, null, !dbg !3083
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3085
  br i1 %17, label %18, label %19, !dbg !3085

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3086
  unreachable, !dbg !3086

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3074
  ret i8* %20, !dbg !3087
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3069 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3068, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3088
  %3 = icmp eq i64 %1, 0, !dbg !3089
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3090
  br i1 %5, label %6, label %7, !dbg !3090

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !3091
  br label %13, !dbg !3092

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !3093
  call void @llvm.dbg.value(metadata i8* %8, metadata !3068, metadata !DIExpression()), !dbg !3088
  %9 = icmp eq i8* %8, null, !dbg !3094
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3095
  br i1 %11, label %12, label %13, !dbg !3095

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3096
  unreachable, !dbg !3096

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3088
  ret i8* %14, !dbg !3097
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !163 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !168, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64* %1, metadata !169, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %2, metadata !170, metadata !DIExpression()), !dbg !3098
  %4 = load i64, i64* %1, align 8, !dbg !3099, !tbaa !1089
  call void @llvm.dbg.value(metadata i64 %4, metadata !171, metadata !DIExpression()), !dbg !3098
  %5 = icmp eq i8* %0, null, !dbg !3100
  br i1 %5, label %6, label %20, !dbg !3102

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3103
  br i1 %7, label %8, label %13, !dbg !3106

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %9, metadata !171, metadata !DIExpression()), !dbg !3098
  %10 = icmp ugt i64 %2, 128, !dbg !3109
  %11 = zext i1 %10 to i64, !dbg !3109
  %12 = add nuw nsw i64 %9, %11, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %12, metadata !171, metadata !DIExpression()), !dbg !3098
  br label %13, !dbg !3111

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3098
  call void @llvm.dbg.value(metadata i64 %14, metadata !171, metadata !DIExpression()), !dbg !3098
  %15 = udiv i64 9223372036854775807, %2, !dbg !3112
  %16 = icmp ult i64 %15, %14, !dbg !3112
  br i1 %16, label %19, label %17, !dbg !3114

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !171, metadata !DIExpression()), !dbg !3098
  store i64 %14, i64* %1, align 8, !dbg !3115, !tbaa !1089
  %18 = mul i64 %14, %2, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %0, metadata !3068, metadata !DIExpression()) #26, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %28, metadata !3073, metadata !DIExpression()) #26, !dbg !3117
  br label %31, !dbg !3119

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3120
  unreachable, !dbg !3120

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3121
  %22 = icmp ugt i64 %21, %4, !dbg !3124
  br i1 %22, label %24, label %23, !dbg !3125

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !3126
  unreachable, !dbg !3126

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3127
  %26 = add nuw i64 %4, 1, !dbg !3128
  %27 = add i64 %26, %25, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %27, metadata !171, metadata !DIExpression()), !dbg !3098
  store i64 %27, i64* %1, align 8, !dbg !3115, !tbaa !1089
  %28 = mul i64 %27, %2, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %0, metadata !3068, metadata !DIExpression()) #26, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %28, metadata !3073, metadata !DIExpression()) #26, !dbg !3117
  %29 = icmp eq i64 %28, 0, !dbg !3130
  br i1 %29, label %30, label %31, !dbg !3119

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !3131
  br label %38, !dbg !3132

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !3133
  call void @llvm.dbg.value(metadata i8* %33, metadata !3068, metadata !DIExpression()) #26, !dbg !3117
  %34 = icmp eq i8* %33, null, !dbg !3134
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3135
  br i1 %36, label %37, label %38, !dbg !3135

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !3136
  unreachable, !dbg !3136

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3117
  ret i8* %39, !dbg !3137
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !3138 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %0, metadata !3035, metadata !DIExpression()) #26, !dbg !3142
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3144
  call void @llvm.dbg.value(metadata i8* %2, metadata !3040, metadata !DIExpression()) #26, !dbg !3142
  %3 = icmp eq i8* %2, null, !dbg !3145
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3146
  br i1 %5, label %6, label %7, !dbg !3146

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3147
  unreachable, !dbg !3147

7:                                                ; preds = %1
  ret i8* %2, !dbg !3148
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3149 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3153, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64* %1, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8* %0, metadata !168, metadata !DIExpression()) #26, !dbg !3156
  call void @llvm.dbg.value(metadata i64* %1, metadata !169, metadata !DIExpression()) #26, !dbg !3156
  call void @llvm.dbg.value(metadata i64 1, metadata !170, metadata !DIExpression()) #26, !dbg !3156
  %3 = load i64, i64* %1, align 8, !dbg !3158, !tbaa !1089
  call void @llvm.dbg.value(metadata i64 %3, metadata !171, metadata !DIExpression()) #26, !dbg !3156
  %4 = icmp eq i8* %0, null, !dbg !3159
  br i1 %4, label %5, label %10, !dbg !3160

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3161
  br i1 %6, label %17, label %7, !dbg !3162

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !171, metadata !DIExpression()) #26, !dbg !3156
  %8 = icmp slt i64 %3, 0, !dbg !3163
  br i1 %8, label %9, label %17, !dbg !3164

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3165
  unreachable, !dbg !3165

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3166
  br i1 %11, label %13, label %12, !dbg !3167

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !3168
  unreachable, !dbg !3168

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3169
  %15 = add nuw nsw i64 %3, 1, !dbg !3170
  %16 = add nuw nsw i64 %15, %14, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %16, metadata !171, metadata !DIExpression()) #26, !dbg !3156
  call void @llvm.dbg.value(metadata i8* %0, metadata !3068, metadata !DIExpression()) #26, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %16, metadata !3073, metadata !DIExpression()) #26, !dbg !3172
  br label %17, !dbg !3174

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3175
  store i64 %18, i64* %1, align 8, !dbg !3175, !tbaa !1089
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !3176
  call void @llvm.dbg.value(metadata i8* %19, metadata !3068, metadata !DIExpression()) #26, !dbg !3172
  %20 = icmp eq i8* %19, null, !dbg !3177
  br i1 %20, label %21, label %22, !dbg !3178

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !3179
  unreachable, !dbg !3179

22:                                               ; preds = %17
  ret i8* %19, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3181 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3183, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %0, metadata !3185, metadata !DIExpression()) #26, !dbg !3190
  call void @llvm.dbg.value(metadata i64 1, metadata !3188, metadata !DIExpression()) #26, !dbg !3190
  %2 = icmp slt i64 %0, 0, !dbg !3192
  br i1 %2, label %6, label %3, !dbg !3194

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !3195
  call void @llvm.dbg.value(metadata i8* %4, metadata !3189, metadata !DIExpression()) #26, !dbg !3190
  %5 = icmp eq i8* %4, null, !dbg !3196
  br i1 %5, label %6, label %7, !dbg !3197

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !3198
  unreachable, !dbg !3198

7:                                                ; preds = %3
  ret i8* %4, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3186 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3185, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %1, metadata !3188, metadata !DIExpression()), !dbg !3200
  %3 = udiv i64 9223372036854775807, %1, !dbg !3201
  %4 = icmp ult i64 %3, %0, !dbg !3201
  br i1 %4, label %8, label %5, !dbg !3202

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %6, metadata !3189, metadata !DIExpression()), !dbg !3200
  %7 = icmp eq i8* %6, null, !dbg !3204
  br i1 %7, label %8, label %9, !dbg !3205

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !3206
  unreachable, !dbg !3206

9:                                                ; preds = %5
  ret i8* %6, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %1, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %1, metadata !3035, metadata !DIExpression()) #26, !dbg !3215
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %3, metadata !3040, metadata !DIExpression()) #26, !dbg !3215
  %4 = icmp eq i8* %3, null, !dbg !3218
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3219
  br i1 %6, label %7, label %8, !dbg !3219

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3220
  unreachable, !dbg !3220

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3221, metadata !DIExpression()) #26, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #26, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()) #26, !dbg !3226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !3228
  ret i8* %3, !dbg !3229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3230 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3232, metadata !DIExpression()), !dbg !3233
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !3234
  %3 = add i64 %2, 1, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()) #26, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %3, metadata !3213, metadata !DIExpression()) #26, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %3, metadata !3035, metadata !DIExpression()) #26, !dbg !3238
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %4, metadata !3040, metadata !DIExpression()) #26, !dbg !3238
  %5 = icmp eq i8* %4, null, !dbg !3241
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3242
  br i1 %7, label %8, label %9, !dbg !3242

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3243
  unreachable, !dbg !3243

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3221, metadata !DIExpression()) #26, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #26, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %3, metadata !3225, metadata !DIExpression()) #26, !dbg !3244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !3246
  ret i8* %4, !dbg !3247
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3248 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3249, !tbaa !771
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.124, i64 0, i64 0), i32 5) #26, !dbg !3250
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i64 0, i64 0), i8* %2) #26, !dbg !3251
  tail call void @abort() #28, !dbg !3252
  unreachable, !dbg !3252
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xgetcwd() local_unnamed_addr #8 !dbg !3253 {
  %1 = tail call i8* @getcwd(i8* null, i64 0) #26, !dbg !3256
  call void @llvm.dbg.value(metadata i8* %1, metadata !3255, metadata !DIExpression()), !dbg !3257
  %2 = icmp eq i8* %1, null, !dbg !3258
  br i1 %2, label %3, label %8, !dbg !3260

3:                                                ; preds = %0
  %4 = tail call i32* @__errno_location() #30, !dbg !3261
  %5 = load i32, i32* %4, align 4, !dbg !3261, !tbaa !771
  %6 = icmp eq i32 %5, 12, !dbg !3262
  br i1 %6, label %7, label %8, !dbg !3263

7:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !3264
  unreachable, !dbg !3264

8:                                                ; preds = %3, %0
  ret i8* %1, !dbg !3265
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3266 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3268, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %1, metadata !3269, metadata !DIExpression()), !dbg !3274
  %3 = icmp eq i64 %0, 0, !dbg !3275
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3276
  br i1 %5, label %11, label %6, !dbg !3276

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3271, metadata !DIExpression()), !dbg !3277
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3278
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3278
  br i1 %8, label %9, label %11, !dbg !3280

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !3281
  store i32 12, i32* %10, align 4, !dbg !3283, !tbaa !771
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3268, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %12, metadata !3269, metadata !DIExpression()), !dbg !3274
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %14, metadata !3270, metadata !DIExpression()), !dbg !3274
  br label %15, !dbg !3285

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3274
  ret i8* %16, !dbg !3286
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3287 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3303, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8* %1, metadata !3304, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %2, metadata !3305, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3306, metadata !DIExpression()), !dbg !3312
  %6 = bitcast i32* %5 to i8*, !dbg !3313
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3313
  %7 = icmp eq i32* %0, null, !dbg !3314
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3316
  call void @llvm.dbg.value(metadata i32* %8, metadata !3303, metadata !DIExpression()), !dbg !3312
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %9, metadata !3307, metadata !DIExpression()), !dbg !3312
  %10 = icmp ugt i64 %9, -3, !dbg !3318
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3319
  br i1 %12, label %13, label %18, !dbg !3319

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !3320
  br i1 %14, label %18, label %15, !dbg !3321

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3322, !tbaa !836
  call void @llvm.dbg.value(metadata i8 %16, metadata !3309, metadata !DIExpression()), !dbg !3323
  %17 = zext i8 %16 to i32, !dbg !3324
  store i32 %17, i32* %8, align 4, !dbg !3325, !tbaa !771
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3326
  ret i64 %19, !dbg !3326
}

; Function Attrs: nounwind
declare !dbg !3327 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3331 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3369, metadata !DIExpression()), !dbg !3374
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3375
  call void @llvm.dbg.value(metadata i1 undef, metadata !3370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3374
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3376, metadata !DIExpression()), !dbg !3380
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3382
  %4 = load i32, i32* %3, align 8, !dbg !3382, !tbaa !3383
  %5 = and i32 %4, 32, !dbg !3385
  %6 = icmp eq i32 %5, 0, !dbg !3385
  call void @llvm.dbg.value(metadata i1 %6, metadata !3372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3374
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3386
  %8 = icmp eq i32 %7, 0, !dbg !3387
  call void @llvm.dbg.value(metadata i1 %8, metadata !3373, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3374
  br i1 %6, label %9, label %19, !dbg !3388

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3390
  call void @llvm.dbg.value(metadata i1 %10, metadata !3370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3374
  %11 = or i1 %10, %8, !dbg !3391
  %12 = xor i1 %8, true, !dbg !3391
  %13 = sext i1 %12 to i32, !dbg !3391
  br i1 %11, label %22, label %14, !dbg !3391

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3392
  %16 = load i32, i32* %15, align 4, !dbg !3392, !tbaa !771
  %17 = icmp ne i32 %16, 9, !dbg !3393
  %18 = sext i1 %17 to i32, !dbg !3394
  br label %22, !dbg !3394

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3395

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3397
  store i32 0, i32* %21, align 4, !dbg !3399, !tbaa !771
  br label %22, !dbg !3397

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3374
  ret i32 %23, !dbg !3400
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3401 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3405, metadata !DIExpression()), !dbg !3410
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3411
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3411
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3406, metadata !DIExpression()), !dbg !3412
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3413
  %5 = icmp eq i32 %4, 0, !dbg !3413
  br i1 %5, label %6, label %13, !dbg !3415

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3416
  %8 = load i16, i16* %7, align 16, !dbg !3416
  %9 = icmp eq i16 %8, 67, !dbg !3416
  br i1 %9, label %13, label %10, !dbg !3417

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0), i64 6), !dbg !3418
  %12 = icmp ne i32 %11, 0, !dbg !3419
  br label %13, !dbg !3417

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3410
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3420
  ret i1 %14, !dbg !3420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3421 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %1, metadata !3425, metadata !DIExpression()), !dbg !3427
  %2 = icmp eq i8* %1, null, !dbg !3428
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %1, !dbg !3430
  call void @llvm.dbg.value(metadata i8* %3, metadata !3425, metadata !DIExpression()), !dbg !3427
  %4 = load i8, i8* %3, align 1, !dbg !3431, !tbaa !836
  %5 = icmp eq i8 %4, 0, !dbg !3435
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0), i8* %3, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %6, metadata !3425, metadata !DIExpression()), !dbg !3427
  ret i8* %6, !dbg !3437
}

; Function Attrs: nounwind
declare !dbg !3438 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3445, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i8* %1, metadata !3446, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 %2, metadata !3447, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()) #26, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %1, metadata !3452, metadata !DIExpression()) #26, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %2, metadata !3453, metadata !DIExpression()) #26, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %0, metadata !3460, metadata !DIExpression()) #26, !dbg !3466
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %4, metadata !3465, metadata !DIExpression()) #26, !dbg !3466
  call void @llvm.dbg.value(metadata i8* %4, metadata !3454, metadata !DIExpression()) #26, !dbg !3458
  %5 = icmp eq i8* %4, null, !dbg !3469
  br i1 %5, label %6, label %9, !dbg !3470

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3471
  br i1 %7, label %19, label %8, !dbg !3474

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3475, !tbaa !836
  br label %19, !dbg !3476

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %10, metadata !3455, metadata !DIExpression()) #26, !dbg !3478
  %11 = icmp ult i64 %10, %2, !dbg !3479
  br i1 %11, label %12, label %14, !dbg !3481

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %1, metadata !3484, metadata !DIExpression()) #26, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %4, metadata !3487, metadata !DIExpression()) #26, !dbg !3489
  call void @llvm.dbg.value(metadata i64 %13, metadata !3488, metadata !DIExpression()) #26, !dbg !3489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3491
  br label %19, !dbg !3492

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3493
  br i1 %15, label %19, label %16, !dbg !3496

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %1, metadata !3484, metadata !DIExpression()) #26, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %4, metadata !3487, metadata !DIExpression()) #26, !dbg !3499
  call void @llvm.dbg.value(metadata i64 %17, metadata !3488, metadata !DIExpression()) #26, !dbg !3499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3501
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3502
  store i8 0, i8* %18, align 1, !dbg !3503, !tbaa !836
  br label %19, !dbg !3504

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3505
  ret i32 %20, !dbg !3506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3507 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3509, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i32 %0, metadata !3460, metadata !DIExpression()) #26, !dbg !3511
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3513
  call void @llvm.dbg.value(metadata i8* %2, metadata !3465, metadata !DIExpression()) #26, !dbg !3511
  ret i8* %2, !dbg !3514
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3515 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3553, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i32 0, metadata !3554, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i32 0, metadata !3556, metadata !DIExpression()), !dbg !3557
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %2, metadata !3555, metadata !DIExpression()), !dbg !3557
  %3 = icmp slt i32 %2, 0, !dbg !3559
  br i1 %3, label %4, label %6, !dbg !3561

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3562
  br label %24, !dbg !3563

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3564
  %8 = icmp eq i32 %7, 0, !dbg !3564
  br i1 %8, label %13, label %9, !dbg !3566

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3567
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3568
  %12 = icmp eq i64 %11, -1, !dbg !3569
  br i1 %12, label %16, label %13, !dbg !3570

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3571
  %15 = icmp eq i32 %14, 0, !dbg !3571
  br i1 %15, label %16, label %18, !dbg !3572

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3554, metadata !DIExpression()), !dbg !3557
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %21, metadata !3556, metadata !DIExpression()), !dbg !3557
  br label %24, !dbg !3574

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !3575
  %20 = load i32, i32* %19, align 4, !dbg !3575, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %20, metadata !3554, metadata !DIExpression()), !dbg !3557
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %21, metadata !3556, metadata !DIExpression()), !dbg !3557
  %22 = icmp eq i32 %20, 0, !dbg !3576
  br i1 %22, label %24, label %23, !dbg !3574

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3578, !tbaa !771
  call void @llvm.dbg.value(metadata i32 -1, metadata !3556, metadata !DIExpression()), !dbg !3557
  br label %24, !dbg !3580

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3557
  ret i32 %25, !dbg !3581
}

; Function Attrs: nofree nounwind
declare !dbg !3582 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3585 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3586 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3589 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3627, metadata !DIExpression()), !dbg !3628
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3629
  br i1 %2, label %6, label %3, !dbg !3631

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3632
  %5 = icmp eq i32 %4, 0, !dbg !3632
  br i1 %5, label %6, label %8, !dbg !3633

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3634
  br label %17, !dbg !3635

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3636, metadata !DIExpression()) #26, !dbg !3641
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3643
  %10 = load i32, i32* %9, align 8, !dbg !3643, !tbaa !3383
  %11 = and i32 %10, 256, !dbg !3645
  %12 = icmp eq i32 %11, 0, !dbg !3645
  br i1 %12, label %15, label %13, !dbg !3646

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3647
  br label %15, !dbg !3647

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3648
  br label %17, !dbg !3649

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3628
  ret i32 %18, !dbg !3650
}

; Function Attrs: nofree nounwind
declare !dbg !3651 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3654 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3693, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %1, metadata !3694, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i32 %2, metadata !3695, metadata !DIExpression()), !dbg !3699
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3700
  %5 = load i8*, i8** %4, align 8, !dbg !3700, !tbaa !3701
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3702
  %7 = load i8*, i8** %6, align 8, !dbg !3702, !tbaa !3703
  %8 = icmp eq i8* %5, %7, !dbg !3704
  br i1 %8, label %9, label %28, !dbg !3705

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3706
  %11 = load i8*, i8** %10, align 8, !dbg !3706, !tbaa !3707
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3708
  %13 = load i8*, i8** %12, align 8, !dbg !3708, !tbaa !3709
  %14 = icmp eq i8* %11, %13, !dbg !3710
  br i1 %14, label %15, label %28, !dbg !3711

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3712
  %17 = load i8*, i8** %16, align 8, !dbg !3712, !tbaa !3713
  %18 = icmp eq i8* %17, null, !dbg !3714
  br i1 %18, label %19, label %28, !dbg !3715

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3716
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %21, metadata !3696, metadata !DIExpression()), !dbg !3718
  %22 = icmp eq i64 %21, -1, !dbg !3719
  br i1 %22, label %30, label %23, !dbg !3721

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3722
  %25 = load i32, i32* %24, align 8, !dbg !3723, !tbaa !3383
  %26 = and i32 %25, -17, !dbg !3723
  store i32 %26, i32* %24, align 8, !dbg !3723, !tbaa !3383
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3724
  store i64 %21, i64* %27, align 8, !dbg !3725, !tbaa !3726
  br label %30, !dbg !3727

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3728
  br label %30, !dbg !3729

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3699
  ret i32 %31, !dbg !3730
}

; Function Attrs: nofree nounwind
declare !dbg !3731 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #21 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { cold }

!llvm.dbg.cu = !{!2, !49, !55, !63, !69, !75, !149, !151, !143, !158, !175, !177, !179, !181, !184, !186, !188, !577, !579, !581, !583}
!llvm.ident = !{!585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585, !585}
!llvm.module.flags = !{!586, !587, !588, !589, !590}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pwd.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 112, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23}
!23 = !DIEnumerator(name: "NOT_AN_INODE_NUMBER", value: 0, isUnsigned: true)
!24 = !{!25, !26, !28}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!0}
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1280, elements: !45)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !35, line: 50, size: 256, elements: !36)
!35 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!36 = !{!37, !40, !42, !44}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 52, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !34, file: !35, line: 55, baseType: !41, size: 32, offset: 64)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !34, file: !35, line: 56, baseType: !43, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !34, file: !35, line: 57, baseType: !41, size: 32, offset: 192)
!45 = !{!46}
!46 = !DISubrange(count: 5)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "Version", scope: !49, file: !50, line: 2, type: !38, isLocal: false, isDefinition: true)
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, globals: !52, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!51 = !{}
!52 = !{!47}
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "file_name", scope: !55, file: !56, line: 46, type: !38, isLocal: true, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, globals: !57, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!57 = !{!53, !58}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !55, file: !56, line: 56, type: !60, isLocal: true, isDefinition: true)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "exit_failure", scope: !63, file: !64, line: 24, type: !66, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, globals: !65, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!65 = !{!61}
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "program_name", scope: !69, file: !70, line: 33, type: !38, isLocal: false, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !71, globals: !72, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!71 = !{!25, !26}
!72 = !{!67}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !75, file: !76, line: 85, type: !137, isLocal: false, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !98, globals: !100, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!77 = !{!5, !78, !83}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 46, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!86 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!95 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!97 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!98 = !{!41, !99, !28, !26}
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !{!73, !101, !107, !119, !121, !126, !133, !135}
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !75, file: !76, line: 101, type: !103, isLocal: false, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 320, elements: !105)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!105 = !{!106}
!106 = !DISubrange(count: 10)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !75, file: !76, line: 1052, type: !109, isLocal: false, isDefinition: true)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !76, line: 65, size: 448, elements: !110)
!110 = !{!111, !112, !113, !117, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !109, file: !76, line: 68, baseType: !5, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !76, line: 71, baseType: !41, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !109, file: !76, line: 75, baseType: !114, size: 256, offset: 64)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !109, file: !76, line: 78, baseType: !38, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !109, file: !76, line: 81, baseType: !38, size: 64, offset: 384)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !75, file: !76, line: 116, type: !109, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "slot0", scope: !75, file: !76, line: 842, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 256)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "slotvec", scope: !75, file: !76, line: 845, type: !128, isLocal: true, isDefinition: true)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !76, line: 834, size: 128, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !129, file: !76, line: 836, baseType: !28, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !129, file: !76, line: 837, baseType: !26, size: 64, offset: 64)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "nslots", scope: !75, file: !76, line: 843, type: !41, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "slotvec0", scope: !75, file: !76, line: 844, type: !129, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 704, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!139 = !{!140}
!140 = !DISubrange(count: 11)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !143, file: !144, line: 26, type: !146, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, globals: !145, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!141}
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 376, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 47)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, splitDebugInlining: false, nameTableKind: None)
!150 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !153, retainedTypes: !157, splitDebugInlining: false, nameTableKind: None)
!152 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !{!154}
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !152, line: 40, baseType: !7, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!157 = !{!25}
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, retainedTypes: !174, splitDebugInlining: false, nameTableKind: None)
!159 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!160 = !{!161}
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !163, file: !162, line: 186, baseType: !7, size: 32, elements: !172)
!162 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!163 = distinct !DISubprogram(name: "x2nrealloc", scope: !162, file: !162, line: 174, type: !164, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !167)
!164 = !DISubroutineType(types: !165)
!165 = !{!25, !25, !166, !28}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!167 = !{!168, !169, !170, !171}
!168 = !DILocalVariable(name: "p", arg: 1, scope: !163, file: !162, line: 174, type: !25)
!169 = !DILocalVariable(name: "pn", arg: 2, scope: !163, file: !162, line: 174, type: !166)
!170 = !DILocalVariable(name: "s", arg: 3, scope: !163, file: !162, line: 174, type: !28)
!171 = !DILocalVariable(name: "n", scope: !163, file: !162, line: 176, type: !28)
!172 = !{!173}
!173 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!174 = !{!28, !26, !25}
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, splitDebugInlining: false, nameTableKind: None)
!178 = !DIFile(filename: "lib/xgetcwd.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !157, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !{!28}
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, splitDebugInlining: false, nameTableKind: None)
!185 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, splitDebugInlining: false, nameTableKind: None)
!187 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !190, retainedTypes: !157, splitDebugInlining: false, nameTableKind: None)
!189 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!190 = !{!191}
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 41, baseType: !7, size: 32, elements: !193)
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
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !157, splitDebugInlining: false, nameTableKind: None)
!578 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !157, splitDebugInlining: false, nameTableKind: None)
!582 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !157, splitDebugInlining: false, nameTableKind: None)
!584 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!585 = !{!"clang version 12.0.1"}
!586 = !{i32 7, !"Dwarf Version", i32 4}
!587 = !{i32 2, !"Debug Info Version", i32 3}
!588 = !{i32 1, !"wchar_size", i32 4}
!589 = !{i32 7, !"PIC Level", i32 2}
!590 = !{i32 7, !"PIE Level", i32 2}
!591 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !592, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !41}
!594 = !{!595}
!595 = !DILocalVariable(name: "status", arg: 1, scope: !591, file: !3, line: 51, type: !41)
!596 = !DILocation(line: 0, scope: !591)
!597 = !DILocation(line: 53, column: 14, scope: !598)
!598 = distinct !DILexicalBlock(scope: !591, file: !3, line: 53, column: 7)
!599 = !DILocation(line: 53, column: 7, scope: !591)
!600 = !DILocation(line: 54, column: 5, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !3, line: 54, column: 5)
!602 = !{!603, !603, i64 0}
!603 = !{!"any pointer", !604, i64 0}
!604 = !{!"omnipotent char", !605, i64 0}
!605 = !{!"Simple C/C++ TBAA"}
!606 = !DILocation(line: 57, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !598, file: !3, line: 56, column: 5)
!608 = !DILocation(line: 58, column: 7, scope: !607)
!609 = !DILocation(line: 62, column: 7, scope: !607)
!610 = !DILocation(line: 66, column: 7, scope: !607)
!611 = !DILocation(line: 67, column: 7, scope: !607)
!612 = !DILocation(line: 68, column: 7, scope: !607)
!613 = !DILocation(line: 71, column: 7, scope: !607)
!614 = !DILocalVariable(name: "program", arg: 1, scope: !615, file: !21, line: 634, type: !38)
!615 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !21, file: !21, line: 634, type: !616, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !38}
!618 = !{!614, !619, !628, !629, !631}
!619 = !DILocalVariable(name: "infomap", scope: !615, file: !21, line: 636, type: !620)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 896, elements: !626)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !615, file: !21, line: 636, size: 128, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !622, file: !21, line: 636, baseType: !38, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !21, line: 636, baseType: !38, size: 64, offset: 64)
!626 = !{!627}
!627 = !DISubrange(count: 7)
!628 = !DILocalVariable(name: "node", scope: !615, file: !21, line: 646, type: !38)
!629 = !DILocalVariable(name: "map_prog", scope: !615, file: !21, line: 647, type: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!631 = !DILocalVariable(name: "lc_messages", scope: !615, file: !21, line: 659, type: !38)
!632 = !DILocation(line: 0, scope: !615, inlinedAt: !633)
!633 = distinct !DILocation(line: 72, column: 7, scope: !607)
!634 = !DILocation(line: 636, column: 3, scope: !615, inlinedAt: !633)
!635 = !DILocation(line: 636, column: 67, scope: !615, inlinedAt: !633)
!636 = !DILocation(line: 647, column: 36, scope: !615, inlinedAt: !633)
!637 = !DILocation(line: 649, column: 3, scope: !615, inlinedAt: !633)
!638 = !DILocation(line: 649, column: 33, scope: !615, inlinedAt: !633)
!639 = !DILocation(line: 650, column: 13, scope: !615, inlinedAt: !633)
!640 = !DILocation(line: 649, column: 20, scope: !615, inlinedAt: !633)
!641 = !{!642, !603, i64 0}
!642 = !{!"infomap", !603, i64 0, !603, i64 8}
!643 = !DILocation(line: 649, column: 10, scope: !615, inlinedAt: !633)
!644 = !DILocation(line: 649, column: 28, scope: !615, inlinedAt: !633)
!645 = distinct !{!645, !637, !639, !646}
!646 = !{!"llvm.loop.mustprogress"}
!647 = !DILocation(line: 652, column: 17, scope: !648, inlinedAt: !633)
!648 = distinct !DILexicalBlock(scope: !615, file: !21, line: 652, column: 7)
!649 = !{!642, !603, i64 8}
!650 = !DILocation(line: 652, column: 7, scope: !648, inlinedAt: !633)
!651 = !DILocation(line: 652, column: 7, scope: !615, inlinedAt: !633)
!652 = !DILocation(line: 655, column: 3, scope: !615, inlinedAt: !633)
!653 = !DILocation(line: 659, column: 29, scope: !615, inlinedAt: !633)
!654 = !DILocation(line: 660, column: 7, scope: !655, inlinedAt: !633)
!655 = distinct !DILexicalBlock(scope: !615, file: !21, line: 660, column: 7)
!656 = !DILocation(line: 660, column: 19, scope: !655, inlinedAt: !633)
!657 = !DILocation(line: 660, column: 22, scope: !655, inlinedAt: !633)
!658 = !DILocation(line: 660, column: 7, scope: !615, inlinedAt: !633)
!659 = !DILocation(line: 666, column: 7, scope: !660, inlinedAt: !633)
!660 = distinct !DILexicalBlock(scope: !655, file: !21, line: 661, column: 5)
!661 = !DILocation(line: 668, column: 5, scope: !660, inlinedAt: !633)
!662 = !DILocation(line: 669, column: 3, scope: !615, inlinedAt: !633)
!663 = !DILocation(line: 671, column: 3, scope: !615, inlinedAt: !633)
!664 = !DILocation(line: 673, column: 1, scope: !615, inlinedAt: !633)
!665 = !DILocation(line: 74, column: 3, scope: !591)
!666 = !DISubprogram(name: "dcgettext", scope: !667, file: !667, line: 51, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!667 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!668 = !DISubroutineType(types: !669)
!669 = !{!26, !38, !38, !41}
!670 = !DISubprogram(name: "fputs_unlocked", scope: !671, file: !671, line: 667, type: !672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!671 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!672 = !DISubroutineType(types: !673)
!673 = !{!41, !38, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !676, line: 49, size: 1728, elements: !677)
!676 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !693, !694, !695, !696, !700, !701, !703, !707, !710, !712, !715, !718, !719, !720, !721, !722}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !675, file: !676, line: 51, baseType: !41, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !675, file: !676, line: 54, baseType: !26, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !675, file: !676, line: 55, baseType: !26, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !675, file: !676, line: 56, baseType: !26, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !675, file: !676, line: 57, baseType: !26, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !675, file: !676, line: 58, baseType: !26, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !675, file: !676, line: 59, baseType: !26, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !675, file: !676, line: 60, baseType: !26, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !675, file: !676, line: 61, baseType: !26, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !675, file: !676, line: 64, baseType: !26, size: 64, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !675, file: !676, line: 65, baseType: !26, size: 64, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !675, file: !676, line: 66, baseType: !26, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !675, file: !676, line: 68, baseType: !691, size: 64, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !676, line: 36, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !675, file: !676, line: 70, baseType: !674, size: 64, offset: 832)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !675, file: !676, line: 72, baseType: !41, size: 32, offset: 896)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !675, file: !676, line: 73, baseType: !41, size: 32, offset: 928)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !675, file: !676, line: 74, baseType: !697, size: 64, offset: 960)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !698, line: 152, baseType: !699)
!698 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!699 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !675, file: !676, line: 77, baseType: !99, size: 16, offset: 1024)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !675, file: !676, line: 78, baseType: !702, size: 8, offset: 1040)
!702 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !675, file: !676, line: 79, baseType: !704, size: 8, offset: 1048)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 1)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !675, file: !676, line: 81, baseType: !708, size: 64, offset: 1088)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !676, line: 43, baseType: null)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !675, file: !676, line: 89, baseType: !711, size: 64, offset: 1152)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !698, line: 153, baseType: !699)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !675, file: !676, line: 91, baseType: !713, size: 64, offset: 1216)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !676, line: 37, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !675, file: !676, line: 92, baseType: !716, size: 64, offset: 1280)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !676, line: 38, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !675, file: !676, line: 93, baseType: !674, size: 64, offset: 1344)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !675, file: !676, line: 94, baseType: !25, size: 64, offset: 1408)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !675, file: !676, line: 95, baseType: !28, size: 64, offset: 1472)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !675, file: !676, line: 96, baseType: !41, size: 32, offset: 1536)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !675, file: !676, line: 98, baseType: !723, size: 160, offset: 1568)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 20)
!726 = !DISubprogram(name: "setlocale", scope: !727, file: !727, line: 122, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!727 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!728 = !DISubroutineType(types: !729)
!729 = !{!26, !41, !38}
!730 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 327, type: !731, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !734)
!731 = !DISubroutineType(types: !732)
!732 = !{!41, !41, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!734 = !{!735, !736, !737, !738, !739, !741}
!735 = !DILocalVariable(name: "argc", arg: 1, scope: !730, file: !3, line: 327, type: !41)
!736 = !DILocalVariable(name: "argv", arg: 2, scope: !730, file: !3, line: 327, type: !733)
!737 = !DILocalVariable(name: "wd", scope: !730, file: !3, line: 329, type: !26)
!738 = !DILocalVariable(name: "logical", scope: !730, file: !3, line: 333, type: !60)
!739 = !DILocalVariable(name: "c", scope: !740, file: !3, line: 345, type: !41)
!740 = distinct !DILexicalBlock(scope: !730, file: !3, line: 344, column: 5)
!741 = !DILocalVariable(name: "file_name", scope: !742, file: !3, line: 387, type: !744)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 386, column: 5)
!743 = distinct !DILexicalBlock(scope: !730, file: !3, line: 380, column: 7)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !3, line: 34, size: 192, elements: !746)
!746 = !{!747, !748, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !745, file: !3, line: 36, baseType: !26, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !745, file: !3, line: 37, baseType: !28, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !745, file: !3, line: 38, baseType: !26, size: 64, offset: 128)
!750 = !DILocation(line: 0, scope: !730)
!751 = !DILocation(line: 333, column: 19, scope: !730)
!752 = !DILocation(line: 333, column: 46, scope: !730)
!753 = !DILocation(line: 333, column: 8, scope: !730)
!754 = !DILocation(line: 336, column: 21, scope: !730)
!755 = !DILocation(line: 336, column: 3, scope: !730)
!756 = !DILocation(line: 337, column: 3, scope: !730)
!757 = !DILocation(line: 338, column: 3, scope: !730)
!758 = !DILocation(line: 339, column: 3, scope: !730)
!759 = !DILocation(line: 341, column: 3, scope: !730)
!760 = !DILocation(line: 343, column: 3, scope: !730)
!761 = !DILocation(line: 345, column: 15, scope: !740)
!762 = !DILocation(line: 0, scope: !740)
!763 = !DILocation(line: 346, column: 11, scope: !740)
!764 = !DILocation(line: 355, column: 11, scope: !765)
!765 = distinct !DILexicalBlock(scope: !740, file: !3, line: 349, column: 9)
!766 = !DILocation(line: 357, column: 9, scope: !765)
!767 = !DILocation(line: 359, column: 9, scope: !765)
!768 = !DILocation(line: 362, column: 11, scope: !765)
!769 = !DILocation(line: 366, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !730, file: !3, line: 366, column: 7)
!771 = !{!772, !772, i64 0}
!772 = !{!"int", !604, i64 0}
!773 = !DILocation(line: 366, column: 14, scope: !770)
!774 = !DILocation(line: 366, column: 7, scope: !730)
!775 = !DILocation(line: 367, column: 18, scope: !770)
!776 = !DILocation(line: 367, column: 5, scope: !770)
!777 = !DILocation(line: 369, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !730, file: !3, line: 369, column: 7)
!779 = !DILocation(line: 369, column: 7, scope: !730)
!780 = !DILocation(line: 302, column: 3, scope: !781, inlinedAt: !825)
!781 = distinct !DISubprogram(name: "logical_getcwd", scope: !3, file: !3, line: 300, type: !782, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!26}
!784 = !{!785, !822, !823, !824}
!785 = !DILocalVariable(name: "st1", scope: !781, file: !3, line: 302, type: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !787, line: 26, size: 1152, elements: !788)
!787 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!788 = !{!789, !791, !793, !795, !797, !799, !801, !802, !803, !804, !806, !808, !816, !817, !818}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !786, file: !787, line: 28, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !698, line: 145, baseType: !30)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !786, file: !787, line: 33, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !698, line: 148, baseType: !30)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !786, file: !787, line: 41, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !698, line: 151, baseType: !30)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !786, file: !787, line: 42, baseType: !796, size: 32, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !698, line: 150, baseType: !7)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !786, file: !787, line: 44, baseType: !798, size: 32, offset: 224)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !698, line: 146, baseType: !7)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !786, file: !787, line: 45, baseType: !800, size: 32, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !698, line: 147, baseType: !7)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !786, file: !787, line: 47, baseType: !41, size: 32, offset: 288)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !786, file: !787, line: 49, baseType: !790, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !786, file: !787, line: 54, baseType: !697, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !786, file: !787, line: 58, baseType: !805, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !698, line: 175, baseType: !699)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !786, file: !787, line: 60, baseType: !807, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !698, line: 180, baseType: !699)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !786, file: !787, line: 71, baseType: !809, size: 128, offset: 576)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !810, line: 10, size: 128, elements: !811)
!810 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!811 = !{!812, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !809, file: !810, line: 12, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !698, line: 160, baseType: !699)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !809, file: !810, line: 16, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !698, line: 197, baseType: !699)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !786, file: !787, line: 72, baseType: !809, size: 128, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !786, file: !787, line: 73, baseType: !809, size: 128, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !786, file: !787, line: 86, baseType: !819, size: 192, offset: 960)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 192, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 3)
!822 = !DILocalVariable(name: "st2", scope: !781, file: !3, line: 303, type: !786)
!823 = !DILocalVariable(name: "wd", scope: !781, file: !3, line: 304, type: !26)
!824 = !DILocalVariable(name: "p", scope: !781, file: !3, line: 305, type: !26)
!825 = distinct !DILocation(line: 371, column: 12, scope: !826)
!826 = distinct !DILexicalBlock(scope: !778, file: !3, line: 370, column: 5)
!827 = !DILocation(line: 302, column: 15, scope: !781, inlinedAt: !825)
!828 = !DILocation(line: 303, column: 3, scope: !781, inlinedAt: !825)
!829 = !DILocation(line: 303, column: 15, scope: !781, inlinedAt: !825)
!830 = !DILocation(line: 304, column: 14, scope: !781, inlinedAt: !825)
!831 = !DILocation(line: 0, scope: !781, inlinedAt: !825)
!832 = !DILocation(line: 308, column: 8, scope: !833, inlinedAt: !825)
!833 = distinct !DILexicalBlock(scope: !781, file: !3, line: 308, column: 7)
!834 = !DILocation(line: 308, column: 11, scope: !833, inlinedAt: !825)
!835 = !DILocation(line: 308, column: 14, scope: !833, inlinedAt: !825)
!836 = !{!604, !604, i64 0}
!837 = !DILocation(line: 308, column: 20, scope: !833, inlinedAt: !825)
!838 = !DILocation(line: 308, column: 7, scope: !781, inlinedAt: !825)
!839 = !DILocation(line: 311, column: 15, scope: !781, inlinedAt: !825)
!840 = !DILocation(line: 311, column: 3, scope: !781, inlinedAt: !825)
!841 = !DILocation(line: 313, column: 12, scope: !842, inlinedAt: !825)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 313, column: 11)
!843 = distinct !DILexicalBlock(scope: !781, file: !3, line: 312, column: 5)
!844 = !DILocation(line: 313, column: 17, scope: !842, inlinedAt: !825)
!845 = !DILocation(line: 314, column: 32, scope: !842, inlinedAt: !825)
!846 = !DILocation(line: 314, column: 37, scope: !842, inlinedAt: !825)
!847 = !DILocation(line: 316, column: 8, scope: !843, inlinedAt: !825)
!848 = distinct !{!848, !840, !849, !646}
!849 = !DILocation(line: 317, column: 5, scope: !781, inlinedAt: !825)
!850 = !DILocation(line: 320, column: 7, scope: !851, inlinedAt: !825)
!851 = distinct !DILexicalBlock(scope: !781, file: !3, line: 320, column: 7)
!852 = !DILocation(line: 320, column: 23, scope: !851, inlinedAt: !825)
!853 = !DILocation(line: 320, column: 28, scope: !851, inlinedAt: !825)
!854 = !DILocation(line: 320, column: 31, scope: !851, inlinedAt: !825)
!855 = !DILocation(line: 320, column: 48, scope: !851, inlinedAt: !825)
!856 = !DILocation(line: 320, column: 53, scope: !851, inlinedAt: !825)
!857 = !DILocation(line: 320, column: 56, scope: !851, inlinedAt: !825)
!858 = !{!859, !860, i64 8}
!859 = !{!"stat", !860, i64 0, !860, i64 8, !860, i64 16, !772, i64 24, !772, i64 28, !772, i64 32, !772, i64 36, !860, i64 40, !860, i64 48, !860, i64 56, !860, i64 64, !861, i64 72, !861, i64 88, !861, i64 104, !604, i64 120}
!860 = !{!"long", !604, i64 0}
!861 = !{!"timespec", !860, i64 0, !860, i64 8}
!862 = !{!859, !860, i64 0}
!863 = !DILocation(line: 320, column: 7, scope: !781, inlinedAt: !825)
!864 = !DILocation(line: 323, column: 1, scope: !781, inlinedAt: !825)
!865 = !DILocation(line: 372, column: 11, scope: !826)
!866 = !DILocation(line: 374, column: 11, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 373, column: 9)
!868 = distinct !DILexicalBlock(scope: !826, file: !3, line: 372, column: 11)
!869 = !DILocation(line: 375, column: 11, scope: !867)
!870 = !DILocation(line: 379, column: 8, scope: !730)
!871 = !DILocation(line: 380, column: 10, scope: !743)
!872 = !DILocation(line: 380, column: 7, scope: !730)
!873 = !DILocation(line: 382, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !743, file: !3, line: 381, column: 5)
!875 = !DILocation(line: 383, column: 7, scope: !874)
!876 = !DILocation(line: 384, column: 5, scope: !874)
!877 = !DILocation(line: 87, column: 25, scope: !878, inlinedAt: !883)
!878 = distinct !DISubprogram(name: "file_name_init", scope: !3, file: !3, line: 85, type: !879, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!744}
!881 = !{!882}
!882 = !DILocalVariable(name: "p", scope: !878, file: !3, line: 87, type: !744)
!883 = distinct !DILocation(line: 387, column: 37, scope: !742)
!884 = !DILocation(line: 0, scope: !878, inlinedAt: !883)
!885 = !DILocation(line: 91, column: 6, scope: !878, inlinedAt: !883)
!886 = !DILocation(line: 91, column: 14, scope: !878, inlinedAt: !883)
!887 = !{!888, !860, i64 8}
!888 = !{!"file_name", !603, i64 0, !860, i64 8, !603, i64 16}
!889 = !DILocation(line: 93, column: 12, scope: !878, inlinedAt: !883)
!890 = !DILocation(line: 93, column: 6, scope: !878, inlinedAt: !883)
!891 = !DILocation(line: 93, column: 10, scope: !878, inlinedAt: !883)
!892 = !{!888, !603, i64 0}
!893 = !DILocation(line: 94, column: 21, scope: !878, inlinedAt: !883)
!894 = !DILocation(line: 94, column: 6, scope: !878, inlinedAt: !883)
!895 = !DILocation(line: 94, column: 12, scope: !878, inlinedAt: !883)
!896 = !{!888, !603, i64 16}
!897 = !DILocation(line: 95, column: 15, scope: !878, inlinedAt: !883)
!898 = !DILocation(line: 0, scope: !742)
!899 = !DILocalVariable(name: "file_name", arg: 1, scope: !900, file: !3, line: 268, type: !744)
!900 = distinct !DISubprogram(name: "robust_getcwd", scope: !3, file: !3, line: 268, type: !901, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !744}
!903 = !{!899, !904, !905, !914, !916}
!904 = !DILocalVariable(name: "height", scope: !900, file: !3, line: 270, type: !28)
!905 = !DILocalVariable(name: "dev_ino_buf", scope: !900, file: !3, line: 271, type: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !907, line: 7, size: 128, elements: !908)
!907 = !DIFile(filename: "./lib/dev-ino.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!908 = !{!909, !912}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !906, file: !907, line: 9, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !911, line: 47, baseType: !792)
!911 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!912 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !906, file: !907, line: 10, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !911, line: 59, baseType: !790)
!914 = !DILocalVariable(name: "root_dev_ino", scope: !900, file: !3, line: 272, type: !915)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!916 = !DILocalVariable(name: "dot_sb", scope: !900, file: !3, line: 273, type: !786)
!917 = !DILocation(line: 0, scope: !900, inlinedAt: !918)
!918 = distinct !DILocation(line: 388, column: 7, scope: !742)
!919 = !DILocation(line: 271, column: 3, scope: !900, inlinedAt: !918)
!920 = !DILocation(line: 271, column: 18, scope: !900, inlinedAt: !918)
!921 = !DILocation(line: 272, column: 34, scope: !900, inlinedAt: !918)
!922 = !DILocation(line: 273, column: 3, scope: !900, inlinedAt: !918)
!923 = !DILocation(line: 273, column: 15, scope: !900, inlinedAt: !918)
!924 = !DILocation(line: 275, column: 20, scope: !925, inlinedAt: !918)
!925 = distinct !DILexicalBlock(scope: !900, file: !3, line: 275, column: 7)
!926 = !DILocation(line: 275, column: 7, scope: !900, inlinedAt: !918)
!927 = !DILocation(line: 276, column: 5, scope: !925, inlinedAt: !918)
!928 = !DILocation(line: 279, column: 7, scope: !929, inlinedAt: !918)
!929 = distinct !DILexicalBlock(scope: !900, file: !3, line: 279, column: 7)
!930 = !DILocation(line: 279, column: 27, scope: !929, inlinedAt: !918)
!931 = !DILocation(line: 279, column: 7, scope: !900, inlinedAt: !918)
!932 = !DILocation(line: 282, column: 3, scope: !900, inlinedAt: !918)
!933 = !DILocation(line: 280, column: 5, scope: !929, inlinedAt: !918)
!934 = !DILocation(line: 285, column: 11, scope: !935, inlinedAt: !918)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 285, column: 11)
!936 = distinct !DILexicalBlock(scope: !900, file: !3, line: 283, column: 5)
!937 = !{!938, !860, i64 0}
!938 = !{!"dev_ino", !860, i64 0, !860, i64 8}
!939 = !{!938, !860, i64 8}
!940 = !DILocation(line: 285, column: 11, scope: !936, inlinedAt: !918)
!941 = !DILocation(line: 288, column: 49, scope: !936, inlinedAt: !918)
!942 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !943, file: !3, line: 153, type: !946)
!943 = distinct !DISubprogram(name: "find_dir_entry", scope: !3, file: !3, line: 153, type: !944, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !947)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !946, !744, !28}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!947 = !{!942, !948, !949, !950, !955, !956, !957, !958, !959, !972, !973, !974}
!948 = !DILocalVariable(name: "file_name", arg: 2, scope: !943, file: !3, line: 153, type: !744)
!949 = !DILocalVariable(name: "parent_height", arg: 3, scope: !943, file: !3, line: 154, type: !28)
!950 = !DILocalVariable(name: "dirp", scope: !943, file: !3, line: 156, type: !951)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !953, line: 127, baseType: !954)
!953 = !DIFile(filename: "/usr/include/dirent.h", directory: "")
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !953, line: 127, flags: DIFlagFwdDecl)
!955 = !DILocalVariable(name: "fd", scope: !943, file: !3, line: 157, type: !41)
!956 = !DILocalVariable(name: "parent_sb", scope: !943, file: !3, line: 158, type: !786)
!957 = !DILocalVariable(name: "use_lstat", scope: !943, file: !3, line: 159, type: !60)
!958 = !DILocalVariable(name: "found", scope: !943, file: !3, line: 160, type: !60)
!959 = !DILocalVariable(name: "dp", scope: !960, file: !3, line: 183, type: !961)
!960 = distinct !DILexicalBlock(scope: !943, file: !3, line: 182, column: 5)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !964, line: 22, size: 2240, elements: !965)
!964 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "")
!965 = !{!966, !967, !968, !969, !971}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !963, file: !964, line: 25, baseType: !792, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !963, file: !964, line: 26, baseType: !697, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !963, file: !964, line: 31, baseType: !99, size: 16, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !963, file: !964, line: 32, baseType: !970, size: 8, offset: 144)
!970 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !963, file: !964, line: 33, baseType: !123, size: 2048, offset: 152)
!972 = !DILocalVariable(name: "ent_sb", scope: !960, file: !3, line: 184, type: !786)
!973 = !DILocalVariable(name: "ino", scope: !960, file: !3, line: 185, type: !910)
!974 = !DILocalVariable(name: "e", scope: !975, file: !3, line: 193, type: !41)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 191, column: 13)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 190, column: 15)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 189, column: 9)
!978 = distinct !DILexicalBlock(scope: !960, file: !3, line: 188, column: 11)
!979 = !DILocation(line: 0, scope: !943, inlinedAt: !980)
!980 = distinct !DILocation(line: 288, column: 7, scope: !936, inlinedAt: !918)
!981 = !DILocation(line: 158, column: 3, scope: !943, inlinedAt: !980)
!982 = !DILocation(line: 158, column: 15, scope: !943, inlinedAt: !980)
!983 = !DILocation(line: 162, column: 10, scope: !943, inlinedAt: !980)
!984 = !DILocation(line: 163, column: 12, scope: !985, inlinedAt: !980)
!985 = distinct !DILexicalBlock(scope: !943, file: !3, line: 163, column: 7)
!986 = !DILocation(line: 163, column: 7, scope: !943, inlinedAt: !980)
!987 = !DILocation(line: 164, column: 5, scope: !985, inlinedAt: !980)
!988 = !DILocation(line: 167, column: 8, scope: !943, inlinedAt: !980)
!989 = !DILocation(line: 168, column: 10, scope: !990, inlinedAt: !980)
!990 = distinct !DILexicalBlock(scope: !943, file: !3, line: 168, column: 7)
!991 = !DILocation(line: 168, column: 8, scope: !990, inlinedAt: !980)
!992 = !DILocation(line: 168, column: 18, scope: !990, inlinedAt: !980)
!993 = !DILocation(line: 168, column: 46, scope: !990, inlinedAt: !980)
!994 = !DILocation(line: 168, column: 7, scope: !943, inlinedAt: !980)
!995 = !DILocation(line: 168, column: 32, scope: !990, inlinedAt: !980)
!996 = !DILocation(line: 169, column: 5, scope: !990, inlinedAt: !980)
!997 = !DILocation(line: 172, column: 18, scope: !998, inlinedAt: !980)
!998 = distinct !DILexicalBlock(scope: !943, file: !3, line: 172, column: 7)
!999 = !DILocation(line: 172, column: 8, scope: !998, inlinedAt: !980)
!1000 = !DILocation(line: 172, column: 43, scope: !998, inlinedAt: !980)
!1001 = !DILocation(line: 172, column: 67, scope: !998, inlinedAt: !980)
!1002 = !DILocation(line: 172, column: 7, scope: !943, inlinedAt: !980)
!1003 = !DILocation(line: 173, column: 5, scope: !998, inlinedAt: !980)
!1004 = !DILocation(line: 178, column: 26, scope: !943, inlinedAt: !980)
!1005 = !DILocation(line: 178, column: 44, scope: !943, inlinedAt: !980)
!1006 = !DILocation(line: 178, column: 33, scope: !943, inlinedAt: !980)
!1007 = !DILocation(line: 184, column: 7, scope: !960, inlinedAt: !980)
!1008 = !DILocation(line: 184, column: 19, scope: !960, inlinedAt: !980)
!1009 = !DILocation(line: 187, column: 7, scope: !960, inlinedAt: !980)
!1010 = !DILocation(line: 187, column: 13, scope: !960, inlinedAt: !980)
!1011 = !DILocalVariable(name: "dirp", arg: 1, scope: !1012, file: !21, line: 278, type: !951)
!1012 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !21, file: !21, line: 278, type: !1013, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!961, !951}
!1015 = !{!1011, !1016}
!1016 = !DILocalVariable(name: "dp", scope: !1017, file: !21, line: 282, type: !961)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !21, line: 281, column: 5)
!1018 = !DILocation(line: 0, scope: !1012, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 188, column: 17, scope: !978, inlinedAt: !980)
!1020 = !DILocation(line: 282, column: 33, scope: !1017, inlinedAt: !1019)
!1021 = !DILocation(line: 0, scope: !1017, inlinedAt: !1019)
!1022 = !DILocation(line: 283, column: 14, scope: !1023, inlinedAt: !1019)
!1023 = distinct !DILexicalBlock(scope: !1017, file: !21, line: 283, column: 11)
!1024 = !DILocation(line: 283, column: 22, scope: !1023, inlinedAt: !1019)
!1025 = !DILocation(line: 283, column: 42, scope: !1023, inlinedAt: !1019)
!1026 = !DILocalVariable(name: "file_name", arg: 1, scope: !1027, file: !21, line: 265, type: !38)
!1027 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !21, file: !21, line: 265, type: !1028, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!60, !38}
!1030 = !{!1026, !1031}
!1031 = !DILocalVariable(name: "sep", scope: !1032, file: !21, line: 269, type: !27)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !21, line: 268, column: 5)
!1033 = distinct !DILexicalBlock(scope: !1027, file: !21, line: 267, column: 7)
!1034 = !DILocation(line: 0, scope: !1027, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 283, column: 27, scope: !1023, inlinedAt: !1019)
!1036 = !DILocation(line: 267, column: 7, scope: !1033, inlinedAt: !1035)
!1037 = !DILocation(line: 267, column: 20, scope: !1033, inlinedAt: !1035)
!1038 = !DILocation(line: 267, column: 7, scope: !1027, inlinedAt: !1035)
!1039 = !DILocation(line: 269, column: 29, scope: !1032, inlinedAt: !1035)
!1040 = !DILocation(line: 269, column: 42, scope: !1032, inlinedAt: !1035)
!1041 = !DILocation(line: 269, column: 18, scope: !1032, inlinedAt: !1035)
!1042 = !DILocation(line: 0, scope: !1032, inlinedAt: !1035)
!1043 = !DILocation(line: 283, column: 11, scope: !1017, inlinedAt: !1019)
!1044 = !DILocation(line: 0, scope: !960, inlinedAt: !980)
!1045 = !DILocation(line: 190, column: 15, scope: !976, inlinedAt: !980)
!1046 = !DILocation(line: 190, column: 15, scope: !977, inlinedAt: !980)
!1047 = !DILocation(line: 0, scope: !975, inlinedAt: !980)
!1048 = !DILocation(line: 194, column: 15, scope: !975, inlinedAt: !980)
!1049 = !DILocation(line: 195, column: 21, scope: !975, inlinedAt: !980)
!1050 = !DILocation(line: 226, column: 5, scope: !943, inlinedAt: !980)
!1051 = !DILocation(line: 228, column: 20, scope: !1052, inlinedAt: !980)
!1052 = distinct !DILexicalBlock(scope: !943, file: !3, line: 228, column: 7)
!1053 = !DILocation(line: 203, column: 13, scope: !960, inlinedAt: !980)
!1054 = !{!1055, !860, i64 0}
!1055 = !{!"dirent", !860, i64 0, !860, i64 8, !1056, i64 16, !604, i64 18, !604, i64 19}
!1056 = !{!"short", !604, i64 0}
!1057 = !DILocation(line: 205, column: 15, scope: !1058, inlinedAt: !980)
!1058 = distinct !DILexicalBlock(scope: !960, file: !3, line: 205, column: 11)
!1059 = !DILocation(line: 205, column: 38, scope: !1058, inlinedAt: !980)
!1060 = !DILocation(line: 207, column: 15, scope: !1061, inlinedAt: !980)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 207, column: 15)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 206, column: 9)
!1063 = !DILocation(line: 207, column: 43, scope: !1061, inlinedAt: !980)
!1064 = !DILocation(line: 207, column: 15, scope: !1062, inlinedAt: !980)
!1065 = distinct !{!1065, !1066, !1050}
!1066 = !DILocation(line: 181, column: 3, scope: !943, inlinedAt: !980)
!1067 = !DILocation(line: 212, column: 24, scope: !1062, inlinedAt: !980)
!1068 = !DILocation(line: 213, column: 9, scope: !1062, inlinedAt: !980)
!1069 = !DILocation(line: 215, column: 15, scope: !1070, inlinedAt: !980)
!1070 = distinct !DILexicalBlock(scope: !960, file: !3, line: 215, column: 11)
!1071 = !DILocation(line: 215, column: 11, scope: !960, inlinedAt: !980)
!1072 = distinct !{!1072, !1066, !1050}
!1073 = !DILocation(line: 220, column: 24, scope: !1074, inlinedAt: !980)
!1074 = distinct !DILexicalBlock(scope: !960, file: !3, line: 220, column: 12)
!1075 = !DILocation(line: 222, column: 53, scope: !1076, inlinedAt: !980)
!1076 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 221, column: 9)
!1077 = !DILocation(line: 222, column: 11, scope: !1076, inlinedAt: !980)
!1078 = !DILocation(line: 224, column: 11, scope: !1076, inlinedAt: !980)
!1079 = !DILocation(line: 228, column: 23, scope: !1052, inlinedAt: !980)
!1080 = !DILocation(line: 228, column: 39, scope: !1052, inlinedAt: !980)
!1081 = !DILocation(line: 228, column: 7, scope: !943, inlinedAt: !980)
!1082 = !DILocation(line: 232, column: 7, scope: !1083, inlinedAt: !980)
!1083 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 229, column: 5)
!1084 = !DILocation(line: 236, column: 8, scope: !943, inlinedAt: !980)
!1085 = !DILocation(line: 237, column: 5, scope: !1086, inlinedAt: !980)
!1086 = distinct !DILexicalBlock(scope: !943, file: !3, line: 236, column: 8)
!1087 = !DILocation(line: 241, column: 13, scope: !943, inlinedAt: !980)
!1088 = !{i64 0, i64 8, !1089, i64 8, i64 8, !1089, i64 16, i64 8, !1089, i64 24, i64 4, !771, i64 28, i64 4, !771, i64 32, i64 4, !771, i64 36, i64 4, !771, i64 40, i64 8, !1089, i64 48, i64 8, !1089, i64 56, i64 8, !1089, i64 64, i64 8, !1089, i64 72, i64 8, !1089, i64 80, i64 8, !1089, i64 88, i64 8, !1089, i64 96, i64 8, !1089, i64 104, i64 8, !1089, i64 112, i64 8, !1089, i64 120, i64 24, !836}
!1089 = !{!860, !860, i64 0}
!1090 = !DILocation(line: 242, column: 1, scope: !943, inlinedAt: !980)
!1091 = distinct !{!1091, !932, !1092}
!1092 = !DILocation(line: 289, column: 5, scope: !900, inlinedAt: !918)
!1093 = !DILocation(line: 292, column: 18, scope: !1094, inlinedAt: !918)
!1094 = distinct !DILexicalBlock(scope: !900, file: !3, line: 292, column: 7)
!1095 = !DILocation(line: 292, column: 7, scope: !1094, inlinedAt: !918)
!1096 = !DILocation(line: 292, column: 27, scope: !1094, inlinedAt: !918)
!1097 = !DILocation(line: 292, column: 7, scope: !900, inlinedAt: !918)
!1098 = !DILocation(line: 293, column: 5, scope: !1094, inlinedAt: !918)
!1099 = !DILocation(line: 389, column: 24, scope: !742)
!1100 = !DILocation(line: 294, column: 1, scope: !900, inlinedAt: !918)
!1101 = !DILocation(line: 389, column: 7, scope: !742)
!1102 = !DILocalVariable(name: "p", arg: 1, scope: !1103, file: !3, line: 78, type: !744)
!1103 = distinct !DISubprogram(name: "file_name_free", scope: !3, file: !3, line: 78, type: !901, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1104)
!1104 = !{!1102}
!1105 = !DILocation(line: 0, scope: !1103, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 390, column: 7, scope: !742)
!1107 = !DILocation(line: 80, column: 12, scope: !1103, inlinedAt: !1106)
!1108 = !DILocation(line: 80, column: 3, scope: !1103, inlinedAt: !1106)
!1109 = !DILocation(line: 81, column: 3, scope: !1103, inlinedAt: !1106)
!1110 = !DILocation(line: 394, column: 1, scope: !730)
!1111 = !DISubprogram(name: "getenv", scope: !1112, file: !1112, line: 634, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1112 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!26, !38}
!1115 = !DISubprogram(name: "bindtextdomain", scope: !667, file: !667, line: 86, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!26, !38, !38}
!1118 = !DISubprogram(name: "textdomain", scope: !667, file: !667, line: 82, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1119 = !DISubprogram(name: "atexit", scope: !1112, file: !1112, line: 595, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!41, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null}
!1125 = !DISubprogram(name: "getopt_long", scope: !35, file: !35, line: 66, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!41, !41, !1128, !38, !1130, !43}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1131 = !DISubprogram(name: "error", scope: !1132, file: !1132, line: 52, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1132 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !41, !41, !38, null}
!1135 = !DISubprogram(name: "stat", scope: !1136, file: !1136, line: 205, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1136 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!41, !38, !946}
!1139 = !DISubprogram(name: "puts", scope: !671, file: !671, line: 637, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!41, !38}
!1142 = !DISubprogram(name: "opendir", scope: !953, file: !953, line: 134, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!1145, !38}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!1146 = distinct !DISubprogram(name: "nth_parent", scope: !3, file: !3, line: 127, type: !1147, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1149)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!26, !28}
!1149 = !{!1150, !1151, !1152, !1153}
!1150 = !DILocalVariable(name: "n", arg: 1, scope: !1146, file: !3, line: 127, type: !28)
!1151 = !DILocalVariable(name: "buf", scope: !1146, file: !3, line: 129, type: !26)
!1152 = !DILocalVariable(name: "p", scope: !1146, file: !3, line: 130, type: !26)
!1153 = !DILocalVariable(name: "i", scope: !1154, file: !3, line: 132, type: !28)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 132, column: 3)
!1155 = !DILocation(line: 0, scope: !1146)
!1156 = !DILocalVariable(name: "n", arg: 1, scope: !1157, file: !162, line: 99, type: !28)
!1157 = distinct !DISubprogram(name: "xnmalloc", scope: !162, file: !162, line: 99, type: !1158, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!25, !28, !28}
!1160 = !{!1156, !1161}
!1161 = !DILocalVariable(name: "s", arg: 2, scope: !1157, file: !162, line: 99, type: !28)
!1162 = !DILocation(line: 0, scope: !1157, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 129, column: 15, scope: !1146)
!1164 = !DILocation(line: 101, column: 7, scope: !1165, inlinedAt: !1163)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !162, line: 101, column: 7)
!1166 = !DILocation(line: 101, column: 7, scope: !1157, inlinedAt: !1163)
!1167 = !DILocation(line: 102, column: 5, scope: !1165, inlinedAt: !1163)
!1168 = !DILocation(line: 103, column: 21, scope: !1157, inlinedAt: !1163)
!1169 = !DILocation(line: 103, column: 10, scope: !1157, inlinedAt: !1163)
!1170 = !DILocation(line: 0, scope: !1154)
!1171 = !DILocation(line: 132, column: 24, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 132, column: 3)
!1173 = !DILocation(line: 132, column: 3, scope: !1154)
!1174 = !DILocalVariable(name: "__dest", arg: 1, scope: !1175, file: !1176, line: 26, type: !1179)
!1175 = distinct !DISubprogram(name: "memcpy", scope: !1176, file: !1176, line: 26, type: !1177, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1183)
!1176 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!25, !1179, !1180, !28}
!1179 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!1180 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1183 = !{!1174, !1184, !1185}
!1184 = !DILocalVariable(name: "__src", arg: 2, scope: !1175, file: !1176, line: 26, type: !1180)
!1185 = !DILocalVariable(name: "__len", arg: 3, scope: !1175, file: !1176, line: 26, type: !28)
!1186 = !DILocation(line: 0, scope: !1175, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 134, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 133, column: 5)
!1189 = !DILocation(line: 29, column: 10, scope: !1175, inlinedAt: !1187)
!1190 = !DILocation(line: 135, column: 9, scope: !1188)
!1191 = distinct !{!1191, !1192}
!1192 = !{!"llvm.loop.unroll.disable"}
!1193 = !DILocation(line: 137, column: 3, scope: !1146)
!1194 = !DILocation(line: 137, column: 9, scope: !1146)
!1195 = !DILocation(line: 138, column: 3, scope: !1146)
!1196 = distinct !{!1196, !1173, !1197, !646}
!1197 = !DILocation(line: 136, column: 5, scope: !1154)
!1198 = !DISubprogram(name: "dirfd", scope: !953, file: !953, line: 224, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!41, !1145}
!1201 = !DISubprogram(name: "fchdir", scope: !1202, file: !1202, line: 510, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1202 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!41, !41}
!1205 = !DISubprogram(name: "chdir", scope: !1202, file: !1202, line: 506, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1206 = !DISubprogram(name: "fstat", scope: !1136, file: !1136, line: 210, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!41, !41, !946}
!1209 = !DISubprogram(name: "readdir", scope: !953, file: !953, line: 162, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1212, !1145}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!1213 = !DISubprogram(name: "closedir", scope: !953, file: !953, line: 149, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1214 = !DISubprogram(name: "lstat", scope: !1136, file: !1136, line: 259, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!1215 = distinct !DISubprogram(name: "file_name_prepend", scope: !3, file: !3, line: 101, type: !1216, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !744, !38, !28}
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1226, !1227}
!1219 = !DILocalVariable(name: "p", arg: 1, scope: !1215, file: !3, line: 101, type: !744)
!1220 = !DILocalVariable(name: "s", arg: 2, scope: !1215, file: !3, line: 101, type: !38)
!1221 = !DILocalVariable(name: "s_len", arg: 3, scope: !1215, file: !3, line: 101, type: !28)
!1222 = !DILocalVariable(name: "n_free", scope: !1215, file: !3, line: 103, type: !28)
!1223 = !DILocalVariable(name: "half", scope: !1224, file: !3, line: 106, type: !28)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 105, column: 5)
!1225 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 104, column: 7)
!1226 = !DILocalVariable(name: "q", scope: !1224, file: !3, line: 111, type: !26)
!1227 = !DILocalVariable(name: "n_used", scope: !1224, file: !3, line: 112, type: !28)
!1228 = !DILocation(line: 0, scope: !1215)
!1229 = !DILocation(line: 103, column: 22, scope: !1215)
!1230 = !DILocation(line: 103, column: 33, scope: !1215)
!1231 = !DILocation(line: 103, column: 28, scope: !1215)
!1232 = !DILocation(line: 104, column: 18, scope: !1225)
!1233 = !DILocation(line: 104, column: 14, scope: !1225)
!1234 = !DILocation(line: 104, column: 7, scope: !1215)
!1235 = !DILocation(line: 106, column: 24, scope: !1224)
!1236 = !DILocation(line: 106, column: 36, scope: !1224)
!1237 = !DILocation(line: 0, scope: !1224)
!1238 = !DILocation(line: 0, scope: !1157, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 111, column: 17, scope: !1224)
!1240 = !DILocation(line: 101, column: 7, scope: !1165, inlinedAt: !1239)
!1241 = !DILocation(line: 101, column: 7, scope: !1157, inlinedAt: !1239)
!1242 = !DILocation(line: 102, column: 5, scope: !1165, inlinedAt: !1239)
!1243 = !DILocation(line: 103, column: 21, scope: !1157, inlinedAt: !1239)
!1244 = !DILocation(line: 103, column: 10, scope: !1157, inlinedAt: !1239)
!1245 = !DILocation(line: 112, column: 26, scope: !1224)
!1246 = !DILocation(line: 112, column: 34, scope: !1224)
!1247 = !DILocation(line: 113, column: 20, scope: !1224)
!1248 = !DILocation(line: 113, column: 31, scope: !1224)
!1249 = !DILocation(line: 113, column: 16, scope: !1224)
!1250 = !DILocation(line: 114, column: 28, scope: !1224)
!1251 = !DILocation(line: 114, column: 32, scope: !1224)
!1252 = !DILocation(line: 0, scope: !1175, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 114, column: 7, scope: !1224)
!1254 = !DILocation(line: 29, column: 10, scope: !1175, inlinedAt: !1253)
!1255 = !DILocation(line: 115, column: 7, scope: !1224)
!1256 = !DILocation(line: 116, column: 14, scope: !1224)
!1257 = !DILocation(line: 117, column: 18, scope: !1224)
!1258 = !DILocation(line: 120, column: 12, scope: !1215)
!1259 = !DILocation(line: 118, column: 5, scope: !1224)
!1260 = !DILocation(line: 121, column: 15, scope: !1215)
!1261 = !DILocation(line: 122, column: 14, scope: !1215)
!1262 = !DILocation(line: 122, column: 20, scope: !1215)
!1263 = !DILocation(line: 0, scope: !1175, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 122, column: 3, scope: !1215)
!1265 = !DILocation(line: 29, column: 10, scope: !1175, inlinedAt: !1264)
!1266 = !DILocation(line: 123, column: 1, scope: !1215)
!1267 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !56, file: !56, line: 51, type: !616, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1268)
!1268 = !{!1269}
!1269 = !DILocalVariable(name: "file", arg: 1, scope: !1267, file: !56, line: 51, type: !38)
!1270 = !DILocation(line: 0, scope: !1267)
!1271 = !DILocation(line: 53, column: 13, scope: !1267)
!1272 = !DILocation(line: 54, column: 1, scope: !1267)
!1273 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !56, file: !56, line: 88, type: !1274, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !60}
!1276 = !{!1277}
!1277 = !DILocalVariable(name: "ignore", arg: 1, scope: !1273, file: !56, line: 88, type: !60)
!1278 = !DILocation(line: 0, scope: !1273)
!1279 = !DILocation(line: 90, column: 16, scope: !1273)
!1280 = !{!1281, !1281, i64 0}
!1281 = !{!"_Bool", !604, i64 0}
!1282 = !DILocation(line: 91, column: 1, scope: !1273)
!1283 = distinct !DISubprogram(name: "close_stdout", scope: !56, file: !56, line: 117, type: !1123, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1284)
!1284 = !{!1285}
!1285 = !DILocalVariable(name: "write_error", scope: !1286, file: !56, line: 122, type: !38)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !56, line: 121, column: 5)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !56, line: 119, column: 7)
!1288 = !DILocation(line: 119, column: 21, scope: !1287)
!1289 = !DILocation(line: 119, column: 7, scope: !1287)
!1290 = !DILocation(line: 119, column: 29, scope: !1287)
!1291 = !DILocation(line: 120, column: 7, scope: !1287)
!1292 = !DILocation(line: 120, column: 12, scope: !1287)
!1293 = !{i8 0, i8 2}
!1294 = !DILocation(line: 120, column: 25, scope: !1287)
!1295 = !DILocation(line: 120, column: 28, scope: !1287)
!1296 = !DILocation(line: 120, column: 34, scope: !1287)
!1297 = !DILocation(line: 119, column: 7, scope: !1283)
!1298 = !DILocation(line: 122, column: 33, scope: !1286)
!1299 = !DILocation(line: 0, scope: !1286)
!1300 = !DILocation(line: 123, column: 11, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1286, file: !56, line: 123, column: 11)
!1302 = !DILocation(line: 0, scope: !1301)
!1303 = !DILocation(line: 123, column: 11, scope: !1286)
!1304 = !DILocation(line: 124, column: 36, scope: !1301)
!1305 = !DILocation(line: 124, column: 9, scope: !1301)
!1306 = !DILocation(line: 127, column: 9, scope: !1301)
!1307 = !DILocation(line: 129, column: 14, scope: !1286)
!1308 = !DILocation(line: 129, column: 7, scope: !1286)
!1309 = !DILocation(line: 134, column: 42, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1283, file: !56, line: 134, column: 7)
!1311 = !DILocation(line: 134, column: 28, scope: !1310)
!1312 = !DILocation(line: 134, column: 50, scope: !1310)
!1313 = !DILocation(line: 134, column: 7, scope: !1283)
!1314 = !DILocation(line: 135, column: 12, scope: !1310)
!1315 = !DILocation(line: 135, column: 5, scope: !1310)
!1316 = !DILocation(line: 136, column: 1, scope: !1283)
!1317 = distinct !DISubprogram(name: "set_program_name", scope: !70, file: !70, line: 39, type: !616, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1318)
!1318 = !{!1319, !1320, !1321}
!1319 = !DILocalVariable(name: "argv0", arg: 1, scope: !1317, file: !70, line: 39, type: !38)
!1320 = !DILocalVariable(name: "slash", scope: !1317, file: !70, line: 46, type: !38)
!1321 = !DILocalVariable(name: "base", scope: !1317, file: !70, line: 47, type: !38)
!1322 = !DILocation(line: 0, scope: !1317)
!1323 = !DILocation(line: 51, column: 13, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !70, line: 51, column: 7)
!1325 = !DILocation(line: 51, column: 7, scope: !1317)
!1326 = !DILocation(line: 55, column: 14, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !70, line: 52, column: 5)
!1328 = !DILocation(line: 54, column: 7, scope: !1327)
!1329 = !DILocation(line: 56, column: 7, scope: !1327)
!1330 = !DILocation(line: 59, column: 11, scope: !1317)
!1331 = !DILocation(line: 60, column: 17, scope: !1317)
!1332 = !DILocation(line: 60, column: 11, scope: !1317)
!1333 = !DILocation(line: 61, column: 12, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1317, file: !70, line: 61, column: 7)
!1335 = !DILocation(line: 61, column: 20, scope: !1334)
!1336 = !DILocation(line: 61, column: 25, scope: !1334)
!1337 = !DILocation(line: 61, column: 42, scope: !1334)
!1338 = !DILocation(line: 61, column: 28, scope: !1334)
!1339 = !DILocation(line: 61, column: 61, scope: !1334)
!1340 = !DILocation(line: 61, column: 7, scope: !1317)
!1341 = !DILocation(line: 64, column: 11, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !70, line: 64, column: 11)
!1343 = distinct !DILexicalBlock(scope: !1334, file: !70, line: 62, column: 5)
!1344 = !DILocation(line: 64, column: 36, scope: !1342)
!1345 = !DILocation(line: 64, column: 11, scope: !1343)
!1346 = !DILocation(line: 66, column: 24, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !70, line: 65, column: 9)
!1348 = !DILocation(line: 70, column: 41, scope: !1347)
!1349 = !DILocation(line: 72, column: 9, scope: !1347)
!1350 = !DILocation(line: 84, column: 16, scope: !1317)
!1351 = !DILocation(line: 90, column: 27, scope: !1317)
!1352 = !DILocation(line: 92, column: 1, scope: !1317)
!1353 = distinct !DISubprogram(name: "clone_quoting_options", scope: !76, file: !76, line: 122, type: !1354, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1357)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!1356, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1357 = !{!1358, !1359, !1360}
!1358 = !DILocalVariable(name: "o", arg: 1, scope: !1353, file: !76, line: 122, type: !1356)
!1359 = !DILocalVariable(name: "e", scope: !1353, file: !76, line: 124, type: !41)
!1360 = !DILocalVariable(name: "p", scope: !1353, file: !76, line: 125, type: !1356)
!1361 = !DILocation(line: 0, scope: !1353)
!1362 = !DILocation(line: 124, column: 11, scope: !1353)
!1363 = !DILocation(line: 125, column: 40, scope: !1353)
!1364 = !DILocation(line: 125, column: 31, scope: !1353)
!1365 = !DILocation(line: 127, column: 9, scope: !1353)
!1366 = !DILocation(line: 128, column: 3, scope: !1353)
!1367 = distinct !DISubprogram(name: "get_quoting_style", scope: !76, file: !76, line: 133, type: !1368, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1372)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!5, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1372 = !{!1373}
!1373 = !DILocalVariable(name: "o", arg: 1, scope: !1367, file: !76, line: 133, type: !1370)
!1374 = !DILocation(line: 0, scope: !1367)
!1375 = !DILocation(line: 135, column: 11, scope: !1367)
!1376 = !DILocation(line: 135, column: 46, scope: !1367)
!1377 = !{!1378, !604, i64 0}
!1378 = !{!"quoting_options", !604, i64 0, !772, i64 4, !604, i64 8, !603, i64 40, !603, i64 48}
!1379 = !DILocation(line: 135, column: 3, scope: !1367)
!1380 = distinct !DISubprogram(name: "set_quoting_style", scope: !76, file: !76, line: 141, type: !1381, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1356, !5}
!1383 = !{!1384, !1385}
!1384 = !DILocalVariable(name: "o", arg: 1, scope: !1380, file: !76, line: 141, type: !1356)
!1385 = !DILocalVariable(name: "s", arg: 2, scope: !1380, file: !76, line: 141, type: !5)
!1386 = !DILocation(line: 0, scope: !1380)
!1387 = !DILocation(line: 143, column: 4, scope: !1380)
!1388 = !DILocation(line: 143, column: 39, scope: !1380)
!1389 = !DILocation(line: 143, column: 45, scope: !1380)
!1390 = !DILocation(line: 144, column: 1, scope: !1380)
!1391 = distinct !DISubprogram(name: "set_char_quoting", scope: !76, file: !76, line: 152, type: !1392, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!41, !1356, !27, !41}
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1401, !1402}
!1395 = !DILocalVariable(name: "o", arg: 1, scope: !1391, file: !76, line: 152, type: !1356)
!1396 = !DILocalVariable(name: "c", arg: 2, scope: !1391, file: !76, line: 152, type: !27)
!1397 = !DILocalVariable(name: "i", arg: 3, scope: !1391, file: !76, line: 152, type: !41)
!1398 = !DILocalVariable(name: "uc", scope: !1391, file: !76, line: 154, type: !970)
!1399 = !DILocalVariable(name: "p", scope: !1391, file: !76, line: 155, type: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1401 = !DILocalVariable(name: "shift", scope: !1391, file: !76, line: 157, type: !41)
!1402 = !DILocalVariable(name: "r", scope: !1391, file: !76, line: 158, type: !41)
!1403 = !DILocation(line: 0, scope: !1391)
!1404 = !DILocation(line: 156, column: 6, scope: !1391)
!1405 = !DILocation(line: 156, column: 62, scope: !1391)
!1406 = !DILocation(line: 156, column: 57, scope: !1391)
!1407 = !DILocation(line: 157, column: 15, scope: !1391)
!1408 = !DILocation(line: 158, column: 12, scope: !1391)
!1409 = !DILocation(line: 158, column: 15, scope: !1391)
!1410 = !DILocation(line: 158, column: 25, scope: !1391)
!1411 = !DILocation(line: 159, column: 13, scope: !1391)
!1412 = !DILocation(line: 159, column: 18, scope: !1391)
!1413 = !DILocation(line: 159, column: 23, scope: !1391)
!1414 = !DILocation(line: 159, column: 6, scope: !1391)
!1415 = !DILocation(line: 160, column: 3, scope: !1391)
!1416 = distinct !DISubprogram(name: "set_quoting_flags", scope: !76, file: !76, line: 168, type: !1417, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!41, !1356, !41}
!1419 = !{!1420, !1421, !1422}
!1420 = !DILocalVariable(name: "o", arg: 1, scope: !1416, file: !76, line: 168, type: !1356)
!1421 = !DILocalVariable(name: "i", arg: 2, scope: !1416, file: !76, line: 168, type: !41)
!1422 = !DILocalVariable(name: "r", scope: !1416, file: !76, line: 170, type: !41)
!1423 = !DILocation(line: 0, scope: !1416)
!1424 = !DILocation(line: 171, column: 8, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1416, file: !76, line: 171, column: 7)
!1426 = !DILocation(line: 171, column: 7, scope: !1416)
!1427 = !DILocation(line: 173, column: 10, scope: !1416)
!1428 = !{!1378, !772, i64 4}
!1429 = !DILocation(line: 174, column: 12, scope: !1416)
!1430 = !DILocation(line: 175, column: 3, scope: !1416)
!1431 = distinct !DISubprogram(name: "set_custom_quoting", scope: !76, file: !76, line: 179, type: !1432, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !1356, !38, !38}
!1434 = !{!1435, !1436, !1437}
!1435 = !DILocalVariable(name: "o", arg: 1, scope: !1431, file: !76, line: 179, type: !1356)
!1436 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1431, file: !76, line: 180, type: !38)
!1437 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1431, file: !76, line: 180, type: !38)
!1438 = !DILocation(line: 0, scope: !1431)
!1439 = !DILocation(line: 182, column: 8, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1431, file: !76, line: 182, column: 7)
!1441 = !DILocation(line: 182, column: 7, scope: !1431)
!1442 = !DILocation(line: 184, column: 6, scope: !1431)
!1443 = !DILocation(line: 184, column: 12, scope: !1431)
!1444 = !DILocation(line: 185, column: 8, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1431, file: !76, line: 185, column: 7)
!1446 = !DILocation(line: 185, column: 19, scope: !1445)
!1447 = !DILocation(line: 186, column: 5, scope: !1445)
!1448 = !DILocation(line: 187, column: 6, scope: !1431)
!1449 = !DILocation(line: 187, column: 17, scope: !1431)
!1450 = !{!1378, !603, i64 40}
!1451 = !DILocation(line: 188, column: 6, scope: !1431)
!1452 = !DILocation(line: 188, column: 18, scope: !1431)
!1453 = !{!1378, !603, i64 48}
!1454 = !DILocation(line: 189, column: 1, scope: !1431)
!1455 = distinct !DISubprogram(name: "quotearg_buffer", scope: !76, file: !76, line: 784, type: !1456, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1458)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!28, !26, !28, !38, !28, !1370}
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466}
!1459 = !DILocalVariable(name: "buffer", arg: 1, scope: !1455, file: !76, line: 784, type: !26)
!1460 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1455, file: !76, line: 784, type: !28)
!1461 = !DILocalVariable(name: "arg", arg: 3, scope: !1455, file: !76, line: 785, type: !38)
!1462 = !DILocalVariable(name: "argsize", arg: 4, scope: !1455, file: !76, line: 785, type: !28)
!1463 = !DILocalVariable(name: "o", arg: 5, scope: !1455, file: !76, line: 786, type: !1370)
!1464 = !DILocalVariable(name: "p", scope: !1455, file: !76, line: 788, type: !1370)
!1465 = !DILocalVariable(name: "e", scope: !1455, file: !76, line: 789, type: !41)
!1466 = !DILocalVariable(name: "r", scope: !1455, file: !76, line: 790, type: !28)
!1467 = !DILocation(line: 0, scope: !1455)
!1468 = !DILocation(line: 788, column: 37, scope: !1455)
!1469 = !DILocation(line: 789, column: 11, scope: !1455)
!1470 = !DILocation(line: 791, column: 43, scope: !1455)
!1471 = !DILocation(line: 791, column: 53, scope: !1455)
!1472 = !DILocation(line: 791, column: 60, scope: !1455)
!1473 = !DILocation(line: 792, column: 43, scope: !1455)
!1474 = !DILocation(line: 792, column: 58, scope: !1455)
!1475 = !DILocation(line: 790, column: 14, scope: !1455)
!1476 = !DILocation(line: 793, column: 9, scope: !1455)
!1477 = !DILocation(line: 794, column: 3, scope: !1455)
!1478 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !76, file: !76, line: 256, type: !1479, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1483)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!28, !26, !28, !38, !28, !5, !41, !1481, !38, !38}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1483 = !{!1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1508, !1509, !1510, !1511, !1512, !1515, !1516, !1534, !1537, !1538, !1545, !1548, !1549, !1550, !1551, !1552, !1553}
!1484 = !DILocalVariable(name: "buffer", arg: 1, scope: !1478, file: !76, line: 256, type: !26)
!1485 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1478, file: !76, line: 256, type: !28)
!1486 = !DILocalVariable(name: "arg", arg: 3, scope: !1478, file: !76, line: 257, type: !38)
!1487 = !DILocalVariable(name: "argsize", arg: 4, scope: !1478, file: !76, line: 257, type: !28)
!1488 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1478, file: !76, line: 258, type: !5)
!1489 = !DILocalVariable(name: "flags", arg: 6, scope: !1478, file: !76, line: 258, type: !41)
!1490 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1478, file: !76, line: 259, type: !1481)
!1491 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1478, file: !76, line: 260, type: !38)
!1492 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1478, file: !76, line: 261, type: !38)
!1493 = !DILocalVariable(name: "i", scope: !1478, file: !76, line: 263, type: !28)
!1494 = !DILocalVariable(name: "len", scope: !1478, file: !76, line: 264, type: !28)
!1495 = !DILocalVariable(name: "orig_buffersize", scope: !1478, file: !76, line: 265, type: !28)
!1496 = !DILocalVariable(name: "quote_string", scope: !1478, file: !76, line: 266, type: !38)
!1497 = !DILocalVariable(name: "quote_string_len", scope: !1478, file: !76, line: 267, type: !28)
!1498 = !DILocalVariable(name: "backslash_escapes", scope: !1478, file: !76, line: 268, type: !60)
!1499 = !DILocalVariable(name: "unibyte_locale", scope: !1478, file: !76, line: 269, type: !60)
!1500 = !DILocalVariable(name: "elide_outer_quotes", scope: !1478, file: !76, line: 270, type: !60)
!1501 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1478, file: !76, line: 271, type: !60)
!1502 = !DILocalVariable(name: "encountered_single_quote", scope: !1478, file: !76, line: 272, type: !60)
!1503 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1478, file: !76, line: 273, type: !60)
!1504 = !DILocalVariable(name: "c", scope: !1505, file: !76, line: 402, type: !970)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !76, line: 401, column: 5)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !76, line: 400, column: 3)
!1507 = distinct !DILexicalBlock(scope: !1478, file: !76, line: 400, column: 3)
!1508 = !DILocalVariable(name: "esc", scope: !1505, file: !76, line: 403, type: !970)
!1509 = !DILocalVariable(name: "is_right_quote", scope: !1505, file: !76, line: 404, type: !60)
!1510 = !DILocalVariable(name: "escaping", scope: !1505, file: !76, line: 405, type: !60)
!1511 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1505, file: !76, line: 406, type: !60)
!1512 = !DILocalVariable(name: "m", scope: !1513, file: !76, line: 610, type: !28)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 608, column: 11)
!1514 = distinct !DILexicalBlock(scope: !1505, file: !76, line: 426, column: 9)
!1515 = !DILocalVariable(name: "printable", scope: !1513, file: !76, line: 612, type: !60)
!1516 = !DILocalVariable(name: "mbstate", scope: !1517, file: !76, line: 621, type: !1519)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !76, line: 620, column: 15)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !76, line: 614, column: 17)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1520, line: 6, baseType: !1521)
!1520 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1522, line: 21, baseType: !1523)
!1522 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1522, line: 13, size: 64, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1523, file: !1522, line: 15, baseType: !41, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1523, file: !1522, line: 20, baseType: !1527, size: 32, offset: 32)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !1522, line: 16, size: 32, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1527, file: !1522, line: 18, baseType: !7, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1527, file: !1522, line: 19, baseType: !1531, size: 32)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !1532)
!1532 = !{!1533}
!1533 = !DISubrange(count: 4)
!1534 = !DILocalVariable(name: "w", scope: !1535, file: !76, line: 631, type: !1536)
!1535 = distinct !DILexicalBlock(scope: !1517, file: !76, line: 630, column: 19)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !29, line: 74, baseType: !41)
!1537 = !DILocalVariable(name: "bytes", scope: !1535, file: !76, line: 632, type: !28)
!1538 = !DILocalVariable(name: "j", scope: !1539, file: !76, line: 657, type: !28)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !76, line: 656, column: 27)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !76, line: 654, column: 29)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !76, line: 649, column: 23)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !76, line: 641, column: 30)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !76, line: 636, column: 30)
!1544 = distinct !DILexicalBlock(scope: !1535, file: !76, line: 634, column: 25)
!1545 = !DILocalVariable(name: "ilim", scope: !1546, file: !76, line: 684, type: !28)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !76, line: 681, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1513, file: !76, line: 680, column: 17)
!1548 = !DILabel(scope: !1478, name: "process_input", file: !76, line: 314)
!1549 = !DILabel(scope: !1514, name: "c_and_shell_escape", file: !76, line: 512)
!1550 = !DILabel(scope: !1514, name: "c_escape", file: !76, line: 517)
!1551 = !DILabel(scope: !1505, name: "store_escape", file: !76, line: 719)
!1552 = !DILabel(scope: !1505, name: "store_c", file: !76, line: 722)
!1553 = !DILabel(scope: !1478, name: "force_outer_quoting_style", file: !76, line: 763)
!1554 = !DILocation(line: 0, scope: !1478)
!1555 = !DILocation(line: 269, column: 25, scope: !1478)
!1556 = !DILocation(line: 269, column: 36, scope: !1478)
!1557 = !DILocation(line: 270, column: 8, scope: !1478)
!1558 = !DILocation(line: 273, column: 3, scope: !1478)
!1559 = !DILocation(line: 265, column: 10, scope: !1478)
!1560 = !DILocation(line: 266, column: 15, scope: !1478)
!1561 = !DILocation(line: 267, column: 10, scope: !1478)
!1562 = !DILocation(line: 268, column: 8, scope: !1478)
!1563 = !DILocation(line: 271, column: 8, scope: !1478)
!1564 = !DILocation(line: 272, column: 8, scope: !1478)
!1565 = !DILocation(line: 273, column: 8, scope: !1478)
!1566 = !DILocation(line: 314, column: 2, scope: !1478)
!1567 = !DILocation(line: 316, column: 3, scope: !1478)
!1568 = !DILocation(line: 323, column: 11, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1478, file: !76, line: 317, column: 5)
!1570 = !DILocation(line: 323, column: 12, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1569, file: !76, line: 323, column: 11)
!1572 = !DILocation(line: 324, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !76, line: 324, column: 9)
!1574 = distinct !DILexicalBlock(scope: !1571, file: !76, line: 324, column: 9)
!1575 = !DILocation(line: 324, column: 9, scope: !1574)
!1576 = !DILocation(line: 362, column: 26, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !76, line: 340, column: 11)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !76, line: 339, column: 13)
!1579 = distinct !DILexicalBlock(scope: !1569, file: !76, line: 338, column: 7)
!1580 = !DILocation(line: 363, column: 27, scope: !1577)
!1581 = !DILocation(line: 364, column: 11, scope: !1577)
!1582 = !DILocation(line: 365, column: 14, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1579, file: !76, line: 365, column: 13)
!1584 = !DILocation(line: 365, column: 13, scope: !1579)
!1585 = !DILocation(line: 366, column: 43, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !76, line: 366, column: 11)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !76, line: 366, column: 11)
!1588 = !DILocation(line: 366, column: 11, scope: !1587)
!1589 = !DILocation(line: 367, column: 13, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !76, line: 367, column: 13)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !76, line: 367, column: 13)
!1592 = !DILocation(line: 367, column: 13, scope: !1591)
!1593 = !DILocation(line: 366, column: 70, scope: !1586)
!1594 = distinct !{!1594, !1588, !1595, !646}
!1595 = !DILocation(line: 367, column: 13, scope: !1587)
!1596 = !DILocation(line: 264, column: 10, scope: !1478)
!1597 = !DILocation(line: 370, column: 28, scope: !1579)
!1598 = !DILocation(line: 372, column: 7, scope: !1569)
!1599 = !DILocation(line: 376, column: 7, scope: !1569)
!1600 = !DILocation(line: 379, column: 7, scope: !1569)
!1601 = !DILocation(line: 381, column: 12, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1569, file: !76, line: 381, column: 11)
!1603 = !DILocation(line: 381, column: 11, scope: !1569)
!1604 = !DILocation(line: 386, column: 12, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1569, file: !76, line: 386, column: 11)
!1606 = !DILocation(line: 386, column: 11, scope: !1569)
!1607 = !DILocation(line: 387, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !76, line: 387, column: 9)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !76, line: 387, column: 9)
!1610 = !DILocation(line: 387, column: 9, scope: !1609)
!1611 = !DILocation(line: 394, column: 7, scope: !1569)
!1612 = !DILocation(line: 397, column: 7, scope: !1569)
!1613 = !DILocation(line: 400, column: 8, scope: !1507)
!1614 = !DILocation(line: 0, scope: !1507)
!1615 = !DILocation(line: 400, column: 27, scope: !1506)
!1616 = !DILocation(line: 400, column: 19, scope: !1506)
!1617 = !DILocation(line: 400, column: 41, scope: !1506)
!1618 = !DILocation(line: 400, column: 48, scope: !1506)
!1619 = !DILocation(line: 400, column: 3, scope: !1507)
!1620 = !DILocation(line: 400, column: 60, scope: !1506)
!1621 = !DILocation(line: 0, scope: !1505)
!1622 = !DILocation(line: 409, column: 11, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1505, file: !76, line: 408, column: 11)
!1624 = !DILocation(line: 411, column: 17, scope: !1623)
!1625 = !DILocation(line: 412, column: 39, scope: !1623)
!1626 = !DILocation(line: 416, column: 32, scope: !1623)
!1627 = !DILocation(line: 412, column: 19, scope: !1623)
!1628 = !DILocation(line: 412, column: 15, scope: !1623)
!1629 = !DILocation(line: 417, column: 11, scope: !1623)
!1630 = !DILocation(line: 417, column: 26, scope: !1623)
!1631 = !DILocation(line: 417, column: 14, scope: !1623)
!1632 = !DILocation(line: 417, column: 63, scope: !1623)
!1633 = !DILocation(line: 408, column: 11, scope: !1505)
!1634 = !DILocation(line: 424, column: 11, scope: !1505)
!1635 = !DILocation(line: 425, column: 7, scope: !1505)
!1636 = !DILocation(line: 428, column: 15, scope: !1514)
!1637 = !DILocation(line: 430, column: 15, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !76, line: 430, column: 15)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !76, line: 429, column: 13)
!1640 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 428, column: 15)
!1641 = !DILocation(line: 430, column: 15, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !76, line: 430, column: 15)
!1643 = !DILocation(line: 430, column: 15, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !76, line: 430, column: 15)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !76, line: 430, column: 15)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !76, line: 430, column: 15)
!1647 = !DILocation(line: 430, column: 15, scope: !1645)
!1648 = !DILocation(line: 430, column: 15, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !76, line: 430, column: 15)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !76, line: 430, column: 15)
!1651 = !DILocation(line: 430, column: 15, scope: !1650)
!1652 = !DILocation(line: 430, column: 15, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !76, line: 430, column: 15)
!1654 = distinct !DILexicalBlock(scope: !1646, file: !76, line: 430, column: 15)
!1655 = !DILocation(line: 430, column: 15, scope: !1654)
!1656 = !DILocation(line: 430, column: 15, scope: !1646)
!1657 = !DILocation(line: 430, column: 15, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !76, line: 430, column: 15)
!1659 = distinct !DILexicalBlock(scope: !1638, file: !76, line: 430, column: 15)
!1660 = !DILocation(line: 430, column: 15, scope: !1659)
!1661 = !DILocation(line: 438, column: 19, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1639, file: !76, line: 437, column: 19)
!1663 = !DILocation(line: 438, column: 48, scope: !1662)
!1664 = !DILocation(line: 438, column: 59, scope: !1662)
!1665 = !DILocation(line: 440, column: 19, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !76, line: 440, column: 19)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !76, line: 440, column: 19)
!1668 = distinct !DILexicalBlock(scope: !1662, file: !76, line: 439, column: 17)
!1669 = !DILocation(line: 440, column: 19, scope: !1667)
!1670 = !DILocation(line: 441, column: 19, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !76, line: 441, column: 19)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !76, line: 441, column: 19)
!1673 = !DILocation(line: 441, column: 19, scope: !1672)
!1674 = !DILocation(line: 442, column: 17, scope: !1668)
!1675 = !DILocation(line: 449, column: 20, scope: !1640)
!1676 = !DILocation(line: 454, column: 11, scope: !1514)
!1677 = !DILocation(line: 457, column: 19, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 455, column: 13)
!1679 = !DILocation(line: 463, column: 19, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1678, file: !76, line: 462, column: 19)
!1681 = !DILocation(line: 463, column: 47, scope: !1680)
!1682 = !DILocation(line: 463, column: 41, scope: !1680)
!1683 = !DILocation(line: 463, column: 52, scope: !1680)
!1684 = !DILocation(line: 462, column: 19, scope: !1678)
!1685 = !DILocation(line: 464, column: 25, scope: !1680)
!1686 = !DILocation(line: 464, column: 17, scope: !1680)
!1687 = !DILocation(line: 471, column: 25, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !76, line: 465, column: 19)
!1689 = !DILocation(line: 475, column: 21, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !76, line: 475, column: 21)
!1691 = distinct !DILexicalBlock(scope: !1688, file: !76, line: 475, column: 21)
!1692 = !DILocation(line: 475, column: 21, scope: !1691)
!1693 = !DILocation(line: 476, column: 21, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !76, line: 476, column: 21)
!1695 = distinct !DILexicalBlock(scope: !1688, file: !76, line: 476, column: 21)
!1696 = !DILocation(line: 476, column: 21, scope: !1695)
!1697 = !DILocation(line: 477, column: 21, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !76, line: 477, column: 21)
!1699 = distinct !DILexicalBlock(scope: !1688, file: !76, line: 477, column: 21)
!1700 = !DILocation(line: 477, column: 21, scope: !1699)
!1701 = !DILocation(line: 478, column: 21, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !76, line: 478, column: 21)
!1703 = distinct !DILexicalBlock(scope: !1688, file: !76, line: 478, column: 21)
!1704 = !DILocation(line: 478, column: 21, scope: !1703)
!1705 = !DILocation(line: 479, column: 21, scope: !1688)
!1706 = !DILocation(line: 492, column: 31, scope: !1514)
!1707 = !DILocation(line: 493, column: 31, scope: !1514)
!1708 = !DILocation(line: 495, column: 31, scope: !1514)
!1709 = !DILocation(line: 496, column: 31, scope: !1514)
!1710 = !DILocation(line: 497, column: 31, scope: !1514)
!1711 = !DILocation(line: 500, column: 15, scope: !1514)
!1712 = !DILocation(line: 502, column: 19, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !76, line: 501, column: 13)
!1714 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 500, column: 15)
!1715 = !DILocation(line: 509, column: 33, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 509, column: 15)
!1717 = !DILocation(line: 0, scope: !1514)
!1718 = !DILocation(line: 512, column: 9, scope: !1514)
!1719 = !DILocation(line: 514, column: 15, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 513, column: 15)
!1721 = !DILocation(line: 517, column: 9, scope: !1514)
!1722 = !DILocation(line: 518, column: 15, scope: !1514)
!1723 = !DILocation(line: 526, column: 15, scope: !1514)
!1724 = !DILocation(line: 526, column: 40, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 526, column: 15)
!1726 = !DILocation(line: 526, column: 47, scope: !1725)
!1727 = !DILocation(line: 526, column: 18, scope: !1725)
!1728 = !DILocation(line: 530, column: 17, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 530, column: 15)
!1730 = !DILocation(line: 530, column: 15, scope: !1514)
!1731 = !DILocation(line: 535, column: 11, scope: !1514)
!1732 = !DILocation(line: 549, column: 15, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 548, column: 15)
!1734 = !DILocation(line: 556, column: 15, scope: !1514)
!1735 = !DILocation(line: 558, column: 19, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !76, line: 557, column: 13)
!1737 = distinct !DILexicalBlock(scope: !1514, file: !76, line: 556, column: 15)
!1738 = !DILocation(line: 561, column: 19, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !76, line: 561, column: 19)
!1740 = !DILocation(line: 561, column: 30, scope: !1739)
!1741 = !DILocation(line: 570, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !76, line: 570, column: 15)
!1743 = distinct !DILexicalBlock(scope: !1736, file: !76, line: 570, column: 15)
!1744 = !DILocation(line: 570, column: 15, scope: !1743)
!1745 = !DILocation(line: 571, column: 15, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !76, line: 571, column: 15)
!1747 = distinct !DILexicalBlock(scope: !1736, file: !76, line: 571, column: 15)
!1748 = !DILocation(line: 571, column: 15, scope: !1747)
!1749 = !DILocation(line: 572, column: 15, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !76, line: 572, column: 15)
!1751 = distinct !DILexicalBlock(scope: !1736, file: !76, line: 572, column: 15)
!1752 = !DILocation(line: 572, column: 15, scope: !1751)
!1753 = !DILocation(line: 574, column: 13, scope: !1736)
!1754 = !DILocation(line: 614, column: 17, scope: !1513)
!1755 = !DILocation(line: 0, scope: !1513)
!1756 = !DILocation(line: 617, column: 29, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1518, file: !76, line: 615, column: 15)
!1758 = !{!1056, !1056, i64 0}
!1759 = !DILocation(line: 617, column: 27, scope: !1757)
!1760 = !DILocation(line: 678, column: 40, scope: !1513)
!1761 = !DILocation(line: 680, column: 23, scope: !1547)
!1762 = !DILocation(line: 621, column: 17, scope: !1517)
!1763 = !DILocation(line: 621, column: 27, scope: !1517)
!1764 = !DILocalVariable(name: "__dest", arg: 1, scope: !1765, file: !1176, line: 57, type: !25)
!1765 = distinct !DISubprogram(name: "memset", scope: !1176, file: !1176, line: 57, type: !1766, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!25, !25, !41, !28}
!1768 = !{!1764, !1769, !1770}
!1769 = !DILocalVariable(name: "__ch", arg: 2, scope: !1765, file: !1176, line: 57, type: !41)
!1770 = !DILocalVariable(name: "__len", arg: 3, scope: !1765, file: !1176, line: 57, type: !28)
!1771 = !DILocation(line: 0, scope: !1765, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 622, column: 17, scope: !1517)
!1773 = !DILocation(line: 59, column: 10, scope: !1765, inlinedAt: !1772)
!1774 = !DILocation(line: 626, column: 29, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1517, file: !76, line: 626, column: 21)
!1776 = !DILocation(line: 626, column: 21, scope: !1517)
!1777 = !DILocation(line: 627, column: 29, scope: !1775)
!1778 = !DILocation(line: 627, column: 19, scope: !1775)
!1779 = !DILocation(line: 629, column: 17, scope: !1517)
!1780 = !DILocation(line: 624, column: 19, scope: !1517)
!1781 = !DILocation(line: 625, column: 27, scope: !1517)
!1782 = !DILocation(line: 631, column: 21, scope: !1535)
!1783 = !DILocation(line: 632, column: 56, scope: !1535)
!1784 = !DILocation(line: 632, column: 50, scope: !1535)
!1785 = !DILocation(line: 633, column: 53, scope: !1535)
!1786 = !DILocation(line: 0, scope: !1535)
!1787 = !DILocation(line: 632, column: 36, scope: !1535)
!1788 = !DILocation(line: 634, column: 25, scope: !1535)
!1789 = !DILocation(line: 644, column: 38, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1542, file: !76, line: 642, column: 23)
!1791 = !DILocation(line: 644, column: 48, scope: !1790)
!1792 = !DILocation(line: 644, column: 25, scope: !1790)
!1793 = !DILocation(line: 644, column: 51, scope: !1790)
!1794 = !DILocation(line: 645, column: 28, scope: !1790)
!1795 = !DILocation(line: 644, column: 34, scope: !1790)
!1796 = distinct !{!1796, !1792, !1794, !646}
!1797 = !DILocation(line: 655, column: 29, scope: !1540)
!1798 = !DILocation(line: 0, scope: !1539)
!1799 = !DILocation(line: 659, column: 49, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !76, line: 658, column: 29)
!1801 = distinct !DILexicalBlock(scope: !1539, file: !76, line: 658, column: 29)
!1802 = !DILocation(line: 659, column: 39, scope: !1800)
!1803 = !DILocation(line: 659, column: 31, scope: !1800)
!1804 = !DILocation(line: 658, column: 53, scope: !1800)
!1805 = !DILocation(line: 658, column: 43, scope: !1800)
!1806 = !DILocation(line: 658, column: 29, scope: !1801)
!1807 = distinct !{!1807, !1806, !1808, !646}
!1808 = !DILocation(line: 667, column: 33, scope: !1801)
!1809 = !DILocation(line: 674, column: 19, scope: !1517)
!1810 = !DILocation(line: 670, column: 41, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1541, file: !76, line: 670, column: 29)
!1812 = !DILocation(line: 670, column: 31, scope: !1811)
!1813 = !DILocation(line: 670, column: 29, scope: !1541)
!1814 = !DILocation(line: 672, column: 27, scope: !1541)
!1815 = !DILocation(line: 675, column: 26, scope: !1517)
!1816 = !DILocation(line: 675, column: 24, scope: !1517)
!1817 = !DILocation(line: 674, column: 19, scope: !1535)
!1818 = distinct !{!1818, !1779, !1819, !646}
!1819 = !DILocation(line: 675, column: 44, scope: !1517)
!1820 = !DILocation(line: 676, column: 15, scope: !1518)
!1821 = !DILocation(line: 680, column: 19, scope: !1547)
!1822 = !DILocation(line: 680, column: 45, scope: !1547)
!1823 = !DILocation(line: 684, column: 33, scope: !1546)
!1824 = !DILocation(line: 0, scope: !1546)
!1825 = !DILocation(line: 686, column: 17, scope: !1546)
!1826 = !DILocation(line: 405, column: 12, scope: !1505)
!1827 = !DILocation(line: 688, column: 43, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !76, line: 688, column: 25)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !76, line: 687, column: 19)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !76, line: 686, column: 17)
!1831 = distinct !DILexicalBlock(scope: !1546, file: !76, line: 686, column: 17)
!1832 = !DILocation(line: 690, column: 25, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !76, line: 690, column: 25)
!1834 = distinct !DILexicalBlock(scope: !1828, file: !76, line: 689, column: 23)
!1835 = !DILocation(line: 690, column: 25, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1833, file: !76, line: 690, column: 25)
!1837 = !DILocation(line: 690, column: 25, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !76, line: 690, column: 25)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !76, line: 690, column: 25)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !76, line: 690, column: 25)
!1841 = !DILocation(line: 690, column: 25, scope: !1839)
!1842 = !DILocation(line: 690, column: 25, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !76, line: 690, column: 25)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !76, line: 690, column: 25)
!1845 = !DILocation(line: 690, column: 25, scope: !1844)
!1846 = !DILocation(line: 690, column: 25, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !76, line: 690, column: 25)
!1848 = distinct !DILexicalBlock(scope: !1840, file: !76, line: 690, column: 25)
!1849 = !DILocation(line: 690, column: 25, scope: !1848)
!1850 = !DILocation(line: 690, column: 25, scope: !1840)
!1851 = !DILocation(line: 690, column: 25, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !76, line: 690, column: 25)
!1853 = distinct !DILexicalBlock(scope: !1833, file: !76, line: 690, column: 25)
!1854 = !DILocation(line: 690, column: 25, scope: !1853)
!1855 = !DILocation(line: 691, column: 25, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !76, line: 691, column: 25)
!1857 = distinct !DILexicalBlock(scope: !1834, file: !76, line: 691, column: 25)
!1858 = !DILocation(line: 691, column: 25, scope: !1857)
!1859 = !DILocation(line: 692, column: 25, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !76, line: 692, column: 25)
!1861 = distinct !DILexicalBlock(scope: !1834, file: !76, line: 692, column: 25)
!1862 = !DILocation(line: 692, column: 25, scope: !1861)
!1863 = !DILocation(line: 693, column: 38, scope: !1834)
!1864 = !DILocation(line: 693, column: 33, scope: !1834)
!1865 = !DILocation(line: 694, column: 23, scope: !1834)
!1866 = !DILocation(line: 695, column: 30, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1828, file: !76, line: 695, column: 30)
!1868 = !DILocation(line: 695, column: 30, scope: !1828)
!1869 = !DILocation(line: 697, column: 25, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !76, line: 697, column: 25)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !76, line: 697, column: 25)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !76, line: 696, column: 23)
!1873 = !DILocation(line: 697, column: 25, scope: !1871)
!1874 = !DILocation(line: 699, column: 23, scope: !1872)
!1875 = !DILocation(line: 700, column: 35, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1829, file: !76, line: 700, column: 25)
!1877 = !DILocation(line: 700, column: 30, scope: !1876)
!1878 = !DILocation(line: 700, column: 25, scope: !1829)
!1879 = !DILocation(line: 702, column: 21, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !76, line: 702, column: 21)
!1881 = distinct !DILexicalBlock(scope: !1829, file: !76, line: 702, column: 21)
!1882 = !DILocation(line: 702, column: 21, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !76, line: 702, column: 21)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !76, line: 702, column: 21)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !76, line: 702, column: 21)
!1886 = !DILocation(line: 702, column: 21, scope: !1884)
!1887 = !DILocation(line: 702, column: 21, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !76, line: 702, column: 21)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !76, line: 702, column: 21)
!1890 = !DILocation(line: 702, column: 21, scope: !1889)
!1891 = !DILocation(line: 702, column: 21, scope: !1885)
!1892 = !DILocation(line: 0, scope: !1829)
!1893 = !DILocation(line: 703, column: 21, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !76, line: 703, column: 21)
!1895 = distinct !DILexicalBlock(scope: !1829, file: !76, line: 703, column: 21)
!1896 = !DILocation(line: 703, column: 21, scope: !1895)
!1897 = !DILocation(line: 704, column: 25, scope: !1829)
!1898 = !DILocation(line: 686, column: 17, scope: !1830)
!1899 = distinct !{!1899, !1900, !1901}
!1900 = !DILocation(line: 686, column: 17, scope: !1831)
!1901 = !DILocation(line: 705, column: 19, scope: !1831)
!1902 = !DILocation(line: 416, column: 30, scope: !1623)
!1903 = !DILocation(line: 712, column: 34, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1505, file: !76, line: 712, column: 11)
!1905 = !DILocation(line: 715, column: 35, scope: !1904)
!1906 = !DILocation(line: 715, column: 17, scope: !1904)
!1907 = !DILocation(line: 715, column: 47, scope: !1904)
!1908 = !DILocation(line: 715, column: 65, scope: !1904)
!1909 = !DILocation(line: 716, column: 11, scope: !1904)
!1910 = !DILocation(line: 712, column: 11, scope: !1505)
!1911 = !DILocation(line: 400, column: 10, scope: !1507)
!1912 = !DILocation(line: 719, column: 5, scope: !1505)
!1913 = !DILocation(line: 720, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1505, file: !76, line: 720, column: 7)
!1915 = !DILocation(line: 720, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1914, file: !76, line: 720, column: 7)
!1917 = !DILocation(line: 720, column: 7, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !76, line: 720, column: 7)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !76, line: 720, column: 7)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !76, line: 720, column: 7)
!1921 = !DILocation(line: 720, column: 7, scope: !1919)
!1922 = !DILocation(line: 720, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !76, line: 720, column: 7)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !76, line: 720, column: 7)
!1925 = !DILocation(line: 720, column: 7, scope: !1924)
!1926 = !DILocation(line: 720, column: 7, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !76, line: 720, column: 7)
!1928 = distinct !DILexicalBlock(scope: !1920, file: !76, line: 720, column: 7)
!1929 = !DILocation(line: 720, column: 7, scope: !1928)
!1930 = !DILocation(line: 720, column: 7, scope: !1920)
!1931 = !DILocation(line: 720, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !76, line: 720, column: 7)
!1933 = distinct !DILexicalBlock(scope: !1914, file: !76, line: 720, column: 7)
!1934 = !DILocation(line: 720, column: 7, scope: !1933)
!1935 = !DILocation(line: 722, column: 5, scope: !1505)
!1936 = !DILocation(line: 723, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !76, line: 723, column: 7)
!1938 = distinct !DILexicalBlock(scope: !1505, file: !76, line: 723, column: 7)
!1939 = !DILocation(line: 424, column: 9, scope: !1505)
!1940 = !DILocation(line: 723, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !76, line: 723, column: 7)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !76, line: 723, column: 7)
!1943 = distinct !DILexicalBlock(scope: !1937, file: !76, line: 723, column: 7)
!1944 = !DILocation(line: 723, column: 7, scope: !1942)
!1945 = !DILocation(line: 723, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !76, line: 723, column: 7)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !76, line: 723, column: 7)
!1948 = !DILocation(line: 723, column: 7, scope: !1947)
!1949 = !DILocation(line: 723, column: 7, scope: !1943)
!1950 = !DILocation(line: 724, column: 7, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !76, line: 724, column: 7)
!1952 = distinct !DILexicalBlock(scope: !1505, file: !76, line: 724, column: 7)
!1953 = !DILocation(line: 724, column: 7, scope: !1952)
!1954 = !DILocation(line: 726, column: 13, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1505, file: !76, line: 726, column: 11)
!1956 = !DILocation(line: 726, column: 11, scope: !1505)
!1957 = !DILocation(line: 728, column: 5, scope: !1506)
!1958 = !DILocation(line: 400, column: 75, scope: !1506)
!1959 = !DILocation(line: 400, column: 3, scope: !1506)
!1960 = distinct !{!1960, !1619, !1961, !646}
!1961 = !DILocation(line: 728, column: 5, scope: !1507)
!1962 = !DILocation(line: 730, column: 11, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1478, file: !76, line: 730, column: 7)
!1964 = !DILocation(line: 730, column: 16, scope: !1963)
!1965 = !DILocation(line: 738, column: 51, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1478, file: !76, line: 738, column: 7)
!1967 = !DILocation(line: 741, column: 11, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !76, line: 741, column: 11)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !76, line: 740, column: 5)
!1970 = !DILocation(line: 741, column: 11, scope: !1969)
!1971 = !DILocation(line: 742, column: 16, scope: !1968)
!1972 = !DILocation(line: 742, column: 9, scope: !1968)
!1973 = !DILocation(line: 746, column: 18, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1968, file: !76, line: 746, column: 16)
!1975 = !DILocation(line: 746, column: 29, scope: !1974)
!1976 = !DILocation(line: 755, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1478, file: !76, line: 755, column: 7)
!1978 = !DILocation(line: 755, column: 20, scope: !1977)
!1979 = !DILocation(line: 756, column: 12, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !76, line: 756, column: 5)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !76, line: 756, column: 5)
!1982 = !DILocation(line: 756, column: 5, scope: !1981)
!1983 = !DILocation(line: 757, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !76, line: 757, column: 7)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !76, line: 757, column: 7)
!1986 = !DILocation(line: 757, column: 7, scope: !1985)
!1987 = !DILocation(line: 756, column: 39, scope: !1980)
!1988 = distinct !{!1988, !1982, !1989, !646}
!1989 = !DILocation(line: 757, column: 7, scope: !1981)
!1990 = !DILocation(line: 759, column: 11, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1478, file: !76, line: 759, column: 7)
!1992 = !DILocation(line: 759, column: 7, scope: !1478)
!1993 = !DILocation(line: 760, column: 5, scope: !1991)
!1994 = !DILocation(line: 760, column: 17, scope: !1991)
!1995 = !DILocation(line: 763, column: 2, scope: !1478)
!1996 = !DILocation(line: 766, column: 51, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1478, file: !76, line: 766, column: 7)
!1998 = !DILocation(line: 766, column: 21, scope: !1997)
!1999 = !DILocation(line: 770, column: 42, scope: !1478)
!2000 = !DILocation(line: 768, column: 10, scope: !1478)
!2001 = !DILocation(line: 768, column: 3, scope: !1478)
!2002 = !DILocation(line: 772, column: 1, scope: !1478)
!2003 = distinct !DISubprogram(name: "gettext_quote", scope: !76, file: !76, line: 207, type: !2004, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!38, !38, !5}
!2006 = !{!2007, !2008, !2009, !2010}
!2007 = !DILocalVariable(name: "msgid", arg: 1, scope: !2003, file: !76, line: 207, type: !38)
!2008 = !DILocalVariable(name: "s", arg: 2, scope: !2003, file: !76, line: 207, type: !5)
!2009 = !DILocalVariable(name: "translation", scope: !2003, file: !76, line: 209, type: !38)
!2010 = !DILocalVariable(name: "locale_code", scope: !2003, file: !76, line: 210, type: !38)
!2011 = !DILocation(line: 0, scope: !2003)
!2012 = !DILocation(line: 209, column: 29, scope: !2003)
!2013 = !DILocation(line: 212, column: 19, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2003, file: !76, line: 212, column: 7)
!2015 = !DILocation(line: 212, column: 7, scope: !2003)
!2016 = !DILocation(line: 233, column: 17, scope: !2003)
!2017 = !DILocalVariable(name: "s1", arg: 1, scope: !2018, file: !2019, line: 160, type: !38)
!2018 = distinct !DISubprogram(name: "strcaseeq0", scope: !2019, file: !2019, line: 160, type: !2020, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2022)
!2019 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!41, !38, !38, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!2022 = !{!2017, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!2023 = !DILocalVariable(name: "s2", arg: 2, scope: !2018, file: !2019, line: 160, type: !38)
!2024 = !DILocalVariable(name: "s20", arg: 3, scope: !2018, file: !2019, line: 160, type: !27)
!2025 = !DILocalVariable(name: "s21", arg: 4, scope: !2018, file: !2019, line: 160, type: !27)
!2026 = !DILocalVariable(name: "s22", arg: 5, scope: !2018, file: !2019, line: 160, type: !27)
!2027 = !DILocalVariable(name: "s23", arg: 6, scope: !2018, file: !2019, line: 160, type: !27)
!2028 = !DILocalVariable(name: "s24", arg: 7, scope: !2018, file: !2019, line: 160, type: !27)
!2029 = !DILocalVariable(name: "s25", arg: 8, scope: !2018, file: !2019, line: 160, type: !27)
!2030 = !DILocalVariable(name: "s26", arg: 9, scope: !2018, file: !2019, line: 160, type: !27)
!2031 = !DILocalVariable(name: "s27", arg: 10, scope: !2018, file: !2019, line: 160, type: !27)
!2032 = !DILocalVariable(name: "s28", arg: 11, scope: !2018, file: !2019, line: 160, type: !27)
!2033 = !DILocation(line: 0, scope: !2018, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 234, column: 7, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2003, file: !76, line: 234, column: 7)
!2036 = !DILocation(line: 162, column: 7, scope: !2037, inlinedAt: !2034)
!2037 = distinct !DILexicalBlock(scope: !2018, file: !2019, line: 162, column: 7)
!2038 = !DILocalVariable(name: "s1", arg: 1, scope: !2039, file: !2019, line: 146, type: !38)
!2039 = distinct !DISubprogram(name: "strcaseeq1", scope: !2019, file: !2019, line: 146, type: !2040, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!41, !38, !38, !27, !27, !27, !27, !27, !27, !27, !27}
!2042 = !{!2038, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051}
!2043 = !DILocalVariable(name: "s2", arg: 2, scope: !2039, file: !2019, line: 146, type: !38)
!2044 = !DILocalVariable(name: "s21", arg: 3, scope: !2039, file: !2019, line: 146, type: !27)
!2045 = !DILocalVariable(name: "s22", arg: 4, scope: !2039, file: !2019, line: 146, type: !27)
!2046 = !DILocalVariable(name: "s23", arg: 5, scope: !2039, file: !2019, line: 146, type: !27)
!2047 = !DILocalVariable(name: "s24", arg: 6, scope: !2039, file: !2019, line: 146, type: !27)
!2048 = !DILocalVariable(name: "s25", arg: 7, scope: !2039, file: !2019, line: 146, type: !27)
!2049 = !DILocalVariable(name: "s26", arg: 8, scope: !2039, file: !2019, line: 146, type: !27)
!2050 = !DILocalVariable(name: "s27", arg: 9, scope: !2039, file: !2019, line: 146, type: !27)
!2051 = !DILocalVariable(name: "s28", arg: 10, scope: !2039, file: !2019, line: 146, type: !27)
!2052 = !DILocation(line: 0, scope: !2039, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 167, column: 16, scope: !2054, inlinedAt: !2034)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !2019, line: 164, column: 11)
!2055 = distinct !DILexicalBlock(scope: !2037, file: !2019, line: 163, column: 5)
!2056 = !DILocation(line: 148, column: 7, scope: !2057, inlinedAt: !2053)
!2057 = distinct !DILexicalBlock(scope: !2039, file: !2019, line: 148, column: 7)
!2058 = !DILocalVariable(name: "s1", arg: 1, scope: !2059, file: !2019, line: 132, type: !38)
!2059 = distinct !DISubprogram(name: "strcaseeq2", scope: !2019, file: !2019, line: 132, type: !2060, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!41, !38, !38, !27, !27, !27, !27, !27, !27, !27}
!2062 = !{!2058, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!2063 = !DILocalVariable(name: "s2", arg: 2, scope: !2059, file: !2019, line: 132, type: !38)
!2064 = !DILocalVariable(name: "s22", arg: 3, scope: !2059, file: !2019, line: 132, type: !27)
!2065 = !DILocalVariable(name: "s23", arg: 4, scope: !2059, file: !2019, line: 132, type: !27)
!2066 = !DILocalVariable(name: "s24", arg: 5, scope: !2059, file: !2019, line: 132, type: !27)
!2067 = !DILocalVariable(name: "s25", arg: 6, scope: !2059, file: !2019, line: 132, type: !27)
!2068 = !DILocalVariable(name: "s26", arg: 7, scope: !2059, file: !2019, line: 132, type: !27)
!2069 = !DILocalVariable(name: "s27", arg: 8, scope: !2059, file: !2019, line: 132, type: !27)
!2070 = !DILocalVariable(name: "s28", arg: 9, scope: !2059, file: !2019, line: 132, type: !27)
!2071 = !DILocation(line: 0, scope: !2059, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 153, column: 16, scope: !2073, inlinedAt: !2053)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !2019, line: 150, column: 11)
!2074 = distinct !DILexicalBlock(scope: !2057, file: !2019, line: 149, column: 5)
!2075 = !DILocation(line: 134, column: 7, scope: !2076, inlinedAt: !2072)
!2076 = distinct !DILexicalBlock(scope: !2059, file: !2019, line: 134, column: 7)
!2077 = !DILocalVariable(name: "s1", arg: 1, scope: !2078, file: !2019, line: 118, type: !38)
!2078 = distinct !DISubprogram(name: "strcaseeq3", scope: !2019, file: !2019, line: 118, type: !2079, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2081)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!41, !38, !38, !27, !27, !27, !27, !27, !27}
!2081 = !{!2077, !2082, !2083, !2084, !2085, !2086, !2087, !2088}
!2082 = !DILocalVariable(name: "s2", arg: 2, scope: !2078, file: !2019, line: 118, type: !38)
!2083 = !DILocalVariable(name: "s23", arg: 3, scope: !2078, file: !2019, line: 118, type: !27)
!2084 = !DILocalVariable(name: "s24", arg: 4, scope: !2078, file: !2019, line: 118, type: !27)
!2085 = !DILocalVariable(name: "s25", arg: 5, scope: !2078, file: !2019, line: 118, type: !27)
!2086 = !DILocalVariable(name: "s26", arg: 6, scope: !2078, file: !2019, line: 118, type: !27)
!2087 = !DILocalVariable(name: "s27", arg: 7, scope: !2078, file: !2019, line: 118, type: !27)
!2088 = !DILocalVariable(name: "s28", arg: 8, scope: !2078, file: !2019, line: 118, type: !27)
!2089 = !DILocation(line: 0, scope: !2078, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 139, column: 16, scope: !2091, inlinedAt: !2072)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !2019, line: 136, column: 11)
!2092 = distinct !DILexicalBlock(scope: !2076, file: !2019, line: 135, column: 5)
!2093 = !DILocation(line: 120, column: 7, scope: !2094, inlinedAt: !2090)
!2094 = distinct !DILexicalBlock(scope: !2078, file: !2019, line: 120, column: 7)
!2095 = !DILocation(line: 120, column: 7, scope: !2078, inlinedAt: !2090)
!2096 = !DILocalVariable(name: "s1", arg: 1, scope: !2097, file: !2019, line: 104, type: !38)
!2097 = distinct !DISubprogram(name: "strcaseeq4", scope: !2019, file: !2019, line: 104, type: !2098, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!41, !38, !38, !27, !27, !27, !27, !27}
!2100 = !{!2096, !2101, !2102, !2103, !2104, !2105, !2106}
!2101 = !DILocalVariable(name: "s2", arg: 2, scope: !2097, file: !2019, line: 104, type: !38)
!2102 = !DILocalVariable(name: "s24", arg: 3, scope: !2097, file: !2019, line: 104, type: !27)
!2103 = !DILocalVariable(name: "s25", arg: 4, scope: !2097, file: !2019, line: 104, type: !27)
!2104 = !DILocalVariable(name: "s26", arg: 5, scope: !2097, file: !2019, line: 104, type: !27)
!2105 = !DILocalVariable(name: "s27", arg: 6, scope: !2097, file: !2019, line: 104, type: !27)
!2106 = !DILocalVariable(name: "s28", arg: 7, scope: !2097, file: !2019, line: 104, type: !27)
!2107 = !DILocation(line: 0, scope: !2097, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 125, column: 16, scope: !2109, inlinedAt: !2090)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !2019, line: 122, column: 11)
!2110 = distinct !DILexicalBlock(scope: !2094, file: !2019, line: 121, column: 5)
!2111 = !DILocation(line: 106, column: 7, scope: !2112, inlinedAt: !2108)
!2112 = distinct !DILexicalBlock(scope: !2097, file: !2019, line: 106, column: 7)
!2113 = !DILocation(line: 106, column: 7, scope: !2097, inlinedAt: !2108)
!2114 = !DILocalVariable(name: "s1", arg: 1, scope: !2115, file: !2019, line: 90, type: !38)
!2115 = distinct !DISubprogram(name: "strcaseeq5", scope: !2019, file: !2019, line: 90, type: !2116, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!41, !38, !38, !27, !27, !27, !27}
!2118 = !{!2114, !2119, !2120, !2121, !2122, !2123}
!2119 = !DILocalVariable(name: "s2", arg: 2, scope: !2115, file: !2019, line: 90, type: !38)
!2120 = !DILocalVariable(name: "s25", arg: 3, scope: !2115, file: !2019, line: 90, type: !27)
!2121 = !DILocalVariable(name: "s26", arg: 4, scope: !2115, file: !2019, line: 90, type: !27)
!2122 = !DILocalVariable(name: "s27", arg: 5, scope: !2115, file: !2019, line: 90, type: !27)
!2123 = !DILocalVariable(name: "s28", arg: 6, scope: !2115, file: !2019, line: 90, type: !27)
!2124 = !DILocation(line: 0, scope: !2115, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 111, column: 16, scope: !2126, inlinedAt: !2108)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !2019, line: 108, column: 11)
!2127 = distinct !DILexicalBlock(scope: !2112, file: !2019, line: 107, column: 5)
!2128 = !DILocation(line: 92, column: 7, scope: !2129, inlinedAt: !2125)
!2129 = distinct !DILexicalBlock(scope: !2115, file: !2019, line: 92, column: 7)
!2130 = !DILocation(line: 92, column: 7, scope: !2115, inlinedAt: !2125)
!2131 = !DILocation(line: 235, column: 12, scope: !2035)
!2132 = !DILocation(line: 235, column: 21, scope: !2035)
!2133 = !DILocation(line: 235, column: 5, scope: !2035)
!2134 = !DILocation(line: 0, scope: !2039, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 167, column: 16, scope: !2054, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 236, column: 7, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2003, file: !76, line: 236, column: 7)
!2138 = !DILocation(line: 148, column: 7, scope: !2057, inlinedAt: !2135)
!2139 = !DILocation(line: 0, scope: !2059, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 153, column: 16, scope: !2073, inlinedAt: !2135)
!2141 = !DILocation(line: 134, column: 7, scope: !2076, inlinedAt: !2140)
!2142 = !DILocation(line: 134, column: 7, scope: !2059, inlinedAt: !2140)
!2143 = !DILocation(line: 0, scope: !2078, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 139, column: 16, scope: !2091, inlinedAt: !2140)
!2145 = !DILocation(line: 120, column: 7, scope: !2094, inlinedAt: !2144)
!2146 = !DILocation(line: 120, column: 7, scope: !2078, inlinedAt: !2144)
!2147 = !DILocation(line: 0, scope: !2097, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 125, column: 16, scope: !2109, inlinedAt: !2144)
!2149 = !DILocation(line: 106, column: 7, scope: !2112, inlinedAt: !2148)
!2150 = !DILocation(line: 106, column: 7, scope: !2097, inlinedAt: !2148)
!2151 = !DILocation(line: 0, scope: !2115, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 111, column: 16, scope: !2126, inlinedAt: !2148)
!2153 = !DILocation(line: 92, column: 7, scope: !2129, inlinedAt: !2152)
!2154 = !DILocation(line: 92, column: 7, scope: !2115, inlinedAt: !2152)
!2155 = !DILocalVariable(name: "s1", arg: 1, scope: !2156, file: !2019, line: 76, type: !38)
!2156 = distinct !DISubprogram(name: "strcaseeq6", scope: !2019, file: !2019, line: 76, type: !2157, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!41, !38, !38, !27, !27, !27}
!2159 = !{!2155, !2160, !2161, !2162, !2163}
!2160 = !DILocalVariable(name: "s2", arg: 2, scope: !2156, file: !2019, line: 76, type: !38)
!2161 = !DILocalVariable(name: "s26", arg: 3, scope: !2156, file: !2019, line: 76, type: !27)
!2162 = !DILocalVariable(name: "s27", arg: 4, scope: !2156, file: !2019, line: 76, type: !27)
!2163 = !DILocalVariable(name: "s28", arg: 5, scope: !2156, file: !2019, line: 76, type: !27)
!2164 = !DILocation(line: 0, scope: !2156, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 97, column: 16, scope: !2166, inlinedAt: !2152)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !2019, line: 94, column: 11)
!2167 = distinct !DILexicalBlock(scope: !2129, file: !2019, line: 93, column: 5)
!2168 = !DILocation(line: 78, column: 7, scope: !2169, inlinedAt: !2165)
!2169 = distinct !DILexicalBlock(scope: !2156, file: !2019, line: 78, column: 7)
!2170 = !DILocation(line: 78, column: 7, scope: !2156, inlinedAt: !2165)
!2171 = !DILocalVariable(name: "s1", arg: 1, scope: !2172, file: !2019, line: 62, type: !38)
!2172 = distinct !DISubprogram(name: "strcaseeq7", scope: !2019, file: !2019, line: 62, type: !2173, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!41, !38, !38, !27, !27}
!2175 = !{!2171, !2176, !2177, !2178}
!2176 = !DILocalVariable(name: "s2", arg: 2, scope: !2172, file: !2019, line: 62, type: !38)
!2177 = !DILocalVariable(name: "s27", arg: 3, scope: !2172, file: !2019, line: 62, type: !27)
!2178 = !DILocalVariable(name: "s28", arg: 4, scope: !2172, file: !2019, line: 62, type: !27)
!2179 = !DILocation(line: 0, scope: !2172, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 83, column: 16, scope: !2181, inlinedAt: !2165)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !2019, line: 80, column: 11)
!2182 = distinct !DILexicalBlock(scope: !2169, file: !2019, line: 79, column: 5)
!2183 = !DILocation(line: 64, column: 7, scope: !2184, inlinedAt: !2180)
!2184 = distinct !DILexicalBlock(scope: !2172, file: !2019, line: 64, column: 7)
!2185 = !DILocation(line: 236, column: 7, scope: !2003)
!2186 = !DILocation(line: 237, column: 12, scope: !2137)
!2187 = !DILocation(line: 237, column: 21, scope: !2137)
!2188 = !DILocation(line: 237, column: 5, scope: !2137)
!2189 = !DILocation(line: 239, column: 13, scope: !2003)
!2190 = !DILocation(line: 239, column: 11, scope: !2003)
!2191 = !DILocation(line: 239, column: 3, scope: !2003)
!2192 = !DILocation(line: 240, column: 1, scope: !2003)
!2193 = !DISubprogram(name: "iswprint", scope: !2194, file: !2194, line: 120, type: !2195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!2194 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!41, !7}
!2197 = !DISubprogram(name: "mbsinit", scope: !2198, file: !2198, line: 292, type: !2199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!2198 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!41, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!2203 = distinct !DISubprogram(name: "quotearg_alloc", scope: !76, file: !76, line: 799, type: !2204, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!26, !38, !28, !1370}
!2206 = !{!2207, !2208, !2209}
!2207 = !DILocalVariable(name: "arg", arg: 1, scope: !2203, file: !76, line: 799, type: !38)
!2208 = !DILocalVariable(name: "argsize", arg: 2, scope: !2203, file: !76, line: 799, type: !28)
!2209 = !DILocalVariable(name: "o", arg: 3, scope: !2203, file: !76, line: 800, type: !1370)
!2210 = !DILocation(line: 0, scope: !2203)
!2211 = !DILocalVariable(name: "arg", arg: 1, scope: !2212, file: !76, line: 812, type: !38)
!2212 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !76, file: !76, line: 812, type: !2213, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!26, !38, !28, !166, !1370}
!2215 = !{!2211, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223}
!2216 = !DILocalVariable(name: "argsize", arg: 2, scope: !2212, file: !76, line: 812, type: !28)
!2217 = !DILocalVariable(name: "size", arg: 3, scope: !2212, file: !76, line: 812, type: !166)
!2218 = !DILocalVariable(name: "o", arg: 4, scope: !2212, file: !76, line: 813, type: !1370)
!2219 = !DILocalVariable(name: "p", scope: !2212, file: !76, line: 815, type: !1370)
!2220 = !DILocalVariable(name: "e", scope: !2212, file: !76, line: 816, type: !41)
!2221 = !DILocalVariable(name: "flags", scope: !2212, file: !76, line: 818, type: !41)
!2222 = !DILocalVariable(name: "bufsize", scope: !2212, file: !76, line: 819, type: !28)
!2223 = !DILocalVariable(name: "buf", scope: !2212, file: !76, line: 823, type: !26)
!2224 = !DILocation(line: 0, scope: !2212, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 802, column: 10, scope: !2203)
!2226 = !DILocation(line: 815, column: 37, scope: !2212, inlinedAt: !2225)
!2227 = !DILocation(line: 816, column: 11, scope: !2212, inlinedAt: !2225)
!2228 = !DILocation(line: 818, column: 18, scope: !2212, inlinedAt: !2225)
!2229 = !DILocation(line: 818, column: 24, scope: !2212, inlinedAt: !2225)
!2230 = !DILocation(line: 819, column: 69, scope: !2212, inlinedAt: !2225)
!2231 = !DILocation(line: 820, column: 53, scope: !2212, inlinedAt: !2225)
!2232 = !DILocation(line: 821, column: 49, scope: !2212, inlinedAt: !2225)
!2233 = !DILocation(line: 822, column: 49, scope: !2212, inlinedAt: !2225)
!2234 = !DILocation(line: 819, column: 20, scope: !2212, inlinedAt: !2225)
!2235 = !DILocation(line: 822, column: 62, scope: !2212, inlinedAt: !2225)
!2236 = !DILocalVariable(name: "n", arg: 1, scope: !2237, file: !162, line: 216, type: !28)
!2237 = distinct !DISubprogram(name: "xcharalloc", scope: !162, file: !162, line: 216, type: !1147, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2238)
!2238 = !{!2236}
!2239 = !DILocation(line: 0, scope: !2237, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 823, column: 15, scope: !2212, inlinedAt: !2225)
!2241 = !DILocation(line: 218, column: 10, scope: !2237, inlinedAt: !2240)
!2242 = !DILocation(line: 824, column: 60, scope: !2212, inlinedAt: !2225)
!2243 = !DILocation(line: 826, column: 32, scope: !2212, inlinedAt: !2225)
!2244 = !DILocation(line: 826, column: 47, scope: !2212, inlinedAt: !2225)
!2245 = !DILocation(line: 824, column: 3, scope: !2212, inlinedAt: !2225)
!2246 = !DILocation(line: 827, column: 9, scope: !2212, inlinedAt: !2225)
!2247 = !DILocation(line: 802, column: 3, scope: !2203)
!2248 = !DILocation(line: 0, scope: !2212)
!2249 = !DILocation(line: 815, column: 37, scope: !2212)
!2250 = !DILocation(line: 816, column: 11, scope: !2212)
!2251 = !DILocation(line: 818, column: 18, scope: !2212)
!2252 = !DILocation(line: 818, column: 27, scope: !2212)
!2253 = !DILocation(line: 818, column: 24, scope: !2212)
!2254 = !DILocation(line: 819, column: 69, scope: !2212)
!2255 = !DILocation(line: 820, column: 53, scope: !2212)
!2256 = !DILocation(line: 821, column: 49, scope: !2212)
!2257 = !DILocation(line: 822, column: 49, scope: !2212)
!2258 = !DILocation(line: 819, column: 20, scope: !2212)
!2259 = !DILocation(line: 822, column: 62, scope: !2212)
!2260 = !DILocation(line: 0, scope: !2237, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 823, column: 15, scope: !2212)
!2262 = !DILocation(line: 218, column: 10, scope: !2237, inlinedAt: !2261)
!2263 = !DILocation(line: 824, column: 60, scope: !2212)
!2264 = !DILocation(line: 826, column: 32, scope: !2212)
!2265 = !DILocation(line: 826, column: 47, scope: !2212)
!2266 = !DILocation(line: 824, column: 3, scope: !2212)
!2267 = !DILocation(line: 827, column: 9, scope: !2212)
!2268 = !DILocation(line: 828, column: 7, scope: !2212)
!2269 = !DILocation(line: 829, column: 11, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2212, file: !76, line: 828, column: 7)
!2271 = !DILocation(line: 829, column: 5, scope: !2270)
!2272 = !DILocation(line: 830, column: 3, scope: !2212)
!2273 = distinct !DISubprogram(name: "quotearg_free", scope: !76, file: !76, line: 848, type: !1123, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2274)
!2274 = !{!2275, !2276}
!2275 = !DILocalVariable(name: "sv", scope: !2273, file: !76, line: 850, type: !128)
!2276 = !DILocalVariable(name: "i", scope: !2273, file: !76, line: 851, type: !41)
!2277 = !DILocation(line: 850, column: 24, scope: !2273)
!2278 = !DILocation(line: 0, scope: !2273)
!2279 = !DILocation(line: 852, column: 19, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !76, line: 852, column: 3)
!2281 = distinct !DILexicalBlock(scope: !2273, file: !76, line: 852, column: 3)
!2282 = !DILocation(line: 852, column: 17, scope: !2280)
!2283 = !DILocation(line: 852, column: 3, scope: !2281)
!2284 = !DILocation(line: 853, column: 17, scope: !2280)
!2285 = !{!2286, !603, i64 8}
!2286 = !{!"slotvec", !860, i64 0, !603, i64 8}
!2287 = !DILocation(line: 853, column: 5, scope: !2280)
!2288 = !DILocation(line: 852, column: 28, scope: !2280)
!2289 = distinct !{!2289, !2283, !2290, !646}
!2290 = !DILocation(line: 853, column: 20, scope: !2281)
!2291 = !DILocation(line: 854, column: 13, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2273, file: !76, line: 854, column: 7)
!2293 = !DILocation(line: 854, column: 17, scope: !2292)
!2294 = !DILocation(line: 854, column: 7, scope: !2273)
!2295 = !DILocation(line: 856, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !76, line: 855, column: 5)
!2297 = !DILocation(line: 857, column: 21, scope: !2296)
!2298 = !{!2286, !860, i64 0}
!2299 = !DILocation(line: 858, column: 20, scope: !2296)
!2300 = !DILocation(line: 859, column: 5, scope: !2296)
!2301 = !DILocation(line: 860, column: 10, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2273, file: !76, line: 860, column: 7)
!2303 = !DILocation(line: 860, column: 7, scope: !2273)
!2304 = !DILocation(line: 862, column: 13, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !76, line: 861, column: 5)
!2306 = !DILocation(line: 862, column: 7, scope: !2305)
!2307 = !DILocation(line: 863, column: 15, scope: !2305)
!2308 = !DILocation(line: 864, column: 5, scope: !2305)
!2309 = !DILocation(line: 865, column: 10, scope: !2273)
!2310 = !DILocation(line: 866, column: 1, scope: !2273)
!2311 = distinct !DISubprogram(name: "quotearg_n", scope: !76, file: !76, line: 931, type: !728, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2312)
!2312 = !{!2313, !2314}
!2313 = !DILocalVariable(name: "n", arg: 1, scope: !2311, file: !76, line: 931, type: !41)
!2314 = !DILocalVariable(name: "arg", arg: 2, scope: !2311, file: !76, line: 931, type: !38)
!2315 = !DILocation(line: 0, scope: !2311)
!2316 = !DILocation(line: 933, column: 10, scope: !2311)
!2317 = !DILocation(line: 933, column: 3, scope: !2311)
!2318 = distinct !DISubprogram(name: "quotearg_n_options", scope: !76, file: !76, line: 877, type: !2319, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!26, !41, !38, !28, !1370}
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2331, !2332, !2334, !2335, !2336}
!2322 = !DILocalVariable(name: "n", arg: 1, scope: !2318, file: !76, line: 877, type: !41)
!2323 = !DILocalVariable(name: "arg", arg: 2, scope: !2318, file: !76, line: 877, type: !38)
!2324 = !DILocalVariable(name: "argsize", arg: 3, scope: !2318, file: !76, line: 877, type: !28)
!2325 = !DILocalVariable(name: "options", arg: 4, scope: !2318, file: !76, line: 878, type: !1370)
!2326 = !DILocalVariable(name: "e", scope: !2318, file: !76, line: 880, type: !41)
!2327 = !DILocalVariable(name: "sv", scope: !2318, file: !76, line: 882, type: !128)
!2328 = !DILocalVariable(name: "preallocated", scope: !2329, file: !76, line: 889, type: !60)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !76, line: 888, column: 5)
!2330 = distinct !DILexicalBlock(scope: !2318, file: !76, line: 887, column: 7)
!2331 = !DILocalVariable(name: "nmax", scope: !2329, file: !76, line: 890, type: !41)
!2332 = !DILocalVariable(name: "size", scope: !2333, file: !76, line: 903, type: !28)
!2333 = distinct !DILexicalBlock(scope: !2318, file: !76, line: 902, column: 3)
!2334 = !DILocalVariable(name: "val", scope: !2333, file: !76, line: 904, type: !26)
!2335 = !DILocalVariable(name: "flags", scope: !2333, file: !76, line: 906, type: !41)
!2336 = !DILocalVariable(name: "qsize", scope: !2333, file: !76, line: 907, type: !28)
!2337 = !DILocation(line: 0, scope: !2318)
!2338 = !DILocation(line: 880, column: 11, scope: !2318)
!2339 = !DILocation(line: 882, column: 24, scope: !2318)
!2340 = !DILocation(line: 884, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2318, file: !76, line: 884, column: 7)
!2342 = !DILocation(line: 884, column: 7, scope: !2318)
!2343 = !DILocation(line: 885, column: 5, scope: !2341)
!2344 = !DILocation(line: 887, column: 7, scope: !2330)
!2345 = !DILocation(line: 887, column: 14, scope: !2330)
!2346 = !DILocation(line: 887, column: 7, scope: !2318)
!2347 = !DILocation(line: 889, column: 31, scope: !2329)
!2348 = !DILocation(line: 0, scope: !2329)
!2349 = !DILocation(line: 892, column: 16, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2329, file: !76, line: 892, column: 11)
!2351 = !DILocation(line: 892, column: 11, scope: !2329)
!2352 = !DILocation(line: 893, column: 9, scope: !2350)
!2353 = !DILocation(line: 895, column: 32, scope: !2329)
!2354 = !DILocation(line: 895, column: 61, scope: !2329)
!2355 = !DILocation(line: 895, column: 66, scope: !2329)
!2356 = !DILocation(line: 895, column: 22, scope: !2329)
!2357 = !DILocation(line: 895, column: 15, scope: !2329)
!2358 = !DILocation(line: 896, column: 11, scope: !2329)
!2359 = !DILocation(line: 897, column: 15, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2329, file: !76, line: 896, column: 11)
!2361 = !{i64 0, i64 8, !1089, i64 8, i64 8, !602}
!2362 = !DILocation(line: 897, column: 9, scope: !2360)
!2363 = !DILocation(line: 898, column: 20, scope: !2329)
!2364 = !DILocation(line: 898, column: 18, scope: !2329)
!2365 = !DILocation(line: 898, column: 15, scope: !2329)
!2366 = !DILocation(line: 898, column: 38, scope: !2329)
!2367 = !DILocation(line: 898, column: 31, scope: !2329)
!2368 = !DILocation(line: 898, column: 48, scope: !2329)
!2369 = !DILocation(line: 0, scope: !1765, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 898, column: 7, scope: !2329)
!2371 = !DILocation(line: 59, column: 10, scope: !1765, inlinedAt: !2370)
!2372 = !DILocation(line: 899, column: 14, scope: !2329)
!2373 = !DILocation(line: 900, column: 5, scope: !2329)
!2374 = !DILocation(line: 903, column: 19, scope: !2333)
!2375 = !DILocation(line: 903, column: 25, scope: !2333)
!2376 = !DILocation(line: 0, scope: !2333)
!2377 = !DILocation(line: 904, column: 23, scope: !2333)
!2378 = !DILocation(line: 906, column: 26, scope: !2333)
!2379 = !DILocation(line: 906, column: 32, scope: !2333)
!2380 = !DILocation(line: 908, column: 55, scope: !2333)
!2381 = !DILocation(line: 909, column: 46, scope: !2333)
!2382 = !DILocation(line: 910, column: 55, scope: !2333)
!2383 = !DILocation(line: 911, column: 55, scope: !2333)
!2384 = !DILocation(line: 907, column: 20, scope: !2333)
!2385 = !DILocation(line: 913, column: 14, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2333, file: !76, line: 913, column: 9)
!2387 = !DILocation(line: 913, column: 9, scope: !2333)
!2388 = !DILocation(line: 915, column: 35, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2386, file: !76, line: 914, column: 7)
!2390 = !DILocation(line: 915, column: 20, scope: !2389)
!2391 = !DILocation(line: 916, column: 17, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2389, file: !76, line: 916, column: 13)
!2393 = !DILocation(line: 916, column: 13, scope: !2389)
!2394 = !DILocation(line: 917, column: 11, scope: !2392)
!2395 = !DILocation(line: 0, scope: !2237, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 918, column: 27, scope: !2389)
!2397 = !DILocation(line: 218, column: 10, scope: !2237, inlinedAt: !2396)
!2398 = !DILocation(line: 918, column: 19, scope: !2389)
!2399 = !DILocation(line: 919, column: 69, scope: !2389)
!2400 = !DILocation(line: 921, column: 44, scope: !2389)
!2401 = !DILocation(line: 922, column: 44, scope: !2389)
!2402 = !DILocation(line: 919, column: 9, scope: !2389)
!2403 = !DILocation(line: 923, column: 7, scope: !2389)
!2404 = !DILocation(line: 925, column: 11, scope: !2333)
!2405 = !DILocation(line: 926, column: 5, scope: !2333)
!2406 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !76, file: !76, line: 937, type: !2407, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!26, !41, !38, !28}
!2409 = !{!2410, !2411, !2412}
!2410 = !DILocalVariable(name: "n", arg: 1, scope: !2406, file: !76, line: 937, type: !41)
!2411 = !DILocalVariable(name: "arg", arg: 2, scope: !2406, file: !76, line: 937, type: !38)
!2412 = !DILocalVariable(name: "argsize", arg: 3, scope: !2406, file: !76, line: 937, type: !28)
!2413 = !DILocation(line: 0, scope: !2406)
!2414 = !DILocation(line: 939, column: 10, scope: !2406)
!2415 = !DILocation(line: 939, column: 3, scope: !2406)
!2416 = distinct !DISubprogram(name: "quotearg", scope: !76, file: !76, line: 943, type: !1113, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2417)
!2417 = !{!2418}
!2418 = !DILocalVariable(name: "arg", arg: 1, scope: !2416, file: !76, line: 943, type: !38)
!2419 = !DILocation(line: 0, scope: !2416)
!2420 = !DILocation(line: 0, scope: !2311, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 945, column: 10, scope: !2416)
!2422 = !DILocation(line: 933, column: 10, scope: !2311, inlinedAt: !2421)
!2423 = !DILocation(line: 945, column: 3, scope: !2416)
!2424 = distinct !DISubprogram(name: "quotearg_mem", scope: !76, file: !76, line: 949, type: !2425, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!26, !38, !28}
!2427 = !{!2428, !2429}
!2428 = !DILocalVariable(name: "arg", arg: 1, scope: !2424, file: !76, line: 949, type: !38)
!2429 = !DILocalVariable(name: "argsize", arg: 2, scope: !2424, file: !76, line: 949, type: !28)
!2430 = !DILocation(line: 0, scope: !2424)
!2431 = !DILocation(line: 0, scope: !2406, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 951, column: 10, scope: !2424)
!2433 = !DILocation(line: 939, column: 10, scope: !2406, inlinedAt: !2432)
!2434 = !DILocation(line: 951, column: 3, scope: !2424)
!2435 = distinct !DISubprogram(name: "quotearg_n_style", scope: !76, file: !76, line: 955, type: !2436, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!26, !41, !5, !38}
!2438 = !{!2439, !2440, !2441, !2442}
!2439 = !DILocalVariable(name: "n", arg: 1, scope: !2435, file: !76, line: 955, type: !41)
!2440 = !DILocalVariable(name: "s", arg: 2, scope: !2435, file: !76, line: 955, type: !5)
!2441 = !DILocalVariable(name: "arg", arg: 3, scope: !2435, file: !76, line: 955, type: !38)
!2442 = !DILocalVariable(name: "o", scope: !2435, file: !76, line: 957, type: !1371)
!2443 = !DILocation(line: 0, scope: !2435)
!2444 = !DILocation(line: 957, column: 3, scope: !2435)
!2445 = !DILocation(line: 957, column: 32, scope: !2435)
!2446 = !{!2447}
!2447 = distinct !{!2447, !2448, !"quoting_options_from_style: argument 0"}
!2448 = distinct !{!2448, !"quoting_options_from_style"}
!2449 = !DILocation(line: 957, column: 36, scope: !2435)
!2450 = !DILocalVariable(name: "style", arg: 1, scope: !2451, file: !76, line: 193, type: !5)
!2451 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !76, file: !76, line: 193, type: !2452, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!109, !5}
!2454 = !{!2450, !2455}
!2455 = !DILocalVariable(name: "o", scope: !2451, file: !76, line: 195, type: !109)
!2456 = !DILocation(line: 0, scope: !2451, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 957, column: 36, scope: !2435)
!2458 = !DILocation(line: 195, column: 26, scope: !2451, inlinedAt: !2457)
!2459 = !DILocation(line: 196, column: 13, scope: !2460, inlinedAt: !2457)
!2460 = distinct !DILexicalBlock(scope: !2451, file: !76, line: 196, column: 7)
!2461 = !DILocation(line: 196, column: 7, scope: !2451, inlinedAt: !2457)
!2462 = !DILocation(line: 197, column: 5, scope: !2460, inlinedAt: !2457)
!2463 = !DILocation(line: 198, column: 5, scope: !2451, inlinedAt: !2457)
!2464 = !DILocation(line: 198, column: 11, scope: !2451, inlinedAt: !2457)
!2465 = !DILocation(line: 958, column: 10, scope: !2435)
!2466 = !DILocation(line: 959, column: 1, scope: !2435)
!2467 = !DILocation(line: 958, column: 3, scope: !2435)
!2468 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !76, file: !76, line: 962, type: !2469, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!26, !41, !5, !38, !28}
!2471 = !{!2472, !2473, !2474, !2475, !2476}
!2472 = !DILocalVariable(name: "n", arg: 1, scope: !2468, file: !76, line: 962, type: !41)
!2473 = !DILocalVariable(name: "s", arg: 2, scope: !2468, file: !76, line: 962, type: !5)
!2474 = !DILocalVariable(name: "arg", arg: 3, scope: !2468, file: !76, line: 963, type: !38)
!2475 = !DILocalVariable(name: "argsize", arg: 4, scope: !2468, file: !76, line: 963, type: !28)
!2476 = !DILocalVariable(name: "o", scope: !2468, file: !76, line: 965, type: !1371)
!2477 = !DILocation(line: 0, scope: !2468)
!2478 = !DILocation(line: 965, column: 3, scope: !2468)
!2479 = !DILocation(line: 965, column: 32, scope: !2468)
!2480 = !{!2481}
!2481 = distinct !{!2481, !2482, !"quoting_options_from_style: argument 0"}
!2482 = distinct !{!2482, !"quoting_options_from_style"}
!2483 = !DILocation(line: 965, column: 36, scope: !2468)
!2484 = !DILocation(line: 0, scope: !2451, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 965, column: 36, scope: !2468)
!2486 = !DILocation(line: 195, column: 26, scope: !2451, inlinedAt: !2485)
!2487 = !DILocation(line: 196, column: 13, scope: !2460, inlinedAt: !2485)
!2488 = !DILocation(line: 196, column: 7, scope: !2451, inlinedAt: !2485)
!2489 = !DILocation(line: 197, column: 5, scope: !2460, inlinedAt: !2485)
!2490 = !DILocation(line: 198, column: 5, scope: !2451, inlinedAt: !2485)
!2491 = !DILocation(line: 198, column: 11, scope: !2451, inlinedAt: !2485)
!2492 = !DILocation(line: 966, column: 10, scope: !2468)
!2493 = !DILocation(line: 967, column: 1, scope: !2468)
!2494 = !DILocation(line: 966, column: 3, scope: !2468)
!2495 = distinct !DISubprogram(name: "quotearg_style", scope: !76, file: !76, line: 970, type: !2496, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!26, !5, !38}
!2498 = !{!2499, !2500}
!2499 = !DILocalVariable(name: "s", arg: 1, scope: !2495, file: !76, line: 970, type: !5)
!2500 = !DILocalVariable(name: "arg", arg: 2, scope: !2495, file: !76, line: 970, type: !38)
!2501 = !DILocation(line: 0, scope: !2495)
!2502 = !DILocation(line: 0, scope: !2435, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 972, column: 10, scope: !2495)
!2504 = !DILocation(line: 957, column: 3, scope: !2435, inlinedAt: !2503)
!2505 = !DILocation(line: 957, column: 32, scope: !2435, inlinedAt: !2503)
!2506 = !{!2507}
!2507 = distinct !{!2507, !2508, !"quoting_options_from_style: argument 0"}
!2508 = distinct !{!2508, !"quoting_options_from_style"}
!2509 = !DILocation(line: 957, column: 36, scope: !2435, inlinedAt: !2503)
!2510 = !DILocation(line: 0, scope: !2451, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 957, column: 36, scope: !2435, inlinedAt: !2503)
!2512 = !DILocation(line: 195, column: 26, scope: !2451, inlinedAt: !2511)
!2513 = !DILocation(line: 196, column: 13, scope: !2460, inlinedAt: !2511)
!2514 = !DILocation(line: 196, column: 7, scope: !2451, inlinedAt: !2511)
!2515 = !DILocation(line: 197, column: 5, scope: !2460, inlinedAt: !2511)
!2516 = !DILocation(line: 198, column: 5, scope: !2451, inlinedAt: !2511)
!2517 = !DILocation(line: 198, column: 11, scope: !2451, inlinedAt: !2511)
!2518 = !DILocation(line: 958, column: 10, scope: !2435, inlinedAt: !2503)
!2519 = !DILocation(line: 959, column: 1, scope: !2435, inlinedAt: !2503)
!2520 = !DILocation(line: 972, column: 3, scope: !2495)
!2521 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !76, file: !76, line: 976, type: !2522, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!26, !5, !38, !28}
!2524 = !{!2525, !2526, !2527}
!2525 = !DILocalVariable(name: "s", arg: 1, scope: !2521, file: !76, line: 976, type: !5)
!2526 = !DILocalVariable(name: "arg", arg: 2, scope: !2521, file: !76, line: 976, type: !38)
!2527 = !DILocalVariable(name: "argsize", arg: 3, scope: !2521, file: !76, line: 976, type: !28)
!2528 = !DILocation(line: 0, scope: !2521)
!2529 = !DILocation(line: 0, scope: !2468, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 978, column: 10, scope: !2521)
!2531 = !DILocation(line: 965, column: 3, scope: !2468, inlinedAt: !2530)
!2532 = !DILocation(line: 965, column: 32, scope: !2468, inlinedAt: !2530)
!2533 = !{!2534}
!2534 = distinct !{!2534, !2535, !"quoting_options_from_style: argument 0"}
!2535 = distinct !{!2535, !"quoting_options_from_style"}
!2536 = !DILocation(line: 965, column: 36, scope: !2468, inlinedAt: !2530)
!2537 = !DILocation(line: 0, scope: !2451, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 965, column: 36, scope: !2468, inlinedAt: !2530)
!2539 = !DILocation(line: 195, column: 26, scope: !2451, inlinedAt: !2538)
!2540 = !DILocation(line: 196, column: 13, scope: !2460, inlinedAt: !2538)
!2541 = !DILocation(line: 196, column: 7, scope: !2451, inlinedAt: !2538)
!2542 = !DILocation(line: 197, column: 5, scope: !2460, inlinedAt: !2538)
!2543 = !DILocation(line: 198, column: 5, scope: !2451, inlinedAt: !2538)
!2544 = !DILocation(line: 198, column: 11, scope: !2451, inlinedAt: !2538)
!2545 = !DILocation(line: 966, column: 10, scope: !2468, inlinedAt: !2530)
!2546 = !DILocation(line: 967, column: 1, scope: !2468, inlinedAt: !2530)
!2547 = !DILocation(line: 978, column: 3, scope: !2521)
!2548 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !76, file: !76, line: 982, type: !2549, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!26, !38, !28, !27}
!2551 = !{!2552, !2553, !2554, !2555}
!2552 = !DILocalVariable(name: "arg", arg: 1, scope: !2548, file: !76, line: 982, type: !38)
!2553 = !DILocalVariable(name: "argsize", arg: 2, scope: !2548, file: !76, line: 982, type: !28)
!2554 = !DILocalVariable(name: "ch", arg: 3, scope: !2548, file: !76, line: 982, type: !27)
!2555 = !DILocalVariable(name: "options", scope: !2548, file: !76, line: 984, type: !109)
!2556 = !DILocation(line: 0, scope: !2548)
!2557 = !DILocation(line: 984, column: 3, scope: !2548)
!2558 = !DILocation(line: 984, column: 26, scope: !2548)
!2559 = !DILocation(line: 985, column: 13, scope: !2548)
!2560 = !{i64 0, i64 4, !836, i64 4, i64 4, !771, i64 8, i64 32, !836, i64 40, i64 8, !602, i64 48, i64 8, !602}
!2561 = !DILocation(line: 0, scope: !1391, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 986, column: 3, scope: !2548)
!2563 = !DILocation(line: 156, column: 62, scope: !1391, inlinedAt: !2562)
!2564 = !DILocation(line: 156, column: 57, scope: !1391, inlinedAt: !2562)
!2565 = !DILocation(line: 157, column: 15, scope: !1391, inlinedAt: !2562)
!2566 = !DILocation(line: 158, column: 12, scope: !1391, inlinedAt: !2562)
!2567 = !DILocation(line: 158, column: 15, scope: !1391, inlinedAt: !2562)
!2568 = !DILocation(line: 158, column: 25, scope: !1391, inlinedAt: !2562)
!2569 = !DILocation(line: 159, column: 18, scope: !1391, inlinedAt: !2562)
!2570 = !DILocation(line: 159, column: 23, scope: !1391, inlinedAt: !2562)
!2571 = !DILocation(line: 159, column: 6, scope: !1391, inlinedAt: !2562)
!2572 = !DILocation(line: 987, column: 10, scope: !2548)
!2573 = !DILocation(line: 988, column: 1, scope: !2548)
!2574 = !DILocation(line: 987, column: 3, scope: !2548)
!2575 = distinct !DISubprogram(name: "quotearg_char", scope: !76, file: !76, line: 991, type: !2576, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!26, !38, !27}
!2578 = !{!2579, !2580}
!2579 = !DILocalVariable(name: "arg", arg: 1, scope: !2575, file: !76, line: 991, type: !38)
!2580 = !DILocalVariable(name: "ch", arg: 2, scope: !2575, file: !76, line: 991, type: !27)
!2581 = !DILocation(line: 0, scope: !2575)
!2582 = !DILocation(line: 0, scope: !2548, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 993, column: 10, scope: !2575)
!2584 = !DILocation(line: 984, column: 3, scope: !2548, inlinedAt: !2583)
!2585 = !DILocation(line: 984, column: 26, scope: !2548, inlinedAt: !2583)
!2586 = !DILocation(line: 985, column: 13, scope: !2548, inlinedAt: !2583)
!2587 = !DILocation(line: 0, scope: !1391, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 986, column: 3, scope: !2548, inlinedAt: !2583)
!2589 = !DILocation(line: 156, column: 62, scope: !1391, inlinedAt: !2588)
!2590 = !DILocation(line: 156, column: 57, scope: !1391, inlinedAt: !2588)
!2591 = !DILocation(line: 157, column: 15, scope: !1391, inlinedAt: !2588)
!2592 = !DILocation(line: 158, column: 12, scope: !1391, inlinedAt: !2588)
!2593 = !DILocation(line: 158, column: 15, scope: !1391, inlinedAt: !2588)
!2594 = !DILocation(line: 158, column: 25, scope: !1391, inlinedAt: !2588)
!2595 = !DILocation(line: 159, column: 18, scope: !1391, inlinedAt: !2588)
!2596 = !DILocation(line: 159, column: 23, scope: !1391, inlinedAt: !2588)
!2597 = !DILocation(line: 159, column: 6, scope: !1391, inlinedAt: !2588)
!2598 = !DILocation(line: 987, column: 10, scope: !2548, inlinedAt: !2583)
!2599 = !DILocation(line: 988, column: 1, scope: !2548, inlinedAt: !2583)
!2600 = !DILocation(line: 993, column: 3, scope: !2575)
!2601 = distinct !DISubprogram(name: "quotearg_colon", scope: !76, file: !76, line: 997, type: !1113, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2602)
!2602 = !{!2603}
!2603 = !DILocalVariable(name: "arg", arg: 1, scope: !2601, file: !76, line: 997, type: !38)
!2604 = !DILocation(line: 0, scope: !2601)
!2605 = !DILocation(line: 0, scope: !2575, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 999, column: 10, scope: !2601)
!2607 = !DILocation(line: 0, scope: !2548, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 993, column: 10, scope: !2575, inlinedAt: !2606)
!2609 = !DILocation(line: 984, column: 3, scope: !2548, inlinedAt: !2608)
!2610 = !DILocation(line: 984, column: 26, scope: !2548, inlinedAt: !2608)
!2611 = !DILocation(line: 985, column: 13, scope: !2548, inlinedAt: !2608)
!2612 = !DILocation(line: 0, scope: !1391, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 986, column: 3, scope: !2548, inlinedAt: !2608)
!2614 = !DILocation(line: 156, column: 57, scope: !1391, inlinedAt: !2613)
!2615 = !DILocation(line: 158, column: 12, scope: !1391, inlinedAt: !2613)
!2616 = !DILocation(line: 159, column: 6, scope: !1391, inlinedAt: !2613)
!2617 = !DILocation(line: 987, column: 10, scope: !2548, inlinedAt: !2608)
!2618 = !DILocation(line: 988, column: 1, scope: !2548, inlinedAt: !2608)
!2619 = !DILocation(line: 999, column: 3, scope: !2601)
!2620 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !76, file: !76, line: 1003, type: !2425, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2621)
!2621 = !{!2622, !2623}
!2622 = !DILocalVariable(name: "arg", arg: 1, scope: !2620, file: !76, line: 1003, type: !38)
!2623 = !DILocalVariable(name: "argsize", arg: 2, scope: !2620, file: !76, line: 1003, type: !28)
!2624 = !DILocation(line: 0, scope: !2620)
!2625 = !DILocation(line: 0, scope: !2548, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 1005, column: 10, scope: !2620)
!2627 = !DILocation(line: 984, column: 3, scope: !2548, inlinedAt: !2626)
!2628 = !DILocation(line: 984, column: 26, scope: !2548, inlinedAt: !2626)
!2629 = !DILocation(line: 985, column: 13, scope: !2548, inlinedAt: !2626)
!2630 = !DILocation(line: 0, scope: !1391, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 986, column: 3, scope: !2548, inlinedAt: !2626)
!2632 = !DILocation(line: 156, column: 57, scope: !1391, inlinedAt: !2631)
!2633 = !DILocation(line: 158, column: 12, scope: !1391, inlinedAt: !2631)
!2634 = !DILocation(line: 159, column: 6, scope: !1391, inlinedAt: !2631)
!2635 = !DILocation(line: 987, column: 10, scope: !2548, inlinedAt: !2626)
!2636 = !DILocation(line: 988, column: 1, scope: !2548, inlinedAt: !2626)
!2637 = !DILocation(line: 1005, column: 3, scope: !2620)
!2638 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !76, file: !76, line: 1009, type: !2436, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2639)
!2639 = !{!2640, !2641, !2642, !2643}
!2640 = !DILocalVariable(name: "n", arg: 1, scope: !2638, file: !76, line: 1009, type: !41)
!2641 = !DILocalVariable(name: "s", arg: 2, scope: !2638, file: !76, line: 1009, type: !5)
!2642 = !DILocalVariable(name: "arg", arg: 3, scope: !2638, file: !76, line: 1009, type: !38)
!2643 = !DILocalVariable(name: "options", scope: !2638, file: !76, line: 1011, type: !109)
!2644 = !DILocation(line: 195, column: 26, scope: !2451, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 1012, column: 13, scope: !2638)
!2646 = !DILocation(line: 0, scope: !2638)
!2647 = !DILocation(line: 1011, column: 3, scope: !2638)
!2648 = !DILocation(line: 1011, column: 26, scope: !2638)
!2649 = !DILocation(line: 1012, column: 13, scope: !2638)
!2650 = !{!2651}
!2651 = distinct !{!2651, !2652, !"quoting_options_from_style: argument 0"}
!2652 = distinct !{!2652, !"quoting_options_from_style"}
!2653 = !DILocation(line: 0, scope: !2451, inlinedAt: !2645)
!2654 = !DILocation(line: 196, column: 13, scope: !2460, inlinedAt: !2645)
!2655 = !DILocation(line: 196, column: 7, scope: !2451, inlinedAt: !2645)
!2656 = !DILocation(line: 197, column: 5, scope: !2460, inlinedAt: !2645)
!2657 = !{i64 0, i64 4, !771, i64 4, i64 32, !836, i64 36, i64 8, !602, i64 44, i64 8, !602}
!2658 = !DILocation(line: 0, scope: !1391, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1013, column: 3, scope: !2638)
!2660 = !DILocation(line: 156, column: 57, scope: !1391, inlinedAt: !2659)
!2661 = !DILocation(line: 158, column: 12, scope: !1391, inlinedAt: !2659)
!2662 = !DILocation(line: 159, column: 6, scope: !1391, inlinedAt: !2659)
!2663 = !DILocation(line: 1014, column: 10, scope: !2638)
!2664 = !DILocation(line: 1015, column: 1, scope: !2638)
!2665 = !DILocation(line: 1014, column: 3, scope: !2638)
!2666 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !76, file: !76, line: 1018, type: !2667, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!26, !41, !38, !38, !38}
!2669 = !{!2670, !2671, !2672, !2673}
!2670 = !DILocalVariable(name: "n", arg: 1, scope: !2666, file: !76, line: 1018, type: !41)
!2671 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2666, file: !76, line: 1018, type: !38)
!2672 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2666, file: !76, line: 1019, type: !38)
!2673 = !DILocalVariable(name: "arg", arg: 4, scope: !2666, file: !76, line: 1019, type: !38)
!2674 = !DILocation(line: 0, scope: !2666)
!2675 = !DILocalVariable(name: "n", arg: 1, scope: !2676, file: !76, line: 1026, type: !41)
!2676 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !76, file: !76, line: 1026, type: !2677, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!26, !41, !38, !38, !38, !28}
!2679 = !{!2675, !2680, !2681, !2682, !2683, !2684}
!2680 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2676, file: !76, line: 1026, type: !38)
!2681 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2676, file: !76, line: 1027, type: !38)
!2682 = !DILocalVariable(name: "arg", arg: 4, scope: !2676, file: !76, line: 1028, type: !38)
!2683 = !DILocalVariable(name: "argsize", arg: 5, scope: !2676, file: !76, line: 1028, type: !28)
!2684 = !DILocalVariable(name: "o", scope: !2676, file: !76, line: 1030, type: !109)
!2685 = !DILocation(line: 0, scope: !2676, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1021, column: 10, scope: !2666)
!2687 = !DILocation(line: 1030, column: 3, scope: !2676, inlinedAt: !2686)
!2688 = !DILocation(line: 1030, column: 26, scope: !2676, inlinedAt: !2686)
!2689 = !DILocation(line: 1030, column: 30, scope: !2676, inlinedAt: !2686)
!2690 = !DILocation(line: 0, scope: !1431, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 1031, column: 3, scope: !2676, inlinedAt: !2686)
!2692 = !DILocation(line: 184, column: 6, scope: !1431, inlinedAt: !2691)
!2693 = !DILocation(line: 184, column: 12, scope: !1431, inlinedAt: !2691)
!2694 = !DILocation(line: 185, column: 8, scope: !1445, inlinedAt: !2691)
!2695 = !DILocation(line: 185, column: 19, scope: !1445, inlinedAt: !2691)
!2696 = !DILocation(line: 186, column: 5, scope: !1445, inlinedAt: !2691)
!2697 = !DILocation(line: 187, column: 6, scope: !1431, inlinedAt: !2691)
!2698 = !DILocation(line: 187, column: 17, scope: !1431, inlinedAt: !2691)
!2699 = !DILocation(line: 188, column: 6, scope: !1431, inlinedAt: !2691)
!2700 = !DILocation(line: 188, column: 18, scope: !1431, inlinedAt: !2691)
!2701 = !DILocation(line: 1032, column: 10, scope: !2676, inlinedAt: !2686)
!2702 = !DILocation(line: 1033, column: 1, scope: !2676, inlinedAt: !2686)
!2703 = !DILocation(line: 1021, column: 3, scope: !2666)
!2704 = !DILocation(line: 0, scope: !2676)
!2705 = !DILocation(line: 1030, column: 3, scope: !2676)
!2706 = !DILocation(line: 1030, column: 26, scope: !2676)
!2707 = !DILocation(line: 1030, column: 30, scope: !2676)
!2708 = !DILocation(line: 0, scope: !1431, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1031, column: 3, scope: !2676)
!2710 = !DILocation(line: 184, column: 6, scope: !1431, inlinedAt: !2709)
!2711 = !DILocation(line: 184, column: 12, scope: !1431, inlinedAt: !2709)
!2712 = !DILocation(line: 185, column: 8, scope: !1445, inlinedAt: !2709)
!2713 = !DILocation(line: 185, column: 19, scope: !1445, inlinedAt: !2709)
!2714 = !DILocation(line: 186, column: 5, scope: !1445, inlinedAt: !2709)
!2715 = !DILocation(line: 187, column: 6, scope: !1431, inlinedAt: !2709)
!2716 = !DILocation(line: 187, column: 17, scope: !1431, inlinedAt: !2709)
!2717 = !DILocation(line: 188, column: 6, scope: !1431, inlinedAt: !2709)
!2718 = !DILocation(line: 188, column: 18, scope: !1431, inlinedAt: !2709)
!2719 = !DILocation(line: 1032, column: 10, scope: !2676)
!2720 = !DILocation(line: 1033, column: 1, scope: !2676)
!2721 = !DILocation(line: 1032, column: 3, scope: !2676)
!2722 = distinct !DISubprogram(name: "quotearg_custom", scope: !76, file: !76, line: 1036, type: !2723, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!26, !38, !38, !38}
!2725 = !{!2726, !2727, !2728}
!2726 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2722, file: !76, line: 1036, type: !38)
!2727 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2722, file: !76, line: 1036, type: !38)
!2728 = !DILocalVariable(name: "arg", arg: 3, scope: !2722, file: !76, line: 1037, type: !38)
!2729 = !DILocation(line: 0, scope: !2722)
!2730 = !DILocation(line: 0, scope: !2666, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1039, column: 10, scope: !2722)
!2732 = !DILocation(line: 0, scope: !2676, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1021, column: 10, scope: !2666, inlinedAt: !2731)
!2734 = !DILocation(line: 1030, column: 3, scope: !2676, inlinedAt: !2733)
!2735 = !DILocation(line: 1030, column: 26, scope: !2676, inlinedAt: !2733)
!2736 = !DILocation(line: 1030, column: 30, scope: !2676, inlinedAt: !2733)
!2737 = !DILocation(line: 0, scope: !1431, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1031, column: 3, scope: !2676, inlinedAt: !2733)
!2739 = !DILocation(line: 184, column: 6, scope: !1431, inlinedAt: !2738)
!2740 = !DILocation(line: 184, column: 12, scope: !1431, inlinedAt: !2738)
!2741 = !DILocation(line: 185, column: 8, scope: !1445, inlinedAt: !2738)
!2742 = !DILocation(line: 185, column: 19, scope: !1445, inlinedAt: !2738)
!2743 = !DILocation(line: 186, column: 5, scope: !1445, inlinedAt: !2738)
!2744 = !DILocation(line: 187, column: 6, scope: !1431, inlinedAt: !2738)
!2745 = !DILocation(line: 187, column: 17, scope: !1431, inlinedAt: !2738)
!2746 = !DILocation(line: 188, column: 6, scope: !1431, inlinedAt: !2738)
!2747 = !DILocation(line: 188, column: 18, scope: !1431, inlinedAt: !2738)
!2748 = !DILocation(line: 1032, column: 10, scope: !2676, inlinedAt: !2733)
!2749 = !DILocation(line: 1033, column: 1, scope: !2676, inlinedAt: !2733)
!2750 = !DILocation(line: 1039, column: 3, scope: !2722)
!2751 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !76, file: !76, line: 1043, type: !2752, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!26, !38, !38, !38, !28}
!2754 = !{!2755, !2756, !2757, !2758}
!2755 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2751, file: !76, line: 1043, type: !38)
!2756 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2751, file: !76, line: 1043, type: !38)
!2757 = !DILocalVariable(name: "arg", arg: 3, scope: !2751, file: !76, line: 1044, type: !38)
!2758 = !DILocalVariable(name: "argsize", arg: 4, scope: !2751, file: !76, line: 1044, type: !28)
!2759 = !DILocation(line: 0, scope: !2751)
!2760 = !DILocation(line: 0, scope: !2676, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1046, column: 10, scope: !2751)
!2762 = !DILocation(line: 1030, column: 3, scope: !2676, inlinedAt: !2761)
!2763 = !DILocation(line: 1030, column: 26, scope: !2676, inlinedAt: !2761)
!2764 = !DILocation(line: 1030, column: 30, scope: !2676, inlinedAt: !2761)
!2765 = !DILocation(line: 0, scope: !1431, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 1031, column: 3, scope: !2676, inlinedAt: !2761)
!2767 = !DILocation(line: 184, column: 6, scope: !1431, inlinedAt: !2766)
!2768 = !DILocation(line: 184, column: 12, scope: !1431, inlinedAt: !2766)
!2769 = !DILocation(line: 185, column: 8, scope: !1445, inlinedAt: !2766)
!2770 = !DILocation(line: 185, column: 19, scope: !1445, inlinedAt: !2766)
!2771 = !DILocation(line: 186, column: 5, scope: !1445, inlinedAt: !2766)
!2772 = !DILocation(line: 187, column: 6, scope: !1431, inlinedAt: !2766)
!2773 = !DILocation(line: 187, column: 17, scope: !1431, inlinedAt: !2766)
!2774 = !DILocation(line: 188, column: 6, scope: !1431, inlinedAt: !2766)
!2775 = !DILocation(line: 188, column: 18, scope: !1431, inlinedAt: !2766)
!2776 = !DILocation(line: 1032, column: 10, scope: !2676, inlinedAt: !2761)
!2777 = !DILocation(line: 1033, column: 1, scope: !2676, inlinedAt: !2761)
!2778 = !DILocation(line: 1046, column: 3, scope: !2751)
!2779 = distinct !DISubprogram(name: "quote_n_mem", scope: !76, file: !76, line: 1061, type: !2780, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!38, !41, !38, !28}
!2782 = !{!2783, !2784, !2785}
!2783 = !DILocalVariable(name: "n", arg: 1, scope: !2779, file: !76, line: 1061, type: !41)
!2784 = !DILocalVariable(name: "arg", arg: 2, scope: !2779, file: !76, line: 1061, type: !38)
!2785 = !DILocalVariable(name: "argsize", arg: 3, scope: !2779, file: !76, line: 1061, type: !28)
!2786 = !DILocation(line: 0, scope: !2779)
!2787 = !DILocation(line: 1063, column: 10, scope: !2779)
!2788 = !DILocation(line: 1063, column: 3, scope: !2779)
!2789 = distinct !DISubprogram(name: "quote_mem", scope: !76, file: !76, line: 1067, type: !2790, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!38, !38, !28}
!2792 = !{!2793, !2794}
!2793 = !DILocalVariable(name: "arg", arg: 1, scope: !2789, file: !76, line: 1067, type: !38)
!2794 = !DILocalVariable(name: "argsize", arg: 2, scope: !2789, file: !76, line: 1067, type: !28)
!2795 = !DILocation(line: 0, scope: !2789)
!2796 = !DILocation(line: 0, scope: !2779, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1069, column: 10, scope: !2789)
!2798 = !DILocation(line: 1063, column: 10, scope: !2779, inlinedAt: !2797)
!2799 = !DILocation(line: 1069, column: 3, scope: !2789)
!2800 = distinct !DISubprogram(name: "quote_n", scope: !76, file: !76, line: 1073, type: !2801, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!38, !41, !38}
!2803 = !{!2804, !2805}
!2804 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !76, line: 1073, type: !41)
!2805 = !DILocalVariable(name: "arg", arg: 2, scope: !2800, file: !76, line: 1073, type: !38)
!2806 = !DILocation(line: 0, scope: !2800)
!2807 = !DILocation(line: 0, scope: !2779, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 1075, column: 10, scope: !2800)
!2809 = !DILocation(line: 1063, column: 10, scope: !2779, inlinedAt: !2808)
!2810 = !DILocation(line: 1075, column: 3, scope: !2800)
!2811 = distinct !DISubprogram(name: "quote", scope: !76, file: !76, line: 1079, type: !2812, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2814)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!38, !38}
!2814 = !{!2815}
!2815 = !DILocalVariable(name: "arg", arg: 1, scope: !2811, file: !76, line: 1079, type: !38)
!2816 = !DILocation(line: 0, scope: !2811)
!2817 = !DILocation(line: 0, scope: !2800, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 1081, column: 10, scope: !2811)
!2819 = !DILocation(line: 0, scope: !2779, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1075, column: 10, scope: !2800, inlinedAt: !2818)
!2821 = !DILocation(line: 1063, column: 10, scope: !2779, inlinedAt: !2820)
!2822 = !DILocation(line: 1081, column: 3, scope: !2811)
!2823 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !150, file: !150, line: 29, type: !2824, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !2831)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!2826, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !907, line: 7, size: 128, elements: !2828)
!2828 = !{!2829, !2830}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2827, file: !907, line: 9, baseType: !910, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2827, file: !907, line: 10, baseType: !913, size: 64, offset: 64)
!2831 = !{!2832, !2833}
!2832 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !2823, file: !150, line: 29, type: !2826)
!2833 = !DILocalVariable(name: "statbuf", scope: !2823, file: !150, line: 31, type: !2834)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !787, line: 26, size: 1152, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2852, !2853, !2854}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2834, file: !787, line: 28, baseType: !790, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2834, file: !787, line: 33, baseType: !792, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2834, file: !787, line: 41, baseType: !794, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2834, file: !787, line: 42, baseType: !796, size: 32, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2834, file: !787, line: 44, baseType: !798, size: 32, offset: 224)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2834, file: !787, line: 45, baseType: !800, size: 32, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2834, file: !787, line: 47, baseType: !41, size: 32, offset: 288)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2834, file: !787, line: 49, baseType: !790, size: 64, offset: 320)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2834, file: !787, line: 54, baseType: !697, size: 64, offset: 384)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2834, file: !787, line: 58, baseType: !805, size: 64, offset: 448)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2834, file: !787, line: 60, baseType: !807, size: 64, offset: 512)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2834, file: !787, line: 71, baseType: !2848, size: 128, offset: 576)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !810, line: 10, size: 128, elements: !2849)
!2849 = !{!2850, !2851}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2848, file: !810, line: 12, baseType: !813, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2848, file: !810, line: 16, baseType: !815, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2834, file: !787, line: 72, baseType: !2848, size: 128, offset: 704)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2834, file: !787, line: 73, baseType: !2848, size: 128, offset: 832)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2834, file: !787, line: 86, baseType: !819, size: 192, offset: 960)
!2855 = !DILocation(line: 0, scope: !2823)
!2856 = !DILocation(line: 31, column: 3, scope: !2823)
!2857 = !DILocation(line: 31, column: 15, scope: !2823)
!2858 = !DILocation(line: 32, column: 7, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2823, file: !150, line: 32, column: 7)
!2860 = !DILocation(line: 32, column: 7, scope: !2823)
!2861 = !DILocation(line: 35, column: 30, scope: !2823)
!2862 = !DILocation(line: 34, column: 20, scope: !2823)
!2863 = !DILocation(line: 36, column: 3, scope: !2823)
!2864 = !DILocation(line: 37, column: 1, scope: !2823)
!2865 = distinct !DISubprogram(name: "version_etc_arn", scope: !152, file: !152, line: 61, type: !2866, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !2904)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2868, !38, !38, !38, !2903, !28}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2870, line: 7, baseType: !2871)
!2870 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !676, line: 49, size: 1728, elements: !2872)
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2871, file: !676, line: 51, baseType: !41, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2871, file: !676, line: 54, baseType: !26, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2871, file: !676, line: 55, baseType: !26, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2871, file: !676, line: 56, baseType: !26, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2871, file: !676, line: 57, baseType: !26, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2871, file: !676, line: 58, baseType: !26, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2871, file: !676, line: 59, baseType: !26, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2871, file: !676, line: 60, baseType: !26, size: 64, offset: 448)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2871, file: !676, line: 61, baseType: !26, size: 64, offset: 512)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2871, file: !676, line: 64, baseType: !26, size: 64, offset: 576)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2871, file: !676, line: 65, baseType: !26, size: 64, offset: 640)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2871, file: !676, line: 66, baseType: !26, size: 64, offset: 704)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2871, file: !676, line: 68, baseType: !691, size: 64, offset: 768)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2871, file: !676, line: 70, baseType: !2887, size: 64, offset: 832)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2871, file: !676, line: 72, baseType: !41, size: 32, offset: 896)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2871, file: !676, line: 73, baseType: !41, size: 32, offset: 928)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2871, file: !676, line: 74, baseType: !697, size: 64, offset: 960)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2871, file: !676, line: 77, baseType: !99, size: 16, offset: 1024)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2871, file: !676, line: 78, baseType: !702, size: 8, offset: 1040)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2871, file: !676, line: 79, baseType: !704, size: 8, offset: 1048)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2871, file: !676, line: 81, baseType: !708, size: 64, offset: 1088)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2871, file: !676, line: 89, baseType: !711, size: 64, offset: 1152)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2871, file: !676, line: 91, baseType: !713, size: 64, offset: 1216)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2871, file: !676, line: 92, baseType: !716, size: 64, offset: 1280)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2871, file: !676, line: 93, baseType: !2887, size: 64, offset: 1344)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2871, file: !676, line: 94, baseType: !25, size: 64, offset: 1408)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2871, file: !676, line: 95, baseType: !28, size: 64, offset: 1472)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2871, file: !676, line: 96, baseType: !41, size: 32, offset: 1536)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2871, file: !676, line: 98, baseType: !723, size: 160, offset: 1568)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910}
!2905 = !DILocalVariable(name: "stream", arg: 1, scope: !2865, file: !152, line: 61, type: !2868)
!2906 = !DILocalVariable(name: "command_name", arg: 2, scope: !2865, file: !152, line: 62, type: !38)
!2907 = !DILocalVariable(name: "package", arg: 3, scope: !2865, file: !152, line: 62, type: !38)
!2908 = !DILocalVariable(name: "version", arg: 4, scope: !2865, file: !152, line: 63, type: !38)
!2909 = !DILocalVariable(name: "authors", arg: 5, scope: !2865, file: !152, line: 64, type: !2903)
!2910 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2865, file: !152, line: 64, type: !28)
!2911 = !DILocation(line: 0, scope: !2865)
!2912 = !DILocation(line: 66, column: 7, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2865, file: !152, line: 66, column: 7)
!2914 = !DILocation(line: 66, column: 7, scope: !2865)
!2915 = !DILocation(line: 67, column: 5, scope: !2913)
!2916 = !DILocation(line: 69, column: 5, scope: !2913)
!2917 = !DILocation(line: 83, column: 3, scope: !2865)
!2918 = !DILocation(line: 85, column: 3, scope: !2865)
!2919 = !DILocation(line: 88, column: 3, scope: !2865)
!2920 = !DILocation(line: 95, column: 3, scope: !2865)
!2921 = !DILocation(line: 97, column: 3, scope: !2865)
!2922 = !DILocation(line: 105, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2865, file: !152, line: 98, column: 5)
!2924 = !DILocation(line: 106, column: 7, scope: !2923)
!2925 = !DILocation(line: 109, column: 7, scope: !2923)
!2926 = !DILocation(line: 110, column: 7, scope: !2923)
!2927 = !DILocation(line: 113, column: 7, scope: !2923)
!2928 = !DILocation(line: 115, column: 7, scope: !2923)
!2929 = !DILocation(line: 120, column: 7, scope: !2923)
!2930 = !DILocation(line: 122, column: 7, scope: !2923)
!2931 = !DILocation(line: 127, column: 7, scope: !2923)
!2932 = !DILocation(line: 129, column: 7, scope: !2923)
!2933 = !DILocation(line: 134, column: 7, scope: !2923)
!2934 = !DILocation(line: 137, column: 7, scope: !2923)
!2935 = !DILocation(line: 142, column: 7, scope: !2923)
!2936 = !DILocation(line: 145, column: 7, scope: !2923)
!2937 = !DILocation(line: 150, column: 7, scope: !2923)
!2938 = !DILocation(line: 154, column: 7, scope: !2923)
!2939 = !DILocation(line: 159, column: 7, scope: !2923)
!2940 = !DILocation(line: 163, column: 7, scope: !2923)
!2941 = !DILocation(line: 170, column: 7, scope: !2923)
!2942 = !DILocation(line: 174, column: 7, scope: !2923)
!2943 = !DILocation(line: 176, column: 1, scope: !2865)
!2944 = distinct !DISubprogram(name: "version_etc_ar", scope: !152, file: !152, line: 183, type: !2945, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{null, !2868, !38, !38, !38, !2903}
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953}
!2948 = !DILocalVariable(name: "stream", arg: 1, scope: !2944, file: !152, line: 183, type: !2868)
!2949 = !DILocalVariable(name: "command_name", arg: 2, scope: !2944, file: !152, line: 184, type: !38)
!2950 = !DILocalVariable(name: "package", arg: 3, scope: !2944, file: !152, line: 184, type: !38)
!2951 = !DILocalVariable(name: "version", arg: 4, scope: !2944, file: !152, line: 185, type: !38)
!2952 = !DILocalVariable(name: "authors", arg: 5, scope: !2944, file: !152, line: 185, type: !2903)
!2953 = !DILocalVariable(name: "n_authors", scope: !2944, file: !152, line: 187, type: !28)
!2954 = !DILocation(line: 0, scope: !2944)
!2955 = !DILocation(line: 189, column: 8, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2944, file: !152, line: 189, column: 3)
!2957 = !DILocation(line: 0, scope: !2956)
!2958 = !DILocation(line: 189, column: 23, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !152, line: 189, column: 3)
!2960 = !DILocation(line: 189, column: 3, scope: !2956)
!2961 = !DILocation(line: 189, column: 52, scope: !2959)
!2962 = distinct !{!2962, !2960, !2963, !646}
!2963 = !DILocation(line: 190, column: 5, scope: !2956)
!2964 = !DILocation(line: 191, column: 3, scope: !2944)
!2965 = !DILocation(line: 192, column: 1, scope: !2944)
!2966 = distinct !DISubprogram(name: "version_etc_va", scope: !152, file: !152, line: 199, type: !2967, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !2976)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !2868, !38, !38, !38, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2970, file: !152, line: 192, baseType: !7, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2970, file: !152, line: 192, baseType: !7, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2970, file: !152, line: 192, baseType: !25, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2970, file: !152, line: 192, baseType: !25, size: 64, offset: 128)
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982, !2983}
!2977 = !DILocalVariable(name: "stream", arg: 1, scope: !2966, file: !152, line: 199, type: !2868)
!2978 = !DILocalVariable(name: "command_name", arg: 2, scope: !2966, file: !152, line: 200, type: !38)
!2979 = !DILocalVariable(name: "package", arg: 3, scope: !2966, file: !152, line: 200, type: !38)
!2980 = !DILocalVariable(name: "version", arg: 4, scope: !2966, file: !152, line: 201, type: !38)
!2981 = !DILocalVariable(name: "authors", arg: 5, scope: !2966, file: !152, line: 201, type: !2969)
!2982 = !DILocalVariable(name: "n_authors", scope: !2966, file: !152, line: 203, type: !28)
!2983 = !DILocalVariable(name: "authtab", scope: !2966, file: !152, line: 204, type: !2984)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, elements: !105)
!2985 = !DILocation(line: 0, scope: !2966)
!2986 = !DILocation(line: 204, column: 3, scope: !2966)
!2987 = !DILocation(line: 204, column: 15, scope: !2966)
!2988 = !DILocation(line: 208, column: 35, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !152, line: 206, column: 3)
!2990 = distinct !DILexicalBlock(scope: !2966, file: !152, line: 206, column: 3)
!2991 = !DILocation(line: 208, column: 14, scope: !2989)
!2992 = !DILocation(line: 208, column: 33, scope: !2989)
!2993 = !DILocation(line: 208, column: 67, scope: !2989)
!2994 = !DILocation(line: 206, column: 3, scope: !2990)
!2995 = !DILocation(line: 0, scope: !2990)
!2996 = !DILocation(line: 211, column: 3, scope: !2966)
!2997 = !DILocation(line: 213, column: 1, scope: !2966)
!2998 = distinct !DISubprogram(name: "version_etc", scope: !152, file: !152, line: 230, type: !2999, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !2868, !38, !38, !38, null}
!3001 = !{!3002, !3003, !3004, !3005, !3006}
!3002 = !DILocalVariable(name: "stream", arg: 1, scope: !2998, file: !152, line: 230, type: !2868)
!3003 = !DILocalVariable(name: "command_name", arg: 2, scope: !2998, file: !152, line: 231, type: !38)
!3004 = !DILocalVariable(name: "package", arg: 3, scope: !2998, file: !152, line: 231, type: !38)
!3005 = !DILocalVariable(name: "version", arg: 4, scope: !2998, file: !152, line: 232, type: !38)
!3006 = !DILocalVariable(name: "authors", scope: !2998, file: !152, line: 234, type: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !671, line: 52, baseType: !3008)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3009, line: 32, baseType: !3010)
!3009 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !152, baseType: !3011)
!3011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2970, size: 192, elements: !705)
!3012 = !DILocation(line: 0, scope: !2998)
!3013 = !DILocation(line: 234, column: 3, scope: !2998)
!3014 = !DILocation(line: 234, column: 11, scope: !2998)
!3015 = !DILocation(line: 236, column: 3, scope: !2998)
!3016 = !DILocation(line: 237, column: 3, scope: !2998)
!3017 = !DILocation(line: 238, column: 3, scope: !2998)
!3018 = !DILocation(line: 239, column: 1, scope: !2998)
!3019 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !152, file: !152, line: 242, type: !1123, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !51)
!3020 = !DILocation(line: 244, column: 3, scope: !3019)
!3021 = !DILocation(line: 249, column: 3, scope: !3019)
!3022 = !DILocation(line: 255, column: 3, scope: !3019)
!3023 = !DILocation(line: 260, column: 3, scope: !3019)
!3024 = !DILocation(line: 262, column: 1, scope: !3019)
!3025 = distinct !DISubprogram(name: "xnmalloc", scope: !162, file: !162, line: 99, type: !1158, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3026)
!3026 = !{!3027, !3028}
!3027 = !DILocalVariable(name: "n", arg: 1, scope: !3025, file: !162, line: 99, type: !28)
!3028 = !DILocalVariable(name: "s", arg: 2, scope: !3025, file: !162, line: 99, type: !28)
!3029 = !DILocation(line: 0, scope: !3025)
!3030 = !DILocation(line: 101, column: 7, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3025, file: !162, line: 101, column: 7)
!3032 = !DILocation(line: 101, column: 7, scope: !3025)
!3033 = !DILocation(line: 102, column: 5, scope: !3031)
!3034 = !DILocation(line: 103, column: 21, scope: !3025)
!3035 = !DILocalVariable(name: "n", arg: 1, scope: !3036, file: !159, line: 39, type: !28)
!3036 = distinct !DISubprogram(name: "xmalloc", scope: !159, file: !159, line: 39, type: !3037, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!25, !28}
!3039 = !{!3035, !3040}
!3040 = !DILocalVariable(name: "p", scope: !3036, file: !159, line: 41, type: !25)
!3041 = !DILocation(line: 0, scope: !3036, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 103, column: 10, scope: !3025)
!3043 = !DILocation(line: 41, column: 13, scope: !3036, inlinedAt: !3042)
!3044 = !DILocation(line: 42, column: 8, scope: !3045, inlinedAt: !3042)
!3045 = distinct !DILexicalBlock(scope: !3036, file: !159, line: 42, column: 7)
!3046 = !DILocation(line: 42, column: 10, scope: !3045, inlinedAt: !3042)
!3047 = !DILocation(line: 43, column: 5, scope: !3045, inlinedAt: !3042)
!3048 = !DILocation(line: 103, column: 3, scope: !3025)
!3049 = !DILocation(line: 0, scope: !3036)
!3050 = !DILocation(line: 41, column: 13, scope: !3036)
!3051 = !DILocation(line: 42, column: 8, scope: !3045)
!3052 = !DILocation(line: 42, column: 10, scope: !3045)
!3053 = !DILocation(line: 43, column: 5, scope: !3045)
!3054 = !DILocation(line: 44, column: 3, scope: !3036)
!3055 = distinct !DISubprogram(name: "xnrealloc", scope: !162, file: !162, line: 112, type: !3056, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!25, !25, !28, !28}
!3058 = !{!3059, !3060, !3061}
!3059 = !DILocalVariable(name: "p", arg: 1, scope: !3055, file: !162, line: 112, type: !25)
!3060 = !DILocalVariable(name: "n", arg: 2, scope: !3055, file: !162, line: 112, type: !28)
!3061 = !DILocalVariable(name: "s", arg: 3, scope: !3055, file: !162, line: 112, type: !28)
!3062 = !DILocation(line: 0, scope: !3055)
!3063 = !DILocation(line: 114, column: 7, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3055, file: !162, line: 114, column: 7)
!3065 = !DILocation(line: 114, column: 7, scope: !3055)
!3066 = !DILocation(line: 115, column: 5, scope: !3064)
!3067 = !DILocation(line: 116, column: 25, scope: !3055)
!3068 = !DILocalVariable(name: "p", arg: 1, scope: !3069, file: !159, line: 51, type: !25)
!3069 = distinct !DISubprogram(name: "xrealloc", scope: !159, file: !159, line: 51, type: !3070, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!25, !25, !28}
!3072 = !{!3068, !3073}
!3073 = !DILocalVariable(name: "n", arg: 2, scope: !3069, file: !159, line: 51, type: !28)
!3074 = !DILocation(line: 0, scope: !3069, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 116, column: 10, scope: !3055)
!3076 = !DILocation(line: 53, column: 8, scope: !3077, inlinedAt: !3075)
!3077 = distinct !DILexicalBlock(scope: !3069, file: !159, line: 53, column: 7)
!3078 = !DILocation(line: 53, column: 10, scope: !3077, inlinedAt: !3075)
!3079 = !DILocation(line: 57, column: 7, scope: !3080, inlinedAt: !3075)
!3080 = distinct !DILexicalBlock(scope: !3077, file: !159, line: 54, column: 5)
!3081 = !DILocation(line: 58, column: 7, scope: !3080, inlinedAt: !3075)
!3082 = !DILocation(line: 61, column: 7, scope: !3069, inlinedAt: !3075)
!3083 = !DILocation(line: 62, column: 8, scope: !3084, inlinedAt: !3075)
!3084 = distinct !DILexicalBlock(scope: !3069, file: !159, line: 62, column: 7)
!3085 = !DILocation(line: 62, column: 10, scope: !3084, inlinedAt: !3075)
!3086 = !DILocation(line: 63, column: 5, scope: !3084, inlinedAt: !3075)
!3087 = !DILocation(line: 116, column: 3, scope: !3055)
!3088 = !DILocation(line: 0, scope: !3069)
!3089 = !DILocation(line: 53, column: 8, scope: !3077)
!3090 = !DILocation(line: 53, column: 10, scope: !3077)
!3091 = !DILocation(line: 57, column: 7, scope: !3080)
!3092 = !DILocation(line: 58, column: 7, scope: !3080)
!3093 = !DILocation(line: 61, column: 7, scope: !3069)
!3094 = !DILocation(line: 62, column: 8, scope: !3084)
!3095 = !DILocation(line: 62, column: 10, scope: !3084)
!3096 = !DILocation(line: 63, column: 5, scope: !3084)
!3097 = !DILocation(line: 65, column: 1, scope: !3069)
!3098 = !DILocation(line: 0, scope: !163)
!3099 = !DILocation(line: 176, column: 14, scope: !163)
!3100 = !DILocation(line: 178, column: 9, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !163, file: !162, line: 178, column: 7)
!3102 = !DILocation(line: 178, column: 7, scope: !163)
!3103 = !DILocation(line: 180, column: 13, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !162, line: 180, column: 11)
!3105 = distinct !DILexicalBlock(scope: !3101, file: !162, line: 179, column: 5)
!3106 = !DILocation(line: 180, column: 11, scope: !3105)
!3107 = !DILocation(line: 188, column: 30, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !162, line: 181, column: 9)
!3109 = !DILocation(line: 189, column: 16, scope: !3108)
!3110 = !DILocation(line: 189, column: 13, scope: !3108)
!3111 = !DILocation(line: 190, column: 9, scope: !3108)
!3112 = !DILocation(line: 191, column: 11, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3105, file: !162, line: 191, column: 11)
!3114 = !DILocation(line: 191, column: 11, scope: !3105)
!3115 = !DILocation(line: 206, column: 7, scope: !163)
!3116 = !DILocation(line: 207, column: 25, scope: !163)
!3117 = !DILocation(line: 0, scope: !3069, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 207, column: 10, scope: !163)
!3119 = !DILocation(line: 53, column: 10, scope: !3077, inlinedAt: !3118)
!3120 = !DILocation(line: 192, column: 9, scope: !3113)
!3121 = !DILocation(line: 200, column: 69, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !162, line: 200, column: 11)
!3123 = distinct !DILexicalBlock(scope: !3101, file: !162, line: 195, column: 5)
!3124 = !DILocation(line: 201, column: 11, scope: !3122)
!3125 = !DILocation(line: 200, column: 11, scope: !3123)
!3126 = !DILocation(line: 202, column: 9, scope: !3122)
!3127 = !DILocation(line: 203, column: 14, scope: !3123)
!3128 = !DILocation(line: 203, column: 18, scope: !3123)
!3129 = !DILocation(line: 203, column: 9, scope: !3123)
!3130 = !DILocation(line: 53, column: 8, scope: !3077, inlinedAt: !3118)
!3131 = !DILocation(line: 57, column: 7, scope: !3080, inlinedAt: !3118)
!3132 = !DILocation(line: 58, column: 7, scope: !3080, inlinedAt: !3118)
!3133 = !DILocation(line: 61, column: 7, scope: !3069, inlinedAt: !3118)
!3134 = !DILocation(line: 62, column: 8, scope: !3084, inlinedAt: !3118)
!3135 = !DILocation(line: 62, column: 10, scope: !3084, inlinedAt: !3118)
!3136 = !DILocation(line: 63, column: 5, scope: !3084, inlinedAt: !3118)
!3137 = !DILocation(line: 207, column: 3, scope: !163)
!3138 = distinct !DISubprogram(name: "xcharalloc", scope: !162, file: !162, line: 216, type: !1147, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3139)
!3139 = !{!3140}
!3140 = !DILocalVariable(name: "n", arg: 1, scope: !3138, file: !162, line: 216, type: !28)
!3141 = !DILocation(line: 0, scope: !3138)
!3142 = !DILocation(line: 0, scope: !3036, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 218, column: 10, scope: !3138)
!3144 = !DILocation(line: 41, column: 13, scope: !3036, inlinedAt: !3143)
!3145 = !DILocation(line: 42, column: 8, scope: !3045, inlinedAt: !3143)
!3146 = !DILocation(line: 42, column: 10, scope: !3045, inlinedAt: !3143)
!3147 = !DILocation(line: 43, column: 5, scope: !3045, inlinedAt: !3143)
!3148 = !DILocation(line: 218, column: 3, scope: !3138)
!3149 = distinct !DISubprogram(name: "x2realloc", scope: !159, file: !159, line: 74, type: !3150, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!25, !25, !166}
!3152 = !{!3153, !3154}
!3153 = !DILocalVariable(name: "p", arg: 1, scope: !3149, file: !159, line: 74, type: !25)
!3154 = !DILocalVariable(name: "pn", arg: 2, scope: !3149, file: !159, line: 74, type: !166)
!3155 = !DILocation(line: 0, scope: !3149)
!3156 = !DILocation(line: 0, scope: !163, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 76, column: 10, scope: !3149)
!3158 = !DILocation(line: 176, column: 14, scope: !163, inlinedAt: !3157)
!3159 = !DILocation(line: 178, column: 9, scope: !3101, inlinedAt: !3157)
!3160 = !DILocation(line: 178, column: 7, scope: !163, inlinedAt: !3157)
!3161 = !DILocation(line: 180, column: 13, scope: !3104, inlinedAt: !3157)
!3162 = !DILocation(line: 180, column: 11, scope: !3105, inlinedAt: !3157)
!3163 = !DILocation(line: 191, column: 11, scope: !3113, inlinedAt: !3157)
!3164 = !DILocation(line: 191, column: 11, scope: !3105, inlinedAt: !3157)
!3165 = !DILocation(line: 192, column: 9, scope: !3113, inlinedAt: !3157)
!3166 = !DILocation(line: 201, column: 11, scope: !3122, inlinedAt: !3157)
!3167 = !DILocation(line: 200, column: 11, scope: !3123, inlinedAt: !3157)
!3168 = !DILocation(line: 202, column: 9, scope: !3122, inlinedAt: !3157)
!3169 = !DILocation(line: 203, column: 14, scope: !3123, inlinedAt: !3157)
!3170 = !DILocation(line: 203, column: 18, scope: !3123, inlinedAt: !3157)
!3171 = !DILocation(line: 203, column: 9, scope: !3123, inlinedAt: !3157)
!3172 = !DILocation(line: 0, scope: !3069, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 207, column: 10, scope: !163, inlinedAt: !3157)
!3174 = !DILocation(line: 53, column: 10, scope: !3077, inlinedAt: !3173)
!3175 = !DILocation(line: 206, column: 7, scope: !163, inlinedAt: !3157)
!3176 = !DILocation(line: 61, column: 7, scope: !3069, inlinedAt: !3173)
!3177 = !DILocation(line: 62, column: 8, scope: !3084, inlinedAt: !3173)
!3178 = !DILocation(line: 62, column: 10, scope: !3084, inlinedAt: !3173)
!3179 = !DILocation(line: 63, column: 5, scope: !3084, inlinedAt: !3173)
!3180 = !DILocation(line: 76, column: 3, scope: !3149)
!3181 = distinct !DISubprogram(name: "xzalloc", scope: !159, file: !159, line: 84, type: !3037, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3182)
!3182 = !{!3183}
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !159, line: 84, type: !28)
!3184 = !DILocation(line: 0, scope: !3181)
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3186, file: !159, line: 93, type: !28)
!3186 = distinct !DISubprogram(name: "xcalloc", scope: !159, file: !159, line: 93, type: !1158, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3187)
!3187 = !{!3185, !3188, !3189}
!3188 = !DILocalVariable(name: "s", arg: 2, scope: !3186, file: !159, line: 93, type: !28)
!3189 = !DILocalVariable(name: "p", scope: !3186, file: !159, line: 95, type: !25)
!3190 = !DILocation(line: 0, scope: !3186, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 86, column: 10, scope: !3181)
!3192 = !DILocation(line: 100, column: 7, scope: !3193, inlinedAt: !3191)
!3193 = distinct !DILexicalBlock(scope: !3186, file: !159, line: 100, column: 7)
!3194 = !DILocation(line: 101, column: 7, scope: !3193, inlinedAt: !3191)
!3195 = !DILocation(line: 101, column: 18, scope: !3193, inlinedAt: !3191)
!3196 = !DILocation(line: 101, column: 16, scope: !3193, inlinedAt: !3191)
!3197 = !DILocation(line: 100, column: 7, scope: !3186, inlinedAt: !3191)
!3198 = !DILocation(line: 102, column: 5, scope: !3193, inlinedAt: !3191)
!3199 = !DILocation(line: 86, column: 3, scope: !3181)
!3200 = !DILocation(line: 0, scope: !3186)
!3201 = !DILocation(line: 100, column: 7, scope: !3193)
!3202 = !DILocation(line: 101, column: 7, scope: !3193)
!3203 = !DILocation(line: 101, column: 18, scope: !3193)
!3204 = !DILocation(line: 101, column: 16, scope: !3193)
!3205 = !DILocation(line: 100, column: 7, scope: !3186)
!3206 = !DILocation(line: 102, column: 5, scope: !3193)
!3207 = !DILocation(line: 103, column: 3, scope: !3186)
!3208 = distinct !DISubprogram(name: "xmemdup", scope: !159, file: !159, line: 111, type: !3209, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!25, !1181, !28}
!3211 = !{!3212, !3213}
!3212 = !DILocalVariable(name: "p", arg: 1, scope: !3208, file: !159, line: 111, type: !1181)
!3213 = !DILocalVariable(name: "s", arg: 2, scope: !3208, file: !159, line: 111, type: !28)
!3214 = !DILocation(line: 0, scope: !3208)
!3215 = !DILocation(line: 0, scope: !3036, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 113, column: 18, scope: !3208)
!3217 = !DILocation(line: 41, column: 13, scope: !3036, inlinedAt: !3216)
!3218 = !DILocation(line: 42, column: 8, scope: !3045, inlinedAt: !3216)
!3219 = !DILocation(line: 42, column: 10, scope: !3045, inlinedAt: !3216)
!3220 = !DILocation(line: 43, column: 5, scope: !3045, inlinedAt: !3216)
!3221 = !DILocalVariable(name: "__dest", arg: 1, scope: !3222, file: !1176, line: 26, type: !1179)
!3222 = distinct !DISubprogram(name: "memcpy", scope: !1176, file: !1176, line: 26, type: !1177, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3223)
!3223 = !{!3221, !3224, !3225}
!3224 = !DILocalVariable(name: "__src", arg: 2, scope: !3222, file: !1176, line: 26, type: !1180)
!3225 = !DILocalVariable(name: "__len", arg: 3, scope: !3222, file: !1176, line: 26, type: !28)
!3226 = !DILocation(line: 0, scope: !3222, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 113, column: 10, scope: !3208)
!3228 = !DILocation(line: 29, column: 10, scope: !3222, inlinedAt: !3227)
!3229 = !DILocation(line: 113, column: 3, scope: !3208)
!3230 = distinct !DISubprogram(name: "xstrdup", scope: !159, file: !159, line: 119, type: !1113, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3231)
!3231 = !{!3232}
!3232 = !DILocalVariable(name: "string", arg: 1, scope: !3230, file: !159, line: 119, type: !38)
!3233 = !DILocation(line: 0, scope: !3230)
!3234 = !DILocation(line: 121, column: 27, scope: !3230)
!3235 = !DILocation(line: 121, column: 43, scope: !3230)
!3236 = !DILocation(line: 0, scope: !3208, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 121, column: 10, scope: !3230)
!3238 = !DILocation(line: 0, scope: !3036, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 113, column: 18, scope: !3208, inlinedAt: !3237)
!3240 = !DILocation(line: 41, column: 13, scope: !3036, inlinedAt: !3239)
!3241 = !DILocation(line: 42, column: 8, scope: !3045, inlinedAt: !3239)
!3242 = !DILocation(line: 42, column: 10, scope: !3045, inlinedAt: !3239)
!3243 = !DILocation(line: 43, column: 5, scope: !3045, inlinedAt: !3239)
!3244 = !DILocation(line: 0, scope: !3222, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 113, column: 10, scope: !3208, inlinedAt: !3237)
!3246 = !DILocation(line: 29, column: 10, scope: !3222, inlinedAt: !3245)
!3247 = !DILocation(line: 121, column: 3, scope: !3230)
!3248 = distinct !DISubprogram(name: "xalloc_die", scope: !176, file: !176, line: 32, type: !1123, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !51)
!3249 = !DILocation(line: 34, column: 10, scope: !3248)
!3250 = !DILocation(line: 34, column: 33, scope: !3248)
!3251 = !DILocation(line: 34, column: 3, scope: !3248)
!3252 = !DILocation(line: 40, column: 3, scope: !3248)
!3253 = distinct !DISubprogram(name: "xgetcwd", scope: !178, file: !178, line: 35, type: !782, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !3254)
!3254 = !{!3255}
!3255 = !DILocalVariable(name: "cwd", scope: !3253, file: !178, line: 37, type: !26)
!3256 = !DILocation(line: 37, column: 15, scope: !3253)
!3257 = !DILocation(line: 0, scope: !3253)
!3258 = !DILocation(line: 38, column: 9, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3253, file: !178, line: 38, column: 7)
!3260 = !DILocation(line: 38, column: 13, scope: !3259)
!3261 = !DILocation(line: 38, column: 16, scope: !3259)
!3262 = !DILocation(line: 38, column: 22, scope: !3259)
!3263 = !DILocation(line: 38, column: 7, scope: !3253)
!3264 = !DILocation(line: 39, column: 5, scope: !3259)
!3265 = !DILocation(line: 40, column: 3, scope: !3253)
!3266 = distinct !DISubprogram(name: "rpl_calloc", scope: !180, file: !180, line: 42, type: !1158, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3267)
!3267 = !{!3268, !3269, !3270, !3271}
!3268 = !DILocalVariable(name: "n", arg: 1, scope: !3266, file: !180, line: 42, type: !28)
!3269 = !DILocalVariable(name: "s", arg: 2, scope: !3266, file: !180, line: 42, type: !28)
!3270 = !DILocalVariable(name: "result", scope: !3266, file: !180, line: 44, type: !25)
!3271 = !DILocalVariable(name: "bytes", scope: !3272, file: !180, line: 56, type: !28)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !180, line: 53, column: 5)
!3273 = distinct !DILexicalBlock(scope: !3266, file: !180, line: 47, column: 7)
!3274 = !DILocation(line: 0, scope: !3266)
!3275 = !DILocation(line: 47, column: 9, scope: !3273)
!3276 = !DILocation(line: 47, column: 14, scope: !3273)
!3277 = !DILocation(line: 0, scope: !3272)
!3278 = !DILocation(line: 57, column: 21, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3272, file: !180, line: 57, column: 11)
!3280 = !DILocation(line: 57, column: 11, scope: !3272)
!3281 = !DILocation(line: 59, column: 11, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3279, file: !180, line: 58, column: 9)
!3283 = !DILocation(line: 59, column: 17, scope: !3282)
!3284 = !DILocation(line: 65, column: 12, scope: !3266)
!3285 = !DILocation(line: 72, column: 3, scope: !3266)
!3286 = !DILocation(line: 73, column: 1, scope: !3266)
!3287 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !182, file: !182, line: 86, type: !3288, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3302)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!28, !3290, !38, !28, !3291}
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1520, line: 6, baseType: !3293)
!3293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1522, line: 21, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1522, line: 13, size: 64, elements: !3295)
!3295 = !{!3296, !3297}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3294, file: !1522, line: 15, baseType: !41, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3294, file: !1522, line: 20, baseType: !3298, size: 32, offset: 32)
!3298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3294, file: !1522, line: 16, size: 32, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3298, file: !1522, line: 18, baseType: !7, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3298, file: !1522, line: 19, baseType: !1531, size: 32)
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3303 = !DILocalVariable(name: "pwc", arg: 1, scope: !3287, file: !182, line: 86, type: !3290)
!3304 = !DILocalVariable(name: "s", arg: 2, scope: !3287, file: !182, line: 86, type: !38)
!3305 = !DILocalVariable(name: "n", arg: 3, scope: !3287, file: !182, line: 86, type: !28)
!3306 = !DILocalVariable(name: "ps", arg: 4, scope: !3287, file: !182, line: 86, type: !3291)
!3307 = !DILocalVariable(name: "ret", scope: !3287, file: !182, line: 88, type: !28)
!3308 = !DILocalVariable(name: "wc", scope: !3287, file: !182, line: 89, type: !1536)
!3309 = !DILocalVariable(name: "uc", scope: !3310, file: !182, line: 156, type: !970)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !182, line: 155, column: 5)
!3311 = distinct !DILexicalBlock(scope: !3287, file: !182, line: 154, column: 7)
!3312 = !DILocation(line: 0, scope: !3287)
!3313 = !DILocation(line: 89, column: 3, scope: !3287)
!3314 = !DILocation(line: 105, column: 9, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3287, file: !182, line: 105, column: 7)
!3316 = !DILocation(line: 105, column: 7, scope: !3287)
!3317 = !DILocation(line: 145, column: 9, scope: !3287)
!3318 = !DILocation(line: 154, column: 19, scope: !3311)
!3319 = !DILocation(line: 154, column: 26, scope: !3311)
!3320 = !DILocation(line: 154, column: 41, scope: !3311)
!3321 = !DILocation(line: 154, column: 7, scope: !3287)
!3322 = !DILocation(line: 156, column: 26, scope: !3310)
!3323 = !DILocation(line: 0, scope: !3310)
!3324 = !DILocation(line: 157, column: 14, scope: !3310)
!3325 = !DILocation(line: 157, column: 12, scope: !3310)
!3326 = !DILocation(line: 163, column: 1, scope: !3287)
!3327 = !DISubprogram(name: "mbrtowc", scope: !2198, file: !2198, line: 296, type: !3328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!30, !43, !38, !30, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3331 = distinct !DISubprogram(name: "close_stream", scope: !185, file: !185, line: 56, type: !3332, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !3368)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!41, !3334}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2870, line: 7, baseType: !3336)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !676, line: 49, size: 1728, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3336, file: !676, line: 51, baseType: !41, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3336, file: !676, line: 54, baseType: !26, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3336, file: !676, line: 55, baseType: !26, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3336, file: !676, line: 56, baseType: !26, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3336, file: !676, line: 57, baseType: !26, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3336, file: !676, line: 58, baseType: !26, size: 64, offset: 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3336, file: !676, line: 59, baseType: !26, size: 64, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3336, file: !676, line: 60, baseType: !26, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3336, file: !676, line: 61, baseType: !26, size: 64, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3336, file: !676, line: 64, baseType: !26, size: 64, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3336, file: !676, line: 65, baseType: !26, size: 64, offset: 640)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3336, file: !676, line: 66, baseType: !26, size: 64, offset: 704)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3336, file: !676, line: 68, baseType: !691, size: 64, offset: 768)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3336, file: !676, line: 70, baseType: !3352, size: 64, offset: 832)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3336, file: !676, line: 72, baseType: !41, size: 32, offset: 896)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3336, file: !676, line: 73, baseType: !41, size: 32, offset: 928)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3336, file: !676, line: 74, baseType: !697, size: 64, offset: 960)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3336, file: !676, line: 77, baseType: !99, size: 16, offset: 1024)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3336, file: !676, line: 78, baseType: !702, size: 8, offset: 1040)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3336, file: !676, line: 79, baseType: !704, size: 8, offset: 1048)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3336, file: !676, line: 81, baseType: !708, size: 64, offset: 1088)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3336, file: !676, line: 89, baseType: !711, size: 64, offset: 1152)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3336, file: !676, line: 91, baseType: !713, size: 64, offset: 1216)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3336, file: !676, line: 92, baseType: !716, size: 64, offset: 1280)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3336, file: !676, line: 93, baseType: !3352, size: 64, offset: 1344)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3336, file: !676, line: 94, baseType: !25, size: 64, offset: 1408)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3336, file: !676, line: 95, baseType: !28, size: 64, offset: 1472)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3336, file: !676, line: 96, baseType: !41, size: 32, offset: 1536)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3336, file: !676, line: 98, baseType: !723, size: 160, offset: 1568)
!3368 = !{!3369, !3370, !3372, !3373}
!3369 = !DILocalVariable(name: "stream", arg: 1, scope: !3331, file: !185, line: 56, type: !3334)
!3370 = !DILocalVariable(name: "some_pending", scope: !3331, file: !185, line: 58, type: !3371)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!3372 = !DILocalVariable(name: "prev_fail", scope: !3331, file: !185, line: 59, type: !3371)
!3373 = !DILocalVariable(name: "fclose_fail", scope: !3331, file: !185, line: 60, type: !3371)
!3374 = !DILocation(line: 0, scope: !3331)
!3375 = !DILocation(line: 58, column: 30, scope: !3331)
!3376 = !DILocalVariable(name: "__stream", arg: 1, scope: !3377, file: !3378, line: 135, type: !3334)
!3377 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3378, file: !3378, line: 135, type: !3332, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !3379)
!3378 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3379 = !{!3376}
!3380 = !DILocation(line: 0, scope: !3377, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 59, column: 27, scope: !3331)
!3382 = !DILocation(line: 137, column: 10, scope: !3377, inlinedAt: !3381)
!3383 = !{!3384, !772, i64 0}
!3384 = !{!"_IO_FILE", !772, i64 0, !603, i64 8, !603, i64 16, !603, i64 24, !603, i64 32, !603, i64 40, !603, i64 48, !603, i64 56, !603, i64 64, !603, i64 72, !603, i64 80, !603, i64 88, !603, i64 96, !603, i64 104, !772, i64 112, !772, i64 116, !860, i64 120, !1056, i64 128, !604, i64 130, !604, i64 131, !603, i64 136, !860, i64 144, !603, i64 152, !603, i64 160, !603, i64 168, !603, i64 176, !860, i64 184, !772, i64 192, !604, i64 196}
!3385 = !DILocation(line: 59, column: 43, scope: !3331)
!3386 = !DILocation(line: 60, column: 29, scope: !3331)
!3387 = !DILocation(line: 60, column: 45, scope: !3331)
!3388 = !DILocation(line: 70, column: 17, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3331, file: !185, line: 70, column: 7)
!3390 = !DILocation(line: 58, column: 50, scope: !3331)
!3391 = !DILocation(line: 70, column: 33, scope: !3389)
!3392 = !DILocation(line: 70, column: 53, scope: !3389)
!3393 = !DILocation(line: 70, column: 59, scope: !3389)
!3394 = !DILocation(line: 70, column: 7, scope: !3331)
!3395 = !DILocation(line: 72, column: 11, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3389, file: !185, line: 71, column: 5)
!3397 = !DILocation(line: 73, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3396, file: !185, line: 72, column: 11)
!3399 = !DILocation(line: 73, column: 15, scope: !3398)
!3400 = !DILocation(line: 78, column: 1, scope: !3331)
!3401 = distinct !DISubprogram(name: "hard_locale", scope: !187, file: !187, line: 27, type: !3402, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!60, !41}
!3404 = !{!3405, !3406}
!3405 = !DILocalVariable(name: "category", arg: 1, scope: !3401, file: !187, line: 27, type: !41)
!3406 = !DILocalVariable(name: "locale", scope: !3401, file: !187, line: 29, type: !3407)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2056, elements: !3408)
!3408 = !{!3409}
!3409 = !DISubrange(count: 257)
!3410 = !DILocation(line: 0, scope: !3401)
!3411 = !DILocation(line: 29, column: 3, scope: !3401)
!3412 = !DILocation(line: 29, column: 8, scope: !3401)
!3413 = !DILocation(line: 31, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3401, file: !187, line: 31, column: 7)
!3415 = !DILocation(line: 31, column: 7, scope: !3401)
!3416 = !DILocation(line: 34, column: 12, scope: !3401)
!3417 = !DILocation(line: 34, column: 38, scope: !3401)
!3418 = !DILocation(line: 34, column: 41, scope: !3401)
!3419 = !DILocation(line: 34, column: 66, scope: !3401)
!3420 = !DILocation(line: 35, column: 1, scope: !3401)
!3421 = distinct !DISubprogram(name: "locale_charset", scope: !189, file: !189, line: 831, type: !3422, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!38}
!3424 = !{!3425}
!3425 = !DILocalVariable(name: "codeset", scope: !3421, file: !189, line: 833, type: !38)
!3426 = !DILocation(line: 847, column: 13, scope: !3421)
!3427 = !DILocation(line: 0, scope: !3421)
!3428 = !DILocation(line: 911, column: 15, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3421, file: !189, line: 911, column: 7)
!3430 = !DILocation(line: 911, column: 7, scope: !3421)
!3431 = !DILocation(line: 1070, column: 13, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !189, line: 1070, column: 13)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !189, line: 1060, column: 7)
!3434 = distinct !DILexicalBlock(scope: !3421, file: !189, line: 1019, column: 3)
!3435 = !DILocation(line: 1070, column: 24, scope: !3432)
!3436 = !DILocation(line: 1070, column: 13, scope: !3433)
!3437 = !DILocation(line: 1158, column: 3, scope: !3421)
!3438 = !DISubprogram(name: "nl_langinfo", scope: !192, file: !192, line: 661, type: !3439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!26, !41}
!3441 = distinct !DISubprogram(name: "setlocale_null_r", scope: !578, file: !578, line: 269, type: !3442, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!41, !41, !26, !28}
!3444 = !{!3445, !3446, !3447}
!3445 = !DILocalVariable(name: "category", arg: 1, scope: !3441, file: !578, line: 269, type: !41)
!3446 = !DILocalVariable(name: "buf", arg: 2, scope: !3441, file: !578, line: 269, type: !26)
!3447 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3441, file: !578, line: 269, type: !28)
!3448 = !DILocation(line: 0, scope: !3441)
!3449 = !DILocalVariable(name: "category", arg: 1, scope: !3450, file: !578, line: 91, type: !41)
!3450 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !578, file: !578, line: 91, type: !3442, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3451)
!3451 = !{!3449, !3452, !3453, !3454, !3455}
!3452 = !DILocalVariable(name: "buf", arg: 2, scope: !3450, file: !578, line: 91, type: !26)
!3453 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3450, file: !578, line: 91, type: !28)
!3454 = !DILocalVariable(name: "result", scope: !3450, file: !578, line: 140, type: !38)
!3455 = !DILocalVariable(name: "length", scope: !3456, file: !578, line: 154, type: !28)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !578, line: 153, column: 5)
!3457 = distinct !DILexicalBlock(scope: !3450, file: !578, line: 142, column: 7)
!3458 = !DILocation(line: 0, scope: !3450, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 274, column: 10, scope: !3441)
!3460 = !DILocalVariable(name: "category", arg: 1, scope: !3461, file: !578, line: 60, type: !41)
!3461 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !578, file: !578, line: 60, type: !3462, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!38, !41}
!3464 = !{!3460, !3465}
!3465 = !DILocalVariable(name: "result", scope: !3461, file: !578, line: 62, type: !38)
!3466 = !DILocation(line: 0, scope: !3461, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 140, column: 24, scope: !3450, inlinedAt: !3459)
!3468 = !DILocation(line: 62, column: 24, scope: !3461, inlinedAt: !3467)
!3469 = !DILocation(line: 142, column: 14, scope: !3457, inlinedAt: !3459)
!3470 = !DILocation(line: 142, column: 7, scope: !3450, inlinedAt: !3459)
!3471 = !DILocation(line: 145, column: 19, scope: !3472, inlinedAt: !3459)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !578, line: 145, column: 11)
!3473 = distinct !DILexicalBlock(scope: !3457, file: !578, line: 143, column: 5)
!3474 = !DILocation(line: 145, column: 11, scope: !3473, inlinedAt: !3459)
!3475 = !DILocation(line: 149, column: 16, scope: !3472, inlinedAt: !3459)
!3476 = !DILocation(line: 149, column: 9, scope: !3472, inlinedAt: !3459)
!3477 = !DILocation(line: 154, column: 23, scope: !3456, inlinedAt: !3459)
!3478 = !DILocation(line: 0, scope: !3456, inlinedAt: !3459)
!3479 = !DILocation(line: 155, column: 18, scope: !3480, inlinedAt: !3459)
!3480 = distinct !DILexicalBlock(scope: !3456, file: !578, line: 155, column: 11)
!3481 = !DILocation(line: 155, column: 11, scope: !3456, inlinedAt: !3459)
!3482 = !DILocation(line: 157, column: 39, scope: !3483, inlinedAt: !3459)
!3483 = distinct !DILexicalBlock(scope: !3480, file: !578, line: 156, column: 9)
!3484 = !DILocalVariable(name: "__dest", arg: 1, scope: !3485, file: !1176, line: 26, type: !1179)
!3485 = distinct !DISubprogram(name: "memcpy", scope: !1176, file: !1176, line: 26, type: !1177, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3486)
!3486 = !{!3484, !3487, !3488}
!3487 = !DILocalVariable(name: "__src", arg: 2, scope: !3485, file: !1176, line: 26, type: !1180)
!3488 = !DILocalVariable(name: "__len", arg: 3, scope: !3485, file: !1176, line: 26, type: !28)
!3489 = !DILocation(line: 0, scope: !3485, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 157, column: 11, scope: !3483, inlinedAt: !3459)
!3491 = !DILocation(line: 29, column: 10, scope: !3485, inlinedAt: !3490)
!3492 = !DILocation(line: 158, column: 11, scope: !3483, inlinedAt: !3459)
!3493 = !DILocation(line: 162, column: 23, scope: !3494, inlinedAt: !3459)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !578, line: 162, column: 15)
!3495 = distinct !DILexicalBlock(scope: !3480, file: !578, line: 161, column: 9)
!3496 = !DILocation(line: 162, column: 15, scope: !3495, inlinedAt: !3459)
!3497 = !DILocation(line: 167, column: 44, scope: !3498, inlinedAt: !3459)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !578, line: 163, column: 13)
!3499 = !DILocation(line: 0, scope: !3485, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 167, column: 15, scope: !3498, inlinedAt: !3459)
!3501 = !DILocation(line: 29, column: 10, scope: !3485, inlinedAt: !3500)
!3502 = !DILocation(line: 168, column: 15, scope: !3498, inlinedAt: !3459)
!3503 = !DILocation(line: 168, column: 32, scope: !3498, inlinedAt: !3459)
!3504 = !DILocation(line: 169, column: 13, scope: !3498, inlinedAt: !3459)
!3505 = !DILocation(line: 0, scope: !3457, inlinedAt: !3459)
!3506 = !DILocation(line: 274, column: 3, scope: !3441)
!3507 = distinct !DISubprogram(name: "setlocale_null", scope: !578, file: !578, line: 301, type: !3462, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3508)
!3508 = !{!3509}
!3509 = !DILocalVariable(name: "category", arg: 1, scope: !3507, file: !578, line: 301, type: !41)
!3510 = !DILocation(line: 0, scope: !3507)
!3511 = !DILocation(line: 0, scope: !3461, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 304, column: 10, scope: !3507)
!3513 = !DILocation(line: 62, column: 24, scope: !3461, inlinedAt: !3512)
!3514 = !DILocation(line: 304, column: 3, scope: !3507)
!3515 = distinct !DISubprogram(name: "rpl_fclose", scope: !580, file: !580, line: 58, type: !3516, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !3552)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!41, !3518}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2870, line: 7, baseType: !3520)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !676, line: 49, size: 1728, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3520, file: !676, line: 51, baseType: !41, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3520, file: !676, line: 54, baseType: !26, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3520, file: !676, line: 55, baseType: !26, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3520, file: !676, line: 56, baseType: !26, size: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3520, file: !676, line: 57, baseType: !26, size: 64, offset: 256)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3520, file: !676, line: 58, baseType: !26, size: 64, offset: 320)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3520, file: !676, line: 59, baseType: !26, size: 64, offset: 384)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3520, file: !676, line: 60, baseType: !26, size: 64, offset: 448)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3520, file: !676, line: 61, baseType: !26, size: 64, offset: 512)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3520, file: !676, line: 64, baseType: !26, size: 64, offset: 576)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3520, file: !676, line: 65, baseType: !26, size: 64, offset: 640)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3520, file: !676, line: 66, baseType: !26, size: 64, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3520, file: !676, line: 68, baseType: !691, size: 64, offset: 768)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3520, file: !676, line: 70, baseType: !3536, size: 64, offset: 832)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3520, file: !676, line: 72, baseType: !41, size: 32, offset: 896)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3520, file: !676, line: 73, baseType: !41, size: 32, offset: 928)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3520, file: !676, line: 74, baseType: !697, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3520, file: !676, line: 77, baseType: !99, size: 16, offset: 1024)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3520, file: !676, line: 78, baseType: !702, size: 8, offset: 1040)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3520, file: !676, line: 79, baseType: !704, size: 8, offset: 1048)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3520, file: !676, line: 81, baseType: !708, size: 64, offset: 1088)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3520, file: !676, line: 89, baseType: !711, size: 64, offset: 1152)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3520, file: !676, line: 91, baseType: !713, size: 64, offset: 1216)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3520, file: !676, line: 92, baseType: !716, size: 64, offset: 1280)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3520, file: !676, line: 93, baseType: !3536, size: 64, offset: 1344)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3520, file: !676, line: 94, baseType: !25, size: 64, offset: 1408)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3520, file: !676, line: 95, baseType: !28, size: 64, offset: 1472)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3520, file: !676, line: 96, baseType: !41, size: 32, offset: 1536)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3520, file: !676, line: 98, baseType: !723, size: 160, offset: 1568)
!3552 = !{!3553, !3554, !3555, !3556}
!3553 = !DILocalVariable(name: "fp", arg: 1, scope: !3515, file: !580, line: 58, type: !3518)
!3554 = !DILocalVariable(name: "saved_errno", scope: !3515, file: !580, line: 60, type: !41)
!3555 = !DILocalVariable(name: "fd", scope: !3515, file: !580, line: 61, type: !41)
!3556 = !DILocalVariable(name: "result", scope: !3515, file: !580, line: 62, type: !41)
!3557 = !DILocation(line: 0, scope: !3515)
!3558 = !DILocation(line: 65, column: 8, scope: !3515)
!3559 = !DILocation(line: 66, column: 10, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3515, file: !580, line: 66, column: 7)
!3561 = !DILocation(line: 66, column: 7, scope: !3515)
!3562 = !DILocation(line: 67, column: 12, scope: !3560)
!3563 = !DILocation(line: 67, column: 5, scope: !3560)
!3564 = !DILocation(line: 72, column: 9, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3515, file: !580, line: 72, column: 7)
!3566 = !DILocation(line: 72, column: 23, scope: !3565)
!3567 = !DILocation(line: 72, column: 33, scope: !3565)
!3568 = !DILocation(line: 72, column: 26, scope: !3565)
!3569 = !DILocation(line: 72, column: 59, scope: !3565)
!3570 = !DILocation(line: 73, column: 7, scope: !3565)
!3571 = !DILocation(line: 73, column: 10, scope: !3565)
!3572 = !DILocation(line: 72, column: 7, scope: !3515)
!3573 = !DILocation(line: 100, column: 12, scope: !3515)
!3574 = !DILocation(line: 105, column: 7, scope: !3515)
!3575 = !DILocation(line: 74, column: 19, scope: !3565)
!3576 = !DILocation(line: 105, column: 19, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3515, file: !580, line: 105, column: 7)
!3578 = !DILocation(line: 107, column: 13, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3577, file: !580, line: 106, column: 5)
!3580 = !DILocation(line: 109, column: 5, scope: !3579)
!3581 = !DILocation(line: 112, column: 1, scope: !3515)
!3582 = !DISubprogram(name: "fileno", scope: !671, file: !671, line: 785, type: !3583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!41, !3536}
!3585 = !DISubprogram(name: "fclose", scope: !671, file: !671, line: 213, type: !3583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!3586 = !DISubprogram(name: "lseek", scope: !1202, file: !1202, line: 334, type: !3587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!699, !41, !699, !41}
!3589 = distinct !DISubprogram(name: "rpl_fflush", scope: !582, file: !582, line: 129, type: !3590, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !3626)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!41, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2870, line: 7, baseType: !3594)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !676, line: 49, size: 1728, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3594, file: !676, line: 51, baseType: !41, size: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3594, file: !676, line: 54, baseType: !26, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3594, file: !676, line: 55, baseType: !26, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3594, file: !676, line: 56, baseType: !26, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3594, file: !676, line: 57, baseType: !26, size: 64, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3594, file: !676, line: 58, baseType: !26, size: 64, offset: 320)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3594, file: !676, line: 59, baseType: !26, size: 64, offset: 384)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3594, file: !676, line: 60, baseType: !26, size: 64, offset: 448)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3594, file: !676, line: 61, baseType: !26, size: 64, offset: 512)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3594, file: !676, line: 64, baseType: !26, size: 64, offset: 576)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3594, file: !676, line: 65, baseType: !26, size: 64, offset: 640)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3594, file: !676, line: 66, baseType: !26, size: 64, offset: 704)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3594, file: !676, line: 68, baseType: !691, size: 64, offset: 768)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3594, file: !676, line: 70, baseType: !3610, size: 64, offset: 832)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3594, file: !676, line: 72, baseType: !41, size: 32, offset: 896)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3594, file: !676, line: 73, baseType: !41, size: 32, offset: 928)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3594, file: !676, line: 74, baseType: !697, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3594, file: !676, line: 77, baseType: !99, size: 16, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3594, file: !676, line: 78, baseType: !702, size: 8, offset: 1040)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3594, file: !676, line: 79, baseType: !704, size: 8, offset: 1048)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3594, file: !676, line: 81, baseType: !708, size: 64, offset: 1088)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3594, file: !676, line: 89, baseType: !711, size: 64, offset: 1152)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3594, file: !676, line: 91, baseType: !713, size: 64, offset: 1216)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3594, file: !676, line: 92, baseType: !716, size: 64, offset: 1280)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3594, file: !676, line: 93, baseType: !3610, size: 64, offset: 1344)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3594, file: !676, line: 94, baseType: !25, size: 64, offset: 1408)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3594, file: !676, line: 95, baseType: !28, size: 64, offset: 1472)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3594, file: !676, line: 96, baseType: !41, size: 32, offset: 1536)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3594, file: !676, line: 98, baseType: !723, size: 160, offset: 1568)
!3626 = !{!3627}
!3627 = !DILocalVariable(name: "stream", arg: 1, scope: !3589, file: !582, line: 129, type: !3592)
!3628 = !DILocation(line: 0, scope: !3589)
!3629 = !DILocation(line: 150, column: 14, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3589, file: !582, line: 150, column: 7)
!3631 = !DILocation(line: 150, column: 22, scope: !3630)
!3632 = !DILocation(line: 150, column: 27, scope: !3630)
!3633 = !DILocation(line: 150, column: 7, scope: !3589)
!3634 = !DILocation(line: 151, column: 12, scope: !3630)
!3635 = !DILocation(line: 151, column: 5, scope: !3630)
!3636 = !DILocalVariable(name: "fp", arg: 1, scope: !3637, file: !582, line: 41, type: !3592)
!3637 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !582, file: !582, line: 41, type: !3638, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !3592}
!3640 = !{!3636}
!3641 = !DILocation(line: 0, scope: !3637, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 156, column: 3, scope: !3589)
!3643 = !DILocation(line: 43, column: 11, scope: !3644, inlinedAt: !3642)
!3644 = distinct !DILexicalBlock(scope: !3637, file: !582, line: 43, column: 7)
!3645 = !DILocation(line: 43, column: 18, scope: !3644, inlinedAt: !3642)
!3646 = !DILocation(line: 43, column: 7, scope: !3637, inlinedAt: !3642)
!3647 = !DILocation(line: 45, column: 5, scope: !3644, inlinedAt: !3642)
!3648 = !DILocation(line: 158, column: 10, scope: !3589)
!3649 = !DILocation(line: 158, column: 3, scope: !3589)
!3650 = !DILocation(line: 235, column: 1, scope: !3589)
!3651 = !DISubprogram(name: "fflush", scope: !671, file: !671, line: 218, type: !3652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!41, !3610}
!3654 = distinct !DISubprogram(name: "rpl_fseeko", scope: !584, file: !584, line: 28, type: !3655, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3692)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!41, !3657, !3691, !41}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2870, line: 7, baseType: !3659)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !676, line: 49, size: 1728, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3659, file: !676, line: 51, baseType: !41, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3659, file: !676, line: 54, baseType: !26, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3659, file: !676, line: 55, baseType: !26, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3659, file: !676, line: 56, baseType: !26, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3659, file: !676, line: 57, baseType: !26, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3659, file: !676, line: 58, baseType: !26, size: 64, offset: 320)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3659, file: !676, line: 59, baseType: !26, size: 64, offset: 384)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3659, file: !676, line: 60, baseType: !26, size: 64, offset: 448)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3659, file: !676, line: 61, baseType: !26, size: 64, offset: 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3659, file: !676, line: 64, baseType: !26, size: 64, offset: 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3659, file: !676, line: 65, baseType: !26, size: 64, offset: 640)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3659, file: !676, line: 66, baseType: !26, size: 64, offset: 704)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3659, file: !676, line: 68, baseType: !691, size: 64, offset: 768)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3659, file: !676, line: 70, baseType: !3675, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3659, file: !676, line: 72, baseType: !41, size: 32, offset: 896)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3659, file: !676, line: 73, baseType: !41, size: 32, offset: 928)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3659, file: !676, line: 74, baseType: !697, size: 64, offset: 960)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3659, file: !676, line: 77, baseType: !99, size: 16, offset: 1024)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3659, file: !676, line: 78, baseType: !702, size: 8, offset: 1040)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3659, file: !676, line: 79, baseType: !704, size: 8, offset: 1048)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3659, file: !676, line: 81, baseType: !708, size: 64, offset: 1088)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3659, file: !676, line: 89, baseType: !711, size: 64, offset: 1152)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3659, file: !676, line: 91, baseType: !713, size: 64, offset: 1216)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3659, file: !676, line: 92, baseType: !716, size: 64, offset: 1280)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3659, file: !676, line: 93, baseType: !3675, size: 64, offset: 1344)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3659, file: !676, line: 94, baseType: !25, size: 64, offset: 1408)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3659, file: !676, line: 95, baseType: !28, size: 64, offset: 1472)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3659, file: !676, line: 96, baseType: !41, size: 32, offset: 1536)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3659, file: !676, line: 98, baseType: !723, size: 160, offset: 1568)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !671, line: 63, baseType: !697)
!3692 = !{!3693, !3694, !3695, !3696}
!3693 = !DILocalVariable(name: "fp", arg: 1, scope: !3654, file: !584, line: 28, type: !3657)
!3694 = !DILocalVariable(name: "offset", arg: 2, scope: !3654, file: !584, line: 28, type: !3691)
!3695 = !DILocalVariable(name: "whence", arg: 3, scope: !3654, file: !584, line: 28, type: !41)
!3696 = !DILocalVariable(name: "pos", scope: !3697, file: !584, line: 117, type: !3691)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !584, line: 113, column: 5)
!3698 = distinct !DILexicalBlock(scope: !3654, file: !584, line: 52, column: 7)
!3699 = !DILocation(line: 0, scope: !3654)
!3700 = !DILocation(line: 52, column: 11, scope: !3698)
!3701 = !{!3384, !603, i64 16}
!3702 = !DILocation(line: 52, column: 31, scope: !3698)
!3703 = !{!3384, !603, i64 8}
!3704 = !DILocation(line: 52, column: 24, scope: !3698)
!3705 = !DILocation(line: 53, column: 7, scope: !3698)
!3706 = !DILocation(line: 53, column: 14, scope: !3698)
!3707 = !{!3384, !603, i64 40}
!3708 = !DILocation(line: 53, column: 35, scope: !3698)
!3709 = !{!3384, !603, i64 32}
!3710 = !DILocation(line: 53, column: 28, scope: !3698)
!3711 = !DILocation(line: 54, column: 7, scope: !3698)
!3712 = !DILocation(line: 54, column: 14, scope: !3698)
!3713 = !{!3384, !603, i64 72}
!3714 = !DILocation(line: 54, column: 28, scope: !3698)
!3715 = !DILocation(line: 52, column: 7, scope: !3654)
!3716 = !DILocation(line: 117, column: 26, scope: !3697)
!3717 = !DILocation(line: 117, column: 19, scope: !3697)
!3718 = !DILocation(line: 0, scope: !3697)
!3719 = !DILocation(line: 118, column: 15, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3697, file: !584, line: 118, column: 11)
!3721 = !DILocation(line: 118, column: 11, scope: !3697)
!3722 = !DILocation(line: 129, column: 11, scope: !3697)
!3723 = !DILocation(line: 129, column: 18, scope: !3697)
!3724 = !DILocation(line: 130, column: 11, scope: !3697)
!3725 = !DILocation(line: 130, column: 19, scope: !3697)
!3726 = !{!3384, !860, i64 144}
!3727 = !DILocation(line: 161, column: 7, scope: !3697)
!3728 = !DILocation(line: 163, column: 10, scope: !3654)
!3729 = !DILocation(line: 163, column: 3, scope: !3654)
!3730 = !DILocation(line: 164, column: 1, scope: !3654)
!3731 = !DISubprogram(name: "fseeko", scope: !671, file: !671, line: 712, type: !3732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!41, !3675, !699, !41}
