; ModuleID = 'coreutils-8.32/src/nohup.bc'
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
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: %s COMMAND [ARG]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Run COMMAND, ignoring hangup signals.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [291 x i8] c"\0AIf standard input is a terminal, redirect it from an unreadable file.\0AIf standard output is a terminal, append output to 'nohup.out' if possible,\0A'$HOME/nohup.out' otherwise.\0AIf standard error is a terminal, redirect it to standard output.\0ATo save output to FILE, use '%s COMMAND > FILE'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nohup\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.38 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"failed to render standard input unusable\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"ignoring input\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"nohup.out\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"ignoring input and appending output to %s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"appending output to %s\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"ignoring input and redirecting stderr to stdout\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"redirecting stderr to stdout\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"failed to redirect standard error\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), align 8, !dbg !0
@.str.42 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.45 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.46 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@opterr = external local_unnamed_addr global i32, align 4
@.str.56 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.57, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.58, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !99
@.str.2.57 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.58 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !167
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !209
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !322
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !328
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !330
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !337
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !344
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !332
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !346
@.str.90 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.91 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.92 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.93 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.94 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.95 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.96 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.97 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.98 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.99 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.100 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.101 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.102 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.103 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.104 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.105 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.108 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.109 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.110 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.111 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.112 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.113 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.114 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !352
@.str.1.125 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !360
@.str.1.141 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1170 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1173, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %0, metadata !1172, metadata !DIExpression()), !dbg !1193
  %3 = icmp eq i32 %0, 0, !dbg !1194
  br i1 %3, label %9, label %4, !dbg !1195

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1196, !tbaa !1198
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #14, !dbg !1196
  %7 = load i8*, i8** @program_name, align 8, !dbg !1196, !tbaa !1198
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #14, !dbg !1196
  br label %63, !dbg !1196

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 5) #14, !dbg !1202
  %11 = load i8*, i8** @program_name, align 8, !dbg !1202, !tbaa !1198
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #14, !dbg !1202
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 5) #14, !dbg !1203
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1203, !tbaa !1198
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1203
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #14, !dbg !1204
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1204, !tbaa !1198
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1204
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #14, !dbg !1205
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1205, !tbaa !1198
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1205
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([291 x i8], [291 x i8]* @.str.5, i64 0, i64 0), i32 5) #14, !dbg !1206
  %23 = load i8*, i8** @program_name, align 8, !dbg !1206, !tbaa !1198
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i8* %23) #14, !dbg !1206
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #14, !dbg !1207
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #14, !dbg !1207
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !1176, metadata !DIExpression()) #14, !dbg !1208
  %27 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1209
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %27) #14, !dbg !1209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %27, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #14, !dbg !1189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !1177, metadata !DIExpression()) #14, !dbg !1208
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1178, metadata !DIExpression()) #14, !dbg !1208
  %28 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1210
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !1178, metadata !DIExpression()) #14, !dbg !1208
  br label %29, !dbg !1211

29:                                               ; preds = %34, %9
  %30 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %31 = phi %struct.infomap* [ %35, %34 ], [ %28, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !1178, metadata !DIExpression()) #14, !dbg !1208
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %30) #23, !dbg !1212
  %33 = icmp eq i32 %32, 0, !dbg !1212
  br i1 %33, label %39, label %34, !dbg !1211

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 1, !dbg !1213
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1178, metadata !DIExpression()) #14, !dbg !1208
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 0, !dbg !1214
  %37 = load i8*, i8** %36, align 8, !dbg !1214, !tbaa !1215
  %38 = icmp eq i8* %37, null, !dbg !1217
  br i1 %38, label %39, label %29, !dbg !1218, !llvm.loop !1219

39:                                               ; preds = %34, %29
  %40 = phi %struct.infomap* [ %35, %34 ], [ %31, %29 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1178, metadata !DIExpression()) #14, !dbg !1208
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1178, metadata !DIExpression()) #14, !dbg !1208
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 1, !dbg !1220
  %42 = load i8*, i8** %41, align 8, !dbg !1220, !tbaa !1222
  %43 = icmp eq i8* %42, null, !dbg !1223
  %44 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %42, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %44, metadata !1177, metadata !DIExpression()) #14, !dbg !1208
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #14, !dbg !1225
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0)) #14, !dbg !1225
  %47 = tail call i8* @setlocale(i32 5, i8* null) #14, !dbg !1226
  call void @llvm.dbg.value(metadata i8* %47, metadata !1185, metadata !DIExpression()) #14, !dbg !1208
  %48 = icmp eq i8* %47, null, !dbg !1227
  br i1 %48, label %56, label %49, !dbg !1229

49:                                               ; preds = %39
  %50 = tail call i32 @strncmp(i8* nonnull %47, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #23, !dbg !1230
  %51 = icmp eq i32 %50, 0, !dbg !1230
  br i1 %51, label %56, label %52, !dbg !1231

52:                                               ; preds = %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.38, i64 0, i64 0), i32 5) #14, !dbg !1232
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1232, !tbaa !1198
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #14, !dbg !1232
  br label %56, !dbg !1234

56:                                               ; preds = %39, %49, %52
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 5) #14, !dbg !1235
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #14, !dbg !1235
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #14, !dbg !1236
  %60 = icmp eq i8* %44, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !1236
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1236
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %44, i8* %61) #14, !dbg !1236
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %27) #14, !dbg !1237
  br label %63

63:                                               ; preds = %56, %4
  tail call void @exit(i32 %0) #24, !dbg !1238
  unreachable, !dbg !1238
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !77 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !401 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !440 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1239 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1243, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8** %1, metadata !1244, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 1, metadata !1245, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 2, metadata !1246, metadata !DIExpression()), !dbg !1272
  %3 = load i8*, i8** %1, align 8, !dbg !1273, !tbaa !1198
  tail call void @set_program_name(i8* %3) #14, !dbg !1274
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #14, !dbg !1275
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !1276
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #14, !dbg !1277
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #14, !dbg !1278
  %8 = icmp eq i8* %7, null, !dbg !1278
  %9 = select i1 %8, i32 125, i32 127, !dbg !1278
  call void @llvm.dbg.value(metadata i32 %9, metadata !1251, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %9, metadata !1279, metadata !DIExpression()), !dbg !1282
  store volatile i32 %9, i32* @exit_failure, align 4, !dbg !1284, !tbaa !1286
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #14, !dbg !1288
  %11 = load i8*, i8** @Version, align 8, !dbg !1289, !tbaa !1198
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %11, i1 zeroext false, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #14, !dbg !1290
  %12 = load i32, i32* @optind, align 4, !dbg !1291, !tbaa !1286
  %13 = icmp slt i32 %12, %0, !dbg !1293
  br i1 %13, label %16, label %14, !dbg !1294

14:                                               ; preds = %2
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #14, !dbg !1295
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %15) #14, !dbg !1297
  tail call void @usage(i32 %9) #25, !dbg !1298
  unreachable, !dbg !1298

16:                                               ; preds = %2
  %17 = tail call i32 @isatty(i32 0) #14, !dbg !1299
  %18 = icmp ne i32 %17, 0, !dbg !1299
  call void @llvm.dbg.value(metadata i1 %18, metadata !1247, metadata !DIExpression()), !dbg !1272
  %19 = tail call i32 @isatty(i32 1) #14, !dbg !1300
  %20 = icmp ne i32 %19, 0, !dbg !1300
  call void @llvm.dbg.value(metadata i1 %20, metadata !1248, metadata !DIExpression()), !dbg !1272
  br i1 %20, label %25, label %21, !dbg !1301

21:                                               ; preds = %16
  %22 = tail call i32* @__errno_location() #26, !dbg !1302
  %23 = load i32, i32* %22, align 4, !dbg !1302, !tbaa !1286
  %24 = icmp eq i32 %23, 9, !dbg !1303
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ], !dbg !1272
  call void @llvm.dbg.value(metadata i1 %26, metadata !1249, metadata !DIExpression()), !dbg !1272
  %27 = tail call i32 @isatty(i32 2) #14, !dbg !1304
  %28 = icmp ne i32 %27, 0, !dbg !1304
  call void @llvm.dbg.value(metadata i1 %28, metadata !1250, metadata !DIExpression()), !dbg !1272
  br i1 %18, label %29, label %41, !dbg !1305

29:                                               ; preds = %25
  %30 = tail call i32 @fd_reopen(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 1, i32 0) #14, !dbg !1306
  %31 = icmp slt i32 %30, 0, !dbg !1310
  br i1 %31, label %32, label %36, !dbg !1311

32:                                               ; preds = %29
  %33 = tail call i32* @__errno_location() #26, !dbg !1312
  %34 = load i32, i32* %33, align 4, !dbg !1312, !tbaa !1286
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 5) #14, !dbg !1313
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %34, i8* %35) #14, !dbg !1314
  br label %36, !dbg !1314

36:                                               ; preds = %32, %29
  %37 = or i32 %27, %19, !dbg !1315
  %38 = icmp eq i32 %37, 0, !dbg !1315
  br i1 %38, label %39, label %41, !dbg !1315

39:                                               ; preds = %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 5) #14, !dbg !1317
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40) #14, !dbg !1318
  br label %41, !dbg !1318

41:                                               ; preds = %36, %39, %25
  br i1 %20, label %44, label %42, !dbg !1319

42:                                               ; preds = %41
  %43 = and i1 %26, %28, !dbg !1320
  br i1 %43, label %47, label %87, !dbg !1320

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* null, metadata !1252, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), metadata !1255, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 1089, metadata !1256, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 384, metadata !1257, metadata !DIExpression()), !dbg !1321
  %45 = tail call i32 @umask(i32 -385) #14, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %48, metadata !1261, metadata !DIExpression()), !dbg !1321
  %46 = tail call i32 @fd_reopen(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1089, i32 384) #14, !dbg !1323
  br label %50, !dbg !1324

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i8* null, metadata !1252, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), metadata !1255, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 1089, metadata !1256, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 384, metadata !1257, metadata !DIExpression()), !dbg !1321
  %48 = tail call i32 @umask(i32 -385) #14, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %48, metadata !1261, metadata !DIExpression()), !dbg !1321
  %49 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1089, i32 384) #14, !dbg !1325
  br label %50, !dbg !1324

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %45, %44 ], [ %48, %47 ]
  %52 = phi i32 [ %46, %44 ], [ %49, %47 ], !dbg !1324
  call void @llvm.dbg.value(metadata i32 %52, metadata !1245, metadata !DIExpression()), !dbg !1272
  %53 = icmp slt i32 %52, 0, !dbg !1326
  br i1 %53, label %54, label %79, !dbg !1327

54:                                               ; preds = %50
  %55 = tail call i32* @__errno_location() #26, !dbg !1328
  %56 = load i32, i32* %55, align 4, !dbg !1328, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %56, metadata !1262, metadata !DIExpression()), !dbg !1329
  %57 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #14, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %57, metadata !1265, metadata !DIExpression()), !dbg !1329
  %58 = icmp eq i8* %57, null, !dbg !1331
  br i1 %58, label %70, label %59, !dbg !1333

59:                                               ; preds = %54
  %60 = tail call i8* @file_name_concat(i8* nonnull %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** null) #14, !dbg !1334
  call void @llvm.dbg.value(metadata i8* %60, metadata !1252, metadata !DIExpression()), !dbg !1321
  br i1 %20, label %61, label %63, !dbg !1336

61:                                               ; preds = %59
  %62 = tail call i32 @fd_reopen(i32 1, i8* %60, i32 1089, i32 384) #14, !dbg !1337
  br label %65, !dbg !1336

63:                                               ; preds = %59
  %64 = tail call i32 (i8*, i32, ...) @open(i8* %60, i32 1089, i32 384) #14, !dbg !1338
  br label %65, !dbg !1336

65:                                               ; preds = %61, %63
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %66, metadata !1245, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %60, metadata !1252, metadata !DIExpression()), !dbg !1321
  %67 = icmp slt i32 %66, 0, !dbg !1339
  br i1 %67, label %68, label %79, !dbg !1340

68:                                               ; preds = %65
  %69 = load i32, i32* %55, align 4, !dbg !1341, !tbaa !1286
  br label %70, !dbg !1340

70:                                               ; preds = %68, %54
  %71 = phi i32 [ %69, %68 ], [ %56, %54 ], !dbg !1341
  %72 = phi i8* [ %60, %68 ], [ null, %54 ]
  call void @llvm.dbg.value(metadata i32 %71, metadata !1266, metadata !DIExpression()), !dbg !1342
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 5) #14, !dbg !1343
  %74 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #14, !dbg !1344
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %56, i8* %73, i8* %74) #14, !dbg !1345
  %75 = icmp eq i8* %72, null, !dbg !1346
  br i1 %75, label %128, label %76, !dbg !1348

76:                                               ; preds = %70
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 5) #14, !dbg !1349
  %78 = tail call i8* @quotearg_style(i32 4, i8* nonnull %72) #14, !dbg !1350
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %71, i8* %77, i8* %78) #14, !dbg !1351
  br label %128, !dbg !1351

79:                                               ; preds = %50, %65
  %80 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), %50 ], [ %60, %65 ], !dbg !1352
  %81 = phi i8* [ null, %50 ], [ %60, %65 ], !dbg !1321
  %82 = phi i32 [ %52, %50 ], [ %66, %65 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %82, metadata !1245, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %81, metadata !1252, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %80, metadata !1255, metadata !DIExpression()), !dbg !1321
  %83 = tail call i32 @umask(i32 %51) #14, !dbg !1353
  %84 = select i1 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), !dbg !1354
  %85 = tail call i8* @dcgettext(i8* null, i8* %84, i32 5) #14, !dbg !1354
  %86 = tail call i8* @quotearg_style(i32 4, i8* %80) #14, !dbg !1355
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %85, i8* %86) #14, !dbg !1356
  tail call void @free(i8* %81) #14, !dbg !1357
  call void @llvm.dbg.value(metadata i32 undef, metadata !1245, metadata !DIExpression()), !dbg !1272
  br label %87

87:                                               ; preds = %42, %79
  %88 = phi i32 [ 1, %42 ], [ %82, %79 ], !dbg !1272
  call void @llvm.dbg.value(metadata i32 %88, metadata !1245, metadata !DIExpression()), !dbg !1272
  br i1 %28, label %89, label %104, !dbg !1358

89:                                               ; preds = %87
  %90 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 2, i32 1030, i32 3) #14, !dbg !1359
  call void @llvm.dbg.value(metadata i32 %90, metadata !1246, metadata !DIExpression()), !dbg !1272
  br i1 %20, label %94, label %91, !dbg !1362

91:                                               ; preds = %89
  %92 = select i1 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), !dbg !1363
  %93 = tail call i8* @dcgettext(i8* null, i8* %92, i32 5) #14, !dbg !1363
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %93) #14, !dbg !1365
  br label %94, !dbg !1365

94:                                               ; preds = %91, %89
  %95 = tail call i32 @dup2(i32 %88, i32 2) #14, !dbg !1366
  %96 = icmp slt i32 %95, 0, !dbg !1368
  br i1 %96, label %97, label %101, !dbg !1369

97:                                               ; preds = %94
  %98 = tail call i32* @__errno_location() #26, !dbg !1370
  %99 = load i32, i32* %98, align 4, !dbg !1370, !tbaa !1286
  %100 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i32 5) #14, !dbg !1371
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %99, i8* %100) #14, !dbg !1372
  br label %101, !dbg !1372

101:                                              ; preds = %97, %94
  br i1 %26, label %102, label %104, !dbg !1373

102:                                              ; preds = %101
  %103 = tail call i32 @close(i32 %88) #14, !dbg !1374
  br label %104, !dbg !1374

104:                                              ; preds = %101, %102, %87
  %105 = phi i32 [ %90, %102 ], [ %90, %101 ], [ 2, %87 ], !dbg !1272
  call void @llvm.dbg.value(metadata i32 %105, metadata !1246, metadata !DIExpression()), !dbg !1272
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1376, !tbaa !1198
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %106, metadata !1378, metadata !DIExpression()), !dbg !1387
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %106, i64 0, i32 0, !dbg !1389
  %108 = load i32, i32* %107, align 8, !dbg !1389, !tbaa !1390
  %109 = and i32 %108, 32, !dbg !1389
  %110 = icmp eq i32 %109, 0, !dbg !1376
  br i1 %110, label %111, label %128, !dbg !1394

111:                                              ; preds = %104
  %112 = tail call void (i32)* @signal(i32 1, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #14, !dbg !1395
  %113 = load i32, i32* @optind, align 4, !dbg !1396, !tbaa !1286
  %114 = sext i32 %113 to i64, !dbg !1397
  %115 = getelementptr inbounds i8*, i8** %1, i64 %114, !dbg !1397
  call void @llvm.dbg.value(metadata i8** %115, metadata !1269, metadata !DIExpression()), !dbg !1272
  %116 = load i8*, i8** %115, align 8, !dbg !1398, !tbaa !1198
  %117 = tail call i32 @execvp(i8* %116, i8** nonnull %115) #14, !dbg !1399
  %118 = tail call i32* @__errno_location() #26, !dbg !1400
  %119 = load i32, i32* %118, align 4, !dbg !1400, !tbaa !1286
  %120 = icmp eq i32 %119, 2, !dbg !1401
  %121 = select i1 %120, i32 127, i32 126, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %121, metadata !1270, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %119, metadata !1271, metadata !DIExpression()), !dbg !1272
  %122 = tail call i32 @dup2(i32 %105, i32 2) #14, !dbg !1402
  %123 = icmp eq i32 %122, 2, !dbg !1404
  br i1 %123, label %124, label %128, !dbg !1405

124:                                              ; preds = %111
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 5) #14, !dbg !1406
  %126 = load i8*, i8** %115, align 8, !dbg !1407, !tbaa !1198
  %127 = tail call i8* @quotearg_style(i32 4, i8* %126) #14, !dbg !1407
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %119, i8* %125, i8* %127) #14, !dbg !1408
  br label %128, !dbg !1408

128:                                              ; preds = %76, %70, %111, %124, %104
  %129 = phi i32 [ %9, %104 ], [ %121, %124 ], [ %121, %111 ], [ %9, %70 ], [ %9, %76 ], !dbg !1272
  ret i32 %129, !dbg !1409
}

; Function Attrs: nounwind
declare !dbg !444 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !447 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare !dbg !448 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !449 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !461 i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !466 i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !470 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !270 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !482 i32 @dup2(i32, i32) local_unnamed_addr #2

declare !dbg !372 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !485 void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !488 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1412, metadata !DIExpression()), !dbg !1413
  store i8* %0, i8** @file_name, align 8, !dbg !1414, !tbaa !1198
  ret void, !dbg !1415
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1416 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1420, metadata !DIExpression()), !dbg !1421
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1422, !tbaa !1423
  ret void, !dbg !1425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1426 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1431, !tbaa !1198
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #14, !dbg !1432
  %3 = icmp eq i32 %2, 0, !dbg !1433
  br i1 %3, label %22, label %4, !dbg !1434

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1435, !tbaa !1423, !range !1436
  %6 = icmp eq i8 %5, 0, !dbg !1435
  br i1 %6, label %11, label %7, !dbg !1437

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !1438
  %9 = load i32, i32* %8, align 4, !dbg !1438, !tbaa !1286
  %10 = icmp eq i32 %9, 32, !dbg !1439
  br i1 %10, label %22, label %11, !dbg !1440

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 5) #14, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %12, metadata !1428, metadata !DIExpression()), !dbg !1442
  %13 = load i8*, i8** @file_name, align 8, !dbg !1443, !tbaa !1198
  %14 = icmp eq i8* %13, null, !dbg !1443
  %15 = tail call i32* @__errno_location() #26, !dbg !1445
  %16 = load i32, i32* %15, align 4, !dbg !1445, !tbaa !1286
  br i1 %14, label %19, label %17, !dbg !1446

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #14, !dbg !1447
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.46, i64 0, i64 0), i8* %18, i8* %12) #14, !dbg !1448
  br label %20, !dbg !1448

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.47, i64 0, i64 0), i8* %12) #14, !dbg !1449
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1450, !tbaa !1286
  tail call void @_exit(i32 %21) #24, !dbg !1451
  unreachable, !dbg !1451

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1452, !tbaa !1198
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #14, !dbg !1454
  %25 = icmp eq i32 %24, 0, !dbg !1455
  br i1 %25, label %28, label %26, !dbg !1456

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1457, !tbaa !1286
  tail call void @_exit(i32 %27) #24, !dbg !1458
  unreachable, !dbg !1458

28:                                               ; preds = %22
  ret void, !dbg !1459
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fd_reopen(i32 %0, i8* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #8 !dbg !1460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1464, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %1, metadata !1465, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %2, metadata !1466, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %3, metadata !1467, metadata !DIExpression()), !dbg !1473
  %5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #14, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %5, metadata !1468, metadata !DIExpression()), !dbg !1473
  %6 = icmp eq i32 %5, %0, !dbg !1475
  %7 = icmp slt i32 %5, 0, !dbg !1476
  %8 = or i1 %6, %7, !dbg !1477
  br i1 %8, label %14, label %9, !dbg !1477

9:                                                ; preds = %4
  %10 = tail call i32 @dup2(i32 %5, i32 %0) #14, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %10, metadata !1469, metadata !DIExpression()), !dbg !1479
  %11 = tail call i32* @__errno_location() #26, !dbg !1480
  %12 = load i32, i32* %11, align 4, !dbg !1480, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %12, metadata !1472, metadata !DIExpression()), !dbg !1479
  %13 = tail call i32 @close(i32 %5) #14, !dbg !1481
  store i32 %12, i32* %11, align 4, !dbg !1482, !tbaa !1286
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ], !dbg !1483
  ret i32 %15, !dbg !1484
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @file_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !1485 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1487, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i8* %1, metadata !1488, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i8** %2, metadata !1489, metadata !DIExpression()), !dbg !1491
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #14, !dbg !1492
  call void @llvm.dbg.value(metadata i8* %4, metadata !1490, metadata !DIExpression()), !dbg !1491
  %5 = icmp eq i8* %4, null, !dbg !1493
  br i1 %5, label %6, label %7, !dbg !1495

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !1496
  unreachable, !dbg !1496

7:                                                ; preds = %3
  ret i8* %4, !dbg !1497
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !1498 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1500, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8* %1, metadata !1501, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8** %2, metadata !1502, metadata !DIExpression()), !dbg !1510
  %4 = tail call i8* @last_component(i8* %0) #23, !dbg !1511
  call void @llvm.dbg.value(metadata i8* %4, metadata !1503, metadata !DIExpression()), !dbg !1510
  %5 = tail call i64 @base_len(i8* %4) #23, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %5, metadata !1504, metadata !DIExpression()), !dbg !1510
  %6 = ptrtoint i8* %4 to i64, !dbg !1513
  %7 = ptrtoint i8* %0 to i64, !dbg !1513
  %8 = sub i64 %6, %7, !dbg !1513
  %9 = add i64 %8, %5, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %9, metadata !1505, metadata !DIExpression()), !dbg !1510
  %10 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #23, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %10, metadata !1506, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8 0, metadata !1507, metadata !DIExpression()), !dbg !1510
  %11 = icmp eq i64 %5, 0, !dbg !1516
  br i1 %11, label %21, label %12, !dbg !1518

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1519
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1519
  %15 = load i8, i8* %14, align 1, !dbg !1519, !tbaa !1522
  %16 = icmp eq i8 %15, 47, !dbg !1519
  br i1 %16, label %25, label %17, !dbg !1523

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1524, !tbaa !1522
  %19 = icmp eq i8 %18, 47, !dbg !1524
  %20 = select i1 %19, i8 0, i8 47, !dbg !1525
  br label %25, !dbg !1525

21:                                               ; preds = %3
  %22 = load i8, i8* %1, align 1, !dbg !1526, !tbaa !1522
  %23 = icmp eq i8 %22, 47, !dbg !1526
  %24 = select i1 %23, i8 46, i8 0, !dbg !1528
  br label %25, !dbg !1528

25:                                               ; preds = %21, %17, %12
  %26 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1510
  call void @llvm.dbg.value(metadata i8 %26, metadata !1507, metadata !DIExpression()), !dbg !1510
  %27 = icmp ne i8 %26, 0, !dbg !1529
  %28 = zext i1 %27 to i64, !dbg !1530
  %29 = add i64 %10, 1, !dbg !1531
  %30 = add i64 %29, %9, !dbg !1532
  %31 = add i64 %30, %28, !dbg !1533
  %32 = tail call noalias i8* @malloc(i64 %31) #14, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %32, metadata !1508, metadata !DIExpression()), !dbg !1510
  %33 = icmp eq i8* %32, null, !dbg !1535
  br i1 %33, label %41, label %34, !dbg !1537

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8* %32, metadata !1538, metadata !DIExpression()) #14, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %0, metadata !1546, metadata !DIExpression()) #14, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %9, metadata !1547, metadata !DIExpression()) #14, !dbg !1548
  %35 = tail call i8* @__mempcpy_chk(i8* nonnull %32, i8* nonnull %0, i64 %9, i64 -1) #14, !dbg !1550
  call void @llvm.dbg.value(metadata i8* %35, metadata !1509, metadata !DIExpression()), !dbg !1510
  store i8 %26, i8* %35, align 1, !dbg !1551, !tbaa !1522
  %36 = getelementptr inbounds i8, i8* %35, i64 %28, !dbg !1552
  call void @llvm.dbg.value(metadata i8* %36, metadata !1509, metadata !DIExpression()), !dbg !1510
  %37 = icmp eq i8** %2, null, !dbg !1553
  br i1 %37, label %39, label %38, !dbg !1555

38:                                               ; preds = %34
  store i8* %36, i8** %2, align 8, !dbg !1556, !tbaa !1198
  br label %39, !dbg !1557

39:                                               ; preds = %34, %38
  call void @llvm.dbg.value(metadata i8* %36, metadata !1538, metadata !DIExpression()) #14, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %1, metadata !1546, metadata !DIExpression()) #14, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %10, metadata !1547, metadata !DIExpression()) #14, !dbg !1558
  %40 = tail call i8* @__mempcpy_chk(i8* nonnull %36, i8* nonnull %1, i64 %10, i64 -1) #14, !dbg !1560
  call void @llvm.dbg.value(metadata i8* %40, metadata !1509, metadata !DIExpression()), !dbg !1510
  store i8 0, i8* %40, align 1, !dbg !1561, !tbaa !1522
  br label %41, !dbg !1562

41:                                               ; preds = %25, %39
  ret i8* %32, !dbg !1563
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1564 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1568, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i8** %1, metadata !1569, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i8* %2, metadata !1570, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i8* %3, metadata !1571, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i8* %4, metadata !1572, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1573, metadata !DIExpression()), !dbg !1586
  %8 = load i32, i32* @opterr, align 4, !dbg !1587, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %8, metadata !1575, metadata !DIExpression()), !dbg !1586
  store i32 0, i32* @opterr, align 4, !dbg !1588, !tbaa !1286
  %9 = icmp eq i32 %0, 2, !dbg !1589
  br i1 %9, label %10, label %17, !dbg !1590

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #14, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %11, metadata !1574, metadata !DIExpression()), !dbg !1586
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1592

12:                                               ; preds = %10
  tail call void %5(i32 0) #14, !dbg !1593
  br label %17, !dbg !1594

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1595
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #14, !dbg !1595
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1576, metadata !DIExpression()), !dbg !1596
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1597
  call void @llvm.va_start(i8* nonnull %14), !dbg !1597
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1598, !tbaa !1198
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #14, !dbg !1599
  call void @exit(i32 0) #24, !dbg !1600
  unreachable, !dbg !1600

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1601, !tbaa !1286
  store i32 0, i32* @optind, align 4, !dbg !1602, !tbaa !1286
  ret void, !dbg !1603
}

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1604 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1606, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8** %1, metadata !1607, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8* %2, metadata !1608, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8* %3, metadata !1609, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8* %4, metadata !1610, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i1 %5, metadata !1611, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1612, metadata !DIExpression()), !dbg !1621
  %9 = load i32, i32* @opterr, align 4, !dbg !1622, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %9, metadata !1614, metadata !DIExpression()), !dbg !1621
  store i32 1, i32* @opterr, align 4, !dbg !1623, !tbaa !1286
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), !dbg !1624
  call void @llvm.dbg.value(metadata i8* %10, metadata !1615, metadata !DIExpression()), !dbg !1621
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #14, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %11, metadata !1613, metadata !DIExpression()), !dbg !1621
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1626

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1627
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #14, !dbg !1627
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1616, metadata !DIExpression()), !dbg !1628
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1629
  call void @llvm.va_start(i8* nonnull %13), !dbg !1629
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1630, !tbaa !1198
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #14, !dbg !1631
  call void @exit(i32 0) #24, !dbg !1632
  unreachable, !dbg !1632

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1633, !tbaa !1286
  br label %18, !dbg !1634

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #14, !dbg !1635
  br label %20, !dbg !1636

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1636, !tbaa !1286
  ret void, !dbg !1637
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1638 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1640, metadata !DIExpression()), !dbg !1643
  %2 = icmp eq i8* %0, null, !dbg !1644
  br i1 %2, label %3, label %6, !dbg !1646

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1647, !tbaa !1198
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !1649
  tail call void @abort() #24, !dbg !1650
  unreachable, !dbg !1650

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %7, metadata !1641, metadata !DIExpression()), !dbg !1643
  %8 = icmp eq i8* %7, null, !dbg !1652
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1653
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %10, metadata !1642, metadata !DIExpression()), !dbg !1643
  %11 = ptrtoint i8* %10 to i64, !dbg !1654
  %12 = ptrtoint i8* %0 to i64, !dbg !1654
  %13 = sub i64 %11, %12, !dbg !1654
  %14 = icmp sgt i64 %13, 6, !dbg !1656
  br i1 %14, label %15, label %24, !dbg !1657

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1658
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #23, !dbg !1659
  %18 = icmp eq i32 %17, 0, !dbg !1660
  br i1 %18, label %19, label %24, !dbg !1661

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1640, metadata !DIExpression()), !dbg !1643
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #23, !dbg !1662
  %21 = icmp eq i32 %20, 0, !dbg !1665
  br i1 %21, label %22, label %24, !dbg !1666

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %23, metadata !1640, metadata !DIExpression()), !dbg !1643
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1669, !tbaa !1198
  br label %24, !dbg !1670

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1640, metadata !DIExpression()), !dbg !1643
  store i8* %25, i8** @program_name, align 8, !dbg !1671, !tbaa !1198
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1672, !tbaa !1198
  ret void, !dbg !1673
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1674 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1679, metadata !DIExpression()), !dbg !1682
  %2 = tail call i32* @__errno_location() #26, !dbg !1683
  %3 = load i32, i32* %2, align 4, !dbg !1683, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %3, metadata !1680, metadata !DIExpression()), !dbg !1682
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1684
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1684
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1684
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #14, !dbg !1685
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1685
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i32 %3, i32* %2, align 4, !dbg !1686, !tbaa !1286
  ret %struct.quoting_options* %8, !dbg !1687
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !1688 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1692, metadata !DIExpression()), !dbg !1693
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1694
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1694
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1695
  %5 = load i32, i32* %4, align 8, !dbg !1695, !tbaa !1696
  ret i32 %5, !dbg !1698
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1699 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1703, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %1, metadata !1704, metadata !DIExpression()), !dbg !1705
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1706
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1706
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1707
  store i32 %1, i32* %5, align 8, !dbg !1708, !tbaa !1696
  ret void, !dbg !1709
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1710 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1714, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 %1, metadata !1715, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i32 %2, metadata !1716, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 %1, metadata !1717, metadata !DIExpression()), !dbg !1723
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1724
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1724
  %6 = lshr i8 %1, 5, !dbg !1725
  %7 = zext i8 %6 to i64, !dbg !1725
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1726
  call void @llvm.dbg.value(metadata i32* %8, metadata !1719, metadata !DIExpression()), !dbg !1723
  %9 = and i8 %1, 31, !dbg !1727
  %10 = zext i8 %9 to i32, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %10, metadata !1721, metadata !DIExpression()), !dbg !1723
  %11 = load i32, i32* %8, align 4, !dbg !1728, !tbaa !1286
  %12 = lshr i32 %11, %10, !dbg !1729
  %13 = and i32 %12, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %13, metadata !1722, metadata !DIExpression()), !dbg !1723
  %14 = and i32 %2, 1, !dbg !1731
  %15 = xor i32 %13, %14, !dbg !1732
  %16 = shl i32 %15, %10, !dbg !1733
  %17 = xor i32 %16, %11, !dbg !1734
  store i32 %17, i32* %8, align 4, !dbg !1734, !tbaa !1286
  ret i32 %13, !dbg !1735
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1736 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1740, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 %1, metadata !1741, metadata !DIExpression()), !dbg !1743
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1744
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1740, metadata !DIExpression()), !dbg !1743
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1747
  %6 = load i32, i32* %5, align 4, !dbg !1747, !tbaa !1748
  call void @llvm.dbg.value(metadata i32 %6, metadata !1742, metadata !DIExpression()), !dbg !1743
  store i32 %1, i32* %5, align 4, !dbg !1749, !tbaa !1748
  ret i32 %6, !dbg !1750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1751 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1755, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8* %1, metadata !1756, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8* %2, metadata !1757, metadata !DIExpression()), !dbg !1758
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1759
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1761
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1755, metadata !DIExpression()), !dbg !1758
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1762
  store i32 10, i32* %6, align 8, !dbg !1763, !tbaa !1696
  %7 = icmp ne i8* %1, null, !dbg !1764
  %8 = icmp ne i8* %2, null, !dbg !1766
  %9 = and i1 %7, %8, !dbg !1767
  br i1 %9, label %11, label %10, !dbg !1767

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !1768
  unreachable, !dbg !1768

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1769
  store i8* %1, i8** %12, align 8, !dbg !1770, !tbaa !1771
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1772
  store i8* %2, i8** %13, align 8, !dbg !1773, !tbaa !1774
  ret void, !dbg !1775
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1776 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1780, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i64 %1, metadata !1781, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %2, metadata !1782, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i64 %3, metadata !1783, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1784, metadata !DIExpression()), !dbg !1788
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1789
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1785, metadata !DIExpression()), !dbg !1788
  %8 = tail call i32* @__errno_location() #26, !dbg !1790
  %9 = load i32, i32* %8, align 4, !dbg !1790, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %9, metadata !1786, metadata !DIExpression()), !dbg !1788
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1791
  %11 = load i32, i32* %10, align 8, !dbg !1791, !tbaa !1696
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1792
  %13 = load i32, i32* %12, align 4, !dbg !1792, !tbaa !1748
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1793
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1794
  %16 = load i8*, i8** %15, align 8, !dbg !1794, !tbaa !1771
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1795
  %18 = load i8*, i8** %17, align 8, !dbg !1795, !tbaa !1774
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %19, metadata !1787, metadata !DIExpression()), !dbg !1788
  store i32 %9, i32* %8, align 4, !dbg !1797, !tbaa !1286
  ret i64 %19, !dbg !1798
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1799 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1805, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %1, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %2, metadata !1807, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %3, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %4, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %5, metadata !1810, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32* %6, metadata !1811, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %7, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %8, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 0, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 0, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* null, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 0, metadata !1818, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1863
  %13 = tail call i64 @__ctype_get_mb_cur_max() #14, !dbg !1864
  %14 = icmp eq i64 %13, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i1 %14, metadata !1820, metadata !DIExpression()), !dbg !1863
  %15 = lshr i32 %5, 1, !dbg !1866
  %16 = trunc i32 %15 to i8, !dbg !1866
  %17 = and i8 %16, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i8 %17, metadata !1821, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, metadata !1824, metadata !DIExpression()), !dbg !1863
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1867
  %19 = and i32 %5, 4, !dbg !1869
  %20 = icmp eq i32 %19, 0, !dbg !1869
  %21 = and i32 %5, 1, !dbg !1872
  %22 = icmp eq i32 %21, 0, !dbg !1872
  %23 = bitcast i64* %10 to i8*, !dbg !1875
  %24 = bitcast i32* %12 to i8*, !dbg !1876
  %25 = icmp eq i32* %6, null, !dbg !1877
  br label %26, !dbg !1879

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1880
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1881
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1882
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1883
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1863
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1884
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1885
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1886
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %38, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %37, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %36, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %35, metadata !1821, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %34, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %33, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %32, metadata !1818, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %31, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %30, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 0, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %29, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %28, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %27, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.label(metadata !1857), !dbg !1887
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
  ], !dbg !1888

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, metadata !1821, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %35, metadata !1821, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 5, metadata !1809, metadata !DIExpression()), !dbg !1863
  br label %92, !dbg !1889

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1821, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 5, metadata !1809, metadata !DIExpression()), !dbg !1863
  %42 = and i8 %35, 1, !dbg !1891
  %43 = icmp eq i8 %42, 0, !dbg !1891
  br i1 %43, label %44, label %92, !dbg !1889

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1893
  br i1 %45, label %92, label %46, !dbg !1896

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1893, !tbaa !1522
  br label %92, !dbg !1893

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %27), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %48, metadata !1812, metadata !DIExpression()), !dbg !1863
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %27), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %49, metadata !1813, metadata !DIExpression()), !dbg !1863
  br label %50, !dbg !1902

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %51, metadata !1812, metadata !DIExpression()), !dbg !1863
  %53 = and i8 %35, 1, !dbg !1903
  %54 = icmp eq i8 %53, 0, !dbg !1903
  br i1 %54, label %55, label %70, !dbg !1905

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 0, metadata !1815, metadata !DIExpression()), !dbg !1863
  %56 = load i8, i8* %51, align 1, !dbg !1906, !tbaa !1522
  %57 = icmp eq i8 %56, 0, !dbg !1909
  br i1 %57, label %70, label %58, !dbg !1909

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %61, metadata !1815, metadata !DIExpression()), !dbg !1863
  %62 = icmp ult i64 %61, %39, !dbg !1910
  br i1 %62, label %63, label %65, !dbg !1913

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1910
  store i8 %59, i8* %64, align 1, !dbg !1910, !tbaa !1522
  br label %65, !dbg !1910

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %66, metadata !1815, metadata !DIExpression()), !dbg !1863
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1914
  call void @llvm.dbg.value(metadata i8* %67, metadata !1817, metadata !DIExpression()), !dbg !1863
  %68 = load i8, i8* %67, align 1, !dbg !1906, !tbaa !1522
  %69 = icmp eq i8 %68, 0, !dbg !1909
  br i1 %69, label %70, label %58, !dbg !1909, !llvm.loop !1915

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1917
  call void @llvm.dbg.value(metadata i64 %71, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %52, metadata !1817, metadata !DIExpression()), !dbg !1863
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %72, metadata !1818, metadata !DIExpression()), !dbg !1863
  br label %92, !dbg !1919

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1819, metadata !DIExpression()), !dbg !1863
  br label %74, !dbg !1920

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %75, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, metadata !1821, metadata !DIExpression()), !dbg !1863
  br label %76, !dbg !1921

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1883
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %78, metadata !1821, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %77, metadata !1819, metadata !DIExpression()), !dbg !1863
  %79 = and i8 %78, 1, !dbg !1922
  %80 = icmp eq i8 %79, 0, !dbg !1922
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1924
  br label %82, !dbg !1924

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1863
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1866
  call void @llvm.dbg.value(metadata i8 %84, metadata !1821, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %83, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  %85 = and i8 %84, 1, !dbg !1925
  %86 = icmp eq i8 %85, 0, !dbg !1925
  br i1 %86, label %87, label %92, !dbg !1927

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1928
  br i1 %88, label %92, label %89, !dbg !1931

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1928, !tbaa !1522
  br label %92, !dbg !1928

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1863
  br label %92, !dbg !1932

91:                                               ; preds = %26
  call void @abort() #24, !dbg !1933
  unreachable, !dbg !1933

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1917
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %40 ], !dbg !1863
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1863
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1863
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %100, metadata !1821, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %98, metadata !1818, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %96, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %93, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 0, metadata !1814, metadata !DIExpression()), !dbg !1863
  %101 = and i8 %99, 1, !dbg !1934
  %102 = icmp ne i8 %101, 0, !dbg !1934
  %103 = icmp ne i32 %93, 2, !dbg !1934
  %104 = and i1 %103, %102, !dbg !1934
  %105 = icmp ne i64 %98, 0, !dbg !1934
  %106 = and i1 %105, %104, !dbg !1934
  %107 = icmp ugt i64 %98, 1, !dbg !1934
  %108 = and i8 %100, 1, !dbg !1936
  %109 = icmp eq i8 %108, 0, !dbg !1936
  %110 = icmp eq i32 %93, 2, !dbg !1939
  %111 = or i1 %103, %109, !dbg !1941
  %112 = icmp ne i8 %108, 0, !dbg !1943
  %113 = and i1 %110, %112, !dbg !1943
  %114 = xor i1 %102, true, !dbg !1944
  %115 = xor i1 %104, true, !dbg !1877
  %116 = and i1 %109, %115, !dbg !1877
  %117 = or i1 %25, %116, !dbg !1877
  %118 = and i8 %99, %100, !dbg !1945
  %119 = and i8 %118, 1, !dbg !1945
  %120 = icmp ne i8 %119, 0, !dbg !1945
  %121 = and i1 %120, %105, !dbg !1945
  br label %122, !dbg !1947

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1948
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1917
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1880
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1884
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1885
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1886
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %126, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %123, metadata !1814, metadata !DIExpression()), !dbg !1863
  %131 = icmp eq i64 %126, -1, !dbg !1949
  br i1 %131, label %132, label %136, !dbg !1950

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1951
  %134 = load i8, i8* %133, align 1, !dbg !1951, !tbaa !1522
  %135 = icmp eq i8 %134, 0, !dbg !1952
  br i1 %135, label %581, label %138, !dbg !1953

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1954
  br i1 %137, label %581, label %138, !dbg !1953

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 0, metadata !1831, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 0, metadata !1832, metadata !DIExpression()), !dbg !1955
  br i1 %106, label %139, label %154, !dbg !1956

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1957
  %141 = and i1 %107, %131, !dbg !1958
  br i1 %141, label %142, label %144, !dbg !1958

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %143, metadata !1808, metadata !DIExpression()), !dbg !1863
  br label %144, !dbg !1960

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1808, metadata !DIExpression()), !dbg !1863
  %146 = icmp ugt i64 %140, %145, !dbg !1961
  br i1 %146, label %154, label %147, !dbg !1962

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1963
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1964
  %150 = icmp ne i32 %149, 0, !dbg !1965
  %151 = or i1 %150, %109, !dbg !1966
  %152 = xor i1 %150, true, !dbg !1966
  %153 = zext i1 %152 to i8, !dbg !1966
  br i1 %151, label %154, label %639, !dbg !1966

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1955
  call void @llvm.dbg.value(metadata i8 %156, metadata !1830, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %155, metadata !1808, metadata !DIExpression()), !dbg !1863
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1967
  %158 = load i8, i8* %157, align 1, !dbg !1967, !tbaa !1522
  call void @llvm.dbg.value(metadata i8 %158, metadata !1825, metadata !DIExpression()), !dbg !1955
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
  ], !dbg !1968

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1969

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1970

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1831, metadata !DIExpression()), !dbg !1955
  %162 = and i8 %127, 1, !dbg !1973
  %163 = icmp eq i8 %162, 0, !dbg !1973
  %164 = and i1 %110, %163, !dbg !1973
  br i1 %164, label %165, label %181, !dbg !1973

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1975
  br i1 %166, label %167, label %169, !dbg !1979

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1975
  store i8 39, i8* %168, align 1, !dbg !1975, !tbaa !1522
  br label %169, !dbg !1975

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %170, metadata !1815, metadata !DIExpression()), !dbg !1863
  %171 = icmp ult i64 %170, %130, !dbg !1980
  br i1 %171, label %172, label %174, !dbg !1983

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1980
  store i8 36, i8* %173, align 1, !dbg !1980, !tbaa !1522
  br label %174, !dbg !1980

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %175, metadata !1815, metadata !DIExpression()), !dbg !1863
  %176 = icmp ult i64 %175, %130, !dbg !1984
  br i1 %176, label %177, label %179, !dbg !1987

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1984
  store i8 39, i8* %178, align 1, !dbg !1984, !tbaa !1522
  br label %179, !dbg !1984

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %180, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, metadata !1822, metadata !DIExpression()), !dbg !1863
  br label %181, !dbg !1988

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1863
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %183, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %182, metadata !1815, metadata !DIExpression()), !dbg !1863
  %184 = icmp ult i64 %182, %130, !dbg !1989
  br i1 %184, label %185, label %187, !dbg !1992

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1989
  store i8 92, i8* %186, align 1, !dbg !1989, !tbaa !1522
  br label %187, !dbg !1989

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %188, metadata !1815, metadata !DIExpression()), !dbg !1863
  br i1 %103, label %189, label %463, !dbg !1993

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1995
  %191 = icmp ult i64 %190, %155, !dbg !1996
  br i1 %191, label %192, label %463, !dbg !1997

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1998
  %194 = load i8, i8* %193, align 1, !dbg !1998, !tbaa !1522
  %195 = add i8 %194, -48, !dbg !1999
  %196 = icmp ult i8 %195, 10, !dbg !1999
  br i1 %196, label %197, label %463, !dbg !1999

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2000
  br i1 %198, label %199, label %201, !dbg !2004

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2000
  store i8 48, i8* %200, align 1, !dbg !2000, !tbaa !1522
  br label %201, !dbg !2000

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %202, metadata !1815, metadata !DIExpression()), !dbg !1863
  %203 = icmp ult i64 %202, %130, !dbg !2005
  br i1 %203, label %204, label %206, !dbg !2008

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2005
  store i8 48, i8* %205, align 1, !dbg !2005, !tbaa !1522
  br label %206, !dbg !2005

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %207, metadata !1815, metadata !DIExpression()), !dbg !1863
  br label %463, !dbg !2009

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2010

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2011

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2012

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2013

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2014
  %214 = icmp ult i64 %213, %155, !dbg !2015
  br i1 %214, label %215, label %463, !dbg !2016

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2017
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2018
  %218 = load i8, i8* %217, align 1, !dbg !2018, !tbaa !1522
  %219 = icmp eq i8 %218, 63, !dbg !2019
  br i1 %219, label %220, label %463, !dbg !2020

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2021
  %222 = load i8, i8* %221, align 1, !dbg !2021, !tbaa !1522
  %223 = sext i8 %222 to i32, !dbg !2021
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
  ], !dbg !2022

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2023

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1825, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %213, metadata !1814, metadata !DIExpression()), !dbg !1863
  %226 = icmp ult i64 %124, %130, !dbg !2025
  br i1 %226, label %227, label %229, !dbg !2028

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2025
  store i8 63, i8* %228, align 1, !dbg !2025, !tbaa !1522
  br label %229, !dbg !2025

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %230, metadata !1815, metadata !DIExpression()), !dbg !1863
  %231 = icmp ult i64 %230, %130, !dbg !2029
  br i1 %231, label %232, label %234, !dbg !2032

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2029
  store i8 34, i8* %233, align 1, !dbg !2029, !tbaa !1522
  br label %234, !dbg !2029

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %235, metadata !1815, metadata !DIExpression()), !dbg !1863
  %236 = icmp ult i64 %235, %130, !dbg !2033
  br i1 %236, label %237, label %239, !dbg !2036

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2033
  store i8 34, i8* %238, align 1, !dbg !2033, !tbaa !1522
  br label %239, !dbg !2033

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %240, metadata !1815, metadata !DIExpression()), !dbg !1863
  %241 = icmp ult i64 %240, %130, !dbg !2037
  br i1 %241, label %242, label %244, !dbg !2040

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2037
  store i8 63, i8* %243, align 1, !dbg !2037, !tbaa !1522
  br label %244, !dbg !2037

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %245, metadata !1815, metadata !DIExpression()), !dbg !1863
  br label %463, !dbg !2041

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1829, metadata !DIExpression()), !dbg !1955
  br label %256, !dbg !2042

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1829, metadata !DIExpression()), !dbg !1955
  br label %256, !dbg !2043

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1829, metadata !DIExpression()), !dbg !1955
  br label %254, !dbg !2044

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1829, metadata !DIExpression()), !dbg !1955
  br label %254, !dbg !2045

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1829, metadata !DIExpression()), !dbg !1955
  br label %256, !dbg !2046

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1829, metadata !DIExpression()), !dbg !1955
  br i1 %110, label %252, label %253, !dbg !2047

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2048

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2051

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2052
  call void @llvm.dbg.value(metadata i8 %255, metadata !1829, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.label(metadata !1858), !dbg !2053
  br i1 %111, label %256, label %625, !dbg !2054

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2052
  call void @llvm.dbg.value(metadata i8 %257, metadata !1829, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.label(metadata !1859), !dbg !2056
  br i1 %102, label %488, label %463, !dbg !2057

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2058

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2059, !tbaa !1522
  %261 = icmp eq i8 %260, 0, !dbg !2060
  br i1 %261, label %262, label %463, !dbg !2061

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2062
  br i1 %263, label %264, label %463, !dbg !2064

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1832, metadata !DIExpression()), !dbg !1955
  br label %265, !dbg !2065

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1955
  call void @llvm.dbg.value(metadata i8 %266, metadata !1832, metadata !DIExpression()), !dbg !1955
  br i1 %111, label %463, label %625, !dbg !2066

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, metadata !1832, metadata !DIExpression()), !dbg !1955
  br i1 %110, label %268, label %463, !dbg !2067

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2068

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2070
  %271 = icmp ne i64 %125, 0, !dbg !2072
  %272 = or i1 %271, %270, !dbg !2073
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2073
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %274, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %273, metadata !1816, metadata !DIExpression()), !dbg !1863
  %275 = icmp ult i64 %124, %274, !dbg !2074
  br i1 %275, label %276, label %278, !dbg !2077

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2074
  store i8 39, i8* %277, align 1, !dbg !2074, !tbaa !1522
  br label %278, !dbg !2074

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %279, metadata !1815, metadata !DIExpression()), !dbg !1863
  %280 = icmp ult i64 %279, %274, !dbg !2078
  br i1 %280, label %281, label %283, !dbg !2081

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2078
  store i8 92, i8* %282, align 1, !dbg !2078, !tbaa !1522
  br label %283, !dbg !2078

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %284, metadata !1815, metadata !DIExpression()), !dbg !1863
  %285 = icmp ult i64 %284, %274, !dbg !2082
  br i1 %285, label %286, label %288, !dbg !2085

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2082
  store i8 39, i8* %287, align 1, !dbg !2082, !tbaa !1522
  br label %288, !dbg !2082

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %289, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1863
  br label %463, !dbg !2086

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2087

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1833, metadata !DIExpression()), !dbg !2088
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !2089
  %293 = load i16*, i16** %292, align 8, !dbg !2089, !tbaa !1198
  %294 = zext i8 %158 to i64, !dbg !2089
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2089
  %296 = load i16, i16* %295, align 2, !dbg !2089, !tbaa !2091
  %297 = lshr i16 %296, 14, !dbg !2092
  %298 = trunc i16 %297 to i8, !dbg !2092
  %299 = and i8 %298, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i8 %299, metadata !1836, metadata !DIExpression()), !dbg !2088
  br label %355, !dbg !2093

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2094
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1837, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %23, metadata !2096, metadata !DIExpression()) #14, !dbg !2103
  call void @llvm.dbg.value(metadata i32 0, metadata !2101, metadata !DIExpression()) #14, !dbg !2103
  call void @llvm.dbg.value(metadata i64 8, metadata !2102, metadata !DIExpression()) #14, !dbg !2103
  store i64 0, i64* %10, align 8, !dbg !2105
  call void @llvm.dbg.value(metadata i64 0, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 1, metadata !1836, metadata !DIExpression()), !dbg !2088
  %301 = icmp eq i64 %155, -1, !dbg !2106
  br i1 %301, label %302, label %304, !dbg !2108

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %303, metadata !1808, metadata !DIExpression()), !dbg !1863
  br label %304, !dbg !2110

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1955
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  br label %306, !dbg !2111

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2112
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2113
  call void @llvm.dbg.value(metadata i8 %308, metadata !1836, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %307, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2114
  %309 = add i64 %307, %123, !dbg !2115
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2116
  %311 = sub i64 %305, %309, !dbg !2117
  call void @llvm.dbg.value(metadata i32* %12, metadata !1843, metadata !DIExpression(DW_OP_deref)), !dbg !1876
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #14, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %312, metadata !1846, metadata !DIExpression()), !dbg !1876
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2119

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %307, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %307, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %307, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %307, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %307, metadata !1833, metadata !DIExpression()), !dbg !2088
  %314 = icmp ugt i64 %305, %309, !dbg !2120
  br i1 %314, label %315, label %340, !dbg !2122

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2123
  br label %317, !dbg !2123

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1833, metadata !DIExpression()), !dbg !2088
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2124
  %321 = load i8, i8* %320, align 1, !dbg !2124, !tbaa !1522
  %322 = icmp eq i8 %321, 0, !dbg !2122
  br i1 %322, label %340, label %323, !dbg !2123

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %324, metadata !1833, metadata !DIExpression()), !dbg !2088
  %325 = add i64 %324, %123, !dbg !2126
  %326 = icmp ult i64 %325, %305, !dbg !2120
  br i1 %326, label %317, label %340, !dbg !2122, !llvm.loop !2127

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2128
  %329 = and i1 %113, %328, !dbg !2131
  call void @llvm.dbg.value(metadata i64 1, metadata !1847, metadata !DIExpression()), !dbg !2132
  br i1 %329, label %330, label %343, !dbg !2131

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1847, metadata !DIExpression()), !dbg !2132
  %332 = add i64 %331, %309, !dbg !2133
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2134
  %334 = load i8, i8* %333, align 1, !dbg !2134, !tbaa !1522
  %335 = sext i8 %334 to i32, !dbg !2134
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2135

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %337, metadata !1847, metadata !DIExpression()), !dbg !2132
  %338 = icmp eq i64 %337, %312, !dbg !2128
  br i1 %338, label %343, label %330, !dbg !2137, !llvm.loop !2138

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 %308, metadata !1836, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %307, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 %308, metadata !1836, metadata !DIExpression()), !dbg !2088
  br label %340, !dbg !2140

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2140
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2141, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %344, metadata !1843, metadata !DIExpression()), !dbg !1876
  %345 = call i32 @iswprint(i32 %344) #14, !dbg !2143
  %346 = icmp eq i32 %345, 0, !dbg !2143
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2144
  call void @llvm.dbg.value(metadata i8 %347, metadata !1836, metadata !DIExpression()), !dbg !2088
  %348 = add i64 %312, %307, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %348, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 %347, metadata !1836, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %348, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2140
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !2146
  %350 = icmp eq i32 %349, 0, !dbg !2147
  br i1 %350, label %306, label %351, !dbg !2148, !llvm.loop !2149

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2151
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 2, metadata !1809, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %99, metadata !1819, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %305, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2140
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2151
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1955
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2152
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8 %358, metadata !1836, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %357, metadata !1833, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %356, metadata !1808, metadata !DIExpression()), !dbg !1863
  %359 = and i8 %358, 1, !dbg !2153
  %360 = icmp ne i8 %359, 0, !dbg !2153
  call void @llvm.dbg.value(metadata i8 %359, metadata !1832, metadata !DIExpression()), !dbg !1955
  %361 = icmp ult i64 %357, 2, !dbg !2154
  %362 = or i1 %360, %114, !dbg !2155
  %363 = and i1 %361, %362, !dbg !2156
  br i1 %363, label %463, label %364, !dbg !2156

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %365, metadata !1854, metadata !DIExpression()), !dbg !2158
  br label %366, !dbg !2159

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1948
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1863
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1884
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1955
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1955
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2160
  call void @llvm.dbg.value(metadata i8 %372, metadata !1831, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %371, metadata !1830, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %370, metadata !1825, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %369, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %368, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %367, metadata !1814, metadata !DIExpression()), !dbg !1863
  br i1 %362, label %419, label %373, !dbg !2161

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2166

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1831, metadata !DIExpression()), !dbg !1955
  %375 = and i8 %369, 1, !dbg !2169
  %376 = icmp eq i8 %375, 0, !dbg !2169
  %377 = and i1 %110, %376, !dbg !2169
  br i1 %377, label %378, label %394, !dbg !2169

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2171
  br i1 %379, label %380, label %382, !dbg !2175

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2171
  store i8 39, i8* %381, align 1, !dbg !2171, !tbaa !1522
  br label %382, !dbg !2171

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %383, metadata !1815, metadata !DIExpression()), !dbg !1863
  %384 = icmp ult i64 %383, %130, !dbg !2176
  br i1 %384, label %385, label %387, !dbg !2179

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2176
  store i8 36, i8* %386, align 1, !dbg !2176, !tbaa !1522
  br label %387, !dbg !2176

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %388, metadata !1815, metadata !DIExpression()), !dbg !1863
  %389 = icmp ult i64 %388, %130, !dbg !2180
  br i1 %389, label %390, label %392, !dbg !2183

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2180
  store i8 39, i8* %391, align 1, !dbg !2180, !tbaa !1522
  br label %392, !dbg !2180

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %393, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, metadata !1822, metadata !DIExpression()), !dbg !1863
  br label %394, !dbg !2184

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1863
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %396, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %395, metadata !1815, metadata !DIExpression()), !dbg !1863
  %397 = icmp ult i64 %395, %130, !dbg !2185
  br i1 %397, label %398, label %400, !dbg !2188

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2185
  store i8 92, i8* %399, align 1, !dbg !2185, !tbaa !1522
  br label %400, !dbg !2185

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %401, metadata !1815, metadata !DIExpression()), !dbg !1863
  %402 = icmp ult i64 %401, %130, !dbg !2189
  br i1 %402, label %403, label %407, !dbg !2192

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2189
  %405 = or i8 %404, 48, !dbg !2189
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2189
  store i8 %405, i8* %406, align 1, !dbg !2189, !tbaa !1522
  br label %407, !dbg !2189

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %408, metadata !1815, metadata !DIExpression()), !dbg !1863
  %409 = icmp ult i64 %408, %130, !dbg !2193
  br i1 %409, label %410, label %415, !dbg !2196

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2193
  %412 = and i8 %411, 7, !dbg !2193
  %413 = or i8 %412, 48, !dbg !2193
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2193
  store i8 %413, i8* %414, align 1, !dbg !2193, !tbaa !1522
  br label %415, !dbg !2193

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %416, metadata !1815, metadata !DIExpression()), !dbg !1863
  %417 = and i8 %370, 7, !dbg !2197
  %418 = or i8 %417, 48, !dbg !2198
  call void @llvm.dbg.value(metadata i8 %418, metadata !1825, metadata !DIExpression()), !dbg !1955
  br label %428, !dbg !2199

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2200
  %421 = icmp eq i8 %420, 0, !dbg !2200
  br i1 %421, label %428, label %422, !dbg !2202

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2203
  br i1 %423, label %424, label %426, !dbg !2207

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2203
  store i8 92, i8* %425, align 1, !dbg !2203, !tbaa !1522
  br label %426, !dbg !2203

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %427, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1955
  br label %428, !dbg !2208

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1863
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1884
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1955
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1955
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1955
  call void @llvm.dbg.value(metadata i8 %433, metadata !1831, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %432, metadata !1830, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %431, metadata !1825, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %430, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %429, metadata !1815, metadata !DIExpression()), !dbg !1863
  %434 = add i64 %367, 1, !dbg !2209
  %435 = icmp ugt i64 %365, %434, !dbg !2211
  br i1 %435, label %436, label %526, !dbg !2212

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2213
  %438 = icmp ne i8 %437, 0, !dbg !2213
  %439 = and i8 %433, 1, !dbg !2213
  %440 = icmp eq i8 %439, 0, !dbg !2213
  %441 = and i1 %438, %440, !dbg !2213
  br i1 %441, label %442, label %453, !dbg !2213

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2216
  br i1 %443, label %444, label %446, !dbg !2220

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2216
  store i8 39, i8* %445, align 1, !dbg !2216, !tbaa !1522
  br label %446, !dbg !2216

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %447, metadata !1815, metadata !DIExpression()), !dbg !1863
  %448 = icmp ult i64 %447, %130, !dbg !2221
  br i1 %448, label %449, label %451, !dbg !2224

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2221
  store i8 39, i8* %450, align 1, !dbg !2221, !tbaa !1522
  br label %451, !dbg !2221

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %452, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1863
  br label %453, !dbg !2225

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2226
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %455, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %454, metadata !1815, metadata !DIExpression()), !dbg !1863
  %456 = icmp ult i64 %454, %130, !dbg !2227
  br i1 %456, label %457, label %459, !dbg !2230

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2227
  store i8 %431, i8* %458, align 1, !dbg !2227, !tbaa !1522
  br label %459, !dbg !2227

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %460, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %434, metadata !1814, metadata !DIExpression()), !dbg !1863
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2231
  %462 = load i8, i8* %461, align 1, !dbg !2231, !tbaa !1522
  call void @llvm.dbg.value(metadata i8 %462, metadata !1825, metadata !DIExpression()), !dbg !1955
  br label %366, !dbg !2232, !llvm.loop !2233

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1948
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1863
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1880
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2236
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1863
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1863
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1955
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1955
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1955
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %472, metadata !1832, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %471, metadata !1831, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %156, metadata !1830, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %470, metadata !1825, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %469, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %468, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %467, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %466, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %465, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %464, metadata !1814, metadata !DIExpression()), !dbg !1863
  br i1 %117, label %486, label %474, !dbg !2237

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2238
  %476 = zext i8 %475 to i64, !dbg !2238
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2239
  %478 = load i32, i32* %477, align 4, !dbg !2239, !tbaa !1286
  %479 = and i8 %470, 31, !dbg !2240
  %480 = zext i8 %479 to i32, !dbg !2240
  %481 = shl nuw i32 1, %480, !dbg !2241
  %482 = and i32 %478, %481, !dbg !2241
  %483 = icmp eq i32 %482, 0, !dbg !2241
  %484 = icmp eq i8 %156, 0, !dbg !2242
  %485 = and i1 %484, %483, !dbg !2243
  br i1 %485, label %526, label %488, !dbg !2243

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2242
  br i1 %487, label %526, label %488, !dbg !2244

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2245
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1863
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1880
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2236
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1884
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1885
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1955
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1955
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %496, metadata !1832, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %495, metadata !1825, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %494, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %493, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %492, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %491, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %490, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %489, metadata !1814, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.label(metadata !1860), !dbg !2246
  br i1 %109, label %498, label %629, !dbg !2247

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1831, metadata !DIExpression()), !dbg !1955
  %499 = and i8 %493, 1, !dbg !2249
  %500 = icmp eq i8 %499, 0, !dbg !2249
  %501 = and i1 %110, %500, !dbg !2249
  br i1 %501, label %502, label %518, !dbg !2249

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2251
  br i1 %503, label %504, label %506, !dbg !2255

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2251
  store i8 39, i8* %505, align 1, !dbg !2251, !tbaa !1522
  br label %506, !dbg !2251

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %507, metadata !1815, metadata !DIExpression()), !dbg !1863
  %508 = icmp ult i64 %507, %497, !dbg !2256
  br i1 %508, label %509, label %511, !dbg !2259

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2256
  store i8 36, i8* %510, align 1, !dbg !2256, !tbaa !1522
  br label %511, !dbg !2256

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %512, metadata !1815, metadata !DIExpression()), !dbg !1863
  %513 = icmp ult i64 %512, %497, !dbg !2260
  br i1 %513, label %514, label %516, !dbg !2263

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2260
  store i8 39, i8* %515, align 1, !dbg !2260, !tbaa !1522
  br label %516, !dbg !2260

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %517, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, metadata !1822, metadata !DIExpression()), !dbg !1863
  br label %518, !dbg !2264

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1955
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %520, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %519, metadata !1815, metadata !DIExpression()), !dbg !1863
  %521 = icmp ult i64 %519, %497, !dbg !2265
  br i1 %521, label %522, label %524, !dbg !2268

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2265
  store i8 92, i8* %523, align 1, !dbg !2265, !tbaa !1522
  br label %524, !dbg !2265

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %525, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %536, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %535, metadata !1832, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %534, metadata !1831, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %533, metadata !1825, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %532, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %531, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %530, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %529, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %528, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %527, metadata !1814, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.label(metadata !1861), !dbg !2269
  br label %553, !dbg !2270

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2245
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1863
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1880
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2236
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1884
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1885
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2273
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1955
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1955
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %535, metadata !1832, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %534, metadata !1831, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %533, metadata !1825, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %532, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %531, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %530, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %529, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %528, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %527, metadata !1814, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.label(metadata !1861), !dbg !2269
  %537 = and i8 %531, 1, !dbg !2270
  %538 = icmp ne i8 %537, 0, !dbg !2270
  %539 = and i8 %534, 1, !dbg !2270
  %540 = icmp eq i8 %539, 0, !dbg !2270
  %541 = and i1 %538, %540, !dbg !2270
  br i1 %541, label %542, label %553, !dbg !2270

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2274
  br i1 %543, label %544, label %546, !dbg !2278

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2274
  store i8 39, i8* %545, align 1, !dbg !2274, !tbaa !1522
  br label %546, !dbg !2274

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %547, metadata !1815, metadata !DIExpression()), !dbg !1863
  %548 = icmp ult i64 %547, %536, !dbg !2279
  br i1 %548, label %549, label %551, !dbg !2282

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2279
  store i8 39, i8* %550, align 1, !dbg !2279, !tbaa !1522
  br label %551, !dbg !2279

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %552, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1863
  br label %553, !dbg !2283

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1955
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %562, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %561, metadata !1815, metadata !DIExpression()), !dbg !1863
  %563 = icmp ult i64 %561, %554, !dbg !2284
  br i1 %563, label %564, label %566, !dbg !2287

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2284
  store i8 %556, i8* %565, align 1, !dbg !2284, !tbaa !1522
  br label %566, !dbg !2284

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %567, metadata !1815, metadata !DIExpression()), !dbg !1863
  %568 = and i8 %555, 1, !dbg !2288
  %569 = icmp eq i8 %568, 0, !dbg !2288
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2290
  call void @llvm.dbg.value(metadata i8 %570, metadata !1824, metadata !DIExpression()), !dbg !1863
  br label %571, !dbg !2291

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2245
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1863
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1880
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2236
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1884
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1863
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1886
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %578, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %577, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %576, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %575, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %574, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %573, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %572, metadata !1814, metadata !DIExpression()), !dbg !1863
  %580 = add i64 %572, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %580, metadata !1814, metadata !DIExpression()), !dbg !1863
  br label %122, !dbg !2293, !llvm.loop !2294

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %127, metadata !1822, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %128, metadata !1823, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %129, metadata !1824, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  %583 = icmp eq i64 %124, 0, !dbg !2296
  %584 = and i1 %110, %583, !dbg !2298
  %585 = xor i1 %584, true, !dbg !2298
  %586 = or i1 %109, %585, !dbg !2298
  br i1 %586, label %587, label %629, !dbg !2298

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2299
  %589 = xor i1 %588, true, !dbg !2299
  %590 = and i8 %128, 1, !dbg !2301
  %591 = icmp eq i8 %590, 0, !dbg !2301
  %592 = or i1 %591, %589, !dbg !2299
  br i1 %592, label %602, label %593, !dbg !2299

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2302
  %595 = icmp eq i8 %594, 0, !dbg !2302
  br i1 %595, label %598, label %596, !dbg !2305

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %94, metadata !1812, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1813, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %125, metadata !1816, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %582, metadata !1808, metadata !DIExpression()), !dbg !1863
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2306
  br label %645, !dbg !2307

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2308
  %600 = icmp ne i64 %125, 0, !dbg !2310
  %601 = and i1 %600, %599, !dbg !2311
  br i1 %601, label %26, label %602, !dbg !2311

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %130, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  %603 = icmp ne i8* %97, null, !dbg !2312
  %604 = and i1 %603, %109, !dbg !2314
  br i1 %604, label %605, label %620, !dbg !2314

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %124, metadata !1815, metadata !DIExpression()), !dbg !1863
  %606 = load i8, i8* %97, align 1, !dbg !2315, !tbaa !1522
  %607 = icmp eq i8 %606, 0, !dbg !2318
  br i1 %607, label %620, label %608, !dbg !2318

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1817, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %611, metadata !1815, metadata !DIExpression()), !dbg !1863
  %612 = icmp ult i64 %611, %130, !dbg !2319
  br i1 %612, label %613, label %615, !dbg !2322

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2319
  store i8 %609, i8* %614, align 1, !dbg !2319, !tbaa !1522
  br label %615, !dbg !2319

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %616, metadata !1815, metadata !DIExpression()), !dbg !1863
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %617, metadata !1817, metadata !DIExpression()), !dbg !1863
  %618 = load i8, i8* %617, align 1, !dbg !2315, !tbaa !1522
  %619 = icmp eq i8 %618, 0, !dbg !2318
  br i1 %619, label %620, label %608, !dbg !2318, !llvm.loop !2324

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1917
  call void @llvm.dbg.value(metadata i64 %621, metadata !1815, metadata !DIExpression()), !dbg !1863
  %622 = icmp ult i64 %621, %130, !dbg !2326
  br i1 %622, label %623, label %645, !dbg !2328

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2329
  store i8 0, i8* %624, align 1, !dbg !2330, !tbaa !1522
  br label %645, !dbg !2329

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %630, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.label(metadata !1862), !dbg !2331
  %627 = icmp eq i8 %101, 0, !dbg !2332
  %628 = select i1 %627, i32 2, i32 4, !dbg !2332
  br label %635, !dbg !2332

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1806, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %630, metadata !1808, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.label(metadata !1862), !dbg !2331
  %632 = icmp eq i32 %93, 2, !dbg !2334
  %633 = icmp eq i8 %101, 0, !dbg !2332
  %634 = select i1 %633, i32 2, i32 4, !dbg !2332
  br i1 %632, label %635, label %639, !dbg !2332

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2332

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1809, metadata !DIExpression()), !dbg !1863
  %643 = and i32 %5, -3, !dbg !2335
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2336
  br label %645, !dbg !2337

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2338
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2343, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %1, metadata !2344, metadata !DIExpression()), !dbg !2347
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #14, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %3, metadata !2345, metadata !DIExpression()), !dbg !2347
  %4 = icmp eq i8* %3, %0, !dbg !2349
  br i1 %4, label %5, label %71, !dbg !2351

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #14, !dbg !2352
  call void @llvm.dbg.value(metadata i8* %6, metadata !2346, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %6, metadata !2353, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* undef, metadata !2359, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 85, metadata !2360, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 84, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 70, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 45, metadata !2363, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 56, metadata !2364, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 0, metadata !2365, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 0, metadata !2366, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 0, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 0, metadata !2368, metadata !DIExpression()), !dbg !2369
  %7 = load i8, i8* %6, align 1, !dbg !2372, !tbaa !1522
  %8 = and i8 %7, -33, !dbg !2372
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2372

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2374, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* undef, metadata !2379, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 84, metadata !2380, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 70, metadata !2381, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 45, metadata !2382, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 56, metadata !2383, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2384, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2385, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2386, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2387, metadata !DIExpression()), !dbg !2388
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2392
  %11 = load i8, i8* %10, align 1, !dbg !2392, !tbaa !1522
  %12 = and i8 %11, -33, !dbg !2392
  %13 = icmp eq i8 %12, 84, !dbg !2392
  br i1 %13, label %14, label %68, !dbg !2392

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2394, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8* undef, metadata !2399, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 70, metadata !2400, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 45, metadata !2401, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 56, metadata !2402, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 0, metadata !2405, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2407
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2411
  %16 = load i8, i8* %15, align 1, !dbg !2411, !tbaa !1522
  %17 = and i8 %16, -33, !dbg !2411
  %18 = icmp eq i8 %17, 70, !dbg !2411
  br i1 %18, label %19, label %68, !dbg !2411

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2413, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* undef, metadata !2418, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 45, metadata !2419, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 56, metadata !2420, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 0, metadata !2421, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 0, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 0, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 0, metadata !2424, metadata !DIExpression()), !dbg !2425
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2429
  %21 = load i8, i8* %20, align 1, !dbg !2429, !tbaa !1522
  %22 = icmp eq i8 %21, 45, !dbg !2429
  br i1 %22, label %23, label %68, !dbg !2431

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2432, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* undef, metadata !2437, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 56, metadata !2438, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 0, metadata !2439, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 0, metadata !2442, metadata !DIExpression()), !dbg !2443
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2447
  %25 = load i8, i8* %24, align 1, !dbg !2447, !tbaa !1522
  %26 = icmp eq i8 %25, 56, !dbg !2447
  br i1 %26, label %27, label %68, !dbg !2449

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2450, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8* undef, metadata !2455, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 0, metadata !2456, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 0, metadata !2457, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 0, metadata !2458, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 0, metadata !2459, metadata !DIExpression()), !dbg !2460
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2464
  %29 = load i8, i8* %28, align 1, !dbg !2464, !tbaa !1522
  %30 = icmp eq i8 %29, 0, !dbg !2464
  br i1 %30, label %31, label %68, !dbg !2466

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2467, !tbaa !1522
  %33 = icmp eq i8 %32, 96, !dbg !2468
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2467
  br label %71, !dbg !2469

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2374, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* undef, metadata !2379, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 66, metadata !2380, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 49, metadata !2381, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 56, metadata !2382, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 48, metadata !2383, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 51, metadata !2384, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 48, metadata !2385, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 0, metadata !2386, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 0, metadata !2387, metadata !DIExpression()), !dbg !2470
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2474
  %37 = load i8, i8* %36, align 1, !dbg !2474, !tbaa !1522
  %38 = and i8 %37, -33, !dbg !2474
  %39 = icmp eq i8 %38, 66, !dbg !2474
  br i1 %39, label %40, label %68, !dbg !2474

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2394, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8* undef, metadata !2399, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 49, metadata !2400, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 56, metadata !2401, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 48, metadata !2402, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 51, metadata !2403, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 48, metadata !2404, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 0, metadata !2405, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2475
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2477
  %42 = load i8, i8* %41, align 1, !dbg !2477, !tbaa !1522
  %43 = icmp eq i8 %42, 49, !dbg !2477
  br i1 %43, label %44, label %68, !dbg !2478

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2413, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8* undef, metadata !2418, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 56, metadata !2419, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 48, metadata !2420, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 51, metadata !2421, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 48, metadata !2422, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 0, metadata !2423, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 0, metadata !2424, metadata !DIExpression()), !dbg !2479
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2481
  %46 = load i8, i8* %45, align 1, !dbg !2481, !tbaa !1522
  %47 = icmp eq i8 %46, 56, !dbg !2481
  br i1 %47, label %48, label %68, !dbg !2482

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2432, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* undef, metadata !2437, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 48, metadata !2438, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 51, metadata !2439, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 48, metadata !2440, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 0, metadata !2442, metadata !DIExpression()), !dbg !2483
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2485
  %50 = load i8, i8* %49, align 1, !dbg !2485, !tbaa !1522
  %51 = icmp eq i8 %50, 48, !dbg !2485
  br i1 %51, label %52, label %68, !dbg !2486

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2450, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8* undef, metadata !2455, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 51, metadata !2456, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 48, metadata !2457, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 0, metadata !2458, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 0, metadata !2459, metadata !DIExpression()), !dbg !2487
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2489
  %54 = load i8, i8* %53, align 1, !dbg !2489, !tbaa !1522
  %55 = icmp eq i8 %54, 51, !dbg !2489
  br i1 %55, label %56, label %68, !dbg !2490

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2491, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8* undef, metadata !2496, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 48, metadata !2497, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, metadata !2498, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2500
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2504
  %58 = load i8, i8* %57, align 1, !dbg !2504, !tbaa !1522
  %59 = icmp eq i8 %58, 48, !dbg !2504
  br i1 %59, label %60, label %68, !dbg !2506

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2507, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8* undef, metadata !2512, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 0, metadata !2513, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 0, metadata !2514, metadata !DIExpression()), !dbg !2515
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2519
  %62 = load i8, i8* %61, align 1, !dbg !2519, !tbaa !1522
  %63 = icmp eq i8 %62, 0, !dbg !2519
  br i1 %63, label %64, label %68, !dbg !2521

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2522, !tbaa !1522
  %66 = icmp eq i8 %65, 96, !dbg !2523
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2522
  br label %71, !dbg !2524

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2525
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2526
  br label %71, !dbg !2527

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2347
  ret i8* %72, !dbg !2528
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !294 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !298 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2533, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %1, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()) #14, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %1, metadata !2542, metadata !DIExpression()) #14, !dbg !2550
  call void @llvm.dbg.value(metadata i64* null, metadata !2543, metadata !DIExpression()) #14, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2544, metadata !DIExpression()) #14, !dbg !2550
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2552
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2552
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2545, metadata !DIExpression()) #14, !dbg !2550
  %6 = tail call i32* @__errno_location() #26, !dbg !2553
  %7 = load i32, i32* %6, align 4, !dbg !2553, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %7, metadata !2546, metadata !DIExpression()) #14, !dbg !2550
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2554
  %9 = load i32, i32* %8, align 4, !dbg !2554, !tbaa !1748
  %10 = or i32 %9, 1, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %10, metadata !2547, metadata !DIExpression()) #14, !dbg !2550
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2556
  %12 = load i32, i32* %11, align 8, !dbg !2556, !tbaa !1696
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2557
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2558
  %15 = load i8*, i8** %14, align 8, !dbg !2558, !tbaa !1771
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2559
  %17 = load i8*, i8** %16, align 8, !dbg !2559, !tbaa !1774
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #14, !dbg !2560
  %19 = add i64 %18, 1, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %19, metadata !2548, metadata !DIExpression()) #14, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %19, metadata !2562, metadata !DIExpression()) #14, !dbg !2567
  %20 = tail call noalias i8* @xmalloc(i64 %19) #14, !dbg !2569
  call void @llvm.dbg.value(metadata i8* %20, metadata !2549, metadata !DIExpression()) #14, !dbg !2550
  %21 = load i32, i32* %11, align 8, !dbg !2570, !tbaa !1696
  %22 = load i8*, i8** %14, align 8, !dbg !2571, !tbaa !1771
  %23 = load i8*, i8** %16, align 8, !dbg !2572, !tbaa !1774
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #14, !dbg !2573
  store i32 %7, i32* %6, align 4, !dbg !2574, !tbaa !1286
  ret i8* %20, !dbg !2575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2538 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %1, metadata !2542, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64* %2, metadata !2543, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2544, metadata !DIExpression()), !dbg !2576
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2577
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2545, metadata !DIExpression()), !dbg !2576
  %7 = tail call i32* @__errno_location() #26, !dbg !2578
  %8 = load i32, i32* %7, align 4, !dbg !2578, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %8, metadata !2546, metadata !DIExpression()), !dbg !2576
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2579
  %10 = load i32, i32* %9, align 4, !dbg !2579, !tbaa !1748
  %11 = icmp ne i64* %2, null, !dbg !2580
  %12 = xor i1 %11, true, !dbg !2580
  %13 = zext i1 %12 to i32, !dbg !2580
  %14 = or i32 %10, %13, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %14, metadata !2547, metadata !DIExpression()), !dbg !2576
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2582
  %16 = load i32, i32* %15, align 8, !dbg !2582, !tbaa !1696
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2583
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2584
  %19 = load i8*, i8** %18, align 8, !dbg !2584, !tbaa !1771
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2585
  %21 = load i8*, i8** %20, align 8, !dbg !2585, !tbaa !1774
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2586
  %23 = add i64 %22, 1, !dbg !2587
  call void @llvm.dbg.value(metadata i64 %23, metadata !2548, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %23, metadata !2562, metadata !DIExpression()) #14, !dbg !2588
  %24 = tail call noalias i8* @xmalloc(i64 %23) #14, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %24, metadata !2549, metadata !DIExpression()), !dbg !2576
  %25 = load i32, i32* %15, align 8, !dbg !2591, !tbaa !1696
  %26 = load i8*, i8** %18, align 8, !dbg !2592, !tbaa !1771
  %27 = load i8*, i8** %20, align 8, !dbg !2593, !tbaa !1774
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2594
  store i32 %8, i32* %7, align 4, !dbg !2595, !tbaa !1286
  br i1 %11, label %29, label %30, !dbg !2596

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2597, !tbaa !2599
  br label %30, !dbg !2600

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2601
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2602 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2606, !tbaa !1198
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 1, metadata !2605, metadata !DIExpression()), !dbg !2607
  %2 = load i32, i32* @nslots, align 4, !dbg !2608, !tbaa !1286
  %3 = icmp sgt i32 %2, 1, !dbg !2611
  br i1 %3, label %4, label %12, !dbg !2612

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2605, metadata !DIExpression()), !dbg !2607
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2613
  %7 = load i8*, i8** %6, align 8, !dbg !2613, !tbaa !2614
  tail call void @free(i8* %7) #14, !dbg !2616
  %8 = add nuw nsw i64 %5, 1, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %8, metadata !2605, metadata !DIExpression()), !dbg !2607
  %9 = load i32, i32* @nslots, align 4, !dbg !2608, !tbaa !1286
  %10 = sext i32 %9 to i64, !dbg !2611
  %11 = icmp slt i64 %8, %10, !dbg !2611
  br i1 %11, label %4, label %12, !dbg !2612, !llvm.loop !2618

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2620
  %14 = load i8*, i8** %13, align 8, !dbg !2620, !tbaa !2614
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2622
  br i1 %15, label %17, label %16, !dbg !2623

16:                                               ; preds = %12
  tail call void @free(i8* %14) #14, !dbg !2624
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2626, !tbaa !2627
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2628, !tbaa !2614
  br label %17, !dbg !2629

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2630
  br i1 %18, label %21, label %19, !dbg !2632

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2633
  tail call void @free(i8* %20) #14, !dbg !2635
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2636, !tbaa !1198
  br label %21, !dbg !2637

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2638, !tbaa !1286
  ret void, !dbg !2639
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %1, metadata !2643, metadata !DIExpression()), !dbg !2644
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2645
  ret i8* %3, !dbg !2646
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2651, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8* %1, metadata !2652, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %2, metadata !2653, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2654, metadata !DIExpression()), !dbg !2666
  %5 = tail call i32* @__errno_location() #26, !dbg !2667
  %6 = load i32, i32* %5, align 4, !dbg !2667, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %6, metadata !2655, metadata !DIExpression()), !dbg !2666
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2668, !tbaa !1198
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2656, metadata !DIExpression()), !dbg !2666
  %8 = icmp slt i32 %0, 0, !dbg !2669
  br i1 %8, label %9, label %10, !dbg !2671

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !2672
  unreachable, !dbg !2672

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2673, !tbaa !1286
  %12 = icmp sgt i32 %11, %0, !dbg !2674
  br i1 %12, label %34, label %13, !dbg !2675

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2676
  call void @llvm.dbg.value(metadata i1 %14, metadata !2657, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2660, metadata !DIExpression()), !dbg !2677
  %15 = icmp eq i32 %0, 2147483647, !dbg !2678
  br i1 %15, label %16, label %17, !dbg !2680

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !2681
  unreachable, !dbg !2681

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2682
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2682
  %20 = add nuw nsw i32 %0, 1, !dbg !2683
  %21 = sext i32 %20 to i64, !dbg !2684
  %22 = shl nuw nsw i64 %21, 4, !dbg !2685
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #14, !dbg !2686
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2686
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2656, metadata !DIExpression()), !dbg !2666
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2687, !tbaa !1198
  br i1 %14, label %25, label %26, !dbg !2688

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2689, !tbaa.struct !2691
  br label %26, !dbg !2692

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2693, !tbaa !1286
  %28 = sext i32 %27 to i64, !dbg !2694
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2694
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2695
  %31 = sub nsw i32 %20, %27, !dbg !2696
  %32 = sext i32 %31 to i64, !dbg !2697
  %33 = shl nsw i64 %32, 4, !dbg !2698
  call void @llvm.dbg.value(metadata i8* %30, metadata !2096, metadata !DIExpression()) #14, !dbg !2699
  call void @llvm.dbg.value(metadata i32 0, metadata !2101, metadata !DIExpression()) #14, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %33, metadata !2102, metadata !DIExpression()) #14, !dbg !2699
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #14, !dbg !2701
  store i32 %20, i32* @nslots, align 4, !dbg !2702, !tbaa !1286
  br label %34, !dbg !2703

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2666
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2656, metadata !DIExpression()), !dbg !2666
  %36 = zext i32 %0 to i64, !dbg !2704
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2705
  %38 = load i64, i64* %37, align 8, !dbg !2705, !tbaa !2627
  call void @llvm.dbg.value(metadata i64 %38, metadata !2661, metadata !DIExpression()), !dbg !2706
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2707
  %40 = load i8*, i8** %39, align 8, !dbg !2707, !tbaa !2614
  call void @llvm.dbg.value(metadata i8* %40, metadata !2663, metadata !DIExpression()), !dbg !2706
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2708
  %42 = load i32, i32* %41, align 4, !dbg !2708, !tbaa !1748
  %43 = or i32 %42, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i32 %43, metadata !2664, metadata !DIExpression()), !dbg !2706
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2710
  %45 = load i32, i32* %44, align 8, !dbg !2710, !tbaa !1696
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2711
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2712
  %48 = load i8*, i8** %47, align 8, !dbg !2712, !tbaa !1771
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2713
  %50 = load i8*, i8** %49, align 8, !dbg !2713, !tbaa !1774
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %51, metadata !2665, metadata !DIExpression()), !dbg !2706
  %52 = icmp ugt i64 %38, %51, !dbg !2715
  br i1 %52, label %63, label %53, !dbg !2717

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %54, metadata !2661, metadata !DIExpression()), !dbg !2706
  store i64 %54, i64* %37, align 8, !dbg !2720, !tbaa !2627
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2721
  br i1 %55, label %57, label %56, !dbg !2723

56:                                               ; preds = %53
  tail call void @free(i8* %40) #14, !dbg !2724
  br label %57, !dbg !2724

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2562, metadata !DIExpression()) #14, !dbg !2725
  %58 = tail call noalias i8* @xmalloc(i64 %54) #14, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %58, metadata !2663, metadata !DIExpression()), !dbg !2706
  store i8* %58, i8** %39, align 8, !dbg !2728, !tbaa !2614
  %59 = load i32, i32* %44, align 8, !dbg !2729, !tbaa !1696
  %60 = load i8*, i8** %47, align 8, !dbg !2730, !tbaa !1771
  %61 = load i8*, i8** %49, align 8, !dbg !2731, !tbaa !1774
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2732
  br label %63, !dbg !2733

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2706
  call void @llvm.dbg.value(metadata i8* %64, metadata !2663, metadata !DIExpression()), !dbg !2706
  store i32 %6, i32* %5, align 4, !dbg !2734, !tbaa !1286
  ret i8* %64, !dbg !2735
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2736 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2740, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8* %1, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %2, metadata !2742, metadata !DIExpression()), !dbg !2743
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2744
  ret i8* %4, !dbg !2745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2746 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2748, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !2642, metadata !DIExpression()) #14, !dbg !2750
  call void @llvm.dbg.value(metadata i8* %0, metadata !2643, metadata !DIExpression()) #14, !dbg !2750
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #14, !dbg !2752
  ret i8* %2, !dbg !2753
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2754 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2758, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %1, metadata !2759, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 0, metadata !2740, metadata !DIExpression()) #14, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()) #14, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %1, metadata !2742, metadata !DIExpression()) #14, !dbg !2761
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #14, !dbg !2763
  ret i8* %3, !dbg !2764
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2765 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2769, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i32 %1, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* %2, metadata !2771, metadata !DIExpression()), !dbg !2773
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2774
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2774
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2772, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 %1, metadata !2776, metadata !DIExpression()) #14, !dbg !2782
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2781, metadata !DIExpression()) #14, !dbg !2784
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #14, !dbg !2784, !alias.scope !2785
  %6 = icmp eq i32 %1, 10, !dbg !2788
  br i1 %6, label %7, label %8, !dbg !2790

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !2791, !noalias !2785
  unreachable, !dbg !2791

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2792
  store i32 %1, i32* %9, align 8, !dbg !2793, !tbaa !1696, !alias.scope !2785
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2794
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2795
  ret i8* %10, !dbg !2796
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2797 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2801, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %1, metadata !2802, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %2, metadata !2803, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %3, metadata !2804, metadata !DIExpression()), !dbg !2806
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2807
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2805, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i32 %1, metadata !2776, metadata !DIExpression()) #14, !dbg !2809
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2781, metadata !DIExpression()) #14, !dbg !2811
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #14, !dbg !2811, !alias.scope !2812
  %7 = icmp eq i32 %1, 10, !dbg !2815
  br i1 %7, label %8, label %9, !dbg !2816

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !2817, !noalias !2812
  unreachable, !dbg !2817

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2818
  store i32 %1, i32* %10, align 8, !dbg !2819, !tbaa !1696, !alias.scope !2812
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2820
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2821
  ret i8* %11, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2823 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2781, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2772, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i32 %0, metadata !2825, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %1, metadata !2826, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 0, metadata !2769, metadata !DIExpression()) #14, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %0, metadata !2770, metadata !DIExpression()) #14, !dbg !2832
  call void @llvm.dbg.value(metadata i8* %1, metadata !2771, metadata !DIExpression()) #14, !dbg !2832
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2833
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %0, metadata !2776, metadata !DIExpression()) #14, !dbg !2834
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #14, !dbg !2827, !alias.scope !2835
  %5 = icmp eq i32 %0, 10, !dbg !2838
  br i1 %5, label %6, label %7, !dbg !2839

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !2840, !noalias !2835
  unreachable, !dbg !2840

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2841
  store i32 %0, i32* %8, align 8, !dbg !2842, !tbaa !1696, !alias.scope !2835
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #14, !dbg !2843
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2844
  ret i8* %9, !dbg !2845
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2846 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2781, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2805, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %0, metadata !2850, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8* %1, metadata !2851, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %2, metadata !2852, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 0, metadata !2801, metadata !DIExpression()) #14, !dbg !2858
  call void @llvm.dbg.value(metadata i32 %0, metadata !2802, metadata !DIExpression()) #14, !dbg !2858
  call void @llvm.dbg.value(metadata i8* %1, metadata !2803, metadata !DIExpression()) #14, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %2, metadata !2804, metadata !DIExpression()) #14, !dbg !2858
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2859
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2859
  call void @llvm.dbg.value(metadata i32 %0, metadata !2776, metadata !DIExpression()) #14, !dbg !2860
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #14, !dbg !2853, !alias.scope !2861
  %6 = icmp eq i32 %0, 10, !dbg !2864
  br i1 %6, label %7, label %8, !dbg !2865

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !2866, !noalias !2861
  unreachable, !dbg !2866

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2867
  store i32 %0, i32* %9, align 8, !dbg !2868, !tbaa !1696, !alias.scope !2861
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #14, !dbg !2869
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2870
  ret i8* %10, !dbg !2871
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2872 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2876, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %2, metadata !2878, metadata !DIExpression()), !dbg !2880
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2881
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2881
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2879, metadata !DIExpression()), !dbg !2882
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2883, !tbaa.struct !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1714, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %2, metadata !1715, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %2, metadata !1717, metadata !DIExpression()), !dbg !2885
  %6 = lshr i8 %2, 5, !dbg !2887
  %7 = zext i8 %6 to i64, !dbg !2887
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2888
  call void @llvm.dbg.value(metadata i32* %8, metadata !1719, metadata !DIExpression()), !dbg !2885
  %9 = and i8 %2, 31, !dbg !2889
  %10 = zext i8 %9 to i32, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %10, metadata !1721, metadata !DIExpression()), !dbg !2885
  %11 = load i32, i32* %8, align 4, !dbg !2890, !tbaa !1286
  %12 = lshr i32 %11, %10, !dbg !2891
  %13 = and i32 %12, 1, !dbg !2892
  call void @llvm.dbg.value(metadata i32 %13, metadata !1722, metadata !DIExpression()), !dbg !2885
  %14 = xor i32 %13, 1, !dbg !2893
  %15 = shl i32 %14, %10, !dbg !2894
  %16 = xor i32 %15, %11, !dbg !2895
  store i32 %16, i32* %8, align 4, !dbg !2895, !tbaa !1286
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2896
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2897
  ret i8* %17, !dbg !2898
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2899 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2879, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %0, metadata !2903, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 %1, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %0, metadata !2876, metadata !DIExpression()) #14, !dbg !2908
  call void @llvm.dbg.value(metadata i64 -1, metadata !2877, metadata !DIExpression()) #14, !dbg !2908
  call void @llvm.dbg.value(metadata i8 %1, metadata !2878, metadata !DIExpression()) #14, !dbg !2908
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2909
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !2910, !tbaa.struct !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1714, metadata !DIExpression()) #14, !dbg !2911
  call void @llvm.dbg.value(metadata i8 %1, metadata !1715, metadata !DIExpression()) #14, !dbg !2911
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()) #14, !dbg !2911
  call void @llvm.dbg.value(metadata i8 %1, metadata !1717, metadata !DIExpression()) #14, !dbg !2911
  %5 = lshr i8 %1, 5, !dbg !2913
  %6 = zext i8 %5 to i64, !dbg !2913
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2914
  call void @llvm.dbg.value(metadata i32* %7, metadata !1719, metadata !DIExpression()) #14, !dbg !2911
  %8 = and i8 %1, 31, !dbg !2915
  %9 = zext i8 %8 to i32, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %9, metadata !1721, metadata !DIExpression()) #14, !dbg !2911
  %10 = load i32, i32* %7, align 4, !dbg !2916, !tbaa !1286
  %11 = lshr i32 %10, %9, !dbg !2917
  %12 = and i32 %11, 1, !dbg !2918
  call void @llvm.dbg.value(metadata i32 %12, metadata !1722, metadata !DIExpression()) #14, !dbg !2911
  %13 = xor i32 %12, 1, !dbg !2919
  %14 = shl i32 %13, %9, !dbg !2920
  %15 = xor i32 %14, %10, !dbg !2921
  store i32 %15, i32* %7, align 4, !dbg !2921, !tbaa !1286
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #14, !dbg !2922
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2923
  ret i8* %16, !dbg !2924
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2925 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2879, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8* %0, metadata !2927, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* %0, metadata !2903, metadata !DIExpression()) #14, !dbg !2932
  call void @llvm.dbg.value(metadata i8 58, metadata !2904, metadata !DIExpression()) #14, !dbg !2932
  call void @llvm.dbg.value(metadata i8* %0, metadata !2876, metadata !DIExpression()) #14, !dbg !2933
  call void @llvm.dbg.value(metadata i64 -1, metadata !2877, metadata !DIExpression()) #14, !dbg !2933
  call void @llvm.dbg.value(metadata i8 58, metadata !2878, metadata !DIExpression()) #14, !dbg !2933
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2934
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #14, !dbg !2934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !2935, !tbaa.struct !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1714, metadata !DIExpression()) #14, !dbg !2936
  call void @llvm.dbg.value(metadata i8 58, metadata !1715, metadata !DIExpression()) #14, !dbg !2936
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()) #14, !dbg !2936
  call void @llvm.dbg.value(metadata i8 58, metadata !1717, metadata !DIExpression()) #14, !dbg !2936
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2938
  call void @llvm.dbg.value(metadata i32* %4, metadata !1719, metadata !DIExpression()) #14, !dbg !2936
  call void @llvm.dbg.value(metadata i32 26, metadata !1721, metadata !DIExpression()) #14, !dbg !2936
  %5 = load i32, i32* %4, align 4, !dbg !2939, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %5, metadata !1722, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #14, !dbg !2936
  %6 = or i32 %5, 67108864, !dbg !2940
  store i32 %6, i32* %4, align 4, !dbg !2940, !tbaa !1286
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #14, !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #14, !dbg !2942
  ret i8* %7, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2944 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2879, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* %0, metadata !2946, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8* %0, metadata !2876, metadata !DIExpression()) #14, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()) #14, !dbg !2951
  call void @llvm.dbg.value(metadata i8 58, metadata !2878, metadata !DIExpression()) #14, !dbg !2951
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2952
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2952
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !2953, !tbaa.struct !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1714, metadata !DIExpression()) #14, !dbg !2954
  call void @llvm.dbg.value(metadata i8 58, metadata !1715, metadata !DIExpression()) #14, !dbg !2954
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()) #14, !dbg !2954
  call void @llvm.dbg.value(metadata i8 58, metadata !1717, metadata !DIExpression()) #14, !dbg !2954
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2956
  call void @llvm.dbg.value(metadata i32* %5, metadata !1719, metadata !DIExpression()) #14, !dbg !2954
  call void @llvm.dbg.value(metadata i32 26, metadata !1721, metadata !DIExpression()) #14, !dbg !2954
  %6 = load i32, i32* %5, align 4, !dbg !2957, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %6, metadata !1722, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #14, !dbg !2954
  %7 = or i32 %6, 67108864, !dbg !2958
  store i32 %7, i32* %5, align 4, !dbg !2958, !tbaa !1286
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #14, !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2960
  ret i8* %8, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2962 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2781, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2968
  call void @llvm.dbg.value(metadata i32 %0, metadata !2964, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 %1, metadata !2965, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %2, metadata !2966, metadata !DIExpression()), !dbg !2970
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2971
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2971
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2967, metadata !DIExpression()), !dbg !2972
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2973
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2973
  call void @llvm.dbg.value(metadata i32 %1, metadata !2776, metadata !DIExpression()) #14, !dbg !2974
  call void @llvm.dbg.value(metadata i32 0, metadata !2781, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2974
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2968, !alias.scope !2975
  %8 = icmp eq i32 %1, 10, !dbg !2978
  br i1 %8, label %9, label %10, !dbg !2979

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !2980, !noalias !2975
  unreachable, !dbg !2980

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2781, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2974
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2973
  store i32 %1, i32* %11, align 8, !dbg !2973, !tbaa.struct !2884
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2973
  %13 = bitcast i32* %12 to i8*, !dbg !2973
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2973, !tbaa.struct !2884
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1714, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 58, metadata !1715, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 58, metadata !1717, metadata !DIExpression()), !dbg !2981
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2983
  call void @llvm.dbg.value(metadata i32* %14, metadata !1719, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 26, metadata !1721, metadata !DIExpression()), !dbg !2981
  %15 = load i32, i32* %14, align 4, !dbg !2984, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %15, metadata !1722, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2981
  %16 = or i32 %15, 67108864, !dbg !2985
  store i32 %16, i32* %14, align 4, !dbg !2985, !tbaa !1286
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2986
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2987
  ret i8* %17, !dbg !2988
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2989 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2997, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %0, metadata !2993, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8* %1, metadata !2994, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8* %2, metadata !2995, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8* %3, metadata !2996, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 %0, metadata !3002, metadata !DIExpression()) #14, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %1, metadata !3003, metadata !DIExpression()) #14, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %2, metadata !3004, metadata !DIExpression()) #14, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %3, metadata !3005, metadata !DIExpression()) #14, !dbg !3010
  call void @llvm.dbg.value(metadata i64 -1, metadata !3006, metadata !DIExpression()) #14, !dbg !3010
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3011
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3012, !tbaa.struct !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1755, metadata !DIExpression()) #14, !dbg !3013
  call void @llvm.dbg.value(metadata i8* %1, metadata !1756, metadata !DIExpression()) #14, !dbg !3013
  call void @llvm.dbg.value(metadata i8* %2, metadata !1757, metadata !DIExpression()) #14, !dbg !3013
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1755, metadata !DIExpression()) #14, !dbg !3013
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3015
  store i32 10, i32* %7, align 8, !dbg !3016, !tbaa !1696
  %8 = icmp ne i8* %1, null, !dbg !3017
  %9 = icmp ne i8* %2, null, !dbg !3018
  %10 = and i1 %8, %9, !dbg !3019
  br i1 %10, label %12, label %11, !dbg !3019

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3020
  unreachable, !dbg !3020

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3021
  store i8* %1, i8** %13, align 8, !dbg !3022, !tbaa !1771
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3023
  store i8* %2, i8** %14, align 8, !dbg !3024, !tbaa !1774
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #14, !dbg !3025
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3026
  ret i8* %15, !dbg !3027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2998 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3002, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8* %1, metadata !3003, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8* %2, metadata !3004, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8* %3, metadata !3005, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %4, metadata !3006, metadata !DIExpression()), !dbg !3028
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3029
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #14, !dbg !3029
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2997, metadata !DIExpression()), !dbg !3030
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3031, !tbaa.struct !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1755, metadata !DIExpression()) #14, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %1, metadata !1756, metadata !DIExpression()) #14, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %2, metadata !1757, metadata !DIExpression()) #14, !dbg !3032
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1755, metadata !DIExpression()) #14, !dbg !3032
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3034
  store i32 10, i32* %8, align 8, !dbg !3035, !tbaa !1696
  %9 = icmp ne i8* %1, null, !dbg !3036
  %10 = icmp ne i8* %2, null, !dbg !3037
  %11 = and i1 %9, %10, !dbg !3038
  br i1 %11, label %13, label %12, !dbg !3038

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !3039
  unreachable, !dbg !3039

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3040
  store i8* %1, i8** %14, align 8, !dbg !3041, !tbaa !1771
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3042
  store i8* %2, i8** %15, align 8, !dbg !3043, !tbaa !1774
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3044
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #14, !dbg !3045
  ret i8* %16, !dbg !3046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3047 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2997, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8* %1, metadata !3052, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8* %2, metadata !3053, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i32 0, metadata !2993, metadata !DIExpression()) #14, !dbg !3058
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()) #14, !dbg !3058
  call void @llvm.dbg.value(metadata i8* %1, metadata !2995, metadata !DIExpression()) #14, !dbg !3058
  call void @llvm.dbg.value(metadata i8* %2, metadata !2996, metadata !DIExpression()) #14, !dbg !3058
  call void @llvm.dbg.value(metadata i32 0, metadata !3002, metadata !DIExpression()) #14, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %0, metadata !3003, metadata !DIExpression()) #14, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %1, metadata !3004, metadata !DIExpression()) #14, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %2, metadata !3005, metadata !DIExpression()) #14, !dbg !3059
  call void @llvm.dbg.value(metadata i64 -1, metadata !3006, metadata !DIExpression()) #14, !dbg !3059
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3060
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3060
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3061, !tbaa.struct !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1755, metadata !DIExpression()) #14, !dbg !3062
  call void @llvm.dbg.value(metadata i8* %0, metadata !1756, metadata !DIExpression()) #14, !dbg !3062
  call void @llvm.dbg.value(metadata i8* %1, metadata !1757, metadata !DIExpression()) #14, !dbg !3062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1755, metadata !DIExpression()) #14, !dbg !3062
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3064
  store i32 10, i32* %6, align 8, !dbg !3065, !tbaa !1696
  %7 = icmp ne i8* %0, null, !dbg !3066
  %8 = icmp ne i8* %1, null, !dbg !3067
  %9 = and i1 %7, %8, !dbg !3068
  br i1 %9, label %11, label %10, !dbg !3068

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !3069
  unreachable, !dbg !3069

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3070
  store i8* %0, i8** %12, align 8, !dbg !3071, !tbaa !1771
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3072
  store i8* %1, i8** %13, align 8, !dbg !3073, !tbaa !1774
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #14, !dbg !3074
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3075
  ret i8* %14, !dbg !3076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3077 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2997, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8* %0, metadata !3081, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* %1, metadata !3082, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* %2, metadata !3083, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %3, metadata !3084, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 0, metadata !3002, metadata !DIExpression()) #14, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %0, metadata !3003, metadata !DIExpression()) #14, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %1, metadata !3004, metadata !DIExpression()) #14, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %2, metadata !3005, metadata !DIExpression()) #14, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %3, metadata !3006, metadata !DIExpression()) #14, !dbg !3088
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3089
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3090, !tbaa.struct !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1755, metadata !DIExpression()) #14, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %0, metadata !1756, metadata !DIExpression()) #14, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %1, metadata !1757, metadata !DIExpression()) #14, !dbg !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1755, metadata !DIExpression()) #14, !dbg !3091
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3093
  store i32 10, i32* %7, align 8, !dbg !3094, !tbaa !1696
  %8 = icmp ne i8* %0, null, !dbg !3095
  %9 = icmp ne i8* %1, null, !dbg !3096
  %10 = and i1 %8, %9, !dbg !3097
  br i1 %10, label %12, label %11, !dbg !3097

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3098
  unreachable, !dbg !3098

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3099
  store i8* %0, i8** %13, align 8, !dbg !3100, !tbaa !1771
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3101
  store i8* %1, i8** %14, align 8, !dbg !3102, !tbaa !1774
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #14, !dbg !3103
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3104
  ret i8* %15, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3106 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3110, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %1, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %2, metadata !3112, metadata !DIExpression()), !dbg !3113
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3114
  ret i8* %4, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3116 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 0, metadata !3110, metadata !DIExpression()) #14, !dbg !3123
  call void @llvm.dbg.value(metadata i8* %0, metadata !3111, metadata !DIExpression()) #14, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %1, metadata !3112, metadata !DIExpression()) #14, !dbg !3123
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3125
  ret i8* %3, !dbg !3126
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3127 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3131, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8* %1, metadata !3132, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %0, metadata !3110, metadata !DIExpression()) #14, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %1, metadata !3111, metadata !DIExpression()) #14, !dbg !3134
  call void @llvm.dbg.value(metadata i64 -1, metadata !3112, metadata !DIExpression()) #14, !dbg !3134
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3136
  ret i8* %3, !dbg !3137
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3138 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3142, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 0, metadata !3131, metadata !DIExpression()) #14, !dbg !3144
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()) #14, !dbg !3144
  call void @llvm.dbg.value(metadata i32 0, metadata !3110, metadata !DIExpression()) #14, !dbg !3146
  call void @llvm.dbg.value(metadata i8* %0, metadata !3111, metadata !DIExpression()) #14, !dbg !3146
  call void @llvm.dbg.value(metadata i64 -1, metadata !3112, metadata !DIExpression()) #14, !dbg !3146
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3148
  ret i8* %2, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3150 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3157, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %1, metadata !3158, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %2, metadata !3159, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %3, metadata !3160, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8** %4, metadata !3161, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %5, metadata !3162, metadata !DIExpression()), !dbg !3163
  %7 = icmp eq i8* %1, null, !dbg !3164
  br i1 %7, label %10, label %8, !dbg !3166

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #14, !dbg !3167
  br label %12, !dbg !3167

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.91, i64 0, i64 0), i8* %2, i8* %3) #14, !dbg !3168
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.92, i64 0, i64 0), i32 5) #14, !dbg !3169
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #14, !dbg !3169
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3170
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.94, i64 0, i64 0), i32 5) #14, !dbg !3171
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.95, i64 0, i64 0)) #14, !dbg !3171
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3172
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
  ], !dbg !3173

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.96, i64 0, i64 0), i32 5) #14, !dbg !3174
  %21 = load i8*, i8** %4, align 8, !dbg !3174, !tbaa !1198
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #14, !dbg !3174
  br label %147, !dbg !3176

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.97, i64 0, i64 0), i32 5) #14, !dbg !3177
  %25 = load i8*, i8** %4, align 8, !dbg !3177, !tbaa !1198
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3177
  %27 = load i8*, i8** %26, align 8, !dbg !3177, !tbaa !1198
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #14, !dbg !3177
  br label %147, !dbg !3178

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.98, i64 0, i64 0), i32 5) #14, !dbg !3179
  %31 = load i8*, i8** %4, align 8, !dbg !3179, !tbaa !1198
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3179
  %33 = load i8*, i8** %32, align 8, !dbg !3179, !tbaa !1198
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3179
  %35 = load i8*, i8** %34, align 8, !dbg !3179, !tbaa !1198
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #14, !dbg !3179
  br label %147, !dbg !3180

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.99, i64 0, i64 0), i32 5) #14, !dbg !3181
  %39 = load i8*, i8** %4, align 8, !dbg !3181, !tbaa !1198
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3181
  %41 = load i8*, i8** %40, align 8, !dbg !3181, !tbaa !1198
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3181
  %43 = load i8*, i8** %42, align 8, !dbg !3181, !tbaa !1198
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3181
  %45 = load i8*, i8** %44, align 8, !dbg !3181, !tbaa !1198
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #14, !dbg !3181
  br label %147, !dbg !3182

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.100, i64 0, i64 0), i32 5) #14, !dbg !3183
  %49 = load i8*, i8** %4, align 8, !dbg !3183, !tbaa !1198
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3183
  %51 = load i8*, i8** %50, align 8, !dbg !3183, !tbaa !1198
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3183
  %53 = load i8*, i8** %52, align 8, !dbg !3183, !tbaa !1198
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3183
  %55 = load i8*, i8** %54, align 8, !dbg !3183, !tbaa !1198
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3183
  %57 = load i8*, i8** %56, align 8, !dbg !3183, !tbaa !1198
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #14, !dbg !3183
  br label %147, !dbg !3184

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.101, i64 0, i64 0), i32 5) #14, !dbg !3185
  %61 = load i8*, i8** %4, align 8, !dbg !3185, !tbaa !1198
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3185
  %63 = load i8*, i8** %62, align 8, !dbg !3185, !tbaa !1198
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3185
  %65 = load i8*, i8** %64, align 8, !dbg !3185, !tbaa !1198
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3185
  %67 = load i8*, i8** %66, align 8, !dbg !3185, !tbaa !1198
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3185
  %69 = load i8*, i8** %68, align 8, !dbg !3185, !tbaa !1198
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3185
  %71 = load i8*, i8** %70, align 8, !dbg !3185, !tbaa !1198
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #14, !dbg !3185
  br label %147, !dbg !3186

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.102, i64 0, i64 0), i32 5) #14, !dbg !3187
  %75 = load i8*, i8** %4, align 8, !dbg !3187, !tbaa !1198
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3187
  %77 = load i8*, i8** %76, align 8, !dbg !3187, !tbaa !1198
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3187
  %79 = load i8*, i8** %78, align 8, !dbg !3187, !tbaa !1198
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3187
  %81 = load i8*, i8** %80, align 8, !dbg !3187, !tbaa !1198
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3187
  %83 = load i8*, i8** %82, align 8, !dbg !3187, !tbaa !1198
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3187
  %85 = load i8*, i8** %84, align 8, !dbg !3187, !tbaa !1198
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3187
  %87 = load i8*, i8** %86, align 8, !dbg !3187, !tbaa !1198
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #14, !dbg !3187
  br label %147, !dbg !3188

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.103, i64 0, i64 0), i32 5) #14, !dbg !3189
  %91 = load i8*, i8** %4, align 8, !dbg !3189, !tbaa !1198
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3189
  %93 = load i8*, i8** %92, align 8, !dbg !3189, !tbaa !1198
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3189
  %95 = load i8*, i8** %94, align 8, !dbg !3189, !tbaa !1198
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3189
  %97 = load i8*, i8** %96, align 8, !dbg !3189, !tbaa !1198
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3189
  %99 = load i8*, i8** %98, align 8, !dbg !3189, !tbaa !1198
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3189
  %101 = load i8*, i8** %100, align 8, !dbg !3189, !tbaa !1198
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3189
  %103 = load i8*, i8** %102, align 8, !dbg !3189, !tbaa !1198
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3189
  %105 = load i8*, i8** %104, align 8, !dbg !3189, !tbaa !1198
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #14, !dbg !3189
  br label %147, !dbg !3190

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.104, i64 0, i64 0), i32 5) #14, !dbg !3191
  %109 = load i8*, i8** %4, align 8, !dbg !3191, !tbaa !1198
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3191
  %111 = load i8*, i8** %110, align 8, !dbg !3191, !tbaa !1198
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3191
  %113 = load i8*, i8** %112, align 8, !dbg !3191, !tbaa !1198
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3191
  %115 = load i8*, i8** %114, align 8, !dbg !3191, !tbaa !1198
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3191
  %117 = load i8*, i8** %116, align 8, !dbg !3191, !tbaa !1198
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3191
  %119 = load i8*, i8** %118, align 8, !dbg !3191, !tbaa !1198
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3191
  %121 = load i8*, i8** %120, align 8, !dbg !3191, !tbaa !1198
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3191
  %123 = load i8*, i8** %122, align 8, !dbg !3191, !tbaa !1198
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3191
  %125 = load i8*, i8** %124, align 8, !dbg !3191, !tbaa !1198
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #14, !dbg !3191
  br label %147, !dbg !3192

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.105, i64 0, i64 0), i32 5) #14, !dbg !3193
  %129 = load i8*, i8** %4, align 8, !dbg !3193, !tbaa !1198
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3193
  %131 = load i8*, i8** %130, align 8, !dbg !3193, !tbaa !1198
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3193
  %133 = load i8*, i8** %132, align 8, !dbg !3193, !tbaa !1198
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3193
  %135 = load i8*, i8** %134, align 8, !dbg !3193, !tbaa !1198
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3193
  %137 = load i8*, i8** %136, align 8, !dbg !3193, !tbaa !1198
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3193
  %139 = load i8*, i8** %138, align 8, !dbg !3193, !tbaa !1198
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3193
  %141 = load i8*, i8** %140, align 8, !dbg !3193, !tbaa !1198
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3193
  %143 = load i8*, i8** %142, align 8, !dbg !3193, !tbaa !1198
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3193
  %145 = load i8*, i8** %144, align 8, !dbg !3193, !tbaa !1198
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #14, !dbg !3193
  br label %147, !dbg !3194

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3195
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3196 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3200, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8* %1, metadata !3201, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8* %2, metadata !3202, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8* %3, metadata !3203, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8** %4, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 0, metadata !3205, metadata !DIExpression()), !dbg !3206
  br label %6, !dbg !3207

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3209
  call void @llvm.dbg.value(metadata i64 %7, metadata !3205, metadata !DIExpression()), !dbg !3206
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3210
  %9 = load i8*, i8** %8, align 8, !dbg !3210, !tbaa !1198
  %10 = icmp eq i8* %9, null, !dbg !3212
  %11 = add i64 %7, 1, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %11, metadata !3205, metadata !DIExpression()), !dbg !3206
  br i1 %10, label %12, label %6, !dbg !3212, !llvm.loop !3214

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %7, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %7, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %7, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %7, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %7, metadata !3205, metadata !DIExpression()), !dbg !3206
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3216
  ret void, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3218 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3229, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8* %1, metadata !3230, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8* %2, metadata !3231, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8* %3, metadata !3232, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3233, metadata !DIExpression()), !dbg !3237
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3238
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3238
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3235, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 0, metadata !3234, metadata !DIExpression()), !dbg !3237
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3240
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3240
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3240
  %11 = load i32, i32* %8, align 8, !dbg !3243
  %12 = icmp ult i32 %11, 41, !dbg !3243
  br i1 %12, label %13, label %18, !dbg !3243

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3243
  %15 = zext i32 %11 to i64, !dbg !3243
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3243
  %17 = add nuw nsw i32 %11, 8, !dbg !3243
  store i32 %17, i32* %8, align 8, !dbg !3243
  br label %21, !dbg !3243

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3243
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3243
  store i8* %20, i8** %9, align 8, !dbg !3243
  br label %21, !dbg !3243

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3243
  %25 = load i8*, i8** %24, align 8, !dbg !3243
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3244
  store i8* %25, i8** %26, align 16, !dbg !3245, !tbaa !1198
  %27 = icmp eq i8* %25, null, !dbg !3246
  br i1 %27, label %30, label %28, !dbg !3247

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3234, metadata !DIExpression()), !dbg !3237
  %29 = icmp ult i32 %22, 41, !dbg !3243
  br i1 %29, label %35, label %32, !dbg !3243

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3248
  call void @llvm.dbg.value(metadata i64 %31, metadata !3234, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %31, metadata !3234, metadata !DIExpression()), !dbg !3237
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3249
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3250
  ret void, !dbg !3250

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3243
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3243
  store i8* %34, i8** %9, align 8, !dbg !3243
  br label %40, !dbg !3243

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3243
  %37 = zext i32 %22 to i64, !dbg !3243
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3243
  %39 = add nuw nsw i32 %22, 8, !dbg !3243
  store i32 %39, i32* %8, align 8, !dbg !3243
  br label %40, !dbg !3243

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3243
  %44 = load i8*, i8** %43, align 8, !dbg !3243
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3244
  store i8* %44, i8** %45, align 8, !dbg !3245, !tbaa !1198
  %46 = icmp eq i8* %44, null, !dbg !3246
  br i1 %46, label %30, label %47, !dbg !3247

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3234, metadata !DIExpression()), !dbg !3237
  %48 = icmp ult i32 %41, 41, !dbg !3243
  br i1 %48, label %52, label %49, !dbg !3243

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3243
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3243
  store i8* %51, i8** %9, align 8, !dbg !3243
  br label %57, !dbg !3243

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3243
  %54 = zext i32 %41 to i64, !dbg !3243
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3243
  %56 = add nuw nsw i32 %41, 8, !dbg !3243
  store i32 %56, i32* %8, align 8, !dbg !3243
  br label %57, !dbg !3243

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3243
  %61 = load i8*, i8** %60, align 8, !dbg !3243
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3244
  store i8* %61, i8** %62, align 16, !dbg !3245, !tbaa !1198
  %63 = icmp eq i8* %61, null, !dbg !3246
  br i1 %63, label %30, label %64, !dbg !3247

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3234, metadata !DIExpression()), !dbg !3237
  %65 = icmp ult i32 %58, 41, !dbg !3243
  br i1 %65, label %69, label %66, !dbg !3243

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3243
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3243
  store i8* %68, i8** %9, align 8, !dbg !3243
  br label %74, !dbg !3243

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3243
  %71 = zext i32 %58 to i64, !dbg !3243
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3243
  %73 = add nuw nsw i32 %58, 8, !dbg !3243
  store i32 %73, i32* %8, align 8, !dbg !3243
  br label %74, !dbg !3243

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3243
  %78 = load i8*, i8** %77, align 8, !dbg !3243
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3244
  store i8* %78, i8** %79, align 8, !dbg !3245, !tbaa !1198
  %80 = icmp eq i8* %78, null, !dbg !3246
  br i1 %80, label %30, label %81, !dbg !3247

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3234, metadata !DIExpression()), !dbg !3237
  %82 = icmp ult i32 %75, 41, !dbg !3243
  br i1 %82, label %86, label %83, !dbg !3243

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3243
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3243
  store i8* %85, i8** %9, align 8, !dbg !3243
  br label %91, !dbg !3243

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3243
  %88 = zext i32 %75 to i64, !dbg !3243
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3243
  %90 = add nuw nsw i32 %75, 8, !dbg !3243
  store i32 %90, i32* %8, align 8, !dbg !3243
  br label %91, !dbg !3243

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3243
  %95 = load i8*, i8** %94, align 8, !dbg !3243
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3244
  store i8* %95, i8** %96, align 16, !dbg !3245, !tbaa !1198
  %97 = icmp eq i8* %95, null, !dbg !3246
  br i1 %97, label %30, label %98, !dbg !3247

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3234, metadata !DIExpression()), !dbg !3237
  %99 = icmp ult i32 %92, 41, !dbg !3243
  br i1 %99, label %103, label %100, !dbg !3243

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3243
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3243
  store i8* %102, i8** %9, align 8, !dbg !3243
  br label %108, !dbg !3243

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3243
  %105 = zext i32 %92 to i64, !dbg !3243
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3243
  %107 = add nuw nsw i32 %92, 8, !dbg !3243
  store i32 %107, i32* %8, align 8, !dbg !3243
  br label %108, !dbg !3243

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3243
  %111 = load i8*, i8** %110, align 8, !dbg !3243
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3244
  store i8* %111, i8** %112, align 8, !dbg !3245, !tbaa !1198
  %113 = icmp eq i8* %111, null, !dbg !3246
  br i1 %113, label %30, label %114, !dbg !3247

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3234, metadata !DIExpression()), !dbg !3237
  %115 = load i8*, i8** %9, align 8, !dbg !3243
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3243
  store i8* %116, i8** %9, align 8, !dbg !3243
  %117 = bitcast i8* %115 to i8**, !dbg !3243
  %118 = load i8*, i8** %117, align 8, !dbg !3243
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3244
  store i8* %118, i8** %119, align 16, !dbg !3245, !tbaa !1198
  %120 = icmp eq i8* %118, null, !dbg !3246
  br i1 %120, label %30, label %121, !dbg !3247

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3234, metadata !DIExpression()), !dbg !3237
  %122 = load i8*, i8** %9, align 8, !dbg !3243
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3243
  store i8* %123, i8** %9, align 8, !dbg !3243
  %124 = bitcast i8* %122 to i8**, !dbg !3243
  %125 = load i8*, i8** %124, align 8, !dbg !3243
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3244
  store i8* %125, i8** %126, align 8, !dbg !3245, !tbaa !1198
  %127 = icmp eq i8* %125, null, !dbg !3246
  br i1 %127, label %30, label %128, !dbg !3247

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3234, metadata !DIExpression()), !dbg !3237
  %129 = load i8*, i8** %9, align 8, !dbg !3243
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3243
  store i8* %130, i8** %9, align 8, !dbg !3243
  %131 = bitcast i8* %129 to i8**, !dbg !3243
  %132 = load i8*, i8** %131, align 8, !dbg !3243
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3244
  store i8* %132, i8** %133, align 16, !dbg !3245, !tbaa !1198
  %134 = icmp eq i8* %132, null, !dbg !3246
  br i1 %134, label %30, label %135, !dbg !3247

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3234, metadata !DIExpression()), !dbg !3237
  %136 = load i8*, i8** %9, align 8, !dbg !3243
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3243
  store i8* %137, i8** %9, align 8, !dbg !3243
  %138 = bitcast i8* %136 to i8**, !dbg !3243
  %139 = load i8*, i8** %138, align 8, !dbg !3243
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3244
  store i8* %139, i8** %140, align 8, !dbg !3245, !tbaa !1198
  %141 = icmp eq i8* %139, null, !dbg !3246
  %142 = select i1 %141, i64 9, i64 10, !dbg !3247
  br label %30, !dbg !3247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3251 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3255, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* %1, metadata !3256, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* %2, metadata !3257, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* %3, metadata !3258, metadata !DIExpression()), !dbg !3264
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3265
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #14, !dbg !3265
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3259, metadata !DIExpression()), !dbg !3266
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3267
  call void @llvm.va_start(i8* nonnull %6), !dbg !3267
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3268
  call void @llvm.va_end(i8* nonnull %6), !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #14, !dbg !3270
  ret void, !dbg !3270
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3271 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3272, !tbaa !1198
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3272
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.108, i64 0, i64 0), i32 5) #14, !dbg !3273
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.109, i64 0, i64 0)) #14, !dbg !3273
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.110, i64 0, i64 0), i32 5) #14, !dbg !3274
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.111, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.112, i64 0, i64 0)) #14, !dbg !3274
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.113, i64 0, i64 0), i32 5) #14, !dbg !3275
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.114, i64 0, i64 0)) #14, !dbg !3275
  ret void, !dbg !3276
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3277 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3281, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3282, metadata !DIExpression()), !dbg !3283
  %3 = udiv i64 9223372036854775807, %1, !dbg !3284
  %4 = icmp ult i64 %3, %0, !dbg !3284
  br i1 %4, label %5, label %6, !dbg !3286

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3287
  unreachable, !dbg !3287

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %7, metadata !3289, metadata !DIExpression()) #14, !dbg !3295
  %8 = tail call noalias i8* @malloc(i64 %7) #14, !dbg !3297
  call void @llvm.dbg.value(metadata i8* %8, metadata !3294, metadata !DIExpression()) #14, !dbg !3295
  %9 = icmp eq i8* %8, null, !dbg !3298
  %10 = icmp ne i64 %7, 0, !dbg !3300
  %11 = and i1 %10, %9, !dbg !3301
  br i1 %11, label %12, label %13, !dbg !3301

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !3302
  unreachable, !dbg !3302

13:                                               ; preds = %6
  ret i8* %8, !dbg !3303
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3290 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3289, metadata !DIExpression()), !dbg !3304
  %2 = tail call noalias i8* @malloc(i64 %0) #14, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %2, metadata !3294, metadata !DIExpression()), !dbg !3304
  %3 = icmp eq i8* %2, null, !dbg !3306
  %4 = icmp ne i64 %0, 0, !dbg !3307
  %5 = and i1 %4, %3, !dbg !3308
  br i1 %5, label %6, label %7, !dbg !3308

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3309
  unreachable, !dbg !3309

7:                                                ; preds = %1
  ret i8* %2, !dbg !3310
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !3311 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3315, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !3316, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %2, metadata !3317, metadata !DIExpression()), !dbg !3318
  %4 = udiv i64 9223372036854775807, %2, !dbg !3319
  %5 = icmp ult i64 %4, %1, !dbg !3319
  br i1 %5, label %6, label %7, !dbg !3321

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !3322
  unreachable, !dbg !3322

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %0, metadata !3324, metadata !DIExpression()) #14, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %8, metadata !3329, metadata !DIExpression()) #14, !dbg !3330
  %9 = icmp eq i64 %8, 0, !dbg !3332
  %10 = icmp ne i8* %0, null, !dbg !3334
  %11 = and i1 %10, %9, !dbg !3335
  br i1 %11, label %12, label %13, !dbg !3335

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #14, !dbg !3336
  br label %19, !dbg !3338

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #14, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %14, metadata !3324, metadata !DIExpression()) #14, !dbg !3330
  %15 = icmp eq i8* %14, null, !dbg !3340
  %16 = icmp ne i64 %8, 0, !dbg !3342
  %17 = and i1 %16, %15, !dbg !3343
  br i1 %17, label %18, label %19, !dbg !3343

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3344
  unreachable, !dbg !3344

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3330
  ret i8* %20, !dbg !3345
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3325 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3324, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3346
  %3 = icmp eq i64 %1, 0, !dbg !3347
  %4 = icmp ne i8* %0, null, !dbg !3348
  %5 = and i1 %4, %3, !dbg !3349
  br i1 %5, label %6, label %7, !dbg !3349

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #14, !dbg !3350
  br label %13, !dbg !3351

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #14, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %8, metadata !3324, metadata !DIExpression()), !dbg !3346
  %9 = icmp eq i8* %8, null, !dbg !3353
  %10 = icmp ne i64 %1, 0, !dbg !3354
  %11 = and i1 %10, %9, !dbg !3355
  br i1 %11, label %12, label %13, !dbg !3355

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3356
  unreachable, !dbg !3356

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3346
  ret i8* %14, !dbg !3357
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !552 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !557, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64* %1, metadata !558, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %2, metadata !559, metadata !DIExpression()), !dbg !3358
  %4 = load i64, i64* %1, align 8, !dbg !3359, !tbaa !2599
  call void @llvm.dbg.value(metadata i64 %4, metadata !560, metadata !DIExpression()), !dbg !3358
  %5 = icmp eq i8* %0, null, !dbg !3360
  br i1 %5, label %6, label %20, !dbg !3362

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3363
  br i1 %7, label %8, label %13, !dbg !3366

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3367
  call void @llvm.dbg.value(metadata i64 %9, metadata !560, metadata !DIExpression()), !dbg !3358
  %10 = icmp ugt i64 %2, 128, !dbg !3369
  %11 = zext i1 %10 to i64, !dbg !3369
  %12 = add nuw nsw i64 %9, %11, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %12, metadata !560, metadata !DIExpression()), !dbg !3358
  br label %13, !dbg !3371

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3358
  call void @llvm.dbg.value(metadata i64 %14, metadata !560, metadata !DIExpression()), !dbg !3358
  %15 = udiv i64 9223372036854775807, %2, !dbg !3372
  %16 = icmp ult i64 %15, %14, !dbg !3372
  br i1 %16, label %19, label %17, !dbg !3374

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !560, metadata !DIExpression()), !dbg !3358
  store i64 %14, i64* %1, align 8, !dbg !3375, !tbaa !2599
  %18 = mul i64 %14, %2, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %0, metadata !3324, metadata !DIExpression()) #14, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %28, metadata !3329, metadata !DIExpression()) #14, !dbg !3377
  br label %31, !dbg !3379

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3380
  unreachable, !dbg !3380

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3381
  %22 = icmp ugt i64 %21, %4, !dbg !3384
  br i1 %22, label %24, label %23, !dbg !3385

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !3386
  unreachable, !dbg !3386

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3387
  %26 = add nuw i64 %4, 1, !dbg !3388
  %27 = add i64 %26, %25, !dbg !3389
  call void @llvm.dbg.value(metadata i64 %27, metadata !560, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %27, metadata !560, metadata !DIExpression()), !dbg !3358
  store i64 %27, i64* %1, align 8, !dbg !3375, !tbaa !2599
  %28 = mul i64 %27, %2, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %0, metadata !3324, metadata !DIExpression()) #14, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %28, metadata !3329, metadata !DIExpression()) #14, !dbg !3377
  %29 = icmp eq i64 %28, 0, !dbg !3390
  br i1 %29, label %30, label %31, !dbg !3379

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #14, !dbg !3391
  br label %38, !dbg !3392

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #14, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %33, metadata !3324, metadata !DIExpression()) #14, !dbg !3377
  %34 = icmp eq i8* %33, null, !dbg !3394
  %35 = icmp ne i64 %32, 0, !dbg !3395
  %36 = and i1 %35, %34, !dbg !3396
  br i1 %36, label %37, label %38, !dbg !3396

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !3397
  unreachable, !dbg !3397

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3377
  ret i8* %39, !dbg !3398
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !3399 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3401, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %0, metadata !3289, metadata !DIExpression()) #14, !dbg !3403
  %2 = tail call noalias i8* @malloc(i64 %0) #14, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %2, metadata !3294, metadata !DIExpression()) #14, !dbg !3403
  %3 = icmp eq i8* %2, null, !dbg !3406
  %4 = icmp ne i64 %0, 0, !dbg !3407
  %5 = and i1 %4, %3, !dbg !3408
  br i1 %5, label %6, label %7, !dbg !3408

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3409
  unreachable, !dbg !3409

7:                                                ; preds = %1
  ret i8* %2, !dbg !3410
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3415, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64* %1, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8* %0, metadata !557, metadata !DIExpression()) #14, !dbg !3418
  call void @llvm.dbg.value(metadata i64* %1, metadata !558, metadata !DIExpression()) #14, !dbg !3418
  call void @llvm.dbg.value(metadata i64 1, metadata !559, metadata !DIExpression()) #14, !dbg !3418
  %3 = load i64, i64* %1, align 8, !dbg !3420, !tbaa !2599
  call void @llvm.dbg.value(metadata i64 %3, metadata !560, metadata !DIExpression()) #14, !dbg !3418
  %4 = icmp eq i8* %0, null, !dbg !3421
  br i1 %4, label %5, label %12, !dbg !3422

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3423
  br i1 %6, label %9, label %7, !dbg !3424

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !560, metadata !DIExpression()) #14, !dbg !3418
  %8 = icmp slt i64 %3, 0, !dbg !3425
  br i1 %8, label %11, label %9, !dbg !3426

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !560, metadata !DIExpression()) #14, !dbg !3418
  store i64 %10, i64* %1, align 8, !dbg !3427, !tbaa !2599
  call void @llvm.dbg.value(metadata i8* %0, metadata !3324, metadata !DIExpression()) #14, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %18, metadata !3329, metadata !DIExpression()) #14, !dbg !3428
  br label %21, !dbg !3430

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3431
  unreachable, !dbg !3431

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3432
  br i1 %13, label %15, label %14, !dbg !3433

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !3434
  unreachable, !dbg !3434

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3435
  %17 = add nuw nsw i64 %3, 1, !dbg !3436
  %18 = add nuw nsw i64 %17, %16, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %18, metadata !560, metadata !DIExpression()) #14, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %18, metadata !560, metadata !DIExpression()) #14, !dbg !3418
  store i64 %18, i64* %1, align 8, !dbg !3427, !tbaa !2599
  call void @llvm.dbg.value(metadata i8* %0, metadata !3324, metadata !DIExpression()) #14, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %18, metadata !3329, metadata !DIExpression()) #14, !dbg !3428
  %19 = icmp eq i64 %18, 0, !dbg !3438
  br i1 %19, label %20, label %21, !dbg !3430

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #14, !dbg !3439
  br label %28, !dbg !3440

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #14, !dbg !3441
  call void @llvm.dbg.value(metadata i8* %23, metadata !3324, metadata !DIExpression()) #14, !dbg !3428
  %24 = icmp eq i8* %23, null, !dbg !3442
  %25 = icmp ne i64 %22, 0, !dbg !3443
  %26 = and i1 %25, %24, !dbg !3444
  br i1 %26, label %27, label %28, !dbg !3444

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !3445
  unreachable, !dbg !3445

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3428
  ret i8* %29, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3447 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3449, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %0, metadata !3451, metadata !DIExpression()) #14, !dbg !3456
  call void @llvm.dbg.value(metadata i64 1, metadata !3454, metadata !DIExpression()) #14, !dbg !3456
  %2 = icmp slt i64 %0, 0, !dbg !3458
  br i1 %2, label %6, label %3, !dbg !3460

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #14, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %4, metadata !3455, metadata !DIExpression()) #14, !dbg !3456
  %5 = icmp eq i8* %4, null, !dbg !3462
  br i1 %5, label %6, label %7, !dbg !3463

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !3464
  unreachable, !dbg !3464

7:                                                ; preds = %3
  ret i8* %4, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3452 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3451, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()), !dbg !3466
  %3 = udiv i64 9223372036854775807, %1, !dbg !3467
  %4 = icmp ult i64 %3, %0, !dbg !3467
  br i1 %4, label %8, label %5, !dbg !3468

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #14, !dbg !3469
  call void @llvm.dbg.value(metadata i8* %6, metadata !3455, metadata !DIExpression()), !dbg !3466
  %7 = icmp eq i8* %6, null, !dbg !3470
  br i1 %7, label %8, label %9, !dbg !3471

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !3472
  unreachable, !dbg !3472

9:                                                ; preds = %5
  ret i8* %6, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3474 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3478, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()) #14, !dbg !3481
  %3 = tail call noalias i8* @malloc(i64 %1) #14, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %3, metadata !3294, metadata !DIExpression()) #14, !dbg !3481
  %4 = icmp eq i8* %3, null, !dbg !3484
  %5 = icmp ne i64 %1, 0, !dbg !3485
  %6 = and i1 %5, %4, !dbg !3486
  br i1 %6, label %7, label %8, !dbg !3486

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3487
  unreachable, !dbg !3487

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3488, metadata !DIExpression()) #14, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %0, metadata !3491, metadata !DIExpression()) #14, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()) #14, !dbg !3493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #14, !dbg !3495
  ret i8* %3, !dbg !3496
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3497 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3499, metadata !DIExpression()), !dbg !3500
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !3501
  %3 = add i64 %2, 1, !dbg !3502
  call void @llvm.dbg.value(metadata i8* %0, metadata !3478, metadata !DIExpression()) #14, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %3, metadata !3479, metadata !DIExpression()) #14, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %3, metadata !3289, metadata !DIExpression()) #14, !dbg !3505
  %4 = tail call noalias i8* @malloc(i64 %3) #14, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %4, metadata !3294, metadata !DIExpression()) #14, !dbg !3505
  %5 = icmp eq i8* %4, null, !dbg !3508
  %6 = icmp ne i64 %3, 0, !dbg !3509
  %7 = and i1 %6, %5, !dbg !3510
  br i1 %7, label %8, label %9, !dbg !3510

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3511
  unreachable, !dbg !3511

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3488, metadata !DIExpression()) #14, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %0, metadata !3491, metadata !DIExpression()) #14, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %3, metadata !3492, metadata !DIExpression()) #14, !dbg !3512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #14, !dbg !3514
  ret i8* %4, !dbg !3515
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3516 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3517, !tbaa !1286
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.125, i64 0, i64 0), i32 5) #14, !dbg !3518
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i8* %2) #14, !dbg !3519
  tail call void @abort() #24, !dbg !3520
  unreachable, !dbg !3520
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3521 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3523, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3529
  %3 = icmp eq i64 %0, 0, !dbg !3530
  %4 = icmp eq i64 %1, 0, !dbg !3531
  %5 = or i1 %3, %4, !dbg !3532
  br i1 %5, label %11, label %6, !dbg !3532

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3526, metadata !DIExpression()), !dbg !3533
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3534
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3534
  br i1 %8, label %9, label %11, !dbg !3536

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !3537
  store i32 12, i32* %10, align 4, !dbg !3539, !tbaa !1286
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3523, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %12, metadata !3524, metadata !DIExpression()), !dbg !3529
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #14, !dbg !3540
  call void @llvm.dbg.value(metadata i8* %14, metadata !3525, metadata !DIExpression()), !dbg !3529
  br label %15, !dbg !3541

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3529
  ret i8* %16, !dbg !3542
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !3543 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3545, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 %1, metadata !3546, metadata !DIExpression()), !dbg !3569
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3570
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #14, !dbg !3570
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !3547, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 -1, metadata !3557, metadata !DIExpression()), !dbg !3569
  call void @llvm.va_start(i8* nonnull %4), !dbg !3572
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
  ], !dbg !3573

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3574
  %7 = load i32, i32* %6, align 16, !dbg !3574
  %8 = icmp ult i32 %7, 41, !dbg !3574
  br i1 %8, label %9, label %15, !dbg !3574

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3574
  %11 = load i8*, i8** %10, align 16, !dbg !3574
  %12 = zext i32 %7 to i64, !dbg !3574
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !3574
  %14 = add nuw nsw i32 %7, 8, !dbg !3574
  store i32 %14, i32* %6, align 16, !dbg !3574
  br label %19, !dbg !3574

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3574
  %17 = load i8*, i8** %16, align 8, !dbg !3574
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !3574
  store i8* %18, i8** %16, align 8, !dbg !3574
  br label %19, !dbg !3574

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !3574
  %22 = load i32, i32* %21, align 4, !dbg !3574
  call void @llvm.dbg.value(metadata i32 %22, metadata !3558, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i32 %0, metadata !3576, metadata !DIExpression()) #14, !dbg !3581
  call void @llvm.dbg.value(metadata i32 %22, metadata !3579, metadata !DIExpression()) #14, !dbg !3581
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #14, !dbg !3583
  call void @llvm.dbg.value(metadata i32 %23, metadata !3580, metadata !DIExpression()) #14, !dbg !3581
  call void @llvm.dbg.value(metadata i32 %23, metadata !3557, metadata !DIExpression()), !dbg !3569
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3584
  %26 = load i32, i32* %25, align 16, !dbg !3584
  %27 = icmp ult i32 %26, 41, !dbg !3584
  br i1 %27, label %28, label %34, !dbg !3584

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3584
  %30 = load i8*, i8** %29, align 16, !dbg !3584
  %31 = zext i32 %26 to i64, !dbg !3584
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !3584
  %33 = add nuw nsw i32 %26, 8, !dbg !3584
  store i32 %33, i32* %25, align 16, !dbg !3584
  br label %38, !dbg !3584

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3584
  %36 = load i8*, i8** %35, align 8, !dbg !3584
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !3584
  store i8* %37, i8** %35, align 8, !dbg !3584
  br label %38, !dbg !3584

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !3584
  %41 = load i32, i32* %40, align 4, !dbg !3584
  call void @llvm.dbg.value(metadata i32 %41, metadata !3561, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %0, metadata !378, metadata !DIExpression()) #14, !dbg !3586
  call void @llvm.dbg.value(metadata i32 %41, metadata !379, metadata !DIExpression()) #14, !dbg !3586
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3588, !tbaa !1286
  %43 = icmp sgt i32 %42, -1, !dbg !3590
  br i1 %43, label %44, label %56, !dbg !3591

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #14, !dbg !3592
  call void @llvm.dbg.value(metadata i32 %45, metadata !380, metadata !DIExpression()) #14, !dbg !3586
  %46 = icmp sgt i32 %45, -1, !dbg !3594
  br i1 %46, label %51, label %47, !dbg !3596

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #26, !dbg !3597
  %49 = load i32, i32* %48, align 4, !dbg !3597, !tbaa !1286
  %50 = icmp eq i32 %49, 22, !dbg !3598
  br i1 %50, label %52, label %51, !dbg !3599

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3600, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %62, metadata !380, metadata !DIExpression()) #14, !dbg !3586
  br label %116, !dbg !3602

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !3576, metadata !DIExpression()) #14, !dbg !3603
  call void @llvm.dbg.value(metadata i32 %41, metadata !3579, metadata !DIExpression()) #14, !dbg !3603
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #14, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %53, metadata !3580, metadata !DIExpression()) #14, !dbg !3603
  call void @llvm.dbg.value(metadata i32 %53, metadata !380, metadata !DIExpression()) #14, !dbg !3586
  %54 = icmp sgt i32 %53, -1, !dbg !3607
  br i1 %54, label %55, label %116, !dbg !3609

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3610, !tbaa !1286
  br label %60, !dbg !3611

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !3576, metadata !DIExpression()) #14, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %41, metadata !3579, metadata !DIExpression()) #14, !dbg !3612
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #14, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %57, metadata !3580, metadata !DIExpression()) #14, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %57, metadata !380, metadata !DIExpression()) #14, !dbg !3586
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3615
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !3616
  call void @llvm.dbg.value(metadata i32 %62, metadata !380, metadata !DIExpression()) #14, !dbg !3586
  %63 = icmp sgt i32 %62, -1, !dbg !3617
  %64 = and i1 %61, %63, !dbg !3602
  br i1 %64, label %65, label %116, !dbg !3602

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #14, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %66, metadata !381, metadata !DIExpression()) #14, !dbg !3619
  %67 = icmp slt i32 %66, 0, !dbg !3620
  br i1 %67, label %72, label %68, !dbg !3621

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !3622
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #14, !dbg !3623
  %71 = icmp eq i32 %70, -1, !dbg !3624
  br i1 %71, label %72, label %116, !dbg !3625

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #26, !dbg !3626
  %74 = load i32, i32* %73, align 4, !dbg !3626, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %74, metadata !384, metadata !DIExpression()) #14, !dbg !3627
  %75 = call i32 @close(i32 %62) #14, !dbg !3628
  store i32 %74, i32* %73, align 4, !dbg !3629, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 -1, metadata !380, metadata !DIExpression()) #14, !dbg !3586
  br label %116, !dbg !3630

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #14, !dbg !3631
  call void @llvm.dbg.value(metadata i32 %77, metadata !3557, metadata !DIExpression()), !dbg !3569
  br label %116, !dbg !3632

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3633
  %80 = load i32, i32* %79, align 16, !dbg !3633
  %81 = icmp ult i32 %80, 41, !dbg !3633
  br i1 %81, label %82, label %88, !dbg !3633

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3633
  %84 = load i8*, i8** %83, align 16, !dbg !3633
  %85 = zext i32 %80 to i64, !dbg !3633
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !3633
  %87 = add nuw nsw i32 %80, 8, !dbg !3633
  store i32 %87, i32* %79, align 16, !dbg !3633
  br label %92, !dbg !3633

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3633
  %90 = load i8*, i8** %89, align 8, !dbg !3633
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !3633
  store i8* %91, i8** %89, align 8, !dbg !3633
  br label %92, !dbg !3633

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !3633
  %95 = load i32, i32* %94, align 4, !dbg !3633
  call void @llvm.dbg.value(metadata i32 %95, metadata !3563, metadata !DIExpression()), !dbg !3634
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #14, !dbg !3635
  call void @llvm.dbg.value(metadata i32 %96, metadata !3557, metadata !DIExpression()), !dbg !3569
  br label %116, !dbg !3636

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3637
  %99 = load i32, i32* %98, align 16, !dbg !3637
  %100 = icmp ult i32 %99, 41, !dbg !3637
  br i1 %100, label %101, label %107, !dbg !3637

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3637
  %103 = load i8*, i8** %102, align 16, !dbg !3637
  %104 = zext i32 %99 to i64, !dbg !3637
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !3637
  %106 = add nuw nsw i32 %99, 8, !dbg !3637
  store i32 %106, i32* %98, align 16, !dbg !3637
  br label %111, !dbg !3637

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3637
  %109 = load i8*, i8** %108, align 8, !dbg !3637
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !3637
  store i8* %110, i8** %108, align 8, !dbg !3637
  br label %111, !dbg !3637

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !3637
  %114 = load i8*, i8** %113, align 8, !dbg !3637
  call void @llvm.dbg.value(metadata i8* %114, metadata !3567, metadata !DIExpression()), !dbg !3638
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #14, !dbg !3639
  call void @llvm.dbg.value(metadata i32 %115, metadata !3557, metadata !DIExpression()), !dbg !3569
  br label %116, !dbg !3640

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !3641
  call void @llvm.dbg.value(metadata i32 %117, metadata !3557, metadata !DIExpression()), !dbg !3569
  call void @llvm.va_end(i8* nonnull %4), !dbg !3642
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #14, !dbg !3643
  ret i32 %117, !dbg !3644
}

declare !dbg !368 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3645 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3653, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8* %1, metadata !3654, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %2, metadata !3655, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3656, metadata !DIExpression()), !dbg !3662
  %6 = bitcast i32* %5 to i8*, !dbg !3663
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3663
  %7 = icmp eq i32* %0, null, !dbg !3664
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3666
  call void @llvm.dbg.value(metadata i32* %8, metadata !3653, metadata !DIExpression()), !dbg !3662
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #14, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %9, metadata !3657, metadata !DIExpression()), !dbg !3662
  %10 = icmp ugt i64 %9, -3, !dbg !3668
  %11 = icmp ne i64 %2, 0, !dbg !3669
  %12 = and i1 %11, %10, !dbg !3670
  br i1 %12, label %13, label %18, !dbg !3670

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #14, !dbg !3671
  br i1 %14, label %18, label %15, !dbg !3672

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3673, !tbaa !1522
  call void @llvm.dbg.value(metadata i8 %16, metadata !3659, metadata !DIExpression()), !dbg !3674
  %17 = zext i8 %16 to i32, !dbg !3675
  store i32 %17, i32* %8, align 4, !dbg !3676, !tbaa !1286
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3662
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3677
  ret i64 %19, !dbg !3677
}

; Function Attrs: nounwind
declare !dbg !578 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3678 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3684, metadata !DIExpression()), !dbg !3689
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #14, !dbg !3690
  call void @llvm.dbg.value(metadata i1 undef, metadata !3685, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3691, metadata !DIExpression()), !dbg !3694
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3696
  %4 = load i32, i32* %3, align 8, !dbg !3696, !tbaa !1390
  %5 = and i32 %4, 32, !dbg !3696
  %6 = icmp eq i32 %5, 0, !dbg !3697
  call void @llvm.dbg.value(metadata i1 %6, metadata !3687, metadata !DIExpression()), !dbg !3689
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #14, !dbg !3698
  %8 = icmp ne i32 %7, 0, !dbg !3699
  call void @llvm.dbg.value(metadata i1 %8, metadata !3688, metadata !DIExpression()), !dbg !3689
  br i1 %6, label %9, label %19, !dbg !3700

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3702
  call void @llvm.dbg.value(metadata i1 %10, metadata !3685, metadata !DIExpression()), !dbg !3689
  %11 = xor i1 %8, true, !dbg !3703
  %12 = or i1 %10, %11, !dbg !3703
  %13 = sext i1 %8 to i32, !dbg !3703
  br i1 %12, label %22, label %14, !dbg !3703

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !3704
  %16 = load i32, i32* %15, align 4, !dbg !3704, !tbaa !1286
  %17 = icmp ne i32 %16, 9, !dbg !3705
  %18 = sext i1 %17 to i32, !dbg !3706
  br label %22, !dbg !3706

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3707

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !3709
  store i32 0, i32* %21, align 4, !dbg !3711, !tbaa !1286
  br label %22, !dbg !3709

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3689
  ret i32 %23, !dbg !3712
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #16 !dbg !3713 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %0, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 0, metadata !3718, metadata !DIExpression()), !dbg !3719
  br label %2, !dbg !3720

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3719
  call void @llvm.dbg.value(metadata i8* %3, metadata !3716, metadata !DIExpression()), !dbg !3719
  %4 = load i8, i8* %3, align 1, !dbg !3721, !tbaa !1522
  %5 = icmp eq i8 %4, 47, !dbg !3721
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %6, metadata !3716, metadata !DIExpression()), !dbg !3719
  br i1 %5, label %2, label %7, !dbg !3720, !llvm.loop !3723

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !3724
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !3727
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !3728
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !3719
  call void @llvm.dbg.value(metadata i8 %11, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %10, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %9, metadata !3716, metadata !DIExpression()), !dbg !3719
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !3729

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !3730
  %14 = icmp eq i8 %13, 0, !dbg !3730
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !3734
  %16 = select i1 %14, i8 %11, i8 0, !dbg !3734
  br label %17, !dbg !3734

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !3719
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !3719
  call void @llvm.dbg.value(metadata i8 %19, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %18, metadata !3716, metadata !DIExpression()), !dbg !3719
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %20, metadata !3717, metadata !DIExpression()), !dbg !3719
  %21 = load i8, i8* %20, align 1, !dbg !3724, !tbaa !1522
  br label %7, !dbg !3736, !llvm.loop !3737

22:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %9, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %9, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %9, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %9, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %9, metadata !3716, metadata !DIExpression()), !dbg !3719
  ret i8* %9, !dbg !3739
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #22 !dbg !3740 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3744, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 0, metadata !3746, metadata !DIExpression()), !dbg !3747
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %2, metadata !3745, metadata !DIExpression()), !dbg !3747
  br label %3, !dbg !3750

3:                                                ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !3751
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  %5 = icmp ugt i64 %4, 1, !dbg !3752
  br i1 %5, label %6, label %11, !dbg !3754

6:                                                ; preds = %3
  %7 = add i64 %4, -1, !dbg !3755
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !3755
  %9 = load i8, i8* %8, align 1, !dbg !3755, !tbaa !1522
  %10 = icmp eq i8 %9, 47, !dbg !3755
  br i1 %10, label %3, label %11, !dbg !3756, !llvm.loop !3757

11:                                               ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %4, metadata !3745, metadata !DIExpression()), !dbg !3747
  ret i64 %4, !dbg !3759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3760 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3762, metadata !DIExpression()), !dbg !3767
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3768
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #14, !dbg !3768
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3763, metadata !DIExpression()), !dbg !3769
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #14, !dbg !3770
  %5 = icmp eq i32 %4, 0, !dbg !3770
  br i1 %5, label %6, label %13, !dbg !3772

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3773
  %8 = load i16, i16* %7, align 16, !dbg !3773
  %9 = icmp eq i16 %8, 67, !dbg !3773
  br i1 %9, label %13, label %10, !dbg !3774

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i64 6), !dbg !3775
  %12 = icmp ne i32 %11, 0, !dbg !3776
  br label %13, !dbg !3774

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3767
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #14, !dbg !3777
  ret i1 %14, !dbg !3777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3778 {
  %1 = tail call i8* @nl_langinfo(i32 14) #14, !dbg !3781
  call void @llvm.dbg.value(metadata i8* %1, metadata !3780, metadata !DIExpression()), !dbg !3782
  %2 = icmp eq i8* %1, null, !dbg !3783
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), i8* %1, !dbg !3785
  call void @llvm.dbg.value(metadata i8* %3, metadata !3780, metadata !DIExpression()), !dbg !3782
  %4 = load i8, i8* %3, align 1, !dbg !3786, !tbaa !1522
  %5 = icmp eq i8 %4, 0, !dbg !3790
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i8* %3, !dbg !3791
  call void @llvm.dbg.value(metadata i8* %6, metadata !3780, metadata !DIExpression()), !dbg !3782
  ret i8* %6, !dbg !3792
}

; Function Attrs: nounwind
declare !dbg !1033 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3793 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3797, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i8* %1, metadata !3798, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %2, metadata !3799, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 %0, metadata !3801, metadata !DIExpression()) #14, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %1, metadata !3804, metadata !DIExpression()) #14, !dbg !3810
  call void @llvm.dbg.value(metadata i64 %2, metadata !3805, metadata !DIExpression()) #14, !dbg !3810
  call void @llvm.dbg.value(metadata i32 %0, metadata !3812, metadata !DIExpression()) #14, !dbg !3818
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #14, !dbg !3820
  call void @llvm.dbg.value(metadata i8* %4, metadata !3817, metadata !DIExpression()) #14, !dbg !3818
  call void @llvm.dbg.value(metadata i8* %4, metadata !3806, metadata !DIExpression()) #14, !dbg !3810
  %5 = icmp eq i8* %4, null, !dbg !3821
  br i1 %5, label %6, label %9, !dbg !3822

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3823
  br i1 %7, label %19, label %8, !dbg !3826

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3827, !tbaa !1522
  br label %19, !dbg !3828

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !3829
  call void @llvm.dbg.value(metadata i64 %10, metadata !3807, metadata !DIExpression()) #14, !dbg !3830
  %11 = icmp ult i64 %10, %2, !dbg !3831
  br i1 %11, label %12, label %14, !dbg !3833

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3834
  call void @llvm.dbg.value(metadata i8* %1, metadata !3836, metadata !DIExpression()) #14, !dbg !3841
  call void @llvm.dbg.value(metadata i8* %4, metadata !3839, metadata !DIExpression()) #14, !dbg !3841
  call void @llvm.dbg.value(metadata i64 %13, metadata !3840, metadata !DIExpression()) #14, !dbg !3841
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #14, !dbg !3843
  br label %19, !dbg !3844

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3845
  br i1 %15, label %19, label %16, !dbg !3848

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3849
  call void @llvm.dbg.value(metadata i8* %1, metadata !3836, metadata !DIExpression()) #14, !dbg !3851
  call void @llvm.dbg.value(metadata i8* %4, metadata !3839, metadata !DIExpression()) #14, !dbg !3851
  call void @llvm.dbg.value(metadata i64 %17, metadata !3840, metadata !DIExpression()) #14, !dbg !3851
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #14, !dbg !3853
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3854
  store i8 0, i8* %18, align 1, !dbg !3855, !tbaa !1522
  br label %19, !dbg !3856

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3857
  ret i32 %20, !dbg !3858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3859 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3861, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i32 %0, metadata !3812, metadata !DIExpression()) #14, !dbg !3863
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #14, !dbg !3865
  call void @llvm.dbg.value(metadata i8* %2, metadata !3817, metadata !DIExpression()) #14, !dbg !3863
  ret i8* %2, !dbg !3866
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3867 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3873, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 0, metadata !3874, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 0, metadata !3876, metadata !DIExpression()), !dbg !3877
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !3878
  call void @llvm.dbg.value(metadata i32 %2, metadata !3875, metadata !DIExpression()), !dbg !3877
  %3 = icmp slt i32 %2, 0, !dbg !3879
  br i1 %3, label %4, label %6, !dbg !3881

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3882
  br label %24, !dbg !3883

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #14, !dbg !3884
  %8 = icmp eq i32 %7, 0, !dbg !3884
  br i1 %8, label %13, label %9, !dbg !3886

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !3887
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #14, !dbg !3888
  %12 = icmp eq i64 %11, -1, !dbg !3889
  br i1 %12, label %16, label %13, !dbg !3890

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #14, !dbg !3891
  %15 = icmp eq i32 %14, 0, !dbg !3891
  br i1 %15, label %16, label %18, !dbg !3892

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3874, metadata !DIExpression()), !dbg !3877
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3893
  call void @llvm.dbg.value(metadata i32 %21, metadata !3876, metadata !DIExpression()), !dbg !3877
  br label %24, !dbg !3894

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !3895
  %20 = load i32, i32* %19, align 4, !dbg !3895, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 %20, metadata !3874, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 %20, metadata !3874, metadata !DIExpression()), !dbg !3877
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3893
  call void @llvm.dbg.value(metadata i32 %21, metadata !3876, metadata !DIExpression()), !dbg !3877
  %22 = icmp eq i32 %20, 0, !dbg !3896
  br i1 %22, label %24, label %23, !dbg !3894

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3898, !tbaa !1286
  call void @llvm.dbg.value(metadata i32 -1, metadata !3876, metadata !DIExpression()), !dbg !3877
  br label %24, !dbg !3900

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3877
  ret i32 %25, !dbg !3901
}

; Function Attrs: nofree nounwind
declare !dbg !1042 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1077 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1078 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3902 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3908, metadata !DIExpression()), !dbg !3909
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3910
  br i1 %2, label %6, label %3, !dbg !3912

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #14, !dbg !3913
  %5 = icmp eq i32 %4, 0, !dbg !3913
  br i1 %5, label %6, label %8, !dbg !3914

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3915
  br label %17, !dbg !3916

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3917, metadata !DIExpression()) #14, !dbg !3922
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3924
  %10 = load i32, i32* %9, align 8, !dbg !3924, !tbaa !1390
  %11 = and i32 %10, 256, !dbg !3926
  %12 = icmp eq i32 %11, 0, !dbg !3926
  br i1 %12, label %15, label %13, !dbg !3927

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #14, !dbg !3928
  br label %15, !dbg !3928

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3929
  br label %17, !dbg !3930

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3909
  ret i32 %18, !dbg !3931
}

; Function Attrs: nofree nounwind
declare !dbg !1085 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3932 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3939, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i64 %1, metadata !3940, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 %2, metadata !3941, metadata !DIExpression()), !dbg !3945
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3946
  %5 = load i8*, i8** %4, align 8, !dbg !3946, !tbaa !3947
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3948
  %7 = load i8*, i8** %6, align 8, !dbg !3948, !tbaa !3949
  %8 = icmp eq i8* %5, %7, !dbg !3950
  br i1 %8, label %9, label %28, !dbg !3951

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3952
  %11 = load i8*, i8** %10, align 8, !dbg !3952, !tbaa !3953
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3954
  %13 = load i8*, i8** %12, align 8, !dbg !3954, !tbaa !3955
  %14 = icmp eq i8* %11, %13, !dbg !3956
  br i1 %14, label %15, label %28, !dbg !3957

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3958
  %17 = load i8*, i8** %16, align 8, !dbg !3958, !tbaa !3959
  %18 = icmp eq i8* %17, null, !dbg !3960
  br i1 %18, label %19, label %28, !dbg !3961

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !3962
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #14, !dbg !3963
  call void @llvm.dbg.value(metadata i64 %21, metadata !3942, metadata !DIExpression()), !dbg !3964
  %22 = icmp eq i64 %21, -1, !dbg !3965
  br i1 %22, label %30, label %23, !dbg !3967

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3968
  %25 = load i32, i32* %24, align 8, !dbg !3969, !tbaa !1390
  %26 = and i32 %25, -17, !dbg !3969
  store i32 %26, i32* %24, align 8, !dbg !3969, !tbaa !1390
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3970
  store i64 %21, i64* %27, align 8, !dbg !3971, !tbaa !3972
  br label %30, !dbg !3973

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3974
  br label %30, !dbg !3975

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3945
  ret i32 %31, !dbg !3976
}

; Function Attrs: nofree nounwind
declare !dbg !1161 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #10 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold }

!llvm.dbg.cu = !{!387, !2, !11, !95, !491, !494, !498, !101, !169, !211, !506, !354, !548, !569, !572, !366, !575, !594, !633, !636, !643, !1036, !1039, !1082, !1123}
!llvm.ident = !{!1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164}
!llvm.module.flags = !{!1165, !1166, !1167, !1168, !1169}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !12, line: 46, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !89, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14, !77, !81, !85}
!14 = !DISubprogram(name: "close_stream", scope: !15, file: !15, line: 2, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!15 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!22 = !{!23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !39, !40, !41, !42, !46, !48, !50, !54, !57, !59, !62, !65, !66, !68, !72, !73}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 51, baseType: !18, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 36, flags: DIFlagFwdDecl)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 70, baseType: !19, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 152, baseType: !45)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!49 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 43, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 153, baseType: !45)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !20, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !21, line: 37, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !20, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !21, line: 38, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !20, file: !21, line: 93, baseType: !19, size: 64, offset: 1344)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !20, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 20)
!77 = !DISubprogram(name: "dcgettext", scope: !78, file: !78, line: 51, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!78 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!79 = !DISubroutineType(types: !80)
!80 = !{!25, !6, !6, !18}
!81 = !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 391, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!82 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!83 = !DISubroutineType(types: !84)
!84 = !{!25, !6}
!85 = !DISubprogram(name: "error", scope: !86, file: !86, line: 52, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!86 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!87 = !DISubroutineType(types: !88)
!88 = !{null, !18, !18, !6, null}
!89 = !{!9, !90}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !12, line: 56, type: !92, isLocal: true, isDefinition: true)
!92 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "exit_failure", scope: !95, file: !96, line: 24, type: !98, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !97, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!97 = !{!93}
!98 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "long_options", scope: !101, file: !102, line: 34, type: !164, isLocal: true, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !103, globals: !163, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !{!104, !119}
!104 = !DISubprogram(name: "getopt_long", scope: !105, file: !105, line: 66, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!105 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!106 = !DISubroutineType(types: !107)
!107 = !{!18, !18, !108, !6, !110, !117}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !105, line: 50, size: 256, elements: !113)
!113 = !{!114, !115, !116, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !105, line: 52, baseType: !6, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !112, file: !105, line: 55, baseType: !18, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !112, file: !105, line: 56, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !112, file: !105, line: 57, baseType: !18, size: 32, offset: 192)
!119 = !DISubprogram(name: "version_etc_va", scope: !120, file: !120, line: 63, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!120 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !6, !6, !6, !155}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !124, file: !21, line: 51, baseType: !18, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !124, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !124, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !124, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !124, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !124, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !124, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !124, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !124, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !124, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !124, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !124, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !124, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !124, file: !21, line: 70, baseType: !123, size: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !124, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !124, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !124, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !124, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !124, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !124, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !124, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !124, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !124, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !124, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !124, file: !21, line: 93, baseType: !123, size: 64, offset: 1344)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !124, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !124, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !124, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !124, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !102, line: 72, size: 192, elements: !157)
!157 = !{!158, !160, !161, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !156, file: !102, line: 72, baseType: !159, size: 32)
!159 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !156, file: !102, line: 72, baseType: !159, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !156, file: !102, line: 72, baseType: !67, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !156, file: !102, line: 72, baseType: !67, size: 64, offset: 128)
!163 = !{!99}
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 768, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 3)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "program_name", scope: !169, file: !170, line: 33, type: !6, isLocal: false, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, globals: !208, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !{!67, !172, !25}
!172 = !DISubprogram(name: "fputs", scope: !173, file: !173, line: 626, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!173 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!174 = !DISubroutineType(types: !175)
!175 = !{!18, !6, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !177, file: !21, line: 51, baseType: !18, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !177, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !177, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !177, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !177, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !177, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !177, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !177, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !177, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !177, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !177, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !177, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !177, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !177, file: !21, line: 70, baseType: !176, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !177, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !177, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !177, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !177, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !177, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !177, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !177, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !177, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !177, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !177, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !177, file: !21, line: 93, baseType: !176, size: 64, offset: 1344)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !177, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !177, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !177, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !177, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!208 = !{!167}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !211, file: !212, line: 85, type: !348, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !213, retainedTypes: !247, globals: !321, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = !{!214, !227, !232}
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !82, line: 32, baseType: !159, size: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!216 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!217 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!219 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!220 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!221 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!222 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!223 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!224 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!225 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!226 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !82, line: 242, baseType: !159, size: 32, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!230 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!231 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 46, baseType: !159, size: 32, elements: !234)
!233 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!235 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!236 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!237 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!238 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!239 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!240 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!241 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!242 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!243 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!244 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!245 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!246 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!247 = !{!248, !254, !270, !274, !18, !47, !277, !69, !294, !298, !77, !304, !308, !25, !312, !315, !318}
!248 = !DISubprogram(name: "xmemdup", scope: !249, file: !249, line: 62, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!249 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!250 = !DISubroutineType(types: !251)
!251 = !{!67, !252, !71}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!254 = !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 342, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!255 = !DISubroutineType(types: !256)
!256 = !{!25, !6, !71, !257, !258}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !212, line: 65, size: 448, elements: !261)
!261 = !{!262, !263, !264, !268, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !260, file: !212, line: 68, baseType: !214, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !212, line: 71, baseType: !18, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !260, file: !212, line: 75, baseType: !265, size: 256, offset: 64)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 8)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !260, file: !212, line: 78, baseType: !6, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !260, file: !212, line: 81, baseType: !6, size: 64, offset: 384)
!270 = !DISubprogram(name: "free", scope: !271, file: !271, line: 565, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!271 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!272 = !DISubroutineType(types: !273)
!273 = !{null, !67}
!274 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 408, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!275 = !DISubroutineType(types: !276)
!276 = !{!25, !18, !6, !6, !6, !71}
!277 = !DISubprogram(name: "rpl_mbrtowc", scope: !278, file: !278, line: 717, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!278 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!279 = !DISubroutineType(types: !280)
!280 = !{!71, !117, !6, !71, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !284)
!283 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !282, file: !283, line: 15, baseType: !18, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !282, file: !283, line: 20, baseType: !287, size: 32, offset: 32)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !283, line: 16, size: 32, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !287, file: !283, line: 18, baseType: !159, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !287, file: !283, line: 19, baseType: !291, size: 32)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 4)
!294 = !DISubprogram(name: "iswprint", scope: !295, file: !295, line: 120, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!295 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!296 = !DISubroutineType(types: !297)
!297 = !{!18, !159}
!298 = !DISubprogram(name: "mbsinit", scope: !299, file: !299, line: 292, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!299 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!300 = !DISubroutineType(types: !301)
!301 = !{!18, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!304 = !DISubprogram(name: "locale_charset", scope: !305, file: !305, line: 35, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!305 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!306 = !DISubroutineType(types: !307)
!307 = !{!6}
!308 = !DISubprogram(name: "c_strcasecmp", scope: !309, file: !309, line: 42, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!309 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!310 = !DISubroutineType(types: !311)
!311 = !{!18, !6, !6}
!312 = !DISubprogram(name: "xmalloc", scope: !249, file: !249, line: 53, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!313 = !DISubroutineType(types: !314)
!314 = !{!67, !71}
!315 = !DISubprogram(name: "xalloc_die", scope: !249, file: !249, line: 51, type: !316, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!316 = !DISubroutineType(types: !317)
!317 = !{null}
!318 = !DISubprogram(name: "xrealloc", scope: !249, file: !249, line: 59, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!319 = !DISubroutineType(types: !320)
!320 = !{!67, !67, !71}
!321 = !{!209, !322, !328, !330, !332, !337, !344, !346}
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !211, file: !212, line: 101, type: !324, isLocal: false, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 320, elements: !326)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!326 = !{!327}
!327 = !DISubrange(count: 10)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !211, file: !212, line: 1052, type: !260, isLocal: false, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !211, file: !212, line: 116, type: !260, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "slot0", scope: !211, file: !212, line: 842, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 256)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "slotvec", scope: !211, file: !212, line: 845, type: !339, isLocal: true, isDefinition: true)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !212, line: 834, size: 128, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !212, line: 836, baseType: !69, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !340, file: !212, line: 837, baseType: !25, size: 64, offset: 64)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "nslots", scope: !211, file: !212, line: 843, type: !18, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "slotvec0", scope: !211, file: !212, line: 844, type: !340, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 704, elements: !350)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!350 = !{!351}
!351 = !DISubrange(count: 11)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !354, file: !355, line: 26, type: !357, isLocal: false, isDefinition: true)
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !356, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!356 = !{!352}
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 47)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !362, file: !363, line: 507, type: !18, isLocal: true, isDefinition: true)
!362 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !363, file: !363, line: 488, type: !364, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !377)
!363 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!364 = !DISubroutineType(types: !365)
!365 = !{!18, !18, !18}
!366 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !367, globals: !376, splitDebugInlining: false, nameTableKind: None)
!367 = !{!368, !372}
!368 = !DISubprogram(name: "fcntl", scope: !369, file: !369, line: 176, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!369 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!370 = !DISubroutineType(types: !371)
!371 = !{!18, !18, !18, null}
!372 = !DISubprogram(name: "close", scope: !373, file: !373, line: 353, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!373 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!374 = !DISubroutineType(types: !375)
!375 = !{!18, !18}
!376 = !{!360}
!377 = !{!378, !379, !380, !381, !384}
!378 = !DILocalVariable(name: "fd", arg: 1, scope: !362, file: !363, line: 488, type: !18)
!379 = !DILocalVariable(name: "target", arg: 2, scope: !362, file: !363, line: 488, type: !18)
!380 = !DILocalVariable(name: "result", scope: !362, file: !363, line: 490, type: !18)
!381 = !DILocalVariable(name: "flags", scope: !382, file: !363, line: 531, type: !18)
!382 = distinct !DILexicalBlock(scope: !383, file: !363, line: 530, column: 5)
!383 = distinct !DILexicalBlock(scope: !362, file: !363, line: 529, column: 7)
!384 = !DILocalVariable(name: "saved_errno", scope: !385, file: !363, line: 534, type: !18)
!385 = distinct !DILexicalBlock(scope: !386, file: !363, line: 533, column: 9)
!386 = distinct !DILexicalBlock(scope: !382, file: !363, line: 532, column: 11)
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !389, retainedTypes: !400, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "src/nohup.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!389 = !{!390, !393, !214}
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !388, line: 37, baseType: !159, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIEnumerator(name: "POSIX_NOHUP_FAILURE", value: 127, isUnsigned: true)
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !394, line: 87, baseType: !159, size: 32, elements: !395)
!394 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!395 = !{!396, !397, !398, !399}
!396 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!397 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!398 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!399 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!400 = !{!77, !401, !436, !440, !444, !447, !448, !449, !6, !67, !453, !85, !461, !462, !466, !470, !473, !477, !270, !480, !482, !372, !483, !485, !488}
!401 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!402 = !DISubroutineType(types: !403)
!403 = !{!18, !6, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !405, file: !21, line: 51, baseType: !18, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !405, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !405, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !405, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !405, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !405, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !405, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !405, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !405, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !405, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !405, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !405, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !405, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !405, file: !21, line: 70, baseType: !404, size: 64, offset: 832)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !405, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !405, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !405, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !405, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !405, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !405, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !405, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !405, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !405, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !405, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !405, file: !21, line: 93, baseType: !404, size: 64, offset: 1344)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !405, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !405, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !405, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !405, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!436 = !DISubprogram(name: "set_program_name", scope: !437, file: !437, line: 37, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!437 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!438 = !DISubroutineType(types: !439)
!439 = !{null, !6}
!440 = !DISubprogram(name: "setlocale", scope: !441, file: !441, line: 122, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!441 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!442 = !DISubroutineType(types: !443)
!443 = !{!25, !18, !6}
!444 = !DISubprogram(name: "bindtextdomain", scope: !78, file: !78, line: 86, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!445 = !DISubroutineType(types: !446)
!446 = !{!25, !6, !6}
!447 = !DISubprogram(name: "textdomain", scope: !78, file: !78, line: 82, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!448 = !DISubprogram(name: "getenv", scope: !271, file: !271, line: 634, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!449 = !DISubprogram(name: "atexit", scope: !271, file: !271, line: 595, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!450 = !DISubroutineType(types: !451)
!451 = !{!18, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!453 = !DISubprogram(name: "parse_gnu_standard_options_only", scope: !454, file: !454, line: 33, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!454 = !DIFile(filename: "./lib/long-options.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!455 = !DISubroutineType(types: !456)
!456 = !{null, !18, !457, !6, !6, !6, !92, !458, null}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !18}
!461 = !DISubprogram(name: "isatty", scope: !373, file: !373, line: 779, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!462 = !DISubprogram(name: "fd_reopen", scope: !463, file: !463, line: 22, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!463 = !DIFile(filename: "./lib/fd-reopen.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!464 = !DISubroutineType(types: !465)
!465 = !{!18, !18, !6, !18, !159}
!466 = !DISubprogram(name: "umask", scope: !467, file: !467, line: 308, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!467 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!468 = !DISubroutineType(types: !469)
!469 = !{!159, !159}
!470 = !DISubprogram(name: "open", scope: !369, file: !369, line: 196, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!471 = !DISubroutineType(types: !472)
!472 = !{!18, !6, !18, null}
!473 = !DISubprogram(name: "file_name_concat", scope: !474, file: !474, line: 22, type: !475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!474 = !DIFile(filename: "./lib/filenamecat.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!475 = !DISubroutineType(types: !476)
!476 = !{!25, !6, !6, !457}
!477 = !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 377, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!478 = !DISubroutineType(types: !479)
!479 = !{!25, !214, !6}
!480 = !DISubprogram(name: "rpl_fcntl", scope: !481, file: !481, line: 588, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!481 = !DIFile(filename: "./lib/fcntl.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!482 = !DISubprogram(name: "dup2", scope: !373, file: !373, line: 534, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !484, line: 72, baseType: !458)
!484 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!485 = !DISubprogram(name: "signal", scope: !484, file: !484, line: 88, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!486 = !DISubroutineType(types: !487)
!487 = !{!458, !18, !458}
!488 = !DISubprogram(name: "execvp", scope: !373, file: !373, line: 578, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!489 = !DISubroutineType(types: !490)
!490 = !{!18, !6, !108}
!491 = distinct !DICompileUnit(language: DW_LANG_C99, file: !492, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !493, splitDebugInlining: false, nameTableKind: None)
!492 = !DIFile(filename: "lib/fd-reopen.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!493 = !{!470, !482, !372}
!494 = distinct !DICompileUnit(language: DW_LANG_C99, file: !495, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !496, splitDebugInlining: false, nameTableKind: None)
!495 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!496 = !{!497, !67, !315}
!497 = !DISubprogram(name: "mfile_name_concat", scope: !474, file: !474, line: 26, type: !475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !500, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!500 = !{!501, !503, !67}
!501 = !DISubprogram(name: "last_component", scope: !502, file: !502, line: 46, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!502 = !DIFile(filename: "./lib/dirname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!503 = !DISubprogram(name: "base_len", scope: !502, file: !502, line: 44, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!504 = !DISubroutineType(types: !505)
!505 = !{!71, !6}
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !508, retainedTypes: !512, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!508 = !{!509}
!509 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !507, line: 40, baseType: !159, size: 32, elements: !510)
!510 = !{!511}
!511 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!512 = !{!77, !513, !67}
!513 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!514 = !DISubroutineType(types: !515)
!515 = !{!18, !6, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !517, file: !21, line: 51, baseType: !18, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !517, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !517, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !517, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !517, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !517, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !517, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !517, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !517, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !517, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !517, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !517, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !517, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !517, file: !21, line: 70, baseType: !516, size: 64, offset: 832)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !517, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !517, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !517, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !517, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !517, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !517, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !517, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !517, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !517, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !517, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !517, file: !21, line: 93, baseType: !516, size: 64, offset: 1344)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !517, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !517, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !517, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !517, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !550, retainedTypes: !563, splitDebugInlining: false, nameTableKind: None)
!549 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!550 = !{!551}
!551 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !552, file: !249, line: 186, baseType: !159, size: 32, elements: !561)
!552 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !553, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !556)
!553 = !DISubroutineType(types: !554)
!554 = !{!67, !67, !555, !69}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!556 = !{!557, !558, !559, !560}
!557 = !DILocalVariable(name: "p", arg: 1, scope: !552, file: !249, line: 174, type: !67)
!558 = !DILocalVariable(name: "pn", arg: 2, scope: !552, file: !249, line: 174, type: !555)
!559 = !DILocalVariable(name: "s", arg: 3, scope: !552, file: !249, line: 174, type: !69)
!560 = !DILocalVariable(name: "n", scope: !552, file: !249, line: 176, type: !69)
!561 = !{!562}
!562 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!563 = !{!69, !315, !312, !318, !25, !270, !67, !564, !567}
!564 = !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 57, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!565 = !DISubroutineType(types: !566)
!566 = !{!67, !71, !71}
!567 = !DISubprogram(name: "rpl_calloc", scope: !568, file: !568, line: 688, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!568 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !571, splitDebugInlining: false, nameTableKind: None)
!570 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!571 = !{!77, !85}
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !574, splitDebugInlining: false, nameTableKind: None)
!573 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!574 = !{!67}
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !577, splitDebugInlining: false, nameTableKind: None)
!576 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!577 = !{!578, !69, !590}
!578 = !DISubprogram(name: "mbrtowc", scope: !299, file: !299, line: 296, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!579 = !DISubroutineType(types: !580)
!580 = !{!71, !117, !6, !71, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !582, file: !283, line: 15, baseType: !18, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !582, file: !283, line: 20, baseType: !586, size: 32, offset: 32)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !283, line: 16, size: 32, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !586, file: !283, line: 18, baseType: !159, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !586, file: !283, line: 19, baseType: !291, size: 32)
!590 = !DISubprogram(name: "hard_locale", scope: !591, file: !591, line: 26, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!591 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!592 = !DISubroutineType(types: !593)
!593 = !{!92, !18}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !596, splitDebugInlining: false, nameTableKind: None)
!595 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!596 = !{!597}
!597 = !DISubprogram(name: "rpl_fclose", scope: !598, file: !598, line: 672, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!598 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!599 = !DISubroutineType(types: !600)
!600 = !{!18, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !602, file: !21, line: 51, baseType: !18, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !602, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !602, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !602, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !602, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !602, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !602, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !602, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !602, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !602, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !602, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !602, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !602, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !602, file: !21, line: 70, baseType: !601, size: 64, offset: 832)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !602, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !602, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !602, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !602, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !602, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !602, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !602, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !602, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !602, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !602, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !602, file: !21, line: 93, baseType: !601, size: 64, offset: 1344)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !602, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !602, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !602, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !602, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !635, splitDebugInlining: false, nameTableKind: None)
!634 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!635 = !{!25}
!636 = distinct !DICompileUnit(language: DW_LANG_C99, file: !637, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !638, splitDebugInlining: false, nameTableKind: None)
!637 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!638 = !{!639}
!639 = !DISubprogram(name: "setlocale_null_r", scope: !640, file: !640, line: 64, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!640 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!641 = !DISubroutineType(types: !642)
!642 = !{!18, !18, !25, !71}
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !645, retainedTypes: !1032, splitDebugInlining: false, nameTableKind: None)
!644 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!645 = !{!646}
!646 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !647, line: 41, baseType: !159, size: 32, elements: !648)
!647 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031}
!649 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!650 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!651 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!652 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!653 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!654 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!655 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!656 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!657 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!658 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!659 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!660 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!661 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!662 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!663 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!664 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!665 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!666 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!667 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!668 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!669 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!670 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!671 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!672 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!673 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!674 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!675 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!676 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!677 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!678 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!679 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!680 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!681 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!682 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!683 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!684 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!685 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!686 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!687 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!688 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!689 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!690 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!691 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!692 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!693 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!694 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!695 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!696 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!697 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!698 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!757 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!760 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!761 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!762 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!763 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!764 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!765 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!766 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!767 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!768 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!769 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!770 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!771 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!844 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!917 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!918 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!919 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!920 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!921 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!922 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!923 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!924 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!925 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!926 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!927 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!928 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!929 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!930 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!931 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!933 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!934 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!935 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!936 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!937 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!938 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!964 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!965 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!966 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!967 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!968 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!973 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!974 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!975 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!976 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1032 = !{!1033, !67}
!1033 = !DISubprogram(name: "nl_langinfo", scope: !647, file: !647, line: 661, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!25, !18}
!1036 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1037, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1038, splitDebugInlining: false, nameTableKind: None)
!1037 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1038 = !{!67, !440}
!1039 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1040, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1041, splitDebugInlining: false, nameTableKind: None)
!1040 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1041 = !{!1042, !1077, !1078, !1081}
!1042 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!18, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1046, file: !21, line: 51, baseType: !18, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1046, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1046, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1046, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1046, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1046, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1046, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1046, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1046, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1046, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1046, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1046, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1046, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1046, file: !21, line: 70, baseType: !1045, size: 64, offset: 832)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1046, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1046, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1046, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1046, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1046, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1046, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1046, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1046, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1046, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1046, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1046, file: !21, line: 93, baseType: !1045, size: 64, offset: 1344)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1046, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1046, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1046, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1046, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1077 = !DISubprogram(name: "fclose", scope: !173, file: !173, line: 213, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1078 = !DISubprogram(name: "lseek", scope: !373, file: !373, line: 334, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!45, !18, !45, !18}
!1081 = !DISubprogram(name: "rpl_fflush", scope: !598, file: !598, line: 718, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1082 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1083, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1084, splitDebugInlining: false, nameTableKind: None)
!1083 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1084 = !{!67, !1085, !1120}
!1085 = !DISubprogram(name: "fflush", scope: !173, file: !173, line: 218, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!18, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1089, file: !21, line: 51, baseType: !18, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1089, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1089, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1089, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1089, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1089, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1089, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1089, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1089, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1089, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1089, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1089, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1089, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1089, file: !21, line: 70, baseType: !1088, size: 64, offset: 832)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1089, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1089, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1089, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1089, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1089, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1089, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1089, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1089, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1089, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1089, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1089, file: !21, line: 93, baseType: !1088, size: 64, offset: 1344)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1089, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1089, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1089, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1089, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1120 = !DISubprogram(name: "rpl_fseeko", scope: !598, file: !598, line: 1034, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!18, !1088, !45, !18}
!1123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1124, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1125, splitDebugInlining: false, nameTableKind: None)
!1124 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1125 = !{!67, !1126, !1078, !1161}
!1126 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!18, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1130, file: !21, line: 51, baseType: !18, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1130, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1130, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1130, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1130, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1130, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1130, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1130, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1130, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1130, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1130, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1130, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1130, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1130, file: !21, line: 70, baseType: !1129, size: 64, offset: 832)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1130, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1130, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1130, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1130, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1130, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1130, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1130, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1130, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1130, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1130, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1130, file: !21, line: 93, baseType: !1129, size: 64, offset: 1344)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1130, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1130, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1130, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1130, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1161 = !DISubprogram(name: "fseeko", scope: !173, file: !173, line: 707, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!18, !1129, !45, !18}
!1164 = !{!"clang version 10.0.0 "}
!1165 = !{i32 7, !"Dwarf Version", i32 4}
!1166 = !{i32 2, !"Debug Info Version", i32 3}
!1167 = !{i32 1, !"wchar_size", i32 4}
!1168 = !{i32 7, !"PIC Level", i32 2}
!1169 = !{i32 7, !"PIE Level", i32 2}
!1170 = distinct !DISubprogram(name: "usage", scope: !388, file: !388, line: 44, type: !459, scopeLine: 45, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1171)
!1171 = !{!1172}
!1172 = !DILocalVariable(name: "status", arg: 1, scope: !1170, file: !388, line: 44, type: !18)
!1173 = !DILocalVariable(name: "infomap", scope: !1174, file: !394, line: 636, type: !1186)
!1174 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !394, file: !394, line: 634, type: !438, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1175)
!1175 = !{!1176, !1173, !1177, !1178, !1185}
!1176 = !DILocalVariable(name: "program", arg: 1, scope: !1174, file: !394, line: 634, type: !6)
!1177 = !DILocalVariable(name: "node", scope: !1174, file: !394, line: 646, type: !6)
!1178 = !DILocalVariable(name: "map_prog", scope: !1174, file: !394, line: 647, type: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1174, file: !394, line: 636, size: 128, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1181, file: !394, line: 636, baseType: !6, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1181, file: !394, line: 636, baseType: !6, size: 64, offset: 64)
!1185 = !DILocalVariable(name: "lc_messages", scope: !1174, file: !394, line: 659, type: !6)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, size: 896, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 7)
!1189 = !DILocation(line: 636, column: 67, scope: !1174, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 70, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !388, line: 49, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1170, file: !388, line: 46, column: 7)
!1193 = !DILocation(line: 0, scope: !1170)
!1194 = !DILocation(line: 46, column: 14, scope: !1192)
!1195 = !DILocation(line: 46, column: 7, scope: !1170)
!1196 = !DILocation(line: 47, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !388, line: 47, column: 5)
!1198 = !{!1199, !1199, i64 0}
!1199 = !{!"any pointer", !1200, i64 0}
!1200 = !{!"omnipotent char", !1201, i64 0}
!1201 = !{!"Simple C/C++ TBAA"}
!1202 = !DILocation(line: 50, column: 7, scope: !1191)
!1203 = !DILocation(line: 56, column: 7, scope: !1191)
!1204 = !DILocation(line: 60, column: 7, scope: !1191)
!1205 = !DILocation(line: 61, column: 7, scope: !1191)
!1206 = !DILocation(line: 62, column: 7, scope: !1191)
!1207 = !DILocation(line: 69, column: 7, scope: !1191)
!1208 = !DILocation(line: 0, scope: !1174, inlinedAt: !1190)
!1209 = !DILocation(line: 636, column: 3, scope: !1174, inlinedAt: !1190)
!1210 = !DILocation(line: 647, column: 36, scope: !1174, inlinedAt: !1190)
!1211 = !DILocation(line: 649, column: 3, scope: !1174, inlinedAt: !1190)
!1212 = !DILocation(line: 649, column: 33, scope: !1174, inlinedAt: !1190)
!1213 = !DILocation(line: 650, column: 13, scope: !1174, inlinedAt: !1190)
!1214 = !DILocation(line: 649, column: 20, scope: !1174, inlinedAt: !1190)
!1215 = !{!1216, !1199, i64 0}
!1216 = !{!"infomap", !1199, i64 0, !1199, i64 8}
!1217 = !DILocation(line: 649, column: 10, scope: !1174, inlinedAt: !1190)
!1218 = !DILocation(line: 649, column: 28, scope: !1174, inlinedAt: !1190)
!1219 = distinct !{!1219, !1211, !1213}
!1220 = !DILocation(line: 652, column: 17, scope: !1221, inlinedAt: !1190)
!1221 = distinct !DILexicalBlock(scope: !1174, file: !394, line: 652, column: 7)
!1222 = !{!1216, !1199, i64 8}
!1223 = !DILocation(line: 652, column: 7, scope: !1221, inlinedAt: !1190)
!1224 = !DILocation(line: 652, column: 7, scope: !1174, inlinedAt: !1190)
!1225 = !DILocation(line: 655, column: 3, scope: !1174, inlinedAt: !1190)
!1226 = !DILocation(line: 659, column: 29, scope: !1174, inlinedAt: !1190)
!1227 = !DILocation(line: 660, column: 7, scope: !1228, inlinedAt: !1190)
!1228 = distinct !DILexicalBlock(scope: !1174, file: !394, line: 660, column: 7)
!1229 = !DILocation(line: 660, column: 19, scope: !1228, inlinedAt: !1190)
!1230 = !DILocation(line: 660, column: 22, scope: !1228, inlinedAt: !1190)
!1231 = !DILocation(line: 660, column: 7, scope: !1174, inlinedAt: !1190)
!1232 = !DILocation(line: 666, column: 7, scope: !1233, inlinedAt: !1190)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !394, line: 661, column: 5)
!1234 = !DILocation(line: 668, column: 5, scope: !1233, inlinedAt: !1190)
!1235 = !DILocation(line: 669, column: 3, scope: !1174, inlinedAt: !1190)
!1236 = !DILocation(line: 671, column: 3, scope: !1174, inlinedAt: !1190)
!1237 = !DILocation(line: 673, column: 1, scope: !1174, inlinedAt: !1190)
!1238 = !DILocation(line: 72, column: 3, scope: !1170)
!1239 = distinct !DISubprogram(name: "main", scope: !388, file: !388, line: 76, type: !1240, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!18, !18, !457}
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1255, !1256, !1257, !1261, !1262, !1265, !1266, !1269, !1270, !1271}
!1243 = !DILocalVariable(name: "argc", arg: 1, scope: !1239, file: !388, line: 76, type: !18)
!1244 = !DILocalVariable(name: "argv", arg: 2, scope: !1239, file: !388, line: 76, type: !457)
!1245 = !DILocalVariable(name: "out_fd", scope: !1239, file: !388, line: 78, type: !18)
!1246 = !DILocalVariable(name: "saved_stderr_fd", scope: !1239, file: !388, line: 79, type: !18)
!1247 = !DILocalVariable(name: "ignoring_input", scope: !1239, file: !388, line: 80, type: !92)
!1248 = !DILocalVariable(name: "redirecting_stdout", scope: !1239, file: !388, line: 81, type: !92)
!1249 = !DILocalVariable(name: "stdout_is_closed", scope: !1239, file: !388, line: 82, type: !92)
!1250 = !DILocalVariable(name: "redirecting_stderr", scope: !1239, file: !388, line: 83, type: !92)
!1251 = !DILocalVariable(name: "exit_internal_failure", scope: !1239, file: !388, line: 84, type: !18)
!1252 = !DILocalVariable(name: "in_home", scope: !1253, file: !388, line: 134, type: !25)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !388, line: 133, column: 5)
!1254 = distinct !DILexicalBlock(scope: !1239, file: !388, line: 132, column: 7)
!1255 = !DILocalVariable(name: "file", scope: !1253, file: !388, line: 135, type: !6)
!1256 = !DILocalVariable(name: "flags", scope: !1253, file: !388, line: 136, type: !18)
!1257 = !DILocalVariable(name: "mode", scope: !1253, file: !388, line: 137, type: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1259, line: 69, baseType: !1260)
!1259 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !44, line: 150, baseType: !159)
!1261 = !DILocalVariable(name: "umask_value", scope: !1253, file: !388, line: 138, type: !1258)
!1262 = !DILocalVariable(name: "saved_errno", scope: !1263, file: !388, line: 145, type: !18)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !388, line: 144, column: 9)
!1264 = distinct !DILexicalBlock(scope: !1253, file: !388, line: 143, column: 11)
!1265 = !DILocalVariable(name: "home", scope: !1263, file: !388, line: 146, type: !6)
!1266 = !DILocalVariable(name: "saved_errno2", scope: !1267, file: !388, line: 156, type: !18)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !388, line: 155, column: 13)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !388, line: 154, column: 15)
!1269 = !DILocalVariable(name: "cmd", scope: !1239, file: !388, line: 210, type: !457)
!1270 = !DILocalVariable(name: "exit_status", scope: !1239, file: !388, line: 212, type: !18)
!1271 = !DILocalVariable(name: "saved_errno", scope: !1239, file: !388, line: 213, type: !18)
!1272 = !DILocation(line: 0, scope: !1239)
!1273 = !DILocation(line: 87, column: 21, scope: !1239)
!1274 = !DILocation(line: 87, column: 3, scope: !1239)
!1275 = !DILocation(line: 88, column: 3, scope: !1239)
!1276 = !DILocation(line: 89, column: 3, scope: !1239)
!1277 = !DILocation(line: 90, column: 3, scope: !1239)
!1278 = !DILocation(line: 96, column: 28, scope: !1239)
!1279 = !DILocalVariable(name: "status", arg: 1, scope: !1280, file: !394, line: 99, type: !18)
!1280 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !394, file: !394, line: 99, type: !459, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1281)
!1281 = !{!1279}
!1282 = !DILocation(line: 0, scope: !1280, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 98, column: 3, scope: !1239)
!1284 = !DILocation(line: 102, column: 18, scope: !1285, inlinedAt: !1283)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !394, line: 101, column: 7)
!1286 = !{!1287, !1287, i64 0}
!1287 = !{!"int", !1200, i64 0}
!1288 = !DILocation(line: 99, column: 3, scope: !1239)
!1289 = !DILocation(line: 102, column: 36, scope: !1239)
!1290 = !DILocation(line: 101, column: 3, scope: !1239)
!1291 = !DILocation(line: 105, column: 15, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1239, file: !388, line: 105, column: 7)
!1293 = !DILocation(line: 105, column: 12, scope: !1292)
!1294 = !DILocation(line: 105, column: 7, scope: !1239)
!1295 = !DILocation(line: 107, column: 20, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !388, line: 106, column: 5)
!1297 = !DILocation(line: 107, column: 7, scope: !1296)
!1298 = !DILocation(line: 108, column: 7, scope: !1296)
!1299 = !DILocation(line: 111, column: 20, scope: !1239)
!1300 = !DILocation(line: 112, column: 24, scope: !1239)
!1301 = !DILocation(line: 113, column: 43, scope: !1239)
!1302 = !DILocation(line: 113, column: 46, scope: !1239)
!1303 = !DILocation(line: 113, column: 52, scope: !1239)
!1304 = !DILocation(line: 114, column: 24, scope: !1239)
!1305 = !DILocation(line: 119, column: 7, scope: !1239)
!1306 = !DILocation(line: 121, column: 11, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !388, line: 121, column: 11)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !388, line: 120, column: 5)
!1309 = distinct !DILexicalBlock(scope: !1239, file: !388, line: 119, column: 7)
!1310 = !DILocation(line: 121, column: 62, scope: !1307)
!1311 = !DILocation(line: 121, column: 11, scope: !1308)
!1312 = !DILocation(line: 122, column: 39, scope: !1307)
!1313 = !DILocation(line: 123, column: 16, scope: !1307)
!1314 = !DILocation(line: 122, column: 9, scope: !1307)
!1315 = !DILocation(line: 124, column: 31, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1308, file: !388, line: 124, column: 11)
!1317 = !DILocation(line: 125, column: 22, scope: !1316)
!1318 = !DILocation(line: 125, column: 9, scope: !1316)
!1319 = !DILocation(line: 132, column: 26, scope: !1254)
!1320 = !DILocation(line: 132, column: 49, scope: !1254)
!1321 = !DILocation(line: 0, scope: !1253)
!1322 = !DILocation(line: 138, column: 28, scope: !1253)
!1323 = !DILocation(line: 140, column: 19, scope: !1253)
!1324 = !DILocation(line: 139, column: 17, scope: !1253)
!1325 = !DILocation(line: 141, column: 19, scope: !1253)
!1326 = !DILocation(line: 143, column: 18, scope: !1264)
!1327 = !DILocation(line: 143, column: 11, scope: !1253)
!1328 = !DILocation(line: 145, column: 29, scope: !1263)
!1329 = !DILocation(line: 0, scope: !1263)
!1330 = !DILocation(line: 146, column: 30, scope: !1263)
!1331 = !DILocation(line: 147, column: 15, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1263, file: !388, line: 147, column: 15)
!1333 = !DILocation(line: 147, column: 15, scope: !1263)
!1334 = !DILocation(line: 149, column: 25, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !388, line: 148, column: 13)
!1336 = !DILocation(line: 150, column: 25, scope: !1335)
!1337 = !DILocation(line: 151, column: 27, scope: !1335)
!1338 = !DILocation(line: 152, column: 27, scope: !1335)
!1339 = !DILocation(line: 154, column: 22, scope: !1268)
!1340 = !DILocation(line: 154, column: 15, scope: !1263)
!1341 = !DILocation(line: 156, column: 34, scope: !1267)
!1342 = !DILocation(line: 0, scope: !1267)
!1343 = !DILocation(line: 157, column: 38, scope: !1267)
!1344 = !DILocation(line: 157, column: 62, scope: !1267)
!1345 = !DILocation(line: 157, column: 15, scope: !1267)
!1346 = !DILocation(line: 158, column: 19, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1267, file: !388, line: 158, column: 19)
!1348 = !DILocation(line: 158, column: 19, scope: !1267)
!1349 = !DILocation(line: 159, column: 41, scope: !1347)
!1350 = !DILocation(line: 160, column: 24, scope: !1347)
!1351 = !DILocation(line: 159, column: 17, scope: !1347)
!1352 = !DILocation(line: 135, column: 19, scope: !1253)
!1353 = !DILocation(line: 166, column: 7, scope: !1253)
!1354 = !DILocation(line: 168, column: 14, scope: !1253)
!1355 = !DILocation(line: 171, column: 14, scope: !1253)
!1356 = !DILocation(line: 167, column: 7, scope: !1253)
!1357 = !DILocation(line: 172, column: 7, scope: !1253)
!1358 = !DILocation(line: 176, column: 7, scope: !1239)
!1359 = !DILocation(line: 182, column: 25, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !388, line: 177, column: 5)
!1361 = distinct !DILexicalBlock(scope: !1239, file: !388, line: 176, column: 7)
!1362 = !DILocation(line: 185, column: 11, scope: !1360)
!1363 = !DILocation(line: 187, column: 16, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !388, line: 185, column: 11)
!1365 = !DILocation(line: 186, column: 9, scope: !1364)
!1366 = !DILocation(line: 191, column: 11, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !388, line: 191, column: 11)
!1368 = !DILocation(line: 191, column: 40, scope: !1367)
!1369 = !DILocation(line: 191, column: 11, scope: !1360)
!1370 = !DILocation(line: 192, column: 39, scope: !1367)
!1371 = !DILocation(line: 193, column: 16, scope: !1367)
!1372 = !DILocation(line: 192, column: 9, scope: !1367)
!1373 = !DILocation(line: 195, column: 11, scope: !1360)
!1374 = !DILocation(line: 196, column: 9, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1360, file: !388, line: 195, column: 11)
!1376 = !DILocation(line: 205, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1239, file: !388, line: 205, column: 7)
!1378 = !DILocalVariable(name: "__stream", arg: 1, scope: !1379, file: !1380, line: 135, type: !1383)
!1379 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1380, file: !1380, line: 135, type: !1381, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1386)
!1380 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!18, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1385, line: 7, baseType: !405)
!1385 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1386 = !{!1378}
!1387 = !DILocation(line: 0, scope: !1379, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 205, column: 7, scope: !1377)
!1389 = !DILocation(line: 137, column: 10, scope: !1379, inlinedAt: !1388)
!1390 = !{!1391, !1287, i64 0}
!1391 = !{!"_IO_FILE", !1287, i64 0, !1199, i64 8, !1199, i64 16, !1199, i64 24, !1199, i64 32, !1199, i64 40, !1199, i64 48, !1199, i64 56, !1199, i64 64, !1199, i64 72, !1199, i64 80, !1199, i64 88, !1199, i64 96, !1199, i64 104, !1287, i64 112, !1287, i64 116, !1392, i64 120, !1393, i64 128, !1200, i64 130, !1200, i64 131, !1199, i64 136, !1392, i64 144, !1199, i64 152, !1199, i64 160, !1199, i64 168, !1199, i64 176, !1392, i64 184, !1287, i64 192, !1200, i64 196}
!1392 = !{!"long", !1200, i64 0}
!1393 = !{!"short", !1200, i64 0}
!1394 = !DILocation(line: 205, column: 7, scope: !1239)
!1395 = !DILocation(line: 208, column: 3, scope: !1239)
!1396 = !DILocation(line: 210, column: 23, scope: !1239)
!1397 = !DILocation(line: 210, column: 21, scope: !1239)
!1398 = !DILocation(line: 211, column: 11, scope: !1239)
!1399 = !DILocation(line: 211, column: 3, scope: !1239)
!1400 = !DILocation(line: 212, column: 21, scope: !1239)
!1401 = !DILocation(line: 212, column: 27, scope: !1239)
!1402 = !DILocation(line: 221, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1239, file: !388, line: 221, column: 7)
!1404 = !DILocation(line: 221, column: 45, scope: !1403)
!1405 = !DILocation(line: 221, column: 7, scope: !1239)
!1406 = !DILocation(line: 222, column: 28, scope: !1403)
!1407 = !DILocation(line: 222, column: 59, scope: !1403)
!1408 = !DILocation(line: 222, column: 5, scope: !1403)
!1409 = !DILocation(line: 225, column: 1, scope: !1239)
!1410 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !438, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1411)
!1411 = !{!1412}
!1412 = !DILocalVariable(name: "file", arg: 1, scope: !1410, file: !12, line: 51, type: !6)
!1413 = !DILocation(line: 0, scope: !1410)
!1414 = !DILocation(line: 53, column: 13, scope: !1410)
!1415 = !DILocation(line: 54, column: 1, scope: !1410)
!1416 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1417, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !92}
!1419 = !{!1420}
!1420 = !DILocalVariable(name: "ignore", arg: 1, scope: !1416, file: !12, line: 88, type: !92)
!1421 = !DILocation(line: 0, scope: !1416)
!1422 = !DILocation(line: 90, column: 16, scope: !1416)
!1423 = !{!1424, !1424, i64 0}
!1424 = !{!"_Bool", !1200, i64 0}
!1425 = !DILocation(line: 91, column: 1, scope: !1416)
!1426 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1427)
!1427 = !{!1428}
!1428 = !DILocalVariable(name: "write_error", scope: !1429, file: !12, line: 122, type: !6)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !12, line: 121, column: 5)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !12, line: 119, column: 7)
!1431 = !DILocation(line: 119, column: 21, scope: !1430)
!1432 = !DILocation(line: 119, column: 7, scope: !1430)
!1433 = !DILocation(line: 119, column: 29, scope: !1430)
!1434 = !DILocation(line: 120, column: 7, scope: !1430)
!1435 = !DILocation(line: 120, column: 12, scope: !1430)
!1436 = !{i8 0, i8 2}
!1437 = !DILocation(line: 120, column: 25, scope: !1430)
!1438 = !DILocation(line: 120, column: 28, scope: !1430)
!1439 = !DILocation(line: 120, column: 34, scope: !1430)
!1440 = !DILocation(line: 119, column: 7, scope: !1426)
!1441 = !DILocation(line: 122, column: 33, scope: !1429)
!1442 = !DILocation(line: 0, scope: !1429)
!1443 = !DILocation(line: 123, column: 11, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1429, file: !12, line: 123, column: 11)
!1445 = !DILocation(line: 0, scope: !1444)
!1446 = !DILocation(line: 123, column: 11, scope: !1429)
!1447 = !DILocation(line: 124, column: 36, scope: !1444)
!1448 = !DILocation(line: 124, column: 9, scope: !1444)
!1449 = !DILocation(line: 127, column: 9, scope: !1444)
!1450 = !DILocation(line: 129, column: 14, scope: !1429)
!1451 = !DILocation(line: 129, column: 7, scope: !1429)
!1452 = !DILocation(line: 134, column: 42, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1426, file: !12, line: 134, column: 7)
!1454 = !DILocation(line: 134, column: 28, scope: !1453)
!1455 = !DILocation(line: 134, column: 50, scope: !1453)
!1456 = !DILocation(line: 134, column: 7, scope: !1426)
!1457 = !DILocation(line: 135, column: 12, scope: !1453)
!1458 = !DILocation(line: 135, column: 5, scope: !1453)
!1459 = !DILocation(line: 136, column: 1, scope: !1426)
!1460 = distinct !DISubprogram(name: "fd_reopen", scope: !492, file: !492, line: 32, type: !1461, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!18, !18, !6, !18, !1258}
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1472}
!1464 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1460, file: !492, line: 32, type: !18)
!1465 = !DILocalVariable(name: "file", arg: 2, scope: !1460, file: !492, line: 32, type: !6)
!1466 = !DILocalVariable(name: "flags", arg: 3, scope: !1460, file: !492, line: 32, type: !18)
!1467 = !DILocalVariable(name: "mode", arg: 4, scope: !1460, file: !492, line: 32, type: !1258)
!1468 = !DILocalVariable(name: "fd", scope: !1460, file: !492, line: 34, type: !18)
!1469 = !DILocalVariable(name: "fd2", scope: !1470, file: !492, line: 40, type: !18)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !492, line: 39, column: 5)
!1471 = distinct !DILexicalBlock(scope: !1460, file: !492, line: 36, column: 7)
!1472 = !DILocalVariable(name: "saved_errno", scope: !1470, file: !492, line: 41, type: !18)
!1473 = !DILocation(line: 0, scope: !1460)
!1474 = !DILocation(line: 34, column: 12, scope: !1460)
!1475 = !DILocation(line: 36, column: 10, scope: !1471)
!1476 = !DILocation(line: 36, column: 30, scope: !1471)
!1477 = !DILocation(line: 36, column: 24, scope: !1471)
!1478 = !DILocation(line: 40, column: 17, scope: !1470)
!1479 = !DILocation(line: 0, scope: !1470)
!1480 = !DILocation(line: 41, column: 25, scope: !1470)
!1481 = !DILocation(line: 42, column: 7, scope: !1470)
!1482 = !DILocation(line: 43, column: 13, scope: !1470)
!1483 = !DILocation(line: 0, scope: !1471)
!1484 = !DILocation(line: 46, column: 1, scope: !1460)
!1485 = distinct !DISubprogram(name: "file_name_concat", scope: !495, file: !495, line: 35, type: !475, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1486)
!1486 = !{!1487, !1488, !1489, !1490}
!1487 = !DILocalVariable(name: "dir", arg: 1, scope: !1485, file: !495, line: 35, type: !6)
!1488 = !DILocalVariable(name: "base", arg: 2, scope: !1485, file: !495, line: 35, type: !6)
!1489 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1485, file: !495, line: 35, type: !457)
!1490 = !DILocalVariable(name: "p", scope: !1485, file: !495, line: 37, type: !25)
!1491 = !DILocation(line: 0, scope: !1485)
!1492 = !DILocation(line: 37, column: 13, scope: !1485)
!1493 = !DILocation(line: 38, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1485, file: !495, line: 38, column: 7)
!1495 = !DILocation(line: 38, column: 7, scope: !1485)
!1496 = !DILocation(line: 39, column: 5, scope: !1494)
!1497 = !DILocation(line: 40, column: 3, scope: !1485)
!1498 = distinct !DISubprogram(name: "mfile_name_concat", scope: !499, file: !499, line: 47, type: !475, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1500 = !DILocalVariable(name: "dir", arg: 1, scope: !1498, file: !499, line: 47, type: !6)
!1501 = !DILocalVariable(name: "base", arg: 2, scope: !1498, file: !499, line: 47, type: !6)
!1502 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1498, file: !499, line: 47, type: !457)
!1503 = !DILocalVariable(name: "dirbase", scope: !1498, file: !499, line: 49, type: !6)
!1504 = !DILocalVariable(name: "dirbaselen", scope: !1498, file: !499, line: 50, type: !69)
!1505 = !DILocalVariable(name: "dirlen", scope: !1498, file: !499, line: 51, type: !69)
!1506 = !DILocalVariable(name: "baselen", scope: !1498, file: !499, line: 52, type: !69)
!1507 = !DILocalVariable(name: "sep", scope: !1498, file: !499, line: 53, type: !8)
!1508 = !DILocalVariable(name: "p_concat", scope: !1498, file: !499, line: 70, type: !25)
!1509 = !DILocalVariable(name: "p", scope: !1498, file: !499, line: 71, type: !25)
!1510 = !DILocation(line: 0, scope: !1498)
!1511 = !DILocation(line: 49, column: 25, scope: !1498)
!1512 = !DILocation(line: 50, column: 23, scope: !1498)
!1513 = !DILocation(line: 51, column: 27, scope: !1498)
!1514 = !DILocation(line: 51, column: 33, scope: !1498)
!1515 = !DILocation(line: 52, column: 20, scope: !1498)
!1516 = !DILocation(line: 54, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1498, file: !499, line: 54, column: 7)
!1518 = !DILocation(line: 54, column: 7, scope: !1498)
!1519 = !DILocation(line: 57, column: 13, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !499, line: 57, column: 11)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !499, line: 55, column: 5)
!1522 = !{!1200, !1200, i64 0}
!1523 = !DILocation(line: 57, column: 39, scope: !1520)
!1524 = !DILocation(line: 57, column: 44, scope: !1520)
!1525 = !DILocation(line: 57, column: 11, scope: !1521)
!1526 = !DILocation(line: 60, column: 12, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1517, file: !499, line: 60, column: 12)
!1528 = !DILocation(line: 60, column: 12, scope: !1517)
!1529 = !DILocation(line: 70, column: 42, scope: !1498)
!1530 = !DILocation(line: 70, column: 37, scope: !1498)
!1531 = !DILocation(line: 70, column: 35, scope: !1498)
!1532 = !DILocation(line: 70, column: 52, scope: !1498)
!1533 = !DILocation(line: 70, column: 62, scope: !1498)
!1534 = !DILocation(line: 70, column: 20, scope: !1498)
!1535 = !DILocation(line: 73, column: 16, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1498, file: !499, line: 73, column: 7)
!1537 = !DILocation(line: 73, column: 7, scope: !1498)
!1538 = !DILocalVariable(name: "__dest", arg: 1, scope: !1539, file: !1540, line: 45, type: !1543)
!1539 = distinct !DISubprogram(name: "mempcpy", scope: !1540, file: !1540, line: 45, type: !1541, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1545)
!1540 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!67, !1543, !1544, !69}
!1543 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!1544 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!1545 = !{!1538, !1546, !1547}
!1546 = !DILocalVariable(name: "__src", arg: 2, scope: !1539, file: !1540, line: 45, type: !1544)
!1547 = !DILocalVariable(name: "__len", arg: 3, scope: !1539, file: !1540, line: 45, type: !69)
!1548 = !DILocation(line: 0, scope: !1539, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 76, column: 7, scope: !1498)
!1550 = !DILocation(line: 48, column: 10, scope: !1539, inlinedAt: !1549)
!1551 = !DILocation(line: 77, column: 6, scope: !1498)
!1552 = !DILocation(line: 78, column: 5, scope: !1498)
!1553 = !DILocation(line: 80, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1498, file: !499, line: 80, column: 7)
!1555 = !DILocation(line: 80, column: 7, scope: !1498)
!1556 = !DILocation(line: 81, column: 21, scope: !1554)
!1557 = !DILocation(line: 81, column: 5, scope: !1554)
!1558 = !DILocation(line: 0, scope: !1539, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 83, column: 7, scope: !1498)
!1560 = !DILocation(line: 48, column: 10, scope: !1539, inlinedAt: !1559)
!1561 = !DILocation(line: 84, column: 6, scope: !1498)
!1562 = !DILocation(line: 86, column: 3, scope: !1498)
!1563 = !DILocation(line: 87, column: 1, scope: !1498)
!1564 = distinct !DISubprogram(name: "parse_long_options", scope: !102, file: !102, line: 45, type: !1565, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !18, !457, !6, !6, !6, !458, null}
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1568 = !DILocalVariable(name: "argc", arg: 1, scope: !1564, file: !102, line: 45, type: !18)
!1569 = !DILocalVariable(name: "argv", arg: 2, scope: !1564, file: !102, line: 46, type: !457)
!1570 = !DILocalVariable(name: "command_name", arg: 3, scope: !1564, file: !102, line: 47, type: !6)
!1571 = !DILocalVariable(name: "package", arg: 4, scope: !1564, file: !102, line: 48, type: !6)
!1572 = !DILocalVariable(name: "version", arg: 5, scope: !1564, file: !102, line: 49, type: !6)
!1573 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1564, file: !102, line: 50, type: !458)
!1574 = !DILocalVariable(name: "c", scope: !1564, file: !102, line: 53, type: !18)
!1575 = !DILocalVariable(name: "saved_opterr", scope: !1564, file: !102, line: 54, type: !18)
!1576 = !DILocalVariable(name: "authors", scope: !1577, file: !102, line: 72, type: !1581)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !102, line: 71, column: 11)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !102, line: 65, column: 9)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !102, line: 63, column: 5)
!1580 = distinct !DILexicalBlock(scope: !1564, file: !102, line: 61, column: 7)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1583, line: 32, baseType: !1584)
!1583 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, line: 72, baseType: !1585)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !52)
!1586 = !DILocation(line: 0, scope: !1564)
!1587 = !DILocation(line: 56, column: 18, scope: !1564)
!1588 = !DILocation(line: 59, column: 10, scope: !1564)
!1589 = !DILocation(line: 61, column: 12, scope: !1580)
!1590 = !DILocation(line: 62, column: 7, scope: !1580)
!1591 = !DILocation(line: 62, column: 15, scope: !1580)
!1592 = !DILocation(line: 61, column: 7, scope: !1564)
!1593 = !DILocation(line: 67, column: 11, scope: !1578)
!1594 = !DILocation(line: 68, column: 11, scope: !1578)
!1595 = !DILocation(line: 72, column: 13, scope: !1577)
!1596 = !DILocation(line: 72, column: 21, scope: !1577)
!1597 = !DILocation(line: 73, column: 13, scope: !1577)
!1598 = !DILocation(line: 74, column: 29, scope: !1577)
!1599 = !DILocation(line: 74, column: 13, scope: !1577)
!1600 = !DILocation(line: 75, column: 13, scope: !1577)
!1601 = !DILocation(line: 85, column: 10, scope: !1564)
!1602 = !DILocation(line: 89, column: 10, scope: !1564)
!1603 = !DILocation(line: 90, column: 1, scope: !1564)
!1604 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !102, file: !102, line: 98, type: !455, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616}
!1606 = !DILocalVariable(name: "argc", arg: 1, scope: !1604, file: !102, line: 98, type: !18)
!1607 = !DILocalVariable(name: "argv", arg: 2, scope: !1604, file: !102, line: 99, type: !457)
!1608 = !DILocalVariable(name: "command_name", arg: 3, scope: !1604, file: !102, line: 100, type: !6)
!1609 = !DILocalVariable(name: "package", arg: 4, scope: !1604, file: !102, line: 101, type: !6)
!1610 = !DILocalVariable(name: "version", arg: 5, scope: !1604, file: !102, line: 102, type: !6)
!1611 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1604, file: !102, line: 103, type: !92)
!1612 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1604, file: !102, line: 104, type: !458)
!1613 = !DILocalVariable(name: "c", scope: !1604, file: !102, line: 107, type: !18)
!1614 = !DILocalVariable(name: "saved_opterr", scope: !1604, file: !102, line: 108, type: !18)
!1615 = !DILocalVariable(name: "optstring", scope: !1604, file: !102, line: 113, type: !6)
!1616 = !DILocalVariable(name: "authors", scope: !1617, file: !102, line: 125, type: !1581)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !102, line: 124, column: 11)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !102, line: 118, column: 9)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !102, line: 116, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1604, file: !102, line: 115, column: 7)
!1621 = !DILocation(line: 0, scope: !1604)
!1622 = !DILocation(line: 108, column: 22, scope: !1604)
!1623 = !DILocation(line: 111, column: 10, scope: !1604)
!1624 = !DILocation(line: 113, column: 27, scope: !1604)
!1625 = !DILocation(line: 115, column: 12, scope: !1620)
!1626 = !DILocation(line: 115, column: 7, scope: !1604)
!1627 = !DILocation(line: 125, column: 13, scope: !1617)
!1628 = !DILocation(line: 125, column: 21, scope: !1617)
!1629 = !DILocation(line: 126, column: 13, scope: !1617)
!1630 = !DILocation(line: 127, column: 29, scope: !1617)
!1631 = !DILocation(line: 127, column: 13, scope: !1617)
!1632 = !DILocation(line: 128, column: 13, scope: !1617)
!1633 = !DILocation(line: 132, column: 26, scope: !1618)
!1634 = !DILocation(line: 133, column: 11, scope: !1618)
!1635 = !DILocation(line: 0, scope: !1618)
!1636 = !DILocation(line: 138, column: 10, scope: !1604)
!1637 = !DILocation(line: 139, column: 1, scope: !1604)
!1638 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !438, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DILocalVariable(name: "argv0", arg: 1, scope: !1638, file: !170, line: 39, type: !6)
!1641 = !DILocalVariable(name: "slash", scope: !1638, file: !170, line: 46, type: !6)
!1642 = !DILocalVariable(name: "base", scope: !1638, file: !170, line: 47, type: !6)
!1643 = !DILocation(line: 0, scope: !1638)
!1644 = !DILocation(line: 51, column: 13, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1638, file: !170, line: 51, column: 7)
!1646 = !DILocation(line: 51, column: 7, scope: !1638)
!1647 = !DILocation(line: 55, column: 14, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !170, line: 52, column: 5)
!1649 = !DILocation(line: 54, column: 7, scope: !1648)
!1650 = !DILocation(line: 56, column: 7, scope: !1648)
!1651 = !DILocation(line: 59, column: 11, scope: !1638)
!1652 = !DILocation(line: 60, column: 17, scope: !1638)
!1653 = !DILocation(line: 60, column: 11, scope: !1638)
!1654 = !DILocation(line: 61, column: 12, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1638, file: !170, line: 61, column: 7)
!1656 = !DILocation(line: 61, column: 20, scope: !1655)
!1657 = !DILocation(line: 61, column: 25, scope: !1655)
!1658 = !DILocation(line: 61, column: 42, scope: !1655)
!1659 = !DILocation(line: 61, column: 28, scope: !1655)
!1660 = !DILocation(line: 61, column: 61, scope: !1655)
!1661 = !DILocation(line: 61, column: 7, scope: !1638)
!1662 = !DILocation(line: 64, column: 11, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !170, line: 64, column: 11)
!1664 = distinct !DILexicalBlock(scope: !1655, file: !170, line: 62, column: 5)
!1665 = !DILocation(line: 64, column: 36, scope: !1663)
!1666 = !DILocation(line: 64, column: 11, scope: !1664)
!1667 = !DILocation(line: 66, column: 24, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !170, line: 65, column: 9)
!1669 = !DILocation(line: 70, column: 41, scope: !1668)
!1670 = !DILocation(line: 72, column: 9, scope: !1668)
!1671 = !DILocation(line: 84, column: 16, scope: !1638)
!1672 = !DILocation(line: 90, column: 27, scope: !1638)
!1673 = !DILocation(line: 92, column: 1, scope: !1638)
!1674 = distinct !DISubprogram(name: "clone_quoting_options", scope: !212, file: !212, line: 122, type: !1675, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1678)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!1677, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1678 = !{!1679, !1680, !1681}
!1679 = !DILocalVariable(name: "o", arg: 1, scope: !1674, file: !212, line: 122, type: !1677)
!1680 = !DILocalVariable(name: "e", scope: !1674, file: !212, line: 124, type: !18)
!1681 = !DILocalVariable(name: "p", scope: !1674, file: !212, line: 125, type: !1677)
!1682 = !DILocation(line: 0, scope: !1674)
!1683 = !DILocation(line: 124, column: 11, scope: !1674)
!1684 = !DILocation(line: 125, column: 40, scope: !1674)
!1685 = !DILocation(line: 125, column: 31, scope: !1674)
!1686 = !DILocation(line: 127, column: 9, scope: !1674)
!1687 = !DILocation(line: 128, column: 3, scope: !1674)
!1688 = distinct !DISubprogram(name: "get_quoting_style", scope: !212, file: !212, line: 133, type: !1689, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!214, !258}
!1691 = !{!1692}
!1692 = !DILocalVariable(name: "o", arg: 1, scope: !1688, file: !212, line: 133, type: !258)
!1693 = !DILocation(line: 0, scope: !1688)
!1694 = !DILocation(line: 135, column: 11, scope: !1688)
!1695 = !DILocation(line: 135, column: 46, scope: !1688)
!1696 = !{!1697, !1200, i64 0}
!1697 = !{!"quoting_options", !1200, i64 0, !1287, i64 4, !1200, i64 8, !1199, i64 40, !1199, i64 48}
!1698 = !DILocation(line: 135, column: 3, scope: !1688)
!1699 = distinct !DISubprogram(name: "set_quoting_style", scope: !212, file: !212, line: 141, type: !1700, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1677, !214}
!1702 = !{!1703, !1704}
!1703 = !DILocalVariable(name: "o", arg: 1, scope: !1699, file: !212, line: 141, type: !1677)
!1704 = !DILocalVariable(name: "s", arg: 2, scope: !1699, file: !212, line: 141, type: !214)
!1705 = !DILocation(line: 0, scope: !1699)
!1706 = !DILocation(line: 143, column: 4, scope: !1699)
!1707 = !DILocation(line: 143, column: 39, scope: !1699)
!1708 = !DILocation(line: 143, column: 45, scope: !1699)
!1709 = !DILocation(line: 144, column: 1, scope: !1699)
!1710 = distinct !DISubprogram(name: "set_char_quoting", scope: !212, file: !212, line: 152, type: !1711, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!18, !1677, !8, !18}
!1713 = !{!1714, !1715, !1716, !1717, !1719, !1721, !1722}
!1714 = !DILocalVariable(name: "o", arg: 1, scope: !1710, file: !212, line: 152, type: !1677)
!1715 = !DILocalVariable(name: "c", arg: 2, scope: !1710, file: !212, line: 152, type: !8)
!1716 = !DILocalVariable(name: "i", arg: 3, scope: !1710, file: !212, line: 152, type: !18)
!1717 = !DILocalVariable(name: "uc", scope: !1710, file: !212, line: 154, type: !1718)
!1718 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1719 = !DILocalVariable(name: "p", scope: !1710, file: !212, line: 155, type: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1721 = !DILocalVariable(name: "shift", scope: !1710, file: !212, line: 157, type: !18)
!1722 = !DILocalVariable(name: "r", scope: !1710, file: !212, line: 158, type: !18)
!1723 = !DILocation(line: 0, scope: !1710)
!1724 = !DILocation(line: 156, column: 6, scope: !1710)
!1725 = !DILocation(line: 156, column: 62, scope: !1710)
!1726 = !DILocation(line: 156, column: 57, scope: !1710)
!1727 = !DILocation(line: 157, column: 15, scope: !1710)
!1728 = !DILocation(line: 158, column: 12, scope: !1710)
!1729 = !DILocation(line: 158, column: 15, scope: !1710)
!1730 = !DILocation(line: 158, column: 25, scope: !1710)
!1731 = !DILocation(line: 159, column: 13, scope: !1710)
!1732 = !DILocation(line: 159, column: 18, scope: !1710)
!1733 = !DILocation(line: 159, column: 23, scope: !1710)
!1734 = !DILocation(line: 159, column: 6, scope: !1710)
!1735 = !DILocation(line: 160, column: 3, scope: !1710)
!1736 = distinct !DISubprogram(name: "set_quoting_flags", scope: !212, file: !212, line: 168, type: !1737, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!18, !1677, !18}
!1739 = !{!1740, !1741, !1742}
!1740 = !DILocalVariable(name: "o", arg: 1, scope: !1736, file: !212, line: 168, type: !1677)
!1741 = !DILocalVariable(name: "i", arg: 2, scope: !1736, file: !212, line: 168, type: !18)
!1742 = !DILocalVariable(name: "r", scope: !1736, file: !212, line: 170, type: !18)
!1743 = !DILocation(line: 0, scope: !1736)
!1744 = !DILocation(line: 171, column: 8, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1736, file: !212, line: 171, column: 7)
!1746 = !DILocation(line: 171, column: 7, scope: !1736)
!1747 = !DILocation(line: 173, column: 10, scope: !1736)
!1748 = !{!1697, !1287, i64 4}
!1749 = !DILocation(line: 174, column: 12, scope: !1736)
!1750 = !DILocation(line: 175, column: 3, scope: !1736)
!1751 = distinct !DISubprogram(name: "set_custom_quoting", scope: !212, file: !212, line: 179, type: !1752, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1677, !6, !6}
!1754 = !{!1755, !1756, !1757}
!1755 = !DILocalVariable(name: "o", arg: 1, scope: !1751, file: !212, line: 179, type: !1677)
!1756 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1751, file: !212, line: 180, type: !6)
!1757 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1751, file: !212, line: 180, type: !6)
!1758 = !DILocation(line: 0, scope: !1751)
!1759 = !DILocation(line: 182, column: 8, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1751, file: !212, line: 182, column: 7)
!1761 = !DILocation(line: 182, column: 7, scope: !1751)
!1762 = !DILocation(line: 184, column: 6, scope: !1751)
!1763 = !DILocation(line: 184, column: 12, scope: !1751)
!1764 = !DILocation(line: 185, column: 8, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1751, file: !212, line: 185, column: 7)
!1766 = !DILocation(line: 185, column: 23, scope: !1765)
!1767 = !DILocation(line: 185, column: 19, scope: !1765)
!1768 = !DILocation(line: 186, column: 5, scope: !1765)
!1769 = !DILocation(line: 187, column: 6, scope: !1751)
!1770 = !DILocation(line: 187, column: 17, scope: !1751)
!1771 = !{!1697, !1199, i64 40}
!1772 = !DILocation(line: 188, column: 6, scope: !1751)
!1773 = !DILocation(line: 188, column: 18, scope: !1751)
!1774 = !{!1697, !1199, i64 48}
!1775 = !DILocation(line: 189, column: 1, scope: !1751)
!1776 = distinct !DISubprogram(name: "quotearg_buffer", scope: !212, file: !212, line: 784, type: !1777, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!69, !25, !69, !6, !69, !258}
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1780 = !DILocalVariable(name: "buffer", arg: 1, scope: !1776, file: !212, line: 784, type: !25)
!1781 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1776, file: !212, line: 784, type: !69)
!1782 = !DILocalVariable(name: "arg", arg: 3, scope: !1776, file: !212, line: 785, type: !6)
!1783 = !DILocalVariable(name: "argsize", arg: 4, scope: !1776, file: !212, line: 785, type: !69)
!1784 = !DILocalVariable(name: "o", arg: 5, scope: !1776, file: !212, line: 786, type: !258)
!1785 = !DILocalVariable(name: "p", scope: !1776, file: !212, line: 788, type: !258)
!1786 = !DILocalVariable(name: "e", scope: !1776, file: !212, line: 789, type: !18)
!1787 = !DILocalVariable(name: "r", scope: !1776, file: !212, line: 790, type: !69)
!1788 = !DILocation(line: 0, scope: !1776)
!1789 = !DILocation(line: 788, column: 37, scope: !1776)
!1790 = !DILocation(line: 789, column: 11, scope: !1776)
!1791 = !DILocation(line: 791, column: 43, scope: !1776)
!1792 = !DILocation(line: 791, column: 53, scope: !1776)
!1793 = !DILocation(line: 791, column: 60, scope: !1776)
!1794 = !DILocation(line: 792, column: 43, scope: !1776)
!1795 = !DILocation(line: 792, column: 58, scope: !1776)
!1796 = !DILocation(line: 790, column: 14, scope: !1776)
!1797 = !DILocation(line: 793, column: 9, scope: !1776)
!1798 = !DILocation(line: 794, column: 3, scope: !1776)
!1799 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !212, file: !212, line: 256, type: !1800, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1804)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!69, !25, !69, !6, !69, !214, !18, !1802, !6, !6}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1829, !1830, !1831, !1832, !1833, !1836, !1837, !1843, !1846, !1847, !1854, !1857, !1858, !1859, !1860, !1861, !1862}
!1805 = !DILocalVariable(name: "buffer", arg: 1, scope: !1799, file: !212, line: 256, type: !25)
!1806 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1799, file: !212, line: 256, type: !69)
!1807 = !DILocalVariable(name: "arg", arg: 3, scope: !1799, file: !212, line: 257, type: !6)
!1808 = !DILocalVariable(name: "argsize", arg: 4, scope: !1799, file: !212, line: 257, type: !69)
!1809 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1799, file: !212, line: 258, type: !214)
!1810 = !DILocalVariable(name: "flags", arg: 6, scope: !1799, file: !212, line: 258, type: !18)
!1811 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1799, file: !212, line: 259, type: !1802)
!1812 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1799, file: !212, line: 260, type: !6)
!1813 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1799, file: !212, line: 261, type: !6)
!1814 = !DILocalVariable(name: "i", scope: !1799, file: !212, line: 263, type: !69)
!1815 = !DILocalVariable(name: "len", scope: !1799, file: !212, line: 264, type: !69)
!1816 = !DILocalVariable(name: "orig_buffersize", scope: !1799, file: !212, line: 265, type: !69)
!1817 = !DILocalVariable(name: "quote_string", scope: !1799, file: !212, line: 266, type: !6)
!1818 = !DILocalVariable(name: "quote_string_len", scope: !1799, file: !212, line: 267, type: !69)
!1819 = !DILocalVariable(name: "backslash_escapes", scope: !1799, file: !212, line: 268, type: !92)
!1820 = !DILocalVariable(name: "unibyte_locale", scope: !1799, file: !212, line: 269, type: !92)
!1821 = !DILocalVariable(name: "elide_outer_quotes", scope: !1799, file: !212, line: 270, type: !92)
!1822 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1799, file: !212, line: 271, type: !92)
!1823 = !DILocalVariable(name: "encountered_single_quote", scope: !1799, file: !212, line: 272, type: !92)
!1824 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1799, file: !212, line: 273, type: !92)
!1825 = !DILocalVariable(name: "c", scope: !1826, file: !212, line: 402, type: !1718)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !212, line: 401, column: 5)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !212, line: 400, column: 3)
!1828 = distinct !DILexicalBlock(scope: !1799, file: !212, line: 400, column: 3)
!1829 = !DILocalVariable(name: "esc", scope: !1826, file: !212, line: 403, type: !1718)
!1830 = !DILocalVariable(name: "is_right_quote", scope: !1826, file: !212, line: 404, type: !92)
!1831 = !DILocalVariable(name: "escaping", scope: !1826, file: !212, line: 405, type: !92)
!1832 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1826, file: !212, line: 406, type: !92)
!1833 = !DILocalVariable(name: "m", scope: !1834, file: !212, line: 610, type: !69)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 608, column: 11)
!1835 = distinct !DILexicalBlock(scope: !1826, file: !212, line: 426, column: 9)
!1836 = !DILocalVariable(name: "printable", scope: !1834, file: !212, line: 612, type: !92)
!1837 = !DILocalVariable(name: "mbstate", scope: !1838, file: !212, line: 621, type: !1840)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !212, line: 620, column: 15)
!1839 = distinct !DILexicalBlock(scope: !1834, file: !212, line: 614, column: 17)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1841, line: 6, baseType: !1842)
!1841 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !282)
!1843 = !DILocalVariable(name: "w", scope: !1844, file: !212, line: 631, type: !1845)
!1844 = distinct !DILexicalBlock(scope: !1838, file: !212, line: 630, column: 19)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1846 = !DILocalVariable(name: "bytes", scope: !1844, file: !212, line: 632, type: !69)
!1847 = !DILocalVariable(name: "j", scope: !1848, file: !212, line: 657, type: !69)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !212, line: 656, column: 27)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !212, line: 654, column: 29)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !212, line: 649, column: 23)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !212, line: 641, column: 30)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !212, line: 636, column: 30)
!1853 = distinct !DILexicalBlock(scope: !1844, file: !212, line: 634, column: 25)
!1854 = !DILocalVariable(name: "ilim", scope: !1855, file: !212, line: 684, type: !69)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !212, line: 681, column: 15)
!1856 = distinct !DILexicalBlock(scope: !1834, file: !212, line: 680, column: 17)
!1857 = !DILabel(scope: !1799, name: "process_input", file: !212, line: 314)
!1858 = !DILabel(scope: !1835, name: "c_and_shell_escape", file: !212, line: 512)
!1859 = !DILabel(scope: !1835, name: "c_escape", file: !212, line: 517)
!1860 = !DILabel(scope: !1826, name: "store_escape", file: !212, line: 719)
!1861 = !DILabel(scope: !1826, name: "store_c", file: !212, line: 722)
!1862 = !DILabel(scope: !1799, name: "force_outer_quoting_style", file: !212, line: 763)
!1863 = !DILocation(line: 0, scope: !1799)
!1864 = !DILocation(line: 269, column: 25, scope: !1799)
!1865 = !DILocation(line: 269, column: 36, scope: !1799)
!1866 = !DILocation(line: 270, column: 8, scope: !1799)
!1867 = !DILocation(line: 0, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 526, column: 15)
!1869 = !DILocation(line: 0, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !212, line: 462, column: 19)
!1871 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 455, column: 13)
!1872 = !DILocation(line: 0, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !212, line: 449, column: 20)
!1874 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 428, column: 15)
!1875 = !DILocation(line: 0, scope: !1838)
!1876 = !DILocation(line: 0, scope: !1844)
!1877 = !DILocation(line: 0, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1826, file: !212, line: 712, column: 11)
!1879 = !DILocation(line: 273, column: 3, scope: !1799)
!1880 = !DILocation(line: 265, column: 10, scope: !1799)
!1881 = !DILocation(line: 266, column: 15, scope: !1799)
!1882 = !DILocation(line: 267, column: 10, scope: !1799)
!1883 = !DILocation(line: 268, column: 8, scope: !1799)
!1884 = !DILocation(line: 271, column: 8, scope: !1799)
!1885 = !DILocation(line: 272, column: 8, scope: !1799)
!1886 = !DILocation(line: 273, column: 8, scope: !1799)
!1887 = !DILocation(line: 314, column: 2, scope: !1799)
!1888 = !DILocation(line: 316, column: 3, scope: !1799)
!1889 = !DILocation(line: 323, column: 11, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1799, file: !212, line: 317, column: 5)
!1891 = !DILocation(line: 323, column: 12, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1890, file: !212, line: 323, column: 11)
!1893 = !DILocation(line: 324, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !212, line: 324, column: 9)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !212, line: 324, column: 9)
!1896 = !DILocation(line: 324, column: 9, scope: !1895)
!1897 = !DILocation(line: 362, column: 26, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !212, line: 340, column: 11)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !212, line: 339, column: 13)
!1900 = distinct !DILexicalBlock(scope: !1890, file: !212, line: 338, column: 7)
!1901 = !DILocation(line: 363, column: 27, scope: !1898)
!1902 = !DILocation(line: 364, column: 11, scope: !1898)
!1903 = !DILocation(line: 365, column: 14, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1900, file: !212, line: 365, column: 13)
!1905 = !DILocation(line: 365, column: 13, scope: !1900)
!1906 = !DILocation(line: 366, column: 43, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !212, line: 366, column: 11)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !212, line: 366, column: 11)
!1909 = !DILocation(line: 366, column: 11, scope: !1908)
!1910 = !DILocation(line: 367, column: 13, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !212, line: 367, column: 13)
!1912 = distinct !DILexicalBlock(scope: !1907, file: !212, line: 367, column: 13)
!1913 = !DILocation(line: 367, column: 13, scope: !1912)
!1914 = !DILocation(line: 366, column: 70, scope: !1907)
!1915 = distinct !{!1915, !1909, !1916}
!1916 = !DILocation(line: 367, column: 13, scope: !1908)
!1917 = !DILocation(line: 264, column: 10, scope: !1799)
!1918 = !DILocation(line: 370, column: 28, scope: !1900)
!1919 = !DILocation(line: 372, column: 7, scope: !1890)
!1920 = !DILocation(line: 376, column: 7, scope: !1890)
!1921 = !DILocation(line: 379, column: 7, scope: !1890)
!1922 = !DILocation(line: 381, column: 12, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1890, file: !212, line: 381, column: 11)
!1924 = !DILocation(line: 381, column: 11, scope: !1890)
!1925 = !DILocation(line: 386, column: 12, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1890, file: !212, line: 386, column: 11)
!1927 = !DILocation(line: 386, column: 11, scope: !1890)
!1928 = !DILocation(line: 387, column: 9, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !212, line: 387, column: 9)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !212, line: 387, column: 9)
!1931 = !DILocation(line: 387, column: 9, scope: !1930)
!1932 = !DILocation(line: 394, column: 7, scope: !1890)
!1933 = !DILocation(line: 397, column: 7, scope: !1890)
!1934 = !DILocation(line: 0, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1826, file: !212, line: 408, column: 11)
!1936 = !DILocation(line: 0, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !212, line: 419, column: 15)
!1938 = distinct !DILexicalBlock(scope: !1935, file: !212, line: 418, column: 9)
!1939 = !DILocation(line: 0, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 556, column: 15)
!1941 = !DILocation(line: 0, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 548, column: 15)
!1943 = !DILocation(line: 0, scope: !1849)
!1944 = !DILocation(line: 0, scope: !1856)
!1945 = !DILocation(line: 0, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 509, column: 15)
!1947 = !DILocation(line: 400, column: 8, scope: !1828)
!1948 = !DILocation(line: 0, scope: !1828)
!1949 = !DILocation(line: 400, column: 27, scope: !1827)
!1950 = !DILocation(line: 400, column: 19, scope: !1827)
!1951 = !DILocation(line: 400, column: 41, scope: !1827)
!1952 = !DILocation(line: 400, column: 48, scope: !1827)
!1953 = !DILocation(line: 400, column: 3, scope: !1828)
!1954 = !DILocation(line: 400, column: 60, scope: !1827)
!1955 = !DILocation(line: 0, scope: !1826)
!1956 = !DILocation(line: 409, column: 11, scope: !1935)
!1957 = !DILocation(line: 411, column: 17, scope: !1935)
!1958 = !DILocation(line: 412, column: 39, scope: !1935)
!1959 = !DILocation(line: 416, column: 32, scope: !1935)
!1960 = !DILocation(line: 412, column: 19, scope: !1935)
!1961 = !DILocation(line: 412, column: 15, scope: !1935)
!1962 = !DILocation(line: 417, column: 11, scope: !1935)
!1963 = !DILocation(line: 417, column: 26, scope: !1935)
!1964 = !DILocation(line: 417, column: 14, scope: !1935)
!1965 = !DILocation(line: 417, column: 63, scope: !1935)
!1966 = !DILocation(line: 408, column: 11, scope: !1826)
!1967 = !DILocation(line: 424, column: 11, scope: !1826)
!1968 = !DILocation(line: 425, column: 7, scope: !1826)
!1969 = !DILocation(line: 428, column: 15, scope: !1835)
!1970 = !DILocation(line: 430, column: 15, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !212, line: 430, column: 15)
!1972 = distinct !DILexicalBlock(scope: !1874, file: !212, line: 429, column: 13)
!1973 = !DILocation(line: 430, column: 15, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !212, line: 430, column: 15)
!1975 = !DILocation(line: 430, column: 15, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !212, line: 430, column: 15)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !212, line: 430, column: 15)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !212, line: 430, column: 15)
!1979 = !DILocation(line: 430, column: 15, scope: !1977)
!1980 = !DILocation(line: 430, column: 15, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !212, line: 430, column: 15)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !212, line: 430, column: 15)
!1983 = !DILocation(line: 430, column: 15, scope: !1982)
!1984 = !DILocation(line: 430, column: 15, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !212, line: 430, column: 15)
!1986 = distinct !DILexicalBlock(scope: !1978, file: !212, line: 430, column: 15)
!1987 = !DILocation(line: 430, column: 15, scope: !1986)
!1988 = !DILocation(line: 430, column: 15, scope: !1978)
!1989 = !DILocation(line: 430, column: 15, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !212, line: 430, column: 15)
!1991 = distinct !DILexicalBlock(scope: !1971, file: !212, line: 430, column: 15)
!1992 = !DILocation(line: 430, column: 15, scope: !1991)
!1993 = !DILocation(line: 438, column: 19, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1972, file: !212, line: 437, column: 19)
!1995 = !DILocation(line: 438, column: 24, scope: !1994)
!1996 = !DILocation(line: 438, column: 28, scope: !1994)
!1997 = !DILocation(line: 438, column: 38, scope: !1994)
!1998 = !DILocation(line: 438, column: 48, scope: !1994)
!1999 = !DILocation(line: 438, column: 59, scope: !1994)
!2000 = !DILocation(line: 440, column: 19, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !212, line: 440, column: 19)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !212, line: 440, column: 19)
!2003 = distinct !DILexicalBlock(scope: !1994, file: !212, line: 439, column: 17)
!2004 = !DILocation(line: 440, column: 19, scope: !2002)
!2005 = !DILocation(line: 441, column: 19, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !212, line: 441, column: 19)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !212, line: 441, column: 19)
!2008 = !DILocation(line: 441, column: 19, scope: !2007)
!2009 = !DILocation(line: 442, column: 17, scope: !2003)
!2010 = !DILocation(line: 449, column: 20, scope: !1874)
!2011 = !DILocation(line: 454, column: 11, scope: !1835)
!2012 = !DILocation(line: 457, column: 19, scope: !1871)
!2013 = !DILocation(line: 463, column: 19, scope: !1870)
!2014 = !DILocation(line: 463, column: 24, scope: !1870)
!2015 = !DILocation(line: 463, column: 28, scope: !1870)
!2016 = !DILocation(line: 463, column: 38, scope: !1870)
!2017 = !DILocation(line: 463, column: 47, scope: !1870)
!2018 = !DILocation(line: 463, column: 41, scope: !1870)
!2019 = !DILocation(line: 463, column: 52, scope: !1870)
!2020 = !DILocation(line: 462, column: 19, scope: !1871)
!2021 = !DILocation(line: 464, column: 25, scope: !1870)
!2022 = !DILocation(line: 464, column: 17, scope: !1870)
!2023 = !DILocation(line: 471, column: 25, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1870, file: !212, line: 465, column: 19)
!2025 = !DILocation(line: 475, column: 21, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !212, line: 475, column: 21)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !212, line: 475, column: 21)
!2028 = !DILocation(line: 475, column: 21, scope: !2027)
!2029 = !DILocation(line: 476, column: 21, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !212, line: 476, column: 21)
!2031 = distinct !DILexicalBlock(scope: !2024, file: !212, line: 476, column: 21)
!2032 = !DILocation(line: 476, column: 21, scope: !2031)
!2033 = !DILocation(line: 477, column: 21, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !212, line: 477, column: 21)
!2035 = distinct !DILexicalBlock(scope: !2024, file: !212, line: 477, column: 21)
!2036 = !DILocation(line: 477, column: 21, scope: !2035)
!2037 = !DILocation(line: 478, column: 21, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !212, line: 478, column: 21)
!2039 = distinct !DILexicalBlock(scope: !2024, file: !212, line: 478, column: 21)
!2040 = !DILocation(line: 478, column: 21, scope: !2039)
!2041 = !DILocation(line: 479, column: 21, scope: !2024)
!2042 = !DILocation(line: 492, column: 31, scope: !1835)
!2043 = !DILocation(line: 493, column: 31, scope: !1835)
!2044 = !DILocation(line: 495, column: 31, scope: !1835)
!2045 = !DILocation(line: 496, column: 31, scope: !1835)
!2046 = !DILocation(line: 497, column: 31, scope: !1835)
!2047 = !DILocation(line: 500, column: 15, scope: !1835)
!2048 = !DILocation(line: 502, column: 19, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !212, line: 501, column: 13)
!2050 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 500, column: 15)
!2051 = !DILocation(line: 509, column: 33, scope: !1946)
!2052 = !DILocation(line: 0, scope: !1835)
!2053 = !DILocation(line: 512, column: 9, scope: !1835)
!2054 = !DILocation(line: 514, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 513, column: 15)
!2056 = !DILocation(line: 517, column: 9, scope: !1835)
!2057 = !DILocation(line: 518, column: 15, scope: !1835)
!2058 = !DILocation(line: 526, column: 15, scope: !1835)
!2059 = !DILocation(line: 526, column: 40, scope: !1868)
!2060 = !DILocation(line: 526, column: 47, scope: !1868)
!2061 = !DILocation(line: 526, column: 18, scope: !1868)
!2062 = !DILocation(line: 530, column: 17, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1835, file: !212, line: 530, column: 15)
!2064 = !DILocation(line: 530, column: 15, scope: !1835)
!2065 = !DILocation(line: 535, column: 11, scope: !1835)
!2066 = !DILocation(line: 549, column: 15, scope: !1942)
!2067 = !DILocation(line: 556, column: 15, scope: !1835)
!2068 = !DILocation(line: 558, column: 19, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1940, file: !212, line: 557, column: 13)
!2070 = !DILocation(line: 561, column: 19, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2069, file: !212, line: 561, column: 19)
!2072 = !DILocation(line: 561, column: 35, scope: !2071)
!2073 = !DILocation(line: 561, column: 30, scope: !2071)
!2074 = !DILocation(line: 570, column: 15, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !212, line: 570, column: 15)
!2076 = distinct !DILexicalBlock(scope: !2069, file: !212, line: 570, column: 15)
!2077 = !DILocation(line: 570, column: 15, scope: !2076)
!2078 = !DILocation(line: 571, column: 15, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !212, line: 571, column: 15)
!2080 = distinct !DILexicalBlock(scope: !2069, file: !212, line: 571, column: 15)
!2081 = !DILocation(line: 571, column: 15, scope: !2080)
!2082 = !DILocation(line: 572, column: 15, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !212, line: 572, column: 15)
!2084 = distinct !DILexicalBlock(scope: !2069, file: !212, line: 572, column: 15)
!2085 = !DILocation(line: 572, column: 15, scope: !2084)
!2086 = !DILocation(line: 574, column: 13, scope: !2069)
!2087 = !DILocation(line: 614, column: 17, scope: !1834)
!2088 = !DILocation(line: 0, scope: !1834)
!2089 = !DILocation(line: 617, column: 29, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1839, file: !212, line: 615, column: 15)
!2091 = !{!1393, !1393, i64 0}
!2092 = !DILocation(line: 617, column: 27, scope: !2090)
!2093 = !DILocation(line: 618, column: 15, scope: !2090)
!2094 = !DILocation(line: 621, column: 17, scope: !1838)
!2095 = !DILocation(line: 621, column: 27, scope: !1838)
!2096 = !DILocalVariable(name: "__dest", arg: 1, scope: !2097, file: !1540, line: 59, type: !67)
!2097 = distinct !DISubprogram(name: "memset", scope: !1540, file: !1540, line: 59, type: !2098, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!67, !67, !18, !69}
!2100 = !{!2096, !2101, !2102}
!2101 = !DILocalVariable(name: "__ch", arg: 2, scope: !2097, file: !1540, line: 59, type: !18)
!2102 = !DILocalVariable(name: "__len", arg: 3, scope: !2097, file: !1540, line: 59, type: !69)
!2103 = !DILocation(line: 0, scope: !2097, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 622, column: 17, scope: !1838)
!2105 = !DILocation(line: 71, column: 10, scope: !2097, inlinedAt: !2104)
!2106 = !DILocation(line: 626, column: 29, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1838, file: !212, line: 626, column: 21)
!2108 = !DILocation(line: 626, column: 21, scope: !1838)
!2109 = !DILocation(line: 627, column: 29, scope: !2107)
!2110 = !DILocation(line: 627, column: 19, scope: !2107)
!2111 = !DILocation(line: 629, column: 17, scope: !1838)
!2112 = !DILocation(line: 624, column: 19, scope: !1838)
!2113 = !DILocation(line: 625, column: 27, scope: !1838)
!2114 = !DILocation(line: 631, column: 21, scope: !1844)
!2115 = !DILocation(line: 632, column: 56, scope: !1844)
!2116 = !DILocation(line: 632, column: 50, scope: !1844)
!2117 = !DILocation(line: 633, column: 53, scope: !1844)
!2118 = !DILocation(line: 632, column: 36, scope: !1844)
!2119 = !DILocation(line: 634, column: 25, scope: !1844)
!2120 = !DILocation(line: 644, column: 38, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1851, file: !212, line: 642, column: 23)
!2122 = !DILocation(line: 644, column: 48, scope: !2121)
!2123 = !DILocation(line: 644, column: 25, scope: !2121)
!2124 = !DILocation(line: 644, column: 51, scope: !2121)
!2125 = !DILocation(line: 645, column: 28, scope: !2121)
!2126 = !DILocation(line: 644, column: 34, scope: !2121)
!2127 = distinct !{!2127, !2123, !2125}
!2128 = !DILocation(line: 658, column: 43, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !212, line: 658, column: 29)
!2130 = distinct !DILexicalBlock(scope: !1848, file: !212, line: 658, column: 29)
!2131 = !DILocation(line: 655, column: 29, scope: !1849)
!2132 = !DILocation(line: 0, scope: !1848)
!2133 = !DILocation(line: 659, column: 49, scope: !2129)
!2134 = !DILocation(line: 659, column: 39, scope: !2129)
!2135 = !DILocation(line: 659, column: 31, scope: !2129)
!2136 = !DILocation(line: 658, column: 53, scope: !2129)
!2137 = !DILocation(line: 658, column: 29, scope: !2130)
!2138 = distinct !{!2138, !2137, !2139}
!2139 = !DILocation(line: 667, column: 33, scope: !2130)
!2140 = !DILocation(line: 674, column: 19, scope: !1838)
!2141 = !DILocation(line: 670, column: 41, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1850, file: !212, line: 670, column: 29)
!2143 = !DILocation(line: 670, column: 31, scope: !2142)
!2144 = !DILocation(line: 670, column: 29, scope: !1850)
!2145 = !DILocation(line: 672, column: 27, scope: !1850)
!2146 = !DILocation(line: 675, column: 26, scope: !1838)
!2147 = !DILocation(line: 675, column: 24, scope: !1838)
!2148 = !DILocation(line: 674, column: 19, scope: !1844)
!2149 = distinct !{!2149, !2111, !2150}
!2150 = !DILocation(line: 675, column: 44, scope: !1838)
!2151 = !DILocation(line: 676, column: 15, scope: !1839)
!2152 = !DILocation(line: 0, scope: !1839)
!2153 = !DILocation(line: 678, column: 40, scope: !1834)
!2154 = !DILocation(line: 680, column: 19, scope: !1856)
!2155 = !DILocation(line: 680, column: 45, scope: !1856)
!2156 = !DILocation(line: 680, column: 23, scope: !1856)
!2157 = !DILocation(line: 684, column: 33, scope: !1855)
!2158 = !DILocation(line: 0, scope: !1855)
!2159 = !DILocation(line: 686, column: 17, scope: !1855)
!2160 = !DILocation(line: 405, column: 12, scope: !1826)
!2161 = !DILocation(line: 688, column: 43, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !212, line: 688, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !212, line: 687, column: 19)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !212, line: 686, column: 17)
!2165 = distinct !DILexicalBlock(scope: !1855, file: !212, line: 686, column: 17)
!2166 = !DILocation(line: 690, column: 25, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !212, line: 690, column: 25)
!2168 = distinct !DILexicalBlock(scope: !2162, file: !212, line: 689, column: 23)
!2169 = !DILocation(line: 690, column: 25, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !212, line: 690, column: 25)
!2171 = !DILocation(line: 690, column: 25, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !212, line: 690, column: 25)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !212, line: 690, column: 25)
!2174 = distinct !DILexicalBlock(scope: !2170, file: !212, line: 690, column: 25)
!2175 = !DILocation(line: 690, column: 25, scope: !2173)
!2176 = !DILocation(line: 690, column: 25, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !212, line: 690, column: 25)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !212, line: 690, column: 25)
!2179 = !DILocation(line: 690, column: 25, scope: !2178)
!2180 = !DILocation(line: 690, column: 25, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !212, line: 690, column: 25)
!2182 = distinct !DILexicalBlock(scope: !2174, file: !212, line: 690, column: 25)
!2183 = !DILocation(line: 690, column: 25, scope: !2182)
!2184 = !DILocation(line: 690, column: 25, scope: !2174)
!2185 = !DILocation(line: 690, column: 25, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !212, line: 690, column: 25)
!2187 = distinct !DILexicalBlock(scope: !2167, file: !212, line: 690, column: 25)
!2188 = !DILocation(line: 690, column: 25, scope: !2187)
!2189 = !DILocation(line: 691, column: 25, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !212, line: 691, column: 25)
!2191 = distinct !DILexicalBlock(scope: !2168, file: !212, line: 691, column: 25)
!2192 = !DILocation(line: 691, column: 25, scope: !2191)
!2193 = !DILocation(line: 692, column: 25, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !212, line: 692, column: 25)
!2195 = distinct !DILexicalBlock(scope: !2168, file: !212, line: 692, column: 25)
!2196 = !DILocation(line: 692, column: 25, scope: !2195)
!2197 = !DILocation(line: 693, column: 38, scope: !2168)
!2198 = !DILocation(line: 693, column: 33, scope: !2168)
!2199 = !DILocation(line: 694, column: 23, scope: !2168)
!2200 = !DILocation(line: 695, column: 30, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2162, file: !212, line: 695, column: 30)
!2202 = !DILocation(line: 695, column: 30, scope: !2162)
!2203 = !DILocation(line: 697, column: 25, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !212, line: 697, column: 25)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !212, line: 697, column: 25)
!2206 = distinct !DILexicalBlock(scope: !2201, file: !212, line: 696, column: 23)
!2207 = !DILocation(line: 697, column: 25, scope: !2205)
!2208 = !DILocation(line: 699, column: 23, scope: !2206)
!2209 = !DILocation(line: 700, column: 35, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2163, file: !212, line: 700, column: 25)
!2211 = !DILocation(line: 700, column: 30, scope: !2210)
!2212 = !DILocation(line: 700, column: 25, scope: !2163)
!2213 = !DILocation(line: 702, column: 21, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !212, line: 702, column: 21)
!2215 = distinct !DILexicalBlock(scope: !2163, file: !212, line: 702, column: 21)
!2216 = !DILocation(line: 702, column: 21, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !212, line: 702, column: 21)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !212, line: 702, column: 21)
!2219 = distinct !DILexicalBlock(scope: !2214, file: !212, line: 702, column: 21)
!2220 = !DILocation(line: 702, column: 21, scope: !2218)
!2221 = !DILocation(line: 702, column: 21, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !212, line: 702, column: 21)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !212, line: 702, column: 21)
!2224 = !DILocation(line: 702, column: 21, scope: !2223)
!2225 = !DILocation(line: 702, column: 21, scope: !2219)
!2226 = !DILocation(line: 0, scope: !2163)
!2227 = !DILocation(line: 703, column: 21, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !212, line: 703, column: 21)
!2229 = distinct !DILexicalBlock(scope: !2163, file: !212, line: 703, column: 21)
!2230 = !DILocation(line: 703, column: 21, scope: !2229)
!2231 = !DILocation(line: 704, column: 25, scope: !2163)
!2232 = !DILocation(line: 686, column: 17, scope: !2164)
!2233 = distinct !{!2233, !2234, !2235}
!2234 = !DILocation(line: 686, column: 17, scope: !2165)
!2235 = !DILocation(line: 705, column: 19, scope: !2165)
!2236 = !DILocation(line: 416, column: 30, scope: !1935)
!2237 = !DILocation(line: 712, column: 34, scope: !1878)
!2238 = !DILocation(line: 715, column: 35, scope: !1878)
!2239 = !DILocation(line: 715, column: 17, scope: !1878)
!2240 = !DILocation(line: 715, column: 47, scope: !1878)
!2241 = !DILocation(line: 715, column: 65, scope: !1878)
!2242 = !DILocation(line: 716, column: 15, scope: !1878)
!2243 = !DILocation(line: 716, column: 11, scope: !1878)
!2244 = !DILocation(line: 712, column: 11, scope: !1826)
!2245 = !DILocation(line: 400, column: 10, scope: !1828)
!2246 = !DILocation(line: 719, column: 5, scope: !1826)
!2247 = !DILocation(line: 720, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1826, file: !212, line: 720, column: 7)
!2249 = !DILocation(line: 720, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2248, file: !212, line: 720, column: 7)
!2251 = !DILocation(line: 720, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !212, line: 720, column: 7)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !212, line: 720, column: 7)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !212, line: 720, column: 7)
!2255 = !DILocation(line: 720, column: 7, scope: !2253)
!2256 = !DILocation(line: 720, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !212, line: 720, column: 7)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !212, line: 720, column: 7)
!2259 = !DILocation(line: 720, column: 7, scope: !2258)
!2260 = !DILocation(line: 720, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !212, line: 720, column: 7)
!2262 = distinct !DILexicalBlock(scope: !2254, file: !212, line: 720, column: 7)
!2263 = !DILocation(line: 720, column: 7, scope: !2262)
!2264 = !DILocation(line: 720, column: 7, scope: !2254)
!2265 = !DILocation(line: 720, column: 7, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !212, line: 720, column: 7)
!2267 = distinct !DILexicalBlock(scope: !2248, file: !212, line: 720, column: 7)
!2268 = !DILocation(line: 720, column: 7, scope: !2267)
!2269 = !DILocation(line: 722, column: 5, scope: !1826)
!2270 = !DILocation(line: 723, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !212, line: 723, column: 7)
!2272 = distinct !DILexicalBlock(scope: !1826, file: !212, line: 723, column: 7)
!2273 = !DILocation(line: 424, column: 9, scope: !1826)
!2274 = !DILocation(line: 723, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !212, line: 723, column: 7)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !212, line: 723, column: 7)
!2277 = distinct !DILexicalBlock(scope: !2271, file: !212, line: 723, column: 7)
!2278 = !DILocation(line: 723, column: 7, scope: !2276)
!2279 = !DILocation(line: 723, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !212, line: 723, column: 7)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !212, line: 723, column: 7)
!2282 = !DILocation(line: 723, column: 7, scope: !2281)
!2283 = !DILocation(line: 723, column: 7, scope: !2277)
!2284 = !DILocation(line: 724, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !212, line: 724, column: 7)
!2286 = distinct !DILexicalBlock(scope: !1826, file: !212, line: 724, column: 7)
!2287 = !DILocation(line: 724, column: 7, scope: !2286)
!2288 = !DILocation(line: 726, column: 13, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !1826, file: !212, line: 726, column: 11)
!2290 = !DILocation(line: 726, column: 11, scope: !1826)
!2291 = !DILocation(line: 728, column: 5, scope: !1827)
!2292 = !DILocation(line: 400, column: 75, scope: !1827)
!2293 = !DILocation(line: 400, column: 3, scope: !1827)
!2294 = distinct !{!2294, !1953, !2295}
!2295 = !DILocation(line: 728, column: 5, scope: !1828)
!2296 = !DILocation(line: 730, column: 11, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !1799, file: !212, line: 730, column: 7)
!2298 = !DILocation(line: 730, column: 16, scope: !2297)
!2299 = !DILocation(line: 738, column: 51, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !1799, file: !212, line: 738, column: 7)
!2301 = !DILocation(line: 739, column: 10, scope: !2300)
!2302 = !DILocation(line: 741, column: 11, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !212, line: 741, column: 11)
!2304 = distinct !DILexicalBlock(scope: !2300, file: !212, line: 740, column: 5)
!2305 = !DILocation(line: 741, column: 11, scope: !2304)
!2306 = !DILocation(line: 742, column: 16, scope: !2303)
!2307 = !DILocation(line: 742, column: 9, scope: !2303)
!2308 = !DILocation(line: 746, column: 18, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2303, file: !212, line: 746, column: 16)
!2310 = !DILocation(line: 746, column: 32, scope: !2309)
!2311 = !DILocation(line: 746, column: 29, scope: !2309)
!2312 = !DILocation(line: 755, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1799, file: !212, line: 755, column: 7)
!2314 = !DILocation(line: 755, column: 20, scope: !2313)
!2315 = !DILocation(line: 756, column: 12, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !212, line: 756, column: 5)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !212, line: 756, column: 5)
!2318 = !DILocation(line: 756, column: 5, scope: !2317)
!2319 = !DILocation(line: 757, column: 7, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !212, line: 757, column: 7)
!2321 = distinct !DILexicalBlock(scope: !2316, file: !212, line: 757, column: 7)
!2322 = !DILocation(line: 757, column: 7, scope: !2321)
!2323 = !DILocation(line: 756, column: 39, scope: !2316)
!2324 = distinct !{!2324, !2318, !2325}
!2325 = !DILocation(line: 757, column: 7, scope: !2317)
!2326 = !DILocation(line: 759, column: 11, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !1799, file: !212, line: 759, column: 7)
!2328 = !DILocation(line: 759, column: 7, scope: !1799)
!2329 = !DILocation(line: 760, column: 5, scope: !2327)
!2330 = !DILocation(line: 760, column: 17, scope: !2327)
!2331 = !DILocation(line: 763, column: 2, scope: !1799)
!2332 = !DILocation(line: 766, column: 51, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1799, file: !212, line: 766, column: 7)
!2334 = !DILocation(line: 766, column: 21, scope: !2333)
!2335 = !DILocation(line: 770, column: 42, scope: !1799)
!2336 = !DILocation(line: 768, column: 10, scope: !1799)
!2337 = !DILocation(line: 768, column: 3, scope: !1799)
!2338 = !DILocation(line: 772, column: 1, scope: !1799)
!2339 = distinct !DISubprogram(name: "gettext_quote", scope: !212, file: !212, line: 207, type: !2340, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!6, !6, !214}
!2342 = !{!2343, !2344, !2345, !2346}
!2343 = !DILocalVariable(name: "msgid", arg: 1, scope: !2339, file: !212, line: 207, type: !6)
!2344 = !DILocalVariable(name: "s", arg: 2, scope: !2339, file: !212, line: 207, type: !214)
!2345 = !DILocalVariable(name: "translation", scope: !2339, file: !212, line: 209, type: !6)
!2346 = !DILocalVariable(name: "locale_code", scope: !2339, file: !212, line: 210, type: !6)
!2347 = !DILocation(line: 0, scope: !2339)
!2348 = !DILocation(line: 209, column: 29, scope: !2339)
!2349 = !DILocation(line: 212, column: 19, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2339, file: !212, line: 212, column: 7)
!2351 = !DILocation(line: 212, column: 7, scope: !2339)
!2352 = !DILocation(line: 233, column: 17, scope: !2339)
!2353 = !DILocalVariable(name: "s1", arg: 1, scope: !2354, file: !2355, line: 160, type: !6)
!2354 = distinct !DISubprogram(name: "strcaseeq0", scope: !2355, file: !2355, line: 160, type: !2356, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2358)
!2355 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2358 = !{!2353, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368}
!2359 = !DILocalVariable(name: "s2", arg: 2, scope: !2354, file: !2355, line: 160, type: !6)
!2360 = !DILocalVariable(name: "s20", arg: 3, scope: !2354, file: !2355, line: 160, type: !8)
!2361 = !DILocalVariable(name: "s21", arg: 4, scope: !2354, file: !2355, line: 160, type: !8)
!2362 = !DILocalVariable(name: "s22", arg: 5, scope: !2354, file: !2355, line: 160, type: !8)
!2363 = !DILocalVariable(name: "s23", arg: 6, scope: !2354, file: !2355, line: 160, type: !8)
!2364 = !DILocalVariable(name: "s24", arg: 7, scope: !2354, file: !2355, line: 160, type: !8)
!2365 = !DILocalVariable(name: "s25", arg: 8, scope: !2354, file: !2355, line: 160, type: !8)
!2366 = !DILocalVariable(name: "s26", arg: 9, scope: !2354, file: !2355, line: 160, type: !8)
!2367 = !DILocalVariable(name: "s27", arg: 10, scope: !2354, file: !2355, line: 160, type: !8)
!2368 = !DILocalVariable(name: "s28", arg: 11, scope: !2354, file: !2355, line: 160, type: !8)
!2369 = !DILocation(line: 0, scope: !2354, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 234, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2339, file: !212, line: 234, column: 7)
!2372 = !DILocation(line: 162, column: 7, scope: !2373, inlinedAt: !2370)
!2373 = distinct !DILexicalBlock(scope: !2354, file: !2355, line: 162, column: 7)
!2374 = !DILocalVariable(name: "s1", arg: 1, scope: !2375, file: !2355, line: 146, type: !6)
!2375 = distinct !DISubprogram(name: "strcaseeq1", scope: !2355, file: !2355, line: 146, type: !2376, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2378 = !{!2374, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387}
!2379 = !DILocalVariable(name: "s2", arg: 2, scope: !2375, file: !2355, line: 146, type: !6)
!2380 = !DILocalVariable(name: "s21", arg: 3, scope: !2375, file: !2355, line: 146, type: !8)
!2381 = !DILocalVariable(name: "s22", arg: 4, scope: !2375, file: !2355, line: 146, type: !8)
!2382 = !DILocalVariable(name: "s23", arg: 5, scope: !2375, file: !2355, line: 146, type: !8)
!2383 = !DILocalVariable(name: "s24", arg: 6, scope: !2375, file: !2355, line: 146, type: !8)
!2384 = !DILocalVariable(name: "s25", arg: 7, scope: !2375, file: !2355, line: 146, type: !8)
!2385 = !DILocalVariable(name: "s26", arg: 8, scope: !2375, file: !2355, line: 146, type: !8)
!2386 = !DILocalVariable(name: "s27", arg: 9, scope: !2375, file: !2355, line: 146, type: !8)
!2387 = !DILocalVariable(name: "s28", arg: 10, scope: !2375, file: !2355, line: 146, type: !8)
!2388 = !DILocation(line: 0, scope: !2375, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 167, column: 16, scope: !2390, inlinedAt: !2370)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !2355, line: 164, column: 11)
!2391 = distinct !DILexicalBlock(scope: !2373, file: !2355, line: 163, column: 5)
!2392 = !DILocation(line: 148, column: 7, scope: !2393, inlinedAt: !2389)
!2393 = distinct !DILexicalBlock(scope: !2375, file: !2355, line: 148, column: 7)
!2394 = !DILocalVariable(name: "s1", arg: 1, scope: !2395, file: !2355, line: 132, type: !6)
!2395 = distinct !DISubprogram(name: "strcaseeq2", scope: !2355, file: !2355, line: 132, type: !2396, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2398 = !{!2394, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406}
!2399 = !DILocalVariable(name: "s2", arg: 2, scope: !2395, file: !2355, line: 132, type: !6)
!2400 = !DILocalVariable(name: "s22", arg: 3, scope: !2395, file: !2355, line: 132, type: !8)
!2401 = !DILocalVariable(name: "s23", arg: 4, scope: !2395, file: !2355, line: 132, type: !8)
!2402 = !DILocalVariable(name: "s24", arg: 5, scope: !2395, file: !2355, line: 132, type: !8)
!2403 = !DILocalVariable(name: "s25", arg: 6, scope: !2395, file: !2355, line: 132, type: !8)
!2404 = !DILocalVariable(name: "s26", arg: 7, scope: !2395, file: !2355, line: 132, type: !8)
!2405 = !DILocalVariable(name: "s27", arg: 8, scope: !2395, file: !2355, line: 132, type: !8)
!2406 = !DILocalVariable(name: "s28", arg: 9, scope: !2395, file: !2355, line: 132, type: !8)
!2407 = !DILocation(line: 0, scope: !2395, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 153, column: 16, scope: !2409, inlinedAt: !2389)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !2355, line: 150, column: 11)
!2410 = distinct !DILexicalBlock(scope: !2393, file: !2355, line: 149, column: 5)
!2411 = !DILocation(line: 134, column: 7, scope: !2412, inlinedAt: !2408)
!2412 = distinct !DILexicalBlock(scope: !2395, file: !2355, line: 134, column: 7)
!2413 = !DILocalVariable(name: "s1", arg: 1, scope: !2414, file: !2355, line: 118, type: !6)
!2414 = distinct !DISubprogram(name: "strcaseeq3", scope: !2355, file: !2355, line: 118, type: !2415, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2417 = !{!2413, !2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2418 = !DILocalVariable(name: "s2", arg: 2, scope: !2414, file: !2355, line: 118, type: !6)
!2419 = !DILocalVariable(name: "s23", arg: 3, scope: !2414, file: !2355, line: 118, type: !8)
!2420 = !DILocalVariable(name: "s24", arg: 4, scope: !2414, file: !2355, line: 118, type: !8)
!2421 = !DILocalVariable(name: "s25", arg: 5, scope: !2414, file: !2355, line: 118, type: !8)
!2422 = !DILocalVariable(name: "s26", arg: 6, scope: !2414, file: !2355, line: 118, type: !8)
!2423 = !DILocalVariable(name: "s27", arg: 7, scope: !2414, file: !2355, line: 118, type: !8)
!2424 = !DILocalVariable(name: "s28", arg: 8, scope: !2414, file: !2355, line: 118, type: !8)
!2425 = !DILocation(line: 0, scope: !2414, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 139, column: 16, scope: !2427, inlinedAt: !2408)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !2355, line: 136, column: 11)
!2428 = distinct !DILexicalBlock(scope: !2412, file: !2355, line: 135, column: 5)
!2429 = !DILocation(line: 120, column: 7, scope: !2430, inlinedAt: !2426)
!2430 = distinct !DILexicalBlock(scope: !2414, file: !2355, line: 120, column: 7)
!2431 = !DILocation(line: 120, column: 7, scope: !2414, inlinedAt: !2426)
!2432 = !DILocalVariable(name: "s1", arg: 1, scope: !2433, file: !2355, line: 104, type: !6)
!2433 = distinct !DISubprogram(name: "strcaseeq4", scope: !2355, file: !2355, line: 104, type: !2434, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2436 = !{!2432, !2437, !2438, !2439, !2440, !2441, !2442}
!2437 = !DILocalVariable(name: "s2", arg: 2, scope: !2433, file: !2355, line: 104, type: !6)
!2438 = !DILocalVariable(name: "s24", arg: 3, scope: !2433, file: !2355, line: 104, type: !8)
!2439 = !DILocalVariable(name: "s25", arg: 4, scope: !2433, file: !2355, line: 104, type: !8)
!2440 = !DILocalVariable(name: "s26", arg: 5, scope: !2433, file: !2355, line: 104, type: !8)
!2441 = !DILocalVariable(name: "s27", arg: 6, scope: !2433, file: !2355, line: 104, type: !8)
!2442 = !DILocalVariable(name: "s28", arg: 7, scope: !2433, file: !2355, line: 104, type: !8)
!2443 = !DILocation(line: 0, scope: !2433, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 125, column: 16, scope: !2445, inlinedAt: !2426)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !2355, line: 122, column: 11)
!2446 = distinct !DILexicalBlock(scope: !2430, file: !2355, line: 121, column: 5)
!2447 = !DILocation(line: 106, column: 7, scope: !2448, inlinedAt: !2444)
!2448 = distinct !DILexicalBlock(scope: !2433, file: !2355, line: 106, column: 7)
!2449 = !DILocation(line: 106, column: 7, scope: !2433, inlinedAt: !2444)
!2450 = !DILocalVariable(name: "s1", arg: 1, scope: !2451, file: !2355, line: 90, type: !6)
!2451 = distinct !DISubprogram(name: "strcaseeq5", scope: !2355, file: !2355, line: 90, type: !2452, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!18, !6, !6, !8, !8, !8, !8}
!2454 = !{!2450, !2455, !2456, !2457, !2458, !2459}
!2455 = !DILocalVariable(name: "s2", arg: 2, scope: !2451, file: !2355, line: 90, type: !6)
!2456 = !DILocalVariable(name: "s25", arg: 3, scope: !2451, file: !2355, line: 90, type: !8)
!2457 = !DILocalVariable(name: "s26", arg: 4, scope: !2451, file: !2355, line: 90, type: !8)
!2458 = !DILocalVariable(name: "s27", arg: 5, scope: !2451, file: !2355, line: 90, type: !8)
!2459 = !DILocalVariable(name: "s28", arg: 6, scope: !2451, file: !2355, line: 90, type: !8)
!2460 = !DILocation(line: 0, scope: !2451, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 111, column: 16, scope: !2462, inlinedAt: !2444)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !2355, line: 108, column: 11)
!2463 = distinct !DILexicalBlock(scope: !2448, file: !2355, line: 107, column: 5)
!2464 = !DILocation(line: 92, column: 7, scope: !2465, inlinedAt: !2461)
!2465 = distinct !DILexicalBlock(scope: !2451, file: !2355, line: 92, column: 7)
!2466 = !DILocation(line: 92, column: 7, scope: !2451, inlinedAt: !2461)
!2467 = !DILocation(line: 235, column: 12, scope: !2371)
!2468 = !DILocation(line: 235, column: 21, scope: !2371)
!2469 = !DILocation(line: 235, column: 5, scope: !2371)
!2470 = !DILocation(line: 0, scope: !2375, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 167, column: 16, scope: !2390, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 236, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2339, file: !212, line: 236, column: 7)
!2474 = !DILocation(line: 148, column: 7, scope: !2393, inlinedAt: !2471)
!2475 = !DILocation(line: 0, scope: !2395, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 153, column: 16, scope: !2409, inlinedAt: !2471)
!2477 = !DILocation(line: 134, column: 7, scope: !2412, inlinedAt: !2476)
!2478 = !DILocation(line: 134, column: 7, scope: !2395, inlinedAt: !2476)
!2479 = !DILocation(line: 0, scope: !2414, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 139, column: 16, scope: !2427, inlinedAt: !2476)
!2481 = !DILocation(line: 120, column: 7, scope: !2430, inlinedAt: !2480)
!2482 = !DILocation(line: 120, column: 7, scope: !2414, inlinedAt: !2480)
!2483 = !DILocation(line: 0, scope: !2433, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 125, column: 16, scope: !2445, inlinedAt: !2480)
!2485 = !DILocation(line: 106, column: 7, scope: !2448, inlinedAt: !2484)
!2486 = !DILocation(line: 106, column: 7, scope: !2433, inlinedAt: !2484)
!2487 = !DILocation(line: 0, scope: !2451, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 111, column: 16, scope: !2462, inlinedAt: !2484)
!2489 = !DILocation(line: 92, column: 7, scope: !2465, inlinedAt: !2488)
!2490 = !DILocation(line: 92, column: 7, scope: !2451, inlinedAt: !2488)
!2491 = !DILocalVariable(name: "s1", arg: 1, scope: !2492, file: !2355, line: 76, type: !6)
!2492 = distinct !DISubprogram(name: "strcaseeq6", scope: !2355, file: !2355, line: 76, type: !2493, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!18, !6, !6, !8, !8, !8}
!2495 = !{!2491, !2496, !2497, !2498, !2499}
!2496 = !DILocalVariable(name: "s2", arg: 2, scope: !2492, file: !2355, line: 76, type: !6)
!2497 = !DILocalVariable(name: "s26", arg: 3, scope: !2492, file: !2355, line: 76, type: !8)
!2498 = !DILocalVariable(name: "s27", arg: 4, scope: !2492, file: !2355, line: 76, type: !8)
!2499 = !DILocalVariable(name: "s28", arg: 5, scope: !2492, file: !2355, line: 76, type: !8)
!2500 = !DILocation(line: 0, scope: !2492, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 97, column: 16, scope: !2502, inlinedAt: !2488)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !2355, line: 94, column: 11)
!2503 = distinct !DILexicalBlock(scope: !2465, file: !2355, line: 93, column: 5)
!2504 = !DILocation(line: 78, column: 7, scope: !2505, inlinedAt: !2501)
!2505 = distinct !DILexicalBlock(scope: !2492, file: !2355, line: 78, column: 7)
!2506 = !DILocation(line: 78, column: 7, scope: !2492, inlinedAt: !2501)
!2507 = !DILocalVariable(name: "s1", arg: 1, scope: !2508, file: !2355, line: 62, type: !6)
!2508 = distinct !DISubprogram(name: "strcaseeq7", scope: !2355, file: !2355, line: 62, type: !2509, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!18, !6, !6, !8, !8}
!2511 = !{!2507, !2512, !2513, !2514}
!2512 = !DILocalVariable(name: "s2", arg: 2, scope: !2508, file: !2355, line: 62, type: !6)
!2513 = !DILocalVariable(name: "s27", arg: 3, scope: !2508, file: !2355, line: 62, type: !8)
!2514 = !DILocalVariable(name: "s28", arg: 4, scope: !2508, file: !2355, line: 62, type: !8)
!2515 = !DILocation(line: 0, scope: !2508, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 83, column: 16, scope: !2517, inlinedAt: !2501)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !2355, line: 80, column: 11)
!2518 = distinct !DILexicalBlock(scope: !2505, file: !2355, line: 79, column: 5)
!2519 = !DILocation(line: 64, column: 7, scope: !2520, inlinedAt: !2516)
!2520 = distinct !DILexicalBlock(scope: !2508, file: !2355, line: 64, column: 7)
!2521 = !DILocation(line: 236, column: 7, scope: !2339)
!2522 = !DILocation(line: 237, column: 12, scope: !2473)
!2523 = !DILocation(line: 237, column: 21, scope: !2473)
!2524 = !DILocation(line: 237, column: 5, scope: !2473)
!2525 = !DILocation(line: 239, column: 13, scope: !2339)
!2526 = !DILocation(line: 239, column: 11, scope: !2339)
!2527 = !DILocation(line: 239, column: 3, scope: !2339)
!2528 = !DILocation(line: 240, column: 1, scope: !2339)
!2529 = distinct !DISubprogram(name: "quotearg_alloc", scope: !212, file: !212, line: 799, type: !2530, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!25, !6, !69, !258}
!2532 = !{!2533, !2534, !2535}
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !212, line: 799, type: !6)
!2534 = !DILocalVariable(name: "argsize", arg: 2, scope: !2529, file: !212, line: 799, type: !69)
!2535 = !DILocalVariable(name: "o", arg: 3, scope: !2529, file: !212, line: 800, type: !258)
!2536 = !DILocation(line: 0, scope: !2529)
!2537 = !DILocalVariable(name: "arg", arg: 1, scope: !2538, file: !212, line: 812, type: !6)
!2538 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !212, file: !212, line: 812, type: !2539, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2541)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!25, !6, !69, !555, !258}
!2541 = !{!2537, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549}
!2542 = !DILocalVariable(name: "argsize", arg: 2, scope: !2538, file: !212, line: 812, type: !69)
!2543 = !DILocalVariable(name: "size", arg: 3, scope: !2538, file: !212, line: 812, type: !555)
!2544 = !DILocalVariable(name: "o", arg: 4, scope: !2538, file: !212, line: 813, type: !258)
!2545 = !DILocalVariable(name: "p", scope: !2538, file: !212, line: 815, type: !258)
!2546 = !DILocalVariable(name: "e", scope: !2538, file: !212, line: 816, type: !18)
!2547 = !DILocalVariable(name: "flags", scope: !2538, file: !212, line: 818, type: !18)
!2548 = !DILocalVariable(name: "bufsize", scope: !2538, file: !212, line: 819, type: !69)
!2549 = !DILocalVariable(name: "buf", scope: !2538, file: !212, line: 823, type: !25)
!2550 = !DILocation(line: 0, scope: !2538, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 802, column: 10, scope: !2529)
!2552 = !DILocation(line: 815, column: 37, scope: !2538, inlinedAt: !2551)
!2553 = !DILocation(line: 816, column: 11, scope: !2538, inlinedAt: !2551)
!2554 = !DILocation(line: 818, column: 18, scope: !2538, inlinedAt: !2551)
!2555 = !DILocation(line: 818, column: 24, scope: !2538, inlinedAt: !2551)
!2556 = !DILocation(line: 819, column: 69, scope: !2538, inlinedAt: !2551)
!2557 = !DILocation(line: 820, column: 53, scope: !2538, inlinedAt: !2551)
!2558 = !DILocation(line: 821, column: 49, scope: !2538, inlinedAt: !2551)
!2559 = !DILocation(line: 822, column: 49, scope: !2538, inlinedAt: !2551)
!2560 = !DILocation(line: 819, column: 20, scope: !2538, inlinedAt: !2551)
!2561 = !DILocation(line: 822, column: 62, scope: !2538, inlinedAt: !2551)
!2562 = !DILocalVariable(name: "n", arg: 1, scope: !2563, file: !249, line: 216, type: !69)
!2563 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2564, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!25, !69}
!2566 = !{!2562}
!2567 = !DILocation(line: 0, scope: !2563, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 823, column: 15, scope: !2538, inlinedAt: !2551)
!2569 = !DILocation(line: 218, column: 10, scope: !2563, inlinedAt: !2568)
!2570 = !DILocation(line: 824, column: 60, scope: !2538, inlinedAt: !2551)
!2571 = !DILocation(line: 826, column: 32, scope: !2538, inlinedAt: !2551)
!2572 = !DILocation(line: 826, column: 47, scope: !2538, inlinedAt: !2551)
!2573 = !DILocation(line: 824, column: 3, scope: !2538, inlinedAt: !2551)
!2574 = !DILocation(line: 827, column: 9, scope: !2538, inlinedAt: !2551)
!2575 = !DILocation(line: 802, column: 3, scope: !2529)
!2576 = !DILocation(line: 0, scope: !2538)
!2577 = !DILocation(line: 815, column: 37, scope: !2538)
!2578 = !DILocation(line: 816, column: 11, scope: !2538)
!2579 = !DILocation(line: 818, column: 18, scope: !2538)
!2580 = !DILocation(line: 818, column: 27, scope: !2538)
!2581 = !DILocation(line: 818, column: 24, scope: !2538)
!2582 = !DILocation(line: 819, column: 69, scope: !2538)
!2583 = !DILocation(line: 820, column: 53, scope: !2538)
!2584 = !DILocation(line: 821, column: 49, scope: !2538)
!2585 = !DILocation(line: 822, column: 49, scope: !2538)
!2586 = !DILocation(line: 819, column: 20, scope: !2538)
!2587 = !DILocation(line: 822, column: 62, scope: !2538)
!2588 = !DILocation(line: 0, scope: !2563, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 823, column: 15, scope: !2538)
!2590 = !DILocation(line: 218, column: 10, scope: !2563, inlinedAt: !2589)
!2591 = !DILocation(line: 824, column: 60, scope: !2538)
!2592 = !DILocation(line: 826, column: 32, scope: !2538)
!2593 = !DILocation(line: 826, column: 47, scope: !2538)
!2594 = !DILocation(line: 824, column: 3, scope: !2538)
!2595 = !DILocation(line: 827, column: 9, scope: !2538)
!2596 = !DILocation(line: 828, column: 7, scope: !2538)
!2597 = !DILocation(line: 829, column: 11, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2538, file: !212, line: 828, column: 7)
!2599 = !{!1392, !1392, i64 0}
!2600 = !DILocation(line: 829, column: 5, scope: !2598)
!2601 = !DILocation(line: 830, column: 3, scope: !2538)
!2602 = distinct !DISubprogram(name: "quotearg_free", scope: !212, file: !212, line: 848, type: !316, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2603)
!2603 = !{!2604, !2605}
!2604 = !DILocalVariable(name: "sv", scope: !2602, file: !212, line: 850, type: !339)
!2605 = !DILocalVariable(name: "i", scope: !2602, file: !212, line: 851, type: !18)
!2606 = !DILocation(line: 850, column: 24, scope: !2602)
!2607 = !DILocation(line: 0, scope: !2602)
!2608 = !DILocation(line: 852, column: 19, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !212, line: 852, column: 3)
!2610 = distinct !DILexicalBlock(scope: !2602, file: !212, line: 852, column: 3)
!2611 = !DILocation(line: 852, column: 17, scope: !2609)
!2612 = !DILocation(line: 852, column: 3, scope: !2610)
!2613 = !DILocation(line: 853, column: 17, scope: !2609)
!2614 = !{!2615, !1199, i64 8}
!2615 = !{!"slotvec", !1392, i64 0, !1199, i64 8}
!2616 = !DILocation(line: 853, column: 5, scope: !2609)
!2617 = !DILocation(line: 852, column: 28, scope: !2609)
!2618 = distinct !{!2618, !2612, !2619}
!2619 = !DILocation(line: 853, column: 20, scope: !2610)
!2620 = !DILocation(line: 854, column: 13, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2602, file: !212, line: 854, column: 7)
!2622 = !DILocation(line: 854, column: 17, scope: !2621)
!2623 = !DILocation(line: 854, column: 7, scope: !2602)
!2624 = !DILocation(line: 856, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2621, file: !212, line: 855, column: 5)
!2626 = !DILocation(line: 857, column: 21, scope: !2625)
!2627 = !{!2615, !1392, i64 0}
!2628 = !DILocation(line: 858, column: 20, scope: !2625)
!2629 = !DILocation(line: 859, column: 5, scope: !2625)
!2630 = !DILocation(line: 860, column: 10, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2602, file: !212, line: 860, column: 7)
!2632 = !DILocation(line: 860, column: 7, scope: !2602)
!2633 = !DILocation(line: 862, column: 13, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2631, file: !212, line: 861, column: 5)
!2635 = !DILocation(line: 862, column: 7, scope: !2634)
!2636 = !DILocation(line: 863, column: 15, scope: !2634)
!2637 = !DILocation(line: 864, column: 5, scope: !2634)
!2638 = !DILocation(line: 865, column: 10, scope: !2602)
!2639 = !DILocation(line: 866, column: 1, scope: !2602)
!2640 = distinct !DISubprogram(name: "quotearg_n", scope: !212, file: !212, line: 931, type: !442, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2641)
!2641 = !{!2642, !2643}
!2642 = !DILocalVariable(name: "n", arg: 1, scope: !2640, file: !212, line: 931, type: !18)
!2643 = !DILocalVariable(name: "arg", arg: 2, scope: !2640, file: !212, line: 931, type: !6)
!2644 = !DILocation(line: 0, scope: !2640)
!2645 = !DILocation(line: 933, column: 10, scope: !2640)
!2646 = !DILocation(line: 933, column: 3, scope: !2640)
!2647 = distinct !DISubprogram(name: "quotearg_n_options", scope: !212, file: !212, line: 877, type: !2648, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!25, !18, !6, !69, !258}
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2660, !2661, !2663, !2664, !2665}
!2651 = !DILocalVariable(name: "n", arg: 1, scope: !2647, file: !212, line: 877, type: !18)
!2652 = !DILocalVariable(name: "arg", arg: 2, scope: !2647, file: !212, line: 877, type: !6)
!2653 = !DILocalVariable(name: "argsize", arg: 3, scope: !2647, file: !212, line: 877, type: !69)
!2654 = !DILocalVariable(name: "options", arg: 4, scope: !2647, file: !212, line: 878, type: !258)
!2655 = !DILocalVariable(name: "e", scope: !2647, file: !212, line: 880, type: !18)
!2656 = !DILocalVariable(name: "sv", scope: !2647, file: !212, line: 882, type: !339)
!2657 = !DILocalVariable(name: "preallocated", scope: !2658, file: !212, line: 889, type: !92)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !212, line: 888, column: 5)
!2659 = distinct !DILexicalBlock(scope: !2647, file: !212, line: 887, column: 7)
!2660 = !DILocalVariable(name: "nmax", scope: !2658, file: !212, line: 890, type: !18)
!2661 = !DILocalVariable(name: "size", scope: !2662, file: !212, line: 903, type: !69)
!2662 = distinct !DILexicalBlock(scope: !2647, file: !212, line: 902, column: 3)
!2663 = !DILocalVariable(name: "val", scope: !2662, file: !212, line: 904, type: !25)
!2664 = !DILocalVariable(name: "flags", scope: !2662, file: !212, line: 906, type: !18)
!2665 = !DILocalVariable(name: "qsize", scope: !2662, file: !212, line: 907, type: !69)
!2666 = !DILocation(line: 0, scope: !2647)
!2667 = !DILocation(line: 880, column: 11, scope: !2647)
!2668 = !DILocation(line: 882, column: 24, scope: !2647)
!2669 = !DILocation(line: 884, column: 9, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2647, file: !212, line: 884, column: 7)
!2671 = !DILocation(line: 884, column: 7, scope: !2647)
!2672 = !DILocation(line: 885, column: 5, scope: !2670)
!2673 = !DILocation(line: 887, column: 7, scope: !2659)
!2674 = !DILocation(line: 887, column: 14, scope: !2659)
!2675 = !DILocation(line: 887, column: 7, scope: !2647)
!2676 = !DILocation(line: 889, column: 31, scope: !2658)
!2677 = !DILocation(line: 0, scope: !2658)
!2678 = !DILocation(line: 892, column: 16, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2658, file: !212, line: 892, column: 11)
!2680 = !DILocation(line: 892, column: 11, scope: !2658)
!2681 = !DILocation(line: 893, column: 9, scope: !2679)
!2682 = !DILocation(line: 895, column: 32, scope: !2658)
!2683 = !DILocation(line: 895, column: 61, scope: !2658)
!2684 = !DILocation(line: 895, column: 58, scope: !2658)
!2685 = !DILocation(line: 895, column: 66, scope: !2658)
!2686 = !DILocation(line: 895, column: 22, scope: !2658)
!2687 = !DILocation(line: 895, column: 15, scope: !2658)
!2688 = !DILocation(line: 896, column: 11, scope: !2658)
!2689 = !DILocation(line: 897, column: 15, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2658, file: !212, line: 896, column: 11)
!2691 = !{i64 0, i64 8, !2599, i64 8, i64 8, !1198}
!2692 = !DILocation(line: 897, column: 9, scope: !2690)
!2693 = !DILocation(line: 898, column: 20, scope: !2658)
!2694 = !DILocation(line: 898, column: 18, scope: !2658)
!2695 = !DILocation(line: 898, column: 15, scope: !2658)
!2696 = !DILocation(line: 898, column: 38, scope: !2658)
!2697 = !DILocation(line: 898, column: 31, scope: !2658)
!2698 = !DILocation(line: 898, column: 48, scope: !2658)
!2699 = !DILocation(line: 0, scope: !2097, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 898, column: 7, scope: !2658)
!2701 = !DILocation(line: 71, column: 10, scope: !2097, inlinedAt: !2700)
!2702 = !DILocation(line: 899, column: 14, scope: !2658)
!2703 = !DILocation(line: 900, column: 5, scope: !2658)
!2704 = !DILocation(line: 903, column: 19, scope: !2662)
!2705 = !DILocation(line: 903, column: 25, scope: !2662)
!2706 = !DILocation(line: 0, scope: !2662)
!2707 = !DILocation(line: 904, column: 23, scope: !2662)
!2708 = !DILocation(line: 906, column: 26, scope: !2662)
!2709 = !DILocation(line: 906, column: 32, scope: !2662)
!2710 = !DILocation(line: 908, column: 55, scope: !2662)
!2711 = !DILocation(line: 909, column: 46, scope: !2662)
!2712 = !DILocation(line: 910, column: 55, scope: !2662)
!2713 = !DILocation(line: 911, column: 55, scope: !2662)
!2714 = !DILocation(line: 907, column: 20, scope: !2662)
!2715 = !DILocation(line: 913, column: 14, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2662, file: !212, line: 913, column: 9)
!2717 = !DILocation(line: 913, column: 9, scope: !2662)
!2718 = !DILocation(line: 915, column: 35, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !212, line: 914, column: 7)
!2720 = !DILocation(line: 915, column: 20, scope: !2719)
!2721 = !DILocation(line: 916, column: 17, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !212, line: 916, column: 13)
!2723 = !DILocation(line: 916, column: 13, scope: !2719)
!2724 = !DILocation(line: 917, column: 11, scope: !2722)
!2725 = !DILocation(line: 0, scope: !2563, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 918, column: 27, scope: !2719)
!2727 = !DILocation(line: 218, column: 10, scope: !2563, inlinedAt: !2726)
!2728 = !DILocation(line: 918, column: 19, scope: !2719)
!2729 = !DILocation(line: 919, column: 69, scope: !2719)
!2730 = !DILocation(line: 921, column: 44, scope: !2719)
!2731 = !DILocation(line: 922, column: 44, scope: !2719)
!2732 = !DILocation(line: 919, column: 9, scope: !2719)
!2733 = !DILocation(line: 923, column: 7, scope: !2719)
!2734 = !DILocation(line: 925, column: 11, scope: !2662)
!2735 = !DILocation(line: 926, column: 5, scope: !2662)
!2736 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !212, file: !212, line: 937, type: !2737, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!25, !18, !6, !69}
!2739 = !{!2740, !2741, !2742}
!2740 = !DILocalVariable(name: "n", arg: 1, scope: !2736, file: !212, line: 937, type: !18)
!2741 = !DILocalVariable(name: "arg", arg: 2, scope: !2736, file: !212, line: 937, type: !6)
!2742 = !DILocalVariable(name: "argsize", arg: 3, scope: !2736, file: !212, line: 937, type: !69)
!2743 = !DILocation(line: 0, scope: !2736)
!2744 = !DILocation(line: 939, column: 10, scope: !2736)
!2745 = !DILocation(line: 939, column: 3, scope: !2736)
!2746 = distinct !DISubprogram(name: "quotearg", scope: !212, file: !212, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2747)
!2747 = !{!2748}
!2748 = !DILocalVariable(name: "arg", arg: 1, scope: !2746, file: !212, line: 943, type: !6)
!2749 = !DILocation(line: 0, scope: !2746)
!2750 = !DILocation(line: 0, scope: !2640, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 945, column: 10, scope: !2746)
!2752 = !DILocation(line: 933, column: 10, scope: !2640, inlinedAt: !2751)
!2753 = !DILocation(line: 945, column: 3, scope: !2746)
!2754 = distinct !DISubprogram(name: "quotearg_mem", scope: !212, file: !212, line: 949, type: !2755, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!25, !6, !69}
!2757 = !{!2758, !2759}
!2758 = !DILocalVariable(name: "arg", arg: 1, scope: !2754, file: !212, line: 949, type: !6)
!2759 = !DILocalVariable(name: "argsize", arg: 2, scope: !2754, file: !212, line: 949, type: !69)
!2760 = !DILocation(line: 0, scope: !2754)
!2761 = !DILocation(line: 0, scope: !2736, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 951, column: 10, scope: !2754)
!2763 = !DILocation(line: 939, column: 10, scope: !2736, inlinedAt: !2762)
!2764 = !DILocation(line: 951, column: 3, scope: !2754)
!2765 = distinct !DISubprogram(name: "quotearg_n_style", scope: !212, file: !212, line: 955, type: !2766, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!25, !18, !214, !6}
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DILocalVariable(name: "n", arg: 1, scope: !2765, file: !212, line: 955, type: !18)
!2770 = !DILocalVariable(name: "s", arg: 2, scope: !2765, file: !212, line: 955, type: !214)
!2771 = !DILocalVariable(name: "arg", arg: 3, scope: !2765, file: !212, line: 955, type: !6)
!2772 = !DILocalVariable(name: "o", scope: !2765, file: !212, line: 957, type: !259)
!2773 = !DILocation(line: 0, scope: !2765)
!2774 = !DILocation(line: 957, column: 3, scope: !2765)
!2775 = !DILocation(line: 957, column: 32, scope: !2765)
!2776 = !DILocalVariable(name: "style", arg: 1, scope: !2777, file: !212, line: 193, type: !214)
!2777 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !212, file: !212, line: 193, type: !2778, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!260, !214}
!2780 = !{!2776, !2781}
!2781 = !DILocalVariable(name: "o", scope: !2777, file: !212, line: 195, type: !260)
!2782 = !DILocation(line: 0, scope: !2777, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 957, column: 36, scope: !2765)
!2784 = !DILocation(line: 195, column: 26, scope: !2777, inlinedAt: !2783)
!2785 = !{!2786}
!2786 = distinct !{!2786, !2787, !"quoting_options_from_style: argument 0"}
!2787 = distinct !{!2787, !"quoting_options_from_style"}
!2788 = !DILocation(line: 196, column: 13, scope: !2789, inlinedAt: !2783)
!2789 = distinct !DILexicalBlock(scope: !2777, file: !212, line: 196, column: 7)
!2790 = !DILocation(line: 196, column: 7, scope: !2777, inlinedAt: !2783)
!2791 = !DILocation(line: 197, column: 5, scope: !2789, inlinedAt: !2783)
!2792 = !DILocation(line: 198, column: 5, scope: !2777, inlinedAt: !2783)
!2793 = !DILocation(line: 198, column: 11, scope: !2777, inlinedAt: !2783)
!2794 = !DILocation(line: 958, column: 10, scope: !2765)
!2795 = !DILocation(line: 959, column: 1, scope: !2765)
!2796 = !DILocation(line: 958, column: 3, scope: !2765)
!2797 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !212, file: !212, line: 962, type: !2798, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!25, !18, !214, !6, !69}
!2800 = !{!2801, !2802, !2803, !2804, !2805}
!2801 = !DILocalVariable(name: "n", arg: 1, scope: !2797, file: !212, line: 962, type: !18)
!2802 = !DILocalVariable(name: "s", arg: 2, scope: !2797, file: !212, line: 962, type: !214)
!2803 = !DILocalVariable(name: "arg", arg: 3, scope: !2797, file: !212, line: 963, type: !6)
!2804 = !DILocalVariable(name: "argsize", arg: 4, scope: !2797, file: !212, line: 963, type: !69)
!2805 = !DILocalVariable(name: "o", scope: !2797, file: !212, line: 965, type: !259)
!2806 = !DILocation(line: 0, scope: !2797)
!2807 = !DILocation(line: 965, column: 3, scope: !2797)
!2808 = !DILocation(line: 965, column: 32, scope: !2797)
!2809 = !DILocation(line: 0, scope: !2777, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 965, column: 36, scope: !2797)
!2811 = !DILocation(line: 195, column: 26, scope: !2777, inlinedAt: !2810)
!2812 = !{!2813}
!2813 = distinct !{!2813, !2814, !"quoting_options_from_style: argument 0"}
!2814 = distinct !{!2814, !"quoting_options_from_style"}
!2815 = !DILocation(line: 196, column: 13, scope: !2789, inlinedAt: !2810)
!2816 = !DILocation(line: 196, column: 7, scope: !2777, inlinedAt: !2810)
!2817 = !DILocation(line: 197, column: 5, scope: !2789, inlinedAt: !2810)
!2818 = !DILocation(line: 198, column: 5, scope: !2777, inlinedAt: !2810)
!2819 = !DILocation(line: 198, column: 11, scope: !2777, inlinedAt: !2810)
!2820 = !DILocation(line: 966, column: 10, scope: !2797)
!2821 = !DILocation(line: 967, column: 1, scope: !2797)
!2822 = !DILocation(line: 966, column: 3, scope: !2797)
!2823 = distinct !DISubprogram(name: "quotearg_style", scope: !212, file: !212, line: 970, type: !478, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2824)
!2824 = !{!2825, !2826}
!2825 = !DILocalVariable(name: "s", arg: 1, scope: !2823, file: !212, line: 970, type: !214)
!2826 = !DILocalVariable(name: "arg", arg: 2, scope: !2823, file: !212, line: 970, type: !6)
!2827 = !DILocation(line: 195, column: 26, scope: !2777, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 957, column: 36, scope: !2765, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 972, column: 10, scope: !2823)
!2830 = !DILocation(line: 957, column: 32, scope: !2765, inlinedAt: !2829)
!2831 = !DILocation(line: 0, scope: !2823)
!2832 = !DILocation(line: 0, scope: !2765, inlinedAt: !2829)
!2833 = !DILocation(line: 957, column: 3, scope: !2765, inlinedAt: !2829)
!2834 = !DILocation(line: 0, scope: !2777, inlinedAt: !2828)
!2835 = !{!2836}
!2836 = distinct !{!2836, !2837, !"quoting_options_from_style: argument 0"}
!2837 = distinct !{!2837, !"quoting_options_from_style"}
!2838 = !DILocation(line: 196, column: 13, scope: !2789, inlinedAt: !2828)
!2839 = !DILocation(line: 196, column: 7, scope: !2777, inlinedAt: !2828)
!2840 = !DILocation(line: 197, column: 5, scope: !2789, inlinedAt: !2828)
!2841 = !DILocation(line: 198, column: 5, scope: !2777, inlinedAt: !2828)
!2842 = !DILocation(line: 198, column: 11, scope: !2777, inlinedAt: !2828)
!2843 = !DILocation(line: 958, column: 10, scope: !2765, inlinedAt: !2829)
!2844 = !DILocation(line: 959, column: 1, scope: !2765, inlinedAt: !2829)
!2845 = !DILocation(line: 972, column: 3, scope: !2823)
!2846 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !212, file: !212, line: 976, type: !2847, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!25, !214, !6, !69}
!2849 = !{!2850, !2851, !2852}
!2850 = !DILocalVariable(name: "s", arg: 1, scope: !2846, file: !212, line: 976, type: !214)
!2851 = !DILocalVariable(name: "arg", arg: 2, scope: !2846, file: !212, line: 976, type: !6)
!2852 = !DILocalVariable(name: "argsize", arg: 3, scope: !2846, file: !212, line: 976, type: !69)
!2853 = !DILocation(line: 195, column: 26, scope: !2777, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 965, column: 36, scope: !2797, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 978, column: 10, scope: !2846)
!2856 = !DILocation(line: 965, column: 32, scope: !2797, inlinedAt: !2855)
!2857 = !DILocation(line: 0, scope: !2846)
!2858 = !DILocation(line: 0, scope: !2797, inlinedAt: !2855)
!2859 = !DILocation(line: 965, column: 3, scope: !2797, inlinedAt: !2855)
!2860 = !DILocation(line: 0, scope: !2777, inlinedAt: !2854)
!2861 = !{!2862}
!2862 = distinct !{!2862, !2863, !"quoting_options_from_style: argument 0"}
!2863 = distinct !{!2863, !"quoting_options_from_style"}
!2864 = !DILocation(line: 196, column: 13, scope: !2789, inlinedAt: !2854)
!2865 = !DILocation(line: 196, column: 7, scope: !2777, inlinedAt: !2854)
!2866 = !DILocation(line: 197, column: 5, scope: !2789, inlinedAt: !2854)
!2867 = !DILocation(line: 198, column: 5, scope: !2777, inlinedAt: !2854)
!2868 = !DILocation(line: 198, column: 11, scope: !2777, inlinedAt: !2854)
!2869 = !DILocation(line: 966, column: 10, scope: !2797, inlinedAt: !2855)
!2870 = !DILocation(line: 967, column: 1, scope: !2797, inlinedAt: !2855)
!2871 = !DILocation(line: 978, column: 3, scope: !2846)
!2872 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !212, file: !212, line: 982, type: !2873, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!25, !6, !69, !8}
!2875 = !{!2876, !2877, !2878, !2879}
!2876 = !DILocalVariable(name: "arg", arg: 1, scope: !2872, file: !212, line: 982, type: !6)
!2877 = !DILocalVariable(name: "argsize", arg: 2, scope: !2872, file: !212, line: 982, type: !69)
!2878 = !DILocalVariable(name: "ch", arg: 3, scope: !2872, file: !212, line: 982, type: !8)
!2879 = !DILocalVariable(name: "options", scope: !2872, file: !212, line: 984, type: !260)
!2880 = !DILocation(line: 0, scope: !2872)
!2881 = !DILocation(line: 984, column: 3, scope: !2872)
!2882 = !DILocation(line: 984, column: 26, scope: !2872)
!2883 = !DILocation(line: 985, column: 13, scope: !2872)
!2884 = !{i64 0, i64 4, !1522, i64 4, i64 4, !1286, i64 8, i64 32, !1522, i64 40, i64 8, !1198, i64 48, i64 8, !1198}
!2885 = !DILocation(line: 0, scope: !1710, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 986, column: 3, scope: !2872)
!2887 = !DILocation(line: 156, column: 62, scope: !1710, inlinedAt: !2886)
!2888 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2886)
!2889 = !DILocation(line: 157, column: 15, scope: !1710, inlinedAt: !2886)
!2890 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2886)
!2891 = !DILocation(line: 158, column: 15, scope: !1710, inlinedAt: !2886)
!2892 = !DILocation(line: 158, column: 25, scope: !1710, inlinedAt: !2886)
!2893 = !DILocation(line: 159, column: 18, scope: !1710, inlinedAt: !2886)
!2894 = !DILocation(line: 159, column: 23, scope: !1710, inlinedAt: !2886)
!2895 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2886)
!2896 = !DILocation(line: 987, column: 10, scope: !2872)
!2897 = !DILocation(line: 988, column: 1, scope: !2872)
!2898 = !DILocation(line: 987, column: 3, scope: !2872)
!2899 = distinct !DISubprogram(name: "quotearg_char", scope: !212, file: !212, line: 991, type: !2900, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!25, !6, !8}
!2902 = !{!2903, !2904}
!2903 = !DILocalVariable(name: "arg", arg: 1, scope: !2899, file: !212, line: 991, type: !6)
!2904 = !DILocalVariable(name: "ch", arg: 2, scope: !2899, file: !212, line: 991, type: !8)
!2905 = !DILocation(line: 984, column: 26, scope: !2872, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 993, column: 10, scope: !2899)
!2907 = !DILocation(line: 0, scope: !2899)
!2908 = !DILocation(line: 0, scope: !2872, inlinedAt: !2906)
!2909 = !DILocation(line: 984, column: 3, scope: !2872, inlinedAt: !2906)
!2910 = !DILocation(line: 985, column: 13, scope: !2872, inlinedAt: !2906)
!2911 = !DILocation(line: 0, scope: !1710, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 986, column: 3, scope: !2872, inlinedAt: !2906)
!2913 = !DILocation(line: 156, column: 62, scope: !1710, inlinedAt: !2912)
!2914 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2912)
!2915 = !DILocation(line: 157, column: 15, scope: !1710, inlinedAt: !2912)
!2916 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2912)
!2917 = !DILocation(line: 158, column: 15, scope: !1710, inlinedAt: !2912)
!2918 = !DILocation(line: 158, column: 25, scope: !1710, inlinedAt: !2912)
!2919 = !DILocation(line: 159, column: 18, scope: !1710, inlinedAt: !2912)
!2920 = !DILocation(line: 159, column: 23, scope: !1710, inlinedAt: !2912)
!2921 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2912)
!2922 = !DILocation(line: 987, column: 10, scope: !2872, inlinedAt: !2906)
!2923 = !DILocation(line: 988, column: 1, scope: !2872, inlinedAt: !2906)
!2924 = !DILocation(line: 993, column: 3, scope: !2899)
!2925 = distinct !DISubprogram(name: "quotearg_colon", scope: !212, file: !212, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2926)
!2926 = !{!2927}
!2927 = !DILocalVariable(name: "arg", arg: 1, scope: !2925, file: !212, line: 997, type: !6)
!2928 = !DILocation(line: 984, column: 26, scope: !2872, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 993, column: 10, scope: !2899, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 999, column: 10, scope: !2925)
!2931 = !DILocation(line: 0, scope: !2925)
!2932 = !DILocation(line: 0, scope: !2899, inlinedAt: !2930)
!2933 = !DILocation(line: 0, scope: !2872, inlinedAt: !2929)
!2934 = !DILocation(line: 984, column: 3, scope: !2872, inlinedAt: !2929)
!2935 = !DILocation(line: 985, column: 13, scope: !2872, inlinedAt: !2929)
!2936 = !DILocation(line: 0, scope: !1710, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 986, column: 3, scope: !2872, inlinedAt: !2929)
!2938 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2937)
!2939 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2937)
!2940 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2937)
!2941 = !DILocation(line: 987, column: 10, scope: !2872, inlinedAt: !2929)
!2942 = !DILocation(line: 988, column: 1, scope: !2872, inlinedAt: !2929)
!2943 = !DILocation(line: 999, column: 3, scope: !2925)
!2944 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !212, file: !212, line: 1003, type: !2755, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2945)
!2945 = !{!2946, !2947}
!2946 = !DILocalVariable(name: "arg", arg: 1, scope: !2944, file: !212, line: 1003, type: !6)
!2947 = !DILocalVariable(name: "argsize", arg: 2, scope: !2944, file: !212, line: 1003, type: !69)
!2948 = !DILocation(line: 984, column: 26, scope: !2872, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 1005, column: 10, scope: !2944)
!2950 = !DILocation(line: 0, scope: !2944)
!2951 = !DILocation(line: 0, scope: !2872, inlinedAt: !2949)
!2952 = !DILocation(line: 984, column: 3, scope: !2872, inlinedAt: !2949)
!2953 = !DILocation(line: 985, column: 13, scope: !2872, inlinedAt: !2949)
!2954 = !DILocation(line: 0, scope: !1710, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 986, column: 3, scope: !2872, inlinedAt: !2949)
!2956 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2955)
!2957 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2955)
!2958 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2955)
!2959 = !DILocation(line: 987, column: 10, scope: !2872, inlinedAt: !2949)
!2960 = !DILocation(line: 988, column: 1, scope: !2872, inlinedAt: !2949)
!2961 = !DILocation(line: 1005, column: 3, scope: !2944)
!2962 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !212, file: !212, line: 1009, type: !2766, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2963)
!2963 = !{!2964, !2965, !2966, !2967}
!2964 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !212, line: 1009, type: !18)
!2965 = !DILocalVariable(name: "s", arg: 2, scope: !2962, file: !212, line: 1009, type: !214)
!2966 = !DILocalVariable(name: "arg", arg: 3, scope: !2962, file: !212, line: 1009, type: !6)
!2967 = !DILocalVariable(name: "options", scope: !2962, file: !212, line: 1011, type: !260)
!2968 = !DILocation(line: 195, column: 26, scope: !2777, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1012, column: 13, scope: !2962)
!2970 = !DILocation(line: 0, scope: !2962)
!2971 = !DILocation(line: 1011, column: 3, scope: !2962)
!2972 = !DILocation(line: 1011, column: 26, scope: !2962)
!2973 = !DILocation(line: 1012, column: 13, scope: !2962)
!2974 = !DILocation(line: 0, scope: !2777, inlinedAt: !2969)
!2975 = !{!2976}
!2976 = distinct !{!2976, !2977, !"quoting_options_from_style: argument 0"}
!2977 = distinct !{!2977, !"quoting_options_from_style"}
!2978 = !DILocation(line: 196, column: 13, scope: !2789, inlinedAt: !2969)
!2979 = !DILocation(line: 196, column: 7, scope: !2777, inlinedAt: !2969)
!2980 = !DILocation(line: 197, column: 5, scope: !2789, inlinedAt: !2969)
!2981 = !DILocation(line: 0, scope: !1710, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 1013, column: 3, scope: !2962)
!2983 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2982)
!2984 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2982)
!2985 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2982)
!2986 = !DILocation(line: 1014, column: 10, scope: !2962)
!2987 = !DILocation(line: 1015, column: 1, scope: !2962)
!2988 = !DILocation(line: 1014, column: 3, scope: !2962)
!2989 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !212, file: !212, line: 1018, type: !2990, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!25, !18, !6, !6, !6}
!2992 = !{!2993, !2994, !2995, !2996}
!2993 = !DILocalVariable(name: "n", arg: 1, scope: !2989, file: !212, line: 1018, type: !18)
!2994 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2989, file: !212, line: 1018, type: !6)
!2995 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2989, file: !212, line: 1019, type: !6)
!2996 = !DILocalVariable(name: "arg", arg: 4, scope: !2989, file: !212, line: 1019, type: !6)
!2997 = !DILocalVariable(name: "o", scope: !2998, file: !212, line: 1030, type: !260)
!2998 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !212, file: !212, line: 1026, type: !2999, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!25, !18, !6, !6, !6, !69}
!3001 = !{!3002, !3003, !3004, !3005, !3006, !2997}
!3002 = !DILocalVariable(name: "n", arg: 1, scope: !2998, file: !212, line: 1026, type: !18)
!3003 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2998, file: !212, line: 1026, type: !6)
!3004 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2998, file: !212, line: 1027, type: !6)
!3005 = !DILocalVariable(name: "arg", arg: 4, scope: !2998, file: !212, line: 1028, type: !6)
!3006 = !DILocalVariable(name: "argsize", arg: 5, scope: !2998, file: !212, line: 1028, type: !69)
!3007 = !DILocation(line: 1030, column: 26, scope: !2998, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 1021, column: 10, scope: !2989)
!3009 = !DILocation(line: 0, scope: !2989)
!3010 = !DILocation(line: 0, scope: !2998, inlinedAt: !3008)
!3011 = !DILocation(line: 1030, column: 3, scope: !2998, inlinedAt: !3008)
!3012 = !DILocation(line: 1030, column: 30, scope: !2998, inlinedAt: !3008)
!3013 = !DILocation(line: 0, scope: !1751, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 1031, column: 3, scope: !2998, inlinedAt: !3008)
!3015 = !DILocation(line: 184, column: 6, scope: !1751, inlinedAt: !3014)
!3016 = !DILocation(line: 184, column: 12, scope: !1751, inlinedAt: !3014)
!3017 = !DILocation(line: 185, column: 8, scope: !1765, inlinedAt: !3014)
!3018 = !DILocation(line: 185, column: 23, scope: !1765, inlinedAt: !3014)
!3019 = !DILocation(line: 185, column: 19, scope: !1765, inlinedAt: !3014)
!3020 = !DILocation(line: 186, column: 5, scope: !1765, inlinedAt: !3014)
!3021 = !DILocation(line: 187, column: 6, scope: !1751, inlinedAt: !3014)
!3022 = !DILocation(line: 187, column: 17, scope: !1751, inlinedAt: !3014)
!3023 = !DILocation(line: 188, column: 6, scope: !1751, inlinedAt: !3014)
!3024 = !DILocation(line: 188, column: 18, scope: !1751, inlinedAt: !3014)
!3025 = !DILocation(line: 1032, column: 10, scope: !2998, inlinedAt: !3008)
!3026 = !DILocation(line: 1033, column: 1, scope: !2998, inlinedAt: !3008)
!3027 = !DILocation(line: 1021, column: 3, scope: !2989)
!3028 = !DILocation(line: 0, scope: !2998)
!3029 = !DILocation(line: 1030, column: 3, scope: !2998)
!3030 = !DILocation(line: 1030, column: 26, scope: !2998)
!3031 = !DILocation(line: 1030, column: 30, scope: !2998)
!3032 = !DILocation(line: 0, scope: !1751, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 1031, column: 3, scope: !2998)
!3034 = !DILocation(line: 184, column: 6, scope: !1751, inlinedAt: !3033)
!3035 = !DILocation(line: 184, column: 12, scope: !1751, inlinedAt: !3033)
!3036 = !DILocation(line: 185, column: 8, scope: !1765, inlinedAt: !3033)
!3037 = !DILocation(line: 185, column: 23, scope: !1765, inlinedAt: !3033)
!3038 = !DILocation(line: 185, column: 19, scope: !1765, inlinedAt: !3033)
!3039 = !DILocation(line: 186, column: 5, scope: !1765, inlinedAt: !3033)
!3040 = !DILocation(line: 187, column: 6, scope: !1751, inlinedAt: !3033)
!3041 = !DILocation(line: 187, column: 17, scope: !1751, inlinedAt: !3033)
!3042 = !DILocation(line: 188, column: 6, scope: !1751, inlinedAt: !3033)
!3043 = !DILocation(line: 188, column: 18, scope: !1751, inlinedAt: !3033)
!3044 = !DILocation(line: 1032, column: 10, scope: !2998)
!3045 = !DILocation(line: 1033, column: 1, scope: !2998)
!3046 = !DILocation(line: 1032, column: 3, scope: !2998)
!3047 = distinct !DISubprogram(name: "quotearg_custom", scope: !212, file: !212, line: 1036, type: !3048, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!25, !6, !6, !6}
!3050 = !{!3051, !3052, !3053}
!3051 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3047, file: !212, line: 1036, type: !6)
!3052 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3047, file: !212, line: 1036, type: !6)
!3053 = !DILocalVariable(name: "arg", arg: 3, scope: !3047, file: !212, line: 1037, type: !6)
!3054 = !DILocation(line: 1030, column: 26, scope: !2998, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 1021, column: 10, scope: !2989, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 1039, column: 10, scope: !3047)
!3057 = !DILocation(line: 0, scope: !3047)
!3058 = !DILocation(line: 0, scope: !2989, inlinedAt: !3056)
!3059 = !DILocation(line: 0, scope: !2998, inlinedAt: !3055)
!3060 = !DILocation(line: 1030, column: 3, scope: !2998, inlinedAt: !3055)
!3061 = !DILocation(line: 1030, column: 30, scope: !2998, inlinedAt: !3055)
!3062 = !DILocation(line: 0, scope: !1751, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 1031, column: 3, scope: !2998, inlinedAt: !3055)
!3064 = !DILocation(line: 184, column: 6, scope: !1751, inlinedAt: !3063)
!3065 = !DILocation(line: 184, column: 12, scope: !1751, inlinedAt: !3063)
!3066 = !DILocation(line: 185, column: 8, scope: !1765, inlinedAt: !3063)
!3067 = !DILocation(line: 185, column: 23, scope: !1765, inlinedAt: !3063)
!3068 = !DILocation(line: 185, column: 19, scope: !1765, inlinedAt: !3063)
!3069 = !DILocation(line: 186, column: 5, scope: !1765, inlinedAt: !3063)
!3070 = !DILocation(line: 187, column: 6, scope: !1751, inlinedAt: !3063)
!3071 = !DILocation(line: 187, column: 17, scope: !1751, inlinedAt: !3063)
!3072 = !DILocation(line: 188, column: 6, scope: !1751, inlinedAt: !3063)
!3073 = !DILocation(line: 188, column: 18, scope: !1751, inlinedAt: !3063)
!3074 = !DILocation(line: 1032, column: 10, scope: !2998, inlinedAt: !3055)
!3075 = !DILocation(line: 1033, column: 1, scope: !2998, inlinedAt: !3055)
!3076 = !DILocation(line: 1039, column: 3, scope: !3047)
!3077 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !212, file: !212, line: 1043, type: !3078, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!25, !6, !6, !6, !69}
!3080 = !{!3081, !3082, !3083, !3084}
!3081 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3077, file: !212, line: 1043, type: !6)
!3082 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3077, file: !212, line: 1043, type: !6)
!3083 = !DILocalVariable(name: "arg", arg: 3, scope: !3077, file: !212, line: 1044, type: !6)
!3084 = !DILocalVariable(name: "argsize", arg: 4, scope: !3077, file: !212, line: 1044, type: !69)
!3085 = !DILocation(line: 1030, column: 26, scope: !2998, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 1046, column: 10, scope: !3077)
!3087 = !DILocation(line: 0, scope: !3077)
!3088 = !DILocation(line: 0, scope: !2998, inlinedAt: !3086)
!3089 = !DILocation(line: 1030, column: 3, scope: !2998, inlinedAt: !3086)
!3090 = !DILocation(line: 1030, column: 30, scope: !2998, inlinedAt: !3086)
!3091 = !DILocation(line: 0, scope: !1751, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 1031, column: 3, scope: !2998, inlinedAt: !3086)
!3093 = !DILocation(line: 184, column: 6, scope: !1751, inlinedAt: !3092)
!3094 = !DILocation(line: 184, column: 12, scope: !1751, inlinedAt: !3092)
!3095 = !DILocation(line: 185, column: 8, scope: !1765, inlinedAt: !3092)
!3096 = !DILocation(line: 185, column: 23, scope: !1765, inlinedAt: !3092)
!3097 = !DILocation(line: 185, column: 19, scope: !1765, inlinedAt: !3092)
!3098 = !DILocation(line: 186, column: 5, scope: !1765, inlinedAt: !3092)
!3099 = !DILocation(line: 187, column: 6, scope: !1751, inlinedAt: !3092)
!3100 = !DILocation(line: 187, column: 17, scope: !1751, inlinedAt: !3092)
!3101 = !DILocation(line: 188, column: 6, scope: !1751, inlinedAt: !3092)
!3102 = !DILocation(line: 188, column: 18, scope: !1751, inlinedAt: !3092)
!3103 = !DILocation(line: 1032, column: 10, scope: !2998, inlinedAt: !3086)
!3104 = !DILocation(line: 1033, column: 1, scope: !2998, inlinedAt: !3086)
!3105 = !DILocation(line: 1046, column: 3, scope: !3077)
!3106 = distinct !DISubprogram(name: "quote_n_mem", scope: !212, file: !212, line: 1061, type: !3107, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!6, !18, !6, !69}
!3109 = !{!3110, !3111, !3112}
!3110 = !DILocalVariable(name: "n", arg: 1, scope: !3106, file: !212, line: 1061, type: !18)
!3111 = !DILocalVariable(name: "arg", arg: 2, scope: !3106, file: !212, line: 1061, type: !6)
!3112 = !DILocalVariable(name: "argsize", arg: 3, scope: !3106, file: !212, line: 1061, type: !69)
!3113 = !DILocation(line: 0, scope: !3106)
!3114 = !DILocation(line: 1063, column: 10, scope: !3106)
!3115 = !DILocation(line: 1063, column: 3, scope: !3106)
!3116 = distinct !DISubprogram(name: "quote_mem", scope: !212, file: !212, line: 1067, type: !3117, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!6, !6, !69}
!3119 = !{!3120, !3121}
!3120 = !DILocalVariable(name: "arg", arg: 1, scope: !3116, file: !212, line: 1067, type: !6)
!3121 = !DILocalVariable(name: "argsize", arg: 2, scope: !3116, file: !212, line: 1067, type: !69)
!3122 = !DILocation(line: 0, scope: !3116)
!3123 = !DILocation(line: 0, scope: !3106, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 1069, column: 10, scope: !3116)
!3125 = !DILocation(line: 1063, column: 10, scope: !3106, inlinedAt: !3124)
!3126 = !DILocation(line: 1069, column: 3, scope: !3116)
!3127 = distinct !DISubprogram(name: "quote_n", scope: !212, file: !212, line: 1073, type: !3128, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!6, !18, !6}
!3130 = !{!3131, !3132}
!3131 = !DILocalVariable(name: "n", arg: 1, scope: !3127, file: !212, line: 1073, type: !18)
!3132 = !DILocalVariable(name: "arg", arg: 2, scope: !3127, file: !212, line: 1073, type: !6)
!3133 = !DILocation(line: 0, scope: !3127)
!3134 = !DILocation(line: 0, scope: !3106, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 1075, column: 10, scope: !3127)
!3136 = !DILocation(line: 1063, column: 10, scope: !3106, inlinedAt: !3135)
!3137 = !DILocation(line: 1075, column: 3, scope: !3127)
!3138 = distinct !DISubprogram(name: "quote", scope: !212, file: !212, line: 1079, type: !3139, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!6, !6}
!3141 = !{!3142}
!3142 = !DILocalVariable(name: "arg", arg: 1, scope: !3138, file: !212, line: 1079, type: !6)
!3143 = !DILocation(line: 0, scope: !3138)
!3144 = !DILocation(line: 0, scope: !3127, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1081, column: 10, scope: !3138)
!3146 = !DILocation(line: 0, scope: !3106, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 1075, column: 10, scope: !3127, inlinedAt: !3145)
!3148 = !DILocation(line: 1063, column: 10, scope: !3106, inlinedAt: !3147)
!3149 = !DILocation(line: 1081, column: 3, scope: !3138)
!3150 = distinct !DISubprogram(name: "version_etc_arn", scope: !507, file: !507, line: 61, type: !3151, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3156)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !3153, !6, !6, !6, !3155, !69}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1385, line: 7, baseType: !517)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162}
!3157 = !DILocalVariable(name: "stream", arg: 1, scope: !3150, file: !507, line: 61, type: !3153)
!3158 = !DILocalVariable(name: "command_name", arg: 2, scope: !3150, file: !507, line: 62, type: !6)
!3159 = !DILocalVariable(name: "package", arg: 3, scope: !3150, file: !507, line: 62, type: !6)
!3160 = !DILocalVariable(name: "version", arg: 4, scope: !3150, file: !507, line: 63, type: !6)
!3161 = !DILocalVariable(name: "authors", arg: 5, scope: !3150, file: !507, line: 64, type: !3155)
!3162 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3150, file: !507, line: 64, type: !69)
!3163 = !DILocation(line: 0, scope: !3150)
!3164 = !DILocation(line: 66, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3150, file: !507, line: 66, column: 7)
!3166 = !DILocation(line: 66, column: 7, scope: !3150)
!3167 = !DILocation(line: 67, column: 5, scope: !3165)
!3168 = !DILocation(line: 69, column: 5, scope: !3165)
!3169 = !DILocation(line: 83, column: 3, scope: !3150)
!3170 = !DILocation(line: 85, column: 3, scope: !3150)
!3171 = !DILocation(line: 88, column: 3, scope: !3150)
!3172 = !DILocation(line: 95, column: 3, scope: !3150)
!3173 = !DILocation(line: 97, column: 3, scope: !3150)
!3174 = !DILocation(line: 105, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3150, file: !507, line: 98, column: 5)
!3176 = !DILocation(line: 106, column: 7, scope: !3175)
!3177 = !DILocation(line: 109, column: 7, scope: !3175)
!3178 = !DILocation(line: 110, column: 7, scope: !3175)
!3179 = !DILocation(line: 113, column: 7, scope: !3175)
!3180 = !DILocation(line: 115, column: 7, scope: !3175)
!3181 = !DILocation(line: 120, column: 7, scope: !3175)
!3182 = !DILocation(line: 122, column: 7, scope: !3175)
!3183 = !DILocation(line: 127, column: 7, scope: !3175)
!3184 = !DILocation(line: 129, column: 7, scope: !3175)
!3185 = !DILocation(line: 134, column: 7, scope: !3175)
!3186 = !DILocation(line: 137, column: 7, scope: !3175)
!3187 = !DILocation(line: 142, column: 7, scope: !3175)
!3188 = !DILocation(line: 145, column: 7, scope: !3175)
!3189 = !DILocation(line: 150, column: 7, scope: !3175)
!3190 = !DILocation(line: 154, column: 7, scope: !3175)
!3191 = !DILocation(line: 159, column: 7, scope: !3175)
!3192 = !DILocation(line: 163, column: 7, scope: !3175)
!3193 = !DILocation(line: 170, column: 7, scope: !3175)
!3194 = !DILocation(line: 174, column: 7, scope: !3175)
!3195 = !DILocation(line: 176, column: 1, scope: !3150)
!3196 = distinct !DISubprogram(name: "version_etc_ar", scope: !507, file: !507, line: 183, type: !3197, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !3153, !6, !6, !6, !3155}
!3199 = !{!3200, !3201, !3202, !3203, !3204, !3205}
!3200 = !DILocalVariable(name: "stream", arg: 1, scope: !3196, file: !507, line: 183, type: !3153)
!3201 = !DILocalVariable(name: "command_name", arg: 2, scope: !3196, file: !507, line: 184, type: !6)
!3202 = !DILocalVariable(name: "package", arg: 3, scope: !3196, file: !507, line: 184, type: !6)
!3203 = !DILocalVariable(name: "version", arg: 4, scope: !3196, file: !507, line: 185, type: !6)
!3204 = !DILocalVariable(name: "authors", arg: 5, scope: !3196, file: !507, line: 185, type: !3155)
!3205 = !DILocalVariable(name: "n_authors", scope: !3196, file: !507, line: 187, type: !69)
!3206 = !DILocation(line: 0, scope: !3196)
!3207 = !DILocation(line: 189, column: 8, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3196, file: !507, line: 189, column: 3)
!3209 = !DILocation(line: 0, scope: !3208)
!3210 = !DILocation(line: 189, column: 23, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !507, line: 189, column: 3)
!3212 = !DILocation(line: 189, column: 3, scope: !3208)
!3213 = !DILocation(line: 189, column: 52, scope: !3211)
!3214 = distinct !{!3214, !3212, !3215}
!3215 = !DILocation(line: 190, column: 5, scope: !3208)
!3216 = !DILocation(line: 191, column: 3, scope: !3196)
!3217 = !DILocation(line: 192, column: 1, scope: !3196)
!3218 = distinct !DISubprogram(name: "version_etc_va", scope: !507, file: !507, line: 199, type: !3219, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3228)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !3153, !6, !6, !6, !3221}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !507, line: 192, size: 192, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3222, file: !507, line: 192, baseType: !159, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3222, file: !507, line: 192, baseType: !159, size: 32, offset: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3222, file: !507, line: 192, baseType: !67, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3222, file: !507, line: 192, baseType: !67, size: 64, offset: 128)
!3228 = !{!3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3229 = !DILocalVariable(name: "stream", arg: 1, scope: !3218, file: !507, line: 199, type: !3153)
!3230 = !DILocalVariable(name: "command_name", arg: 2, scope: !3218, file: !507, line: 200, type: !6)
!3231 = !DILocalVariable(name: "package", arg: 3, scope: !3218, file: !507, line: 200, type: !6)
!3232 = !DILocalVariable(name: "version", arg: 4, scope: !3218, file: !507, line: 201, type: !6)
!3233 = !DILocalVariable(name: "authors", arg: 5, scope: !3218, file: !507, line: 201, type: !3221)
!3234 = !DILocalVariable(name: "n_authors", scope: !3218, file: !507, line: 203, type: !69)
!3235 = !DILocalVariable(name: "authtab", scope: !3218, file: !507, line: 204, type: !3236)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !326)
!3237 = !DILocation(line: 0, scope: !3218)
!3238 = !DILocation(line: 204, column: 3, scope: !3218)
!3239 = !DILocation(line: 204, column: 15, scope: !3218)
!3240 = !DILocation(line: 0, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !507, line: 206, column: 3)
!3242 = distinct !DILexicalBlock(scope: !3218, file: !507, line: 206, column: 3)
!3243 = !DILocation(line: 208, column: 35, scope: !3241)
!3244 = !DILocation(line: 208, column: 14, scope: !3241)
!3245 = !DILocation(line: 208, column: 33, scope: !3241)
!3246 = !DILocation(line: 208, column: 67, scope: !3241)
!3247 = !DILocation(line: 206, column: 3, scope: !3242)
!3248 = !DILocation(line: 0, scope: !3242)
!3249 = !DILocation(line: 211, column: 3, scope: !3218)
!3250 = !DILocation(line: 213, column: 1, scope: !3218)
!3251 = distinct !DISubprogram(name: "version_etc", scope: !507, file: !507, line: 230, type: !3252, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{null, !3153, !6, !6, !6, null}
!3254 = !{!3255, !3256, !3257, !3258, !3259}
!3255 = !DILocalVariable(name: "stream", arg: 1, scope: !3251, file: !507, line: 230, type: !3153)
!3256 = !DILocalVariable(name: "command_name", arg: 2, scope: !3251, file: !507, line: 231, type: !6)
!3257 = !DILocalVariable(name: "package", arg: 3, scope: !3251, file: !507, line: 231, type: !6)
!3258 = !DILocalVariable(name: "version", arg: 4, scope: !3251, file: !507, line: 232, type: !6)
!3259 = !DILocalVariable(name: "authors", scope: !3251, file: !507, line: 234, type: !3260)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !3261)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1583, line: 32, baseType: !3262)
!3262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !507, line: 234, baseType: !3263)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3222, size: 192, elements: !52)
!3264 = !DILocation(line: 0, scope: !3251)
!3265 = !DILocation(line: 234, column: 3, scope: !3251)
!3266 = !DILocation(line: 234, column: 11, scope: !3251)
!3267 = !DILocation(line: 236, column: 3, scope: !3251)
!3268 = !DILocation(line: 237, column: 3, scope: !3251)
!3269 = !DILocation(line: 238, column: 3, scope: !3251)
!3270 = !DILocation(line: 239, column: 1, scope: !3251)
!3271 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !507, file: !507, line: 242, type: !316, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !4)
!3272 = !DILocation(line: 244, column: 3, scope: !3271)
!3273 = !DILocation(line: 249, column: 3, scope: !3271)
!3274 = !DILocation(line: 255, column: 3, scope: !3271)
!3275 = !DILocation(line: 260, column: 3, scope: !3271)
!3276 = !DILocation(line: 262, column: 1, scope: !3271)
!3277 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !3278, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!67, !69, !69}
!3280 = !{!3281, !3282}
!3281 = !DILocalVariable(name: "n", arg: 1, scope: !3277, file: !249, line: 99, type: !69)
!3282 = !DILocalVariable(name: "s", arg: 2, scope: !3277, file: !249, line: 99, type: !69)
!3283 = !DILocation(line: 0, scope: !3277)
!3284 = !DILocation(line: 101, column: 7, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3277, file: !249, line: 101, column: 7)
!3286 = !DILocation(line: 101, column: 7, scope: !3277)
!3287 = !DILocation(line: 102, column: 5, scope: !3285)
!3288 = !DILocation(line: 103, column: 21, scope: !3277)
!3289 = !DILocalVariable(name: "n", arg: 1, scope: !3290, file: !549, line: 39, type: !69)
!3290 = distinct !DISubprogram(name: "xmalloc", scope: !549, file: !549, line: 39, type: !3291, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!67, !69}
!3293 = !{!3289, !3294}
!3294 = !DILocalVariable(name: "p", scope: !3290, file: !549, line: 41, type: !67)
!3295 = !DILocation(line: 0, scope: !3290, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 103, column: 10, scope: !3277)
!3297 = !DILocation(line: 41, column: 13, scope: !3290, inlinedAt: !3296)
!3298 = !DILocation(line: 42, column: 8, scope: !3299, inlinedAt: !3296)
!3299 = distinct !DILexicalBlock(scope: !3290, file: !549, line: 42, column: 7)
!3300 = !DILocation(line: 42, column: 15, scope: !3299, inlinedAt: !3296)
!3301 = !DILocation(line: 42, column: 10, scope: !3299, inlinedAt: !3296)
!3302 = !DILocation(line: 43, column: 5, scope: !3299, inlinedAt: !3296)
!3303 = !DILocation(line: 103, column: 3, scope: !3277)
!3304 = !DILocation(line: 0, scope: !3290)
!3305 = !DILocation(line: 41, column: 13, scope: !3290)
!3306 = !DILocation(line: 42, column: 8, scope: !3299)
!3307 = !DILocation(line: 42, column: 15, scope: !3299)
!3308 = !DILocation(line: 42, column: 10, scope: !3299)
!3309 = !DILocation(line: 43, column: 5, scope: !3299)
!3310 = !DILocation(line: 44, column: 3, scope: !3290)
!3311 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !3312, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!67, !67, !69, !69}
!3314 = !{!3315, !3316, !3317}
!3315 = !DILocalVariable(name: "p", arg: 1, scope: !3311, file: !249, line: 112, type: !67)
!3316 = !DILocalVariable(name: "n", arg: 2, scope: !3311, file: !249, line: 112, type: !69)
!3317 = !DILocalVariable(name: "s", arg: 3, scope: !3311, file: !249, line: 112, type: !69)
!3318 = !DILocation(line: 0, scope: !3311)
!3319 = !DILocation(line: 114, column: 7, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3311, file: !249, line: 114, column: 7)
!3321 = !DILocation(line: 114, column: 7, scope: !3311)
!3322 = !DILocation(line: 115, column: 5, scope: !3320)
!3323 = !DILocation(line: 116, column: 25, scope: !3311)
!3324 = !DILocalVariable(name: "p", arg: 1, scope: !3325, file: !549, line: 51, type: !67)
!3325 = distinct !DISubprogram(name: "xrealloc", scope: !549, file: !549, line: 51, type: !3326, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!67, !67, !69}
!3328 = !{!3324, !3329}
!3329 = !DILocalVariable(name: "n", arg: 2, scope: !3325, file: !549, line: 51, type: !69)
!3330 = !DILocation(line: 0, scope: !3325, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 116, column: 10, scope: !3311)
!3332 = !DILocation(line: 53, column: 8, scope: !3333, inlinedAt: !3331)
!3333 = distinct !DILexicalBlock(scope: !3325, file: !549, line: 53, column: 7)
!3334 = !DILocation(line: 53, column: 13, scope: !3333, inlinedAt: !3331)
!3335 = !DILocation(line: 53, column: 10, scope: !3333, inlinedAt: !3331)
!3336 = !DILocation(line: 57, column: 7, scope: !3337, inlinedAt: !3331)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !549, line: 54, column: 5)
!3338 = !DILocation(line: 58, column: 7, scope: !3337, inlinedAt: !3331)
!3339 = !DILocation(line: 61, column: 7, scope: !3325, inlinedAt: !3331)
!3340 = !DILocation(line: 62, column: 8, scope: !3341, inlinedAt: !3331)
!3341 = distinct !DILexicalBlock(scope: !3325, file: !549, line: 62, column: 7)
!3342 = !DILocation(line: 62, column: 13, scope: !3341, inlinedAt: !3331)
!3343 = !DILocation(line: 62, column: 10, scope: !3341, inlinedAt: !3331)
!3344 = !DILocation(line: 63, column: 5, scope: !3341, inlinedAt: !3331)
!3345 = !DILocation(line: 116, column: 3, scope: !3311)
!3346 = !DILocation(line: 0, scope: !3325)
!3347 = !DILocation(line: 53, column: 8, scope: !3333)
!3348 = !DILocation(line: 53, column: 13, scope: !3333)
!3349 = !DILocation(line: 53, column: 10, scope: !3333)
!3350 = !DILocation(line: 57, column: 7, scope: !3337)
!3351 = !DILocation(line: 58, column: 7, scope: !3337)
!3352 = !DILocation(line: 61, column: 7, scope: !3325)
!3353 = !DILocation(line: 62, column: 8, scope: !3341)
!3354 = !DILocation(line: 62, column: 13, scope: !3341)
!3355 = !DILocation(line: 62, column: 10, scope: !3341)
!3356 = !DILocation(line: 63, column: 5, scope: !3341)
!3357 = !DILocation(line: 65, column: 1, scope: !3325)
!3358 = !DILocation(line: 0, scope: !552)
!3359 = !DILocation(line: 176, column: 14, scope: !552)
!3360 = !DILocation(line: 178, column: 9, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !552, file: !249, line: 178, column: 7)
!3362 = !DILocation(line: 178, column: 7, scope: !552)
!3363 = !DILocation(line: 180, column: 13, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !249, line: 180, column: 11)
!3365 = distinct !DILexicalBlock(scope: !3361, file: !249, line: 179, column: 5)
!3366 = !DILocation(line: 180, column: 11, scope: !3365)
!3367 = !DILocation(line: 188, column: 30, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !249, line: 181, column: 9)
!3369 = !DILocation(line: 189, column: 16, scope: !3368)
!3370 = !DILocation(line: 189, column: 13, scope: !3368)
!3371 = !DILocation(line: 190, column: 9, scope: !3368)
!3372 = !DILocation(line: 191, column: 11, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3365, file: !249, line: 191, column: 11)
!3374 = !DILocation(line: 191, column: 11, scope: !3365)
!3375 = !DILocation(line: 206, column: 7, scope: !552)
!3376 = !DILocation(line: 207, column: 25, scope: !552)
!3377 = !DILocation(line: 0, scope: !3325, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 207, column: 10, scope: !552)
!3379 = !DILocation(line: 53, column: 10, scope: !3333, inlinedAt: !3378)
!3380 = !DILocation(line: 192, column: 9, scope: !3373)
!3381 = !DILocation(line: 200, column: 69, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !249, line: 200, column: 11)
!3383 = distinct !DILexicalBlock(scope: !3361, file: !249, line: 195, column: 5)
!3384 = !DILocation(line: 201, column: 11, scope: !3382)
!3385 = !DILocation(line: 200, column: 11, scope: !3383)
!3386 = !DILocation(line: 202, column: 9, scope: !3382)
!3387 = !DILocation(line: 203, column: 14, scope: !3383)
!3388 = !DILocation(line: 203, column: 18, scope: !3383)
!3389 = !DILocation(line: 203, column: 9, scope: !3383)
!3390 = !DILocation(line: 53, column: 8, scope: !3333, inlinedAt: !3378)
!3391 = !DILocation(line: 57, column: 7, scope: !3337, inlinedAt: !3378)
!3392 = !DILocation(line: 58, column: 7, scope: !3337, inlinedAt: !3378)
!3393 = !DILocation(line: 61, column: 7, scope: !3325, inlinedAt: !3378)
!3394 = !DILocation(line: 62, column: 8, scope: !3341, inlinedAt: !3378)
!3395 = !DILocation(line: 62, column: 13, scope: !3341, inlinedAt: !3378)
!3396 = !DILocation(line: 62, column: 10, scope: !3341, inlinedAt: !3378)
!3397 = !DILocation(line: 63, column: 5, scope: !3341, inlinedAt: !3378)
!3398 = !DILocation(line: 207, column: 3, scope: !552)
!3399 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2564, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3400)
!3400 = !{!3401}
!3401 = !DILocalVariable(name: "n", arg: 1, scope: !3399, file: !249, line: 216, type: !69)
!3402 = !DILocation(line: 0, scope: !3399)
!3403 = !DILocation(line: 0, scope: !3290, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 218, column: 10, scope: !3399)
!3405 = !DILocation(line: 41, column: 13, scope: !3290, inlinedAt: !3404)
!3406 = !DILocation(line: 42, column: 8, scope: !3299, inlinedAt: !3404)
!3407 = !DILocation(line: 42, column: 15, scope: !3299, inlinedAt: !3404)
!3408 = !DILocation(line: 42, column: 10, scope: !3299, inlinedAt: !3404)
!3409 = !DILocation(line: 43, column: 5, scope: !3299, inlinedAt: !3404)
!3410 = !DILocation(line: 218, column: 3, scope: !3399)
!3411 = distinct !DISubprogram(name: "x2realloc", scope: !549, file: !549, line: 74, type: !3412, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!67, !67, !555}
!3414 = !{!3415, !3416}
!3415 = !DILocalVariable(name: "p", arg: 1, scope: !3411, file: !549, line: 74, type: !67)
!3416 = !DILocalVariable(name: "pn", arg: 2, scope: !3411, file: !549, line: 74, type: !555)
!3417 = !DILocation(line: 0, scope: !3411)
!3418 = !DILocation(line: 0, scope: !552, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 76, column: 10, scope: !3411)
!3420 = !DILocation(line: 176, column: 14, scope: !552, inlinedAt: !3419)
!3421 = !DILocation(line: 178, column: 9, scope: !3361, inlinedAt: !3419)
!3422 = !DILocation(line: 178, column: 7, scope: !552, inlinedAt: !3419)
!3423 = !DILocation(line: 180, column: 13, scope: !3364, inlinedAt: !3419)
!3424 = !DILocation(line: 180, column: 11, scope: !3365, inlinedAt: !3419)
!3425 = !DILocation(line: 191, column: 11, scope: !3373, inlinedAt: !3419)
!3426 = !DILocation(line: 191, column: 11, scope: !3365, inlinedAt: !3419)
!3427 = !DILocation(line: 206, column: 7, scope: !552, inlinedAt: !3419)
!3428 = !DILocation(line: 0, scope: !3325, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 207, column: 10, scope: !552, inlinedAt: !3419)
!3430 = !DILocation(line: 53, column: 10, scope: !3333, inlinedAt: !3429)
!3431 = !DILocation(line: 192, column: 9, scope: !3373, inlinedAt: !3419)
!3432 = !DILocation(line: 201, column: 11, scope: !3382, inlinedAt: !3419)
!3433 = !DILocation(line: 200, column: 11, scope: !3383, inlinedAt: !3419)
!3434 = !DILocation(line: 202, column: 9, scope: !3382, inlinedAt: !3419)
!3435 = !DILocation(line: 203, column: 14, scope: !3383, inlinedAt: !3419)
!3436 = !DILocation(line: 203, column: 18, scope: !3383, inlinedAt: !3419)
!3437 = !DILocation(line: 203, column: 9, scope: !3383, inlinedAt: !3419)
!3438 = !DILocation(line: 53, column: 8, scope: !3333, inlinedAt: !3429)
!3439 = !DILocation(line: 57, column: 7, scope: !3337, inlinedAt: !3429)
!3440 = !DILocation(line: 58, column: 7, scope: !3337, inlinedAt: !3429)
!3441 = !DILocation(line: 61, column: 7, scope: !3325, inlinedAt: !3429)
!3442 = !DILocation(line: 62, column: 8, scope: !3341, inlinedAt: !3429)
!3443 = !DILocation(line: 62, column: 13, scope: !3341, inlinedAt: !3429)
!3444 = !DILocation(line: 62, column: 10, scope: !3341, inlinedAt: !3429)
!3445 = !DILocation(line: 63, column: 5, scope: !3341, inlinedAt: !3429)
!3446 = !DILocation(line: 76, column: 3, scope: !3411)
!3447 = distinct !DISubprogram(name: "xzalloc", scope: !549, file: !549, line: 84, type: !3291, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3448)
!3448 = !{!3449}
!3449 = !DILocalVariable(name: "n", arg: 1, scope: !3447, file: !549, line: 84, type: !69)
!3450 = !DILocation(line: 0, scope: !3447)
!3451 = !DILocalVariable(name: "n", arg: 1, scope: !3452, file: !549, line: 93, type: !69)
!3452 = distinct !DISubprogram(name: "xcalloc", scope: !549, file: !549, line: 93, type: !3278, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3453)
!3453 = !{!3451, !3454, !3455}
!3454 = !DILocalVariable(name: "s", arg: 2, scope: !3452, file: !549, line: 93, type: !69)
!3455 = !DILocalVariable(name: "p", scope: !3452, file: !549, line: 95, type: !67)
!3456 = !DILocation(line: 0, scope: !3452, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 86, column: 10, scope: !3447)
!3458 = !DILocation(line: 100, column: 7, scope: !3459, inlinedAt: !3457)
!3459 = distinct !DILexicalBlock(scope: !3452, file: !549, line: 100, column: 7)
!3460 = !DILocation(line: 101, column: 7, scope: !3459, inlinedAt: !3457)
!3461 = !DILocation(line: 101, column: 18, scope: !3459, inlinedAt: !3457)
!3462 = !DILocation(line: 101, column: 16, scope: !3459, inlinedAt: !3457)
!3463 = !DILocation(line: 100, column: 7, scope: !3452, inlinedAt: !3457)
!3464 = !DILocation(line: 102, column: 5, scope: !3459, inlinedAt: !3457)
!3465 = !DILocation(line: 86, column: 3, scope: !3447)
!3466 = !DILocation(line: 0, scope: !3452)
!3467 = !DILocation(line: 100, column: 7, scope: !3459)
!3468 = !DILocation(line: 101, column: 7, scope: !3459)
!3469 = !DILocation(line: 101, column: 18, scope: !3459)
!3470 = !DILocation(line: 101, column: 16, scope: !3459)
!3471 = !DILocation(line: 100, column: 7, scope: !3452)
!3472 = !DILocation(line: 102, column: 5, scope: !3459)
!3473 = !DILocation(line: 103, column: 3, scope: !3452)
!3474 = distinct !DISubprogram(name: "xmemdup", scope: !549, file: !549, line: 111, type: !3475, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!67, !252, !69}
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "p", arg: 1, scope: !3474, file: !549, line: 111, type: !252)
!3479 = !DILocalVariable(name: "s", arg: 2, scope: !3474, file: !549, line: 111, type: !69)
!3480 = !DILocation(line: 0, scope: !3474)
!3481 = !DILocation(line: 0, scope: !3290, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 113, column: 18, scope: !3474)
!3483 = !DILocation(line: 41, column: 13, scope: !3290, inlinedAt: !3482)
!3484 = !DILocation(line: 42, column: 8, scope: !3299, inlinedAt: !3482)
!3485 = !DILocation(line: 42, column: 15, scope: !3299, inlinedAt: !3482)
!3486 = !DILocation(line: 42, column: 10, scope: !3299, inlinedAt: !3482)
!3487 = !DILocation(line: 43, column: 5, scope: !3299, inlinedAt: !3482)
!3488 = !DILocalVariable(name: "__dest", arg: 1, scope: !3489, file: !1540, line: 31, type: !1543)
!3489 = distinct !DISubprogram(name: "memcpy", scope: !1540, file: !1540, line: 31, type: !1541, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3490)
!3490 = !{!3488, !3491, !3492}
!3491 = !DILocalVariable(name: "__src", arg: 2, scope: !3489, file: !1540, line: 31, type: !1544)
!3492 = !DILocalVariable(name: "__len", arg: 3, scope: !3489, file: !1540, line: 31, type: !69)
!3493 = !DILocation(line: 0, scope: !3489, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 113, column: 10, scope: !3474)
!3495 = !DILocation(line: 34, column: 10, scope: !3489, inlinedAt: !3494)
!3496 = !DILocation(line: 113, column: 3, scope: !3474)
!3497 = distinct !DISubprogram(name: "xstrdup", scope: !549, file: !549, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3498)
!3498 = !{!3499}
!3499 = !DILocalVariable(name: "string", arg: 1, scope: !3497, file: !549, line: 119, type: !6)
!3500 = !DILocation(line: 0, scope: !3497)
!3501 = !DILocation(line: 121, column: 27, scope: !3497)
!3502 = !DILocation(line: 121, column: 43, scope: !3497)
!3503 = !DILocation(line: 0, scope: !3474, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 121, column: 10, scope: !3497)
!3505 = !DILocation(line: 0, scope: !3290, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 113, column: 18, scope: !3474, inlinedAt: !3504)
!3507 = !DILocation(line: 41, column: 13, scope: !3290, inlinedAt: !3506)
!3508 = !DILocation(line: 42, column: 8, scope: !3299, inlinedAt: !3506)
!3509 = !DILocation(line: 42, column: 15, scope: !3299, inlinedAt: !3506)
!3510 = !DILocation(line: 42, column: 10, scope: !3299, inlinedAt: !3506)
!3511 = !DILocation(line: 43, column: 5, scope: !3299, inlinedAt: !3506)
!3512 = !DILocation(line: 0, scope: !3489, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 113, column: 10, scope: !3474, inlinedAt: !3504)
!3514 = !DILocation(line: 34, column: 10, scope: !3489, inlinedAt: !3513)
!3515 = !DILocation(line: 121, column: 3, scope: !3497)
!3516 = distinct !DISubprogram(name: "xalloc_die", scope: !570, file: !570, line: 32, type: !316, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4)
!3517 = !DILocation(line: 34, column: 10, scope: !3516)
!3518 = !DILocation(line: 34, column: 33, scope: !3516)
!3519 = !DILocation(line: 34, column: 3, scope: !3516)
!3520 = !DILocation(line: 40, column: 3, scope: !3516)
!3521 = distinct !DISubprogram(name: "rpl_calloc", scope: !573, file: !573, line: 42, type: !3278, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3522)
!3522 = !{!3523, !3524, !3525, !3526}
!3523 = !DILocalVariable(name: "n", arg: 1, scope: !3521, file: !573, line: 42, type: !69)
!3524 = !DILocalVariable(name: "s", arg: 2, scope: !3521, file: !573, line: 42, type: !69)
!3525 = !DILocalVariable(name: "result", scope: !3521, file: !573, line: 44, type: !67)
!3526 = !DILocalVariable(name: "bytes", scope: !3527, file: !573, line: 56, type: !69)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !573, line: 53, column: 5)
!3528 = distinct !DILexicalBlock(scope: !3521, file: !573, line: 47, column: 7)
!3529 = !DILocation(line: 0, scope: !3521)
!3530 = !DILocation(line: 47, column: 9, scope: !3528)
!3531 = !DILocation(line: 47, column: 19, scope: !3528)
!3532 = !DILocation(line: 47, column: 14, scope: !3528)
!3533 = !DILocation(line: 0, scope: !3527)
!3534 = !DILocation(line: 57, column: 21, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3527, file: !573, line: 57, column: 11)
!3536 = !DILocation(line: 57, column: 11, scope: !3527)
!3537 = !DILocation(line: 59, column: 11, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3535, file: !573, line: 58, column: 9)
!3539 = !DILocation(line: 59, column: 17, scope: !3538)
!3540 = !DILocation(line: 65, column: 12, scope: !3521)
!3541 = !DILocation(line: 72, column: 3, scope: !3521)
!3542 = !DILocation(line: 73, column: 1, scope: !3521)
!3543 = distinct !DISubprogram(name: "rpl_fcntl", scope: !363, file: !363, line: 202, type: !370, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !3544)
!3544 = !{!3545, !3546, !3547, !3557, !3558, !3561, !3563, !3567}
!3545 = !DILocalVariable(name: "fd", arg: 1, scope: !3543, file: !363, line: 202, type: !18)
!3546 = !DILocalVariable(name: "action", arg: 2, scope: !3543, file: !363, line: 202, type: !18)
!3547 = !DILocalVariable(name: "arg", scope: !3543, file: !363, line: 208, type: !3548)
!3548 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1583, line: 14, baseType: !3549)
!3549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !363, line: 208, baseType: !3550)
!3550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3551, size: 192, elements: !52)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !363, line: 208, size: 192, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3551, file: !363, line: 208, baseType: !159, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3551, file: !363, line: 208, baseType: !159, size: 32, offset: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3551, file: !363, line: 208, baseType: !67, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3551, file: !363, line: 208, baseType: !67, size: 64, offset: 128)
!3557 = !DILocalVariable(name: "result", scope: !3543, file: !363, line: 209, type: !18)
!3558 = !DILocalVariable(name: "target", scope: !3559, file: !363, line: 215, type: !18)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !363, line: 214, column: 7)
!3560 = distinct !DILexicalBlock(scope: !3543, file: !363, line: 212, column: 5)
!3561 = !DILocalVariable(name: "target", scope: !3562, file: !363, line: 222, type: !18)
!3562 = distinct !DILexicalBlock(scope: !3560, file: !363, line: 221, column: 7)
!3563 = !DILocalVariable(name: "x", scope: !3564, file: !363, line: 423, type: !18)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !363, line: 422, column: 13)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !363, line: 260, column: 11)
!3566 = distinct !DILexicalBlock(scope: !3560, file: !363, line: 257, column: 7)
!3567 = !DILocalVariable(name: "p", scope: !3568, file: !363, line: 431, type: !67)
!3568 = distinct !DILexicalBlock(scope: !3565, file: !363, line: 430, column: 13)
!3569 = !DILocation(line: 0, scope: !3543)
!3570 = !DILocation(line: 208, column: 3, scope: !3543)
!3571 = !DILocation(line: 208, column: 11, scope: !3543)
!3572 = !DILocation(line: 210, column: 3, scope: !3543)
!3573 = !DILocation(line: 211, column: 3, scope: !3543)
!3574 = !DILocation(line: 215, column: 22, scope: !3559)
!3575 = !DILocation(line: 0, scope: !3559)
!3576 = !DILocalVariable(name: "fd", arg: 1, scope: !3577, file: !363, line: 447, type: !18)
!3577 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !363, file: !363, line: 447, type: !364, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !3578)
!3578 = !{!3576, !3579, !3580}
!3579 = !DILocalVariable(name: "target", arg: 2, scope: !3577, file: !363, line: 447, type: !18)
!3580 = !DILocalVariable(name: "result", scope: !3577, file: !363, line: 449, type: !18)
!3581 = !DILocation(line: 0, scope: !3577, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 216, column: 18, scope: !3559)
!3583 = !DILocation(line: 482, column: 12, scope: !3577, inlinedAt: !3582)
!3584 = !DILocation(line: 222, column: 22, scope: !3562)
!3585 = !DILocation(line: 0, scope: !3562)
!3586 = !DILocation(line: 0, scope: !362, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 223, column: 18, scope: !3562)
!3588 = !DILocation(line: 508, column: 12, scope: !3589, inlinedAt: !3587)
!3589 = distinct !DILexicalBlock(scope: !362, file: !363, line: 508, column: 7)
!3590 = !DILocation(line: 508, column: 9, scope: !3589, inlinedAt: !3587)
!3591 = !DILocation(line: 508, column: 7, scope: !362, inlinedAt: !3587)
!3592 = !DILocation(line: 510, column: 16, scope: !3593, inlinedAt: !3587)
!3593 = distinct !DILexicalBlock(scope: !3589, file: !363, line: 509, column: 5)
!3594 = !DILocation(line: 511, column: 13, scope: !3595, inlinedAt: !3587)
!3595 = distinct !DILexicalBlock(scope: !3593, file: !363, line: 511, column: 11)
!3596 = !DILocation(line: 511, column: 23, scope: !3595, inlinedAt: !3587)
!3597 = !DILocation(line: 511, column: 26, scope: !3595, inlinedAt: !3587)
!3598 = !DILocation(line: 511, column: 32, scope: !3595, inlinedAt: !3587)
!3599 = !DILocation(line: 511, column: 11, scope: !3593, inlinedAt: !3587)
!3600 = !DILocation(line: 513, column: 30, scope: !3601, inlinedAt: !3587)
!3601 = distinct !DILexicalBlock(scope: !3595, file: !363, line: 512, column: 9)
!3602 = !DILocation(line: 529, column: 19, scope: !383, inlinedAt: !3587)
!3603 = !DILocation(line: 0, scope: !3577, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 521, column: 20, scope: !3605, inlinedAt: !3587)
!3605 = distinct !DILexicalBlock(scope: !3595, file: !363, line: 520, column: 9)
!3606 = !DILocation(line: 482, column: 12, scope: !3577, inlinedAt: !3604)
!3607 = !DILocation(line: 522, column: 22, scope: !3608, inlinedAt: !3587)
!3608 = distinct !DILexicalBlock(scope: !3605, file: !363, line: 522, column: 15)
!3609 = !DILocation(line: 522, column: 15, scope: !3605, inlinedAt: !3587)
!3610 = !DILocation(line: 523, column: 32, scope: !3608, inlinedAt: !3587)
!3611 = !DILocation(line: 523, column: 13, scope: !3608, inlinedAt: !3587)
!3612 = !DILocation(line: 0, scope: !3577, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 528, column: 14, scope: !3589, inlinedAt: !3587)
!3614 = !DILocation(line: 482, column: 12, scope: !3577, inlinedAt: !3613)
!3615 = !DILocation(line: 529, column: 22, scope: !383, inlinedAt: !3587)
!3616 = !DILocation(line: 0, scope: !3589, inlinedAt: !3587)
!3617 = !DILocation(line: 529, column: 9, scope: !383, inlinedAt: !3587)
!3618 = !DILocation(line: 531, column: 19, scope: !382, inlinedAt: !3587)
!3619 = !DILocation(line: 0, scope: !382, inlinedAt: !3587)
!3620 = !DILocation(line: 532, column: 17, scope: !386, inlinedAt: !3587)
!3621 = !DILocation(line: 532, column: 21, scope: !386, inlinedAt: !3587)
!3622 = !DILocation(line: 532, column: 54, scope: !386, inlinedAt: !3587)
!3623 = !DILocation(line: 532, column: 24, scope: !386, inlinedAt: !3587)
!3624 = !DILocation(line: 532, column: 68, scope: !386, inlinedAt: !3587)
!3625 = !DILocation(line: 532, column: 11, scope: !382, inlinedAt: !3587)
!3626 = !DILocation(line: 534, column: 29, scope: !385, inlinedAt: !3587)
!3627 = !DILocation(line: 0, scope: !385, inlinedAt: !3587)
!3628 = !DILocation(line: 535, column: 11, scope: !385, inlinedAt: !3587)
!3629 = !DILocation(line: 536, column: 17, scope: !385, inlinedAt: !3587)
!3630 = !DILocation(line: 538, column: 9, scope: !385, inlinedAt: !3587)
!3631 = !DILocation(line: 328, column: 22, scope: !3565)
!3632 = !DILocation(line: 329, column: 13, scope: !3565)
!3633 = !DILocation(line: 423, column: 23, scope: !3564)
!3634 = !DILocation(line: 0, scope: !3564)
!3635 = !DILocation(line: 424, column: 24, scope: !3564)
!3636 = !DILocation(line: 426, column: 13, scope: !3565)
!3637 = !DILocation(line: 431, column: 25, scope: !3568)
!3638 = !DILocation(line: 0, scope: !3568)
!3639 = !DILocation(line: 432, column: 24, scope: !3568)
!3640 = !DILocation(line: 434, column: 13, scope: !3565)
!3641 = !DILocation(line: 0, scope: !3560)
!3642 = !DILocation(line: 442, column: 3, scope: !3543)
!3643 = !DILocation(line: 444, column: 1, scope: !3543)
!3644 = !DILocation(line: 443, column: 3, scope: !3543)
!3645 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !576, file: !576, line: 86, type: !3646, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3652)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!69, !3648, !6, !69, !3649}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1841, line: 6, baseType: !3651)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !582)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659}
!3653 = !DILocalVariable(name: "pwc", arg: 1, scope: !3645, file: !576, line: 86, type: !3648)
!3654 = !DILocalVariable(name: "s", arg: 2, scope: !3645, file: !576, line: 86, type: !6)
!3655 = !DILocalVariable(name: "n", arg: 3, scope: !3645, file: !576, line: 86, type: !69)
!3656 = !DILocalVariable(name: "ps", arg: 4, scope: !3645, file: !576, line: 86, type: !3649)
!3657 = !DILocalVariable(name: "ret", scope: !3645, file: !576, line: 88, type: !69)
!3658 = !DILocalVariable(name: "wc", scope: !3645, file: !576, line: 89, type: !1845)
!3659 = !DILocalVariable(name: "uc", scope: !3660, file: !576, line: 156, type: !1718)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !576, line: 155, column: 5)
!3661 = distinct !DILexicalBlock(scope: !3645, file: !576, line: 154, column: 7)
!3662 = !DILocation(line: 0, scope: !3645)
!3663 = !DILocation(line: 89, column: 3, scope: !3645)
!3664 = !DILocation(line: 105, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3645, file: !576, line: 105, column: 7)
!3666 = !DILocation(line: 105, column: 7, scope: !3645)
!3667 = !DILocation(line: 145, column: 9, scope: !3645)
!3668 = !DILocation(line: 154, column: 19, scope: !3661)
!3669 = !DILocation(line: 154, column: 31, scope: !3661)
!3670 = !DILocation(line: 154, column: 26, scope: !3661)
!3671 = !DILocation(line: 154, column: 41, scope: !3661)
!3672 = !DILocation(line: 154, column: 7, scope: !3645)
!3673 = !DILocation(line: 156, column: 26, scope: !3660)
!3674 = !DILocation(line: 0, scope: !3660)
!3675 = !DILocation(line: 157, column: 14, scope: !3660)
!3676 = !DILocation(line: 157, column: 12, scope: !3660)
!3677 = !DILocation(line: 163, column: 1, scope: !3645)
!3678 = distinct !DISubprogram(name: "close_stream", scope: !595, file: !595, line: 56, type: !3679, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3683)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!18, !3681}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1385, line: 7, baseType: !602)
!3683 = !{!3684, !3685, !3687, !3688}
!3684 = !DILocalVariable(name: "stream", arg: 1, scope: !3678, file: !595, line: 56, type: !3681)
!3685 = !DILocalVariable(name: "some_pending", scope: !3678, file: !595, line: 58, type: !3686)
!3686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3687 = !DILocalVariable(name: "prev_fail", scope: !3678, file: !595, line: 59, type: !3686)
!3688 = !DILocalVariable(name: "fclose_fail", scope: !3678, file: !595, line: 60, type: !3686)
!3689 = !DILocation(line: 0, scope: !3678)
!3690 = !DILocation(line: 58, column: 30, scope: !3678)
!3691 = !DILocalVariable(name: "__stream", arg: 1, scope: !3692, file: !1380, line: 135, type: !3681)
!3692 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1380, file: !1380, line: 135, type: !3679, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3693)
!3693 = !{!3691}
!3694 = !DILocation(line: 0, scope: !3692, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 59, column: 27, scope: !3678)
!3696 = !DILocation(line: 137, column: 10, scope: !3692, inlinedAt: !3695)
!3697 = !DILocation(line: 59, column: 43, scope: !3678)
!3698 = !DILocation(line: 60, column: 29, scope: !3678)
!3699 = !DILocation(line: 60, column: 45, scope: !3678)
!3700 = !DILocation(line: 70, column: 17, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3678, file: !595, line: 70, column: 7)
!3702 = !DILocation(line: 58, column: 50, scope: !3678)
!3703 = !DILocation(line: 70, column: 33, scope: !3701)
!3704 = !DILocation(line: 70, column: 53, scope: !3701)
!3705 = !DILocation(line: 70, column: 59, scope: !3701)
!3706 = !DILocation(line: 70, column: 7, scope: !3678)
!3707 = !DILocation(line: 72, column: 11, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3701, file: !595, line: 71, column: 5)
!3709 = !DILocation(line: 73, column: 9, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3708, file: !595, line: 72, column: 11)
!3711 = !DILocation(line: 73, column: 15, scope: !3710)
!3712 = !DILocation(line: 78, column: 1, scope: !3678)
!3713 = distinct !DISubprogram(name: "last_component", scope: !634, file: !634, line: 30, type: !83, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3714)
!3714 = !{!3715, !3716, !3717, !3718}
!3715 = !DILocalVariable(name: "name", arg: 1, scope: !3713, file: !634, line: 30, type: !6)
!3716 = !DILocalVariable(name: "base", scope: !3713, file: !634, line: 32, type: !6)
!3717 = !DILocalVariable(name: "p", scope: !3713, file: !634, line: 33, type: !6)
!3718 = !DILocalVariable(name: "saw_slash", scope: !3713, file: !634, line: 34, type: !92)
!3719 = !DILocation(line: 0, scope: !3713)
!3720 = !DILocation(line: 36, column: 3, scope: !3713)
!3721 = !DILocation(line: 36, column: 10, scope: !3713)
!3722 = !DILocation(line: 37, column: 9, scope: !3713)
!3723 = distinct !{!3723, !3720, !3722}
!3724 = !DILocation(line: 39, column: 18, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !634, line: 39, column: 3)
!3726 = distinct !DILexicalBlock(scope: !3713, file: !634, line: 39, column: 3)
!3727 = !DILocation(line: 32, column: 15, scope: !3713)
!3728 = !DILocation(line: 0, scope: !3726)
!3729 = !DILocation(line: 39, column: 3, scope: !3726)
!3730 = !DILocation(line: 43, column: 16, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !634, line: 43, column: 16)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !634, line: 41, column: 11)
!3733 = distinct !DILexicalBlock(scope: !3725, file: !634, line: 40, column: 5)
!3734 = !DILocation(line: 43, column: 16, scope: !3732)
!3735 = !DILocation(line: 39, column: 23, scope: !3725)
!3736 = !DILocation(line: 39, column: 3, scope: !3725)
!3737 = distinct !{!3737, !3729, !3738}
!3738 = !DILocation(line: 48, column: 5, scope: !3726)
!3739 = !DILocation(line: 50, column: 3, scope: !3713)
!3740 = distinct !DISubprogram(name: "base_len", scope: !634, file: !634, line: 58, type: !3741, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!69, !6}
!3743 = !{!3744, !3745, !3746}
!3744 = !DILocalVariable(name: "name", arg: 1, scope: !3740, file: !634, line: 58, type: !6)
!3745 = !DILocalVariable(name: "len", scope: !3740, file: !634, line: 60, type: !69)
!3746 = !DILocalVariable(name: "prefix_len", scope: !3740, file: !634, line: 61, type: !69)
!3747 = !DILocation(line: 0, scope: !3740)
!3748 = !DILocation(line: 63, column: 14, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3740, file: !634, line: 63, column: 3)
!3750 = !DILocation(line: 63, column: 8, scope: !3749)
!3751 = !DILocation(line: 0, scope: !3749)
!3752 = !DILocation(line: 63, column: 32, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3749, file: !634, line: 63, column: 3)
!3754 = !DILocation(line: 63, column: 38, scope: !3753)
!3755 = !DILocation(line: 63, column: 41, scope: !3753)
!3756 = !DILocation(line: 63, column: 3, scope: !3749)
!3757 = distinct !{!3757, !3756, !3758}
!3758 = !DILocation(line: 64, column: 5, scope: !3749)
!3759 = !DILocation(line: 74, column: 3, scope: !3740)
!3760 = distinct !DISubprogram(name: "hard_locale", scope: !637, file: !637, line: 27, type: !592, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !3761)
!3761 = !{!3762, !3763}
!3762 = !DILocalVariable(name: "category", arg: 1, scope: !3760, file: !637, line: 27, type: !18)
!3763 = !DILocalVariable(name: "locale", scope: !3760, file: !637, line: 29, type: !3764)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3765)
!3765 = !{!3766}
!3766 = !DISubrange(count: 257)
!3767 = !DILocation(line: 0, scope: !3760)
!3768 = !DILocation(line: 29, column: 3, scope: !3760)
!3769 = !DILocation(line: 29, column: 8, scope: !3760)
!3770 = !DILocation(line: 31, column: 7, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3760, file: !637, line: 31, column: 7)
!3772 = !DILocation(line: 31, column: 7, scope: !3760)
!3773 = !DILocation(line: 34, column: 12, scope: !3760)
!3774 = !DILocation(line: 34, column: 38, scope: !3760)
!3775 = !DILocation(line: 34, column: 41, scope: !3760)
!3776 = !DILocation(line: 34, column: 66, scope: !3760)
!3777 = !DILocation(line: 35, column: 1, scope: !3760)
!3778 = distinct !DISubprogram(name: "locale_charset", scope: !644, file: !644, line: 831, type: !306, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3779)
!3779 = !{!3780}
!3780 = !DILocalVariable(name: "codeset", scope: !3778, file: !644, line: 833, type: !6)
!3781 = !DILocation(line: 847, column: 13, scope: !3778)
!3782 = !DILocation(line: 0, scope: !3778)
!3783 = !DILocation(line: 911, column: 15, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3778, file: !644, line: 911, column: 7)
!3785 = !DILocation(line: 911, column: 7, scope: !3778)
!3786 = !DILocation(line: 1070, column: 13, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !644, line: 1070, column: 13)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !644, line: 1060, column: 7)
!3789 = distinct !DILexicalBlock(scope: !3778, file: !644, line: 1019, column: 3)
!3790 = !DILocation(line: 1070, column: 24, scope: !3787)
!3791 = !DILocation(line: 1070, column: 13, scope: !3788)
!3792 = !DILocation(line: 1158, column: 3, scope: !3778)
!3793 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1037, file: !1037, line: 269, type: !3794, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!18, !18, !25, !69}
!3796 = !{!3797, !3798, !3799}
!3797 = !DILocalVariable(name: "category", arg: 1, scope: !3793, file: !1037, line: 269, type: !18)
!3798 = !DILocalVariable(name: "buf", arg: 2, scope: !3793, file: !1037, line: 269, type: !25)
!3799 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3793, file: !1037, line: 269, type: !69)
!3800 = !DILocation(line: 0, scope: !3793)
!3801 = !DILocalVariable(name: "category", arg: 1, scope: !3802, file: !1037, line: 91, type: !18)
!3802 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1037, file: !1037, line: 91, type: !3794, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !3803)
!3803 = !{!3801, !3804, !3805, !3806, !3807}
!3804 = !DILocalVariable(name: "buf", arg: 2, scope: !3802, file: !1037, line: 91, type: !25)
!3805 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3802, file: !1037, line: 91, type: !69)
!3806 = !DILocalVariable(name: "result", scope: !3802, file: !1037, line: 140, type: !6)
!3807 = !DILocalVariable(name: "length", scope: !3808, file: !1037, line: 154, type: !69)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !1037, line: 153, column: 5)
!3809 = distinct !DILexicalBlock(scope: !3802, file: !1037, line: 142, column: 7)
!3810 = !DILocation(line: 0, scope: !3802, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 274, column: 10, scope: !3793)
!3812 = !DILocalVariable(name: "category", arg: 1, scope: !3813, file: !1037, line: 60, type: !18)
!3813 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1037, file: !1037, line: 60, type: !3814, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!6, !18}
!3816 = !{!3812, !3817}
!3817 = !DILocalVariable(name: "result", scope: !3813, file: !1037, line: 62, type: !6)
!3818 = !DILocation(line: 0, scope: !3813, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 140, column: 24, scope: !3802, inlinedAt: !3811)
!3820 = !DILocation(line: 62, column: 24, scope: !3813, inlinedAt: !3819)
!3821 = !DILocation(line: 142, column: 14, scope: !3809, inlinedAt: !3811)
!3822 = !DILocation(line: 142, column: 7, scope: !3802, inlinedAt: !3811)
!3823 = !DILocation(line: 145, column: 19, scope: !3824, inlinedAt: !3811)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !1037, line: 145, column: 11)
!3825 = distinct !DILexicalBlock(scope: !3809, file: !1037, line: 143, column: 5)
!3826 = !DILocation(line: 145, column: 11, scope: !3825, inlinedAt: !3811)
!3827 = !DILocation(line: 149, column: 16, scope: !3824, inlinedAt: !3811)
!3828 = !DILocation(line: 149, column: 9, scope: !3824, inlinedAt: !3811)
!3829 = !DILocation(line: 154, column: 23, scope: !3808, inlinedAt: !3811)
!3830 = !DILocation(line: 0, scope: !3808, inlinedAt: !3811)
!3831 = !DILocation(line: 155, column: 18, scope: !3832, inlinedAt: !3811)
!3832 = distinct !DILexicalBlock(scope: !3808, file: !1037, line: 155, column: 11)
!3833 = !DILocation(line: 155, column: 11, scope: !3808, inlinedAt: !3811)
!3834 = !DILocation(line: 157, column: 39, scope: !3835, inlinedAt: !3811)
!3835 = distinct !DILexicalBlock(scope: !3832, file: !1037, line: 156, column: 9)
!3836 = !DILocalVariable(name: "__dest", arg: 1, scope: !3837, file: !1540, line: 31, type: !1543)
!3837 = distinct !DISubprogram(name: "memcpy", scope: !1540, file: !1540, line: 31, type: !1541, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !3838)
!3838 = !{!3836, !3839, !3840}
!3839 = !DILocalVariable(name: "__src", arg: 2, scope: !3837, file: !1540, line: 31, type: !1544)
!3840 = !DILocalVariable(name: "__len", arg: 3, scope: !3837, file: !1540, line: 31, type: !69)
!3841 = !DILocation(line: 0, scope: !3837, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 157, column: 11, scope: !3835, inlinedAt: !3811)
!3843 = !DILocation(line: 34, column: 10, scope: !3837, inlinedAt: !3842)
!3844 = !DILocation(line: 158, column: 11, scope: !3835, inlinedAt: !3811)
!3845 = !DILocation(line: 162, column: 23, scope: !3846, inlinedAt: !3811)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !1037, line: 162, column: 15)
!3847 = distinct !DILexicalBlock(scope: !3832, file: !1037, line: 161, column: 9)
!3848 = !DILocation(line: 162, column: 15, scope: !3847, inlinedAt: !3811)
!3849 = !DILocation(line: 167, column: 44, scope: !3850, inlinedAt: !3811)
!3850 = distinct !DILexicalBlock(scope: !3846, file: !1037, line: 163, column: 13)
!3851 = !DILocation(line: 0, scope: !3837, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 167, column: 15, scope: !3850, inlinedAt: !3811)
!3853 = !DILocation(line: 34, column: 10, scope: !3837, inlinedAt: !3852)
!3854 = !DILocation(line: 168, column: 15, scope: !3850, inlinedAt: !3811)
!3855 = !DILocation(line: 168, column: 32, scope: !3850, inlinedAt: !3811)
!3856 = !DILocation(line: 169, column: 13, scope: !3850, inlinedAt: !3811)
!3857 = !DILocation(line: 0, scope: !3809, inlinedAt: !3811)
!3858 = !DILocation(line: 274, column: 3, scope: !3793)
!3859 = distinct !DISubprogram(name: "setlocale_null", scope: !1037, file: !1037, line: 301, type: !3814, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !3860)
!3860 = !{!3861}
!3861 = !DILocalVariable(name: "category", arg: 1, scope: !3859, file: !1037, line: 301, type: !18)
!3862 = !DILocation(line: 0, scope: !3859)
!3863 = !DILocation(line: 0, scope: !3813, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 304, column: 10, scope: !3859)
!3865 = !DILocation(line: 62, column: 24, scope: !3813, inlinedAt: !3864)
!3866 = !DILocation(line: 304, column: 3, scope: !3859)
!3867 = distinct !DISubprogram(name: "rpl_fclose", scope: !1040, file: !1040, line: 58, type: !3868, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !3872)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!18, !3870}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1385, line: 7, baseType: !1046)
!3872 = !{!3873, !3874, !3875, !3876}
!3873 = !DILocalVariable(name: "fp", arg: 1, scope: !3867, file: !1040, line: 58, type: !3870)
!3874 = !DILocalVariable(name: "saved_errno", scope: !3867, file: !1040, line: 60, type: !18)
!3875 = !DILocalVariable(name: "fd", scope: !3867, file: !1040, line: 61, type: !18)
!3876 = !DILocalVariable(name: "result", scope: !3867, file: !1040, line: 62, type: !18)
!3877 = !DILocation(line: 0, scope: !3867)
!3878 = !DILocation(line: 65, column: 8, scope: !3867)
!3879 = !DILocation(line: 66, column: 10, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3867, file: !1040, line: 66, column: 7)
!3881 = !DILocation(line: 66, column: 7, scope: !3867)
!3882 = !DILocation(line: 67, column: 12, scope: !3880)
!3883 = !DILocation(line: 67, column: 5, scope: !3880)
!3884 = !DILocation(line: 72, column: 9, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3867, file: !1040, line: 72, column: 7)
!3886 = !DILocation(line: 72, column: 23, scope: !3885)
!3887 = !DILocation(line: 72, column: 33, scope: !3885)
!3888 = !DILocation(line: 72, column: 26, scope: !3885)
!3889 = !DILocation(line: 72, column: 59, scope: !3885)
!3890 = !DILocation(line: 73, column: 7, scope: !3885)
!3891 = !DILocation(line: 73, column: 10, scope: !3885)
!3892 = !DILocation(line: 72, column: 7, scope: !3867)
!3893 = !DILocation(line: 100, column: 12, scope: !3867)
!3894 = !DILocation(line: 105, column: 7, scope: !3867)
!3895 = !DILocation(line: 74, column: 19, scope: !3885)
!3896 = !DILocation(line: 105, column: 19, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3867, file: !1040, line: 105, column: 7)
!3898 = !DILocation(line: 107, column: 13, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3897, file: !1040, line: 106, column: 5)
!3900 = !DILocation(line: 109, column: 5, scope: !3899)
!3901 = !DILocation(line: 112, column: 1, scope: !3867)
!3902 = distinct !DISubprogram(name: "rpl_fflush", scope: !1083, file: !1083, line: 129, type: !3903, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1082, retainedNodes: !3907)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!18, !3905}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1385, line: 7, baseType: !1089)
!3907 = !{!3908}
!3908 = !DILocalVariable(name: "stream", arg: 1, scope: !3902, file: !1083, line: 129, type: !3905)
!3909 = !DILocation(line: 0, scope: !3902)
!3910 = !DILocation(line: 150, column: 14, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3902, file: !1083, line: 150, column: 7)
!3912 = !DILocation(line: 150, column: 22, scope: !3911)
!3913 = !DILocation(line: 150, column: 27, scope: !3911)
!3914 = !DILocation(line: 150, column: 7, scope: !3902)
!3915 = !DILocation(line: 151, column: 12, scope: !3911)
!3916 = !DILocation(line: 151, column: 5, scope: !3911)
!3917 = !DILocalVariable(name: "fp", arg: 1, scope: !3918, file: !1083, line: 41, type: !3905)
!3918 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1083, file: !1083, line: 41, type: !3919, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1082, retainedNodes: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !3905}
!3921 = !{!3917}
!3922 = !DILocation(line: 0, scope: !3918, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 156, column: 3, scope: !3902)
!3924 = !DILocation(line: 43, column: 11, scope: !3925, inlinedAt: !3923)
!3925 = distinct !DILexicalBlock(scope: !3918, file: !1083, line: 43, column: 7)
!3926 = !DILocation(line: 43, column: 18, scope: !3925, inlinedAt: !3923)
!3927 = !DILocation(line: 43, column: 7, scope: !3918, inlinedAt: !3923)
!3928 = !DILocation(line: 45, column: 5, scope: !3925, inlinedAt: !3923)
!3929 = !DILocation(line: 158, column: 10, scope: !3902)
!3930 = !DILocation(line: 158, column: 3, scope: !3902)
!3931 = !DILocation(line: 235, column: 1, scope: !3902)
!3932 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1124, file: !1124, line: 28, type: !3933, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !3938)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!18, !3935, !3937, !18}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1385, line: 7, baseType: !1130)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !173, line: 63, baseType: !43)
!3938 = !{!3939, !3940, !3941, !3942}
!3939 = !DILocalVariable(name: "fp", arg: 1, scope: !3932, file: !1124, line: 28, type: !3935)
!3940 = !DILocalVariable(name: "offset", arg: 2, scope: !3932, file: !1124, line: 28, type: !3937)
!3941 = !DILocalVariable(name: "whence", arg: 3, scope: !3932, file: !1124, line: 28, type: !18)
!3942 = !DILocalVariable(name: "pos", scope: !3943, file: !1124, line: 117, type: !3937)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !1124, line: 113, column: 5)
!3944 = distinct !DILexicalBlock(scope: !3932, file: !1124, line: 52, column: 7)
!3945 = !DILocation(line: 0, scope: !3932)
!3946 = !DILocation(line: 52, column: 11, scope: !3944)
!3947 = !{!1391, !1199, i64 16}
!3948 = !DILocation(line: 52, column: 31, scope: !3944)
!3949 = !{!1391, !1199, i64 8}
!3950 = !DILocation(line: 52, column: 24, scope: !3944)
!3951 = !DILocation(line: 53, column: 7, scope: !3944)
!3952 = !DILocation(line: 53, column: 14, scope: !3944)
!3953 = !{!1391, !1199, i64 40}
!3954 = !DILocation(line: 53, column: 35, scope: !3944)
!3955 = !{!1391, !1199, i64 32}
!3956 = !DILocation(line: 53, column: 28, scope: !3944)
!3957 = !DILocation(line: 54, column: 7, scope: !3944)
!3958 = !DILocation(line: 54, column: 14, scope: !3944)
!3959 = !{!1391, !1199, i64 72}
!3960 = !DILocation(line: 54, column: 28, scope: !3944)
!3961 = !DILocation(line: 52, column: 7, scope: !3932)
!3962 = !DILocation(line: 117, column: 26, scope: !3943)
!3963 = !DILocation(line: 117, column: 19, scope: !3943)
!3964 = !DILocation(line: 0, scope: !3943)
!3965 = !DILocation(line: 118, column: 15, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3943, file: !1124, line: 118, column: 11)
!3967 = !DILocation(line: 118, column: 11, scope: !3943)
!3968 = !DILocation(line: 129, column: 11, scope: !3943)
!3969 = !DILocation(line: 129, column: 18, scope: !3943)
!3970 = !DILocation(line: 130, column: 11, scope: !3943)
!3971 = !DILocation(line: 130, column: 19, scope: !3943)
!3972 = !{!1391, !1392, i64 144}
!3973 = !DILocation(line: 161, column: 7, scope: !3943)
!3974 = !DILocation(line: 163, column: 10, scope: !3932)
!3975 = !DILocation(line: 163, column: 3, scope: !3932)
!3976 = !DILocation(line: 164, column: 1, scope: !3932)
