; ModuleID = 'coreutils-8.32/src/sum.bc'
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
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Print checksum and block counts for each FILE.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [124 x i8] c"\0A  -r              use BSD sum algorithm, use 1K blocks\0A  -s, --sysv      use System V sum algorithm, use 512 bytes blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@.str.10 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !190
@.str.12 = private unnamed_addr constant [18 x i8] c"Kayvan Aghaiepour\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"sysv\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"%05d %5s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), align 8, !dbg !196
@.str.39 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !201
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !244
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !246
@.str.51 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.53 = private unnamed_addr constant [6 x i8] c"%.0Lf\00", align 1
@.str.3.54 = private unnamed_addr constant [6 x i8] c"%.1Lf\00", align 1
@power_letter = internal unnamed_addr constant [9 x i8] c"\00KMGTPEZY", align 1, !dbg !252
@.str.4.55 = private unnamed_addr constant [11 x i8] c"BLOCK_SIZE\00", align 1
@.str.5.56 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.9.57 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@block_size_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.60, i32 0, i32 0), i8* null], align 16, !dbg !311
@block_size_opts = internal constant [2 x i32] [i32 176, i32 144], align 4, !dbg !316
@.str.6.58 = private unnamed_addr constant [18 x i8] c"eEgGkKmMpPtTyYzZ0\00", align 1
@.str.7.59 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.8.60 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !325
@.str.65 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.71, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.77, i32 0, i32 0), i8* null], align 16, !dbg !366
@.str.68 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.69 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.70 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.71 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.72 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.73 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.74 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.75 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.76 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.77 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !458
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !464
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !466
@.str.11.78 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.79 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.80 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.81 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.82 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.83 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.84 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !473
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !480
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !468
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !482
@.str.91 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.92 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.94 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.95 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.96 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.97 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.98 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.99 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.100 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.101 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.102 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.103 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.104 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.105 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.106 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.109 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.110 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.111 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.112 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.113 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.115 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !487
@.str.1.126 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.131 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !495
@.str.144 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.145 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.146 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.147 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.148 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.1.153 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.157 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1262 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1265, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32 %0, metadata !1264, metadata !DIExpression()), !dbg !1286
  %3 = icmp eq i32 %0, 0, !dbg !1287
  br i1 %3, label %9, label %4, !dbg !1288

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1289, !tbaa !1291
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1289
  %7 = load i8*, i8** @program_name, align 8, !dbg !1289, !tbaa !1291
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1289
  br label %64, !dbg !1289

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1295
  %11 = load i8*, i8** @program_name, align 8, !dbg !1295, !tbaa !1291
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1295
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1296
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1296, !tbaa !1291
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1296
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 5) #20, !dbg !1297
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1297, !tbaa !1291
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #20, !dbg !1297
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1300
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1300, !tbaa !1291
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1300
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1301
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1301, !tbaa !1291
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1301
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1302
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1302, !tbaa !1291
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1302
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), metadata !1269, metadata !DIExpression()) #20, !dbg !1303
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1304
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #20, !dbg !1304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1282
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), metadata !1270, metadata !DIExpression()) #20, !dbg !1303
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1271, metadata !DIExpression()) #20, !dbg !1303
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1305
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1271, metadata !DIExpression()) #20, !dbg !1303
  br label %30, !dbg !1306

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1271, metadata !DIExpression()) #20, !dbg !1303
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %31) #23, !dbg !1307
  %34 = icmp eq i32 %33, 0, !dbg !1307
  br i1 %34, label %40, label %35, !dbg !1306

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !1271, metadata !DIExpression()) #20, !dbg !1303
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !1309
  %38 = load i8*, i8** %37, align 8, !dbg !1309, !tbaa !1310
  %39 = icmp eq i8* %38, null, !dbg !1312
  br i1 %39, label %40, label %30, !dbg !1313, !llvm.loop !1314

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1271, metadata !DIExpression()) #20, !dbg !1303
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1271, metadata !DIExpression()) #20, !dbg !1303
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !1315
  %43 = load i8*, i8** %42, align 8, !dbg !1315, !tbaa !1317
  %44 = icmp eq i8* %43, null, !dbg !1318
  %45 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %43, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %45, metadata !1270, metadata !DIExpression()) #20, !dbg !1303
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #20, !dbg !1320
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #20, !dbg !1320
  %48 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %48, metadata !1278, metadata !DIExpression()) #20, !dbg !1303
  %49 = icmp eq i8* %48, null, !dbg !1322
  br i1 %49, label %57, label %50, !dbg !1324

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #23, !dbg !1325
  %52 = icmp eq i32 %51, 0, !dbg !1325
  br i1 %52, label %57, label %53, !dbg !1326

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #20, !dbg !1327
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1327, !tbaa !1291
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #20, !dbg !1327
  br label %57, !dbg !1329

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #20, !dbg !1330
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #20, !dbg !1330
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #20, !dbg !1331
  %61 = icmp eq i8* %45, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), !dbg !1331
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1331
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #20, !dbg !1331
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #20, !dbg !1332
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #24, !dbg !1333
  unreachable, !dbg !1333
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !43 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !53 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !118 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1334 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1338, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8** %1, metadata !1339, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* @bsd_sum_file, metadata !1343, metadata !DIExpression()), !dbg !1347
  %3 = load i8*, i8** %1, align 8, !dbg !1348, !tbaa !1291
  tail call void @set_program_name(i8* %3) #20, !dbg !1349
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #20, !dbg !1350
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #20, !dbg !1351
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #20, !dbg !1352
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1353
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1354, !tbaa !1291
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #20, !dbg !1355
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1356
  br label %10, !dbg !1357

10:                                               ; preds = %13, %2
  %11 = phi i1 (i8*, i32)* [ @bsd_sum_file, %2 ], [ %14, %13 ], !dbg !1347
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !1343, metadata !DIExpression()), !dbg !1347
  %12 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #20, !dbg !1358
  call void @llvm.dbg.value(metadata i32 %12, metadata !1341, metadata !DIExpression()), !dbg !1347
  switch i32 %12, label %20 [
    i32 -1, label %21
    i32 114, label %13
    i32 115, label %15
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !1357

13:                                               ; preds = %10, %15
  %14 = phi i1 (i8*, i32)* [ @sysv_sum_file, %15 ], [ @bsd_sum_file, %10 ]
  br label %10, !dbg !1347, !llvm.loop !1359

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* @sysv_sum_file, metadata !1343, metadata !DIExpression()), !dbg !1347
  br label %13, !dbg !1361

16:                                               ; preds = %10
  tail call void @usage(i32 0) #25, !dbg !1364
  unreachable, !dbg !1364

17:                                               ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1365, !tbaa !1291
  %19 = load i8*, i8** @Version, align 8, !dbg !1365, !tbaa !1291
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #20, !dbg !1365
  tail call void @exit(i32 0) #24, !dbg !1365
  unreachable, !dbg !1365

20:                                               ; preds = %10
  tail call void @usage(i32 1) #25, !dbg !1366
  unreachable, !dbg !1366

21:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !1343, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !1343, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !1343, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !1343, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !1343, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !1343, metadata !DIExpression()), !dbg !1347
  %22 = load i32, i32* @optind, align 4, !dbg !1367, !tbaa !1368
  %23 = sub nsw i32 %0, %22, !dbg !1370
  call void @llvm.dbg.value(metadata i32 %23, metadata !1342, metadata !DIExpression()), !dbg !1347
  %24 = icmp slt i32 %23, 1, !dbg !1371
  br i1 %24, label %27, label %25, !dbg !1373

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8 1, metadata !1340, metadata !DIExpression()), !dbg !1347
  %26 = icmp slt i32 %22, %0, !dbg !1374
  br i1 %26, label %30, label %42, !dbg !1377

27:                                               ; preds = %21
  %28 = tail call zeroext i1 %11(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 %23) #20, !dbg !1378, !callees !1379
  %29 = zext i1 %28 to i8, !dbg !1380
  call void @llvm.dbg.value(metadata i8 %29, metadata !1340, metadata !DIExpression()), !dbg !1347
  br label %42, !dbg !1381

30:                                               ; preds = %25, %30
  %31 = phi i32 [ %40, %30 ], [ %22, %25 ]
  %32 = phi i8 [ %38, %30 ], [ 1, %25 ]
  call void @llvm.dbg.value(metadata i8 %32, metadata !1340, metadata !DIExpression()), !dbg !1347
  %33 = sext i32 %31 to i64, !dbg !1382
  %34 = getelementptr inbounds i8*, i8** %1, i64 %33, !dbg !1382
  %35 = load i8*, i8** %34, align 8, !dbg !1382, !tbaa !1291
  %36 = tail call zeroext i1 %11(i8* %35, i32 %23) #20, !dbg !1383, !callees !1379
  %37 = zext i1 %36 to i8, !dbg !1383
  %38 = and i8 %32, %37, !dbg !1384
  call void @llvm.dbg.value(metadata i8 %38, metadata !1340, metadata !DIExpression()), !dbg !1347
  %39 = load i32, i32* @optind, align 4, !dbg !1385, !tbaa !1368
  %40 = add nsw i32 %39, 1, !dbg !1385
  store i32 %40, i32* @optind, align 4, !dbg !1385, !tbaa !1368
  %41 = icmp slt i32 %40, %0, !dbg !1374
  br i1 %41, label %30, label %42, !dbg !1377, !llvm.loop !1386

42:                                               ; preds = %30, %25, %27
  %43 = phi i8 [ %29, %27 ], [ 1, %25 ], [ %38, %30 ], !dbg !1388
  call void @llvm.dbg.value(metadata i8 %43, metadata !1340, metadata !DIExpression()), !dbg !1347
  %44 = load i1, i1* @have_read_stdin, align 1, !dbg !1389
  br i1 %44, label %45, label %53, !dbg !1391

45:                                               ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1392, !tbaa !1291
  %47 = tail call i32 @rpl_fclose(%struct._IO_FILE* %46) #20, !dbg !1393
  %48 = icmp eq i32 %47, -1, !dbg !1394
  br i1 %48, label %49, label %53, !dbg !1395

49:                                               ; preds = %45
  %50 = tail call i32* @__errno_location() #26, !dbg !1396
  %51 = load i32, i32* %50, align 4, !dbg !1396, !tbaa !1368
  %52 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #20, !dbg !1396
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %52) #20, !dbg !1396
  unreachable, !dbg !1396

53:                                               ; preds = %45, %42
  %54 = xor i8 %43, 1, !dbg !1397
  %55 = zext i8 %54 to i32, !dbg !1397
  ret i32 %55, !dbg !1398
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @bsd_sum_file(i8* %0, i32 %1) unnamed_addr #8 !dbg !1399 {
  %3 = alloca [652 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1401, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %1, metadata !1402, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 0, metadata !1407, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64 0, metadata !1408, metadata !DIExpression()), !dbg !1418
  %4 = getelementptr inbounds [652 x i8], [652 x i8]* %3, i64 0, i64 0, !dbg !1419
  call void @llvm.lifetime.start.p0i8(i64 652, i8* nonnull %4) #20, !dbg !1419
  call void @llvm.dbg.declare(metadata [652 x i8]* %3, metadata !1413, metadata !DIExpression()), !dbg !1420
  %5 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #23, !dbg !1421
  %6 = icmp eq i32 %5, 0, !dbg !1421
  call void @llvm.dbg.value(metadata i1 %6, metadata !1417, metadata !DIExpression()), !dbg !1418
  br i1 %6, label %7, label %9, !dbg !1422

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1423, !tbaa !1291
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !1403, metadata !DIExpression()), !dbg !1418
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1426
  br label %16, !dbg !1427

9:                                                ; preds = %2
  %10 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)), !dbg !1428
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !1403, metadata !DIExpression()), !dbg !1418
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !1430
  br i1 %11, label %12, label %16, !dbg !1432

12:                                               ; preds = %9
  %13 = tail call i32* @__errno_location() #26, !dbg !1433
  %14 = load i32, i32* %13, align 4, !dbg !1433, !tbaa !1368
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #20, !dbg !1435
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %15) #20, !dbg !1436
  br label %77, !dbg !1437

16:                                               ; preds = %9, %7
  %17 = phi %struct._IO_FILE* [ %8, %7 ], [ %10, %9 ], !dbg !1438
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1403, metadata !DIExpression()), !dbg !1418
  tail call void @fadvise(%struct._IO_FILE* %17, i32 2) #20, !dbg !1439
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 1, !dbg !1440
  %19 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 2, !dbg !1440
  br label %20, !dbg !1448

20:                                               ; preds = %33, %16
  %21 = phi i32 [ 0, %16 ], [ %40, %33 ], !dbg !1418
  %22 = phi i64 [ 0, %16 ], [ %35, %33 ], !dbg !1418
  call void @llvm.dbg.value(metadata i64 %22, metadata !1408, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %21, metadata !1407, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1446, metadata !DIExpression()) #20, !dbg !1440
  %23 = load i8*, i8** %18, align 8, !dbg !1449, !tbaa !1450
  %24 = load i8*, i8** %19, align 8, !dbg !1449, !tbaa !1454
  %25 = icmp ult i8* %23, %24, !dbg !1449
  br i1 %25, label %26, label %30, !dbg !1449, !prof !1455, !misexpect !1456

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1449
  store i8* %27, i8** %18, align 8, !dbg !1449, !tbaa !1450
  %28 = load i8, i8* %23, align 1, !dbg !1449, !tbaa !1457
  %29 = zext i8 %28 to i32, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %31, metadata !1412, metadata !DIExpression()), !dbg !1418
  br label %33, !dbg !1448

30:                                               ; preds = %20
  %31 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %17) #20, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %31, metadata !1412, metadata !DIExpression()), !dbg !1418
  %32 = icmp eq i32 %31, -1, !dbg !1458
  br i1 %32, label %41, label %33, !dbg !1448

33:                                               ; preds = %26, %30
  %34 = phi i32 [ %29, %26 ], [ %31, %30 ]
  %35 = add i64 %22, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %35, metadata !1408, metadata !DIExpression()), !dbg !1418
  %36 = lshr i32 %21, 1, !dbg !1461
  %37 = shl nuw nsw i32 %21, 15, !dbg !1462
  %38 = or i32 %36, %37, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %38, metadata !1407, metadata !DIExpression()), !dbg !1418
  %39 = add i32 %34, %38, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %39, metadata !1407, metadata !DIExpression()), !dbg !1418
  %40 = and i32 %39, 65535, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %40, metadata !1407, metadata !DIExpression()), !dbg !1418
  br label %20, !dbg !1448, !llvm.loop !1466

41:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 %21, metadata !1407, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %22, metadata !1408, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %21, metadata !1407, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %22, metadata !1408, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %21, metadata !1407, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %22, metadata !1408, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %21, metadata !1407, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %22, metadata !1408, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %21, metadata !1407, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %22, metadata !1408, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %21, metadata !1407, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %22, metadata !1408, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1468, metadata !DIExpression()), !dbg !1471
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 0, !dbg !1474
  %43 = load i32, i32* %42, align 8, !dbg !1474, !tbaa !1475
  %44 = and i32 %43, 32, !dbg !1474
  %45 = icmp eq i32 %44, 0, !dbg !1476
  br i1 %45, label %52, label %46, !dbg !1477

46:                                               ; preds = %41
  %47 = tail call i32* @__errno_location() #26, !dbg !1478
  %48 = load i32, i32* %47, align 4, !dbg !1478, !tbaa !1368
  %49 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #20, !dbg !1480
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %49) #20, !dbg !1481
  br i1 %6, label %77, label %50, !dbg !1482

50:                                               ; preds = %46
  %51 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %17) #20, !dbg !1483
  br label %77, !dbg !1483

52:                                               ; preds = %41
  br i1 %6, label %60, label %53, !dbg !1485

53:                                               ; preds = %52
  %54 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %17) #20, !dbg !1487
  %55 = icmp eq i32 %54, 0, !dbg !1488
  br i1 %55, label %60, label %56, !dbg !1489

56:                                               ; preds = %53
  %57 = tail call i32* @__errno_location() #26, !dbg !1490
  %58 = load i32, i32* %57, align 4, !dbg !1490, !tbaa !1368
  %59 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #20, !dbg !1492
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %59) #20, !dbg !1493
  br label %77, !dbg !1494

60:                                               ; preds = %53, %52
  %61 = call i8* @human_readable(i64 %22, i8* nonnull %4, i32 0, i64 1, i64 1024) #20, !dbg !1495
  %62 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i32 %21, i8* %61) #20, !dbg !1495
  %63 = icmp sgt i32 %1, 1, !dbg !1496
  br i1 %63, label %64, label %66, !dbg !1498

64:                                               ; preds = %60
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #20, !dbg !1499
  br label %66, !dbg !1499

66:                                               ; preds = %64, %60
  call void @llvm.dbg.value(metadata i32 10, metadata !1500, metadata !DIExpression()) #20, !dbg !1503
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1505, !tbaa !1291
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 5, !dbg !1505
  %69 = load i8*, i8** %68, align 8, !dbg !1505, !tbaa !1506
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 6, !dbg !1505
  %71 = load i8*, i8** %70, align 8, !dbg !1505, !tbaa !1507
  %72 = icmp ult i8* %69, %71, !dbg !1505
  br i1 %72, label %75, label %73, !dbg !1505, !prof !1455, !misexpect !1456

73:                                               ; preds = %66
  %74 = call i32 @__overflow(%struct._IO_FILE* %67, i32 10) #20, !dbg !1505
  br label %77, !dbg !1505

75:                                               ; preds = %66
  %76 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1505
  store i8* %76, i8** %68, align 8, !dbg !1505, !tbaa !1506
  store i8 10, i8* %69, align 1, !dbg !1505, !tbaa !1457
  br label %77, !dbg !1505

77:                                               ; preds = %75, %73, %46, %50, %56, %12
  %78 = phi i1 [ false, %56 ], [ false, %12 ], [ false, %50 ], [ false, %46 ], [ true, %73 ], [ true, %75 ], !dbg !1418
  call void @llvm.lifetime.end.p0i8(i64 652, i8* nonnull %4) #20, !dbg !1508
  ret i1 %78, !dbg !1508
}

; Function Attrs: nounwind
declare !dbg !122 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !125 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !128 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !135 i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !138 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @sysv_sum_file(i8* %0, i32 %1) unnamed_addr #8 !dbg !1509 {
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [652 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1511, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %1, metadata !1512, metadata !DIExpression()), !dbg !1528
  %5 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !1529
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %5) #20, !dbg !1529
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !1514, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i64 0, metadata !1518, metadata !DIExpression()), !dbg !1528
  %6 = getelementptr inbounds [652 x i8], [652 x i8]* %4, i64 0, i64 0, !dbg !1531
  call void @llvm.lifetime.start.p0i8(i64 652, i8* nonnull %6) #20, !dbg !1531
  call void @llvm.dbg.declare(metadata [652 x i8]* %4, metadata !1519, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 0, metadata !1522, metadata !DIExpression()), !dbg !1528
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #23, !dbg !1533
  %8 = icmp eq i32 %7, 0, !dbg !1533
  call void @llvm.dbg.value(metadata i1 %8, metadata !1523, metadata !DIExpression()), !dbg !1528
  br i1 %8, label %9, label %10, !dbg !1534

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1513, metadata !DIExpression()), !dbg !1528
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1535
  br label %17, !dbg !1538

10:                                               ; preds = %2
  %11 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 0) #20, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %11, metadata !1513, metadata !DIExpression()), !dbg !1528
  %12 = icmp eq i32 %11, -1, !dbg !1541
  br i1 %12, label %13, label %17, !dbg !1543

13:                                               ; preds = %10
  %14 = tail call i32* @__errno_location() #26, !dbg !1544
  %15 = load i32, i32* %14, align 4, !dbg !1544, !tbaa !1368
  %16 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #20, !dbg !1546
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %16) #20, !dbg !1547
  br label %144, !dbg !1548

17:                                               ; preds = %10, %9
  %18 = phi i32 [ 0, %9 ], [ %11, %10 ], !dbg !1549
  call void @llvm.dbg.value(metadata i32 %18, metadata !1513, metadata !DIExpression()), !dbg !1528
  br label %19, !dbg !1550

19:                                               ; preds = %110, %17
  %20 = phi i64 [ 0, %17 ], [ %112, %110 ], !dbg !1551
  %21 = phi i32 [ 0, %17 ], [ %111, %110 ], !dbg !1552
  call void @llvm.dbg.value(metadata i32 %21, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %20, metadata !1518, metadata !DIExpression()), !dbg !1528
  %22 = call i64 @safe_read(i32 %18, i8* nonnull %5, i64 8192) #20, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %22, metadata !1524, metadata !DIExpression()), !dbg !1554
  switch i64 %22, label %23 [
    i64 0, label %113
    i64 -1, label %95
  ], !dbg !1555

23:                                               ; preds = %19
  %24 = icmp ult i64 %22, 8, !dbg !1556
  br i1 %24, label %25, label %28, !dbg !1556

25:                                               ; preds = %85, %23
  %26 = phi i64 [ 0, %23 ], [ %29, %85 ]
  %27 = phi i32 [ %21, %23 ], [ %93, %85 ]
  br label %101, !dbg !1556

28:                                               ; preds = %23
  %29 = and i64 %22, -8, !dbg !1556
  %30 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %21, i32 0, !dbg !1556
  %31 = add i64 %29, -8, !dbg !1556
  %32 = lshr exact i64 %31, 3, !dbg !1556
  %33 = add nuw nsw i64 %32, 1, !dbg !1556
  %34 = and i64 %33, 1, !dbg !1556
  %35 = icmp eq i64 %31, 0, !dbg !1556
  br i1 %35, label %67, label %36, !dbg !1556

36:                                               ; preds = %28
  %37 = sub nuw nsw i64 %33, %34, !dbg !1556
  br label %38, !dbg !1556

38:                                               ; preds = %38, %36
  %39 = phi i64 [ 0, %36 ], [ %64, %38 ], !dbg !1557
  %40 = phi <4 x i32> [ %30, %36 ], [ %62, %38 ]
  %41 = phi <4 x i32> [ zeroinitializer, %36 ], [ %63, %38 ]
  %42 = phi i64 [ %37, %36 ], [ %65, %38 ]
  %43 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %39, !dbg !1559
  %44 = bitcast i8* %43 to <4 x i8>*, !dbg !1559
  %45 = load <4 x i8>, <4 x i8>* %44, align 16, !dbg !1559, !tbaa !1457
  %46 = getelementptr inbounds i8, i8* %43, i64 4, !dbg !1559
  %47 = bitcast i8* %46 to <4 x i8>*, !dbg !1559
  %48 = load <4 x i8>, <4 x i8>* %47, align 4, !dbg !1559, !tbaa !1457
  %49 = zext <4 x i8> %45 to <4 x i32>, !dbg !1559
  %50 = zext <4 x i8> %48 to <4 x i32>, !dbg !1559
  %51 = add <4 x i32> %40, %49, !dbg !1560
  %52 = add <4 x i32> %41, %50, !dbg !1560
  %53 = or i64 %39, 8, !dbg !1557
  %54 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %53, !dbg !1559
  %55 = bitcast i8* %54 to <4 x i8>*, !dbg !1559
  %56 = load <4 x i8>, <4 x i8>* %55, align 8, !dbg !1559, !tbaa !1457
  %57 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !1559
  %58 = bitcast i8* %57 to <4 x i8>*, !dbg !1559
  %59 = load <4 x i8>, <4 x i8>* %58, align 4, !dbg !1559, !tbaa !1457
  %60 = zext <4 x i8> %56 to <4 x i32>, !dbg !1559
  %61 = zext <4 x i8> %59 to <4 x i32>, !dbg !1559
  %62 = add <4 x i32> %51, %60, !dbg !1560
  %63 = add <4 x i32> %52, %61, !dbg !1560
  %64 = add i64 %39, 16, !dbg !1557
  %65 = add i64 %42, -2, !dbg !1557
  %66 = icmp eq i64 %65, 0, !dbg !1557
  br i1 %66, label %67, label %38, !dbg !1557, !llvm.loop !1561

67:                                               ; preds = %38, %28
  %68 = phi <4 x i32> [ undef, %28 ], [ %62, %38 ]
  %69 = phi <4 x i32> [ undef, %28 ], [ %63, %38 ]
  %70 = phi i64 [ 0, %28 ], [ %64, %38 ]
  %71 = phi <4 x i32> [ %30, %28 ], [ %62, %38 ]
  %72 = phi <4 x i32> [ zeroinitializer, %28 ], [ %63, %38 ]
  %73 = icmp eq i64 %34, 0, !dbg !1557
  br i1 %73, label %85, label %74, !dbg !1557

74:                                               ; preds = %67
  %75 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %70, !dbg !1559
  %76 = getelementptr inbounds i8, i8* %75, i64 4, !dbg !1559
  %77 = bitcast i8* %76 to <4 x i8>*, !dbg !1559
  %78 = load <4 x i8>, <4 x i8>* %77, align 4, !dbg !1559, !tbaa !1457
  %79 = zext <4 x i8> %78 to <4 x i32>, !dbg !1559
  %80 = add <4 x i32> %72, %79, !dbg !1560
  %81 = bitcast i8* %75 to <4 x i8>*, !dbg !1559
  %82 = load <4 x i8>, <4 x i8>* %81, align 8, !dbg !1559, !tbaa !1457
  %83 = zext <4 x i8> %82 to <4 x i32>, !dbg !1559
  %84 = add <4 x i32> %71, %83, !dbg !1560
  br label %85, !dbg !1556

85:                                               ; preds = %67, %74
  %86 = phi <4 x i32> [ %68, %67 ], [ %84, %74 ], !dbg !1560
  %87 = phi <4 x i32> [ %69, %67 ], [ %80, %74 ], !dbg !1560
  %88 = add <4 x i32> %87, %86, !dbg !1556
  %89 = shufflevector <4 x i32> %88, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !1556
  %90 = add <4 x i32> %88, %89, !dbg !1556
  %91 = shufflevector <4 x i32> %90, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !1556
  %92 = add <4 x i32> %90, %91, !dbg !1556
  %93 = extractelement <4 x i32> %92, i32 0, !dbg !1556
  %94 = icmp eq i64 %22, %29, !dbg !1556
  br i1 %94, label %110, label %25, !dbg !1556

95:                                               ; preds = %19
  %96 = tail call i32* @__errno_location() #26, !dbg !1564
  %97 = load i32, i32* %96, align 4, !dbg !1564, !tbaa !1368
  %98 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #20, !dbg !1567
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %98) #20, !dbg !1568
  br i1 %8, label %144, label %99, !dbg !1569

99:                                               ; preds = %95
  %100 = call i32 @close(i32 %18) #20, !dbg !1570
  br label %144, !dbg !1570

101:                                              ; preds = %25, %101
  %102 = phi i64 [ %108, %101 ], [ %26, %25 ]
  %103 = phi i32 [ %107, %101 ], [ %27, %25 ]
  call void @llvm.dbg.value(metadata i64 %102, metadata !1526, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i32 %103, metadata !1522, metadata !DIExpression()), !dbg !1528
  %104 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %102, !dbg !1559
  %105 = load i8, i8* %104, align 1, !dbg !1559, !tbaa !1457
  %106 = zext i8 %105 to i32, !dbg !1559
  %107 = add i32 %103, %106, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %107, metadata !1522, metadata !DIExpression()), !dbg !1528
  %108 = add nuw i64 %102, 1, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %108, metadata !1526, metadata !DIExpression()), !dbg !1572
  %109 = icmp eq i64 %108, %22, !dbg !1573
  br i1 %109, label %110, label %101, !dbg !1556, !llvm.loop !1574

110:                                              ; preds = %101, %85
  %111 = phi i32 [ %93, %85 ], [ %107, %101 ], !dbg !1560
  call void @llvm.dbg.value(metadata i32 %111, metadata !1522, metadata !DIExpression()), !dbg !1528
  %112 = add i64 %22, %20, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %112, metadata !1518, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %111, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %112, metadata !1518, metadata !DIExpression()), !dbg !1528
  br label %19

113:                                              ; preds = %19
  call void @llvm.dbg.value(metadata i64 %20, metadata !1518, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %21, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %20, metadata !1518, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %21, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %20, metadata !1518, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %21, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %20, metadata !1518, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %21, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %20, metadata !1518, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %21, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %20, metadata !1518, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %21, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %111, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %112, metadata !1518, metadata !DIExpression()), !dbg !1528
  br i1 %8, label %121, label %114, !dbg !1577

114:                                              ; preds = %113
  %115 = call i32 @close(i32 %18) #20, !dbg !1579
  %116 = icmp eq i32 %115, 0, !dbg !1580
  br i1 %116, label %121, label %117, !dbg !1581

117:                                              ; preds = %114
  %118 = tail call i32* @__errno_location() #26, !dbg !1582
  %119 = load i32, i32* %118, align 4, !dbg !1582, !tbaa !1368
  %120 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #20, !dbg !1584
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %120) #20, !dbg !1585
  br label %144, !dbg !1586

121:                                              ; preds = %114, %113
  %122 = and i32 %21, 65535, !dbg !1587
  %123 = lshr i32 %21, 16, !dbg !1588
  %124 = add nuw nsw i32 %122, %123, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %124, metadata !1520, metadata !DIExpression()), !dbg !1528
  %125 = and i32 %124, 65535, !dbg !1590
  %126 = lshr i32 %124, 16, !dbg !1591
  %127 = add nuw nsw i32 %125, %126, !dbg !1592
  call void @llvm.dbg.value(metadata i32 %127, metadata !1521, metadata !DIExpression()), !dbg !1528
  %128 = call i8* @human_readable(i64 %20, i8* nonnull %6, i32 0, i64 1, i64 512) #20, !dbg !1593
  %129 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %127, i8* %128) #20, !dbg !1593
  %130 = icmp eq i32 %1, 0, !dbg !1594
  br i1 %130, label %133, label %131, !dbg !1596

131:                                              ; preds = %121
  %132 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #20, !dbg !1597
  br label %133, !dbg !1597

133:                                              ; preds = %121, %131
  call void @llvm.dbg.value(metadata i32 10, metadata !1500, metadata !DIExpression()) #20, !dbg !1598
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1600, !tbaa !1291
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %134, i64 0, i32 5, !dbg !1600
  %136 = load i8*, i8** %135, align 8, !dbg !1600, !tbaa !1506
  %137 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %134, i64 0, i32 6, !dbg !1600
  %138 = load i8*, i8** %137, align 8, !dbg !1600, !tbaa !1507
  %139 = icmp ult i8* %136, %138, !dbg !1600
  br i1 %139, label %142, label %140, !dbg !1600, !prof !1455, !misexpect !1456

140:                                              ; preds = %133
  %141 = call i32 @__overflow(%struct._IO_FILE* %134, i32 10) #20, !dbg !1600
  br label %144, !dbg !1600

142:                                              ; preds = %133
  %143 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1600
  store i8* %143, i8** %135, align 8, !dbg !1600, !tbaa !1506
  store i8 10, i8* %136, align 1, !dbg !1600, !tbaa !1457
  br label %144, !dbg !1600

144:                                              ; preds = %95, %99, %142, %140, %117, %13
  %145 = phi i1 [ false, %117 ], [ false, %13 ], [ true, %140 ], [ true, %142 ], [ false, %99 ], [ false, %95 ]
  call void @llvm.lifetime.end.p0i8(i64 652, i8* nonnull %6) #20, !dbg !1601
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %5) #20, !dbg !1601
  ret i1 %145, !dbg !1601
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !164 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !176 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #10

declare !dbg !184 i32 @close(i32) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1602 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1604, metadata !DIExpression()), !dbg !1605
  store i8* %0, i8** @file_name, align 8, !dbg !1606, !tbaa !1291
  ret void, !dbg !1607
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1608 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1612, metadata !DIExpression()), !dbg !1613
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1614, !tbaa !1615
  ret void, !dbg !1617
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1618 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1623, !tbaa !1291
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !1624
  %3 = icmp eq i32 %2, 0, !dbg !1625
  br i1 %3, label %22, label %4, !dbg !1626

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1627, !tbaa !1615, !range !1628
  %6 = icmp eq i8 %5, 0, !dbg !1627
  br i1 %6, label %11, label %7, !dbg !1629

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !1630
  %9 = load i32, i32* %8, align 4, !dbg !1630, !tbaa !1368
  %10 = icmp eq i32 %9, 32, !dbg !1631
  br i1 %10, label %22, label %11, !dbg !1632

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #20, !dbg !1633
  call void @llvm.dbg.value(metadata i8* %12, metadata !1620, metadata !DIExpression()), !dbg !1634
  %13 = load i8*, i8** @file_name, align 8, !dbg !1635, !tbaa !1291
  %14 = icmp eq i8* %13, null, !dbg !1635
  %15 = tail call i32* @__errno_location() #26, !dbg !1637
  %16 = load i32, i32* %15, align 4, !dbg !1637, !tbaa !1368
  br i1 %14, label %19, label %17, !dbg !1638

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !1639
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.43, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !1640
  br label %20, !dbg !1640

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0), i8* %12) #20, !dbg !1641
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1642, !tbaa !1368
  tail call void @_exit(i32 %21) #24, !dbg !1643
  unreachable, !dbg !1643

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1644, !tbaa !1291
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !1646
  %25 = icmp eq i32 %24, 0, !dbg !1647
  br i1 %25, label %28, label %26, !dbg !1648

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1649, !tbaa !1368
  tail call void @_exit(i32 %27) #24, !dbg !1650
  unreachable, !dbg !1650

28:                                               ; preds = %22
  ret void, !dbg !1651
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1658, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %1, metadata !1659, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %2, metadata !1660, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i32 %3, metadata !1661, metadata !DIExpression()), !dbg !1664
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #20, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %5, metadata !1662, metadata !DIExpression()), !dbg !1666
  ret void, !dbg !1667
}

; Function Attrs: nounwind
declare !dbg !553 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1668 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1674, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %1, metadata !1675, metadata !DIExpression()), !dbg !1676
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1677
  br i1 %3, label %7, label %4, !dbg !1679

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !1680
  call void @llvm.dbg.value(metadata i32 %5, metadata !1658, metadata !DIExpression()) #20, !dbg !1681
  call void @llvm.dbg.value(metadata i64 0, metadata !1659, metadata !DIExpression()) #20, !dbg !1681
  call void @llvm.dbg.value(metadata i64 0, metadata !1660, metadata !DIExpression()) #20, !dbg !1681
  call void @llvm.dbg.value(metadata i32 %1, metadata !1661, metadata !DIExpression()) #20, !dbg !1681
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #20, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %6, metadata !1662, metadata !DIExpression()) #20, !dbg !1684
  br label %7, !dbg !1685

7:                                                ; preds = %2, %4
  ret void, !dbg !1686
}

; Function Attrs: nofree nounwind
declare !dbg !556 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @human_readable(i64 %0, i8* %1, i32 %2, i64 %3, i64 %4) local_unnamed_addr #8 !dbg !1687 {
  %6 = alloca [41 x i8], align 16
  call void @llvm.dbg.declare(metadata [41 x i8]* %6, metadata !1750, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i64 %0, metadata !1691, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %1, metadata !1692, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %2, metadata !1693, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %3, metadata !1694, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %4, metadata !1695, metadata !DIExpression()), !dbg !1773
  %7 = and i32 %2, 3, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %7, metadata !1696, metadata !DIExpression()), !dbg !1773
  %8 = and i32 %2, 32, !dbg !1775
  %9 = icmp ne i32 %8, 0, !dbg !1776
  %10 = select i1 %9, i32 1024, i32 1000, !dbg !1776
  call void @llvm.dbg.value(metadata i32 %10, metadata !1697, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 -1, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 8, metadata !1701, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1706, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1707, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.52, i64 0, i64 0), metadata !1708, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.52, i64 0, i64 0), metadata !1709, metadata !DIExpression()), !dbg !1773
  %11 = tail call %struct.lconv* @localeconv() #20, !dbg !1777
  call void @llvm.dbg.value(metadata %struct.lconv* %11, metadata !1710, metadata !DIExpression()), !dbg !1773
  %12 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 0, !dbg !1778
  %13 = load i8*, i8** %12, align 8, !dbg !1778, !tbaa !1779
  %14 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %13) #23, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %14, metadata !1713, metadata !DIExpression()), !dbg !1773
  %15 = add i64 %14, -1, !dbg !1782
  %16 = icmp ult i64 %15, 16, !dbg !1782
  %17 = select i1 %16, i64 %14, i64 1, !dbg !1782
  %18 = select i1 %16, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %18, metadata !1706, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %17, metadata !1707, metadata !DIExpression()), !dbg !1773
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 2, !dbg !1784
  %20 = load i8*, i8** %19, align 8, !dbg !1784, !tbaa !1785
  call void @llvm.dbg.value(metadata i8* %20, metadata !1708, metadata !DIExpression()), !dbg !1773
  %21 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 1, !dbg !1786
  %22 = load i8*, i8** %21, align 8, !dbg !1786, !tbaa !1788
  %23 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %22) #23, !dbg !1789
  %24 = icmp ult i64 %23, 17, !dbg !1790
  %25 = select i1 %24, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.52, i64 0, i64 0), !dbg !1791
  call void @llvm.dbg.value(metadata i8* %25, metadata !1709, metadata !DIExpression()), !dbg !1773
  %26 = getelementptr inbounds i8, i8* %1, i64 647, !dbg !1792
  call void @llvm.dbg.value(metadata i8* %26, metadata !1703, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %26, metadata !1702, metadata !DIExpression()), !dbg !1773
  %27 = icmp ugt i64 %4, %3, !dbg !1793
  br i1 %27, label %36, label %28, !dbg !1794

28:                                               ; preds = %5
  %29 = urem i64 %3, %4, !dbg !1795
  %30 = udiv i64 %3, %4, !dbg !1796
  %31 = icmp eq i64 %29, 0, !dbg !1797
  br i1 %31, label %32, label %56, !dbg !1798

32:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %30, metadata !1714, metadata !DIExpression()), !dbg !1799
  %33 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %30, i64 %0), !dbg !1800
  %34 = extractvalue { i64, i1 } %33, 0, !dbg !1800
  %35 = extractvalue { i64, i1 } %33, 1, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %34, metadata !1698, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1699, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1705, metadata !DIExpression()), !dbg !1773
  br i1 %35, label %56, label %144

36:                                               ; preds = %5
  %37 = icmp eq i64 %3, 0, !dbg !1801
  br i1 %37, label %56, label %38, !dbg !1802

38:                                               ; preds = %36
  %39 = urem i64 %4, %3, !dbg !1803
  %40 = udiv i64 %4, %3, !dbg !1804
  %41 = icmp eq i64 %39, 0, !dbg !1805
  br i1 %41, label %42, label %56, !dbg !1806

42:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 %40, metadata !1719, metadata !DIExpression()), !dbg !1807
  %43 = urem i64 %0, %40, !dbg !1808
  %44 = mul i64 %43, 10, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %44, metadata !1722, metadata !DIExpression()), !dbg !1807
  %45 = urem i64 %44, %40, !dbg !1810
  %46 = shl i64 %45, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %46, metadata !1723, metadata !DIExpression()), !dbg !1807
  %47 = udiv i64 %0, %40, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %47, metadata !1698, metadata !DIExpression()), !dbg !1773
  %48 = udiv i64 %44, %40, !dbg !1813
  %49 = trunc i64 %48 to i32, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %49, metadata !1699, metadata !DIExpression()), !dbg !1773
  %50 = icmp ult i64 %46, %40, !dbg !1815
  %51 = icmp ne i64 %46, 0, !dbg !1816
  %52 = zext i1 %51 to i32, !dbg !1816
  %53 = icmp ult i64 %40, %46, !dbg !1816
  %54 = select i1 %53, i32 3, i32 2, !dbg !1816
  %55 = select i1 %50, i32 %52, i32 %54, !dbg !1816
  br label %144, !dbg !1816

56:                                               ; preds = %32, %36, %38, %28
  %57 = uitofp i64 %4 to x86_fp80, !dbg !1817
  call void @llvm.dbg.value(metadata x86_fp80 %57, metadata !1724, metadata !DIExpression()), !dbg !1818
  %58 = uitofp i64 %0 to x86_fp80, !dbg !1819
  %59 = uitofp i64 %3 to x86_fp80, !dbg !1820
  %60 = fdiv x86_fp80 %59, %57, !dbg !1821
  %61 = fmul x86_fp80 %60, %58, !dbg !1822
  call void @llvm.dbg.value(metadata x86_fp80 %61, metadata !1727, metadata !DIExpression()), !dbg !1818
  %62 = and i32 %2, 16, !dbg !1823
  %63 = icmp eq i32 %62, 0, !dbg !1823
  br i1 %63, label %68, label %64, !dbg !1824

64:                                               ; preds = %56
  %65 = uitofp i32 %10 to x86_fp80, !dbg !1825
  call void @llvm.dbg.value(metadata x86_fp80 %65, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 1, metadata !1700, metadata !DIExpression()), !dbg !1773
  %66 = fmul x86_fp80 %65, %65, !dbg !1828
  %67 = fcmp ugt x86_fp80 %66, %61, !dbg !1829
  br i1 %67, label %85, label %378, !dbg !1830, !llvm.loop !1831

68:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 %7, metadata !1834, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata x86_fp80 %61, metadata !1839, metadata !DIExpression()), !dbg !1843
  %69 = icmp ne i32 %7, 1, !dbg !1846
  %70 = fcmp olt x86_fp80 %61, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1847
  %71 = and i1 %69, %70, !dbg !1848
  br i1 %71, label %72, label %81, !dbg !1848

72:                                               ; preds = %68
  %73 = fptoui x86_fp80 %61 to i64, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %73, metadata !1840, metadata !DIExpression()), !dbg !1850
  %74 = icmp eq i32 %7, 0, !dbg !1851
  %75 = uitofp i64 %73 to x86_fp80, !dbg !1852
  %76 = fcmp une x86_fp80 %61, %75, !dbg !1852
  %77 = and i1 %74, %76, !dbg !1852
  %78 = zext i1 %77 to i64, !dbg !1853
  %79 = add i64 %78, %73, !dbg !1854
  %80 = uitofp i64 %79 to x86_fp80, !dbg !1855
  call void @llvm.dbg.value(metadata x86_fp80 %80, metadata !1839, metadata !DIExpression()), !dbg !1843
  br label %81, !dbg !1856

81:                                               ; preds = %68, %72
  %82 = phi x86_fp80 [ %80, %72 ], [ %61, %68 ]
  call void @llvm.dbg.value(metadata x86_fp80 %82, metadata !1839, metadata !DIExpression()), !dbg !1843
  %83 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.53, i64 0, i64 0), x86_fp80 %82) #20, !dbg !1857
  %84 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #23, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %84, metadata !1728, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 0, metadata !1729, metadata !DIExpression()), !dbg !1818
  br label %135, !dbg !1859

85:                                               ; preds = %398, %394, %390, %386, %382, %378, %64, %402
  %86 = phi x86_fp80 [ %65, %64 ], [ %379, %378 ], [ %383, %382 ], [ %387, %386 ], [ %391, %390 ], [ %395, %394 ], [ %399, %398 ], [ %400, %402 ], !dbg !1860
  %87 = phi i32 [ 1, %64 ], [ 2, %378 ], [ 3, %382 ], [ 4, %386 ], [ 5, %390 ], [ 6, %394 ], [ 7, %398 ], [ 8, %402 ], !dbg !1861
  %88 = fdiv x86_fp80 %61, %86, !dbg !1862
  call void @llvm.dbg.value(metadata x86_fp80 %88, metadata !1727, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %7, metadata !1834, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata x86_fp80 %88, metadata !1839, metadata !DIExpression()), !dbg !1863
  %89 = icmp ne i32 %7, 1, !dbg !1865
  %90 = fcmp olt x86_fp80 %88, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1866
  %91 = and i1 %89, %90, !dbg !1867
  br i1 %91, label %92, label %101, !dbg !1867

92:                                               ; preds = %85
  %93 = fptoui x86_fp80 %88 to i64, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %93, metadata !1840, metadata !DIExpression()), !dbg !1869
  %94 = icmp eq i32 %7, 0, !dbg !1870
  %95 = uitofp i64 %93 to x86_fp80, !dbg !1871
  %96 = fcmp une x86_fp80 %88, %95, !dbg !1871
  %97 = and i1 %94, %96, !dbg !1871
  %98 = zext i1 %97 to i64, !dbg !1872
  %99 = add i64 %98, %93, !dbg !1873
  %100 = uitofp i64 %99 to x86_fp80, !dbg !1874
  call void @llvm.dbg.value(metadata x86_fp80 %100, metadata !1839, metadata !DIExpression()), !dbg !1863
  br label %101, !dbg !1875

101:                                              ; preds = %85, %92
  %102 = phi x86_fp80 [ %100, %92 ], [ %88, %85 ]
  call void @llvm.dbg.value(metadata x86_fp80 %102, metadata !1839, metadata !DIExpression()), !dbg !1863
  %103 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.54, i64 0, i64 0), x86_fp80 %102) #20, !dbg !1876
  %104 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #23, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %104, metadata !1728, metadata !DIExpression()), !dbg !1818
  %105 = add i64 %17, 1, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %105, metadata !1729, metadata !DIExpression()), !dbg !1818
  %106 = select i1 %9, i64 2, i64 3, !dbg !1879
  %107 = add i64 %106, %17, !dbg !1881
  %108 = icmp ult i64 %107, %104, !dbg !1882
  br i1 %108, label %117, label %109, !dbg !1883

109:                                              ; preds = %101
  %110 = and i32 %2, 8, !dbg !1884
  %111 = icmp eq i32 %110, 0, !dbg !1884
  br i1 %111, label %135, label %112, !dbg !1885

112:                                              ; preds = %109
  %113 = add i64 %104, -1, !dbg !1886
  %114 = getelementptr inbounds i8, i8* %1, i64 %113, !dbg !1887
  %115 = load i8, i8* %114, align 1, !dbg !1887, !tbaa !1457
  %116 = icmp eq i8 %115, 48, !dbg !1888
  br i1 %116, label %117, label %135, !dbg !1889

117:                                              ; preds = %112, %101
  %118 = fmul x86_fp80 %88, 0xK4002A000000000000000, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %7, metadata !1834, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata x86_fp80 %118, metadata !1839, metadata !DIExpression()), !dbg !1892
  %119 = fcmp olt x86_fp80 %118, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1894
  %120 = and i1 %89, %119, !dbg !1895
  br i1 %120, label %121, label %130, !dbg !1895

121:                                              ; preds = %117
  %122 = fptoui x86_fp80 %118 to i64, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %122, metadata !1840, metadata !DIExpression()), !dbg !1897
  %123 = icmp eq i32 %7, 0, !dbg !1898
  %124 = uitofp i64 %122 to x86_fp80, !dbg !1899
  %125 = fcmp une x86_fp80 %118, %124, !dbg !1899
  %126 = and i1 %123, %125, !dbg !1899
  %127 = zext i1 %126 to i64, !dbg !1900
  %128 = add i64 %127, %122, !dbg !1901
  %129 = uitofp i64 %128 to x86_fp80, !dbg !1902
  call void @llvm.dbg.value(metadata x86_fp80 %129, metadata !1839, metadata !DIExpression()), !dbg !1892
  br label %130, !dbg !1903

130:                                              ; preds = %117, %121
  %131 = phi x86_fp80 [ %129, %121 ], [ %118, %117 ]
  call void @llvm.dbg.value(metadata x86_fp80 %131, metadata !1839, metadata !DIExpression()), !dbg !1892
  %132 = fdiv x86_fp80 %131, 0xK4002A000000000000000, !dbg !1890
  %133 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.53, i64 0, i64 0), x86_fp80 %132) #20, !dbg !1890
  %134 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #23, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %134, metadata !1728, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 0, metadata !1729, metadata !DIExpression()), !dbg !1818
  br label %135, !dbg !1905

135:                                              ; preds = %112, %130, %109, %81
  %136 = phi i64 [ %84, %81 ], [ %134, %130 ], [ %104, %112 ], [ %104, %109 ], !dbg !1906
  %137 = phi i64 [ 0, %81 ], [ 0, %130 ], [ %105, %112 ], [ %105, %109 ], !dbg !1906
  %138 = phi i32 [ -1, %81 ], [ %87, %130 ], [ %87, %112 ], [ %87, %109 ], !dbg !1773
  call void @llvm.dbg.value(metadata i32 %138, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %137, metadata !1729, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %136, metadata !1728, metadata !DIExpression()), !dbg !1818
  %139 = sub i64 0, %136, !dbg !1907
  %140 = getelementptr inbounds i8, i8* %26, i64 %139, !dbg !1907
  call void @llvm.dbg.value(metadata i8* %140, metadata !1702, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %140, metadata !1908, metadata !DIExpression()) #20, !dbg !1916
  call void @llvm.dbg.value(metadata i8* %1, metadata !1914, metadata !DIExpression()) #20, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %136, metadata !1915, metadata !DIExpression()) #20, !dbg !1916
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %140, i8* nonnull align 1 %1, i64 %136, i1 false) #20, !dbg !1918
  %141 = getelementptr inbounds i8, i8* %140, i64 %136, !dbg !1919
  %142 = sub i64 0, %137, !dbg !1920
  %143 = getelementptr inbounds i8, i8* %141, i64 %142, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %143, metadata !1704, metadata !DIExpression()), !dbg !1773
  br label %260, !dbg !1921

144:                                              ; preds = %32, %42
  %145 = phi i32 [ 0, %32 ], [ %55, %42 ], !dbg !1922
  %146 = phi i32 [ 0, %32 ], [ %49, %42 ], !dbg !1922
  %147 = phi i64 [ %34, %32 ], [ %47, %42 ], !dbg !1922
  call void @llvm.dbg.value(metadata i64 %147, metadata !1698, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %146, metadata !1699, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %145, metadata !1705, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.label(metadata !1748), !dbg !1923
  %148 = and i32 %2, 16, !dbg !1924
  %149 = icmp ne i32 %148, 0, !dbg !1924
  br i1 %149, label %150, label %215, !dbg !1925

150:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i32 0, metadata !1700, metadata !DIExpression()), !dbg !1773
  %151 = zext i32 %10 to i64, !dbg !1926
  %152 = icmp ult i64 %147, %151, !dbg !1927
  br i1 %152, label %215, label %153, !dbg !1928

153:                                              ; preds = %150, %177
  %154 = phi i32 [ %178, %177 ], [ %145, %150 ], !dbg !1773
  %155 = phi i32 [ %179, %177 ], [ 0, %150 ], !dbg !1929
  %156 = phi i32 [ %167, %177 ], [ %146, %150 ], !dbg !1773
  %157 = phi i64 [ %166, %177 ], [ %147, %150 ], !dbg !1773
  call void @llvm.dbg.value(metadata i64 %157, metadata !1698, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %156, metadata !1699, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %155, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %154, metadata !1705, metadata !DIExpression()), !dbg !1773
  %158 = urem i64 %157, %151, !dbg !1930
  %159 = trunc i64 %158 to i32, !dbg !1931
  %160 = mul nuw nsw i32 %159, 10, !dbg !1931
  %161 = add i32 %160, %156, !dbg !1931
  call void @llvm.dbg.value(metadata i32 %161, metadata !1733, metadata !DIExpression()), !dbg !1932
  %162 = urem i32 %161, %10, !dbg !1933
  %163 = shl nuw nsw i32 %162, 1, !dbg !1934
  %164 = lshr i32 %154, 1, !dbg !1935
  %165 = add nuw nsw i32 %163, %164, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %165, metadata !1740, metadata !DIExpression()), !dbg !1932
  %166 = udiv i64 %157, %151, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %166, metadata !1698, metadata !DIExpression()), !dbg !1773
  %167 = udiv i32 %161, %10, !dbg !1938
  call void @llvm.dbg.value(metadata i32 %167, metadata !1699, metadata !DIExpression()), !dbg !1773
  %168 = icmp ult i32 %165, %10, !dbg !1939
  br i1 %168, label %169, label %173, !dbg !1940

169:                                              ; preds = %153
  %170 = sub nsw i32 0, %154, !dbg !1941
  %171 = icmp ne i32 %165, %170, !dbg !1941
  %172 = zext i1 %171 to i32, !dbg !1941
  br label %177, !dbg !1940

173:                                              ; preds = %153
  %174 = add nsw i32 %165, %154, !dbg !1942
  %175 = icmp ult i32 %10, %174, !dbg !1943
  %176 = select i1 %175, i32 3, i32 2, !dbg !1944
  br label %177, !dbg !1940

177:                                              ; preds = %173, %169
  %178 = phi i32 [ %172, %169 ], [ %176, %173 ], !dbg !1940
  call void @llvm.dbg.value(metadata i32 %178, metadata !1705, metadata !DIExpression()), !dbg !1773
  %179 = add nuw nsw i32 %155, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %179, metadata !1700, metadata !DIExpression()), !dbg !1773
  %180 = icmp uge i64 %166, %151, !dbg !1946
  %181 = icmp ult i32 %155, 7, !dbg !1947
  %182 = and i1 %181, %180, !dbg !1947
  br i1 %182, label %153, label %183, !dbg !1948, !llvm.loop !1949

183:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i32 %178, metadata !1705, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %178, metadata !1705, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %178, metadata !1705, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %178, metadata !1705, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %178, metadata !1705, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %178, metadata !1705, metadata !DIExpression()), !dbg !1773
  %184 = icmp ult i64 %166, 10, !dbg !1952
  br i1 %184, label %185, label %215, !dbg !1954

185:                                              ; preds = %183
  %186 = icmp eq i32 %7, 1, !dbg !1955
  br i1 %186, label %187, label %191, !dbg !1958

187:                                              ; preds = %185
  %188 = and i32 %167, 1, !dbg !1959
  %189 = add nuw nsw i32 %178, %188, !dbg !1960
  %190 = icmp ugt i32 %189, 2, !dbg !1961
  br i1 %190, label %195, label %201, !dbg !1962

191:                                              ; preds = %185
  %192 = icmp eq i32 %7, 0, !dbg !1963
  %193 = icmp ne i32 %178, 0, !dbg !1964
  %194 = and i1 %192, %193, !dbg !1965
  br i1 %194, label %195, label %201, !dbg !1965

195:                                              ; preds = %191, %187
  %196 = add nsw i32 %167, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i32 %196, metadata !1699, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1705, metadata !DIExpression()), !dbg !1773
  %197 = icmp eq i32 %196, 10, !dbg !1968
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = add nuw nsw i64 %166, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %199, metadata !1698, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 undef, metadata !1699, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1705, metadata !DIExpression()), !dbg !1773
  %200 = icmp ult i64 %166, 9, !dbg !1972
  br i1 %200, label %201, label %215, !dbg !1974

201:                                              ; preds = %195, %191, %187, %198
  %202 = phi i64 [ %199, %198 ], [ %166, %187 ], [ %166, %191 ], [ %166, %195 ]
  %203 = phi i32 [ 0, %198 ], [ %167, %187 ], [ %167, %191 ], [ %196, %195 ]
  %204 = phi i32 [ 0, %198 ], [ %178, %187 ], [ %178, %191 ], [ 0, %195 ]
  %205 = icmp ne i32 %203, 0, !dbg !1975
  %206 = and i32 %2, 8, !dbg !1976
  %207 = icmp eq i32 %206, 0, !dbg !1976
  %208 = or i1 %207, %205, !dbg !1977
  br i1 %208, label %209, label %215, !dbg !1977

209:                                              ; preds = %201
  %210 = trunc i32 %203 to i8, !dbg !1978
  %211 = add i8 %210, 48, !dbg !1978
  %212 = getelementptr inbounds i8, i8* %1, i64 646, !dbg !1980
  call void @llvm.dbg.value(metadata i8* %212, metadata !1702, metadata !DIExpression()), !dbg !1773
  store i8 %211, i8* %212, align 1, !dbg !1981, !tbaa !1457
  %213 = sub i64 0, %17, !dbg !1982
  %214 = getelementptr inbounds i8, i8* %212, i64 %213, !dbg !1982
  call void @llvm.dbg.value(metadata i8* %214, metadata !1702, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %214, metadata !1983, metadata !DIExpression()) #20, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %18, metadata !1990, metadata !DIExpression()) #20, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %17, metadata !1991, metadata !DIExpression()) #20, !dbg !1992
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %214, i8* nonnull align 1 %18, i64 %17, i1 false) #20, !dbg !1994
  call void @llvm.dbg.value(metadata i32 0, metadata !1705, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1699, metadata !DIExpression()), !dbg !1773
  br label %215, !dbg !1995

215:                                              ; preds = %201, %150, %198, %209, %183, %144
  %216 = phi i32 [ 0, %209 ], [ 0, %198 ], [ %178, %183 ], [ %145, %150 ], [ %145, %144 ], [ %204, %201 ], !dbg !1773
  %217 = phi i8* [ %214, %209 ], [ %26, %198 ], [ %26, %183 ], [ %26, %150 ], [ %26, %144 ], [ %26, %201 ], !dbg !1773
  %218 = phi i32 [ %179, %209 ], [ %179, %198 ], [ %179, %183 ], [ 0, %150 ], [ -1, %144 ], [ %179, %201 ], !dbg !1773
  %219 = phi i32 [ 0, %209 ], [ 0, %198 ], [ %167, %183 ], [ %146, %150 ], [ %146, %144 ], [ 0, %201 ], !dbg !1773
  %220 = phi i64 [ %202, %209 ], [ 10, %198 ], [ %166, %183 ], [ %147, %150 ], [ %147, %144 ], [ %202, %201 ], !dbg !1773
  call void @llvm.dbg.value(metadata i64 %220, metadata !1698, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %219, metadata !1699, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %218, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %217, metadata !1702, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %216, metadata !1705, metadata !DIExpression()), !dbg !1773
  switch i32 %7, label %247 [
    i32 1, label %221
    i32 0, label %229
  ], !dbg !1996

221:                                              ; preds = %215
  %222 = zext i32 %216 to i64, !dbg !1997
  %223 = and i64 %220, 1, !dbg !1999
  %224 = sub nsw i64 0, %222, !dbg !2000
  %225 = icmp ne i64 %223, %224, !dbg !2000
  %226 = zext i1 %225 to i32, !dbg !2000
  %227 = add nsw i32 %219, %226, !dbg !2001
  %228 = icmp sgt i32 %227, 5, !dbg !2002
  br i1 %228, label %232, label %247, !dbg !2003

229:                                              ; preds = %215
  %230 = add nsw i32 %219, %216, !dbg !2004
  %231 = icmp sgt i32 %230, 0, !dbg !2005
  br i1 %231, label %232, label %247, !dbg !1996

232:                                              ; preds = %229, %221
  %233 = add i64 %220, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %233, metadata !1698, metadata !DIExpression()), !dbg !1773
  %234 = zext i32 %10 to i64, !dbg !2008
  %235 = icmp eq i64 %233, %234, !dbg !2010
  %236 = and i1 %149, %235, !dbg !2011
  %237 = icmp slt i32 %218, 8, !dbg !2012
  %238 = and i1 %237, %236, !dbg !2011
  br i1 %238, label %239, label %247, !dbg !2011

239:                                              ; preds = %232
  %240 = add nsw i32 %218, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %240, metadata !1700, metadata !DIExpression()), !dbg !1773
  %241 = and i32 %2, 8, !dbg !2015
  %242 = icmp eq i32 %241, 0, !dbg !2015
  br i1 %242, label %243, label %247, !dbg !2017

243:                                              ; preds = %239
  %244 = getelementptr inbounds i8, i8* %217, i64 -1, !dbg !2018
  call void @llvm.dbg.value(metadata i8* %244, metadata !1702, metadata !DIExpression()), !dbg !1773
  store i8 48, i8* %244, align 1, !dbg !2020, !tbaa !1457
  %245 = sub i64 0, %17, !dbg !2021
  %246 = getelementptr inbounds i8, i8* %244, i64 %245, !dbg !2021
  call void @llvm.dbg.value(metadata i8* %246, metadata !1702, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %246, metadata !1983, metadata !DIExpression()) #20, !dbg !2022
  call void @llvm.dbg.value(metadata i8* %18, metadata !1990, metadata !DIExpression()) #20, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %17, metadata !1991, metadata !DIExpression()) #20, !dbg !2022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %246, i8* nonnull align 1 %18, i64 %17, i1 false) #20, !dbg !2024
  br label %247, !dbg !2025

247:                                              ; preds = %243, %239, %215, %232, %229, %221
  %248 = phi i8* [ %217, %232 ], [ %217, %221 ], [ %217, %229 ], [ %217, %215 ], [ %217, %239 ], [ %246, %243 ], !dbg !1982
  %249 = phi i32 [ %218, %232 ], [ %218, %221 ], [ %218, %229 ], [ %218, %215 ], [ %240, %239 ], [ %240, %243 ], !dbg !2026
  %250 = phi i64 [ %233, %232 ], [ %220, %221 ], [ %220, %229 ], [ %220, %215 ], [ 1, %239 ], [ 1, %243 ], !dbg !2026
  call void @llvm.dbg.value(metadata i64 %250, metadata !1698, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %249, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %248, metadata !1702, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %248, metadata !1704, metadata !DIExpression()), !dbg !1773
  br label %251, !dbg !2027

251:                                              ; preds = %251, %247
  %252 = phi i8* [ %248, %247 ], [ %257, %251 ], !dbg !2026
  %253 = phi i64 [ %250, %247 ], [ %258, %251 ], !dbg !2026
  call void @llvm.dbg.value(metadata i64 %253, metadata !1698, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %252, metadata !1702, metadata !DIExpression()), !dbg !1773
  %254 = urem i64 %253, 10, !dbg !2028
  %255 = trunc i64 %254 to i8, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %254, metadata !1741, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2030
  %256 = or i8 %255, 48, !dbg !2031
  %257 = getelementptr inbounds i8, i8* %252, i64 -1, !dbg !2032
  call void @llvm.dbg.value(metadata i8* %257, metadata !1702, metadata !DIExpression()), !dbg !1773
  store i8 %256, i8* %257, align 1, !dbg !2033, !tbaa !1457
  %258 = udiv i64 %253, 10, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %258, metadata !1698, metadata !DIExpression()), !dbg !1773
  %259 = icmp ugt i64 %253, 9, !dbg !2035
  br i1 %259, label %251, label %260, !dbg !2036, !llvm.loop !2037

260:                                              ; preds = %251, %135
  %261 = phi i8* [ %143, %135 ], [ %248, %251 ], !dbg !1773
  %262 = phi i8* [ %140, %135 ], [ %257, %251 ], !dbg !1773
  %263 = phi i32 [ %138, %135 ], [ %249, %251 ], !dbg !1773
  call void @llvm.dbg.value(metadata i32 %263, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %262, metadata !1702, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %261, metadata !1704, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.label(metadata !1749), !dbg !2039
  %264 = and i32 %2, 4, !dbg !2040
  %265 = icmp eq i32 %264, 0, !dbg !2040
  br i1 %265, label %312, label %266, !dbg !2041

266:                                              ; preds = %260
  %267 = ptrtoint i8* %261 to i64, !dbg !2042
  %268 = ptrtoint i8* %262 to i64, !dbg !2042
  %269 = sub i64 %267, %268, !dbg !2042
  call void @llvm.dbg.value(metadata i8* %262, metadata !1755, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %269, metadata !1756, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %20, metadata !1757, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %25, metadata !1758, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i64 -1, metadata !1760, metadata !DIExpression()) #20, !dbg !2043
  %270 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %25) #23, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %270, metadata !1761, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %269, metadata !1762, metadata !DIExpression()) #20, !dbg !2043
  %271 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 0, !dbg !2045
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %271) #20, !dbg !2045
  call void @llvm.dbg.value(metadata i8* %271, metadata !1983, metadata !DIExpression()) #20, !dbg !2046
  call void @llvm.dbg.value(metadata i8* %262, metadata !1990, metadata !DIExpression()) #20, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %269, metadata !1991, metadata !DIExpression()) #20, !dbg !2046
  %272 = call i8* @__memcpy_chk(i8* nonnull %271, i8* nonnull %262, i64 %269, i64 41) #20, !dbg !2048
  call void @llvm.dbg.value(metadata i8* %261, metadata !1759, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %269, metadata !1762, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %20, metadata !1757, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i64 -1, metadata !1760, metadata !DIExpression()) #20, !dbg !2043
  %273 = load i8, i8* %20, align 1, !dbg !2049, !tbaa !1457
  call void @llvm.dbg.value(metadata i8 %273, metadata !1763, metadata !DIExpression()) #20, !dbg !2050
  %274 = icmp eq i8 %273, 0, !dbg !2051
  %275 = icmp ult i8 %273, 127, !dbg !2053
  %276 = zext i8 %273 to i64, !dbg !2053
  %277 = select i1 %275, i64 %276, i64 %269, !dbg !2053
  %278 = select i1 %274, i64 -1, i64 %277, !dbg !2053
  call void @llvm.dbg.value(metadata i8* undef, metadata !1757, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %278, metadata !1760, metadata !DIExpression()) #20, !dbg !2043
  %279 = icmp ugt i64 %278, %269, !dbg !2054
  %280 = select i1 %279, i64 %269, i64 %278, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %280, metadata !1760, metadata !DIExpression()) #20, !dbg !2043
  %281 = sub i64 0, %280, !dbg !2057
  %282 = getelementptr inbounds i8, i8* %261, i64 %281, !dbg !2057
  call void @llvm.dbg.value(metadata i8* %282, metadata !1759, metadata !DIExpression()) #20, !dbg !2043
  %283 = sub i64 %269, %280, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %283, metadata !1762, metadata !DIExpression()) #20, !dbg !2043
  %284 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %283, !dbg !2059
  call void @llvm.dbg.value(metadata i8* %282, metadata !1983, metadata !DIExpression()) #20, !dbg !2060
  call void @llvm.dbg.value(metadata i8* %284, metadata !1990, metadata !DIExpression()) #20, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %280, metadata !1991, metadata !DIExpression()) #20, !dbg !2060
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %282, i8* nonnull align 1 %284, i64 %280, i1 false) #20, !dbg !2062
  %285 = icmp eq i64 %283, 0, !dbg !2063
  br i1 %285, label %310, label %286, !dbg !2065

286:                                              ; preds = %266
  %287 = sub i64 0, %270, !dbg !2050
  br label %288, !dbg !2065

288:                                              ; preds = %288, %286
  %289 = phi i64 [ %283, %286 ], [ %307, %288 ]
  %290 = phi i8* [ %282, %286 ], [ %306, %288 ]
  %291 = phi i64 [ %280, %286 ], [ %304, %288 ]
  %292 = phi i1 [ %274, %286 ], [ %298, %288 ]
  %293 = phi i8* [ %20, %286 ], [ %295, %288 ]
  call void @llvm.dbg.value(metadata i8* %293, metadata !1757, metadata !DIExpression()) #20, !dbg !2043
  %294 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !2053
  %295 = select i1 %292, i8* %293, i8* %294, !dbg !2053
  call void @llvm.dbg.value(metadata i8* %295, metadata !1757, metadata !DIExpression()) #20, !dbg !2043
  %296 = getelementptr inbounds i8, i8* %290, i64 %287, !dbg !2066
  call void @llvm.dbg.value(metadata i8* %296, metadata !1759, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %296, metadata !1983, metadata !DIExpression()) #20, !dbg !2067
  call void @llvm.dbg.value(metadata i8* %25, metadata !1990, metadata !DIExpression()) #20, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %270, metadata !1991, metadata !DIExpression()) #20, !dbg !2067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %296, i8* nonnull align 1 %25, i64 %270, i1 false) #20, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %289, metadata !1762, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %291, metadata !1760, metadata !DIExpression()) #20, !dbg !2043
  %297 = load i8, i8* %295, align 1, !dbg !2049, !tbaa !1457
  call void @llvm.dbg.value(metadata i8 %297, metadata !1763, metadata !DIExpression()) #20, !dbg !2050
  %298 = icmp eq i8 %297, 0, !dbg !2051
  %299 = icmp ult i8 %297, 127, !dbg !2053
  %300 = zext i8 %297 to i64, !dbg !2053
  %301 = select i1 %299, i64 %300, i64 %289, !dbg !2053
  %302 = select i1 %298, i64 %291, i64 %301, !dbg !2053
  call void @llvm.dbg.value(metadata i8* undef, metadata !1757, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %302, metadata !1760, metadata !DIExpression()) #20, !dbg !2043
  %303 = icmp ult i64 %289, %302, !dbg !2054
  %304 = select i1 %303, i64 %289, i64 %302, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %304, metadata !1760, metadata !DIExpression()) #20, !dbg !2043
  %305 = sub i64 0, %304, !dbg !2057
  %306 = getelementptr inbounds i8, i8* %296, i64 %305, !dbg !2057
  call void @llvm.dbg.value(metadata i8* %306, metadata !1759, metadata !DIExpression()) #20, !dbg !2043
  %307 = sub i64 %289, %304, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %307, metadata !1762, metadata !DIExpression()) #20, !dbg !2043
  %308 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %307, !dbg !2059
  call void @llvm.dbg.value(metadata i8* %306, metadata !1983, metadata !DIExpression()) #20, !dbg !2060
  call void @llvm.dbg.value(metadata i8* %308, metadata !1990, metadata !DIExpression()) #20, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %304, metadata !1991, metadata !DIExpression()) #20, !dbg !2060
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %306, i8* nonnull align 1 %308, i64 %304, i1 false) #20, !dbg !2062
  %309 = icmp eq i64 %307, 0, !dbg !2063
  br i1 %309, label %310, label %288, !dbg !2065

310:                                              ; preds = %288, %266
  %311 = phi i8* [ %282, %266 ], [ %306, %288 ], !dbg !2057
  call void @llvm.dbg.value(metadata i8* %296, metadata !1759, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %271) #20, !dbg !2070
  call void @llvm.dbg.value(metadata i8* %311, metadata !1702, metadata !DIExpression()), !dbg !1773
  br label %312, !dbg !2071

312:                                              ; preds = %260, %310
  %313 = phi i8* [ %311, %310 ], [ %262, %260 ], !dbg !1773
  call void @llvm.dbg.value(metadata i8* %313, metadata !1702, metadata !DIExpression()), !dbg !1773
  %314 = trunc i32 %2 to i8, !dbg !2072
  %315 = icmp slt i8 %314, 0, !dbg !2072
  br i1 %315, label %316, label %357, !dbg !2073

316:                                              ; preds = %312
  %317 = icmp slt i32 %263, 0, !dbg !2074
  br i1 %317, label %318, label %323, !dbg !2075

318:                                              ; preds = %316
  call void @llvm.dbg.value(metadata i64 1, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 0, metadata !1700, metadata !DIExpression()), !dbg !1773
  %319 = icmp ugt i64 %4, 1, !dbg !2077
  br i1 %319, label %320, label %323, !dbg !2080

320:                                              ; preds = %318
  %321 = zext i32 %10 to i64, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %321, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 1, metadata !1700, metadata !DIExpression()), !dbg !1773
  %322 = icmp ult i64 %321, %4, !dbg !2077
  br i1 %322, label %359, label %323, !dbg !2080, !llvm.loop !2082

323:                                              ; preds = %374, %320, %359, %362, %365, %368, %371, %318, %316
  %324 = phi i32 [ %263, %316 ], [ 0, %318 ], [ 1, %320 ], [ 2, %359 ], [ 3, %362 ], [ 4, %365 ], [ 5, %368 ], [ 6, %371 ], [ %377, %374 ], !dbg !1773
  call void @llvm.dbg.value(metadata i32 %324, metadata !1700, metadata !DIExpression()), !dbg !1773
  %325 = and i32 %2, 256, !dbg !2084
  %326 = or i32 %324, %325, !dbg !2086
  %327 = icmp eq i32 %326, 0, !dbg !2086
  %328 = and i32 %2, 64, !dbg !2087
  %329 = icmp eq i32 %328, 0, !dbg !2087
  %330 = or i1 %329, %327, !dbg !2088
  br i1 %330, label %333, label %331, !dbg !2088

331:                                              ; preds = %323
  %332 = getelementptr inbounds i8, i8* %1, i64 648, !dbg !2089
  call void @llvm.dbg.value(metadata i8* %332, metadata !1703, metadata !DIExpression()), !dbg !1773
  store i8 32, i8* %26, align 1, !dbg !2090, !tbaa !1457
  br label %333, !dbg !2091

333:                                              ; preds = %323, %331
  %334 = phi i8* [ %332, %331 ], [ %26, %323 ], !dbg !1773
  call void @llvm.dbg.value(metadata i8* %334, metadata !1703, metadata !DIExpression()), !dbg !1773
  %335 = icmp ne i32 %324, 0, !dbg !2092
  br i1 %335, label %336, label %347, !dbg !2094

336:                                              ; preds = %333
  %337 = icmp eq i32 %8, 0, !dbg !2095
  %338 = icmp eq i32 %324, 1, !dbg !2096
  %339 = and i1 %337, %338, !dbg !2097
  br i1 %339, label %344, label %340, !dbg !2097

340:                                              ; preds = %336
  %341 = sext i32 %324 to i64, !dbg !2098
  %342 = getelementptr inbounds [9 x i8], [9 x i8]* @power_letter, i64 0, i64 %341, !dbg !2098
  %343 = load i8, i8* %342, align 1, !dbg !2098, !tbaa !1457
  br label %344, !dbg !2099

344:                                              ; preds = %336, %340
  %345 = phi i8 [ %343, %340 ], [ 107, %336 ]
  %346 = getelementptr inbounds i8, i8* %334, i64 1, !dbg !2100
  call void @llvm.dbg.value(metadata i8* %346, metadata !1703, metadata !DIExpression()), !dbg !1773
  store i8 %345, i8* %334, align 1, !dbg !2101, !tbaa !1457
  br label %347, !dbg !2102

347:                                              ; preds = %344, %333
  %348 = phi i8* [ %346, %344 ], [ %334, %333 ], !dbg !2103
  call void @llvm.dbg.value(metadata i8* %348, metadata !1703, metadata !DIExpression()), !dbg !1773
  %349 = icmp eq i32 %325, 0, !dbg !2104
  br i1 %349, label %357, label %350, !dbg !2106

350:                                              ; preds = %347
  %351 = and i1 %9, %335, !dbg !2107
  br i1 %351, label %352, label %354, !dbg !2107

352:                                              ; preds = %350
  %353 = getelementptr inbounds i8, i8* %348, i64 1, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %353, metadata !1703, metadata !DIExpression()), !dbg !1773
  store i8 105, i8* %348, align 1, !dbg !2111, !tbaa !1457
  br label %354, !dbg !2112

354:                                              ; preds = %352, %350
  %355 = phi i8* [ %353, %352 ], [ %348, %350 ], !dbg !2103
  call void @llvm.dbg.value(metadata i8* %355, metadata !1703, metadata !DIExpression()), !dbg !1773
  %356 = getelementptr inbounds i8, i8* %355, i64 1, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %356, metadata !1703, metadata !DIExpression()), !dbg !1773
  store i8 66, i8* %355, align 1, !dbg !2114, !tbaa !1457
  br label %357, !dbg !2115

357:                                              ; preds = %347, %354, %312
  %358 = phi i8* [ %356, %354 ], [ %348, %347 ], [ %26, %312 ], !dbg !1773
  call void @llvm.dbg.value(metadata i8* %358, metadata !1703, metadata !DIExpression()), !dbg !1773
  store i8 0, i8* %358, align 1, !dbg !2116, !tbaa !1457
  ret i8* %313, !dbg !2117

359:                                              ; preds = %320
  call void @llvm.dbg.value(metadata i64 %321, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 1, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 2, metadata !1700, metadata !DIExpression()), !dbg !1773
  %360 = mul nuw nsw i64 %321, %321, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %360, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 2, metadata !1700, metadata !DIExpression()), !dbg !1773
  %361 = icmp ult i64 %360, %4, !dbg !2077
  br i1 %361, label %362, label %323, !dbg !2080, !llvm.loop !2082

362:                                              ; preds = %359
  call void @llvm.dbg.value(metadata i64 %360, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 2, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 3, metadata !1700, metadata !DIExpression()), !dbg !1773
  %363 = mul nuw nsw i64 %360, %321, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %363, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 3, metadata !1700, metadata !DIExpression()), !dbg !1773
  %364 = icmp ult i64 %363, %4, !dbg !2077
  br i1 %364, label %365, label %323, !dbg !2080, !llvm.loop !2082

365:                                              ; preds = %362
  call void @llvm.dbg.value(metadata i64 %363, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 3, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 4, metadata !1700, metadata !DIExpression()), !dbg !1773
  %366 = mul nuw nsw i64 %363, %321, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %366, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 4, metadata !1700, metadata !DIExpression()), !dbg !1773
  %367 = icmp ult i64 %366, %4, !dbg !2077
  br i1 %367, label %368, label %323, !dbg !2080, !llvm.loop !2082

368:                                              ; preds = %365
  call void @llvm.dbg.value(metadata i64 %366, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 4, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 5, metadata !1700, metadata !DIExpression()), !dbg !1773
  %369 = mul nuw nsw i64 %366, %321, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %369, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 5, metadata !1700, metadata !DIExpression()), !dbg !1773
  %370 = icmp ult i64 %369, %4, !dbg !2077
  br i1 %370, label %371, label %323, !dbg !2080, !llvm.loop !2082

371:                                              ; preds = %368
  call void @llvm.dbg.value(metadata i64 %369, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 5, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 6, metadata !1700, metadata !DIExpression()), !dbg !1773
  %372 = mul i64 %369, %321, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %372, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 6, metadata !1700, metadata !DIExpression()), !dbg !1773
  %373 = icmp ult i64 %372, %4, !dbg !2077
  br i1 %373, label %374, label %323, !dbg !2080, !llvm.loop !2082

374:                                              ; preds = %371
  call void @llvm.dbg.value(metadata i64 %372, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 6, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 7, metadata !1700, metadata !DIExpression()), !dbg !1773
  %375 = mul i64 %372, %321, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %375, metadata !1743, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 7, metadata !1700, metadata !DIExpression()), !dbg !1773
  %376 = icmp ult i64 %375, %4, !dbg !2077
  %377 = select i1 %376, i32 8, i32 7, !dbg !2080
  br label %323, !dbg !2080

378:                                              ; preds = %64
  call void @llvm.dbg.value(metadata x86_fp80 %65, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 1, metadata !1700, metadata !DIExpression()), !dbg !1773
  %379 = fmul x86_fp80 %65, %65, !dbg !1860
  call void @llvm.dbg.value(metadata x86_fp80 %379, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 2, metadata !1700, metadata !DIExpression()), !dbg !1773
  %380 = fmul x86_fp80 %379, %65, !dbg !1828
  %381 = fcmp ugt x86_fp80 %380, %61, !dbg !1829
  br i1 %381, label %85, label %382, !dbg !1830, !llvm.loop !1831

382:                                              ; preds = %378
  call void @llvm.dbg.value(metadata x86_fp80 %379, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 2, metadata !1700, metadata !DIExpression()), !dbg !1773
  %383 = fmul x86_fp80 %379, %65, !dbg !1860
  call void @llvm.dbg.value(metadata x86_fp80 %383, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 3, metadata !1700, metadata !DIExpression()), !dbg !1773
  %384 = fmul x86_fp80 %383, %65, !dbg !1828
  %385 = fcmp ugt x86_fp80 %384, %61, !dbg !1829
  br i1 %385, label %85, label %386, !dbg !1830, !llvm.loop !1831

386:                                              ; preds = %382
  call void @llvm.dbg.value(metadata x86_fp80 %383, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 3, metadata !1700, metadata !DIExpression()), !dbg !1773
  %387 = fmul x86_fp80 %383, %65, !dbg !1860
  call void @llvm.dbg.value(metadata x86_fp80 %387, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 4, metadata !1700, metadata !DIExpression()), !dbg !1773
  %388 = fmul x86_fp80 %387, %65, !dbg !1828
  %389 = fcmp ugt x86_fp80 %388, %61, !dbg !1829
  br i1 %389, label %85, label %390, !dbg !1830, !llvm.loop !1831

390:                                              ; preds = %386
  call void @llvm.dbg.value(metadata x86_fp80 %387, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 4, metadata !1700, metadata !DIExpression()), !dbg !1773
  %391 = fmul x86_fp80 %387, %65, !dbg !1860
  call void @llvm.dbg.value(metadata x86_fp80 %391, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 5, metadata !1700, metadata !DIExpression()), !dbg !1773
  %392 = fmul x86_fp80 %391, %65, !dbg !1828
  %393 = fcmp ugt x86_fp80 %392, %61, !dbg !1829
  br i1 %393, label %85, label %394, !dbg !1830, !llvm.loop !1831

394:                                              ; preds = %390
  call void @llvm.dbg.value(metadata x86_fp80 %391, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 5, metadata !1700, metadata !DIExpression()), !dbg !1773
  %395 = fmul x86_fp80 %391, %65, !dbg !1860
  call void @llvm.dbg.value(metadata x86_fp80 %395, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 6, metadata !1700, metadata !DIExpression()), !dbg !1773
  %396 = fmul x86_fp80 %395, %65, !dbg !1828
  %397 = fcmp ugt x86_fp80 %396, %61, !dbg !1829
  br i1 %397, label %85, label %398, !dbg !1830, !llvm.loop !1831

398:                                              ; preds = %394
  call void @llvm.dbg.value(metadata x86_fp80 %395, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 6, metadata !1700, metadata !DIExpression()), !dbg !1773
  %399 = fmul x86_fp80 %395, %65, !dbg !1860
  call void @llvm.dbg.value(metadata x86_fp80 %399, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 7, metadata !1700, metadata !DIExpression()), !dbg !1773
  %400 = fmul x86_fp80 %399, %65, !dbg !1828
  %401 = fcmp ugt x86_fp80 %400, %61, !dbg !1829
  br i1 %401, label %85, label %402, !dbg !1830, !llvm.loop !1831

402:                                              ; preds = %398
  call void @llvm.dbg.value(metadata x86_fp80 %399, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 7, metadata !1700, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata x86_fp80 %400, metadata !1730, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 8, metadata !1700, metadata !DIExpression()), !dbg !1773
  br label %85
}

; Function Attrs: nounwind
declare !dbg !266 %struct.lconv* @localeconv() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @human_options(i8* %0, i32* nocapture %1, i64* %2) local_unnamed_addr #8 !dbg !2119 {
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2124, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32* %1, metadata !2125, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64* %2, metadata !2126, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %0, metadata !2130, metadata !DIExpression()) #20, !dbg !2145
  call void @llvm.dbg.value(metadata i64* %2, metadata !2135, metadata !DIExpression()) #20, !dbg !2145
  call void @llvm.dbg.value(metadata i32* %1, metadata !2136, metadata !DIExpression()) #20, !dbg !2145
  call void @llvm.dbg.value(metadata i32 0, metadata !2138, metadata !DIExpression()) #20, !dbg !2145
  %5 = icmp eq i8* %0, null, !dbg !2147
  br i1 %5, label %6, label %16, !dbg !2148

6:                                                ; preds = %3
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.55, i64 0, i64 0)) #20, !dbg !2149
  call void @llvm.dbg.value(metadata i8* %7, metadata !2130, metadata !DIExpression()) #20, !dbg !2145
  %8 = icmp eq i8* %7, null, !dbg !2150
  br i1 %8, label %9, label %16, !dbg !2151

9:                                                ; preds = %6
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.56, i64 0, i64 0)) #20, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %10, metadata !2130, metadata !DIExpression()) #20, !dbg !2145
  %11 = icmp eq i8* %10, null, !dbg !2153
  br i1 %11, label %12, label %16, !dbg !2154

12:                                               ; preds = %9
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.57, i64 0, i64 0)) #20, !dbg !2155
  %14 = icmp eq i8* %13, null, !dbg !2155
  %15 = select i1 %14, i64 1024, i64 512, !dbg !2155
  store i64 %15, i64* %2, align 8, !dbg !2160, !tbaa !2161
  br label %66, !dbg !2162

16:                                               ; preds = %9, %6, %3
  %17 = phi i8* [ %0, %3 ], [ %7, %6 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i8* %17, metadata !2130, metadata !DIExpression()) #20, !dbg !2145
  %18 = load i8, i8* %17, align 1, !dbg !2163, !tbaa !1457
  %19 = icmp eq i8 %18, 39, !dbg !2165
  %20 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !2166
  %21 = select i1 %19, i8* %20, i8* %17, !dbg !2168
  %22 = select i1 %19, i32 4, i32 0, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %22, metadata !2138, metadata !DIExpression()) #20, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %21, metadata !2130, metadata !DIExpression()) #20, !dbg !2145
  %23 = tail call i64 @argmatch(i8* nonnull %21, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @block_size_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @block_size_opts to i8*), i64 4) #23, !dbg !2169
  %24 = trunc i64 %23 to i32, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %24, metadata !2137, metadata !DIExpression()) #20, !dbg !2145
  %25 = icmp sgt i32 %24, -1, !dbg !2170
  br i1 %25, label %26, label %32, !dbg !2171

26:                                               ; preds = %16
  %27 = shl i64 %23, 32, !dbg !2172
  %28 = ashr exact i64 %27, 32, !dbg !2172
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* @block_size_opts, i64 0, i64 %28, !dbg !2172
  %30 = load i32, i32* %29, align 4, !dbg !2172, !tbaa !1368
  %31 = or i32 %30, %22, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %31, metadata !2138, metadata !DIExpression()) #20, !dbg !2145
  store i64 1, i64* %2, align 8, !dbg !2175, !tbaa !2161
  br label %66, !dbg !2176

32:                                               ; preds = %16
  %33 = bitcast i8** %4 to i8*, !dbg !2177
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #20, !dbg !2177
  call void @llvm.dbg.value(metadata i8** %4, metadata !2139, metadata !DIExpression(DW_OP_deref)) #20, !dbg !2178
  %34 = call i32 @xstrtoumax(i8* nonnull %21, i8** nonnull %4, i32 0, i64* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.58, i64 0, i64 0)) #20, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %34, metadata !2144, metadata !DIExpression()) #20, !dbg !2178
  %35 = icmp eq i32 %34, 0, !dbg !2180
  br i1 %35, label %36, label %65, !dbg !2182

36:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i8* %21, metadata !2130, metadata !DIExpression()) #20, !dbg !2145
  %37 = load i8, i8* %21, align 1, !dbg !2183, !tbaa !1457
  %38 = add i8 %37, -48, !dbg !2186
  %39 = icmp ult i8 %38, 10, !dbg !2186
  br i1 %39, label %63, label %40, !dbg !2187

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8, !dbg !2188, !tbaa !1291
  br label %46, !dbg !2187

42:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i8* %49, metadata !2130, metadata !DIExpression()) #20, !dbg !2145
  %43 = load i8, i8* %49, align 1, !dbg !2183, !tbaa !1457
  %44 = add i8 %43, -48, !dbg !2186
  %45 = icmp ult i8 %44, 10, !dbg !2186
  br i1 %45, label %63, label %46, !dbg !2187, !llvm.loop !2190

46:                                               ; preds = %42, %40
  %47 = phi i8* [ %21, %40 ], [ %49, %42 ]
  call void @llvm.dbg.value(metadata i8* %47, metadata !2130, metadata !DIExpression()) #20, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %41, metadata !2139, metadata !DIExpression()) #20, !dbg !2178
  %48 = icmp eq i8* %47, %41, !dbg !2192
  %49 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !2193
  call void @llvm.dbg.value(metadata i8* %49, metadata !2130, metadata !DIExpression()) #20, !dbg !2145
  br i1 %48, label %50, label %42, !dbg !2194

50:                                               ; preds = %46
  %51 = or i32 %22, 128, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %51, metadata !2138, metadata !DIExpression()) #20, !dbg !2145
  %52 = getelementptr inbounds i8, i8* %41, i64 -1, !dbg !2197
  %53 = load i8, i8* %52, align 1, !dbg !2197, !tbaa !1457
  %54 = icmp eq i8 %53, 66, !dbg !2199
  %55 = or i32 %22, 384, !dbg !2200
  %56 = select i1 %54, i32 %55, i32 %51, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %56, metadata !2138, metadata !DIExpression()) #20, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %41, metadata !2139, metadata !DIExpression()) #20, !dbg !2178
  br i1 %54, label %57, label %61, !dbg !2202

57:                                               ; preds = %50
  %58 = getelementptr inbounds i8, i8* %41, i64 -2, !dbg !2204
  %59 = load i8, i8* %58, align 1, !dbg !2204, !tbaa !1457
  %60 = icmp eq i8 %59, 105, !dbg !2205
  br i1 %60, label %61, label %63, !dbg !2206

61:                                               ; preds = %57, %50
  %62 = or i32 %56, 32, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %62, metadata !2138, metadata !DIExpression()) #20, !dbg !2145
  br label %63, !dbg !2208

63:                                               ; preds = %42, %61, %57, %36
  %64 = phi i32 [ %55, %57 ], [ %62, %61 ], [ %22, %36 ], [ %22, %42 ]
  call void @llvm.dbg.value(metadata i32 %22, metadata !2138, metadata !DIExpression()) #20, !dbg !2145
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #20, !dbg !2209
  br label %66

65:                                               ; preds = %32
  store i32 0, i32* %1, align 4, !dbg !2210, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %22, metadata !2138, metadata !DIExpression()) #20, !dbg !2145
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #20, !dbg !2209
  br label %68

66:                                               ; preds = %63, %26, %12
  %67 = phi i32 [ %31, %26 ], [ 0, %12 ], [ %64, %63 ], !dbg !2145
  call void @llvm.dbg.value(metadata i32 %67, metadata !2138, metadata !DIExpression()) #20, !dbg !2145
  store i32 %67, i32* %1, align 4, !dbg !2212, !tbaa !1368
  br label %68, !dbg !2213

68:                                               ; preds = %65, %66
  %69 = phi i32 [ 0, %66 ], [ %34, %65 ], !dbg !2145
  call void @llvm.dbg.value(metadata i32 %69, metadata !2127, metadata !DIExpression()), !dbg !2129
  %70 = load i64, i64* %2, align 8, !dbg !2214, !tbaa !2161
  %71 = icmp eq i64 %70, 0, !dbg !2216
  br i1 %71, label %72, label %76, !dbg !2217

72:                                               ; preds = %68
  %73 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.57, i64 0, i64 0)) #20, !dbg !2218
  %74 = icmp eq i8* %73, null, !dbg !2218
  %75 = select i1 %74, i64 1024, i64 512, !dbg !2218
  store i64 %75, i64* %2, align 8, !dbg !2221, !tbaa !2161
  call void @llvm.dbg.value(metadata i32 4, metadata !2127, metadata !DIExpression()), !dbg !2129
  br label %76, !dbg !2222

76:                                               ; preds = %72, %68
  %77 = phi i32 [ 4, %72 ], [ %69, %68 ], !dbg !2129
  call void @llvm.dbg.value(metadata i32 %77, metadata !2127, metadata !DIExpression()), !dbg !2129
  ret i32 %77, !dbg !2223
}

; Function Attrs: nofree nounwind readonly
declare !dbg !296 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2224 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()), !dbg !2229
  %2 = icmp eq i8* %0, null, !dbg !2230
  br i1 %2, label %3, label %6, !dbg !2232

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2233, !tbaa !1291
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.65, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !2235
  tail call void @abort() #24, !dbg !2236
  unreachable, !dbg !2236

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !2237
  call void @llvm.dbg.value(metadata i8* %7, metadata !2227, metadata !DIExpression()), !dbg !2229
  %8 = icmp eq i8* %7, null, !dbg !2238
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2239
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2239
  call void @llvm.dbg.value(metadata i8* %10, metadata !2228, metadata !DIExpression()), !dbg !2229
  %11 = ptrtoint i8* %10 to i64, !dbg !2240
  %12 = ptrtoint i8* %0 to i64, !dbg !2240
  %13 = sub i64 %11, %12, !dbg !2240
  %14 = icmp sgt i64 %13, 6, !dbg !2242
  br i1 %14, label %15, label %24, !dbg !2243

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2244
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.66, i64 0, i64 0), i64 7) #23, !dbg !2245
  %18 = icmp eq i32 %17, 0, !dbg !2246
  br i1 %18, label %19, label %24, !dbg !2247

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2226, metadata !DIExpression()), !dbg !2229
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.67, i64 0, i64 0), i64 3) #23, !dbg !2248
  %21 = icmp eq i32 %20, 0, !dbg !2251
  br i1 %21, label %22, label %24, !dbg !2252

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2253
  call void @llvm.dbg.value(metadata i8* %23, metadata !2226, metadata !DIExpression()), !dbg !2229
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2255, !tbaa !1291
  br label %24, !dbg !2256

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2226, metadata !DIExpression()), !dbg !2229
  store i8* %25, i8** @program_name, align 8, !dbg !2257, !tbaa !1291
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2258, !tbaa !1291
  ret void, !dbg !2259
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2260 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2265, metadata !DIExpression()), !dbg !2268
  %2 = tail call i32* @__errno_location() #26, !dbg !2269
  %3 = load i32, i32* %2, align 4, !dbg !2269, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %3, metadata !2266, metadata !DIExpression()), !dbg !2268
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2270
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2270
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2270
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !2271
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2271
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2267, metadata !DIExpression()), !dbg !2268
  store i32 %3, i32* %2, align 4, !dbg !2272, !tbaa !1368
  ret %struct.quoting_options* %8, !dbg !2273
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !2274 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2278, metadata !DIExpression()), !dbg !2279
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2280
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2280
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2281
  %5 = load i32, i32* %4, align 8, !dbg !2281, !tbaa !2282
  ret i32 %5, !dbg !2284
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2285 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %1, metadata !2290, metadata !DIExpression()), !dbg !2291
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2292
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2292
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2293
  store i32 %1, i32* %5, align 8, !dbg !2294, !tbaa !2282
  ret void, !dbg !2295
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !2296 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2300, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 %1, metadata !2301, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 %2, metadata !2302, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 %1, metadata !2303, metadata !DIExpression()), !dbg !2308
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2309
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2309
  %6 = lshr i8 %1, 5, !dbg !2310
  %7 = zext i8 %6 to i64, !dbg !2310
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2311
  call void @llvm.dbg.value(metadata i32* %8, metadata !2304, metadata !DIExpression()), !dbg !2308
  %9 = and i8 %1, 31, !dbg !2312
  %10 = zext i8 %9 to i32, !dbg !2312
  call void @llvm.dbg.value(metadata i32 %10, metadata !2306, metadata !DIExpression()), !dbg !2308
  %11 = load i32, i32* %8, align 4, !dbg !2313, !tbaa !1368
  %12 = lshr i32 %11, %10, !dbg !2314
  %13 = and i32 %12, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %13, metadata !2307, metadata !DIExpression()), !dbg !2308
  %14 = and i32 %2, 1, !dbg !2316
  %15 = xor i32 %13, %14, !dbg !2317
  %16 = shl i32 %15, %10, !dbg !2318
  %17 = xor i32 %16, %11, !dbg !2319
  store i32 %17, i32* %8, align 4, !dbg !2319, !tbaa !1368
  ret i32 %13, !dbg !2320
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !2321 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %1, metadata !2326, metadata !DIExpression()), !dbg !2328
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2329
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2325, metadata !DIExpression()), !dbg !2328
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2332
  %6 = load i32, i32* %5, align 4, !dbg !2332, !tbaa !2333
  call void @llvm.dbg.value(metadata i32 %6, metadata !2327, metadata !DIExpression()), !dbg !2328
  store i32 %1, i32* %5, align 4, !dbg !2334, !tbaa !2333
  ret i32 %6, !dbg !2335
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2336 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2340, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8* %1, metadata !2341, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8* %2, metadata !2342, metadata !DIExpression()), !dbg !2343
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2344
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2346
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2340, metadata !DIExpression()), !dbg !2343
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2347
  store i32 10, i32* %6, align 8, !dbg !2348, !tbaa !2282
  %7 = icmp ne i8* %1, null, !dbg !2349
  %8 = icmp ne i8* %2, null, !dbg !2351
  %9 = and i1 %7, %8, !dbg !2352
  br i1 %9, label %11, label %10, !dbg !2352

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2353
  unreachable, !dbg !2353

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2354
  store i8* %1, i8** %12, align 8, !dbg !2355, !tbaa !2356
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2357
  store i8* %2, i8** %13, align 8, !dbg !2358, !tbaa !2359
  ret void, !dbg !2360
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2365, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %1, metadata !2366, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %2, metadata !2367, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %3, metadata !2368, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2369, metadata !DIExpression()), !dbg !2373
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2374
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2374
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2370, metadata !DIExpression()), !dbg !2373
  %8 = tail call i32* @__errno_location() #26, !dbg !2375
  %9 = load i32, i32* %8, align 4, !dbg !2375, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %9, metadata !2371, metadata !DIExpression()), !dbg !2373
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2376
  %11 = load i32, i32* %10, align 8, !dbg !2376, !tbaa !2282
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2377
  %13 = load i32, i32* %12, align 4, !dbg !2377, !tbaa !2333
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2378
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2379
  %16 = load i8*, i8** %15, align 8, !dbg !2379, !tbaa !2356
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2380
  %18 = load i8*, i8** %17, align 8, !dbg !2380, !tbaa !2359
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %19, metadata !2372, metadata !DIExpression()), !dbg !2373
  store i32 %9, i32* %8, align 4, !dbg !2382, !tbaa !1368
  ret i64 %19, !dbg !2383
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2384 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2390, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %1, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %2, metadata !2392, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %3, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %4, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %5, metadata !2395, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32* %6, metadata !2396, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %7, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %8, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* null, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2403, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2448
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2449
  %14 = icmp eq i64 %13, 1, !dbg !2450
  call void @llvm.dbg.value(metadata i1 %14, metadata !2405, metadata !DIExpression()), !dbg !2448
  %15 = lshr i32 %5, 1, !dbg !2451
  %16 = trunc i32 %15 to i8, !dbg !2451
  %17 = and i8 %16, 1, !dbg !2451
  call void @llvm.dbg.value(metadata i8 %17, metadata !2406, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 1, metadata !2409, metadata !DIExpression()), !dbg !2448
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2452
  %19 = and i32 %5, 4, !dbg !2454
  %20 = icmp eq i32 %19, 0, !dbg !2454
  %21 = and i32 %5, 1, !dbg !2457
  %22 = icmp eq i32 %21, 0, !dbg !2457
  %23 = bitcast i64* %10 to i8*, !dbg !2460
  %24 = bitcast i32* %12 to i8*, !dbg !2461
  %25 = icmp eq i32* %6, null, !dbg !2462
  br label %26, !dbg !2464

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2465
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2466
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2467
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2468
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2448
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2469
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2470
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2471
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %38, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %37, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %36, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %35, metadata !2406, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %34, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %33, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %32, metadata !2403, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %31, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %30, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %29, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %28, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %27, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.label(metadata !2442), !dbg !2472
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
  ], !dbg !2473

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 1, metadata !2406, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %35, metadata !2406, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 5, metadata !2394, metadata !DIExpression()), !dbg !2448
  br label %92, !dbg !2474

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2406, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 5, metadata !2394, metadata !DIExpression()), !dbg !2448
  %42 = and i8 %35, 1, !dbg !2476
  %43 = icmp eq i8 %42, 0, !dbg !2476
  br i1 %43, label %44, label %92, !dbg !2474

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2478
  br i1 %45, label %92, label %46, !dbg !2481

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2478, !tbaa !1457
  br label %92, !dbg !2478

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.78, i64 0, i64 0), i32 %27), !dbg !2482
  call void @llvm.dbg.value(metadata i8* %48, metadata !2397, metadata !DIExpression()), !dbg !2448
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), i32 %27), !dbg !2486
  call void @llvm.dbg.value(metadata i8* %49, metadata !2398, metadata !DIExpression()), !dbg !2448
  br label %50, !dbg !2487

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %51, metadata !2397, metadata !DIExpression()), !dbg !2448
  %53 = and i8 %35, 1, !dbg !2488
  %54 = icmp eq i8 %53, 0, !dbg !2488
  br i1 %54, label %55, label %70, !dbg !2490

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2400, metadata !DIExpression()), !dbg !2448
  %56 = load i8, i8* %51, align 1, !dbg !2491, !tbaa !1457
  %57 = icmp eq i8 %56, 0, !dbg !2494
  br i1 %57, label %70, label %58, !dbg !2494

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %61, metadata !2400, metadata !DIExpression()), !dbg !2448
  %62 = icmp ult i64 %61, %39, !dbg !2495
  br i1 %62, label %63, label %65, !dbg !2498

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2495
  store i8 %59, i8* %64, align 1, !dbg !2495, !tbaa !1457
  br label %65, !dbg !2495

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %66, metadata !2400, metadata !DIExpression()), !dbg !2448
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %67, metadata !2402, metadata !DIExpression()), !dbg !2448
  %68 = load i8, i8* %67, align 1, !dbg !2491, !tbaa !1457
  %69 = icmp eq i8 %68, 0, !dbg !2494
  br i1 %69, label %70, label %58, !dbg !2494, !llvm.loop !2500

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2502
  call void @llvm.dbg.value(metadata i64 %71, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 1, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %52, metadata !2402, metadata !DIExpression()), !dbg !2448
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %72, metadata !2403, metadata !DIExpression()), !dbg !2448
  br label %92, !dbg !2504

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2404, metadata !DIExpression()), !dbg !2448
  br label %74, !dbg !2505

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %75, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 1, metadata !2406, metadata !DIExpression()), !dbg !2448
  br label %76, !dbg !2506

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2468
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %78, metadata !2406, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %77, metadata !2404, metadata !DIExpression()), !dbg !2448
  %79 = and i8 %78, 1, !dbg !2507
  %80 = icmp eq i8 %79, 0, !dbg !2507
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2509
  br label %82, !dbg !2509

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2448
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2451
  call void @llvm.dbg.value(metadata i8 %84, metadata !2406, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %83, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  %85 = and i8 %84, 1, !dbg !2510
  %86 = icmp eq i8 %85, 0, !dbg !2510
  br i1 %86, label %87, label %92, !dbg !2512

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2513
  br i1 %88, label %92, label %89, !dbg !2516

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2513, !tbaa !1457
  br label %92, !dbg !2513

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2448
  br label %92, !dbg !2517

91:                                               ; preds = %26
  call void @abort() #24, !dbg !2518
  unreachable, !dbg !2518

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2502
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %40 ], !dbg !2448
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2448
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2448
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %100, metadata !2406, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %98, metadata !2403, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %96, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %93, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2399, metadata !DIExpression()), !dbg !2448
  %101 = and i8 %99, 1, !dbg !2519
  %102 = icmp ne i8 %101, 0, !dbg !2519
  %103 = icmp ne i32 %93, 2, !dbg !2519
  %104 = and i1 %103, %102, !dbg !2519
  %105 = icmp ne i64 %98, 0, !dbg !2519
  %106 = and i1 %105, %104, !dbg !2519
  %107 = icmp ugt i64 %98, 1, !dbg !2519
  %108 = and i8 %100, 1, !dbg !2521
  %109 = icmp eq i8 %108, 0, !dbg !2521
  %110 = icmp eq i32 %93, 2, !dbg !2524
  %111 = or i1 %103, %109, !dbg !2526
  %112 = icmp ne i8 %108, 0, !dbg !2528
  %113 = and i1 %110, %112, !dbg !2528
  %114 = xor i1 %102, true, !dbg !2529
  %115 = xor i1 %104, true, !dbg !2462
  %116 = and i1 %109, %115, !dbg !2462
  %117 = or i1 %25, %116, !dbg !2462
  %118 = and i8 %99, %100, !dbg !2530
  %119 = and i8 %118, 1, !dbg !2530
  %120 = icmp ne i8 %119, 0, !dbg !2530
  %121 = and i1 %120, %105, !dbg !2530
  br label %122, !dbg !2532

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2533
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2502
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2465
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2469
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2470
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2471
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %126, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %123, metadata !2399, metadata !DIExpression()), !dbg !2448
  %131 = icmp eq i64 %126, -1, !dbg !2534
  br i1 %131, label %132, label %136, !dbg !2535

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2536
  %134 = load i8, i8* %133, align 1, !dbg !2536, !tbaa !1457
  %135 = icmp eq i8 %134, 0, !dbg !2537
  br i1 %135, label %581, label %138, !dbg !2538

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2539
  br i1 %137, label %581, label %138, !dbg !2538

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2540
  br i1 %106, label %139, label %154, !dbg !2541

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2542
  %141 = and i1 %107, %131, !dbg !2543
  br i1 %141, label %142, label %144, !dbg !2543

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %143, metadata !2393, metadata !DIExpression()), !dbg !2448
  br label %144, !dbg !2545

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2393, metadata !DIExpression()), !dbg !2448
  %146 = icmp ugt i64 %140, %145, !dbg !2546
  br i1 %146, label %154, label %147, !dbg !2547

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2548
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2549
  %150 = icmp ne i32 %149, 0, !dbg !2550
  %151 = or i1 %150, %109, !dbg !2551
  %152 = xor i1 %150, true, !dbg !2551
  %153 = zext i1 %152 to i8, !dbg !2551
  br i1 %151, label %154, label %639, !dbg !2551

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2540
  call void @llvm.dbg.value(metadata i8 %156, metadata !2415, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i64 %155, metadata !2393, metadata !DIExpression()), !dbg !2448
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2552
  %158 = load i8, i8* %157, align 1, !dbg !2552, !tbaa !1457
  call void @llvm.dbg.value(metadata i8 %158, metadata !2410, metadata !DIExpression()), !dbg !2540
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
  ], !dbg !2553

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2554

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2555

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2416, metadata !DIExpression()), !dbg !2540
  %162 = and i8 %127, 1, !dbg !2558
  %163 = icmp eq i8 %162, 0, !dbg !2558
  %164 = and i1 %110, %163, !dbg !2558
  br i1 %164, label %165, label %181, !dbg !2558

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2560
  br i1 %166, label %167, label %169, !dbg !2564

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2560
  store i8 39, i8* %168, align 1, !dbg !2560, !tbaa !1457
  br label %169, !dbg !2560

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %170, metadata !2400, metadata !DIExpression()), !dbg !2448
  %171 = icmp ult i64 %170, %130, !dbg !2565
  br i1 %171, label %172, label %174, !dbg !2568

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2565
  store i8 36, i8* %173, align 1, !dbg !2565, !tbaa !1457
  br label %174, !dbg !2565

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %175, metadata !2400, metadata !DIExpression()), !dbg !2448
  %176 = icmp ult i64 %175, %130, !dbg !2569
  br i1 %176, label %177, label %179, !dbg !2572

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2569
  store i8 39, i8* %178, align 1, !dbg !2569, !tbaa !1457
  br label %179, !dbg !2569

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %180, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 1, metadata !2407, metadata !DIExpression()), !dbg !2448
  br label %181, !dbg !2573

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2448
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %183, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %182, metadata !2400, metadata !DIExpression()), !dbg !2448
  %184 = icmp ult i64 %182, %130, !dbg !2574
  br i1 %184, label %185, label %187, !dbg !2577

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2574
  store i8 92, i8* %186, align 1, !dbg !2574, !tbaa !1457
  br label %187, !dbg !2574

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %188, metadata !2400, metadata !DIExpression()), !dbg !2448
  br i1 %103, label %189, label %463, !dbg !2578

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2580
  %191 = icmp ult i64 %190, %155, !dbg !2581
  br i1 %191, label %192, label %463, !dbg !2582

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2583
  %194 = load i8, i8* %193, align 1, !dbg !2583, !tbaa !1457
  %195 = add i8 %194, -48, !dbg !2584
  %196 = icmp ult i8 %195, 10, !dbg !2584
  br i1 %196, label %197, label %463, !dbg !2584

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2585
  br i1 %198, label %199, label %201, !dbg !2589

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2585
  store i8 48, i8* %200, align 1, !dbg !2585, !tbaa !1457
  br label %201, !dbg !2585

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %202, metadata !2400, metadata !DIExpression()), !dbg !2448
  %203 = icmp ult i64 %202, %130, !dbg !2590
  br i1 %203, label %204, label %206, !dbg !2593

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2590
  store i8 48, i8* %205, align 1, !dbg !2590, !tbaa !1457
  br label %206, !dbg !2590

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %207, metadata !2400, metadata !DIExpression()), !dbg !2448
  br label %463, !dbg !2594

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2595

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2596

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2597

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2598

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2599
  %214 = icmp ult i64 %213, %155, !dbg !2600
  br i1 %214, label %215, label %463, !dbg !2601

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2602
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2603
  %218 = load i8, i8* %217, align 1, !dbg !2603, !tbaa !1457
  %219 = icmp eq i8 %218, 63, !dbg !2604
  br i1 %219, label %220, label %463, !dbg !2605

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2606
  %222 = load i8, i8* %221, align 1, !dbg !2606, !tbaa !1457
  %223 = sext i8 %222 to i32, !dbg !2606
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
  ], !dbg !2607

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2608

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2410, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i64 %213, metadata !2399, metadata !DIExpression()), !dbg !2448
  %226 = icmp ult i64 %124, %130, !dbg !2610
  br i1 %226, label %227, label %229, !dbg !2613

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2610
  store i8 63, i8* %228, align 1, !dbg !2610, !tbaa !1457
  br label %229, !dbg !2610

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %230, metadata !2400, metadata !DIExpression()), !dbg !2448
  %231 = icmp ult i64 %230, %130, !dbg !2614
  br i1 %231, label %232, label %234, !dbg !2617

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2614
  store i8 34, i8* %233, align 1, !dbg !2614, !tbaa !1457
  br label %234, !dbg !2614

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %235, metadata !2400, metadata !DIExpression()), !dbg !2448
  %236 = icmp ult i64 %235, %130, !dbg !2618
  br i1 %236, label %237, label %239, !dbg !2621

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2618
  store i8 34, i8* %238, align 1, !dbg !2618, !tbaa !1457
  br label %239, !dbg !2618

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %240, metadata !2400, metadata !DIExpression()), !dbg !2448
  %241 = icmp ult i64 %240, %130, !dbg !2622
  br i1 %241, label %242, label %244, !dbg !2625

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2622
  store i8 63, i8* %243, align 1, !dbg !2622, !tbaa !1457
  br label %244, !dbg !2622

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %245, metadata !2400, metadata !DIExpression()), !dbg !2448
  br label %463, !dbg !2626

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2414, metadata !DIExpression()), !dbg !2540
  br label %256, !dbg !2627

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2414, metadata !DIExpression()), !dbg !2540
  br label %256, !dbg !2628

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2414, metadata !DIExpression()), !dbg !2540
  br label %254, !dbg !2629

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2414, metadata !DIExpression()), !dbg !2540
  br label %254, !dbg !2630

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2414, metadata !DIExpression()), !dbg !2540
  br label %256, !dbg !2631

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2414, metadata !DIExpression()), !dbg !2540
  br i1 %110, label %252, label %253, !dbg !2632

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2633

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2636

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2637
  call void @llvm.dbg.value(metadata i8 %255, metadata !2414, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.label(metadata !2443), !dbg !2638
  br i1 %111, label %256, label %625, !dbg !2639

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2637
  call void @llvm.dbg.value(metadata i8 %257, metadata !2414, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.label(metadata !2444), !dbg !2641
  br i1 %102, label %488, label %463, !dbg !2642

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2643

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2644, !tbaa !1457
  %261 = icmp eq i8 %260, 0, !dbg !2645
  br i1 %261, label %262, label %463, !dbg !2646

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2647
  br i1 %263, label %264, label %463, !dbg !2649

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2417, metadata !DIExpression()), !dbg !2540
  br label %265, !dbg !2650

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2540
  call void @llvm.dbg.value(metadata i8 %266, metadata !2417, metadata !DIExpression()), !dbg !2540
  br i1 %111, label %463, label %625, !dbg !2651

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 1, metadata !2417, metadata !DIExpression()), !dbg !2540
  br i1 %110, label %268, label %463, !dbg !2652

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2653

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2655
  %271 = icmp ne i64 %125, 0, !dbg !2657
  %272 = or i1 %271, %270, !dbg !2658
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2658
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2658
  call void @llvm.dbg.value(metadata i64 %274, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %273, metadata !2401, metadata !DIExpression()), !dbg !2448
  %275 = icmp ult i64 %124, %274, !dbg !2659
  br i1 %275, label %276, label %278, !dbg !2662

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2659
  store i8 39, i8* %277, align 1, !dbg !2659, !tbaa !1457
  br label %278, !dbg !2659

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %279, metadata !2400, metadata !DIExpression()), !dbg !2448
  %280 = icmp ult i64 %279, %274, !dbg !2663
  br i1 %280, label %281, label %283, !dbg !2666

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2663
  store i8 92, i8* %282, align 1, !dbg !2663, !tbaa !1457
  br label %283, !dbg !2663

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %284, metadata !2400, metadata !DIExpression()), !dbg !2448
  %285 = icmp ult i64 %284, %274, !dbg !2667
  br i1 %285, label %286, label %288, !dbg !2670

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2667
  store i8 39, i8* %287, align 1, !dbg !2667, !tbaa !1457
  br label %288, !dbg !2667

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %289, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2448
  br label %463, !dbg !2671

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2672

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2418, metadata !DIExpression()), !dbg !2673
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !2674
  %293 = load i16*, i16** %292, align 8, !dbg !2674, !tbaa !1291
  %294 = zext i8 %158 to i64, !dbg !2674
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2674
  %296 = load i16, i16* %295, align 2, !dbg !2674, !tbaa !2676
  %297 = lshr i16 %296, 14, !dbg !2677
  %298 = trunc i16 %297 to i8, !dbg !2677
  %299 = and i8 %298, 1, !dbg !2677
  call void @llvm.dbg.value(metadata i8 %299, metadata !2421, metadata !DIExpression()), !dbg !2673
  br label %355, !dbg !2678

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2679
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2422, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8* %23, metadata !2681, metadata !DIExpression()) #20, !dbg !2688
  call void @llvm.dbg.value(metadata i32 0, metadata !2686, metadata !DIExpression()) #20, !dbg !2688
  call void @llvm.dbg.value(metadata i64 8, metadata !2687, metadata !DIExpression()) #20, !dbg !2688
  store i64 0, i64* %10, align 8, !dbg !2690
  call void @llvm.dbg.value(metadata i64 0, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8 1, metadata !2421, metadata !DIExpression()), !dbg !2673
  %301 = icmp eq i64 %155, -1, !dbg !2691
  br i1 %301, label %302, label %304, !dbg !2693

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %303, metadata !2393, metadata !DIExpression()), !dbg !2448
  br label %304, !dbg !2695

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2540
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  br label %306, !dbg !2696

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2697
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2698
  call void @llvm.dbg.value(metadata i8 %308, metadata !2421, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %307, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2699
  %309 = add i64 %307, %123, !dbg !2700
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2701
  %311 = sub i64 %305, %309, !dbg !2702
  call void @llvm.dbg.value(metadata i32* %12, metadata !2428, metadata !DIExpression(DW_OP_deref)), !dbg !2461
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %312, metadata !2431, metadata !DIExpression()), !dbg !2461
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2704

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %307, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %307, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %307, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %307, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %307, metadata !2418, metadata !DIExpression()), !dbg !2673
  %314 = icmp ugt i64 %305, %309, !dbg !2705
  br i1 %314, label %315, label %340, !dbg !2707

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2708
  br label %317, !dbg !2708

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2418, metadata !DIExpression()), !dbg !2673
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2709
  %321 = load i8, i8* %320, align 1, !dbg !2709, !tbaa !1457
  %322 = icmp eq i8 %321, 0, !dbg !2707
  br i1 %322, label %340, label %323, !dbg !2708

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %324, metadata !2418, metadata !DIExpression()), !dbg !2673
  %325 = add i64 %324, %123, !dbg !2711
  %326 = icmp ult i64 %325, %305, !dbg !2705
  br i1 %326, label %317, label %340, !dbg !2707, !llvm.loop !2712

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2713
  %329 = and i1 %113, %328, !dbg !2716
  call void @llvm.dbg.value(metadata i64 1, metadata !2432, metadata !DIExpression()), !dbg !2717
  br i1 %329, label %330, label %343, !dbg !2716

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2432, metadata !DIExpression()), !dbg !2717
  %332 = add i64 %331, %309, !dbg !2718
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2719
  %334 = load i8, i8* %333, align 1, !dbg !2719, !tbaa !1457
  %335 = sext i8 %334 to i32, !dbg !2719
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2720

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %337, metadata !2432, metadata !DIExpression()), !dbg !2717
  %338 = icmp eq i64 %337, %312, !dbg !2713
  br i1 %338, label %343, label %330, !dbg !2722, !llvm.loop !2723

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8 %308, metadata !2421, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %307, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8 %308, metadata !2421, metadata !DIExpression()), !dbg !2673
  br label %340, !dbg !2725

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2725
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2726, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %344, metadata !2428, metadata !DIExpression()), !dbg !2461
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !2728
  %346 = icmp eq i32 %345, 0, !dbg !2728
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2729
  call void @llvm.dbg.value(metadata i8 %347, metadata !2421, metadata !DIExpression()), !dbg !2673
  %348 = add i64 %312, %307, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %348, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8 %347, metadata !2421, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %348, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2725
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !2731
  %350 = icmp eq i32 %349, 0, !dbg !2732
  br i1 %350, label %306, label %351, !dbg !2733, !llvm.loop !2734

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2736
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2, metadata !2394, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %99, metadata !2404, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %305, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2725
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2736
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2540
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2737
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2737
  call void @llvm.dbg.value(metadata i8 %358, metadata !2421, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %357, metadata !2418, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %356, metadata !2393, metadata !DIExpression()), !dbg !2448
  %359 = and i8 %358, 1, !dbg !2738
  %360 = icmp ne i8 %359, 0, !dbg !2738
  call void @llvm.dbg.value(metadata i8 %359, metadata !2417, metadata !DIExpression()), !dbg !2540
  %361 = icmp ult i64 %357, 2, !dbg !2739
  %362 = or i1 %360, %114, !dbg !2740
  %363 = and i1 %361, %362, !dbg !2741
  br i1 %363, label %463, label %364, !dbg !2741

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %365, metadata !2439, metadata !DIExpression()), !dbg !2743
  br label %366, !dbg !2744

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2533
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2448
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2469
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2540
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2540
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2745
  call void @llvm.dbg.value(metadata i8 %372, metadata !2416, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %371, metadata !2415, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %370, metadata !2410, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %369, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %368, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %367, metadata !2399, metadata !DIExpression()), !dbg !2448
  br i1 %362, label %419, label %373, !dbg !2746

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2751

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2416, metadata !DIExpression()), !dbg !2540
  %375 = and i8 %369, 1, !dbg !2754
  %376 = icmp eq i8 %375, 0, !dbg !2754
  %377 = and i1 %110, %376, !dbg !2754
  br i1 %377, label %378, label %394, !dbg !2754

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2756
  br i1 %379, label %380, label %382, !dbg !2760

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2756
  store i8 39, i8* %381, align 1, !dbg !2756, !tbaa !1457
  br label %382, !dbg !2756

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %383, metadata !2400, metadata !DIExpression()), !dbg !2448
  %384 = icmp ult i64 %383, %130, !dbg !2761
  br i1 %384, label %385, label %387, !dbg !2764

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2761
  store i8 36, i8* %386, align 1, !dbg !2761, !tbaa !1457
  br label %387, !dbg !2761

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %388, metadata !2400, metadata !DIExpression()), !dbg !2448
  %389 = icmp ult i64 %388, %130, !dbg !2765
  br i1 %389, label %390, label %392, !dbg !2768

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2765
  store i8 39, i8* %391, align 1, !dbg !2765, !tbaa !1457
  br label %392, !dbg !2765

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2768
  call void @llvm.dbg.value(metadata i64 %393, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 1, metadata !2407, metadata !DIExpression()), !dbg !2448
  br label %394, !dbg !2769

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2448
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %396, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %395, metadata !2400, metadata !DIExpression()), !dbg !2448
  %397 = icmp ult i64 %395, %130, !dbg !2770
  br i1 %397, label %398, label %400, !dbg !2773

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2770
  store i8 92, i8* %399, align 1, !dbg !2770, !tbaa !1457
  br label %400, !dbg !2770

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %401, metadata !2400, metadata !DIExpression()), !dbg !2448
  %402 = icmp ult i64 %401, %130, !dbg !2774
  br i1 %402, label %403, label %407, !dbg !2777

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2774
  %405 = or i8 %404, 48, !dbg !2774
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2774
  store i8 %405, i8* %406, align 1, !dbg !2774, !tbaa !1457
  br label %407, !dbg !2774

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %408, metadata !2400, metadata !DIExpression()), !dbg !2448
  %409 = icmp ult i64 %408, %130, !dbg !2778
  br i1 %409, label %410, label %415, !dbg !2781

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2778
  %412 = and i8 %411, 7, !dbg !2778
  %413 = or i8 %412, 48, !dbg !2778
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2778
  store i8 %413, i8* %414, align 1, !dbg !2778, !tbaa !1457
  br label %415, !dbg !2778

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %416, metadata !2400, metadata !DIExpression()), !dbg !2448
  %417 = and i8 %370, 7, !dbg !2782
  %418 = or i8 %417, 48, !dbg !2783
  call void @llvm.dbg.value(metadata i8 %418, metadata !2410, metadata !DIExpression()), !dbg !2540
  br label %428, !dbg !2784

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2785
  %421 = icmp eq i8 %420, 0, !dbg !2785
  br i1 %421, label %428, label %422, !dbg !2787

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2788
  br i1 %423, label %424, label %426, !dbg !2792

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2788
  store i8 92, i8* %425, align 1, !dbg !2788, !tbaa !1457
  br label %426, !dbg !2788

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %427, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2540
  br label %428, !dbg !2793

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2448
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2469
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2540
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2540
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2540
  call void @llvm.dbg.value(metadata i8 %433, metadata !2416, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %432, metadata !2415, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %431, metadata !2410, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %430, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %429, metadata !2400, metadata !DIExpression()), !dbg !2448
  %434 = add i64 %367, 1, !dbg !2794
  %435 = icmp ugt i64 %365, %434, !dbg !2796
  br i1 %435, label %436, label %526, !dbg !2797

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2798
  %438 = icmp ne i8 %437, 0, !dbg !2798
  %439 = and i8 %433, 1, !dbg !2798
  %440 = icmp eq i8 %439, 0, !dbg !2798
  %441 = and i1 %438, %440, !dbg !2798
  br i1 %441, label %442, label %453, !dbg !2798

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2801
  br i1 %443, label %444, label %446, !dbg !2805

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2801
  store i8 39, i8* %445, align 1, !dbg !2801, !tbaa !1457
  br label %446, !dbg !2801

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %447, metadata !2400, metadata !DIExpression()), !dbg !2448
  %448 = icmp ult i64 %447, %130, !dbg !2806
  br i1 %448, label %449, label %451, !dbg !2809

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2806
  store i8 39, i8* %450, align 1, !dbg !2806, !tbaa !1457
  br label %451, !dbg !2806

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %452, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2448
  br label %453, !dbg !2810

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2811
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %455, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %454, metadata !2400, metadata !DIExpression()), !dbg !2448
  %456 = icmp ult i64 %454, %130, !dbg !2812
  br i1 %456, label %457, label %459, !dbg !2815

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2812
  store i8 %431, i8* %458, align 1, !dbg !2812, !tbaa !1457
  br label %459, !dbg !2812

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %460, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %434, metadata !2399, metadata !DIExpression()), !dbg !2448
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2816
  %462 = load i8, i8* %461, align 1, !dbg !2816, !tbaa !1457
  call void @llvm.dbg.value(metadata i8 %462, metadata !2410, metadata !DIExpression()), !dbg !2540
  br label %366, !dbg !2817, !llvm.loop !2818

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2533
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2448
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2465
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2821
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2448
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2448
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2540
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2540
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2540
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %472, metadata !2417, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %471, metadata !2416, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %156, metadata !2415, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %470, metadata !2410, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %469, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %468, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %467, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %466, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %465, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %464, metadata !2399, metadata !DIExpression()), !dbg !2448
  br i1 %117, label %486, label %474, !dbg !2822

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2823
  %476 = zext i8 %475 to i64, !dbg !2823
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2824
  %478 = load i32, i32* %477, align 4, !dbg !2824, !tbaa !1368
  %479 = and i8 %470, 31, !dbg !2825
  %480 = zext i8 %479 to i32, !dbg !2825
  %481 = shl nuw i32 1, %480, !dbg !2826
  %482 = and i32 %478, %481, !dbg !2826
  %483 = icmp eq i32 %482, 0, !dbg !2826
  %484 = icmp eq i8 %156, 0, !dbg !2827
  %485 = and i1 %484, %483, !dbg !2828
  br i1 %485, label %526, label %488, !dbg !2828

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2827
  br i1 %487, label %526, label %488, !dbg !2829

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2830
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2448
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2465
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2821
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2469
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2470
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2540
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2540
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %496, metadata !2417, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %495, metadata !2410, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %494, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %493, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %492, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %491, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %490, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %489, metadata !2399, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.label(metadata !2445), !dbg !2831
  br i1 %109, label %498, label %629, !dbg !2832

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2416, metadata !DIExpression()), !dbg !2540
  %499 = and i8 %493, 1, !dbg !2834
  %500 = icmp eq i8 %499, 0, !dbg !2834
  %501 = and i1 %110, %500, !dbg !2834
  br i1 %501, label %502, label %518, !dbg !2834

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2836
  br i1 %503, label %504, label %506, !dbg !2840

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2836
  store i8 39, i8* %505, align 1, !dbg !2836, !tbaa !1457
  br label %506, !dbg !2836

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %507, metadata !2400, metadata !DIExpression()), !dbg !2448
  %508 = icmp ult i64 %507, %497, !dbg !2841
  br i1 %508, label %509, label %511, !dbg !2844

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2841
  store i8 36, i8* %510, align 1, !dbg !2841, !tbaa !1457
  br label %511, !dbg !2841

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %512, metadata !2400, metadata !DIExpression()), !dbg !2448
  %513 = icmp ult i64 %512, %497, !dbg !2845
  br i1 %513, label %514, label %516, !dbg !2848

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2845
  store i8 39, i8* %515, align 1, !dbg !2845, !tbaa !1457
  br label %516, !dbg !2845

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2848
  call void @llvm.dbg.value(metadata i64 %517, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 1, metadata !2407, metadata !DIExpression()), !dbg !2448
  br label %518, !dbg !2849

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2540
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %520, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %519, metadata !2400, metadata !DIExpression()), !dbg !2448
  %521 = icmp ult i64 %519, %497, !dbg !2850
  br i1 %521, label %522, label %524, !dbg !2853

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2850
  store i8 92, i8* %523, align 1, !dbg !2850, !tbaa !1457
  br label %524, !dbg !2850

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %525, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %536, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %535, metadata !2417, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %534, metadata !2416, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %533, metadata !2410, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %532, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %531, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %530, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %529, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %528, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %527, metadata !2399, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.label(metadata !2446), !dbg !2854
  br label %553, !dbg !2855

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2830
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2448
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2465
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2821
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2469
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2470
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2858
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2540
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2540
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %535, metadata !2417, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %534, metadata !2416, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %533, metadata !2410, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %532, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %531, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %530, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %529, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %528, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %527, metadata !2399, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.label(metadata !2446), !dbg !2854
  %537 = and i8 %531, 1, !dbg !2855
  %538 = icmp ne i8 %537, 0, !dbg !2855
  %539 = and i8 %534, 1, !dbg !2855
  %540 = icmp eq i8 %539, 0, !dbg !2855
  %541 = and i1 %538, %540, !dbg !2855
  br i1 %541, label %542, label %553, !dbg !2855

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2859
  br i1 %543, label %544, label %546, !dbg !2863

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2859
  store i8 39, i8* %545, align 1, !dbg !2859, !tbaa !1457
  br label %546, !dbg !2859

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %547, metadata !2400, metadata !DIExpression()), !dbg !2448
  %548 = icmp ult i64 %547, %536, !dbg !2864
  br i1 %548, label %549, label %551, !dbg !2867

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2864
  store i8 39, i8* %550, align 1, !dbg !2864, !tbaa !1457
  br label %551, !dbg !2864

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2867
  call void @llvm.dbg.value(metadata i64 %552, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2448
  br label %553, !dbg !2868

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2540
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %562, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %561, metadata !2400, metadata !DIExpression()), !dbg !2448
  %563 = icmp ult i64 %561, %554, !dbg !2869
  br i1 %563, label %564, label %566, !dbg !2872

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2869
  store i8 %556, i8* %565, align 1, !dbg !2869, !tbaa !1457
  br label %566, !dbg !2869

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %567, metadata !2400, metadata !DIExpression()), !dbg !2448
  %568 = and i8 %555, 1, !dbg !2873
  %569 = icmp eq i8 %568, 0, !dbg !2873
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2875
  call void @llvm.dbg.value(metadata i8 %570, metadata !2409, metadata !DIExpression()), !dbg !2448
  br label %571, !dbg !2876

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2830
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2448
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2465
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2821
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2469
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2448
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2471
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %578, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %577, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %576, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %575, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %574, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %573, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %572, metadata !2399, metadata !DIExpression()), !dbg !2448
  %580 = add i64 %572, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %580, metadata !2399, metadata !DIExpression()), !dbg !2448
  br label %122, !dbg !2878, !llvm.loop !2879

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %127, metadata !2407, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %128, metadata !2408, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %129, metadata !2409, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  %583 = icmp eq i64 %124, 0, !dbg !2881
  %584 = and i1 %110, %583, !dbg !2883
  %585 = xor i1 %584, true, !dbg !2883
  %586 = or i1 %109, %585, !dbg !2883
  br i1 %586, label %587, label %629, !dbg !2883

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2884
  %589 = xor i1 %588, true, !dbg !2884
  %590 = and i8 %128, 1, !dbg !2886
  %591 = icmp eq i8 %590, 0, !dbg !2886
  %592 = or i1 %591, %589, !dbg !2884
  br i1 %592, label %602, label %593, !dbg !2884

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2887
  %595 = icmp eq i8 %594, 0, !dbg !2887
  br i1 %595, label %598, label %596, !dbg !2890

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %94, metadata !2397, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %95, metadata !2398, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %125, metadata !2401, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %582, metadata !2393, metadata !DIExpression()), !dbg !2448
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2891
  br label %645, !dbg !2892

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2893
  %600 = icmp ne i64 %125, 0, !dbg !2895
  %601 = and i1 %600, %599, !dbg !2896
  br i1 %601, label %26, label %602, !dbg !2896

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %130, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  %603 = icmp ne i8* %97, null, !dbg !2897
  %604 = and i1 %603, %109, !dbg !2899
  br i1 %604, label %605, label %620, !dbg !2899

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %124, metadata !2400, metadata !DIExpression()), !dbg !2448
  %606 = load i8, i8* %97, align 1, !dbg !2900, !tbaa !1457
  %607 = icmp eq i8 %606, 0, !dbg !2903
  br i1 %607, label %620, label %608, !dbg !2903

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2402, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %611, metadata !2400, metadata !DIExpression()), !dbg !2448
  %612 = icmp ult i64 %611, %130, !dbg !2904
  br i1 %612, label %613, label %615, !dbg !2907

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2904
  store i8 %609, i8* %614, align 1, !dbg !2904, !tbaa !1457
  br label %615, !dbg !2904

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %616, metadata !2400, metadata !DIExpression()), !dbg !2448
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %617, metadata !2402, metadata !DIExpression()), !dbg !2448
  %618 = load i8, i8* %617, align 1, !dbg !2900, !tbaa !1457
  %619 = icmp eq i8 %618, 0, !dbg !2903
  br i1 %619, label %620, label %608, !dbg !2903, !llvm.loop !2909

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2502
  call void @llvm.dbg.value(metadata i64 %621, metadata !2400, metadata !DIExpression()), !dbg !2448
  %622 = icmp ult i64 %621, %130, !dbg !2911
  br i1 %622, label %623, label %645, !dbg !2913

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2914
  store i8 0, i8* %624, align 1, !dbg !2915, !tbaa !1457
  br label %645, !dbg !2914

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %630, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.label(metadata !2447), !dbg !2916
  %627 = icmp eq i8 %101, 0, !dbg !2917
  %628 = select i1 %627, i32 2, i32 4, !dbg !2917
  br label %635, !dbg !2917

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %630, metadata !2393, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.label(metadata !2447), !dbg !2916
  %632 = icmp eq i32 %93, 2, !dbg !2919
  %633 = icmp eq i8 %101, 0, !dbg !2917
  %634 = select i1 %633, i32 2, i32 4, !dbg !2917
  br i1 %632, label %635, label %639, !dbg !2917

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2917

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2394, metadata !DIExpression()), !dbg !2448
  %643 = and i32 %5, -3, !dbg !2920
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2921
  br label %645, !dbg !2922

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2923
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2924 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %1, metadata !2929, metadata !DIExpression()), !dbg !2932
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2933
  call void @llvm.dbg.value(metadata i8* %3, metadata !2930, metadata !DIExpression()), !dbg !2932
  %4 = icmp eq i8* %3, %0, !dbg !2934
  br i1 %4, label %5, label %71, !dbg !2936

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %6, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %6, metadata !2938, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8* undef, metadata !2944, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 85, metadata !2945, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 84, metadata !2946, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 70, metadata !2947, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 45, metadata !2948, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 56, metadata !2949, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 0, metadata !2950, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 0, metadata !2951, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 0, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 0, metadata !2953, metadata !DIExpression()), !dbg !2954
  %7 = load i8, i8* %6, align 1, !dbg !2957, !tbaa !1457
  %8 = and i8 %7, -33, !dbg !2957
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2957

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2959, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* undef, metadata !2964, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 84, metadata !2965, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 70, metadata !2966, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 45, metadata !2967, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 56, metadata !2968, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 0, metadata !2969, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 0, metadata !2970, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 0, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 0, metadata !2972, metadata !DIExpression()), !dbg !2973
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2977
  %11 = load i8, i8* %10, align 1, !dbg !2977, !tbaa !1457
  %12 = and i8 %11, -33, !dbg !2977
  %13 = icmp eq i8 %12, 84, !dbg !2977
  br i1 %13, label %14, label %68, !dbg !2977

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2979, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8* undef, metadata !2984, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 70, metadata !2985, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 45, metadata !2986, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 56, metadata !2987, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2991, metadata !DIExpression()), !dbg !2992
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2996
  %16 = load i8, i8* %15, align 1, !dbg !2996, !tbaa !1457
  %17 = and i8 %16, -33, !dbg !2996
  %18 = icmp eq i8 %17, 70, !dbg !2996
  br i1 %18, label %19, label %68, !dbg !2996

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2998, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8* undef, metadata !3003, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 45, metadata !3004, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 56, metadata !3005, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 0, metadata !3006, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 0, metadata !3007, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 0, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 0, metadata !3009, metadata !DIExpression()), !dbg !3010
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3014
  %21 = load i8, i8* %20, align 1, !dbg !3014, !tbaa !1457
  %22 = icmp eq i8 %21, 45, !dbg !3014
  br i1 %22, label %23, label %68, !dbg !3016

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3017, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8* undef, metadata !3022, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 56, metadata !3023, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !3024, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !3025, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !3026, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 0, metadata !3027, metadata !DIExpression()), !dbg !3028
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3032
  %25 = load i8, i8* %24, align 1, !dbg !3032, !tbaa !1457
  %26 = icmp eq i8 %25, 56, !dbg !3032
  br i1 %26, label %27, label %68, !dbg !3034

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3035, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* undef, metadata !3040, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 0, metadata !3041, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 0, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 0, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 0, metadata !3044, metadata !DIExpression()), !dbg !3045
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3049
  %29 = load i8, i8* %28, align 1, !dbg !3049, !tbaa !1457
  %30 = icmp eq i8 %29, 0, !dbg !3049
  br i1 %30, label %31, label %68, !dbg !3051

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3052, !tbaa !1457
  %33 = icmp eq i8 %32, 96, !dbg !3053
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.81, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.82, i64 0, i64 0), !dbg !3052
  br label %71, !dbg !3054

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2959, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8* undef, metadata !2964, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 66, metadata !2965, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 49, metadata !2966, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 56, metadata !2967, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 48, metadata !2968, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 51, metadata !2969, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 48, metadata !2970, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 0, metadata !2971, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 0, metadata !2972, metadata !DIExpression()), !dbg !3055
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3059
  %37 = load i8, i8* %36, align 1, !dbg !3059, !tbaa !1457
  %38 = and i8 %37, -33, !dbg !3059
  %39 = icmp eq i8 %38, 66, !dbg !3059
  br i1 %39, label %40, label %68, !dbg !3059

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2979, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* undef, metadata !2984, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 49, metadata !2985, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 56, metadata !2986, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 48, metadata !2987, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 51, metadata !2988, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 48, metadata !2989, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !2990, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !2991, metadata !DIExpression()), !dbg !3060
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3062
  %42 = load i8, i8* %41, align 1, !dbg !3062, !tbaa !1457
  %43 = icmp eq i8 %42, 49, !dbg !3062
  br i1 %43, label %44, label %68, !dbg !3063

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2998, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8* undef, metadata !3003, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8 56, metadata !3004, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8 48, metadata !3005, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8 51, metadata !3006, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8 48, metadata !3007, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8 0, metadata !3008, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8 0, metadata !3009, metadata !DIExpression()), !dbg !3064
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3066
  %46 = load i8, i8* %45, align 1, !dbg !3066, !tbaa !1457
  %47 = icmp eq i8 %46, 56, !dbg !3066
  br i1 %47, label %48, label %68, !dbg !3067

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3017, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8* undef, metadata !3022, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 48, metadata !3023, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 51, metadata !3024, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 48, metadata !3025, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 0, metadata !3026, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 0, metadata !3027, metadata !DIExpression()), !dbg !3068
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3070
  %50 = load i8, i8* %49, align 1, !dbg !3070, !tbaa !1457
  %51 = icmp eq i8 %50, 48, !dbg !3070
  br i1 %51, label %52, label %68, !dbg !3071

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3035, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8* undef, metadata !3040, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8 51, metadata !3041, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8 48, metadata !3042, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8 0, metadata !3043, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8 0, metadata !3044, metadata !DIExpression()), !dbg !3072
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3074
  %54 = load i8, i8* %53, align 1, !dbg !3074, !tbaa !1457
  %55 = icmp eq i8 %54, 51, !dbg !3074
  br i1 %55, label %56, label %68, !dbg !3075

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3076, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8* undef, metadata !3081, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8 48, metadata !3082, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8 0, metadata !3083, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8 0, metadata !3084, metadata !DIExpression()), !dbg !3085
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3089
  %58 = load i8, i8* %57, align 1, !dbg !3089, !tbaa !1457
  %59 = icmp eq i8 %58, 48, !dbg !3089
  br i1 %59, label %60, label %68, !dbg !3091

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3092, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* undef, metadata !3097, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 0, metadata !3098, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 0, metadata !3099, metadata !DIExpression()), !dbg !3100
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3104
  %62 = load i8, i8* %61, align 1, !dbg !3104, !tbaa !1457
  %63 = icmp eq i8 %62, 0, !dbg !3104
  br i1 %63, label %64, label %68, !dbg !3106

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3107, !tbaa !1457
  %66 = icmp eq i8 %65, 96, !dbg !3108
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.83, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.84, i64 0, i64 0), !dbg !3107
  br label %71, !dbg !3109

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3110
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), !dbg !3111
  br label %71, !dbg !3112

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2932
  ret i8* %72, !dbg !3113
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !432 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !436 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3114 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %1, metadata !3119, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()) #20, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()) #20, !dbg !3135
  call void @llvm.dbg.value(metadata i64* null, metadata !3128, metadata !DIExpression()) #20, !dbg !3135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3129, metadata !DIExpression()) #20, !dbg !3135
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3137
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3137
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3130, metadata !DIExpression()) #20, !dbg !3135
  %6 = tail call i32* @__errno_location() #26, !dbg !3138
  %7 = load i32, i32* %6, align 4, !dbg !3138, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %7, metadata !3131, metadata !DIExpression()) #20, !dbg !3135
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3139
  %9 = load i32, i32* %8, align 4, !dbg !3139, !tbaa !2333
  %10 = or i32 %9, 1, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %10, metadata !3132, metadata !DIExpression()) #20, !dbg !3135
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3141
  %12 = load i32, i32* %11, align 8, !dbg !3141, !tbaa !2282
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3142
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3143
  %15 = load i8*, i8** %14, align 8, !dbg !3143, !tbaa !2356
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3144
  %17 = load i8*, i8** %16, align 8, !dbg !3144, !tbaa !2359
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !3145
  %19 = add i64 %18, 1, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %19, metadata !3133, metadata !DIExpression()) #20, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %19, metadata !3147, metadata !DIExpression()) #20, !dbg !3152
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %20, metadata !3134, metadata !DIExpression()) #20, !dbg !3135
  %21 = load i32, i32* %11, align 8, !dbg !3155, !tbaa !2282
  %22 = load i8*, i8** %14, align 8, !dbg !3156, !tbaa !2356
  %23 = load i8*, i8** %16, align 8, !dbg !3157, !tbaa !2359
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !3158
  store i32 %7, i32* %6, align 4, !dbg !3159, !tbaa !1368
  ret i8* %20, !dbg !3160
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3123 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64* %2, metadata !3128, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3129, metadata !DIExpression()), !dbg !3161
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3162
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3162
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3130, metadata !DIExpression()), !dbg !3161
  %7 = tail call i32* @__errno_location() #26, !dbg !3163
  %8 = load i32, i32* %7, align 4, !dbg !3163, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %8, metadata !3131, metadata !DIExpression()), !dbg !3161
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3164
  %10 = load i32, i32* %9, align 4, !dbg !3164, !tbaa !2333
  %11 = icmp ne i64* %2, null, !dbg !3165
  %12 = xor i1 %11, true, !dbg !3165
  %13 = zext i1 %12 to i32, !dbg !3165
  %14 = or i32 %10, %13, !dbg !3166
  call void @llvm.dbg.value(metadata i32 %14, metadata !3132, metadata !DIExpression()), !dbg !3161
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3167
  %16 = load i32, i32* %15, align 8, !dbg !3167, !tbaa !2282
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3168
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3169
  %19 = load i8*, i8** %18, align 8, !dbg !3169, !tbaa !2356
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3170
  %21 = load i8*, i8** %20, align 8, !dbg !3170, !tbaa !2359
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3171
  %23 = add i64 %22, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %23, metadata !3133, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %23, metadata !3147, metadata !DIExpression()) #20, !dbg !3173
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !3175
  call void @llvm.dbg.value(metadata i8* %24, metadata !3134, metadata !DIExpression()), !dbg !3161
  %25 = load i32, i32* %15, align 8, !dbg !3176, !tbaa !2282
  %26 = load i8*, i8** %18, align 8, !dbg !3177, !tbaa !2356
  %27 = load i8*, i8** %20, align 8, !dbg !3178, !tbaa !2359
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3179
  store i32 %8, i32* %7, align 4, !dbg !3180, !tbaa !1368
  br i1 %11, label %29, label %30, !dbg !3181

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3182, !tbaa !2161
  br label %30, !dbg !3184

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3185
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3186 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3190, !tbaa !1291
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3188, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i32 1, metadata !3189, metadata !DIExpression()), !dbg !3191
  %2 = load i32, i32* @nslots, align 4, !dbg !3192, !tbaa !1368
  %3 = icmp sgt i32 %2, 1, !dbg !3195
  br i1 %3, label %4, label %12, !dbg !3196

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3189, metadata !DIExpression()), !dbg !3191
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3197
  %7 = load i8*, i8** %6, align 8, !dbg !3197, !tbaa !3198
  tail call void @free(i8* %7) #20, !dbg !3200
  %8 = add nuw nsw i64 %5, 1, !dbg !3201
  call void @llvm.dbg.value(metadata i64 %8, metadata !3189, metadata !DIExpression()), !dbg !3191
  %9 = load i32, i32* @nslots, align 4, !dbg !3192, !tbaa !1368
  %10 = sext i32 %9 to i64, !dbg !3195
  %11 = icmp slt i64 %8, %10, !dbg !3195
  br i1 %11, label %4, label %12, !dbg !3196, !llvm.loop !3202

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3204
  %14 = load i8*, i8** %13, align 8, !dbg !3204, !tbaa !3198
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3206
  br i1 %15, label %17, label %16, !dbg !3207

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !3208
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3210, !tbaa !3211
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3212, !tbaa !3198
  br label %17, !dbg !3213

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3214
  br i1 %18, label %21, label %19, !dbg !3216

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3217
  tail call void @free(i8* %20) #20, !dbg !3219
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3220, !tbaa !1291
  br label %21, !dbg !3221

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3222, !tbaa !1368
  ret void, !dbg !3223
}

; Function Attrs: nounwind
declare !dbg !411 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3224 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3226, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i8* %1, metadata !3227, metadata !DIExpression()), !dbg !3228
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3229
  ret i8* %3, !dbg !3230
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3235, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %1, metadata !3236, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %2, metadata !3237, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3238, metadata !DIExpression()), !dbg !3250
  %5 = tail call i32* @__errno_location() #26, !dbg !3251
  %6 = load i32, i32* %5, align 4, !dbg !3251, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %6, metadata !3239, metadata !DIExpression()), !dbg !3250
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3252, !tbaa !1291
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3240, metadata !DIExpression()), !dbg !3250
  %8 = icmp slt i32 %0, 0, !dbg !3253
  br i1 %8, label %9, label %10, !dbg !3255

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3256
  unreachable, !dbg !3256

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3257, !tbaa !1368
  %12 = icmp sgt i32 %11, %0, !dbg !3258
  br i1 %12, label %34, label %13, !dbg !3259

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3260
  call void @llvm.dbg.value(metadata i1 %14, metadata !3241, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3244, metadata !DIExpression()), !dbg !3261
  %15 = icmp eq i32 %0, 2147483647, !dbg !3262
  br i1 %15, label %16, label %17, !dbg !3264

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3265
  unreachable, !dbg !3265

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3266
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3266
  %20 = add nuw nsw i32 %0, 1, !dbg !3267
  %21 = sext i32 %20 to i64, !dbg !3268
  %22 = shl nuw nsw i64 %21, 4, !dbg !3269
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !3270
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3270
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3240, metadata !DIExpression()), !dbg !3250
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3271, !tbaa !1291
  br i1 %14, label %25, label %26, !dbg !3272

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3273, !tbaa.struct !3275
  br label %26, !dbg !3276

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3277, !tbaa !1368
  %28 = sext i32 %27 to i64, !dbg !3278
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3278
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3279
  %31 = sub nsw i32 %20, %27, !dbg !3280
  %32 = sext i32 %31 to i64, !dbg !3281
  %33 = shl nsw i64 %32, 4, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %30, metadata !2681, metadata !DIExpression()) #20, !dbg !3283
  call void @llvm.dbg.value(metadata i32 0, metadata !2686, metadata !DIExpression()) #20, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %33, metadata !2687, metadata !DIExpression()) #20, !dbg !3283
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !3285
  store i32 %20, i32* @nslots, align 4, !dbg !3286, !tbaa !1368
  br label %34, !dbg !3287

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3250
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3240, metadata !DIExpression()), !dbg !3250
  %36 = zext i32 %0 to i64, !dbg !3288
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3289
  %38 = load i64, i64* %37, align 8, !dbg !3289, !tbaa !3211
  call void @llvm.dbg.value(metadata i64 %38, metadata !3245, metadata !DIExpression()), !dbg !3290
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3291
  %40 = load i8*, i8** %39, align 8, !dbg !3291, !tbaa !3198
  call void @llvm.dbg.value(metadata i8* %40, metadata !3247, metadata !DIExpression()), !dbg !3290
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3292
  %42 = load i32, i32* %41, align 4, !dbg !3292, !tbaa !2333
  %43 = or i32 %42, 1, !dbg !3293
  call void @llvm.dbg.value(metadata i32 %43, metadata !3248, metadata !DIExpression()), !dbg !3290
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3294
  %45 = load i32, i32* %44, align 8, !dbg !3294, !tbaa !2282
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3295
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3296
  %48 = load i8*, i8** %47, align 8, !dbg !3296, !tbaa !2356
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3297
  %50 = load i8*, i8** %49, align 8, !dbg !3297, !tbaa !2359
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %51, metadata !3249, metadata !DIExpression()), !dbg !3290
  %52 = icmp ugt i64 %38, %51, !dbg !3299
  br i1 %52, label %63, label %53, !dbg !3301

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %54, metadata !3245, metadata !DIExpression()), !dbg !3290
  store i64 %54, i64* %37, align 8, !dbg !3304, !tbaa !3211
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3305
  br i1 %55, label %57, label %56, !dbg !3307

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !3308
  br label %57, !dbg !3308

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3147, metadata !DIExpression()) #20, !dbg !3309
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %58, metadata !3247, metadata !DIExpression()), !dbg !3290
  store i8* %58, i8** %39, align 8, !dbg !3312, !tbaa !3198
  %59 = load i32, i32* %44, align 8, !dbg !3313, !tbaa !2282
  %60 = load i8*, i8** %47, align 8, !dbg !3314, !tbaa !2356
  %61 = load i8*, i8** %49, align 8, !dbg !3315, !tbaa !2359
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3316
  br label %63, !dbg !3317

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3290
  call void @llvm.dbg.value(metadata i8* %64, metadata !3247, metadata !DIExpression()), !dbg !3290
  store i32 %6, i32* %5, align 4, !dbg !3318, !tbaa !1368
  ret i8* %64, !dbg !3319
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3324, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8* %1, metadata !3325, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %2, metadata !3326, metadata !DIExpression()), !dbg !3327
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3328
  ret i8* %4, !dbg !3329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3330 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3332, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i32 0, metadata !3226, metadata !DIExpression()) #20, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()) #20, !dbg !3334
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3336
  ret i8* %2, !dbg !3337
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3338 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3342, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %1, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3324, metadata !DIExpression()) #20, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %0, metadata !3325, metadata !DIExpression()) #20, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()) #20, !dbg !3345
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3347
  ret i8* %3, !dbg !3348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3349 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %1, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %2, metadata !3353, metadata !DIExpression()), !dbg !3355
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3356
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3356
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3354, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 %1, metadata !3358, metadata !DIExpression()) #20, !dbg !3364
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3363, metadata !DIExpression()) #20, !dbg !3366
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3366, !alias.scope !3367
  %6 = icmp eq i32 %1, 10, !dbg !3370
  br i1 %6, label %7, label %8, !dbg !3372

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3373, !noalias !3367
  unreachable, !dbg !3373

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3374
  store i32 %1, i32* %9, align 8, !dbg !3375, !tbaa !2282, !alias.scope !3367
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3376
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3377
  ret i8* %10, !dbg !3378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3379 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3383, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i32 %1, metadata !3384, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i8* %2, metadata !3385, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %3, metadata !3386, metadata !DIExpression()), !dbg !3388
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3389
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3389
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3387, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %1, metadata !3358, metadata !DIExpression()) #20, !dbg !3391
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3363, metadata !DIExpression()) #20, !dbg !3393
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3393, !alias.scope !3394
  %7 = icmp eq i32 %1, 10, !dbg !3397
  br i1 %7, label %8, label %9, !dbg !3398

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3399, !noalias !3394
  unreachable, !dbg !3399

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3400
  store i32 %1, i32* %10, align 8, !dbg !3401, !tbaa !2282, !alias.scope !3394
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3402
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3403
  ret i8* %11, !dbg !3404
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3405 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3363, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3354, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %0, metadata !3409, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i8* %1, metadata !3410, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i32 0, metadata !3351, metadata !DIExpression()) #20, !dbg !3416
  call void @llvm.dbg.value(metadata i32 %0, metadata !3352, metadata !DIExpression()) #20, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !3353, metadata !DIExpression()) #20, !dbg !3416
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3417
  call void @llvm.dbg.value(metadata i32 %0, metadata !3358, metadata !DIExpression()) #20, !dbg !3418
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3411, !alias.scope !3419
  %5 = icmp eq i32 %0, 10, !dbg !3422
  br i1 %5, label %6, label %7, !dbg !3423

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !3424, !noalias !3419
  unreachable, !dbg !3424

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3425
  store i32 %0, i32* %8, align 8, !dbg !3426, !tbaa !2282, !alias.scope !3419
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3427
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3428
  ret i8* %9, !dbg !3429
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3430 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3363, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3387, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i32 %0, metadata !3434, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8* %1, metadata !3435, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %2, metadata !3436, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i32 0, metadata !3383, metadata !DIExpression()) #20, !dbg !3442
  call void @llvm.dbg.value(metadata i32 %0, metadata !3384, metadata !DIExpression()) #20, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %1, metadata !3385, metadata !DIExpression()) #20, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %2, metadata !3386, metadata !DIExpression()) #20, !dbg !3442
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3443
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %0, metadata !3358, metadata !DIExpression()) #20, !dbg !3444
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3437, !alias.scope !3445
  %6 = icmp eq i32 %0, 10, !dbg !3448
  br i1 %6, label %7, label %8, !dbg !3449

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3450, !noalias !3445
  unreachable, !dbg !3450

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3451
  store i32 %0, i32* %9, align 8, !dbg !3452, !tbaa !2282, !alias.scope !3445
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3453
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3454
  ret i8* %10, !dbg !3455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3456 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 %2, metadata !3462, metadata !DIExpression()), !dbg !3464
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3465
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3465
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3463, metadata !DIExpression()), !dbg !3466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3467, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2300, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8 %2, metadata !2301, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 1, metadata !2302, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8 %2, metadata !2303, metadata !DIExpression()), !dbg !3469
  %6 = lshr i8 %2, 5, !dbg !3471
  %7 = zext i8 %6 to i64, !dbg !3471
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3472
  call void @llvm.dbg.value(metadata i32* %8, metadata !2304, metadata !DIExpression()), !dbg !3469
  %9 = and i8 %2, 31, !dbg !3473
  %10 = zext i8 %9 to i32, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %10, metadata !2306, metadata !DIExpression()), !dbg !3469
  %11 = load i32, i32* %8, align 4, !dbg !3474, !tbaa !1368
  %12 = lshr i32 %11, %10, !dbg !3475
  %13 = and i32 %12, 1, !dbg !3476
  call void @llvm.dbg.value(metadata i32 %13, metadata !2307, metadata !DIExpression()), !dbg !3469
  %14 = xor i32 %13, 1, !dbg !3477
  %15 = shl i32 %14, %10, !dbg !3478
  %16 = xor i32 %15, %11, !dbg !3479
  store i32 %16, i32* %8, align 4, !dbg !3479, !tbaa !1368
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3480
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3481
  ret i8* %17, !dbg !3482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3483 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3463, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* %0, metadata !3487, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i8 %1, metadata !3488, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()) #20, !dbg !3492
  call void @llvm.dbg.value(metadata i64 -1, metadata !3461, metadata !DIExpression()) #20, !dbg !3492
  call void @llvm.dbg.value(metadata i8 %1, metadata !3462, metadata !DIExpression()) #20, !dbg !3492
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3493
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3494, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2300, metadata !DIExpression()) #20, !dbg !3495
  call void @llvm.dbg.value(metadata i8 %1, metadata !2301, metadata !DIExpression()) #20, !dbg !3495
  call void @llvm.dbg.value(metadata i32 1, metadata !2302, metadata !DIExpression()) #20, !dbg !3495
  call void @llvm.dbg.value(metadata i8 %1, metadata !2303, metadata !DIExpression()) #20, !dbg !3495
  %5 = lshr i8 %1, 5, !dbg !3497
  %6 = zext i8 %5 to i64, !dbg !3497
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3498
  call void @llvm.dbg.value(metadata i32* %7, metadata !2304, metadata !DIExpression()) #20, !dbg !3495
  %8 = and i8 %1, 31, !dbg !3499
  %9 = zext i8 %8 to i32, !dbg !3499
  call void @llvm.dbg.value(metadata i32 %9, metadata !2306, metadata !DIExpression()) #20, !dbg !3495
  %10 = load i32, i32* %7, align 4, !dbg !3500, !tbaa !1368
  %11 = lshr i32 %10, %9, !dbg !3501
  %12 = and i32 %11, 1, !dbg !3502
  call void @llvm.dbg.value(metadata i32 %12, metadata !2307, metadata !DIExpression()) #20, !dbg !3495
  %13 = xor i32 %12, 1, !dbg !3503
  %14 = shl i32 %13, %9, !dbg !3504
  %15 = xor i32 %14, %10, !dbg !3505
  store i32 %15, i32* %7, align 4, !dbg !3505, !tbaa !1368
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3506
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3507
  ret i8* %16, !dbg !3508
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3509 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3463, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i8* %0, metadata !3511, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8* %0, metadata !3487, metadata !DIExpression()) #20, !dbg !3516
  call void @llvm.dbg.value(metadata i8 58, metadata !3488, metadata !DIExpression()) #20, !dbg !3516
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()) #20, !dbg !3517
  call void @llvm.dbg.value(metadata i64 -1, metadata !3461, metadata !DIExpression()) #20, !dbg !3517
  call void @llvm.dbg.value(metadata i8 58, metadata !3462, metadata !DIExpression()) #20, !dbg !3517
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3518
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3519, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2300, metadata !DIExpression()) #20, !dbg !3520
  call void @llvm.dbg.value(metadata i8 58, metadata !2301, metadata !DIExpression()) #20, !dbg !3520
  call void @llvm.dbg.value(metadata i32 1, metadata !2302, metadata !DIExpression()) #20, !dbg !3520
  call void @llvm.dbg.value(metadata i8 58, metadata !2303, metadata !DIExpression()) #20, !dbg !3520
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3522
  call void @llvm.dbg.value(metadata i32* %4, metadata !2304, metadata !DIExpression()) #20, !dbg !3520
  call void @llvm.dbg.value(metadata i32 26, metadata !2306, metadata !DIExpression()) #20, !dbg !3520
  %5 = load i32, i32* %4, align 4, !dbg !3523, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %5, metadata !2307, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3520
  %6 = or i32 %5, 67108864, !dbg !3524
  store i32 %6, i32* %4, align 4, !dbg !3524, !tbaa !1368
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3525
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3526
  ret i8* %7, !dbg !3527
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3528 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3463, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8* %0, metadata !3530, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()) #20, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()) #20, !dbg !3535
  call void @llvm.dbg.value(metadata i8 58, metadata !3462, metadata !DIExpression()) #20, !dbg !3535
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3536
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3537, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2300, metadata !DIExpression()) #20, !dbg !3538
  call void @llvm.dbg.value(metadata i8 58, metadata !2301, metadata !DIExpression()) #20, !dbg !3538
  call void @llvm.dbg.value(metadata i32 1, metadata !2302, metadata !DIExpression()) #20, !dbg !3538
  call void @llvm.dbg.value(metadata i8 58, metadata !2303, metadata !DIExpression()) #20, !dbg !3538
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32* %5, metadata !2304, metadata !DIExpression()) #20, !dbg !3538
  call void @llvm.dbg.value(metadata i32 26, metadata !2306, metadata !DIExpression()) #20, !dbg !3538
  %6 = load i32, i32* %5, align 4, !dbg !3541, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %6, metadata !2307, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3538
  %7 = or i32 %6, 67108864, !dbg !3542
  store i32 %7, i32* %5, align 4, !dbg !3542, !tbaa !1368
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3543
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3544
  ret i8* %8, !dbg !3545
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3546 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3363, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3552
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 %1, metadata !3549, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8* %2, metadata !3550, metadata !DIExpression()), !dbg !3554
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3555
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3555
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3551, metadata !DIExpression()), !dbg !3556
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3557
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3557
  call void @llvm.dbg.value(metadata i32 %1, metadata !3358, metadata !DIExpression()) #20, !dbg !3558
  call void @llvm.dbg.value(metadata i32 0, metadata !3363, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3558
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3552, !alias.scope !3559
  %8 = icmp eq i32 %1, 10, !dbg !3562
  br i1 %8, label %9, label %10, !dbg !3563

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3564, !noalias !3559
  unreachable, !dbg !3564

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3363, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3558
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3557
  store i32 %1, i32* %11, align 8, !dbg !3557, !tbaa.struct !3468
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3557
  %13 = bitcast i32* %12 to i8*, !dbg !3557
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3557, !tbaa.struct !3468
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3557
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2300, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8 58, metadata !2301, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i32 1, metadata !2302, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8 58, metadata !2303, metadata !DIExpression()), !dbg !3565
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3567
  call void @llvm.dbg.value(metadata i32* %14, metadata !2304, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i32 26, metadata !2306, metadata !DIExpression()), !dbg !3565
  %15 = load i32, i32* %14, align 4, !dbg !3568, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %15, metadata !2307, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3565
  %16 = or i32 %15, 67108864, !dbg !3569
  store i32 %16, i32* %14, align 4, !dbg !3569, !tbaa !1368
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3570
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3571
  ret i8* %17, !dbg !3572
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3573 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3581, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %0, metadata !3577, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8* %1, metadata !3578, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8* %2, metadata !3579, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8* %3, metadata !3580, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i32 %0, metadata !3586, metadata !DIExpression()) #20, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %1, metadata !3587, metadata !DIExpression()) #20, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %2, metadata !3588, metadata !DIExpression()) #20, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %3, metadata !3589, metadata !DIExpression()) #20, !dbg !3594
  call void @llvm.dbg.value(metadata i64 -1, metadata !3590, metadata !DIExpression()) #20, !dbg !3594
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3595
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3596, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2340, metadata !DIExpression()) #20, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %1, metadata !2341, metadata !DIExpression()) #20, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %2, metadata !2342, metadata !DIExpression()) #20, !dbg !3597
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2340, metadata !DIExpression()) #20, !dbg !3597
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3599
  store i32 10, i32* %7, align 8, !dbg !3600, !tbaa !2282
  %8 = icmp ne i8* %1, null, !dbg !3601
  %9 = icmp ne i8* %2, null, !dbg !3602
  %10 = and i1 %8, %9, !dbg !3603
  br i1 %10, label %12, label %11, !dbg !3603

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3604
  unreachable, !dbg !3604

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3605
  store i8* %1, i8** %13, align 8, !dbg !3606, !tbaa !2356
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3607
  store i8* %2, i8** %14, align 8, !dbg !3608, !tbaa !2359
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3609
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3610
  ret i8* %15, !dbg !3611
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3582 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3586, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8* %1, metadata !3587, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8* %2, metadata !3588, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8* %3, metadata !3589, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %4, metadata !3590, metadata !DIExpression()), !dbg !3612
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3613
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3613
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3581, metadata !DIExpression()), !dbg !3614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3615, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2340, metadata !DIExpression()) #20, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !2341, metadata !DIExpression()) #20, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %2, metadata !2342, metadata !DIExpression()) #20, !dbg !3616
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2340, metadata !DIExpression()) #20, !dbg !3616
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3618
  store i32 10, i32* %8, align 8, !dbg !3619, !tbaa !2282
  %9 = icmp ne i8* %1, null, !dbg !3620
  %10 = icmp ne i8* %2, null, !dbg !3621
  %11 = and i1 %9, %10, !dbg !3622
  br i1 %11, label %13, label %12, !dbg !3622

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !3623
  unreachable, !dbg !3623

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3624
  store i8* %1, i8** %14, align 8, !dbg !3625, !tbaa !2356
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3626
  store i8* %2, i8** %15, align 8, !dbg !3627, !tbaa !2359
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3628
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3629
  ret i8* %16, !dbg !3630
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3631 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3581, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i8* %0, metadata !3635, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %1, metadata !3636, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %2, metadata !3637, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 0, metadata !3577, metadata !DIExpression()) #20, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %0, metadata !3578, metadata !DIExpression()) #20, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %1, metadata !3579, metadata !DIExpression()) #20, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %2, metadata !3580, metadata !DIExpression()) #20, !dbg !3642
  call void @llvm.dbg.value(metadata i32 0, metadata !3586, metadata !DIExpression()) #20, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()) #20, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %1, metadata !3588, metadata !DIExpression()) #20, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %2, metadata !3589, metadata !DIExpression()) #20, !dbg !3643
  call void @llvm.dbg.value(metadata i64 -1, metadata !3590, metadata !DIExpression()) #20, !dbg !3643
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3644
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3645, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2340, metadata !DIExpression()) #20, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %0, metadata !2341, metadata !DIExpression()) #20, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %1, metadata !2342, metadata !DIExpression()) #20, !dbg !3646
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2340, metadata !DIExpression()) #20, !dbg !3646
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3648
  store i32 10, i32* %6, align 8, !dbg !3649, !tbaa !2282
  %7 = icmp ne i8* %0, null, !dbg !3650
  %8 = icmp ne i8* %1, null, !dbg !3651
  %9 = and i1 %7, %8, !dbg !3652
  br i1 %9, label %11, label %10, !dbg !3652

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !3653
  unreachable, !dbg !3653

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3654
  store i8* %0, i8** %12, align 8, !dbg !3655, !tbaa !2356
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3656
  store i8* %1, i8** %13, align 8, !dbg !3657, !tbaa !2359
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3658
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3659
  ret i8* %14, !dbg !3660
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3661 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3581, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %0, metadata !3665, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i8* %1, metadata !3666, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i8* %2, metadata !3667, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %3, metadata !3668, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i32 0, metadata !3586, metadata !DIExpression()) #20, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()) #20, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %1, metadata !3588, metadata !DIExpression()) #20, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %2, metadata !3589, metadata !DIExpression()) #20, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %3, metadata !3590, metadata !DIExpression()) #20, !dbg !3672
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3673
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3674, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2340, metadata !DIExpression()) #20, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %0, metadata !2341, metadata !DIExpression()) #20, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %1, metadata !2342, metadata !DIExpression()) #20, !dbg !3675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2340, metadata !DIExpression()) #20, !dbg !3675
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3677
  store i32 10, i32* %7, align 8, !dbg !3678, !tbaa !2282
  %8 = icmp ne i8* %0, null, !dbg !3679
  %9 = icmp ne i8* %1, null, !dbg !3680
  %10 = and i1 %8, %9, !dbg !3681
  br i1 %10, label %12, label %11, !dbg !3681

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3682
  unreachable, !dbg !3682

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3683
  store i8* %0, i8** %13, align 8, !dbg !3684, !tbaa !2356
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3685
  store i8* %1, i8** %14, align 8, !dbg !3686, !tbaa !2359
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3687
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3688
  ret i8* %15, !dbg !3689
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3694, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i8* %1, metadata !3695, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %2, metadata !3696, metadata !DIExpression()), !dbg !3697
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3698
  ret i8* %4, !dbg !3699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3700 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()) #20, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %0, metadata !3695, metadata !DIExpression()) #20, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %1, metadata !3696, metadata !DIExpression()) #20, !dbg !3707
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3709
  ret i8* %3, !dbg !3710
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3713, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8* %1, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %0, metadata !3694, metadata !DIExpression()) #20, !dbg !3716
  call void @llvm.dbg.value(metadata i8* %1, metadata !3695, metadata !DIExpression()) #20, !dbg !3716
  call void @llvm.dbg.value(metadata i64 -1, metadata !3696, metadata !DIExpression()) #20, !dbg !3716
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3718
  ret i8* %3, !dbg !3719
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3722, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 0, metadata !3713, metadata !DIExpression()) #20, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %0, metadata !3714, metadata !DIExpression()) #20, !dbg !3724
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()) #20, !dbg !3726
  call void @llvm.dbg.value(metadata i8* %0, metadata !3695, metadata !DIExpression()) #20, !dbg !3726
  call void @llvm.dbg.value(metadata i64 -1, metadata !3696, metadata !DIExpression()) #20, !dbg !3726
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3728
  ret i8* %2, !dbg !3729
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32 %0, i8* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !3730 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3734, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i8* %1, metadata !3735, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %2, metadata !3736, metadata !DIExpression()), !dbg !3744
  br label %4, !dbg !3745

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3746

6:                                                ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !3736, metadata !DIExpression()), !dbg !3744
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #20, !dbg !3747
  call void @llvm.dbg.value(metadata i64 %7, metadata !3737, metadata !DIExpression()), !dbg !3748
  %8 = icmp sgt i64 %7, -1, !dbg !3749
  br i1 %8, label %17, label %9, !dbg !3746

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !3751
  %11 = load i32, i32* %10, align 4, !dbg !3751, !tbaa !1368
  %12 = icmp eq i32 %11, 4, !dbg !3751
  br i1 %12, label %6, label %13, !dbg !3753, !llvm.loop !3754

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3757
  %15 = icmp ugt i64 %5, 2146435072, !dbg !3759
  %16 = and i1 %15, %14, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %5, metadata !3736, metadata !DIExpression()), !dbg !3744
  br i1 %16, label %4, label %17

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3761
}

; Function Attrs: nofree
declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3762 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3768, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8* %1, metadata !3769, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8* %2, metadata !3770, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8* %3, metadata !3771, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8** %4, metadata !3772, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i64 %5, metadata !3773, metadata !DIExpression()), !dbg !3774
  %7 = icmp eq i8* %1, null, !dbg !3775
  br i1 %7, label %10, label %8, !dbg !3777

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !3778
  br label %12, !dbg !3778

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.92, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !3779
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.93, i64 0, i64 0), i32 5) #20, !dbg !3780
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !3780
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.94, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3781
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #20, !dbg !3782
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.96, i64 0, i64 0)) #20, !dbg !3782
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.94, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3783
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
  ], !dbg !3784

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.97, i64 0, i64 0), i32 5) #20, !dbg !3785
  %21 = load i8*, i8** %4, align 8, !dbg !3785, !tbaa !1291
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !3785
  br label %147, !dbg !3787

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.98, i64 0, i64 0), i32 5) #20, !dbg !3788
  %25 = load i8*, i8** %4, align 8, !dbg !3788, !tbaa !1291
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3788
  %27 = load i8*, i8** %26, align 8, !dbg !3788, !tbaa !1291
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !3788
  br label %147, !dbg !3789

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.99, i64 0, i64 0), i32 5) #20, !dbg !3790
  %31 = load i8*, i8** %4, align 8, !dbg !3790, !tbaa !1291
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3790
  %33 = load i8*, i8** %32, align 8, !dbg !3790, !tbaa !1291
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3790
  %35 = load i8*, i8** %34, align 8, !dbg !3790, !tbaa !1291
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !3790
  br label %147, !dbg !3791

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.100, i64 0, i64 0), i32 5) #20, !dbg !3792
  %39 = load i8*, i8** %4, align 8, !dbg !3792, !tbaa !1291
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3792
  %41 = load i8*, i8** %40, align 8, !dbg !3792, !tbaa !1291
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3792
  %43 = load i8*, i8** %42, align 8, !dbg !3792, !tbaa !1291
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3792
  %45 = load i8*, i8** %44, align 8, !dbg !3792, !tbaa !1291
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !3792
  br label %147, !dbg !3793

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.101, i64 0, i64 0), i32 5) #20, !dbg !3794
  %49 = load i8*, i8** %4, align 8, !dbg !3794, !tbaa !1291
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3794
  %51 = load i8*, i8** %50, align 8, !dbg !3794, !tbaa !1291
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3794
  %53 = load i8*, i8** %52, align 8, !dbg !3794, !tbaa !1291
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3794
  %55 = load i8*, i8** %54, align 8, !dbg !3794, !tbaa !1291
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3794
  %57 = load i8*, i8** %56, align 8, !dbg !3794, !tbaa !1291
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !3794
  br label %147, !dbg !3795

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.102, i64 0, i64 0), i32 5) #20, !dbg !3796
  %61 = load i8*, i8** %4, align 8, !dbg !3796, !tbaa !1291
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3796
  %63 = load i8*, i8** %62, align 8, !dbg !3796, !tbaa !1291
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3796
  %65 = load i8*, i8** %64, align 8, !dbg !3796, !tbaa !1291
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3796
  %67 = load i8*, i8** %66, align 8, !dbg !3796, !tbaa !1291
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3796
  %69 = load i8*, i8** %68, align 8, !dbg !3796, !tbaa !1291
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3796
  %71 = load i8*, i8** %70, align 8, !dbg !3796, !tbaa !1291
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !3796
  br label %147, !dbg !3797

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.103, i64 0, i64 0), i32 5) #20, !dbg !3798
  %75 = load i8*, i8** %4, align 8, !dbg !3798, !tbaa !1291
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3798
  %77 = load i8*, i8** %76, align 8, !dbg !3798, !tbaa !1291
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3798
  %79 = load i8*, i8** %78, align 8, !dbg !3798, !tbaa !1291
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3798
  %81 = load i8*, i8** %80, align 8, !dbg !3798, !tbaa !1291
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3798
  %83 = load i8*, i8** %82, align 8, !dbg !3798, !tbaa !1291
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3798
  %85 = load i8*, i8** %84, align 8, !dbg !3798, !tbaa !1291
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3798
  %87 = load i8*, i8** %86, align 8, !dbg !3798, !tbaa !1291
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !3798
  br label %147, !dbg !3799

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.104, i64 0, i64 0), i32 5) #20, !dbg !3800
  %91 = load i8*, i8** %4, align 8, !dbg !3800, !tbaa !1291
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3800
  %93 = load i8*, i8** %92, align 8, !dbg !3800, !tbaa !1291
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3800
  %95 = load i8*, i8** %94, align 8, !dbg !3800, !tbaa !1291
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3800
  %97 = load i8*, i8** %96, align 8, !dbg !3800, !tbaa !1291
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3800
  %99 = load i8*, i8** %98, align 8, !dbg !3800, !tbaa !1291
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3800
  %101 = load i8*, i8** %100, align 8, !dbg !3800, !tbaa !1291
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3800
  %103 = load i8*, i8** %102, align 8, !dbg !3800, !tbaa !1291
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3800
  %105 = load i8*, i8** %104, align 8, !dbg !3800, !tbaa !1291
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !3800
  br label %147, !dbg !3801

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.105, i64 0, i64 0), i32 5) #20, !dbg !3802
  %109 = load i8*, i8** %4, align 8, !dbg !3802, !tbaa !1291
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3802
  %111 = load i8*, i8** %110, align 8, !dbg !3802, !tbaa !1291
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3802
  %113 = load i8*, i8** %112, align 8, !dbg !3802, !tbaa !1291
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3802
  %115 = load i8*, i8** %114, align 8, !dbg !3802, !tbaa !1291
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3802
  %117 = load i8*, i8** %116, align 8, !dbg !3802, !tbaa !1291
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3802
  %119 = load i8*, i8** %118, align 8, !dbg !3802, !tbaa !1291
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3802
  %121 = load i8*, i8** %120, align 8, !dbg !3802, !tbaa !1291
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3802
  %123 = load i8*, i8** %122, align 8, !dbg !3802, !tbaa !1291
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3802
  %125 = load i8*, i8** %124, align 8, !dbg !3802, !tbaa !1291
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !3802
  br label %147, !dbg !3803

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.106, i64 0, i64 0), i32 5) #20, !dbg !3804
  %129 = load i8*, i8** %4, align 8, !dbg !3804, !tbaa !1291
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3804
  %131 = load i8*, i8** %130, align 8, !dbg !3804, !tbaa !1291
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3804
  %133 = load i8*, i8** %132, align 8, !dbg !3804, !tbaa !1291
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3804
  %135 = load i8*, i8** %134, align 8, !dbg !3804, !tbaa !1291
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3804
  %137 = load i8*, i8** %136, align 8, !dbg !3804, !tbaa !1291
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3804
  %139 = load i8*, i8** %138, align 8, !dbg !3804, !tbaa !1291
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3804
  %141 = load i8*, i8** %140, align 8, !dbg !3804, !tbaa !1291
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3804
  %143 = load i8*, i8** %142, align 8, !dbg !3804, !tbaa !1291
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3804
  %145 = load i8*, i8** %144, align 8, !dbg !3804, !tbaa !1291
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !3804
  br label %147, !dbg !3805

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3806
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3807 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3811, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8* %1, metadata !3812, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8* %2, metadata !3813, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8* %3, metadata !3814, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8** %4, metadata !3815, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 0, metadata !3816, metadata !DIExpression()), !dbg !3817
  br label %6, !dbg !3818

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3820
  call void @llvm.dbg.value(metadata i64 %7, metadata !3816, metadata !DIExpression()), !dbg !3817
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3821
  %9 = load i8*, i8** %8, align 8, !dbg !3821, !tbaa !1291
  %10 = icmp eq i8* %9, null, !dbg !3823
  %11 = add i64 %7, 1, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %11, metadata !3816, metadata !DIExpression()), !dbg !3817
  br i1 %10, label %12, label %6, !dbg !3823, !llvm.loop !3825

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3816, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %7, metadata !3816, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %7, metadata !3816, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %7, metadata !3816, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %7, metadata !3816, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %7, metadata !3816, metadata !DIExpression()), !dbg !3817
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3827
  ret void, !dbg !3828
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3829 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3840, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i8* %1, metadata !3841, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i8* %2, metadata !3842, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i8* %3, metadata !3843, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3844, metadata !DIExpression()), !dbg !3848
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3849
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3849
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3846, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 0, metadata !3845, metadata !DIExpression()), !dbg !3848
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3851
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3851
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3851
  %11 = load i32, i32* %8, align 8, !dbg !3854
  %12 = icmp ult i32 %11, 41, !dbg !3854
  br i1 %12, label %13, label %18, !dbg !3854

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3854
  %15 = zext i32 %11 to i64, !dbg !3854
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3854
  %17 = add nuw nsw i32 %11, 8, !dbg !3854
  store i32 %17, i32* %8, align 8, !dbg !3854
  br label %21, !dbg !3854

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3854
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3854
  store i8* %20, i8** %9, align 8, !dbg !3854
  br label %21, !dbg !3854

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3854
  %25 = load i8*, i8** %24, align 8, !dbg !3854
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3855
  store i8* %25, i8** %26, align 16, !dbg !3856, !tbaa !1291
  %27 = icmp eq i8* %25, null, !dbg !3857
  br i1 %27, label %30, label %28, !dbg !3858

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3845, metadata !DIExpression()), !dbg !3848
  %29 = icmp ult i32 %22, 41, !dbg !3854
  br i1 %29, label %35, label %32, !dbg !3854

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3859
  call void @llvm.dbg.value(metadata i64 %31, metadata !3845, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i64 %31, metadata !3845, metadata !DIExpression()), !dbg !3848
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3860
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3861
  ret void, !dbg !3861

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3854
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3854
  store i8* %34, i8** %9, align 8, !dbg !3854
  br label %40, !dbg !3854

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3854
  %37 = zext i32 %22 to i64, !dbg !3854
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3854
  %39 = add nuw nsw i32 %22, 8, !dbg !3854
  store i32 %39, i32* %8, align 8, !dbg !3854
  br label %40, !dbg !3854

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3854
  %44 = load i8*, i8** %43, align 8, !dbg !3854
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3855
  store i8* %44, i8** %45, align 8, !dbg !3856, !tbaa !1291
  %46 = icmp eq i8* %44, null, !dbg !3857
  br i1 %46, label %30, label %47, !dbg !3858

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3845, metadata !DIExpression()), !dbg !3848
  %48 = icmp ult i32 %41, 41, !dbg !3854
  br i1 %48, label %52, label %49, !dbg !3854

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3854
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3854
  store i8* %51, i8** %9, align 8, !dbg !3854
  br label %57, !dbg !3854

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3854
  %54 = zext i32 %41 to i64, !dbg !3854
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3854
  %56 = add nuw nsw i32 %41, 8, !dbg !3854
  store i32 %56, i32* %8, align 8, !dbg !3854
  br label %57, !dbg !3854

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3854
  %61 = load i8*, i8** %60, align 8, !dbg !3854
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3855
  store i8* %61, i8** %62, align 16, !dbg !3856, !tbaa !1291
  %63 = icmp eq i8* %61, null, !dbg !3857
  br i1 %63, label %30, label %64, !dbg !3858

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3845, metadata !DIExpression()), !dbg !3848
  %65 = icmp ult i32 %58, 41, !dbg !3854
  br i1 %65, label %69, label %66, !dbg !3854

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3854
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3854
  store i8* %68, i8** %9, align 8, !dbg !3854
  br label %74, !dbg !3854

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3854
  %71 = zext i32 %58 to i64, !dbg !3854
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3854
  %73 = add nuw nsw i32 %58, 8, !dbg !3854
  store i32 %73, i32* %8, align 8, !dbg !3854
  br label %74, !dbg !3854

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3854
  %78 = load i8*, i8** %77, align 8, !dbg !3854
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3855
  store i8* %78, i8** %79, align 8, !dbg !3856, !tbaa !1291
  %80 = icmp eq i8* %78, null, !dbg !3857
  br i1 %80, label %30, label %81, !dbg !3858

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3845, metadata !DIExpression()), !dbg !3848
  %82 = icmp ult i32 %75, 41, !dbg !3854
  br i1 %82, label %86, label %83, !dbg !3854

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3854
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3854
  store i8* %85, i8** %9, align 8, !dbg !3854
  br label %91, !dbg !3854

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3854
  %88 = zext i32 %75 to i64, !dbg !3854
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3854
  %90 = add nuw nsw i32 %75, 8, !dbg !3854
  store i32 %90, i32* %8, align 8, !dbg !3854
  br label %91, !dbg !3854

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3854
  %95 = load i8*, i8** %94, align 8, !dbg !3854
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3855
  store i8* %95, i8** %96, align 16, !dbg !3856, !tbaa !1291
  %97 = icmp eq i8* %95, null, !dbg !3857
  br i1 %97, label %30, label %98, !dbg !3858

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3845, metadata !DIExpression()), !dbg !3848
  %99 = icmp ult i32 %92, 41, !dbg !3854
  br i1 %99, label %103, label %100, !dbg !3854

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3854
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3854
  store i8* %102, i8** %9, align 8, !dbg !3854
  br label %108, !dbg !3854

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3854
  %105 = zext i32 %92 to i64, !dbg !3854
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3854
  %107 = add nuw nsw i32 %92, 8, !dbg !3854
  store i32 %107, i32* %8, align 8, !dbg !3854
  br label %108, !dbg !3854

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3854
  %111 = load i8*, i8** %110, align 8, !dbg !3854
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3855
  store i8* %111, i8** %112, align 8, !dbg !3856, !tbaa !1291
  %113 = icmp eq i8* %111, null, !dbg !3857
  br i1 %113, label %30, label %114, !dbg !3858

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3845, metadata !DIExpression()), !dbg !3848
  %115 = load i8*, i8** %9, align 8, !dbg !3854
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3854
  store i8* %116, i8** %9, align 8, !dbg !3854
  %117 = bitcast i8* %115 to i8**, !dbg !3854
  %118 = load i8*, i8** %117, align 8, !dbg !3854
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3855
  store i8* %118, i8** %119, align 16, !dbg !3856, !tbaa !1291
  %120 = icmp eq i8* %118, null, !dbg !3857
  br i1 %120, label %30, label %121, !dbg !3858

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3845, metadata !DIExpression()), !dbg !3848
  %122 = load i8*, i8** %9, align 8, !dbg !3854
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3854
  store i8* %123, i8** %9, align 8, !dbg !3854
  %124 = bitcast i8* %122 to i8**, !dbg !3854
  %125 = load i8*, i8** %124, align 8, !dbg !3854
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3855
  store i8* %125, i8** %126, align 8, !dbg !3856, !tbaa !1291
  %127 = icmp eq i8* %125, null, !dbg !3857
  br i1 %127, label %30, label %128, !dbg !3858

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3845, metadata !DIExpression()), !dbg !3848
  %129 = load i8*, i8** %9, align 8, !dbg !3854
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3854
  store i8* %130, i8** %9, align 8, !dbg !3854
  %131 = bitcast i8* %129 to i8**, !dbg !3854
  %132 = load i8*, i8** %131, align 8, !dbg !3854
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3855
  store i8* %132, i8** %133, align 16, !dbg !3856, !tbaa !1291
  %134 = icmp eq i8* %132, null, !dbg !3857
  br i1 %134, label %30, label %135, !dbg !3858

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3845, metadata !DIExpression()), !dbg !3848
  %136 = load i8*, i8** %9, align 8, !dbg !3854
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3854
  store i8* %137, i8** %9, align 8, !dbg !3854
  %138 = bitcast i8* %136 to i8**, !dbg !3854
  %139 = load i8*, i8** %138, align 8, !dbg !3854
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3855
  store i8* %139, i8** %140, align 8, !dbg !3856, !tbaa !1291
  %141 = icmp eq i8* %139, null, !dbg !3857
  %142 = select i1 %141, i64 9, i64 10, !dbg !3858
  br label %30, !dbg !3858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3862 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3866, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i8* %1, metadata !3867, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i8* %2, metadata !3868, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i8* %3, metadata !3869, metadata !DIExpression()), !dbg !3876
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3877
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3877
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3870, metadata !DIExpression()), !dbg !3878
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3879
  call void @llvm.va_start(i8* nonnull %6), !dbg !3879
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3880
  call void @llvm.va_end(i8* nonnull %6), !dbg !3881
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3882
  ret void, !dbg !3882
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3883 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3884, !tbaa !1291
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.94, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3884
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.109, i64 0, i64 0), i32 5) #20, !dbg !3885
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.110, i64 0, i64 0)) #20, !dbg !3885
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.111, i64 0, i64 0), i32 5) #20, !dbg !3886
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.112, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.113, i64 0, i64 0)) #20, !dbg !3886
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.114, i64 0, i64 0), i32 5) #20, !dbg !3887
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.115, i64 0, i64 0)) #20, !dbg !3887
  ret void, !dbg !3888
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3889 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3893, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %1, metadata !3894, metadata !DIExpression()), !dbg !3895
  %3 = udiv i64 9223372036854775807, %1, !dbg !3896
  %4 = icmp ult i64 %3, %0, !dbg !3896
  br i1 %4, label %5, label %6, !dbg !3898

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3899
  unreachable, !dbg !3899

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3900
  call void @llvm.dbg.value(metadata i64 %7, metadata !3901, metadata !DIExpression()) #20, !dbg !3907
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %8, metadata !3906, metadata !DIExpression()) #20, !dbg !3907
  %9 = icmp eq i8* %8, null, !dbg !3910
  %10 = icmp ne i64 %7, 0, !dbg !3912
  %11 = and i1 %10, %9, !dbg !3913
  br i1 %11, label %12, label %13, !dbg !3913

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !3914
  unreachable, !dbg !3914

13:                                               ; preds = %6
  ret i8* %8, !dbg !3915
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3902 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3901, metadata !DIExpression()), !dbg !3916
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3917
  call void @llvm.dbg.value(metadata i8* %2, metadata !3906, metadata !DIExpression()), !dbg !3916
  %3 = icmp eq i8* %2, null, !dbg !3918
  %4 = icmp ne i64 %0, 0, !dbg !3919
  %5 = and i1 %4, %3, !dbg !3920
  br i1 %5, label %6, label %7, !dbg !3920

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3921
  unreachable, !dbg !3921

7:                                                ; preds = %1
  ret i8* %2, !dbg !3922
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3923 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3927, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i64 %1, metadata !3928, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i64 %2, metadata !3929, metadata !DIExpression()), !dbg !3930
  %4 = udiv i64 9223372036854775807, %2, !dbg !3931
  %5 = icmp ult i64 %4, %1, !dbg !3931
  br i1 %5, label %6, label %7, !dbg !3933

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !3934
  unreachable, !dbg !3934

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3935
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()) #20, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %8, metadata !3941, metadata !DIExpression()) #20, !dbg !3942
  %9 = icmp eq i64 %8, 0, !dbg !3944
  %10 = icmp ne i8* %0, null, !dbg !3946
  %11 = and i1 %10, %9, !dbg !3947
  br i1 %11, label %12, label %13, !dbg !3947

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3948
  br label %19, !dbg !3950

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3951
  call void @llvm.dbg.value(metadata i8* %14, metadata !3936, metadata !DIExpression()) #20, !dbg !3942
  %15 = icmp eq i8* %14, null, !dbg !3952
  %16 = icmp ne i64 %8, 0, !dbg !3954
  %17 = and i1 %16, %15, !dbg !3955
  br i1 %17, label %18, label %19, !dbg !3955

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3956
  unreachable, !dbg !3956

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3942
  ret i8* %20, !dbg !3957
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3937 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i64 %1, metadata !3941, metadata !DIExpression()), !dbg !3958
  %3 = icmp eq i64 %1, 0, !dbg !3959
  %4 = icmp ne i8* %0, null, !dbg !3960
  %5 = and i1 %4, %3, !dbg !3961
  br i1 %5, label %6, label %7, !dbg !3961

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3962
  br label %13, !dbg !3963

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3964
  call void @llvm.dbg.value(metadata i8* %8, metadata !3936, metadata !DIExpression()), !dbg !3958
  %9 = icmp eq i8* %8, null, !dbg !3965
  %10 = icmp ne i64 %1, 0, !dbg !3966
  %11 = and i1 %10, %9, !dbg !3967
  br i1 %11, label %12, label %13, !dbg !3967

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3968
  unreachable, !dbg !3968

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3958
  ret i8* %14, !dbg !3969
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !644 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !649, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64* %1, metadata !650, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %2, metadata !651, metadata !DIExpression()), !dbg !3970
  %4 = load i64, i64* %1, align 8, !dbg !3971, !tbaa !2161
  call void @llvm.dbg.value(metadata i64 %4, metadata !652, metadata !DIExpression()), !dbg !3970
  %5 = icmp eq i8* %0, null, !dbg !3972
  br i1 %5, label %6, label %20, !dbg !3974

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3975
  br i1 %7, label %8, label %13, !dbg !3978

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3979
  call void @llvm.dbg.value(metadata i64 %9, metadata !652, metadata !DIExpression()), !dbg !3970
  %10 = icmp ugt i64 %2, 128, !dbg !3981
  %11 = zext i1 %10 to i64, !dbg !3981
  %12 = add nuw nsw i64 %9, %11, !dbg !3982
  call void @llvm.dbg.value(metadata i64 %12, metadata !652, metadata !DIExpression()), !dbg !3970
  br label %13, !dbg !3983

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3970
  call void @llvm.dbg.value(metadata i64 %14, metadata !652, metadata !DIExpression()), !dbg !3970
  %15 = udiv i64 9223372036854775807, %2, !dbg !3984
  %16 = icmp ult i64 %15, %14, !dbg !3984
  br i1 %16, label %19, label %17, !dbg !3986

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !652, metadata !DIExpression()), !dbg !3970
  store i64 %14, i64* %1, align 8, !dbg !3987, !tbaa !2161
  %18 = mul i64 %14, %2, !dbg !3988
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()) #20, !dbg !3989
  call void @llvm.dbg.value(metadata i64 %28, metadata !3941, metadata !DIExpression()) #20, !dbg !3989
  br label %31, !dbg !3991

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3992
  unreachable, !dbg !3992

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3993
  %22 = icmp ugt i64 %21, %4, !dbg !3996
  br i1 %22, label %24, label %23, !dbg !3997

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !3998
  unreachable, !dbg !3998

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3999
  %26 = add nuw i64 %4, 1, !dbg !4000
  %27 = add i64 %26, %25, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %27, metadata !652, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %27, metadata !652, metadata !DIExpression()), !dbg !3970
  store i64 %27, i64* %1, align 8, !dbg !3987, !tbaa !2161
  %28 = mul i64 %27, %2, !dbg !3988
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()) #20, !dbg !3989
  call void @llvm.dbg.value(metadata i64 %28, metadata !3941, metadata !DIExpression()) #20, !dbg !3989
  %29 = icmp eq i64 %28, 0, !dbg !4002
  br i1 %29, label %30, label %31, !dbg !3991

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !4003
  br label %38, !dbg !4004

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !4005
  call void @llvm.dbg.value(metadata i8* %33, metadata !3936, metadata !DIExpression()) #20, !dbg !3989
  %34 = icmp eq i8* %33, null, !dbg !4006
  %35 = icmp ne i64 %32, 0, !dbg !4007
  %36 = and i1 %35, %34, !dbg !4008
  br i1 %36, label %37, label %38, !dbg !4008

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !4009
  unreachable, !dbg !4009

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3989
  ret i8* %39, !dbg !4010
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !4011 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %0, metadata !3901, metadata !DIExpression()) #20, !dbg !4015
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %2, metadata !3906, metadata !DIExpression()) #20, !dbg !4015
  %3 = icmp eq i8* %2, null, !dbg !4018
  %4 = icmp ne i64 %0, 0, !dbg !4019
  %5 = and i1 %4, %3, !dbg !4020
  br i1 %5, label %6, label %7, !dbg !4020

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4021
  unreachable, !dbg !4021

7:                                                ; preds = %1
  ret i8* %2, !dbg !4022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64* %1, metadata !4028, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i8* %0, metadata !649, metadata !DIExpression()) #20, !dbg !4030
  call void @llvm.dbg.value(metadata i64* %1, metadata !650, metadata !DIExpression()) #20, !dbg !4030
  call void @llvm.dbg.value(metadata i64 1, metadata !651, metadata !DIExpression()) #20, !dbg !4030
  %3 = load i64, i64* %1, align 8, !dbg !4032, !tbaa !2161
  call void @llvm.dbg.value(metadata i64 %3, metadata !652, metadata !DIExpression()) #20, !dbg !4030
  %4 = icmp eq i8* %0, null, !dbg !4033
  br i1 %4, label %5, label %12, !dbg !4034

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4035
  br i1 %6, label %9, label %7, !dbg !4036

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !652, metadata !DIExpression()) #20, !dbg !4030
  %8 = icmp slt i64 %3, 0, !dbg !4037
  br i1 %8, label %11, label %9, !dbg !4038

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !652, metadata !DIExpression()) #20, !dbg !4030
  store i64 %10, i64* %1, align 8, !dbg !4039, !tbaa !2161
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()) #20, !dbg !4040
  call void @llvm.dbg.value(metadata i64 %18, metadata !3941, metadata !DIExpression()) #20, !dbg !4040
  br label %21, !dbg !4042

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !4043
  unreachable, !dbg !4043

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4044
  br i1 %13, label %15, label %14, !dbg !4045

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !4046
  unreachable, !dbg !4046

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4047
  %17 = add nuw nsw i64 %3, 1, !dbg !4048
  %18 = add nuw nsw i64 %17, %16, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %18, metadata !652, metadata !DIExpression()) #20, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %18, metadata !652, metadata !DIExpression()) #20, !dbg !4030
  store i64 %18, i64* %1, align 8, !dbg !4039, !tbaa !2161
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()) #20, !dbg !4040
  call void @llvm.dbg.value(metadata i64 %18, metadata !3941, metadata !DIExpression()) #20, !dbg !4040
  %19 = icmp eq i64 %18, 0, !dbg !4050
  br i1 %19, label %20, label %21, !dbg !4042

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !4051
  br label %28, !dbg !4052

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !4053
  call void @llvm.dbg.value(metadata i8* %23, metadata !3936, metadata !DIExpression()) #20, !dbg !4040
  %24 = icmp eq i8* %23, null, !dbg !4054
  %25 = icmp ne i64 %22, 0, !dbg !4055
  %26 = and i1 %25, %24, !dbg !4056
  br i1 %26, label %27, label %28, !dbg !4056

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !4057
  unreachable, !dbg !4057

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4040
  ret i8* %29, !dbg !4058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4059 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i64 %0, metadata !4063, metadata !DIExpression()) #20, !dbg !4068
  call void @llvm.dbg.value(metadata i64 1, metadata !4066, metadata !DIExpression()) #20, !dbg !4068
  %2 = icmp slt i64 %0, 0, !dbg !4070
  br i1 %2, label %6, label %3, !dbg !4072

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !4073
  call void @llvm.dbg.value(metadata i8* %4, metadata !4067, metadata !DIExpression()) #20, !dbg !4068
  %5 = icmp eq i8* %4, null, !dbg !4074
  br i1 %5, label %6, label %7, !dbg !4075

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !4076
  unreachable, !dbg !4076

7:                                                ; preds = %3
  ret i8* %4, !dbg !4077
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4064 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4063, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i64 %1, metadata !4066, metadata !DIExpression()), !dbg !4078
  %3 = udiv i64 9223372036854775807, %1, !dbg !4079
  %4 = icmp ult i64 %3, %0, !dbg !4079
  br i1 %4, label %8, label %5, !dbg !4080

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !4081
  call void @llvm.dbg.value(metadata i8* %6, metadata !4067, metadata !DIExpression()), !dbg !4078
  %7 = icmp eq i8* %6, null, !dbg !4082
  br i1 %7, label %8, label %9, !dbg !4083

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !4084
  unreachable, !dbg !4084

9:                                                ; preds = %5
  ret i8* %6, !dbg !4085
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4086 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4090, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %1, metadata !3901, metadata !DIExpression()) #20, !dbg !4093
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !4095
  call void @llvm.dbg.value(metadata i8* %3, metadata !3906, metadata !DIExpression()) #20, !dbg !4093
  %4 = icmp eq i8* %3, null, !dbg !4096
  %5 = icmp ne i64 %1, 0, !dbg !4097
  %6 = and i1 %5, %4, !dbg !4098
  br i1 %6, label %7, label %8, !dbg !4098

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !4099
  unreachable, !dbg !4099

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4100, metadata !DIExpression()) #20, !dbg !4105
  call void @llvm.dbg.value(metadata i8* %0, metadata !4103, metadata !DIExpression()) #20, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %1, metadata !4104, metadata !DIExpression()) #20, !dbg !4105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !4107
  ret i8* %3, !dbg !4108
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4109 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4111, metadata !DIExpression()), !dbg !4112
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !4113
  %3 = add i64 %2, 1, !dbg !4114
  call void @llvm.dbg.value(metadata i8* %0, metadata !4090, metadata !DIExpression()) #20, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %3, metadata !4091, metadata !DIExpression()) #20, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %3, metadata !3901, metadata !DIExpression()) #20, !dbg !4117
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !4119
  call void @llvm.dbg.value(metadata i8* %4, metadata !3906, metadata !DIExpression()) #20, !dbg !4117
  %5 = icmp eq i8* %4, null, !dbg !4120
  %6 = icmp ne i64 %3, 0, !dbg !4121
  %7 = and i1 %6, %5, !dbg !4122
  br i1 %7, label %8, label %9, !dbg !4122

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4123
  unreachable, !dbg !4123

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4100, metadata !DIExpression()) #20, !dbg !4124
  call void @llvm.dbg.value(metadata i8* %0, metadata !4103, metadata !DIExpression()) #20, !dbg !4124
  call void @llvm.dbg.value(metadata i64 %3, metadata !4104, metadata !DIExpression()) #20, !dbg !4124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !4126
  ret i8* %4, !dbg !4127
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4128 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4129, !tbaa !1368
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.126, i64 0, i64 0), i32 5) #20, !dbg !4130
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i64 0, i64 0), i8* %2) #20, !dbg !4131
  tail call void @abort() #24, !dbg !4132
  unreachable, !dbg !4132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4133 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4138, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i8** %1, metadata !4139, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %2, metadata !4140, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64* %3, metadata !4141, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i8* %4, metadata !4142, metadata !DIExpression()), !dbg !4156
  %7 = bitcast i8** %6 to i8*, !dbg !4157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !4157
  call void @llvm.dbg.value(metadata i32 0, metadata !4146, metadata !DIExpression()), !dbg !4156
  %8 = icmp ult i32 %2, 37, !dbg !4158
  br i1 %8, label %10, label %9, !dbg !4158

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.130, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.131, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #24, !dbg !4158
  unreachable, !dbg !4158

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4161
  call void @llvm.dbg.value(metadata i8** %25, metadata !4144, metadata !DIExpression()), !dbg !4156
  %12 = tail call i32* @__errno_location() #26, !dbg !4162
  store i32 0, i32* %12, align 4, !dbg !4163, !tbaa !1368
  call void @llvm.dbg.value(metadata i8* %0, metadata !4147, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8 undef, metadata !4150, metadata !DIExpression()), !dbg !4164
  %13 = tail call i16** @__ctype_b_loc() #26, !dbg !4164
  %14 = load i16*, i16** %13, align 8, !dbg !4164, !tbaa !1291
  br label %15, !dbg !4165

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4164
  %17 = load i8, i8* %16, align 1, !dbg !4164, !tbaa !1457
  call void @llvm.dbg.value(metadata i8 %17, metadata !4150, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8* %16, metadata !4147, metadata !DIExpression()), !dbg !4164
  %18 = zext i8 %17 to i64, !dbg !4166
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4166
  %20 = load i16, i16* %19, align 2, !dbg !4166, !tbaa !2676
  %21 = and i16 %20, 8192, !dbg !4166
  %22 = icmp eq i16 %21, 0, !dbg !4165
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %23, metadata !4147, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8 undef, metadata !4150, metadata !DIExpression()), !dbg !4164
  br i1 %22, label %24, label %15, !dbg !4165, !llvm.loop !4168

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4161
  %26 = icmp eq i8 %17, 45, !dbg !4170
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4172, metadata !DIExpression()) #20, !dbg !4182
  call void @llvm.dbg.value(metadata i8** %25, metadata !4180, metadata !DIExpression()) #20, !dbg !4182
  call void @llvm.dbg.value(metadata i32 %2, metadata !4181, metadata !DIExpression()) #20, !dbg !4182
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #20, !dbg !4184
  call void @llvm.dbg.value(metadata i64 %28, metadata !4145, metadata !DIExpression()), !dbg !4156
  %29 = load i8*, i8** %25, align 8, !dbg !4185, !tbaa !1291
  %30 = icmp eq i8* %29, %0, !dbg !4187
  br i1 %30, label %31, label %40, !dbg !4188

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4189
  br i1 %32, label %285, label %33, !dbg !4192

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4193, !tbaa !1457
  %35 = icmp eq i8 %34, 0, !dbg !4193
  br i1 %35, label %285, label %36, !dbg !4194

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4193
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #23, !dbg !4195
  %39 = icmp eq i8* %38, null, !dbg !4195
  br i1 %39, label %285, label %47, !dbg !4196

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4197, !tbaa !1368
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4199

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4146, metadata !DIExpression()), !dbg !4156
  br label %43, !dbg !4200

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4156
  call void @llvm.dbg.value(metadata i32 %44, metadata !4146, metadata !DIExpression()), !dbg !4156
  %45 = icmp eq i8* %4, null, !dbg !4202
  br i1 %45, label %46, label %47, !dbg !4204

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4145, metadata !DIExpression()), !dbg !4156
  store i64 %28, i64* %3, align 8, !dbg !4205, !tbaa !2161
  br label %285, !dbg !4207

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4208, !tbaa !1457
  %51 = sext i8 %50 to i32, !dbg !4208
  %52 = icmp eq i8 %50, 0, !dbg !4209
  br i1 %52, label %282, label %53, !dbg !4210

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4151, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i32 1, metadata !4154, metadata !DIExpression()), !dbg !4211
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #23, !dbg !4212
  %55 = icmp eq i8* %54, null, !dbg !4212
  br i1 %55, label %56, label %58, !dbg !4214

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4145, metadata !DIExpression()), !dbg !4156
  store i64 %49, i64* %3, align 8, !dbg !4215, !tbaa !2161
  %57 = or i32 %48, 2, !dbg !4217
  br label %285, !dbg !4218

58:                                               ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !4219

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #23, !dbg !4220
  %61 = icmp eq i8* %60, null, !dbg !4220
  br i1 %61, label %72, label %62, !dbg !4223

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4224
  %64 = load i8, i8* %63, align 1, !dbg !4224, !tbaa !1457
  %65 = sext i8 %64 to i32, !dbg !4224
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4225

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4226
  %68 = load i8, i8* %67, align 1, !dbg !4226, !tbaa !1457
  %69 = icmp eq i8 %68, 66, !dbg !4229
  %70 = select i1 %69, i64 3, i64 1, !dbg !4230
  br label %72, !dbg !4230

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4151, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i32 2, metadata !4154, metadata !DIExpression()), !dbg !4211
  br label %72, !dbg !4231

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4154, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i32 undef, metadata !4151, metadata !DIExpression()), !dbg !4211
  switch i32 %51, label %270 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %230
    i32 75, label %230
    i32 77, label %235
    i32 109, label %235
    i32 80, label %150
    i32 84, label %245
    i32 116, label %245
    i32 119, label %265
    i32 89, label %110
    i32 90, label %75
  ], !dbg !4232

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()) #20, !dbg !4241
  call void @llvm.dbg.value(metadata i32 6, metadata !4240, metadata !DIExpression()) #20, !dbg !4241
  call void @llvm.dbg.value(metadata i32 undef, metadata !4244, metadata !DIExpression()) #20, !dbg !4250
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4252
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4252
  %78 = mul i64 %49, %73, !dbg !4254
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4254
  call void @llvm.dbg.value(metadata i1 %77, metadata !4233, metadata !DIExpression()) #20, !dbg !4241
  call void @llvm.dbg.value(metadata i32 5, metadata !4240, metadata !DIExpression()) #20, !dbg !4241
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #20, !dbg !4252
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4252
  %82 = mul i64 %79, %73, !dbg !4254
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4254
  %84 = or i1 %77, %81, !dbg !4255
  call void @llvm.dbg.value(metadata i1 %84, metadata !4233, metadata !DIExpression()) #20, !dbg !4241
  call void @llvm.dbg.value(metadata i32 4, metadata !4240, metadata !DIExpression()) #20, !dbg !4241
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #20, !dbg !4252
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4252
  %87 = mul i64 %83, %73, !dbg !4254
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4254
  %89 = or i1 %84, %86, !dbg !4255
  call void @llvm.dbg.value(metadata i1 %89, metadata !4233, metadata !DIExpression()) #20, !dbg !4241
  call void @llvm.dbg.value(metadata i32 3, metadata !4240, metadata !DIExpression()) #20, !dbg !4241
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #20, !dbg !4252
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4252
  %92 = mul i64 %88, %73, !dbg !4254
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4254
  %94 = or i1 %89, %91, !dbg !4255
  call void @llvm.dbg.value(metadata i1 %94, metadata !4233, metadata !DIExpression()) #20, !dbg !4241
  call void @llvm.dbg.value(metadata i32 2, metadata !4240, metadata !DIExpression()) #20, !dbg !4241
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #20, !dbg !4252
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4252
  %97 = mul i64 %93, %73, !dbg !4254
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4254
  %99 = or i1 %94, %96, !dbg !4255
  call void @llvm.dbg.value(metadata i1 %99, metadata !4233, metadata !DIExpression()) #20, !dbg !4241
  call void @llvm.dbg.value(metadata i32 1, metadata !4240, metadata !DIExpression()) #20, !dbg !4241
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #20, !dbg !4252
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4252
  %102 = mul i64 %98, %73, !dbg !4254
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4254
  %104 = or i1 %99, %101, !dbg !4255
  call void @llvm.dbg.value(metadata i1 %104, metadata !4233, metadata !DIExpression()) #20, !dbg !4241
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression()) #20, !dbg !4241
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #20, !dbg !4252
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4252
  %107 = mul i64 %103, %73, !dbg !4254
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4254
  %109 = or i1 %104, %106, !dbg !4255
  call void @llvm.dbg.value(metadata i1 %109, metadata !4233, metadata !DIExpression()) #20, !dbg !4241
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4241
  br label %272, !dbg !4256

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 7, metadata !4240, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 undef, metadata !4244, metadata !DIExpression()) #20, !dbg !4259
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4261
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4261
  %113 = mul i64 %49, %73, !dbg !4262
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4262
  call void @llvm.dbg.value(metadata i1 %112, metadata !4233, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 6, metadata !4240, metadata !DIExpression()) #20, !dbg !4257
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #20, !dbg !4261
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4261
  %117 = mul i64 %114, %73, !dbg !4262
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4262
  %119 = or i1 %112, %116, !dbg !4263
  call void @llvm.dbg.value(metadata i1 %119, metadata !4233, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 5, metadata !4240, metadata !DIExpression()) #20, !dbg !4257
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #20, !dbg !4261
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4261
  %122 = mul i64 %118, %73, !dbg !4262
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4262
  %124 = or i1 %119, %121, !dbg !4263
  call void @llvm.dbg.value(metadata i1 %124, metadata !4233, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 4, metadata !4240, metadata !DIExpression()) #20, !dbg !4257
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #20, !dbg !4261
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4261
  %127 = mul i64 %123, %73, !dbg !4262
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4262
  %129 = or i1 %124, %126, !dbg !4263
  call void @llvm.dbg.value(metadata i1 %129, metadata !4233, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 3, metadata !4240, metadata !DIExpression()) #20, !dbg !4257
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #20, !dbg !4261
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4261
  %132 = mul i64 %128, %73, !dbg !4262
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4262
  %134 = or i1 %129, %131, !dbg !4263
  call void @llvm.dbg.value(metadata i1 %134, metadata !4233, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 2, metadata !4240, metadata !DIExpression()) #20, !dbg !4257
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #20, !dbg !4261
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4261
  %137 = mul i64 %133, %73, !dbg !4262
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4262
  %139 = or i1 %134, %136, !dbg !4263
  call void @llvm.dbg.value(metadata i1 %139, metadata !4233, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 1, metadata !4240, metadata !DIExpression()) #20, !dbg !4257
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #20, !dbg !4261
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4261
  %142 = mul i64 %138, %73, !dbg !4262
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4262
  %144 = or i1 %139, %141, !dbg !4263
  call void @llvm.dbg.value(metadata i1 %144, metadata !4233, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression()) #20, !dbg !4257
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #20, !dbg !4261
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4261
  %147 = mul i64 %143, %73, !dbg !4262
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4262
  %149 = or i1 %144, %146, !dbg !4263
  call void @llvm.dbg.value(metadata i1 %149, metadata !4233, metadata !DIExpression()) #20, !dbg !4257
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4257
  br label %272, !dbg !4256

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()) #20, !dbg !4264
  call void @llvm.dbg.value(metadata i32 4, metadata !4240, metadata !DIExpression()) #20, !dbg !4264
  call void @llvm.dbg.value(metadata i32 undef, metadata !4244, metadata !DIExpression()) #20, !dbg !4266
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4268
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4268
  %153 = mul i64 %49, %73, !dbg !4269
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4269
  call void @llvm.dbg.value(metadata i1 %152, metadata !4233, metadata !DIExpression()) #20, !dbg !4264
  call void @llvm.dbg.value(metadata i32 3, metadata !4240, metadata !DIExpression()) #20, !dbg !4264
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #20, !dbg !4268
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4268
  %157 = mul i64 %154, %73, !dbg !4269
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4269
  %159 = or i1 %152, %156, !dbg !4270
  call void @llvm.dbg.value(metadata i1 %159, metadata !4233, metadata !DIExpression()) #20, !dbg !4264
  call void @llvm.dbg.value(metadata i32 2, metadata !4240, metadata !DIExpression()) #20, !dbg !4264
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #20, !dbg !4268
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4268
  %162 = mul i64 %158, %73, !dbg !4269
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4269
  %164 = or i1 %159, %161, !dbg !4270
  call void @llvm.dbg.value(metadata i1 %164, metadata !4233, metadata !DIExpression()) #20, !dbg !4264
  call void @llvm.dbg.value(metadata i32 1, metadata !4240, metadata !DIExpression()) #20, !dbg !4264
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #20, !dbg !4268
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4268
  %167 = mul i64 %163, %73, !dbg !4269
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4269
  %169 = or i1 %164, %166, !dbg !4270
  call void @llvm.dbg.value(metadata i1 %169, metadata !4233, metadata !DIExpression()) #20, !dbg !4264
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression()) #20, !dbg !4264
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #20, !dbg !4268
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4268
  %172 = mul i64 %168, %73, !dbg !4269
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4269
  %174 = or i1 %169, %171, !dbg !4270
  call void @llvm.dbg.value(metadata i1 %174, metadata !4233, metadata !DIExpression()) #20, !dbg !4264
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4264
  br label %272, !dbg !4256

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 5, metadata !4240, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 undef, metadata !4244, metadata !DIExpression()) #20, !dbg !4273
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4275
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4275
  %178 = mul i64 %49, %73, !dbg !4276
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4276
  call void @llvm.dbg.value(metadata i1 %177, metadata !4233, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 4, metadata !4240, metadata !DIExpression()) #20, !dbg !4271
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #20, !dbg !4275
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4275
  %182 = mul i64 %179, %73, !dbg !4276
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4276
  %184 = or i1 %177, %181, !dbg !4277
  call void @llvm.dbg.value(metadata i1 %184, metadata !4233, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 3, metadata !4240, metadata !DIExpression()) #20, !dbg !4271
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #20, !dbg !4275
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4275
  %187 = mul i64 %183, %73, !dbg !4276
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4276
  %189 = or i1 %184, %186, !dbg !4277
  call void @llvm.dbg.value(metadata i1 %189, metadata !4233, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 2, metadata !4240, metadata !DIExpression()) #20, !dbg !4271
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #20, !dbg !4275
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4275
  %192 = mul i64 %188, %73, !dbg !4276
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4276
  %194 = or i1 %189, %191, !dbg !4277
  call void @llvm.dbg.value(metadata i1 %194, metadata !4233, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 1, metadata !4240, metadata !DIExpression()) #20, !dbg !4271
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #20, !dbg !4275
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4275
  %197 = mul i64 %193, %73, !dbg !4276
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4276
  %199 = or i1 %194, %196, !dbg !4277
  call void @llvm.dbg.value(metadata i1 %199, metadata !4233, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression()) #20, !dbg !4271
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #20, !dbg !4275
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4275
  %202 = mul i64 %198, %73, !dbg !4276
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4276
  %204 = or i1 %199, %201, !dbg !4277
  call void @llvm.dbg.value(metadata i1 %204, metadata !4233, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4271
  br label %272, !dbg !4256

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4244, metadata !DIExpression()) #20, !dbg !4278
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #20, !dbg !4280
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4280
  %208 = shl i64 %49, 9, !dbg !4281
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4281
  call void @llvm.dbg.value(metadata i1 %207, metadata !4155, metadata !DIExpression()), !dbg !4211
  br label %272, !dbg !4282

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4244, metadata !DIExpression()) #20, !dbg !4283
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #20, !dbg !4285
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4285
  %213 = shl i64 %49, 10, !dbg !4286
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4286
  call void @llvm.dbg.value(metadata i1 %212, metadata !4155, metadata !DIExpression()), !dbg !4211
  br label %272, !dbg !4287

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4239, metadata !DIExpression()) #20, !dbg !4288
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()) #20, !dbg !4288
  call void @llvm.dbg.value(metadata i32 2, metadata !4240, metadata !DIExpression()) #20, !dbg !4288
  call void @llvm.dbg.value(metadata i32 undef, metadata !4244, metadata !DIExpression()) #20, !dbg !4290
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4292
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4292
  %218 = mul i64 %49, %73, !dbg !4293
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4293
  call void @llvm.dbg.value(metadata i1 %217, metadata !4233, metadata !DIExpression()) #20, !dbg !4288
  call void @llvm.dbg.value(metadata i32 1, metadata !4240, metadata !DIExpression()) #20, !dbg !4288
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #20, !dbg !4292
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4292
  %222 = mul i64 %219, %73, !dbg !4293
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4293
  %224 = or i1 %217, %221, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %224, metadata !4233, metadata !DIExpression()) #20, !dbg !4288
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression()) #20, !dbg !4288
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #20, !dbg !4292
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4292
  %227 = mul i64 %223, %73, !dbg !4293
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4293
  %229 = or i1 %224, %226, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %229, metadata !4233, metadata !DIExpression()) #20, !dbg !4288
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4288
  br label %272, !dbg !4256

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4239, metadata !DIExpression()) #20, !dbg !4295
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()) #20, !dbg !4295
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4295
  call void @llvm.dbg.value(metadata i32 undef, metadata !4244, metadata !DIExpression()) #20, !dbg !4297
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4299
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4299
  %233 = mul i64 %49, %73, !dbg !4300
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4300
  call void @llvm.dbg.value(metadata i1 %232, metadata !4233, metadata !DIExpression()) #20, !dbg !4295
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4295
  br label %272, !dbg !4256

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4239, metadata !DIExpression()) #20, !dbg !4301
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()) #20, !dbg !4301
  call void @llvm.dbg.value(metadata i32 1, metadata !4240, metadata !DIExpression()) #20, !dbg !4301
  call void @llvm.dbg.value(metadata i32 undef, metadata !4244, metadata !DIExpression()) #20, !dbg !4303
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4305
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !4305
  %238 = mul i64 %49, %73, !dbg !4306
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !4306
  call void @llvm.dbg.value(metadata i1 %237, metadata !4233, metadata !DIExpression()) #20, !dbg !4301
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression()) #20, !dbg !4301
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #20, !dbg !4305
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4305
  %242 = mul i64 %239, %73, !dbg !4306
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4306
  %244 = or i1 %237, %241, !dbg !4307
  call void @llvm.dbg.value(metadata i1 %244, metadata !4233, metadata !DIExpression()) #20, !dbg !4301
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4301
  br label %272, !dbg !4256

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4239, metadata !DIExpression()) #20, !dbg !4308
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()) #20, !dbg !4308
  call void @llvm.dbg.value(metadata i32 3, metadata !4240, metadata !DIExpression()) #20, !dbg !4308
  call void @llvm.dbg.value(metadata i32 undef, metadata !4244, metadata !DIExpression()) #20, !dbg !4310
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4312
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4312
  %248 = mul i64 %49, %73, !dbg !4313
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %247, metadata !4233, metadata !DIExpression()) #20, !dbg !4308
  call void @llvm.dbg.value(metadata i32 2, metadata !4240, metadata !DIExpression()) #20, !dbg !4308
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #20, !dbg !4312
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4312
  %252 = mul i64 %249, %73, !dbg !4313
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4313
  %254 = or i1 %247, %251, !dbg !4314
  call void @llvm.dbg.value(metadata i1 %254, metadata !4233, metadata !DIExpression()) #20, !dbg !4308
  call void @llvm.dbg.value(metadata i32 1, metadata !4240, metadata !DIExpression()) #20, !dbg !4308
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #20, !dbg !4312
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4312
  %257 = mul i64 %253, %73, !dbg !4313
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4313
  %259 = or i1 %254, %256, !dbg !4314
  call void @llvm.dbg.value(metadata i1 %259, metadata !4233, metadata !DIExpression()) #20, !dbg !4308
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression()) #20, !dbg !4308
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #20, !dbg !4312
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4312
  %262 = mul i64 %258, %73, !dbg !4313
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4313
  %264 = or i1 %259, %261, !dbg !4314
  call void @llvm.dbg.value(metadata i1 %264, metadata !4233, metadata !DIExpression()) #20, !dbg !4308
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4308
  br label %272, !dbg !4256

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4244, metadata !DIExpression()) #20, !dbg !4315
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #20, !dbg !4317
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4317
  %268 = shl i64 %49, 1, !dbg !4318
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4318
  call void @llvm.dbg.value(metadata i1 %267, metadata !4155, metadata !DIExpression()), !dbg !4211
  br label %272, !dbg !4319

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4145, metadata !DIExpression()), !dbg !4156
  store i64 %49, i64* %3, align 8, !dbg !4320, !tbaa !2161
  %271 = or i32 %48, 2, !dbg !4321
  br label %285, !dbg !4322

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !4156
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4323
  call void @llvm.dbg.value(metadata i32 %275, metadata !4155, metadata !DIExpression()), !dbg !4211
  %276 = or i32 %48, %275, !dbg !4256
  call void @llvm.dbg.value(metadata i32 %276, metadata !4146, metadata !DIExpression()), !dbg !4156
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4324
  store i8* %277, i8** %25, align 8, !dbg !4324, !tbaa !1291
  %278 = load i8, i8* %277, align 1, !dbg !4325, !tbaa !1457
  %279 = icmp eq i8 %278, 0, !dbg !4325
  %280 = or i32 %276, 2, !dbg !4327
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4328
  call void @llvm.dbg.value(metadata i32 %281, metadata !4146, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %281, metadata !4146, metadata !DIExpression()), !dbg !4156
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4329
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4330
  call void @llvm.dbg.value(metadata i32 %284, metadata !4146, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 %283, metadata !4145, metadata !DIExpression()), !dbg !4156
  store i64 %283, i64* %3, align 8, !dbg !4331, !tbaa !2161
  br label %285, !dbg !4332

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !4156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20, !dbg !4333
  ret i32 %286, !dbg !4333
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !4334 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4336, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %1, metadata !4337, metadata !DIExpression()), !dbg !4342
  %3 = icmp eq i64 %0, 0, !dbg !4343
  %4 = icmp eq i64 %1, 0, !dbg !4344
  %5 = or i1 %3, %4, !dbg !4345
  br i1 %5, label %11, label %6, !dbg !4345

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4339, metadata !DIExpression()), !dbg !4346
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4347
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4347
  br i1 %8, label %9, label %11, !dbg !4349

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !4350
  store i32 12, i32* %10, align 4, !dbg !4352, !tbaa !1368
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4336, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %12, metadata !4337, metadata !DIExpression()), !dbg !4342
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !4353
  call void @llvm.dbg.value(metadata i8* %14, metadata !4338, metadata !DIExpression()), !dbg !4342
  br label %15, !dbg !4354

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4342
  ret i8* %16, !dbg !4355
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4356 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4362, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 0, metadata !4363, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 0, metadata !4365, metadata !DIExpression()), !dbg !4366
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4367
  call void @llvm.dbg.value(metadata i32 %2, metadata !4364, metadata !DIExpression()), !dbg !4366
  %3 = icmp slt i32 %2, 0, !dbg !4368
  br i1 %3, label %4, label %6, !dbg !4370

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4371
  br label %24, !dbg !4372

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4373
  %8 = icmp eq i32 %7, 0, !dbg !4373
  br i1 %8, label %13, label %9, !dbg !4375

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4376
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4377
  %12 = icmp eq i64 %11, -1, !dbg !4378
  br i1 %12, label %16, label %13, !dbg !4379

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4380
  %15 = icmp eq i32 %14, 0, !dbg !4380
  br i1 %15, label %16, label %18, !dbg !4381

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4363, metadata !DIExpression()), !dbg !4366
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4382
  call void @llvm.dbg.value(metadata i32 %21, metadata !4365, metadata !DIExpression()), !dbg !4366
  br label %24, !dbg !4383

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !4384
  %20 = load i32, i32* %19, align 4, !dbg !4384, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %20, metadata !4363, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 %20, metadata !4363, metadata !DIExpression()), !dbg !4366
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4382
  call void @llvm.dbg.value(metadata i32 %21, metadata !4365, metadata !DIExpression()), !dbg !4366
  %22 = icmp eq i32 %20, 0, !dbg !4385
  br i1 %22, label %24, label %23, !dbg !4383

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4387, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 -1, metadata !4365, metadata !DIExpression()), !dbg !4366
  br label %24, !dbg !4389

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4366
  ret i32 %25, !dbg !4390
}

; Function Attrs: nofree nounwind
declare !dbg !709 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !710 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4391 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4397, metadata !DIExpression()), !dbg !4398
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4399
  br i1 %2, label %6, label %3, !dbg !4401

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4402
  %5 = icmp eq i32 %4, 0, !dbg !4402
  br i1 %5, label %6, label %8, !dbg !4403

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4404
  br label %17, !dbg !4405

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4406, metadata !DIExpression()) #20, !dbg !4411
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4413
  %10 = load i32, i32* %9, align 8, !dbg !4413, !tbaa !1475
  %11 = and i32 %10, 256, !dbg !4415
  %12 = icmp eq i32 %11, 0, !dbg !4415
  br i1 %12, label %15, label %13, !dbg !4416

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4417
  br label %15, !dbg !4417

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4418
  br label %17, !dbg !4419

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4398
  ret i32 %18, !dbg !4420
}

; Function Attrs: nofree nounwind
declare !dbg !717 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4421 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4427, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i64 %1, metadata !4428, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i32 %2, metadata !4429, metadata !DIExpression()), !dbg !4433
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4434
  %5 = load i8*, i8** %4, align 8, !dbg !4434, !tbaa !1454
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4435
  %7 = load i8*, i8** %6, align 8, !dbg !4435, !tbaa !1450
  %8 = icmp eq i8* %5, %7, !dbg !4436
  br i1 %8, label %9, label %28, !dbg !4437

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4438
  %11 = load i8*, i8** %10, align 8, !dbg !4438, !tbaa !1506
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4439
  %13 = load i8*, i8** %12, align 8, !dbg !4439, !tbaa !4440
  %14 = icmp eq i8* %11, %13, !dbg !4441
  br i1 %14, label %15, label %28, !dbg !4442

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4443
  %17 = load i8*, i8** %16, align 8, !dbg !4443, !tbaa !4444
  %18 = icmp eq i8* %17, null, !dbg !4445
  br i1 %18, label %19, label %28, !dbg !4446

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4447
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4448
  call void @llvm.dbg.value(metadata i64 %21, metadata !4430, metadata !DIExpression()), !dbg !4449
  %22 = icmp eq i64 %21, -1, !dbg !4450
  br i1 %22, label %30, label %23, !dbg !4452

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4453
  %25 = load i32, i32* %24, align 8, !dbg !4454, !tbaa !1475
  %26 = and i32 %25, -17, !dbg !4454
  store i32 %26, i32* %24, align 8, !dbg !4454, !tbaa !1475
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4455
  store i64 %21, i64* %27, align 8, !dbg !4456, !tbaa !4457
  br label %30, !dbg !4458

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4459
  br label %30, !dbg !4460

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4433
  ret i32 %31, !dbg !4461
}

; Function Attrs: nofree nounwind
declare !dbg !793 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4462 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4470, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i8* %1, metadata !4471, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %2, metadata !4472, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4473, metadata !DIExpression()), !dbg !4479
  %6 = bitcast i32* %5 to i8*, !dbg !4480
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4480
  %7 = icmp eq i32* %0, null, !dbg !4481
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4483
  call void @llvm.dbg.value(metadata i32* %8, metadata !4470, metadata !DIExpression()), !dbg !4479
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %9, metadata !4474, metadata !DIExpression()), !dbg !4479
  %10 = icmp ugt i64 %9, -3, !dbg !4485
  %11 = icmp ne i64 %2, 0, !dbg !4486
  %12 = and i1 %11, %10, !dbg !4487
  br i1 %12, label %13, label %18, !dbg !4487

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4488
  br i1 %14, label %18, label %15, !dbg !4489

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4490, !tbaa !1457
  call void @llvm.dbg.value(metadata i8 %16, metadata !4476, metadata !DIExpression()), !dbg !4491
  %17 = zext i8 %16 to i32, !dbg !4492
  store i32 %17, i32* %8, align 4, !dbg !4493, !tbaa !1368
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4479
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4494
  ret i64 %19, !dbg !4494
}

; Function Attrs: nounwind
declare !dbg !799 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #8 !dbg !4495 {
  tail call void @usage(i32 1) #20, !dbg !4496
  ret void, !dbg !4497
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @argmatch(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* readonly %2, i64 %3) local_unnamed_addr #22 !dbg !4498 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4503, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i8** %1, metadata !4504, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i8* %2, metadata !4505, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %3, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 -1, metadata !4509, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i8 0, metadata !4510, metadata !DIExpression()), !dbg !4511
  %5 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %5, metadata !4508, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 0, metadata !4507, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i8 0, metadata !4510, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 -1, metadata !4509, metadata !DIExpression()), !dbg !4511
  %6 = load i8*, i8** %1, align 8, !dbg !4513, !tbaa !1291
  %7 = icmp eq i8* %6, null, !dbg !4516
  br i1 %7, label %38, label %8, !dbg !4516

8:                                                ; preds = %4
  %9 = icmp eq i8* %2, null, !dbg !4517
  br label %10, !dbg !4516

10:                                               ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !4510, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %13, metadata !4509, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %14, metadata !4507, metadata !DIExpression()), !dbg !4511
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #23, !dbg !4525
  %16 = icmp eq i32 %15, 0, !dbg !4525
  br i1 %16, label %17, label %31, !dbg !4526

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #23, !dbg !4527
  %19 = icmp eq i64 %18, %5, !dbg !4528
  br i1 %19, label %44, label %20, !dbg !4529

20:                                               ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !4530
  br i1 %21, label %31, label %22, !dbg !4531

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !4532

23:                                               ; preds = %22
  %24 = mul i64 %13, %3, !dbg !4533
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !4534
  %26 = mul i64 %14, %3, !dbg !4535
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !4536
  %28 = tail call i32 @bcmp(i8* nonnull %25, i8* nonnull %27, i64 %3), !dbg !4537
  %29 = icmp eq i32 %28, 0, !dbg !4537
  br i1 %29, label %31, label %30, !dbg !4538

30:                                               ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !4510, metadata !DIExpression()), !dbg !4511
  br label %31, !dbg !4539

31:                                               ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ], !dbg !4511
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ], !dbg !4511
  call void @llvm.dbg.value(metadata i8 %33, metadata !4510, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %32, metadata !4509, metadata !DIExpression()), !dbg !4511
  %34 = add i64 %14, 1, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %34, metadata !4507, metadata !DIExpression()), !dbg !4511
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !4513
  %36 = load i8*, i8** %35, align 8, !dbg !4513, !tbaa !1291
  %37 = icmp eq i8* %36, null, !dbg !4516
  br i1 %37, label %38, label %10, !dbg !4516, !llvm.loop !4542

38:                                               ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !4544
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !4545
  call void @llvm.dbg.value(metadata i64 %39, metadata !4509, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i8 %40, metadata !4510, metadata !DIExpression()), !dbg !4511
  %41 = and i8 %40, 1, !dbg !4546
  %42 = icmp eq i8 %41, 0, !dbg !4546
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !4548
  br label %44, !dbg !4548

44:                                               ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %14, %17 ], !dbg !4511
  ret i64 %45, !dbg !4549
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_invalid(i8* %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4550 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4554, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i8* %1, metadata !4555, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %2, metadata !4556, metadata !DIExpression()), !dbg !4558
  %4 = icmp eq i64 %2, -1, !dbg !4559
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.144, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.145, i64 0, i64 0), !dbg !4560
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #20, !dbg !4558
  call void @llvm.dbg.value(metadata i8* %6, metadata !4557, metadata !DIExpression()), !dbg !4558
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #20, !dbg !4561
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #20, !dbg !4562
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #20, !dbg !4563
  ret void, !dbg !4564
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_valid(i8** nocapture readonly %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #8 !dbg !4565 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !4569, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i8* %1, metadata !4570, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %2, metadata !4571, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i8* null, metadata !4573, metadata !DIExpression()), !dbg !4574
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.146, i64 0, i64 0), i32 5) #20, !dbg !4575
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4575, !tbaa !1291
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !4575
  call void @llvm.dbg.value(metadata i64 0, metadata !4572, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i8* null, metadata !4573, metadata !DIExpression()), !dbg !4574
  %7 = load i8*, i8** %0, align 8, !dbg !4576, !tbaa !1291
  %8 = icmp eq i8* %7, null, !dbg !4579
  br i1 %8, label %35, label %9, !dbg !4579

9:                                                ; preds = %3, %29
  %10 = phi i8* [ %33, %29 ], [ %7, %3 ]
  %11 = phi i8* [ %30, %29 ], [ null, %3 ]
  %12 = phi i64 [ %31, %29 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !4573, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %12, metadata !4572, metadata !DIExpression()), !dbg !4574
  %13 = icmp eq i64 %12, 0, !dbg !4580
  br i1 %13, label %19, label %14, !dbg !4582

14:                                               ; preds = %9
  %15 = mul i64 %12, %2, !dbg !4583
  %16 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !4584
  %17 = tail call i32 @bcmp(i8* %11, i8* %16, i64 %2), !dbg !4585
  %18 = icmp eq i32 %17, 0, !dbg !4585
  br i1 %18, label %25, label %19, !dbg !4586

19:                                               ; preds = %9, %14
  %20 = phi i64 [ %15, %14 ], [ 0, %9 ], !dbg !4587
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4589, !tbaa !1291
  %22 = tail call i8* @quote(i8* nonnull %10) #20, !dbg !4589
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.147, i64 0, i64 0), i8* %22) #20, !dbg !4589
  %24 = getelementptr inbounds i8, i8* %1, i64 %20, !dbg !4590
  call void @llvm.dbg.value(metadata i8* %24, metadata !4573, metadata !DIExpression()), !dbg !4574
  br label %29, !dbg !4591

25:                                               ; preds = %14
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4592, !tbaa !1291
  %27 = tail call i8* @quote(i8* nonnull %10) #20, !dbg !4592
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %26, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.148, i64 0, i64 0), i8* %27) #20, !dbg !4592
  br label %29

29:                                               ; preds = %19, %25
  %30 = phi i8* [ %24, %19 ], [ %11, %25 ], !dbg !4574
  call void @llvm.dbg.value(metadata i8* %30, metadata !4573, metadata !DIExpression()), !dbg !4574
  %31 = add i64 %12, 1, !dbg !4594
  call void @llvm.dbg.value(metadata i64 %31, metadata !4572, metadata !DIExpression()), !dbg !4574
  %32 = getelementptr inbounds i8*, i8** %0, i64 %31, !dbg !4576
  %33 = load i8*, i8** %32, align 8, !dbg !4576, !tbaa !1291
  %34 = icmp eq i8* %33, null, !dbg !4579
  br i1 %34, label %35, label %9, !dbg !4579, !llvm.loop !4595

35:                                               ; preds = %29, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4597, !tbaa !1291
  call void @llvm.dbg.value(metadata i32 10, metadata !4598, metadata !DIExpression()) #20, !dbg !4606
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !4605, metadata !DIExpression()) #20, !dbg !4606
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !4608
  %38 = load i8*, i8** %37, align 8, !dbg !4608, !tbaa !1506
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !4608
  %40 = load i8*, i8** %39, align 8, !dbg !4608, !tbaa !1507
  %41 = icmp ult i8* %38, %40, !dbg !4608
  br i1 %41, label %44, label %42, !dbg !4608, !prof !1455, !misexpect !1456

42:                                               ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #20, !dbg !4608
  br label %46, !dbg !4608

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !4608
  store i8* %45, i8** %37, align 8, !dbg !4608, !tbaa !1506
  store i8 10, i8* %38, align 1, !dbg !4608, !tbaa !1457
  br label %46, !dbg !4608

46:                                               ; preds = %42, %44
  ret void, !dbg !4609
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @__xargmatch_internal(i8* %0, i8* %1, i8** nocapture readonly %2, i8* readonly %3, i64 %4, void ()* nocapture %5) local_unnamed_addr #8 !dbg !4610 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4614, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i8* %1, metadata !4615, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i8** %2, metadata !4616, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i8* %3, metadata !4617, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %4, metadata !4618, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata void ()* %5, metadata !4619, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i8* %1, metadata !4503, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8** %2, metadata !4504, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8* %3, metadata !4505, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %4, metadata !4506, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 -1, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8 0, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  %7 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #23, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %7, metadata !4508, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 0, metadata !4507, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8 0, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 -1, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  %8 = load i8*, i8** %2, align 8, !dbg !4625, !tbaa !1291
  %9 = icmp eq i8* %8, null, !dbg !4626
  br i1 %9, label %49, label %10, !dbg !4626

10:                                               ; preds = %6
  %11 = icmp eq i8* %3, null, !dbg !4627
  br label %12, !dbg !4626

12:                                               ; preds = %33, %10
  %13 = phi i8* [ %8, %10 ], [ %38, %33 ]
  %14 = phi i8 [ 0, %10 ], [ %35, %33 ]
  %15 = phi i64 [ -1, %10 ], [ %34, %33 ]
  %16 = phi i64 [ 0, %10 ], [ %36, %33 ]
  call void @llvm.dbg.value(metadata i8 %14, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %15, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %16, metadata !4507, metadata !DIExpression()) #20, !dbg !4622
  %17 = tail call i32 @strncmp(i8* nonnull %13, i8* %1, i64 %7) #23, !dbg !4628
  %18 = icmp eq i32 %17, 0, !dbg !4628
  br i1 %18, label %19, label %33, !dbg !4629

19:                                               ; preds = %12
  %20 = tail call i64 @strlen(i8* nonnull %13) #23, !dbg !4630
  %21 = icmp eq i64 %20, %7, !dbg !4631
  br i1 %21, label %43, label %22, !dbg !4632

22:                                               ; preds = %19
  %23 = icmp eq i64 %15, -1, !dbg !4633
  br i1 %23, label %33, label %24, !dbg !4634

24:                                               ; preds = %22
  br i1 %11, label %32, label %25, !dbg !4635

25:                                               ; preds = %24
  %26 = mul i64 %15, %4, !dbg !4636
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !4637
  %28 = mul i64 %16, %4, !dbg !4638
  %29 = getelementptr inbounds i8, i8* %3, i64 %28, !dbg !4639
  %30 = tail call i32 @bcmp(i8* nonnull %27, i8* nonnull %29, i64 %4) #20, !dbg !4640
  %31 = icmp eq i32 %30, 0, !dbg !4640
  br i1 %31, label %33, label %32, !dbg !4641

32:                                               ; preds = %25, %24
  call void @llvm.dbg.value(metadata i8 1, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  br label %33, !dbg !4642

33:                                               ; preds = %32, %25, %22, %12
  %34 = phi i64 [ %15, %12 ], [ %15, %32 ], [ %15, %25 ], [ %16, %22 ], !dbg !4622
  %35 = phi i8 [ %14, %12 ], [ 1, %32 ], [ %14, %25 ], [ %14, %22 ], !dbg !4622
  call void @llvm.dbg.value(metadata i8 %35, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %34, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  %36 = add i64 %16, 1, !dbg !4643
  call void @llvm.dbg.value(metadata i64 %36, metadata !4507, metadata !DIExpression()) #20, !dbg !4622
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !4625
  %38 = load i8*, i8** %37, align 8, !dbg !4625, !tbaa !1291
  %39 = icmp eq i8* %38, null, !dbg !4626
  br i1 %39, label %40, label %12, !dbg !4626, !llvm.loop !4644

40:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i64 %34, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8 %35, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %34, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8 %35, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %34, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8 %35, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %34, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8 %35, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %34, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8 %35, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %34, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8 %35, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %34, metadata !4509, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8 %35, metadata !4510, metadata !DIExpression()) #20, !dbg !4622
  %41 = and i8 %35, 1, !dbg !4646
  %42 = icmp eq i8 %41, 0, !dbg !4646
  br i1 %42, label %43, label %48

43:                                               ; preds = %19, %40
  %44 = phi i64 [ %34, %40 ], [ %16, %19 ], !dbg !4622
  call void @llvm.dbg.value(metadata i64 %44, metadata !4620, metadata !DIExpression()), !dbg !4621
  %45 = icmp sgt i64 %44, -1, !dbg !4647
  br i1 %45, label %54, label %46, !dbg !4649

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %0, metadata !4554, metadata !DIExpression()) #20, !dbg !4650
  call void @llvm.dbg.value(metadata i8* %1, metadata !4555, metadata !DIExpression()) #20, !dbg !4650
  call void @llvm.dbg.value(metadata i64 %44, metadata !4556, metadata !DIExpression()) #20, !dbg !4650
  %47 = icmp eq i64 %44, -1, !dbg !4652
  br i1 %47, label %49, label %48, !dbg !4653

48:                                               ; preds = %40, %46
  br label %49, !dbg !4653

49:                                               ; preds = %46, %6, %48
  %50 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.145, i64 0, i64 0), %48 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.144, i64 0, i64 0), %6 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.144, i64 0, i64 0), %46 ]
  %51 = tail call i8* @dcgettext(i8* null, i8* %50, i32 5) #20, !dbg !4650
  call void @llvm.dbg.value(metadata i8* %51, metadata !4557, metadata !DIExpression()) #20, !dbg !4650
  %52 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #20, !dbg !4654
  %53 = tail call i8* @quote_n(i32 1, i8* %0) #20, !dbg !4655
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53) #20, !dbg !4656
  tail call void @argmatch_valid(i8** nonnull %2, i8* %3, i64 %4), !dbg !4657
  tail call void %5() #20, !dbg !4658
  br label %54, !dbg !4659

54:                                               ; preds = %43, %49
  %55 = phi i64 [ -1, %49 ], [ %44, %43 ], !dbg !4621
  ret i64 %55, !dbg !4660
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @argmatch_to_argument(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #22 !dbg !4661 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4665, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata i8** %1, metadata !4666, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata i8* %2, metadata !4667, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata i64 %3, metadata !4668, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata i64 0, metadata !4669, metadata !DIExpression()), !dbg !4670
  %5 = load i8*, i8** %1, align 8, !dbg !4671, !tbaa !1291
  %6 = icmp eq i8* %5, null, !dbg !4674
  br i1 %6, label %21, label %7, !dbg !4674

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !4669, metadata !DIExpression()), !dbg !4670
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3), !dbg !4675
  %9 = icmp eq i32 %8, 0, !dbg !4675
  call void @llvm.dbg.value(metadata i64 1, metadata !4669, metadata !DIExpression()), !dbg !4670
  br i1 %9, label %21, label %10, !dbg !4677

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !4669, metadata !DIExpression()), !dbg !4670
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !4671
  %13 = load i8*, i8** %12, align 8, !dbg !4671, !tbaa !1291
  %14 = icmp eq i8* %13, null, !dbg !4674
  br i1 %14, label %21, label %15, !dbg !4674, !llvm.loop !4678

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !4669, metadata !DIExpression()), !dbg !4670
  %16 = mul i64 %11, %3, !dbg !4680
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !4681
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3), !dbg !4675
  %19 = icmp eq i32 %18, 0, !dbg !4675
  %20 = add i64 %11, 1, !dbg !4682
  call void @llvm.dbg.value(metadata i64 %20, metadata !4669, metadata !DIExpression()), !dbg !4670
  br i1 %19, label %21, label %10, !dbg !4677, !llvm.loop !4678

21:                                               ; preds = %10, %15, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ %13, %15 ], [ null, %10 ], !dbg !4671
  ret i8* %22, !dbg !4683
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4684 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4690, metadata !DIExpression()), !dbg !4695
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4696
  call void @llvm.dbg.value(metadata i1 undef, metadata !4691, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4697, metadata !DIExpression()), !dbg !4700
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4702
  %4 = load i32, i32* %3, align 8, !dbg !4702, !tbaa !1475
  %5 = and i32 %4, 32, !dbg !4702
  %6 = icmp eq i32 %5, 0, !dbg !4703
  call void @llvm.dbg.value(metadata i1 %6, metadata !4693, metadata !DIExpression()), !dbg !4695
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4704
  %8 = icmp ne i32 %7, 0, !dbg !4705
  call void @llvm.dbg.value(metadata i1 %8, metadata !4694, metadata !DIExpression()), !dbg !4695
  br i1 %6, label %9, label %19, !dbg !4706

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4708
  call void @llvm.dbg.value(metadata i1 %10, metadata !4691, metadata !DIExpression()), !dbg !4695
  %11 = xor i1 %8, true, !dbg !4709
  %12 = or i1 %10, %11, !dbg !4709
  %13 = sext i1 %8 to i32, !dbg !4709
  br i1 %12, label %22, label %14, !dbg !4709

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !4710
  %16 = load i32, i32* %15, align 4, !dbg !4710, !tbaa !1368
  %17 = icmp ne i32 %16, 9, !dbg !4711
  %18 = sext i1 %17 to i32, !dbg !4712
  br label %22, !dbg !4712

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4713

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !4715
  store i32 0, i32* %21, align 4, !dbg !4717, !tbaa !1368
  br label %22, !dbg !4715

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4695
  ret i32 %23, !dbg !4718
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4719 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4721, metadata !DIExpression()), !dbg !4726
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4727
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4727
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4722, metadata !DIExpression()), !dbg !4728
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !4729
  %5 = icmp eq i32 %4, 0, !dbg !4729
  br i1 %5, label %6, label %13, !dbg !4731

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4732
  %8 = load i16, i16* %7, align 16, !dbg !4732
  %9 = icmp eq i16 %8, 67, !dbg !4732
  br i1 %9, label %13, label %10, !dbg !4733

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0), i64 6), !dbg !4734
  %12 = icmp ne i32 %11, 0, !dbg !4735
  br label %13, !dbg !4733

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4726
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4736
  ret i1 %14, !dbg !4736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4737 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4740
  call void @llvm.dbg.value(metadata i8* %1, metadata !4739, metadata !DIExpression()), !dbg !4741
  %2 = icmp eq i8* %1, null, !dbg !4742
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.156, i64 0, i64 0), i8* %1, !dbg !4744
  call void @llvm.dbg.value(metadata i8* %3, metadata !4739, metadata !DIExpression()), !dbg !4741
  %4 = load i8, i8* %3, align 1, !dbg !4745, !tbaa !1457
  %5 = icmp eq i8 %4, 0, !dbg !4749
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0), i8* %3, !dbg !4750
  call void @llvm.dbg.value(metadata i8* %6, metadata !4739, metadata !DIExpression()), !dbg !4741
  ret i8* %6, !dbg !4751
}

; Function Attrs: nounwind
declare !dbg !1250 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4756, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i8* %1, metadata !4757, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i64 %2, metadata !4758, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 %0, metadata !4760, metadata !DIExpression()) #20, !dbg !4769
  call void @llvm.dbg.value(metadata i8* %1, metadata !4763, metadata !DIExpression()) #20, !dbg !4769
  call void @llvm.dbg.value(metadata i64 %2, metadata !4764, metadata !DIExpression()) #20, !dbg !4769
  call void @llvm.dbg.value(metadata i32 %0, metadata !4771, metadata !DIExpression()) #20, !dbg !4777
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4779
  call void @llvm.dbg.value(metadata i8* %4, metadata !4776, metadata !DIExpression()) #20, !dbg !4777
  call void @llvm.dbg.value(metadata i8* %4, metadata !4765, metadata !DIExpression()) #20, !dbg !4769
  %5 = icmp eq i8* %4, null, !dbg !4780
  br i1 %5, label %6, label %9, !dbg !4781

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4782
  br i1 %7, label %19, label %8, !dbg !4785

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4786, !tbaa !1457
  br label %19, !dbg !4787

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !4788
  call void @llvm.dbg.value(metadata i64 %10, metadata !4766, metadata !DIExpression()) #20, !dbg !4789
  %11 = icmp ult i64 %10, %2, !dbg !4790
  br i1 %11, label %12, label %14, !dbg !4792

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4793
  call void @llvm.dbg.value(metadata i8* %1, metadata !4795, metadata !DIExpression()) #20, !dbg !4800
  call void @llvm.dbg.value(metadata i8* %4, metadata !4798, metadata !DIExpression()) #20, !dbg !4800
  call void @llvm.dbg.value(metadata i64 %13, metadata !4799, metadata !DIExpression()) #20, !dbg !4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !4802
  br label %19, !dbg !4803

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4804
  br i1 %15, label %19, label %16, !dbg !4807

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4808
  call void @llvm.dbg.value(metadata i8* %1, metadata !4795, metadata !DIExpression()) #20, !dbg !4810
  call void @llvm.dbg.value(metadata i8* %4, metadata !4798, metadata !DIExpression()) #20, !dbg !4810
  call void @llvm.dbg.value(metadata i64 %17, metadata !4799, metadata !DIExpression()) #20, !dbg !4810
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !4812
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4813
  store i8 0, i8* %18, align 1, !dbg !4814, !tbaa !1457
  br label %19, !dbg !4815

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4816
  ret i32 %20, !dbg !4817
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4818 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4820, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i32 %0, metadata !4771, metadata !DIExpression()) #20, !dbg !4822
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4824
  call void @llvm.dbg.value(metadata i8* %2, metadata !4776, metadata !DIExpression()) #20, !dbg !4822
  ret i8* %2, !dbg !4825
}

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
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold }

!llvm.dbg.cu = !{!2, !198, !203, !248, !549, !254, !327, !368, !591, !598, !489, !640, !661, !664, !668, !671, !714, !755, !796, !497, !815, !853, !860, !1253}
!llvm.ident = !{!1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256, !1256}
!llvm.module.flags = !{!1257, !1258, !1259, !1260, !1261}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 42, type: !195, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !188, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/sum.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !29}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 43, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./lib/human.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!32 = !DIEnumerator(name: "human_ceiling", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "human_round_to_nearest", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "human_floor", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "human_group_digits", value: 4, isUnsigned: true)
!36 = !DIEnumerator(name: "human_suppress_point_zero", value: 8, isUnsigned: true)
!37 = !DIEnumerator(name: "human_autoscale", value: 16, isUnsigned: true)
!38 = !DIEnumerator(name: "human_base_1024", value: 32, isUnsigned: true)
!39 = !DIEnumerator(name: "human_space_before_unit", value: 64, isUnsigned: true)
!40 = !DIEnumerator(name: "human_SI", value: 128, isUnsigned: true)
!41 = !DIEnumerator(name: "human_B", value: 256, isUnsigned: true)
!42 = !{!43, !53, !114, !118, !122, !125, !128, !135, !138, !47, !104, !153, !157, !161, !164, !168, !171, !174, !175, !176, !180, !106, !184}
!43 = !DISubprogram(name: "dcgettext", scope: !44, file: !44, line: 51, type: !45, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!44 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !49, !49, !51}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !{}
!53 = !DISubprogram(name: "fputs_unlocked", scope: !54, file: !54, line: 662, type: !55, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!54 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!55 = !DISubroutineType(types: !56)
!56 = !{!51, !49, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !60)
!59 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !76, !77, !78, !79, !83, !85, !87, !91, !94, !96, !99, !102, !103, !105, !109, !110}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !58, file: !59, line: 51, baseType: !51, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !58, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !58, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !58, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !58, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !58, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !58, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !58, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !58, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !58, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !58, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !58, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !58, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !59, line: 36, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !58, file: !59, line: 70, baseType: !57, size: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !58, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !58, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !58, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !81, line: 152, baseType: !82)
!81 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!82 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !58, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!84 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !58, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!86 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !58, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 1)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !58, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !59, line: 43, baseType: null)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !58, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !81, line: 153, baseType: !82)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !58, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !59, line: 37, flags: DIFlagFwdDecl)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !58, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !59, line: 38, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !58, file: !59, line: 93, baseType: !57, size: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !58, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !58, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 46, baseType: !108)
!107 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!108 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !58, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !58, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 20)
!114 = !DISubprogram(name: "set_program_name", scope: !115, file: !115, line: 37, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!115 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!116 = !DISubroutineType(types: !117)
!117 = !{null, !49}
!118 = !DISubprogram(name: "setlocale", scope: !119, file: !119, line: 122, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!119 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!120 = !DISubroutineType(types: !121)
!121 = !{!47, !51, !49}
!122 = !DISubprogram(name: "bindtextdomain", scope: !44, file: !44, line: 86, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!123 = !DISubroutineType(types: !124)
!124 = !{!47, !49, !49}
!125 = !DISubprogram(name: "textdomain", scope: !44, file: !44, line: 82, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!126 = !DISubroutineType(types: !127)
!127 = !{!47, !49}
!128 = !DISubprogram(name: "atexit", scope: !129, file: !129, line: 595, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!129 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!130 = !DISubroutineType(types: !131)
!131 = !{!51, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null}
!135 = !DISubprogram(name: "setvbuf", scope: !54, file: !54, line: 308, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!136 = !DISubroutineType(types: !137)
!137 = !{!51, !57, !47, !51, !108}
!138 = !DISubprogram(name: "getopt_long", scope: !139, file: !139, line: 66, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!139 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!140 = !DISubroutineType(types: !141)
!141 = !{!51, !51, !142, !49, !144, !151}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !139, line: 50, size: 256, elements: !147)
!147 = !{!148, !149, !150, !152}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !139, line: 52, baseType: !49, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !146, file: !139, line: 55, baseType: !51, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !146, file: !139, line: 56, baseType: !151, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !146, file: !139, line: 57, baseType: !51, size: 32, offset: 192)
!153 = !DISubprogram(name: "version_etc", scope: !154, file: !154, line: 69, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!154 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = !DISubroutineType(types: !156)
!156 = !{null, !57, !49, !49, !49, null}
!157 = !DISubprogram(name: "rpl_fclose", scope: !158, file: !158, line: 672, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!158 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!159 = !DISubroutineType(types: !160)
!160 = !{!51, !57}
!161 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!162 = !DISubroutineType(types: !163)
!163 = !{!47, !51, !5, !49}
!164 = !DISubprogram(name: "error", scope: !165, file: !165, line: 52, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!165 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !DISubroutineType(types: !167)
!167 = !{null, !51, !51, !49, null}
!168 = !DISubprogram(name: "fadvise", scope: !21, file: !21, line: 72, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !57, !20}
!171 = !DISubprogram(name: "human_readable", scope: !30, file: !30, line: 79, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!172 = !DISubroutineType(types: !173)
!173 = !{!47, !108, !47, !51, !108, !108}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!176 = !DISubprogram(name: "open", scope: !177, file: !177, line: 196, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!177 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!178 = !DISubroutineType(types: !179)
!179 = !{!51, !49, !51, null}
!180 = !DISubprogram(name: "safe_read", scope: !181, file: !181, line: 42, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!181 = !DIFile(filename: "./lib/safe-read.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = !DISubroutineType(types: !183)
!183 = !{!108, !51, !104, !108}
!184 = !DISubprogram(name: "close", scope: !185, file: !185, line: 353, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!185 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!186 = !DISubroutineType(types: !187)
!187 = !{!51, !51}
!188 = !{!189, !190}
!189 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 44, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 1024, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 4)
!195 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "Version", scope: !198, file: !199, line: 2, type: !49, isLocal: false, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !200, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = !{!196}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "file_name", scope: !203, file: !204, line: 46, type: !49, isLocal: true, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !205, globals: !243, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = !{!206, !43, !242, !164}
!206 = !DISubprogram(name: "close_stream", scope: !207, file: !207, line: 2, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!207 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = !DISubroutineType(types: !209)
!209 = !{!51, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !211, file: !59, line: 51, baseType: !51, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !211, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !211, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !211, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !211, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !211, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !211, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !211, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !211, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !211, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !211, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !211, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !211, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !211, file: !59, line: 70, baseType: !210, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !211, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !211, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !211, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !211, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !211, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !211, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !211, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !211, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !211, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !211, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !211, file: !59, line: 93, baseType: !210, size: 64, offset: 1344)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !211, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !211, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !211, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !211, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!242 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!243 = !{!201, !244}
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !203, file: !204, line: 56, type: !195, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "exit_failure", scope: !248, file: !249, line: 24, type: !251, isLocal: false, isDefinition: true)
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !250, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!250 = !{!246}
!251 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "power_letter", scope: !254, file: !255, line: 36, type: !322, isLocal: true, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !265, globals: !310, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/human.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!256 = !{!29, !257}
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !258, line: 25, baseType: !7, size: 32, elements: !259)
!258 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = !{!260, !261, !262, !263, !264}
!260 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!261 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!262 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!263 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!264 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!265 = !{!266, !296, !297, !299, !305}
!266 = !DISubprogram(name: "localeconv", scope: !119, file: !119, line: 125, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!267 = !DISubroutineType(types: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !119, line: 51, size: 768, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !270, file: !119, line: 55, baseType: !47, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !270, file: !119, line: 56, baseType: !47, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !270, file: !119, line: 62, baseType: !47, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !270, file: !119, line: 68, baseType: !47, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !270, file: !119, line: 69, baseType: !47, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !270, file: !119, line: 70, baseType: !47, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !270, file: !119, line: 71, baseType: !47, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !270, file: !119, line: 72, baseType: !47, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !270, file: !119, line: 73, baseType: !47, size: 64, offset: 512)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !270, file: !119, line: 74, baseType: !47, size: 64, offset: 576)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !270, file: !119, line: 75, baseType: !48, size: 8, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !270, file: !119, line: 76, baseType: !48, size: 8, offset: 648)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !270, file: !119, line: 78, baseType: !48, size: 8, offset: 656)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !270, file: !119, line: 80, baseType: !48, size: 8, offset: 664)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !270, file: !119, line: 82, baseType: !48, size: 8, offset: 672)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !270, file: !119, line: 84, baseType: !48, size: 8, offset: 680)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !270, file: !119, line: 91, baseType: !48, size: 8, offset: 688)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !270, file: !119, line: 92, baseType: !48, size: 8, offset: 696)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !270, file: !119, line: 95, baseType: !48, size: 8, offset: 704)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !270, file: !119, line: 97, baseType: !48, size: 8, offset: 712)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !270, file: !119, line: 99, baseType: !48, size: 8, offset: 720)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !270, file: !119, line: 101, baseType: !48, size: 8, offset: 728)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !270, file: !119, line: 108, baseType: !48, size: 8, offset: 736)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !270, file: !119, line: 109, baseType: !48, size: 8, offset: 744)
!296 = !DISubprogram(name: "getenv", scope: !129, file: !129, line: 634, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!299 = !DISubprogram(name: "argmatch", scope: !300, file: !300, line: 52, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!300 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!301 = !DISubroutineType(types: !302)
!302 = !{!82, !49, !303, !297, !108}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!305 = !DISubprogram(name: "xstrtoumax", scope: !258, file: !258, line: 48, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!306 = !DISubroutineType(types: !307)
!307 = !{!257, !49, !308, !51, !309, !49}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!310 = !{!252, !311, !316}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "block_size_args", scope: !254, file: !255, line: 398, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 192, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 3)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "block_size_opts", scope: !254, file: !255, line: 399, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 64, elements: !320)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!320 = !{!321}
!321 = !DISubrange(count: 2)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 72, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 9)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "program_name", scope: !327, file: !328, line: 33, type: !49, isLocal: false, isDefinition: true)
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !329, globals: !365, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!329 = !{!104, !330, !47}
!330 = !DISubprogram(name: "fputs", scope: !54, file: !54, line: 626, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!331 = !DISubroutineType(types: !332)
!332 = !{!51, !49, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !334, file: !59, line: 51, baseType: !51, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !334, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !334, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !334, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !334, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !334, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !334, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !334, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !334, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !334, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !334, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !334, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !334, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !334, file: !59, line: 70, baseType: !333, size: 64, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !334, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !334, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !334, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !334, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !334, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !334, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !334, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !334, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !334, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !334, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !334, file: !59, line: 93, baseType: !333, size: 64, offset: 1344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !334, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !334, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !334, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !334, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!365 = !{!325}
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !368, file: !369, line: 85, type: !484, isLocal: false, isDefinition: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !370, retainedTypes: !391, globals: !457, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!370 = !{!5, !371, !376}
!371 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!374 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!375 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !377, line: 46, baseType: !7, size: 32, elements: !378)
!377 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390}
!379 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!380 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!381 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!382 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!383 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!384 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!385 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!386 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!387 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!388 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!389 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!390 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!391 = !{!392, !396, !411, !414, !51, !84, !417, !106, !432, !436, !43, !442, !446, !47, !450, !453, !454}
!392 = !DISubprogram(name: "xmemdup", scope: !393, file: !393, line: 62, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!393 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!394 = !DISubroutineType(types: !395)
!395 = !{!104, !297, !108}
!396 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!397 = !DISubroutineType(types: !398)
!398 = !{!47, !49, !108, !309, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !369, line: 65, size: 448, elements: !402)
!402 = !{!403, !404, !405, !409, !410}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !401, file: !369, line: 68, baseType: !5, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !369, line: 71, baseType: !51, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !401, file: !369, line: 75, baseType: !406, size: 256, offset: 64)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 8)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !401, file: !369, line: 78, baseType: !49, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !401, file: !369, line: 81, baseType: !49, size: 64, offset: 384)
!411 = !DISubprogram(name: "free", scope: !129, file: !129, line: 565, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !104}
!414 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!415 = !DISubroutineType(types: !416)
!416 = !{!47, !51, !49, !49, !49, !108}
!417 = !DISubprogram(name: "rpl_mbrtowc", scope: !418, file: !418, line: 717, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!418 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!419 = !DISubroutineType(types: !420)
!420 = !{!108, !151, !49, !108, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 13, size: 64, elements: !424)
!423 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !422, file: !423, line: 15, baseType: !51, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !422, file: !423, line: 20, baseType: !427, size: 32, offset: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !423, line: 16, size: 32, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !427, file: !423, line: 18, baseType: !7, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !427, file: !423, line: 19, baseType: !431, size: 32)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, elements: !193)
!432 = !DISubprogram(name: "iswprint", scope: !433, file: !433, line: 120, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!433 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!434 = !DISubroutineType(types: !435)
!435 = !{!51, !7}
!436 = !DISubprogram(name: "mbsinit", scope: !437, file: !437, line: 292, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!437 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!438 = !DISubroutineType(types: !439)
!439 = !{!51, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!442 = !DISubprogram(name: "locale_charset", scope: !443, file: !443, line: 35, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!443 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!444 = !DISubroutineType(types: !445)
!445 = !{!49}
!446 = !DISubprogram(name: "c_strcasecmp", scope: !447, file: !447, line: 42, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!447 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!448 = !DISubroutineType(types: !449)
!449 = !{!51, !49, !49}
!450 = !DISubprogram(name: "xmalloc", scope: !393, file: !393, line: 53, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!451 = !DISubroutineType(types: !452)
!452 = !{!104, !108}
!453 = !DISubprogram(name: "xalloc_die", scope: !393, file: !393, line: 51, type: !133, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !52)
!454 = !DISubprogram(name: "xrealloc", scope: !393, file: !393, line: 59, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!455 = !DISubroutineType(types: !456)
!456 = !{!104, !104, !108}
!457 = !{!366, !458, !464, !466, !468, !473, !480, !482}
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !368, file: !369, line: 101, type: !460, isLocal: false, isDefinition: true)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 320, elements: !462)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!462 = !{!463}
!463 = !DISubrange(count: 10)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !368, file: !369, line: 1052, type: !401, isLocal: false, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !368, file: !369, line: 116, type: !401, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "slot0", scope: !368, file: !369, line: 842, type: !470, isLocal: true, isDefinition: true)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 256)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "slotvec", scope: !368, file: !369, line: 845, type: !475, isLocal: true, isDefinition: true)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !369, line: 834, size: 128, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !476, file: !369, line: 836, baseType: !106, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !476, file: !369, line: 837, baseType: !47, size: 64, offset: 64)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "nslots", scope: !368, file: !369, line: 843, type: !51, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "slotvec0", scope: !368, file: !369, line: 844, type: !476, isLocal: true, isDefinition: true)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 704, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 11)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !489, file: !490, line: 26, type: !492, isLocal: false, isDefinition: true)
!489 = distinct !DICompileUnit(language: DW_LANG_C99, file: !490, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !491, splitDebugInlining: false, nameTableKind: None)
!490 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!491 = !{!487}
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 376, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 47)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !497, file: !498, line: 67, type: !548, isLocal: false, isDefinition: true)
!497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !499, retainedTypes: !500, globals: !547, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!499 = !{!5}
!500 = !{!104, !49, !43, !501, !502, !164, !506, !541, !544, !175}
!501 = !DISubprogram(name: "quotearg_n_style", scope: !6, file: !6, line: 368, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!502 = !DISubprogram(name: "quote_n", scope: !503, file: !503, line: 40, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!503 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!504 = !DISubroutineType(types: !505)
!505 = !{!49, !51, !49}
!506 = !DISubprogram(name: "fputs_unlocked", scope: !54, file: !54, line: 662, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!507 = !DISubroutineType(types: !508)
!508 = !{!51, !49, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !510, file: !59, line: 51, baseType: !51, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !510, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !510, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !510, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !510, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !510, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !510, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !510, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !510, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !510, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !510, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !510, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !510, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !510, file: !59, line: 70, baseType: !509, size: 64, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !510, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !510, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !510, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !510, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !510, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !510, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !510, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !510, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !510, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !510, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !510, file: !59, line: 93, baseType: !509, size: 64, offset: 1344)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !510, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !510, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !510, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !510, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!541 = !DISubprogram(name: "quote", scope: !503, file: !503, line: 44, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!542 = !DISubroutineType(types: !543)
!543 = !{!49, !49}
!544 = !DISubprogram(name: "usage", scope: !498, file: !498, line: 56, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !51}
!547 = !{!495}
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !300, line: 61, baseType: !132)
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !552, splitDebugInlining: false, nameTableKind: None)
!550 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!551 = !{!20}
!552 = !{!553, !556}
!553 = !DISubprogram(name: "posix_fadvise", scope: !177, file: !177, line: 288, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!554 = !DISubroutineType(types: !555)
!555 = !{!51, !51, !82, !82, !51}
!556 = !DISubprogram(name: "fileno", scope: !54, file: !54, line: 786, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!557 = !DISubroutineType(types: !558)
!558 = !{!51, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !560, file: !59, line: 51, baseType: !51, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !560, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !560, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !560, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !560, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !560, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !560, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !560, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !560, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !560, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !560, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !560, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !560, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !560, file: !59, line: 70, baseType: !559, size: 64, offset: 832)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !560, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !560, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !560, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !560, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !560, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !560, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !560, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !560, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !560, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !560, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !560, file: !59, line: 93, baseType: !559, size: 64, offset: 1344)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !560, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !560, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !560, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !560, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !593, splitDebugInlining: false, nameTableKind: None)
!592 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!593 = !{!594}
!594 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !595, line: 40, baseType: !7, size: 32, elements: !596)
!595 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!596 = !{!597}
!597 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !600, retainedTypes: !604, splitDebugInlining: false, nameTableKind: None)
!599 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!600 = !{!601}
!601 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !599, line: 40, baseType: !7, size: 32, elements: !602)
!602 = !{!603}
!603 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!604 = !{!43, !605, !104}
!605 = !DISubprogram(name: "fputs_unlocked", scope: !54, file: !54, line: 662, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!606 = !DISubroutineType(types: !607)
!607 = !{!51, !49, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !609, file: !59, line: 51, baseType: !51, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !609, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !609, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !609, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !609, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !609, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !609, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !609, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !609, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !609, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !609, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !609, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !609, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !609, file: !59, line: 70, baseType: !608, size: 64, offset: 832)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !609, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !609, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !609, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !609, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !609, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !609, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !609, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !609, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !609, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !609, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !609, file: !59, line: 93, baseType: !608, size: 64, offset: 1344)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !609, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !609, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !609, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !609, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!640 = distinct !DICompileUnit(language: DW_LANG_C99, file: !641, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !642, retainedTypes: !655, splitDebugInlining: false, nameTableKind: None)
!641 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!642 = !{!643}
!643 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !644, file: !393, line: 186, baseType: !7, size: 32, elements: !653)
!644 = distinct !DISubprogram(name: "x2nrealloc", scope: !393, file: !393, line: 174, type: !645, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !648)
!645 = !DISubroutineType(types: !646)
!646 = !{!104, !104, !647, !106}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!648 = !{!649, !650, !651, !652}
!649 = !DILocalVariable(name: "p", arg: 1, scope: !644, file: !393, line: 174, type: !104)
!650 = !DILocalVariable(name: "pn", arg: 2, scope: !644, file: !393, line: 174, type: !647)
!651 = !DILocalVariable(name: "s", arg: 3, scope: !644, file: !393, line: 174, type: !106)
!652 = !DILocalVariable(name: "n", scope: !644, file: !393, line: 176, type: !106)
!653 = !{!654}
!654 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!655 = !{!106, !453, !450, !454, !47, !411, !104, !656, !659}
!656 = !DISubprogram(name: "xcalloc", scope: !393, file: !393, line: 57, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!657 = !DISubroutineType(types: !658)
!658 = !{!104, !108, !108}
!659 = !DISubprogram(name: "rpl_calloc", scope: !660, file: !660, line: 688, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!660 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!663 = !{!43, !164}
!664 = distinct !DICompileUnit(language: DW_LANG_C99, file: !665, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666, retainedTypes: !667, splitDebugInlining: false, nameTableKind: None)
!665 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!666 = !{!257, !376}
!667 = !{!51, !84}
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !670, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!670 = !{!104}
!671 = distinct !DICompileUnit(language: DW_LANG_C99, file: !672, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !673, splitDebugInlining: false, nameTableKind: None)
!672 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!673 = !{!674, !709, !710, !713}
!674 = !DISubprogram(name: "fileno", scope: !54, file: !54, line: 786, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!675 = !DISubroutineType(types: !676)
!676 = !{!51, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !678, file: !59, line: 51, baseType: !51, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !678, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !678, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !678, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !678, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !678, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !678, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !678, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !678, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !678, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !678, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !678, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !678, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !678, file: !59, line: 70, baseType: !677, size: 64, offset: 832)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !678, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !678, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !678, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !678, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !678, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !678, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !678, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !678, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !678, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !678, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !678, file: !59, line: 93, baseType: !677, size: 64, offset: 1344)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !678, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !678, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !678, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !678, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!709 = !DISubprogram(name: "fclose", scope: !54, file: !54, line: 213, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!710 = !DISubprogram(name: "lseek", scope: !185, file: !185, line: 334, type: !711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!711 = !DISubroutineType(types: !712)
!712 = !{!82, !51, !82, !51}
!713 = !DISubprogram(name: "rpl_fflush", scope: !158, file: !158, line: 718, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !715, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!716 = !{!104, !717, !752}
!717 = !DISubprogram(name: "fflush", scope: !54, file: !54, line: 218, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!718 = !DISubroutineType(types: !719)
!719 = !{!51, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !721, file: !59, line: 51, baseType: !51, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !721, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !721, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !721, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !721, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !721, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !721, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !721, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !721, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !721, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !721, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !721, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !721, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !721, file: !59, line: 70, baseType: !720, size: 64, offset: 832)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !721, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !721, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !721, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !721, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !721, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !721, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !721, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !721, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !721, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !721, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !721, file: !59, line: 93, baseType: !720, size: 64, offset: 1344)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !721, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !721, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !721, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !721, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!752 = !DISubprogram(name: "rpl_fseeko", scope: !158, file: !158, line: 1034, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!753 = !DISubroutineType(types: !754)
!754 = !{!51, !720, !82, !51}
!755 = distinct !DICompileUnit(language: DW_LANG_C99, file: !756, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !757, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!757 = !{!104, !758, !710, !793}
!758 = !DISubprogram(name: "fileno", scope: !54, file: !54, line: 786, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!759 = !DISubroutineType(types: !760)
!760 = !{!51, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !762, file: !59, line: 51, baseType: !51, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !762, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !762, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !762, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !762, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !762, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !762, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !762, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !762, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !762, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !762, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !762, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !762, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !762, file: !59, line: 70, baseType: !761, size: 64, offset: 832)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !762, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !762, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !762, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !762, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !762, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !762, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !762, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !762, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !762, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !762, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !762, file: !59, line: 93, baseType: !761, size: 64, offset: 1344)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !762, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !762, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !762, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !762, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!793 = !DISubprogram(name: "fseeko", scope: !54, file: !54, line: 707, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!794 = !DISubroutineType(types: !795)
!795 = !{!51, !761, !82, !51}
!796 = distinct !DICompileUnit(language: DW_LANG_C99, file: !797, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!798 = !{!799, !106, !811}
!799 = !DISubprogram(name: "mbrtowc", scope: !437, file: !437, line: 296, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!800 = !DISubroutineType(types: !801)
!801 = !{!108, !151, !49, !108, !802}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 13, size: 64, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !803, file: !423, line: 15, baseType: !51, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !803, file: !423, line: 20, baseType: !807, size: 32, offset: 32)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !803, file: !423, line: 16, size: 32, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !807, file: !423, line: 18, baseType: !7, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !807, file: !423, line: 19, baseType: !431, size: 32)
!811 = !DISubprogram(name: "hard_locale", scope: !812, file: !812, line: 26, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!812 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!813 = !DISubroutineType(types: !814)
!814 = !{!195, !51}
!815 = distinct !DICompileUnit(language: DW_LANG_C99, file: !816, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!817 = !{!818}
!818 = !DISubprogram(name: "rpl_fclose", scope: !158, file: !158, line: 672, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!819 = !DISubroutineType(types: !820)
!820 = !{!51, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !822, file: !59, line: 51, baseType: !51, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !822, file: !59, line: 54, baseType: !47, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !822, file: !59, line: 55, baseType: !47, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !822, file: !59, line: 56, baseType: !47, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !822, file: !59, line: 57, baseType: !47, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !822, file: !59, line: 58, baseType: !47, size: 64, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !822, file: !59, line: 59, baseType: !47, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !822, file: !59, line: 60, baseType: !47, size: 64, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !822, file: !59, line: 61, baseType: !47, size: 64, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !822, file: !59, line: 64, baseType: !47, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !822, file: !59, line: 65, baseType: !47, size: 64, offset: 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !822, file: !59, line: 66, baseType: !47, size: 64, offset: 704)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !822, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !822, file: !59, line: 70, baseType: !821, size: 64, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !822, file: !59, line: 72, baseType: !51, size: 32, offset: 896)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !822, file: !59, line: 73, baseType: !51, size: 32, offset: 928)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !822, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !822, file: !59, line: 77, baseType: !84, size: 16, offset: 1024)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !822, file: !59, line: 78, baseType: !86, size: 8, offset: 1040)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !822, file: !59, line: 79, baseType: !88, size: 8, offset: 1048)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !822, file: !59, line: 81, baseType: !92, size: 64, offset: 1088)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !822, file: !59, line: 89, baseType: !95, size: 64, offset: 1152)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !822, file: !59, line: 91, baseType: !97, size: 64, offset: 1216)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !822, file: !59, line: 92, baseType: !100, size: 64, offset: 1280)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !822, file: !59, line: 93, baseType: !821, size: 64, offset: 1344)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !822, file: !59, line: 94, baseType: !104, size: 64, offset: 1408)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !822, file: !59, line: 95, baseType: !106, size: 64, offset: 1472)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !822, file: !59, line: 96, baseType: !51, size: 32, offset: 1536)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !822, file: !59, line: 98, baseType: !111, size: 160, offset: 1568)
!853 = distinct !DICompileUnit(language: DW_LANG_C99, file: !854, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !855, splitDebugInlining: false, nameTableKind: None)
!854 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!855 = !{!856}
!856 = !DISubprogram(name: "setlocale_null_r", scope: !857, file: !857, line: 64, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!857 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!858 = !DISubroutineType(types: !859)
!859 = !{!51, !51, !47, !108}
!860 = distinct !DICompileUnit(language: DW_LANG_C99, file: !861, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !862, retainedTypes: !1249, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!862 = !{!863}
!863 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !864, line: 41, baseType: !7, size: 32, elements: !865)
!864 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248}
!866 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!867 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!868 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!869 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!870 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!871 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!872 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!873 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!874 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!875 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!876 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!877 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!878 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!879 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!880 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!881 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!882 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!883 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!884 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!885 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!886 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!887 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!888 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!889 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!890 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!891 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!892 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!893 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!894 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!895 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!896 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!897 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!898 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!899 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!900 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!901 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!902 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!903 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!904 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!905 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!906 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!907 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!908 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!909 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!910 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!911 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!912 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!913 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!914 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!915 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!974 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!977 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!978 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!979 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!980 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!981 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!982 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!983 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!984 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!985 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!986 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!987 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!988 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1061 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1134 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1135 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1136 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1137 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1138 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1139 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1140 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1141 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1142 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1143 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1144 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1145 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1146 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1147 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1148 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1150 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1151 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1152 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1153 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1154 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1155 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1181 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1182 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1183 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1184 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1185 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1188 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1189 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1190 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1191 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1192 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1193 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1194 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1198 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1199 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1200 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1233 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1234 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1235 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1236 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1237 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1238 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1239 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1240 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1241 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1242 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1243 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1244 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1245 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1246 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1247 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1248 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1249 = !{!1250, !104}
!1250 = !DISubprogram(name: "nl_langinfo", scope: !864, file: !864, line: 661, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!47, !51}
!1253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1254, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !1255, splitDebugInlining: false, nameTableKind: None)
!1254 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1255 = !{!104, !118}
!1256 = !{!"clang version 10.0.0 "}
!1257 = !{i32 7, !"Dwarf Version", i32 4}
!1258 = !{i32 2, !"Debug Info Version", i32 3}
!1259 = !{i32 1, !"wchar_size", i32 4}
!1260 = !{i32 7, !"PIC Level", i32 2}
!1261 = !{i32 7, !"PIE Level", i32 2}
!1262 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !545, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1263)
!1263 = !{!1264}
!1264 = !DILocalVariable(name: "status", arg: 1, scope: !1262, file: !3, line: 53, type: !51)
!1265 = !DILocalVariable(name: "infomap", scope: !1266, file: !1267, line: 636, type: !1279)
!1266 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1267, file: !1267, line: 634, type: !116, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1268)
!1267 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1268 = !{!1269, !1265, !1270, !1271, !1278}
!1269 = !DILocalVariable(name: "program", arg: 1, scope: !1266, file: !1267, line: 634, type: !49)
!1270 = !DILocalVariable(name: "node", scope: !1266, file: !1267, line: 646, type: !49)
!1271 = !DILocalVariable(name: "map_prog", scope: !1266, file: !1267, line: 647, type: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1266, file: !1267, line: 636, size: 128, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1274, file: !1267, line: 636, baseType: !49, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1274, file: !1267, line: 636, baseType: !49, size: 64, offset: 64)
!1278 = !DILocalVariable(name: "lc_messages", scope: !1266, file: !1267, line: 659, type: !49)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1273, size: 896, elements: !1280)
!1280 = !{!1281}
!1281 = !DISubrange(count: 7)
!1282 = !DILocation(line: 636, column: 67, scope: !1266, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 76, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 58, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 55, column: 7)
!1286 = !DILocation(line: 0, scope: !1262)
!1287 = !DILocation(line: 55, column: 14, scope: !1285)
!1288 = !DILocation(line: 55, column: 7, scope: !1262)
!1289 = !DILocation(line: 56, column: 5, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 56, column: 5)
!1291 = !{!1292, !1292, i64 0}
!1292 = !{!"any pointer", !1293, i64 0}
!1293 = !{!"omnipotent char", !1294, i64 0}
!1294 = !{!"Simple C/C++ TBAA"}
!1295 = !DILocation(line: 59, column: 7, scope: !1284)
!1296 = !DILocation(line: 63, column: 7, scope: !1284)
!1297 = !DILocation(line: 583, column: 3, scope: !1298, inlinedAt: !1299)
!1298 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1267, file: !1267, line: 581, type: !133, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!1299 = distinct !DILocation(line: 67, column: 7, scope: !1284)
!1300 = !DILocation(line: 69, column: 7, scope: !1284)
!1301 = !DILocation(line: 74, column: 7, scope: !1284)
!1302 = !DILocation(line: 75, column: 7, scope: !1284)
!1303 = !DILocation(line: 0, scope: !1266, inlinedAt: !1283)
!1304 = !DILocation(line: 636, column: 3, scope: !1266, inlinedAt: !1283)
!1305 = !DILocation(line: 647, column: 36, scope: !1266, inlinedAt: !1283)
!1306 = !DILocation(line: 649, column: 3, scope: !1266, inlinedAt: !1283)
!1307 = !DILocation(line: 649, column: 33, scope: !1266, inlinedAt: !1283)
!1308 = !DILocation(line: 650, column: 13, scope: !1266, inlinedAt: !1283)
!1309 = !DILocation(line: 649, column: 20, scope: !1266, inlinedAt: !1283)
!1310 = !{!1311, !1292, i64 0}
!1311 = !{!"infomap", !1292, i64 0, !1292, i64 8}
!1312 = !DILocation(line: 649, column: 10, scope: !1266, inlinedAt: !1283)
!1313 = !DILocation(line: 649, column: 28, scope: !1266, inlinedAt: !1283)
!1314 = distinct !{!1314, !1306, !1308}
!1315 = !DILocation(line: 652, column: 17, scope: !1316, inlinedAt: !1283)
!1316 = distinct !DILexicalBlock(scope: !1266, file: !1267, line: 652, column: 7)
!1317 = !{!1311, !1292, i64 8}
!1318 = !DILocation(line: 652, column: 7, scope: !1316, inlinedAt: !1283)
!1319 = !DILocation(line: 652, column: 7, scope: !1266, inlinedAt: !1283)
!1320 = !DILocation(line: 655, column: 3, scope: !1266, inlinedAt: !1283)
!1321 = !DILocation(line: 659, column: 29, scope: !1266, inlinedAt: !1283)
!1322 = !DILocation(line: 660, column: 7, scope: !1323, inlinedAt: !1283)
!1323 = distinct !DILexicalBlock(scope: !1266, file: !1267, line: 660, column: 7)
!1324 = !DILocation(line: 660, column: 19, scope: !1323, inlinedAt: !1283)
!1325 = !DILocation(line: 660, column: 22, scope: !1323, inlinedAt: !1283)
!1326 = !DILocation(line: 660, column: 7, scope: !1266, inlinedAt: !1283)
!1327 = !DILocation(line: 666, column: 7, scope: !1328, inlinedAt: !1283)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !1267, line: 661, column: 5)
!1329 = !DILocation(line: 668, column: 5, scope: !1328, inlinedAt: !1283)
!1330 = !DILocation(line: 669, column: 3, scope: !1266, inlinedAt: !1283)
!1331 = !DILocation(line: 671, column: 3, scope: !1266, inlinedAt: !1283)
!1332 = !DILocation(line: 673, column: 1, scope: !1266, inlinedAt: !1283)
!1333 = !DILocation(line: 78, column: 3, scope: !1262)
!1334 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 221, type: !1335, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!51, !51, !308}
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343}
!1338 = !DILocalVariable(name: "argc", arg: 1, scope: !1334, file: !3, line: 221, type: !51)
!1339 = !DILocalVariable(name: "argv", arg: 2, scope: !1334, file: !3, line: 221, type: !308)
!1340 = !DILocalVariable(name: "ok", scope: !1334, file: !3, line: 223, type: !195)
!1341 = !DILocalVariable(name: "optc", scope: !1334, file: !3, line: 224, type: !51)
!1342 = !DILocalVariable(name: "files_given", scope: !1334, file: !3, line: 225, type: !51)
!1343 = !DILocalVariable(name: "sum_func", scope: !1334, file: !3, line: 226, type: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!195, !49, !51}
!1347 = !DILocation(line: 0, scope: !1334)
!1348 = !DILocation(line: 229, column: 21, scope: !1334)
!1349 = !DILocation(line: 229, column: 3, scope: !1334)
!1350 = !DILocation(line: 230, column: 3, scope: !1334)
!1351 = !DILocation(line: 231, column: 3, scope: !1334)
!1352 = !DILocation(line: 232, column: 3, scope: !1334)
!1353 = !DILocation(line: 234, column: 3, scope: !1334)
!1354 = !DILocation(line: 238, column: 12, scope: !1334)
!1355 = !DILocation(line: 238, column: 3, scope: !1334)
!1356 = !DILocation(line: 240, column: 19, scope: !1334)
!1357 = !DILocation(line: 242, column: 3, scope: !1334)
!1358 = !DILocation(line: 242, column: 18, scope: !1334)
!1359 = distinct !{!1359, !1357, !1360}
!1360 = !DILocation(line: 261, column: 5, scope: !1334)
!1361 = !DILocation(line: 252, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 245, column: 9)
!1363 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 243, column: 5)
!1364 = !DILocation(line: 254, column: 9, scope: !1362)
!1365 = !DILocation(line: 256, column: 9, scope: !1362)
!1366 = !DILocation(line: 259, column: 11, scope: !1362)
!1367 = !DILocation(line: 263, column: 24, scope: !1334)
!1368 = !{!1369, !1369, i64 0}
!1369 = !{!"int", !1293, i64 0}
!1370 = !DILocation(line: 263, column: 22, scope: !1334)
!1371 = !DILocation(line: 264, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 264, column: 7)
!1373 = !DILocation(line: 264, column: 7, scope: !1334)
!1374 = !DILocation(line: 267, column: 28, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 267, column: 5)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 267, column: 5)
!1377 = !DILocation(line: 267, column: 5, scope: !1376)
!1378 = !DILocation(line: 265, column: 10, scope: !1372)
!1379 = !{i1 (i8*, i32)* @bsd_sum_file, i1 (i8*, i32)* @sysv_sum_file}
!1380 = !DILocation(line: 265, column: 8, scope: !1372)
!1381 = !DILocation(line: 265, column: 5, scope: !1372)
!1382 = !DILocation(line: 268, column: 23, scope: !1375)
!1383 = !DILocation(line: 268, column: 13, scope: !1375)
!1384 = !DILocation(line: 268, column: 10, scope: !1375)
!1385 = !DILocation(line: 267, column: 42, scope: !1375)
!1386 = distinct !{!1386, !1377, !1387}
!1387 = !DILocation(line: 268, column: 48, scope: !1376)
!1388 = !DILocation(line: 0, scope: !1372)
!1389 = !DILocation(line: 270, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 270, column: 7)
!1391 = !DILocation(line: 270, column: 23, scope: !1390)
!1392 = !DILocation(line: 270, column: 34, scope: !1390)
!1393 = !DILocation(line: 270, column: 26, scope: !1390)
!1394 = !DILocation(line: 270, column: 41, scope: !1390)
!1395 = !DILocation(line: 270, column: 7, scope: !1334)
!1396 = !DILocation(line: 271, column: 5, scope: !1390)
!1397 = !DILocation(line: 272, column: 10, scope: !1334)
!1398 = !DILocation(line: 273, column: 1, scope: !1334)
!1399 = distinct !DISubprogram(name: "bsd_sum_file", scope: !3, file: !3, line: 88, type: !1345, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1400)
!1400 = !{!1401, !1402, !1403, !1407, !1408, !1412, !1413, !1417}
!1401 = !DILocalVariable(name: "file", arg: 1, scope: !1399, file: !3, line: 88, type: !49)
!1402 = !DILocalVariable(name: "print_name", arg: 2, scope: !1399, file: !3, line: 88, type: !51)
!1403 = !DILocalVariable(name: "fp", scope: !1399, file: !3, line: 90, type: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !58)
!1406 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1407 = !DILocalVariable(name: "checksum", scope: !1399, file: !3, line: 91, type: !51)
!1408 = !DILocalVariable(name: "total_bytes", scope: !1399, file: !3, line: 92, type: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1410, line: 102, baseType: !1411)
!1410 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !81, line: 73, baseType: !108)
!1412 = !DILocalVariable(name: "ch", scope: !1399, file: !3, line: 93, type: !51)
!1413 = !DILocalVariable(name: "hbuf", scope: !1399, file: !3, line: 94, type: !1414)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 5216, elements: !1415)
!1415 = !{!1416}
!1416 = !DISubrange(count: 652)
!1417 = !DILocalVariable(name: "is_stdin", scope: !1399, file: !3, line: 95, type: !195)
!1418 = !DILocation(line: 0, scope: !1399)
!1419 = !DILocation(line: 94, column: 3, scope: !1399)
!1420 = !DILocation(line: 94, column: 8, scope: !1399)
!1421 = !DILocation(line: 95, column: 19, scope: !1399)
!1422 = !DILocation(line: 97, column: 7, scope: !1399)
!1423 = !DILocation(line: 99, column: 12, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 98, column: 5)
!1425 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 97, column: 7)
!1426 = !DILocation(line: 100, column: 23, scope: !1424)
!1427 = !DILocation(line: 102, column: 5, scope: !1424)
!1428 = !DILocation(line: 105, column: 12, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 104, column: 5)
!1430 = !DILocation(line: 106, column: 14, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 106, column: 11)
!1432 = !DILocation(line: 106, column: 11, scope: !1429)
!1433 = !DILocation(line: 108, column: 21, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 107, column: 9)
!1435 = !DILocation(line: 108, column: 34, scope: !1434)
!1436 = !DILocation(line: 108, column: 11, scope: !1434)
!1437 = !DILocation(line: 109, column: 11, scope: !1434)
!1438 = !DILocation(line: 0, scope: !1425)
!1439 = !DILocation(line: 113, column: 3, scope: !1399)
!1440 = !DILocation(line: 0, scope: !1441, inlinedAt: !1447)
!1441 = distinct !DISubprogram(name: "getc_unlocked", scope: !1442, file: !1442, line: 66, type: !1443, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1445)
!1442 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!51, !1404}
!1445 = !{!1446}
!1446 = !DILocalVariable(name: "__fp", arg: 1, scope: !1441, file: !1442, line: 66, type: !1404)
!1447 = distinct !DILocation(line: 115, column: 16, scope: !1399)
!1448 = !DILocation(line: 115, column: 3, scope: !1399)
!1449 = !DILocation(line: 68, column: 10, scope: !1441, inlinedAt: !1447)
!1450 = !{!1451, !1292, i64 8}
!1451 = !{!"_IO_FILE", !1369, i64 0, !1292, i64 8, !1292, i64 16, !1292, i64 24, !1292, i64 32, !1292, i64 40, !1292, i64 48, !1292, i64 56, !1292, i64 64, !1292, i64 72, !1292, i64 80, !1292, i64 88, !1292, i64 96, !1292, i64 104, !1369, i64 112, !1369, i64 116, !1452, i64 120, !1453, i64 128, !1293, i64 130, !1293, i64 131, !1292, i64 136, !1452, i64 144, !1292, i64 152, !1292, i64 160, !1292, i64 168, !1292, i64 176, !1452, i64 184, !1369, i64 192, !1293, i64 196}
!1452 = !{!"long", !1293, i64 0}
!1453 = !{!"short", !1293, i64 0}
!1454 = !{!1451, !1292, i64 16}
!1455 = !{!"branch_weights", i32 2000, i32 1}
!1456 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1457 = !{!1293, !1293, i64 0}
!1458 = !DILocation(line: 115, column: 27, scope: !1399)
!1459 = !DILocation(line: 117, column: 18, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 116, column: 5)
!1461 = !DILocation(line: 118, column: 28, scope: !1460)
!1462 = !DILocation(line: 118, column: 52, scope: !1460)
!1463 = !DILocation(line: 118, column: 34, scope: !1460)
!1464 = !DILocation(line: 119, column: 16, scope: !1460)
!1465 = !DILocation(line: 120, column: 16, scope: !1460)
!1466 = distinct !{!1466, !1448, !1467}
!1467 = !DILocation(line: 121, column: 5, scope: !1399)
!1468 = !DILocalVariable(name: "__stream", arg: 1, scope: !1469, file: !1442, line: 135, type: !1404)
!1469 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1442, file: !1442, line: 135, type: !1443, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1470)
!1470 = !{!1468}
!1471 = !DILocation(line: 0, scope: !1469, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 123, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 123, column: 7)
!1474 = !DILocation(line: 137, column: 10, scope: !1469, inlinedAt: !1472)
!1475 = !{!1451, !1369, i64 0}
!1476 = !DILocation(line: 123, column: 7, scope: !1473)
!1477 = !DILocation(line: 123, column: 7, scope: !1399)
!1478 = !DILocation(line: 125, column: 17, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 124, column: 5)
!1480 = !DILocation(line: 125, column: 30, scope: !1479)
!1481 = !DILocation(line: 125, column: 7, scope: !1479)
!1482 = !DILocation(line: 126, column: 11, scope: !1479)
!1483 = !DILocation(line: 127, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 126, column: 11)
!1485 = !DILocation(line: 131, column: 17, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 131, column: 7)
!1487 = !DILocation(line: 131, column: 20, scope: !1486)
!1488 = !DILocation(line: 131, column: 32, scope: !1486)
!1489 = !DILocation(line: 131, column: 7, scope: !1399)
!1490 = !DILocation(line: 133, column: 17, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 132, column: 5)
!1492 = !DILocation(line: 133, column: 30, scope: !1491)
!1493 = !DILocation(line: 133, column: 7, scope: !1491)
!1494 = !DILocation(line: 134, column: 7, scope: !1491)
!1495 = !DILocation(line: 137, column: 3, scope: !1399)
!1496 = !DILocation(line: 139, column: 18, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 139, column: 7)
!1498 = !DILocation(line: 139, column: 7, scope: !1399)
!1499 = !DILocation(line: 140, column: 5, scope: !1497)
!1500 = !DILocalVariable(name: "__c", arg: 1, scope: !1501, file: !1442, line: 108, type: !51)
!1501 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1442, file: !1442, line: 108, type: !186, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1502)
!1502 = !{!1500}
!1503 = !DILocation(line: 0, scope: !1501, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 141, column: 3, scope: !1399)
!1505 = !DILocation(line: 110, column: 10, scope: !1501, inlinedAt: !1504)
!1506 = !{!1451, !1292, i64 40}
!1507 = !{!1451, !1292, i64 48}
!1508 = !DILocation(line: 144, column: 1, scope: !1399)
!1509 = distinct !DISubprogram(name: "sysv_sum_file", scope: !3, file: !3, line: 152, type: !1345, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1526}
!1511 = !DILocalVariable(name: "file", arg: 1, scope: !1509, file: !3, line: 152, type: !49)
!1512 = !DILocalVariable(name: "print_name", arg: 2, scope: !1509, file: !3, line: 152, type: !51)
!1513 = !DILocalVariable(name: "fd", scope: !1509, file: !3, line: 154, type: !51)
!1514 = !DILocalVariable(name: "buf", scope: !1509, file: !3, line: 155, type: !1515)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 65536, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: 8192)
!1518 = !DILocalVariable(name: "total_bytes", scope: !1509, file: !3, line: 156, type: !1409)
!1519 = !DILocalVariable(name: "hbuf", scope: !1509, file: !3, line: 157, type: !1414)
!1520 = !DILocalVariable(name: "r", scope: !1509, file: !3, line: 158, type: !51)
!1521 = !DILocalVariable(name: "checksum", scope: !1509, file: !3, line: 159, type: !51)
!1522 = !DILocalVariable(name: "s", scope: !1509, file: !3, line: 162, type: !7)
!1523 = !DILocalVariable(name: "is_stdin", scope: !1509, file: !3, line: 164, type: !195)
!1524 = !DILocalVariable(name: "bytes_read", scope: !1525, file: !3, line: 184, type: !106)
!1525 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 183, column: 5)
!1526 = !DILocalVariable(name: "i", scope: !1527, file: !3, line: 197, type: !106)
!1527 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 197, column: 7)
!1528 = !DILocation(line: 0, scope: !1509)
!1529 = !DILocation(line: 155, column: 3, scope: !1509)
!1530 = !DILocation(line: 155, column: 17, scope: !1509)
!1531 = !DILocation(line: 157, column: 3, scope: !1509)
!1532 = !DILocation(line: 157, column: 8, scope: !1509)
!1533 = !DILocation(line: 164, column: 19, scope: !1509)
!1534 = !DILocation(line: 166, column: 7, scope: !1509)
!1535 = !DILocation(line: 169, column: 23, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 167, column: 5)
!1537 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 166, column: 7)
!1538 = !DILocation(line: 171, column: 5, scope: !1536)
!1539 = !DILocation(line: 174, column: 12, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 173, column: 5)
!1541 = !DILocation(line: 175, column: 14, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 175, column: 11)
!1543 = !DILocation(line: 175, column: 11, scope: !1540)
!1544 = !DILocation(line: 177, column: 21, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 176, column: 9)
!1546 = !DILocation(line: 177, column: 34, scope: !1545)
!1547 = !DILocation(line: 177, column: 11, scope: !1545)
!1548 = !DILocation(line: 178, column: 11, scope: !1545)
!1549 = !DILocation(line: 0, scope: !1537)
!1550 = !DILocation(line: 182, column: 3, scope: !1509)
!1551 = !DILocation(line: 156, column: 13, scope: !1509)
!1552 = !DILocation(line: 162, column: 16, scope: !1509)
!1553 = !DILocation(line: 184, column: 27, scope: !1525)
!1554 = !DILocation(line: 0, scope: !1525)
!1555 = !DILocation(line: 186, column: 11, scope: !1525)
!1556 = !DILocation(line: 197, column: 7, scope: !1527)
!1557 = !DILocation(line: 197, column: 43, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 197, column: 7)
!1559 = !DILocation(line: 198, column: 14, scope: !1558)
!1560 = !DILocation(line: 198, column: 11, scope: !1558)
!1561 = distinct !{!1561, !1556, !1562, !1563}
!1562 = !DILocation(line: 198, column: 19, scope: !1527)
!1563 = !{!"llvm.loop.isvectorized", i32 1}
!1564 = !DILocation(line: 191, column: 21, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 190, column: 9)
!1566 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 189, column: 11)
!1567 = !DILocation(line: 191, column: 34, scope: !1565)
!1568 = !DILocation(line: 191, column: 11, scope: !1565)
!1569 = !DILocation(line: 192, column: 15, scope: !1565)
!1570 = !DILocation(line: 193, column: 13, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 192, column: 15)
!1572 = !DILocation(line: 0, scope: !1527)
!1573 = !DILocation(line: 197, column: 28, scope: !1558)
!1574 = distinct !{!1574, !1556, !1562, !1575, !1563}
!1575 = !{!"llvm.loop.unroll.runtime.disable"}
!1576 = !DILocation(line: 199, column: 19, scope: !1525)
!1577 = !DILocation(line: 202, column: 17, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 202, column: 7)
!1579 = !DILocation(line: 202, column: 20, scope: !1578)
!1580 = !DILocation(line: 202, column: 31, scope: !1578)
!1581 = !DILocation(line: 202, column: 7, scope: !1509)
!1582 = !DILocation(line: 204, column: 17, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 203, column: 5)
!1584 = !DILocation(line: 204, column: 30, scope: !1583)
!1585 = !DILocation(line: 204, column: 7, scope: !1583)
!1586 = !DILocation(line: 205, column: 7, scope: !1583)
!1587 = !DILocation(line: 208, column: 10, scope: !1509)
!1588 = !DILocation(line: 208, column: 40, scope: !1509)
!1589 = !DILocation(line: 208, column: 20, scope: !1509)
!1590 = !DILocation(line: 209, column: 17, scope: !1509)
!1591 = !DILocation(line: 209, column: 32, scope: !1509)
!1592 = !DILocation(line: 209, column: 27, scope: !1509)
!1593 = !DILocation(line: 211, column: 3, scope: !1509)
!1594 = !DILocation(line: 213, column: 7, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 213, column: 7)
!1596 = !DILocation(line: 213, column: 7, scope: !1509)
!1597 = !DILocation(line: 214, column: 5, scope: !1595)
!1598 = !DILocation(line: 0, scope: !1501, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 215, column: 3, scope: !1509)
!1600 = !DILocation(line: 110, column: 10, scope: !1501, inlinedAt: !1599)
!1601 = !DILocation(line: 218, column: 1, scope: !1509)
!1602 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !204, file: !204, line: 51, type: !116, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1603)
!1603 = !{!1604}
!1604 = !DILocalVariable(name: "file", arg: 1, scope: !1602, file: !204, line: 51, type: !49)
!1605 = !DILocation(line: 0, scope: !1602)
!1606 = !DILocation(line: 53, column: 13, scope: !1602)
!1607 = !DILocation(line: 54, column: 1, scope: !1602)
!1608 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !204, file: !204, line: 88, type: !1609, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !195}
!1611 = !{!1612}
!1612 = !DILocalVariable(name: "ignore", arg: 1, scope: !1608, file: !204, line: 88, type: !195)
!1613 = !DILocation(line: 0, scope: !1608)
!1614 = !DILocation(line: 90, column: 16, scope: !1608)
!1615 = !{!1616, !1616, i64 0}
!1616 = !{!"_Bool", !1293, i64 0}
!1617 = !DILocation(line: 91, column: 1, scope: !1608)
!1618 = distinct !DISubprogram(name: "close_stdout", scope: !204, file: !204, line: 117, type: !133, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1619)
!1619 = !{!1620}
!1620 = !DILocalVariable(name: "write_error", scope: !1621, file: !204, line: 122, type: !49)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !204, line: 121, column: 5)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !204, line: 119, column: 7)
!1623 = !DILocation(line: 119, column: 21, scope: !1622)
!1624 = !DILocation(line: 119, column: 7, scope: !1622)
!1625 = !DILocation(line: 119, column: 29, scope: !1622)
!1626 = !DILocation(line: 120, column: 7, scope: !1622)
!1627 = !DILocation(line: 120, column: 12, scope: !1622)
!1628 = !{i8 0, i8 2}
!1629 = !DILocation(line: 120, column: 25, scope: !1622)
!1630 = !DILocation(line: 120, column: 28, scope: !1622)
!1631 = !DILocation(line: 120, column: 34, scope: !1622)
!1632 = !DILocation(line: 119, column: 7, scope: !1618)
!1633 = !DILocation(line: 122, column: 33, scope: !1621)
!1634 = !DILocation(line: 0, scope: !1621)
!1635 = !DILocation(line: 123, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1621, file: !204, line: 123, column: 11)
!1637 = !DILocation(line: 0, scope: !1636)
!1638 = !DILocation(line: 123, column: 11, scope: !1621)
!1639 = !DILocation(line: 124, column: 36, scope: !1636)
!1640 = !DILocation(line: 124, column: 9, scope: !1636)
!1641 = !DILocation(line: 127, column: 9, scope: !1636)
!1642 = !DILocation(line: 129, column: 14, scope: !1621)
!1643 = !DILocation(line: 129, column: 7, scope: !1621)
!1644 = !DILocation(line: 134, column: 42, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1618, file: !204, line: 134, column: 7)
!1646 = !DILocation(line: 134, column: 28, scope: !1645)
!1647 = !DILocation(line: 134, column: 50, scope: !1645)
!1648 = !DILocation(line: 134, column: 7, scope: !1618)
!1649 = !DILocation(line: 135, column: 12, scope: !1645)
!1650 = !DILocation(line: 135, column: 5, scope: !1645)
!1651 = !DILocation(line: 136, column: 1, scope: !1618)
!1652 = distinct !DISubprogram(name: "fdadvise", scope: !550, file: !550, line: 31, type: !1653, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !1657)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !51, !1655, !1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !54, line: 63, baseType: !80)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1657 = !{!1658, !1659, !1660, !1661, !1662}
!1658 = !DILocalVariable(name: "fd", arg: 1, scope: !1652, file: !550, line: 31, type: !51)
!1659 = !DILocalVariable(name: "offset", arg: 2, scope: !1652, file: !550, line: 31, type: !1655)
!1660 = !DILocalVariable(name: "len", arg: 3, scope: !1652, file: !550, line: 31, type: !1655)
!1661 = !DILocalVariable(name: "advice", arg: 4, scope: !1652, file: !550, line: 31, type: !1656)
!1662 = !DILocalVariable(name: "__x", scope: !1663, file: !550, line: 34, type: !51)
!1663 = distinct !DILexicalBlock(scope: !1652, file: !550, line: 34, column: 3)
!1664 = !DILocation(line: 0, scope: !1652)
!1665 = !DILocation(line: 34, column: 3, scope: !1663)
!1666 = !DILocation(line: 0, scope: !1663)
!1667 = !DILocation(line: 36, column: 1, scope: !1652)
!1668 = distinct !DISubprogram(name: "fadvise", scope: !550, file: !550, line: 39, type: !1669, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !1673)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1671, !1656}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !560)
!1673 = !{!1674, !1675}
!1674 = !DILocalVariable(name: "fp", arg: 1, scope: !1668, file: !550, line: 39, type: !1671)
!1675 = !DILocalVariable(name: "advice", arg: 2, scope: !1668, file: !550, line: 39, type: !1656)
!1676 = !DILocation(line: 0, scope: !1668)
!1677 = !DILocation(line: 41, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1668, file: !550, line: 41, column: 7)
!1679 = !DILocation(line: 41, column: 7, scope: !1668)
!1680 = !DILocation(line: 42, column: 15, scope: !1678)
!1681 = !DILocation(line: 0, scope: !1652, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 42, column: 5, scope: !1678)
!1683 = !DILocation(line: 34, column: 3, scope: !1663, inlinedAt: !1682)
!1684 = !DILocation(line: 0, scope: !1663, inlinedAt: !1682)
!1685 = !DILocation(line: 42, column: 5, scope: !1678)
!1686 = !DILocation(line: 43, column: 1, scope: !1668)
!1687 = distinct !DISubprogram(name: "human_readable", scope: !255, file: !255, line: 153, type: !1688, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!47, !1409, !47, !51, !1409, !1409}
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1713, !1714, !1719, !1722, !1723, !1724, !1727, !1728, !1729, !1730, !1733, !1740, !1741, !1743, !1748, !1749}
!1691 = !DILocalVariable(name: "n", arg: 1, scope: !1687, file: !255, line: 153, type: !1409)
!1692 = !DILocalVariable(name: "buf", arg: 2, scope: !1687, file: !255, line: 153, type: !47)
!1693 = !DILocalVariable(name: "opts", arg: 3, scope: !1687, file: !255, line: 153, type: !51)
!1694 = !DILocalVariable(name: "from_block_size", arg: 4, scope: !1687, file: !255, line: 154, type: !1409)
!1695 = !DILocalVariable(name: "to_block_size", arg: 5, scope: !1687, file: !255, line: 154, type: !1409)
!1696 = !DILocalVariable(name: "inexact_style", scope: !1687, file: !255, line: 156, type: !51)
!1697 = !DILocalVariable(name: "base", scope: !1687, file: !255, line: 158, type: !7)
!1698 = !DILocalVariable(name: "amt", scope: !1687, file: !255, line: 159, type: !1409)
!1699 = !DILocalVariable(name: "tenths", scope: !1687, file: !255, line: 160, type: !51)
!1700 = !DILocalVariable(name: "exponent", scope: !1687, file: !255, line: 161, type: !51)
!1701 = !DILocalVariable(name: "exponent_max", scope: !1687, file: !255, line: 162, type: !51)
!1702 = !DILocalVariable(name: "p", scope: !1687, file: !255, line: 163, type: !47)
!1703 = !DILocalVariable(name: "psuffix", scope: !1687, file: !255, line: 164, type: !47)
!1704 = !DILocalVariable(name: "integerlim", scope: !1687, file: !255, line: 165, type: !49)
!1705 = !DILocalVariable(name: "rounding", scope: !1687, file: !255, line: 171, type: !51)
!1706 = !DILocalVariable(name: "decimal_point", scope: !1687, file: !255, line: 173, type: !49)
!1707 = !DILocalVariable(name: "decimal_pointlen", scope: !1687, file: !255, line: 174, type: !106)
!1708 = !DILocalVariable(name: "grouping", scope: !1687, file: !255, line: 175, type: !49)
!1709 = !DILocalVariable(name: "thousands_sep", scope: !1687, file: !255, line: 176, type: !49)
!1710 = !DILocalVariable(name: "l", scope: !1687, file: !255, line: 177, type: !1711)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!1713 = !DILocalVariable(name: "pointlen", scope: !1687, file: !255, line: 178, type: !106)
!1714 = !DILocalVariable(name: "multiplier", scope: !1715, file: !255, line: 199, type: !1409)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !255, line: 198, column: 9)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !255, line: 197, column: 11)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !255, line: 196, column: 5)
!1718 = distinct !DILexicalBlock(scope: !1687, file: !255, line: 195, column: 7)
!1719 = !DILocalVariable(name: "divisor", scope: !1720, file: !255, line: 211, type: !1409)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !255, line: 210, column: 5)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !255, line: 209, column: 12)
!1722 = !DILocalVariable(name: "r10", scope: !1720, file: !255, line: 212, type: !1409)
!1723 = !DILocalVariable(name: "r2", scope: !1720, file: !255, line: 213, type: !1409)
!1724 = !DILocalVariable(name: "dto_block_size", scope: !1725, file: !255, line: 225, type: !1726)
!1725 = distinct !DILexicalBlock(scope: !1687, file: !255, line: 220, column: 3)
!1726 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1727 = !DILocalVariable(name: "damt", scope: !1725, file: !255, line: 226, type: !1726)
!1728 = !DILocalVariable(name: "buflen", scope: !1725, file: !255, line: 227, type: !106)
!1729 = !DILocalVariable(name: "nonintegerlen", scope: !1725, file: !255, line: 228, type: !106)
!1730 = !DILocalVariable(name: "e", scope: !1731, file: !255, line: 238, type: !1726)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !255, line: 237, column: 7)
!1732 = distinct !DILexicalBlock(scope: !1725, file: !255, line: 230, column: 9)
!1733 = !DILocalVariable(name: "r10", scope: !1734, file: !255, line: 286, type: !7)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !255, line: 285, column: 15)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !255, line: 283, column: 11)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !255, line: 282, column: 13)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !255, line: 279, column: 7)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !255, line: 278, column: 9)
!1739 = distinct !DILexicalBlock(scope: !1687, file: !255, line: 272, column: 3)
!1740 = !DILocalVariable(name: "r2", scope: !1734, file: !255, line: 287, type: !7)
!1741 = !DILocalVariable(name: "digit", scope: !1742, file: !255, line: 349, type: !51)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !255, line: 348, column: 7)
!1743 = !DILocalVariable(name: "power", scope: !1744, file: !255, line: 363, type: !1409)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !255, line: 362, column: 9)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !255, line: 361, column: 11)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !255, line: 360, column: 5)
!1747 = distinct !DILexicalBlock(scope: !1687, file: !255, line: 359, column: 7)
!1748 = !DILabel(scope: !1687, name: "use_integer_arithmetic", file: !255, line: 271)
!1749 = !DILabel(scope: !1687, name: "do_grouping", file: !255, line: 355)
!1750 = !DILocalVariable(name: "buf", scope: !1751, file: !255, line: 89, type: !1767)
!1751 = distinct !DISubprogram(name: "group_number", scope: !255, file: !255, line: 79, type: !1752, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!47, !47, !106, !49, !49}
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1750, !1763}
!1755 = !DILocalVariable(name: "number", arg: 1, scope: !1751, file: !255, line: 79, type: !47)
!1756 = !DILocalVariable(name: "numberlen", arg: 2, scope: !1751, file: !255, line: 79, type: !106)
!1757 = !DILocalVariable(name: "grouping", arg: 3, scope: !1751, file: !255, line: 80, type: !49)
!1758 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !1751, file: !255, line: 80, type: !49)
!1759 = !DILocalVariable(name: "d", scope: !1751, file: !255, line: 82, type: !47)
!1760 = !DILocalVariable(name: "grouplen", scope: !1751, file: !255, line: 83, type: !106)
!1761 = !DILocalVariable(name: "thousands_seplen", scope: !1751, file: !255, line: 84, type: !106)
!1762 = !DILocalVariable(name: "i", scope: !1751, file: !255, line: 85, type: !106)
!1763 = !DILocalVariable(name: "g", scope: !1764, file: !255, line: 96, type: !175)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !255, line: 95, column: 5)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !255, line: 94, column: 3)
!1766 = distinct !DILexicalBlock(scope: !1751, file: !255, line: 94, column: 3)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 328, elements: !1768)
!1768 = !{!1769}
!1769 = !DISubrange(count: 41)
!1770 = !DILocation(line: 89, column: 8, scope: !1751, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 357, column: 9, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1687, file: !255, line: 356, column: 7)
!1773 = !DILocation(line: 0, scope: !1687)
!1774 = !DILocation(line: 157, column: 10, scope: !1687)
!1775 = !DILocation(line: 158, column: 28, scope: !1687)
!1776 = !DILocation(line: 158, column: 23, scope: !1687)
!1777 = !DILocation(line: 177, column: 27, scope: !1687)
!1778 = !DILocation(line: 178, column: 32, scope: !1687)
!1779 = !{!1780, !1292, i64 0}
!1780 = !{!"lconv", !1292, i64 0, !1292, i64 8, !1292, i64 16, !1292, i64 24, !1292, i64 32, !1292, i64 40, !1292, i64 48, !1292, i64 56, !1292, i64 64, !1292, i64 72, !1293, i64 80, !1293, i64 81, !1293, i64 82, !1293, i64 83, !1293, i64 84, !1293, i64 85, !1293, i64 86, !1293, i64 87, !1293, i64 88, !1293, i64 89, !1293, i64 90, !1293, i64 91, !1293, i64 92, !1293, i64 93}
!1781 = !DILocation(line: 178, column: 21, scope: !1687)
!1782 = !DILocation(line: 179, column: 20, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1687, file: !255, line: 179, column: 7)
!1784 = !DILocation(line: 184, column: 17, scope: !1687)
!1785 = !{!1780, !1292, i64 16}
!1786 = !DILocation(line: 185, column: 18, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1687, file: !255, line: 185, column: 7)
!1788 = !{!1780, !1292, i64 8}
!1789 = !DILocation(line: 185, column: 7, scope: !1787)
!1790 = !DILocation(line: 185, column: 33, scope: !1787)
!1791 = !DILocation(line: 185, column: 7, scope: !1687)
!1792 = !DILocation(line: 189, column: 46, scope: !1687)
!1793 = !DILocation(line: 195, column: 21, scope: !1718)
!1794 = !DILocation(line: 195, column: 7, scope: !1687)
!1795 = !DILocation(line: 197, column: 27, scope: !1716)
!1796 = !DILocation(line: 199, column: 50, scope: !1715)
!1797 = !DILocation(line: 197, column: 43, scope: !1716)
!1798 = !DILocation(line: 197, column: 11, scope: !1717)
!1799 = !DILocation(line: 0, scope: !1715)
!1800 = !DILocation(line: 200, column: 19, scope: !1715)
!1801 = !DILocation(line: 209, column: 28, scope: !1721)
!1802 = !DILocation(line: 209, column: 33, scope: !1721)
!1803 = !DILocation(line: 209, column: 50, scope: !1721)
!1804 = !DILocation(line: 211, column: 41, scope: !1720)
!1805 = !DILocation(line: 209, column: 68, scope: !1721)
!1806 = !DILocation(line: 209, column: 12, scope: !1718)
!1807 = !DILocation(line: 0, scope: !1720)
!1808 = !DILocation(line: 212, column: 26, scope: !1720)
!1809 = !DILocation(line: 212, column: 37, scope: !1720)
!1810 = !DILocation(line: 213, column: 27, scope: !1720)
!1811 = !DILocation(line: 213, column: 38, scope: !1720)
!1812 = !DILocation(line: 214, column: 15, scope: !1720)
!1813 = !DILocation(line: 215, column: 20, scope: !1720)
!1814 = !DILocation(line: 215, column: 16, scope: !1720)
!1815 = !DILocation(line: 216, column: 21, scope: !1720)
!1816 = !DILocation(line: 216, column: 18, scope: !1720)
!1817 = !DILocation(line: 225, column: 34, scope: !1725)
!1818 = !DILocation(line: 0, scope: !1725)
!1819 = !DILocation(line: 226, column: 24, scope: !1725)
!1820 = !DILocation(line: 226, column: 29, scope: !1725)
!1821 = !DILocation(line: 226, column: 45, scope: !1725)
!1822 = !DILocation(line: 226, column: 26, scope: !1725)
!1823 = !DILocation(line: 230, column: 17, scope: !1732)
!1824 = !DILocation(line: 230, column: 9, scope: !1725)
!1825 = !DILocation(line: 0, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1731, file: !255, line: 242, column: 11)
!1827 = !DILocation(line: 0, scope: !1731)
!1828 = !DILocation(line: 246, column: 18, scope: !1731)
!1829 = !DILocation(line: 246, column: 25, scope: !1731)
!1830 = !DILocation(line: 245, column: 11, scope: !1826)
!1831 = distinct !{!1831, !1832, !1833}
!1832 = !DILocation(line: 241, column: 9, scope: !1731)
!1833 = !DILocation(line: 246, column: 59, scope: !1731)
!1834 = !DILocalVariable(name: "inexact_style", arg: 1, scope: !1835, file: !255, line: 54, type: !51)
!1835 = distinct !DISubprogram(name: "adjust_value", scope: !255, file: !255, line: 54, type: !1836, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!1726, !51, !1726}
!1838 = !{!1834, !1839, !1840}
!1839 = !DILocalVariable(name: "value", arg: 2, scope: !1835, file: !255, line: 54, type: !1726)
!1840 = !DILocalVariable(name: "u", scope: !1841, file: !255, line: 62, type: !1409)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !255, line: 61, column: 5)
!1842 = distinct !DILexicalBlock(scope: !1835, file: !255, line: 60, column: 7)
!1843 = !DILocation(line: 0, scope: !1835, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 232, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1732, file: !255, line: 231, column: 7)
!1846 = !DILocation(line: 60, column: 21, scope: !1842, inlinedAt: !1844)
!1847 = !DILocation(line: 60, column: 56, scope: !1842, inlinedAt: !1844)
!1848 = !DILocation(line: 60, column: 47, scope: !1842, inlinedAt: !1844)
!1849 = !DILocation(line: 62, column: 21, scope: !1841, inlinedAt: !1844)
!1850 = !DILocation(line: 0, scope: !1841, inlinedAt: !1844)
!1851 = !DILocation(line: 63, column: 34, scope: !1841, inlinedAt: !1844)
!1852 = !DILocation(line: 63, column: 51, scope: !1841, inlinedAt: !1844)
!1853 = !DILocation(line: 63, column: 19, scope: !1841, inlinedAt: !1844)
!1854 = !DILocation(line: 63, column: 17, scope: !1841, inlinedAt: !1844)
!1855 = !DILocation(line: 63, column: 15, scope: !1841, inlinedAt: !1844)
!1856 = !DILocation(line: 64, column: 5, scope: !1841, inlinedAt: !1844)
!1857 = !DILocation(line: 232, column: 9, scope: !1845)
!1858 = !DILocation(line: 233, column: 18, scope: !1845)
!1859 = !DILocation(line: 235, column: 7, scope: !1845)
!1860 = !DILocation(line: 243, column: 15, scope: !1826)
!1861 = !DILocation(line: 244, column: 21, scope: !1826)
!1862 = !DILocation(line: 248, column: 14, scope: !1731)
!1863 = !DILocation(line: 0, scope: !1835, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 250, column: 9, scope: !1731)
!1865 = !DILocation(line: 60, column: 21, scope: !1842, inlinedAt: !1864)
!1866 = !DILocation(line: 60, column: 56, scope: !1842, inlinedAt: !1864)
!1867 = !DILocation(line: 60, column: 47, scope: !1842, inlinedAt: !1864)
!1868 = !DILocation(line: 62, column: 21, scope: !1841, inlinedAt: !1864)
!1869 = !DILocation(line: 0, scope: !1841, inlinedAt: !1864)
!1870 = !DILocation(line: 63, column: 34, scope: !1841, inlinedAt: !1864)
!1871 = !DILocation(line: 63, column: 51, scope: !1841, inlinedAt: !1864)
!1872 = !DILocation(line: 63, column: 19, scope: !1841, inlinedAt: !1864)
!1873 = !DILocation(line: 63, column: 17, scope: !1841, inlinedAt: !1864)
!1874 = !DILocation(line: 63, column: 15, scope: !1841, inlinedAt: !1864)
!1875 = !DILocation(line: 64, column: 5, scope: !1841, inlinedAt: !1864)
!1876 = !DILocation(line: 250, column: 9, scope: !1731)
!1877 = !DILocation(line: 251, column: 18, scope: !1731)
!1878 = !DILocation(line: 252, column: 42, scope: !1731)
!1879 = !DILocation(line: 254, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1731, file: !255, line: 254, column: 13)
!1881 = !DILocation(line: 254, column: 31, scope: !1880)
!1882 = !DILocation(line: 254, column: 60, scope: !1880)
!1883 = !DILocation(line: 255, column: 13, scope: !1880)
!1884 = !DILocation(line: 255, column: 23, scope: !1880)
!1885 = !DILocation(line: 256, column: 17, scope: !1880)
!1886 = !DILocation(line: 256, column: 31, scope: !1880)
!1887 = !DILocation(line: 256, column: 20, scope: !1880)
!1888 = !DILocation(line: 256, column: 36, scope: !1880)
!1889 = !DILocation(line: 254, column: 13, scope: !1731)
!1890 = !DILocation(line: 258, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1880, file: !255, line: 257, column: 11)
!1892 = !DILocation(line: 0, scope: !1835, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 258, column: 13, scope: !1891)
!1894 = !DILocation(line: 60, column: 56, scope: !1842, inlinedAt: !1893)
!1895 = !DILocation(line: 60, column: 47, scope: !1842, inlinedAt: !1893)
!1896 = !DILocation(line: 62, column: 21, scope: !1841, inlinedAt: !1893)
!1897 = !DILocation(line: 0, scope: !1841, inlinedAt: !1893)
!1898 = !DILocation(line: 63, column: 34, scope: !1841, inlinedAt: !1893)
!1899 = !DILocation(line: 63, column: 51, scope: !1841, inlinedAt: !1893)
!1900 = !DILocation(line: 63, column: 19, scope: !1841, inlinedAt: !1893)
!1901 = !DILocation(line: 63, column: 17, scope: !1841, inlinedAt: !1893)
!1902 = !DILocation(line: 63, column: 15, scope: !1841, inlinedAt: !1893)
!1903 = !DILocation(line: 64, column: 5, scope: !1841, inlinedAt: !1893)
!1904 = !DILocation(line: 260, column: 22, scope: !1891)
!1905 = !DILocation(line: 262, column: 11, scope: !1891)
!1906 = !DILocation(line: 0, scope: !1732)
!1907 = !DILocation(line: 265, column: 17, scope: !1725)
!1908 = !DILocalVariable(name: "__dest", arg: 1, scope: !1909, file: !1910, line: 38, type: !104)
!1909 = distinct !DISubprogram(name: "memmove", scope: !1910, file: !1910, line: 38, type: !1911, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1913)
!1910 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!104, !104, !297, !106}
!1913 = !{!1908, !1914, !1915}
!1914 = !DILocalVariable(name: "__src", arg: 2, scope: !1909, file: !1910, line: 38, type: !297)
!1915 = !DILocalVariable(name: "__len", arg: 3, scope: !1909, file: !1910, line: 38, type: !106)
!1916 = !DILocation(line: 0, scope: !1909, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 266, column: 5, scope: !1725)
!1918 = !DILocation(line: 40, column: 10, scope: !1909, inlinedAt: !1917)
!1919 = !DILocation(line: 267, column: 20, scope: !1725)
!1920 = !DILocation(line: 267, column: 29, scope: !1725)
!1921 = !DILocation(line: 269, column: 3, scope: !1687)
!1922 = !DILocation(line: 0, scope: !1718)
!1923 = !DILocation(line: 271, column: 2, scope: !1687)
!1924 = !DILocation(line: 278, column: 14, scope: !1738)
!1925 = !DILocation(line: 278, column: 9, scope: !1739)
!1926 = !DILocation(line: 282, column: 13, scope: !1736)
!1927 = !DILocation(line: 282, column: 18, scope: !1736)
!1928 = !DILocation(line: 282, column: 13, scope: !1737)
!1929 = !DILocation(line: 0, scope: !1737)
!1930 = !DILocation(line: 286, column: 41, scope: !1734)
!1931 = !DILocation(line: 286, column: 36, scope: !1734)
!1932 = !DILocation(line: 0, scope: !1734)
!1933 = !DILocation(line: 287, column: 40, scope: !1734)
!1934 = !DILocation(line: 287, column: 48, scope: !1734)
!1935 = !DILocation(line: 287, column: 64, scope: !1734)
!1936 = !DILocation(line: 287, column: 52, scope: !1734)
!1937 = !DILocation(line: 288, column: 21, scope: !1734)
!1938 = !DILocation(line: 289, column: 30, scope: !1734)
!1939 = !DILocation(line: 290, column: 32, scope: !1734)
!1940 = !DILocation(line: 290, column: 29, scope: !1734)
!1941 = !DILocation(line: 291, column: 47, scope: !1734)
!1942 = !DILocation(line: 292, column: 46, scope: !1734)
!1943 = !DILocation(line: 292, column: 41, scope: !1734)
!1944 = !DILocation(line: 292, column: 33, scope: !1734)
!1945 = !DILocation(line: 293, column: 25, scope: !1734)
!1946 = !DILocation(line: 295, column: 25, scope: !1735)
!1947 = !DILocation(line: 295, column: 32, scope: !1735)
!1948 = !DILocation(line: 294, column: 15, scope: !1734)
!1949 = distinct !{!1949, !1950, !1951}
!1950 = !DILocation(line: 284, column: 13, scope: !1735)
!1951 = !DILocation(line: 295, column: 58, scope: !1735)
!1952 = !DILocation(line: 297, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1735, file: !255, line: 297, column: 17)
!1954 = !DILocation(line: 297, column: 17, scope: !1735)
!1955 = !DILocation(line: 299, column: 35, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !255, line: 299, column: 21)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !255, line: 298, column: 15)
!1958 = !DILocation(line: 299, column: 21, scope: !1957)
!1959 = !DILocation(line: 300, column: 46, scope: !1956)
!1960 = !DILocation(line: 300, column: 36, scope: !1956)
!1961 = !DILocation(line: 300, column: 25, scope: !1956)
!1962 = !DILocation(line: 299, column: 21, scope: !1956)
!1963 = !DILocation(line: 301, column: 37, scope: !1956)
!1964 = !DILocation(line: 301, column: 59, scope: !1956)
!1965 = !DILocation(line: 301, column: 54, scope: !1956)
!1966 = !DILocation(line: 303, column: 27, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1956, file: !255, line: 302, column: 19)
!1968 = !DILocation(line: 306, column: 32, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1967, file: !255, line: 306, column: 25)
!1970 = !DILocation(line: 308, column: 28, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1969, file: !255, line: 307, column: 23)
!1972 = !DILocation(line: 313, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1957, file: !255, line: 313, column: 21)
!1974 = !DILocation(line: 314, column: 21, scope: !1973)
!1975 = !DILocation(line: 314, column: 25, scope: !1973)
!1976 = !DILocation(line: 314, column: 43, scope: !1973)
!1977 = !DILocation(line: 314, column: 32, scope: !1973)
!1978 = !DILocation(line: 316, column: 28, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !255, line: 315, column: 19)
!1980 = !DILocation(line: 316, column: 22, scope: !1979)
!1981 = !DILocation(line: 316, column: 26, scope: !1979)
!1982 = !DILocation(line: 317, column: 23, scope: !1979)
!1983 = !DILocalVariable(name: "__dest", arg: 1, scope: !1984, file: !1910, line: 31, type: !1987)
!1984 = distinct !DISubprogram(name: "memcpy", scope: !1910, file: !1910, line: 31, type: !1985, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1989)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!104, !1987, !1988, !106}
!1987 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !104)
!1988 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !297)
!1989 = !{!1983, !1990, !1991}
!1990 = !DILocalVariable(name: "__src", arg: 2, scope: !1984, file: !1910, line: 31, type: !1988)
!1991 = !DILocalVariable(name: "__len", arg: 3, scope: !1984, file: !1910, line: 31, type: !106)
!1992 = !DILocation(line: 0, scope: !1984, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 318, column: 21, scope: !1979)
!1994 = !DILocation(line: 34, column: 10, scope: !1984, inlinedAt: !1993)
!1995 = !DILocation(line: 320, column: 19, scope: !1979)
!1996 = !DILocation(line: 325, column: 9, scope: !1739)
!1997 = !DILocation(line: 326, column: 29, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1739, file: !255, line: 325, column: 9)
!1999 = !DILocation(line: 326, column: 45, scope: !1998)
!2000 = !DILocation(line: 326, column: 27, scope: !1998)
!2001 = !DILocation(line: 326, column: 22, scope: !1998)
!2002 = !DILocation(line: 326, column: 13, scope: !1998)
!2003 = !DILocation(line: 325, column: 9, scope: !1998)
!2004 = !DILocation(line: 327, column: 56, scope: !1998)
!2005 = !DILocation(line: 327, column: 47, scope: !1998)
!2006 = !DILocation(line: 329, column: 12, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1998, file: !255, line: 328, column: 7)
!2008 = !DILocation(line: 332, column: 23, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2007, file: !255, line: 331, column: 13)
!2010 = !DILocation(line: 332, column: 20, scope: !2009)
!2011 = !DILocation(line: 332, column: 13, scope: !2009)
!2012 = !DILocation(line: 332, column: 40, scope: !2009)
!2013 = !DILocation(line: 334, column: 21, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !255, line: 333, column: 11)
!2015 = !DILocation(line: 335, column: 25, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2014, file: !255, line: 335, column: 17)
!2017 = !DILocation(line: 335, column: 17, scope: !2014)
!2018 = !DILocation(line: 337, column: 18, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !255, line: 336, column: 15)
!2020 = !DILocation(line: 337, column: 22, scope: !2019)
!2021 = !DILocation(line: 338, column: 19, scope: !2019)
!2022 = !DILocation(line: 0, scope: !1984, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 339, column: 17, scope: !2019)
!2024 = !DILocation(line: 34, column: 10, scope: !1984, inlinedAt: !2023)
!2025 = !DILocation(line: 340, column: 15, scope: !2019)
!2026 = !DILocation(line: 0, scope: !1739)
!2027 = !DILocation(line: 347, column: 5, scope: !1739)
!2028 = !DILocation(line: 349, column: 25, scope: !1742)
!2029 = !DILocation(line: 349, column: 21, scope: !1742)
!2030 = !DILocation(line: 0, scope: !1742)
!2031 = !DILocation(line: 350, column: 22, scope: !1742)
!2032 = !DILocation(line: 350, column: 10, scope: !1742)
!2033 = !DILocation(line: 350, column: 14, scope: !1742)
!2034 = !DILocation(line: 352, column: 17, scope: !1739)
!2035 = !DILocation(line: 352, column: 24, scope: !1739)
!2036 = !DILocation(line: 351, column: 7, scope: !1742)
!2037 = distinct !{!2037, !2027, !2038}
!2038 = !DILocation(line: 352, column: 28, scope: !1739)
!2039 = !DILocation(line: 355, column: 2, scope: !1687)
!2040 = !DILocation(line: 356, column: 12, scope: !1772)
!2041 = !DILocation(line: 356, column: 7, scope: !1687)
!2042 = !DILocation(line: 357, column: 37, scope: !1772)
!2043 = !DILocation(line: 0, scope: !1751, inlinedAt: !1771)
!2044 = !DILocation(line: 84, column: 29, scope: !1751, inlinedAt: !1771)
!2045 = !DILocation(line: 89, column: 3, scope: !1751, inlinedAt: !1771)
!2046 = !DILocation(line: 0, scope: !1984, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 91, column: 3, scope: !1751, inlinedAt: !1771)
!2048 = !DILocation(line: 34, column: 10, scope: !1984, inlinedAt: !2047)
!2049 = !DILocation(line: 96, column: 25, scope: !1764, inlinedAt: !1771)
!2050 = !DILocation(line: 0, scope: !1764, inlinedAt: !1771)
!2051 = !DILocation(line: 98, column: 11, scope: !2052, inlinedAt: !1771)
!2052 = distinct !DILexicalBlock(scope: !1764, file: !255, line: 98, column: 11)
!2053 = !DILocation(line: 98, column: 11, scope: !1764, inlinedAt: !1771)
!2054 = !DILocation(line: 104, column: 13, scope: !2055, inlinedAt: !1771)
!2055 = distinct !DILexicalBlock(scope: !1764, file: !255, line: 104, column: 11)
!2056 = !DILocation(line: 104, column: 11, scope: !1764, inlinedAt: !1771)
!2057 = !DILocation(line: 107, column: 9, scope: !1764, inlinedAt: !1771)
!2058 = !DILocation(line: 108, column: 9, scope: !1764, inlinedAt: !1771)
!2059 = !DILocation(line: 109, column: 22, scope: !1764, inlinedAt: !1771)
!2060 = !DILocation(line: 0, scope: !1984, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 109, column: 7, scope: !1764, inlinedAt: !1771)
!2062 = !DILocation(line: 34, column: 10, scope: !1984, inlinedAt: !2061)
!2063 = !DILocation(line: 110, column: 13, scope: !2064, inlinedAt: !1771)
!2064 = distinct !DILexicalBlock(scope: !1764, file: !255, line: 110, column: 11)
!2065 = !DILocation(line: 110, column: 11, scope: !1764, inlinedAt: !1771)
!2066 = !DILocation(line: 113, column: 9, scope: !1764, inlinedAt: !1771)
!2067 = !DILocation(line: 0, scope: !1984, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 114, column: 7, scope: !1764, inlinedAt: !1771)
!2069 = !DILocation(line: 34, column: 10, scope: !1984, inlinedAt: !2068)
!2070 = !DILocation(line: 116, column: 1, scope: !1751, inlinedAt: !1771)
!2071 = !DILocation(line: 357, column: 5, scope: !1772)
!2072 = !DILocation(line: 359, column: 12, scope: !1747)
!2073 = !DILocation(line: 359, column: 7, scope: !1687)
!2074 = !DILocation(line: 361, column: 20, scope: !1745)
!2075 = !DILocation(line: 361, column: 11, scope: !1746)
!2076 = !DILocation(line: 0, scope: !1744)
!2077 = !DILocation(line: 365, column: 33, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !255, line: 365, column: 11)
!2079 = distinct !DILexicalBlock(scope: !1744, file: !255, line: 365, column: 11)
!2080 = !DILocation(line: 365, column: 11, scope: !2079)
!2081 = !DILocation(line: 0, scope: !2078)
!2082 = distinct !{!2082, !2080, !2083}
!2083 = !DILocation(line: 367, column: 15, scope: !2079)
!2084 = !DILocation(line: 370, column: 29, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1746, file: !255, line: 370, column: 11)
!2086 = !DILocation(line: 370, column: 21, scope: !2085)
!2087 = !DILocation(line: 370, column: 50, scope: !2085)
!2088 = !DILocation(line: 370, column: 41, scope: !2085)
!2089 = !DILocation(line: 371, column: 17, scope: !2085)
!2090 = !DILocation(line: 371, column: 20, scope: !2085)
!2091 = !DILocation(line: 371, column: 9, scope: !2085)
!2092 = !DILocation(line: 373, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1746, file: !255, line: 373, column: 11)
!2094 = !DILocation(line: 373, column: 11, scope: !1746)
!2095 = !DILocation(line: 374, column: 31, scope: !2093)
!2096 = !DILocation(line: 374, column: 62, scope: !2093)
!2097 = !DILocation(line: 374, column: 50, scope: !2093)
!2098 = !DILocation(line: 376, column: 25, scope: !2093)
!2099 = !DILocation(line: 374, column: 23, scope: !2093)
!2100 = !DILocation(line: 374, column: 17, scope: !2093)
!2101 = !DILocation(line: 374, column: 20, scope: !2093)
!2102 = !DILocation(line: 374, column: 9, scope: !2093)
!2103 = !DILocation(line: 0, scope: !1746)
!2104 = !DILocation(line: 378, column: 16, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1746, file: !255, line: 378, column: 11)
!2106 = !DILocation(line: 378, column: 11, scope: !1746)
!2107 = !DILocation(line: 380, column: 40, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !255, line: 380, column: 15)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !255, line: 379, column: 9)
!2110 = !DILocation(line: 381, column: 21, scope: !2108)
!2111 = !DILocation(line: 381, column: 24, scope: !2108)
!2112 = !DILocation(line: 381, column: 13, scope: !2108)
!2113 = !DILocation(line: 382, column: 19, scope: !2109)
!2114 = !DILocation(line: 382, column: 22, scope: !2109)
!2115 = !DILocation(line: 383, column: 9, scope: !2109)
!2116 = !DILocation(line: 386, column: 12, scope: !1687)
!2117 = !DILocation(line: 389, column: 1, scope: !1687)
!2118 = !DILocation(line: 365, column: 56, scope: !2078)
!2119 = distinct !DISubprogram(name: "human_options", scope: !255, file: !255, line: 462, type: !2120, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2123)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!257, !49, !151, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!2123 = !{!2124, !2125, !2126, !2127}
!2124 = !DILocalVariable(name: "spec", arg: 1, scope: !2119, file: !255, line: 462, type: !49)
!2125 = !DILocalVariable(name: "opts", arg: 2, scope: !2119, file: !255, line: 462, type: !151)
!2126 = !DILocalVariable(name: "block_size", arg: 3, scope: !2119, file: !255, line: 462, type: !2122)
!2127 = !DILocalVariable(name: "e", scope: !2119, file: !255, line: 464, type: !2128)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !258, line: 38, baseType: !257)
!2129 = !DILocation(line: 0, scope: !2119)
!2130 = !DILocalVariable(name: "spec", arg: 1, scope: !2131, file: !255, line: 412, type: !49)
!2131 = distinct !DISubprogram(name: "humblock", scope: !255, file: !255, line: 412, type: !2132, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!2128, !49, !2122, !151}
!2134 = !{!2130, !2135, !2136, !2137, !2138, !2139, !2144}
!2135 = !DILocalVariable(name: "block_size", arg: 2, scope: !2131, file: !255, line: 412, type: !2122)
!2136 = !DILocalVariable(name: "options", arg: 3, scope: !2131, file: !255, line: 412, type: !151)
!2137 = !DILocalVariable(name: "i", scope: !2131, file: !255, line: 414, type: !51)
!2138 = !DILocalVariable(name: "opts", scope: !2131, file: !255, line: 415, type: !51)
!2139 = !DILocalVariable(name: "ptr", scope: !2140, file: !255, line: 436, type: !47)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !255, line: 435, column: 9)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !255, line: 429, column: 11)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !255, line: 422, column: 5)
!2143 = distinct !DILexicalBlock(scope: !2131, file: !255, line: 417, column: 7)
!2144 = !DILocalVariable(name: "e", scope: !2140, file: !255, line: 437, type: !2128)
!2145 = !DILocation(line: 0, scope: !2131, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 464, column: 20, scope: !2119)
!2147 = !DILocation(line: 417, column: 9, scope: !2143, inlinedAt: !2146)
!2148 = !DILocation(line: 418, column: 7, scope: !2143, inlinedAt: !2146)
!2149 = !DILocation(line: 418, column: 20, scope: !2143, inlinedAt: !2146)
!2150 = !DILocation(line: 418, column: 18, scope: !2143, inlinedAt: !2146)
!2151 = !DILocation(line: 419, column: 7, scope: !2143, inlinedAt: !2146)
!2152 = !DILocation(line: 419, column: 20, scope: !2143, inlinedAt: !2146)
!2153 = !DILocation(line: 419, column: 18, scope: !2143, inlinedAt: !2146)
!2154 = !DILocation(line: 417, column: 7, scope: !2131, inlinedAt: !2146)
!2155 = !DILocation(line: 408, column: 10, scope: !2156, inlinedAt: !2159)
!2156 = distinct !DISubprogram(name: "default_block_size", scope: !255, file: !255, line: 406, type: !2157, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !52)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!1409}
!2159 = distinct !DILocation(line: 420, column: 19, scope: !2143, inlinedAt: !2146)
!2160 = !DILocation(line: 420, column: 17, scope: !2143, inlinedAt: !2146)
!2161 = !{!1452, !1452, i64 0}
!2162 = !DILocation(line: 420, column: 5, scope: !2143, inlinedAt: !2146)
!2163 = !DILocation(line: 423, column: 11, scope: !2164, inlinedAt: !2146)
!2164 = distinct !DILexicalBlock(scope: !2142, file: !255, line: 423, column: 11)
!2165 = !DILocation(line: 423, column: 17, scope: !2164, inlinedAt: !2146)
!2166 = !DILocation(line: 426, column: 15, scope: !2167, inlinedAt: !2146)
!2167 = distinct !DILexicalBlock(scope: !2164, file: !255, line: 424, column: 9)
!2168 = !DILocation(line: 423, column: 11, scope: !2142, inlinedAt: !2146)
!2169 = !DILocation(line: 429, column: 21, scope: !2141, inlinedAt: !2146)
!2170 = !DILocation(line: 429, column: 13, scope: !2141, inlinedAt: !2146)
!2171 = !DILocation(line: 429, column: 11, scope: !2142, inlinedAt: !2146)
!2172 = !DILocation(line: 431, column: 19, scope: !2173, inlinedAt: !2146)
!2173 = distinct !DILexicalBlock(scope: !2141, file: !255, line: 430, column: 9)
!2174 = !DILocation(line: 431, column: 16, scope: !2173, inlinedAt: !2146)
!2175 = !DILocation(line: 432, column: 23, scope: !2173, inlinedAt: !2146)
!2176 = !DILocation(line: 433, column: 9, scope: !2173, inlinedAt: !2146)
!2177 = !DILocation(line: 436, column: 11, scope: !2140, inlinedAt: !2146)
!2178 = !DILocation(line: 0, scope: !2140, inlinedAt: !2146)
!2179 = !DILocation(line: 437, column: 28, scope: !2140, inlinedAt: !2146)
!2180 = !DILocation(line: 439, column: 17, scope: !2181, inlinedAt: !2146)
!2181 = distinct !DILexicalBlock(scope: !2140, file: !255, line: 439, column: 15)
!2182 = !DILocation(line: 439, column: 15, scope: !2140, inlinedAt: !2146)
!2183 = !DILocation(line: 444, column: 28, scope: !2184, inlinedAt: !2146)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !255, line: 444, column: 11)
!2185 = distinct !DILexicalBlock(scope: !2140, file: !255, line: 444, column: 11)
!2186 = !DILocation(line: 444, column: 34, scope: !2184, inlinedAt: !2146)
!2187 = !DILocation(line: 444, column: 11, scope: !2185, inlinedAt: !2146)
!2188 = !DILocation(line: 0, scope: !2189, inlinedAt: !2146)
!2189 = distinct !DILexicalBlock(scope: !2184, file: !255, line: 445, column: 17)
!2190 = distinct !{!2190, !2187, !2191}
!2191 = !DILocation(line: 453, column: 15, scope: !2185, inlinedAt: !2146)
!2192 = !DILocation(line: 445, column: 22, scope: !2189, inlinedAt: !2146)
!2193 = !DILocation(line: 444, column: 56, scope: !2184, inlinedAt: !2146)
!2194 = !DILocation(line: 445, column: 17, scope: !2184, inlinedAt: !2146)
!2195 = !DILocation(line: 447, column: 22, scope: !2196, inlinedAt: !2146)
!2196 = distinct !DILexicalBlock(scope: !2189, file: !255, line: 446, column: 15)
!2197 = !DILocation(line: 448, column: 21, scope: !2198, inlinedAt: !2146)
!2198 = distinct !DILexicalBlock(scope: !2196, file: !255, line: 448, column: 21)
!2199 = !DILocation(line: 448, column: 29, scope: !2198, inlinedAt: !2146)
!2200 = !DILocation(line: 449, column: 24, scope: !2198, inlinedAt: !2146)
!2201 = !DILocation(line: 448, column: 21, scope: !2196, inlinedAt: !2146)
!2202 = !DILocation(line: 450, column: 36, scope: !2203, inlinedAt: !2146)
!2203 = distinct !DILexicalBlock(scope: !2196, file: !255, line: 450, column: 21)
!2204 = !DILocation(line: 450, column: 39, scope: !2203, inlinedAt: !2146)
!2205 = !DILocation(line: 450, column: 47, scope: !2203, inlinedAt: !2146)
!2206 = !DILocation(line: 450, column: 21, scope: !2196, inlinedAt: !2146)
!2207 = !DILocation(line: 451, column: 24, scope: !2203, inlinedAt: !2146)
!2208 = !DILocation(line: 451, column: 19, scope: !2203, inlinedAt: !2146)
!2209 = !DILocation(line: 454, column: 9, scope: !2141, inlinedAt: !2146)
!2210 = !DILocation(line: 441, column: 24, scope: !2211, inlinedAt: !2146)
!2211 = distinct !DILexicalBlock(scope: !2181, file: !255, line: 440, column: 13)
!2212 = !DILocation(line: 457, column: 12, scope: !2131, inlinedAt: !2146)
!2213 = !DILocation(line: 458, column: 3, scope: !2131, inlinedAt: !2146)
!2214 = !DILocation(line: 465, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2119, file: !255, line: 465, column: 7)
!2216 = !DILocation(line: 465, column: 19, scope: !2215)
!2217 = !DILocation(line: 465, column: 7, scope: !2119)
!2218 = !DILocation(line: 408, column: 10, scope: !2156, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 467, column: 21, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2215, file: !255, line: 466, column: 5)
!2221 = !DILocation(line: 467, column: 19, scope: !2220)
!2222 = !DILocation(line: 469, column: 5, scope: !2220)
!2223 = !DILocation(line: 470, column: 3, scope: !2119)
!2224 = distinct !DISubprogram(name: "set_program_name", scope: !328, file: !328, line: 39, type: !116, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2225)
!2225 = !{!2226, !2227, !2228}
!2226 = !DILocalVariable(name: "argv0", arg: 1, scope: !2224, file: !328, line: 39, type: !49)
!2227 = !DILocalVariable(name: "slash", scope: !2224, file: !328, line: 46, type: !49)
!2228 = !DILocalVariable(name: "base", scope: !2224, file: !328, line: 47, type: !49)
!2229 = !DILocation(line: 0, scope: !2224)
!2230 = !DILocation(line: 51, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2224, file: !328, line: 51, column: 7)
!2232 = !DILocation(line: 51, column: 7, scope: !2224)
!2233 = !DILocation(line: 55, column: 14, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2231, file: !328, line: 52, column: 5)
!2235 = !DILocation(line: 54, column: 7, scope: !2234)
!2236 = !DILocation(line: 56, column: 7, scope: !2234)
!2237 = !DILocation(line: 59, column: 11, scope: !2224)
!2238 = !DILocation(line: 60, column: 17, scope: !2224)
!2239 = !DILocation(line: 60, column: 11, scope: !2224)
!2240 = !DILocation(line: 61, column: 12, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2224, file: !328, line: 61, column: 7)
!2242 = !DILocation(line: 61, column: 20, scope: !2241)
!2243 = !DILocation(line: 61, column: 25, scope: !2241)
!2244 = !DILocation(line: 61, column: 42, scope: !2241)
!2245 = !DILocation(line: 61, column: 28, scope: !2241)
!2246 = !DILocation(line: 61, column: 61, scope: !2241)
!2247 = !DILocation(line: 61, column: 7, scope: !2224)
!2248 = !DILocation(line: 64, column: 11, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !328, line: 64, column: 11)
!2250 = distinct !DILexicalBlock(scope: !2241, file: !328, line: 62, column: 5)
!2251 = !DILocation(line: 64, column: 36, scope: !2249)
!2252 = !DILocation(line: 64, column: 11, scope: !2250)
!2253 = !DILocation(line: 66, column: 24, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2249, file: !328, line: 65, column: 9)
!2255 = !DILocation(line: 70, column: 41, scope: !2254)
!2256 = !DILocation(line: 72, column: 9, scope: !2254)
!2257 = !DILocation(line: 84, column: 16, scope: !2224)
!2258 = !DILocation(line: 90, column: 27, scope: !2224)
!2259 = !DILocation(line: 92, column: 1, scope: !2224)
!2260 = distinct !DISubprogram(name: "clone_quoting_options", scope: !369, file: !369, line: 122, type: !2261, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2264)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!2263, !2263}
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2264 = !{!2265, !2266, !2267}
!2265 = !DILocalVariable(name: "o", arg: 1, scope: !2260, file: !369, line: 122, type: !2263)
!2266 = !DILocalVariable(name: "e", scope: !2260, file: !369, line: 124, type: !51)
!2267 = !DILocalVariable(name: "p", scope: !2260, file: !369, line: 125, type: !2263)
!2268 = !DILocation(line: 0, scope: !2260)
!2269 = !DILocation(line: 124, column: 11, scope: !2260)
!2270 = !DILocation(line: 125, column: 40, scope: !2260)
!2271 = !DILocation(line: 125, column: 31, scope: !2260)
!2272 = !DILocation(line: 127, column: 9, scope: !2260)
!2273 = !DILocation(line: 128, column: 3, scope: !2260)
!2274 = distinct !DISubprogram(name: "get_quoting_style", scope: !369, file: !369, line: 133, type: !2275, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!5, !399}
!2277 = !{!2278}
!2278 = !DILocalVariable(name: "o", arg: 1, scope: !2274, file: !369, line: 133, type: !399)
!2279 = !DILocation(line: 0, scope: !2274)
!2280 = !DILocation(line: 135, column: 11, scope: !2274)
!2281 = !DILocation(line: 135, column: 46, scope: !2274)
!2282 = !{!2283, !1293, i64 0}
!2283 = !{!"quoting_options", !1293, i64 0, !1369, i64 4, !1293, i64 8, !1292, i64 40, !1292, i64 48}
!2284 = !DILocation(line: 135, column: 3, scope: !2274)
!2285 = distinct !DISubprogram(name: "set_quoting_style", scope: !369, file: !369, line: 141, type: !2286, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !2263, !5}
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "o", arg: 1, scope: !2285, file: !369, line: 141, type: !2263)
!2290 = !DILocalVariable(name: "s", arg: 2, scope: !2285, file: !369, line: 141, type: !5)
!2291 = !DILocation(line: 0, scope: !2285)
!2292 = !DILocation(line: 143, column: 4, scope: !2285)
!2293 = !DILocation(line: 143, column: 39, scope: !2285)
!2294 = !DILocation(line: 143, column: 45, scope: !2285)
!2295 = !DILocation(line: 144, column: 1, scope: !2285)
!2296 = distinct !DISubprogram(name: "set_char_quoting", scope: !369, file: !369, line: 152, type: !2297, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!51, !2263, !48, !51}
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2306, !2307}
!2300 = !DILocalVariable(name: "o", arg: 1, scope: !2296, file: !369, line: 152, type: !2263)
!2301 = !DILocalVariable(name: "c", arg: 2, scope: !2296, file: !369, line: 152, type: !48)
!2302 = !DILocalVariable(name: "i", arg: 3, scope: !2296, file: !369, line: 152, type: !51)
!2303 = !DILocalVariable(name: "uc", scope: !2296, file: !369, line: 154, type: !175)
!2304 = !DILocalVariable(name: "p", scope: !2296, file: !369, line: 155, type: !2305)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2306 = !DILocalVariable(name: "shift", scope: !2296, file: !369, line: 157, type: !51)
!2307 = !DILocalVariable(name: "r", scope: !2296, file: !369, line: 158, type: !51)
!2308 = !DILocation(line: 0, scope: !2296)
!2309 = !DILocation(line: 156, column: 6, scope: !2296)
!2310 = !DILocation(line: 156, column: 62, scope: !2296)
!2311 = !DILocation(line: 156, column: 57, scope: !2296)
!2312 = !DILocation(line: 157, column: 15, scope: !2296)
!2313 = !DILocation(line: 158, column: 12, scope: !2296)
!2314 = !DILocation(line: 158, column: 15, scope: !2296)
!2315 = !DILocation(line: 158, column: 25, scope: !2296)
!2316 = !DILocation(line: 159, column: 13, scope: !2296)
!2317 = !DILocation(line: 159, column: 18, scope: !2296)
!2318 = !DILocation(line: 159, column: 23, scope: !2296)
!2319 = !DILocation(line: 159, column: 6, scope: !2296)
!2320 = !DILocation(line: 160, column: 3, scope: !2296)
!2321 = distinct !DISubprogram(name: "set_quoting_flags", scope: !369, file: !369, line: 168, type: !2322, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!51, !2263, !51}
!2324 = !{!2325, !2326, !2327}
!2325 = !DILocalVariable(name: "o", arg: 1, scope: !2321, file: !369, line: 168, type: !2263)
!2326 = !DILocalVariable(name: "i", arg: 2, scope: !2321, file: !369, line: 168, type: !51)
!2327 = !DILocalVariable(name: "r", scope: !2321, file: !369, line: 170, type: !51)
!2328 = !DILocation(line: 0, scope: !2321)
!2329 = !DILocation(line: 171, column: 8, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2321, file: !369, line: 171, column: 7)
!2331 = !DILocation(line: 171, column: 7, scope: !2321)
!2332 = !DILocation(line: 173, column: 10, scope: !2321)
!2333 = !{!2283, !1369, i64 4}
!2334 = !DILocation(line: 174, column: 12, scope: !2321)
!2335 = !DILocation(line: 175, column: 3, scope: !2321)
!2336 = distinct !DISubprogram(name: "set_custom_quoting", scope: !369, file: !369, line: 179, type: !2337, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2263, !49, !49}
!2339 = !{!2340, !2341, !2342}
!2340 = !DILocalVariable(name: "o", arg: 1, scope: !2336, file: !369, line: 179, type: !2263)
!2341 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2336, file: !369, line: 180, type: !49)
!2342 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2336, file: !369, line: 180, type: !49)
!2343 = !DILocation(line: 0, scope: !2336)
!2344 = !DILocation(line: 182, column: 8, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2336, file: !369, line: 182, column: 7)
!2346 = !DILocation(line: 182, column: 7, scope: !2336)
!2347 = !DILocation(line: 184, column: 6, scope: !2336)
!2348 = !DILocation(line: 184, column: 12, scope: !2336)
!2349 = !DILocation(line: 185, column: 8, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2336, file: !369, line: 185, column: 7)
!2351 = !DILocation(line: 185, column: 23, scope: !2350)
!2352 = !DILocation(line: 185, column: 19, scope: !2350)
!2353 = !DILocation(line: 186, column: 5, scope: !2350)
!2354 = !DILocation(line: 187, column: 6, scope: !2336)
!2355 = !DILocation(line: 187, column: 17, scope: !2336)
!2356 = !{!2283, !1292, i64 40}
!2357 = !DILocation(line: 188, column: 6, scope: !2336)
!2358 = !DILocation(line: 188, column: 18, scope: !2336)
!2359 = !{!2283, !1292, i64 48}
!2360 = !DILocation(line: 189, column: 1, scope: !2336)
!2361 = distinct !DISubprogram(name: "quotearg_buffer", scope: !369, file: !369, line: 784, type: !2362, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!106, !47, !106, !49, !106, !399}
!2364 = !{!2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372}
!2365 = !DILocalVariable(name: "buffer", arg: 1, scope: !2361, file: !369, line: 784, type: !47)
!2366 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2361, file: !369, line: 784, type: !106)
!2367 = !DILocalVariable(name: "arg", arg: 3, scope: !2361, file: !369, line: 785, type: !49)
!2368 = !DILocalVariable(name: "argsize", arg: 4, scope: !2361, file: !369, line: 785, type: !106)
!2369 = !DILocalVariable(name: "o", arg: 5, scope: !2361, file: !369, line: 786, type: !399)
!2370 = !DILocalVariable(name: "p", scope: !2361, file: !369, line: 788, type: !399)
!2371 = !DILocalVariable(name: "e", scope: !2361, file: !369, line: 789, type: !51)
!2372 = !DILocalVariable(name: "r", scope: !2361, file: !369, line: 790, type: !106)
!2373 = !DILocation(line: 0, scope: !2361)
!2374 = !DILocation(line: 788, column: 37, scope: !2361)
!2375 = !DILocation(line: 789, column: 11, scope: !2361)
!2376 = !DILocation(line: 791, column: 43, scope: !2361)
!2377 = !DILocation(line: 791, column: 53, scope: !2361)
!2378 = !DILocation(line: 791, column: 60, scope: !2361)
!2379 = !DILocation(line: 792, column: 43, scope: !2361)
!2380 = !DILocation(line: 792, column: 58, scope: !2361)
!2381 = !DILocation(line: 790, column: 14, scope: !2361)
!2382 = !DILocation(line: 793, column: 9, scope: !2361)
!2383 = !DILocation(line: 794, column: 3, scope: !2361)
!2384 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !369, file: !369, line: 256, type: !2385, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2389)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!106, !47, !106, !49, !106, !5, !51, !2387, !49, !49}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2414, !2415, !2416, !2417, !2418, !2421, !2422, !2428, !2431, !2432, !2439, !2442, !2443, !2444, !2445, !2446, !2447}
!2390 = !DILocalVariable(name: "buffer", arg: 1, scope: !2384, file: !369, line: 256, type: !47)
!2391 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2384, file: !369, line: 256, type: !106)
!2392 = !DILocalVariable(name: "arg", arg: 3, scope: !2384, file: !369, line: 257, type: !49)
!2393 = !DILocalVariable(name: "argsize", arg: 4, scope: !2384, file: !369, line: 257, type: !106)
!2394 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2384, file: !369, line: 258, type: !5)
!2395 = !DILocalVariable(name: "flags", arg: 6, scope: !2384, file: !369, line: 258, type: !51)
!2396 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2384, file: !369, line: 259, type: !2387)
!2397 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2384, file: !369, line: 260, type: !49)
!2398 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2384, file: !369, line: 261, type: !49)
!2399 = !DILocalVariable(name: "i", scope: !2384, file: !369, line: 263, type: !106)
!2400 = !DILocalVariable(name: "len", scope: !2384, file: !369, line: 264, type: !106)
!2401 = !DILocalVariable(name: "orig_buffersize", scope: !2384, file: !369, line: 265, type: !106)
!2402 = !DILocalVariable(name: "quote_string", scope: !2384, file: !369, line: 266, type: !49)
!2403 = !DILocalVariable(name: "quote_string_len", scope: !2384, file: !369, line: 267, type: !106)
!2404 = !DILocalVariable(name: "backslash_escapes", scope: !2384, file: !369, line: 268, type: !195)
!2405 = !DILocalVariable(name: "unibyte_locale", scope: !2384, file: !369, line: 269, type: !195)
!2406 = !DILocalVariable(name: "elide_outer_quotes", scope: !2384, file: !369, line: 270, type: !195)
!2407 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2384, file: !369, line: 271, type: !195)
!2408 = !DILocalVariable(name: "encountered_single_quote", scope: !2384, file: !369, line: 272, type: !195)
!2409 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2384, file: !369, line: 273, type: !195)
!2410 = !DILocalVariable(name: "c", scope: !2411, file: !369, line: 402, type: !175)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !369, line: 401, column: 5)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !369, line: 400, column: 3)
!2413 = distinct !DILexicalBlock(scope: !2384, file: !369, line: 400, column: 3)
!2414 = !DILocalVariable(name: "esc", scope: !2411, file: !369, line: 403, type: !175)
!2415 = !DILocalVariable(name: "is_right_quote", scope: !2411, file: !369, line: 404, type: !195)
!2416 = !DILocalVariable(name: "escaping", scope: !2411, file: !369, line: 405, type: !195)
!2417 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2411, file: !369, line: 406, type: !195)
!2418 = !DILocalVariable(name: "m", scope: !2419, file: !369, line: 610, type: !106)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 608, column: 11)
!2420 = distinct !DILexicalBlock(scope: !2411, file: !369, line: 426, column: 9)
!2421 = !DILocalVariable(name: "printable", scope: !2419, file: !369, line: 612, type: !195)
!2422 = !DILocalVariable(name: "mbstate", scope: !2423, file: !369, line: 621, type: !2425)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !369, line: 620, column: 15)
!2424 = distinct !DILexicalBlock(scope: !2419, file: !369, line: 614, column: 17)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2426, line: 6, baseType: !2427)
!2426 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !423, line: 21, baseType: !422)
!2428 = !DILocalVariable(name: "w", scope: !2429, file: !369, line: 631, type: !2430)
!2429 = distinct !DILexicalBlock(scope: !2423, file: !369, line: 630, column: 19)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !107, line: 74, baseType: !51)
!2431 = !DILocalVariable(name: "bytes", scope: !2429, file: !369, line: 632, type: !106)
!2432 = !DILocalVariable(name: "j", scope: !2433, file: !369, line: 657, type: !106)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !369, line: 656, column: 27)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !369, line: 654, column: 29)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !369, line: 649, column: 23)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !369, line: 641, column: 30)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !369, line: 636, column: 30)
!2438 = distinct !DILexicalBlock(scope: !2429, file: !369, line: 634, column: 25)
!2439 = !DILocalVariable(name: "ilim", scope: !2440, file: !369, line: 684, type: !106)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !369, line: 681, column: 15)
!2441 = distinct !DILexicalBlock(scope: !2419, file: !369, line: 680, column: 17)
!2442 = !DILabel(scope: !2384, name: "process_input", file: !369, line: 314)
!2443 = !DILabel(scope: !2420, name: "c_and_shell_escape", file: !369, line: 512)
!2444 = !DILabel(scope: !2420, name: "c_escape", file: !369, line: 517)
!2445 = !DILabel(scope: !2411, name: "store_escape", file: !369, line: 719)
!2446 = !DILabel(scope: !2411, name: "store_c", file: !369, line: 722)
!2447 = !DILabel(scope: !2384, name: "force_outer_quoting_style", file: !369, line: 763)
!2448 = !DILocation(line: 0, scope: !2384)
!2449 = !DILocation(line: 269, column: 25, scope: !2384)
!2450 = !DILocation(line: 269, column: 36, scope: !2384)
!2451 = !DILocation(line: 270, column: 8, scope: !2384)
!2452 = !DILocation(line: 0, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 526, column: 15)
!2454 = !DILocation(line: 0, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !369, line: 462, column: 19)
!2456 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 455, column: 13)
!2457 = !DILocation(line: 0, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !369, line: 449, column: 20)
!2459 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 428, column: 15)
!2460 = !DILocation(line: 0, scope: !2423)
!2461 = !DILocation(line: 0, scope: !2429)
!2462 = !DILocation(line: 0, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2411, file: !369, line: 712, column: 11)
!2464 = !DILocation(line: 273, column: 3, scope: !2384)
!2465 = !DILocation(line: 265, column: 10, scope: !2384)
!2466 = !DILocation(line: 266, column: 15, scope: !2384)
!2467 = !DILocation(line: 267, column: 10, scope: !2384)
!2468 = !DILocation(line: 268, column: 8, scope: !2384)
!2469 = !DILocation(line: 271, column: 8, scope: !2384)
!2470 = !DILocation(line: 272, column: 8, scope: !2384)
!2471 = !DILocation(line: 273, column: 8, scope: !2384)
!2472 = !DILocation(line: 314, column: 2, scope: !2384)
!2473 = !DILocation(line: 316, column: 3, scope: !2384)
!2474 = !DILocation(line: 323, column: 11, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2384, file: !369, line: 317, column: 5)
!2476 = !DILocation(line: 323, column: 12, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2475, file: !369, line: 323, column: 11)
!2478 = !DILocation(line: 324, column: 9, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !369, line: 324, column: 9)
!2480 = distinct !DILexicalBlock(scope: !2477, file: !369, line: 324, column: 9)
!2481 = !DILocation(line: 324, column: 9, scope: !2480)
!2482 = !DILocation(line: 362, column: 26, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !369, line: 340, column: 11)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !369, line: 339, column: 13)
!2485 = distinct !DILexicalBlock(scope: !2475, file: !369, line: 338, column: 7)
!2486 = !DILocation(line: 363, column: 27, scope: !2483)
!2487 = !DILocation(line: 364, column: 11, scope: !2483)
!2488 = !DILocation(line: 365, column: 14, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !369, line: 365, column: 13)
!2490 = !DILocation(line: 365, column: 13, scope: !2485)
!2491 = !DILocation(line: 366, column: 43, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !369, line: 366, column: 11)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !369, line: 366, column: 11)
!2494 = !DILocation(line: 366, column: 11, scope: !2493)
!2495 = !DILocation(line: 367, column: 13, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !369, line: 367, column: 13)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !369, line: 367, column: 13)
!2498 = !DILocation(line: 367, column: 13, scope: !2497)
!2499 = !DILocation(line: 366, column: 70, scope: !2492)
!2500 = distinct !{!2500, !2494, !2501}
!2501 = !DILocation(line: 367, column: 13, scope: !2493)
!2502 = !DILocation(line: 264, column: 10, scope: !2384)
!2503 = !DILocation(line: 370, column: 28, scope: !2485)
!2504 = !DILocation(line: 372, column: 7, scope: !2475)
!2505 = !DILocation(line: 376, column: 7, scope: !2475)
!2506 = !DILocation(line: 379, column: 7, scope: !2475)
!2507 = !DILocation(line: 381, column: 12, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2475, file: !369, line: 381, column: 11)
!2509 = !DILocation(line: 381, column: 11, scope: !2475)
!2510 = !DILocation(line: 386, column: 12, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2475, file: !369, line: 386, column: 11)
!2512 = !DILocation(line: 386, column: 11, scope: !2475)
!2513 = !DILocation(line: 387, column: 9, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !369, line: 387, column: 9)
!2515 = distinct !DILexicalBlock(scope: !2511, file: !369, line: 387, column: 9)
!2516 = !DILocation(line: 387, column: 9, scope: !2515)
!2517 = !DILocation(line: 394, column: 7, scope: !2475)
!2518 = !DILocation(line: 397, column: 7, scope: !2475)
!2519 = !DILocation(line: 0, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2411, file: !369, line: 408, column: 11)
!2521 = !DILocation(line: 0, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !369, line: 419, column: 15)
!2523 = distinct !DILexicalBlock(scope: !2520, file: !369, line: 418, column: 9)
!2524 = !DILocation(line: 0, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 556, column: 15)
!2526 = !DILocation(line: 0, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 548, column: 15)
!2528 = !DILocation(line: 0, scope: !2434)
!2529 = !DILocation(line: 0, scope: !2441)
!2530 = !DILocation(line: 0, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 509, column: 15)
!2532 = !DILocation(line: 400, column: 8, scope: !2413)
!2533 = !DILocation(line: 0, scope: !2413)
!2534 = !DILocation(line: 400, column: 27, scope: !2412)
!2535 = !DILocation(line: 400, column: 19, scope: !2412)
!2536 = !DILocation(line: 400, column: 41, scope: !2412)
!2537 = !DILocation(line: 400, column: 48, scope: !2412)
!2538 = !DILocation(line: 400, column: 3, scope: !2413)
!2539 = !DILocation(line: 400, column: 60, scope: !2412)
!2540 = !DILocation(line: 0, scope: !2411)
!2541 = !DILocation(line: 409, column: 11, scope: !2520)
!2542 = !DILocation(line: 411, column: 17, scope: !2520)
!2543 = !DILocation(line: 412, column: 39, scope: !2520)
!2544 = !DILocation(line: 416, column: 32, scope: !2520)
!2545 = !DILocation(line: 412, column: 19, scope: !2520)
!2546 = !DILocation(line: 412, column: 15, scope: !2520)
!2547 = !DILocation(line: 417, column: 11, scope: !2520)
!2548 = !DILocation(line: 417, column: 26, scope: !2520)
!2549 = !DILocation(line: 417, column: 14, scope: !2520)
!2550 = !DILocation(line: 417, column: 63, scope: !2520)
!2551 = !DILocation(line: 408, column: 11, scope: !2411)
!2552 = !DILocation(line: 424, column: 11, scope: !2411)
!2553 = !DILocation(line: 425, column: 7, scope: !2411)
!2554 = !DILocation(line: 428, column: 15, scope: !2420)
!2555 = !DILocation(line: 430, column: 15, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !369, line: 430, column: 15)
!2557 = distinct !DILexicalBlock(scope: !2459, file: !369, line: 429, column: 13)
!2558 = !DILocation(line: 430, column: 15, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !369, line: 430, column: 15)
!2560 = !DILocation(line: 430, column: 15, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !369, line: 430, column: 15)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !369, line: 430, column: 15)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !369, line: 430, column: 15)
!2564 = !DILocation(line: 430, column: 15, scope: !2562)
!2565 = !DILocation(line: 430, column: 15, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !369, line: 430, column: 15)
!2567 = distinct !DILexicalBlock(scope: !2563, file: !369, line: 430, column: 15)
!2568 = !DILocation(line: 430, column: 15, scope: !2567)
!2569 = !DILocation(line: 430, column: 15, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !369, line: 430, column: 15)
!2571 = distinct !DILexicalBlock(scope: !2563, file: !369, line: 430, column: 15)
!2572 = !DILocation(line: 430, column: 15, scope: !2571)
!2573 = !DILocation(line: 430, column: 15, scope: !2563)
!2574 = !DILocation(line: 430, column: 15, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !369, line: 430, column: 15)
!2576 = distinct !DILexicalBlock(scope: !2556, file: !369, line: 430, column: 15)
!2577 = !DILocation(line: 430, column: 15, scope: !2576)
!2578 = !DILocation(line: 438, column: 19, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2557, file: !369, line: 437, column: 19)
!2580 = !DILocation(line: 438, column: 24, scope: !2579)
!2581 = !DILocation(line: 438, column: 28, scope: !2579)
!2582 = !DILocation(line: 438, column: 38, scope: !2579)
!2583 = !DILocation(line: 438, column: 48, scope: !2579)
!2584 = !DILocation(line: 438, column: 59, scope: !2579)
!2585 = !DILocation(line: 440, column: 19, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !369, line: 440, column: 19)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !369, line: 440, column: 19)
!2588 = distinct !DILexicalBlock(scope: !2579, file: !369, line: 439, column: 17)
!2589 = !DILocation(line: 440, column: 19, scope: !2587)
!2590 = !DILocation(line: 441, column: 19, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !369, line: 441, column: 19)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !369, line: 441, column: 19)
!2593 = !DILocation(line: 441, column: 19, scope: !2592)
!2594 = !DILocation(line: 442, column: 17, scope: !2588)
!2595 = !DILocation(line: 449, column: 20, scope: !2459)
!2596 = !DILocation(line: 454, column: 11, scope: !2420)
!2597 = !DILocation(line: 457, column: 19, scope: !2456)
!2598 = !DILocation(line: 463, column: 19, scope: !2455)
!2599 = !DILocation(line: 463, column: 24, scope: !2455)
!2600 = !DILocation(line: 463, column: 28, scope: !2455)
!2601 = !DILocation(line: 463, column: 38, scope: !2455)
!2602 = !DILocation(line: 463, column: 47, scope: !2455)
!2603 = !DILocation(line: 463, column: 41, scope: !2455)
!2604 = !DILocation(line: 463, column: 52, scope: !2455)
!2605 = !DILocation(line: 462, column: 19, scope: !2456)
!2606 = !DILocation(line: 464, column: 25, scope: !2455)
!2607 = !DILocation(line: 464, column: 17, scope: !2455)
!2608 = !DILocation(line: 471, column: 25, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2455, file: !369, line: 465, column: 19)
!2610 = !DILocation(line: 475, column: 21, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !369, line: 475, column: 21)
!2612 = distinct !DILexicalBlock(scope: !2609, file: !369, line: 475, column: 21)
!2613 = !DILocation(line: 475, column: 21, scope: !2612)
!2614 = !DILocation(line: 476, column: 21, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !369, line: 476, column: 21)
!2616 = distinct !DILexicalBlock(scope: !2609, file: !369, line: 476, column: 21)
!2617 = !DILocation(line: 476, column: 21, scope: !2616)
!2618 = !DILocation(line: 477, column: 21, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !369, line: 477, column: 21)
!2620 = distinct !DILexicalBlock(scope: !2609, file: !369, line: 477, column: 21)
!2621 = !DILocation(line: 477, column: 21, scope: !2620)
!2622 = !DILocation(line: 478, column: 21, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !369, line: 478, column: 21)
!2624 = distinct !DILexicalBlock(scope: !2609, file: !369, line: 478, column: 21)
!2625 = !DILocation(line: 478, column: 21, scope: !2624)
!2626 = !DILocation(line: 479, column: 21, scope: !2609)
!2627 = !DILocation(line: 492, column: 31, scope: !2420)
!2628 = !DILocation(line: 493, column: 31, scope: !2420)
!2629 = !DILocation(line: 495, column: 31, scope: !2420)
!2630 = !DILocation(line: 496, column: 31, scope: !2420)
!2631 = !DILocation(line: 497, column: 31, scope: !2420)
!2632 = !DILocation(line: 500, column: 15, scope: !2420)
!2633 = !DILocation(line: 502, column: 19, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !369, line: 501, column: 13)
!2635 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 500, column: 15)
!2636 = !DILocation(line: 509, column: 33, scope: !2531)
!2637 = !DILocation(line: 0, scope: !2420)
!2638 = !DILocation(line: 512, column: 9, scope: !2420)
!2639 = !DILocation(line: 514, column: 15, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 513, column: 15)
!2641 = !DILocation(line: 517, column: 9, scope: !2420)
!2642 = !DILocation(line: 518, column: 15, scope: !2420)
!2643 = !DILocation(line: 526, column: 15, scope: !2420)
!2644 = !DILocation(line: 526, column: 40, scope: !2453)
!2645 = !DILocation(line: 526, column: 47, scope: !2453)
!2646 = !DILocation(line: 526, column: 18, scope: !2453)
!2647 = !DILocation(line: 530, column: 17, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2420, file: !369, line: 530, column: 15)
!2649 = !DILocation(line: 530, column: 15, scope: !2420)
!2650 = !DILocation(line: 535, column: 11, scope: !2420)
!2651 = !DILocation(line: 549, column: 15, scope: !2527)
!2652 = !DILocation(line: 556, column: 15, scope: !2420)
!2653 = !DILocation(line: 558, column: 19, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2525, file: !369, line: 557, column: 13)
!2655 = !DILocation(line: 561, column: 19, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2654, file: !369, line: 561, column: 19)
!2657 = !DILocation(line: 561, column: 35, scope: !2656)
!2658 = !DILocation(line: 561, column: 30, scope: !2656)
!2659 = !DILocation(line: 570, column: 15, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !369, line: 570, column: 15)
!2661 = distinct !DILexicalBlock(scope: !2654, file: !369, line: 570, column: 15)
!2662 = !DILocation(line: 570, column: 15, scope: !2661)
!2663 = !DILocation(line: 571, column: 15, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !369, line: 571, column: 15)
!2665 = distinct !DILexicalBlock(scope: !2654, file: !369, line: 571, column: 15)
!2666 = !DILocation(line: 571, column: 15, scope: !2665)
!2667 = !DILocation(line: 572, column: 15, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !369, line: 572, column: 15)
!2669 = distinct !DILexicalBlock(scope: !2654, file: !369, line: 572, column: 15)
!2670 = !DILocation(line: 572, column: 15, scope: !2669)
!2671 = !DILocation(line: 574, column: 13, scope: !2654)
!2672 = !DILocation(line: 614, column: 17, scope: !2419)
!2673 = !DILocation(line: 0, scope: !2419)
!2674 = !DILocation(line: 617, column: 29, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2424, file: !369, line: 615, column: 15)
!2676 = !{!1453, !1453, i64 0}
!2677 = !DILocation(line: 617, column: 27, scope: !2675)
!2678 = !DILocation(line: 618, column: 15, scope: !2675)
!2679 = !DILocation(line: 621, column: 17, scope: !2423)
!2680 = !DILocation(line: 621, column: 27, scope: !2423)
!2681 = !DILocalVariable(name: "__dest", arg: 1, scope: !2682, file: !1910, line: 59, type: !104)
!2682 = distinct !DISubprogram(name: "memset", scope: !1910, file: !1910, line: 59, type: !2683, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!104, !104, !51, !106}
!2685 = !{!2681, !2686, !2687}
!2686 = !DILocalVariable(name: "__ch", arg: 2, scope: !2682, file: !1910, line: 59, type: !51)
!2687 = !DILocalVariable(name: "__len", arg: 3, scope: !2682, file: !1910, line: 59, type: !106)
!2688 = !DILocation(line: 0, scope: !2682, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 622, column: 17, scope: !2423)
!2690 = !DILocation(line: 71, column: 10, scope: !2682, inlinedAt: !2689)
!2691 = !DILocation(line: 626, column: 29, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2423, file: !369, line: 626, column: 21)
!2693 = !DILocation(line: 626, column: 21, scope: !2423)
!2694 = !DILocation(line: 627, column: 29, scope: !2692)
!2695 = !DILocation(line: 627, column: 19, scope: !2692)
!2696 = !DILocation(line: 629, column: 17, scope: !2423)
!2697 = !DILocation(line: 624, column: 19, scope: !2423)
!2698 = !DILocation(line: 625, column: 27, scope: !2423)
!2699 = !DILocation(line: 631, column: 21, scope: !2429)
!2700 = !DILocation(line: 632, column: 56, scope: !2429)
!2701 = !DILocation(line: 632, column: 50, scope: !2429)
!2702 = !DILocation(line: 633, column: 53, scope: !2429)
!2703 = !DILocation(line: 632, column: 36, scope: !2429)
!2704 = !DILocation(line: 634, column: 25, scope: !2429)
!2705 = !DILocation(line: 644, column: 38, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2436, file: !369, line: 642, column: 23)
!2707 = !DILocation(line: 644, column: 48, scope: !2706)
!2708 = !DILocation(line: 644, column: 25, scope: !2706)
!2709 = !DILocation(line: 644, column: 51, scope: !2706)
!2710 = !DILocation(line: 645, column: 28, scope: !2706)
!2711 = !DILocation(line: 644, column: 34, scope: !2706)
!2712 = distinct !{!2712, !2708, !2710}
!2713 = !DILocation(line: 658, column: 43, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !369, line: 658, column: 29)
!2715 = distinct !DILexicalBlock(scope: !2433, file: !369, line: 658, column: 29)
!2716 = !DILocation(line: 655, column: 29, scope: !2434)
!2717 = !DILocation(line: 0, scope: !2433)
!2718 = !DILocation(line: 659, column: 49, scope: !2714)
!2719 = !DILocation(line: 659, column: 39, scope: !2714)
!2720 = !DILocation(line: 659, column: 31, scope: !2714)
!2721 = !DILocation(line: 658, column: 53, scope: !2714)
!2722 = !DILocation(line: 658, column: 29, scope: !2715)
!2723 = distinct !{!2723, !2722, !2724}
!2724 = !DILocation(line: 667, column: 33, scope: !2715)
!2725 = !DILocation(line: 674, column: 19, scope: !2423)
!2726 = !DILocation(line: 670, column: 41, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2435, file: !369, line: 670, column: 29)
!2728 = !DILocation(line: 670, column: 31, scope: !2727)
!2729 = !DILocation(line: 670, column: 29, scope: !2435)
!2730 = !DILocation(line: 672, column: 27, scope: !2435)
!2731 = !DILocation(line: 675, column: 26, scope: !2423)
!2732 = !DILocation(line: 675, column: 24, scope: !2423)
!2733 = !DILocation(line: 674, column: 19, scope: !2429)
!2734 = distinct !{!2734, !2696, !2735}
!2735 = !DILocation(line: 675, column: 44, scope: !2423)
!2736 = !DILocation(line: 676, column: 15, scope: !2424)
!2737 = !DILocation(line: 0, scope: !2424)
!2738 = !DILocation(line: 678, column: 40, scope: !2419)
!2739 = !DILocation(line: 680, column: 19, scope: !2441)
!2740 = !DILocation(line: 680, column: 45, scope: !2441)
!2741 = !DILocation(line: 680, column: 23, scope: !2441)
!2742 = !DILocation(line: 684, column: 33, scope: !2440)
!2743 = !DILocation(line: 0, scope: !2440)
!2744 = !DILocation(line: 686, column: 17, scope: !2440)
!2745 = !DILocation(line: 405, column: 12, scope: !2411)
!2746 = !DILocation(line: 688, column: 43, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !369, line: 688, column: 25)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !369, line: 687, column: 19)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !369, line: 686, column: 17)
!2750 = distinct !DILexicalBlock(scope: !2440, file: !369, line: 686, column: 17)
!2751 = !DILocation(line: 690, column: 25, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !369, line: 690, column: 25)
!2753 = distinct !DILexicalBlock(scope: !2747, file: !369, line: 689, column: 23)
!2754 = !DILocation(line: 690, column: 25, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2752, file: !369, line: 690, column: 25)
!2756 = !DILocation(line: 690, column: 25, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !369, line: 690, column: 25)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !369, line: 690, column: 25)
!2759 = distinct !DILexicalBlock(scope: !2755, file: !369, line: 690, column: 25)
!2760 = !DILocation(line: 690, column: 25, scope: !2758)
!2761 = !DILocation(line: 690, column: 25, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !369, line: 690, column: 25)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !369, line: 690, column: 25)
!2764 = !DILocation(line: 690, column: 25, scope: !2763)
!2765 = !DILocation(line: 690, column: 25, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !369, line: 690, column: 25)
!2767 = distinct !DILexicalBlock(scope: !2759, file: !369, line: 690, column: 25)
!2768 = !DILocation(line: 690, column: 25, scope: !2767)
!2769 = !DILocation(line: 690, column: 25, scope: !2759)
!2770 = !DILocation(line: 690, column: 25, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !369, line: 690, column: 25)
!2772 = distinct !DILexicalBlock(scope: !2752, file: !369, line: 690, column: 25)
!2773 = !DILocation(line: 690, column: 25, scope: !2772)
!2774 = !DILocation(line: 691, column: 25, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !369, line: 691, column: 25)
!2776 = distinct !DILexicalBlock(scope: !2753, file: !369, line: 691, column: 25)
!2777 = !DILocation(line: 691, column: 25, scope: !2776)
!2778 = !DILocation(line: 692, column: 25, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !369, line: 692, column: 25)
!2780 = distinct !DILexicalBlock(scope: !2753, file: !369, line: 692, column: 25)
!2781 = !DILocation(line: 692, column: 25, scope: !2780)
!2782 = !DILocation(line: 693, column: 38, scope: !2753)
!2783 = !DILocation(line: 693, column: 33, scope: !2753)
!2784 = !DILocation(line: 694, column: 23, scope: !2753)
!2785 = !DILocation(line: 695, column: 30, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2747, file: !369, line: 695, column: 30)
!2787 = !DILocation(line: 695, column: 30, scope: !2747)
!2788 = !DILocation(line: 697, column: 25, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !369, line: 697, column: 25)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !369, line: 697, column: 25)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !369, line: 696, column: 23)
!2792 = !DILocation(line: 697, column: 25, scope: !2790)
!2793 = !DILocation(line: 699, column: 23, scope: !2791)
!2794 = !DILocation(line: 700, column: 35, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2748, file: !369, line: 700, column: 25)
!2796 = !DILocation(line: 700, column: 30, scope: !2795)
!2797 = !DILocation(line: 700, column: 25, scope: !2748)
!2798 = !DILocation(line: 702, column: 21, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !369, line: 702, column: 21)
!2800 = distinct !DILexicalBlock(scope: !2748, file: !369, line: 702, column: 21)
!2801 = !DILocation(line: 702, column: 21, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !369, line: 702, column: 21)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !369, line: 702, column: 21)
!2804 = distinct !DILexicalBlock(scope: !2799, file: !369, line: 702, column: 21)
!2805 = !DILocation(line: 702, column: 21, scope: !2803)
!2806 = !DILocation(line: 702, column: 21, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !369, line: 702, column: 21)
!2808 = distinct !DILexicalBlock(scope: !2804, file: !369, line: 702, column: 21)
!2809 = !DILocation(line: 702, column: 21, scope: !2808)
!2810 = !DILocation(line: 702, column: 21, scope: !2804)
!2811 = !DILocation(line: 0, scope: !2748)
!2812 = !DILocation(line: 703, column: 21, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !369, line: 703, column: 21)
!2814 = distinct !DILexicalBlock(scope: !2748, file: !369, line: 703, column: 21)
!2815 = !DILocation(line: 703, column: 21, scope: !2814)
!2816 = !DILocation(line: 704, column: 25, scope: !2748)
!2817 = !DILocation(line: 686, column: 17, scope: !2749)
!2818 = distinct !{!2818, !2819, !2820}
!2819 = !DILocation(line: 686, column: 17, scope: !2750)
!2820 = !DILocation(line: 705, column: 19, scope: !2750)
!2821 = !DILocation(line: 416, column: 30, scope: !2520)
!2822 = !DILocation(line: 712, column: 34, scope: !2463)
!2823 = !DILocation(line: 715, column: 35, scope: !2463)
!2824 = !DILocation(line: 715, column: 17, scope: !2463)
!2825 = !DILocation(line: 715, column: 47, scope: !2463)
!2826 = !DILocation(line: 715, column: 65, scope: !2463)
!2827 = !DILocation(line: 716, column: 15, scope: !2463)
!2828 = !DILocation(line: 716, column: 11, scope: !2463)
!2829 = !DILocation(line: 712, column: 11, scope: !2411)
!2830 = !DILocation(line: 400, column: 10, scope: !2413)
!2831 = !DILocation(line: 719, column: 5, scope: !2411)
!2832 = !DILocation(line: 720, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2411, file: !369, line: 720, column: 7)
!2834 = !DILocation(line: 720, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2833, file: !369, line: 720, column: 7)
!2836 = !DILocation(line: 720, column: 7, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !369, line: 720, column: 7)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !369, line: 720, column: 7)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !369, line: 720, column: 7)
!2840 = !DILocation(line: 720, column: 7, scope: !2838)
!2841 = !DILocation(line: 720, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !369, line: 720, column: 7)
!2843 = distinct !DILexicalBlock(scope: !2839, file: !369, line: 720, column: 7)
!2844 = !DILocation(line: 720, column: 7, scope: !2843)
!2845 = !DILocation(line: 720, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !369, line: 720, column: 7)
!2847 = distinct !DILexicalBlock(scope: !2839, file: !369, line: 720, column: 7)
!2848 = !DILocation(line: 720, column: 7, scope: !2847)
!2849 = !DILocation(line: 720, column: 7, scope: !2839)
!2850 = !DILocation(line: 720, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !369, line: 720, column: 7)
!2852 = distinct !DILexicalBlock(scope: !2833, file: !369, line: 720, column: 7)
!2853 = !DILocation(line: 720, column: 7, scope: !2852)
!2854 = !DILocation(line: 722, column: 5, scope: !2411)
!2855 = !DILocation(line: 723, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !369, line: 723, column: 7)
!2857 = distinct !DILexicalBlock(scope: !2411, file: !369, line: 723, column: 7)
!2858 = !DILocation(line: 424, column: 9, scope: !2411)
!2859 = !DILocation(line: 723, column: 7, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !369, line: 723, column: 7)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !369, line: 723, column: 7)
!2862 = distinct !DILexicalBlock(scope: !2856, file: !369, line: 723, column: 7)
!2863 = !DILocation(line: 723, column: 7, scope: !2861)
!2864 = !DILocation(line: 723, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !369, line: 723, column: 7)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !369, line: 723, column: 7)
!2867 = !DILocation(line: 723, column: 7, scope: !2866)
!2868 = !DILocation(line: 723, column: 7, scope: !2862)
!2869 = !DILocation(line: 724, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !369, line: 724, column: 7)
!2871 = distinct !DILexicalBlock(scope: !2411, file: !369, line: 724, column: 7)
!2872 = !DILocation(line: 724, column: 7, scope: !2871)
!2873 = !DILocation(line: 726, column: 13, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2411, file: !369, line: 726, column: 11)
!2875 = !DILocation(line: 726, column: 11, scope: !2411)
!2876 = !DILocation(line: 728, column: 5, scope: !2412)
!2877 = !DILocation(line: 400, column: 75, scope: !2412)
!2878 = !DILocation(line: 400, column: 3, scope: !2412)
!2879 = distinct !{!2879, !2538, !2880}
!2880 = !DILocation(line: 728, column: 5, scope: !2413)
!2881 = !DILocation(line: 730, column: 11, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2384, file: !369, line: 730, column: 7)
!2883 = !DILocation(line: 730, column: 16, scope: !2882)
!2884 = !DILocation(line: 738, column: 51, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2384, file: !369, line: 738, column: 7)
!2886 = !DILocation(line: 739, column: 10, scope: !2885)
!2887 = !DILocation(line: 741, column: 11, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !369, line: 741, column: 11)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !369, line: 740, column: 5)
!2890 = !DILocation(line: 741, column: 11, scope: !2889)
!2891 = !DILocation(line: 742, column: 16, scope: !2888)
!2892 = !DILocation(line: 742, column: 9, scope: !2888)
!2893 = !DILocation(line: 746, column: 18, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !369, line: 746, column: 16)
!2895 = !DILocation(line: 746, column: 32, scope: !2894)
!2896 = !DILocation(line: 746, column: 29, scope: !2894)
!2897 = !DILocation(line: 755, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2384, file: !369, line: 755, column: 7)
!2899 = !DILocation(line: 755, column: 20, scope: !2898)
!2900 = !DILocation(line: 756, column: 12, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !369, line: 756, column: 5)
!2902 = distinct !DILexicalBlock(scope: !2898, file: !369, line: 756, column: 5)
!2903 = !DILocation(line: 756, column: 5, scope: !2902)
!2904 = !DILocation(line: 757, column: 7, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !369, line: 757, column: 7)
!2906 = distinct !DILexicalBlock(scope: !2901, file: !369, line: 757, column: 7)
!2907 = !DILocation(line: 757, column: 7, scope: !2906)
!2908 = !DILocation(line: 756, column: 39, scope: !2901)
!2909 = distinct !{!2909, !2903, !2910}
!2910 = !DILocation(line: 757, column: 7, scope: !2902)
!2911 = !DILocation(line: 759, column: 11, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2384, file: !369, line: 759, column: 7)
!2913 = !DILocation(line: 759, column: 7, scope: !2384)
!2914 = !DILocation(line: 760, column: 5, scope: !2912)
!2915 = !DILocation(line: 760, column: 17, scope: !2912)
!2916 = !DILocation(line: 763, column: 2, scope: !2384)
!2917 = !DILocation(line: 766, column: 51, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2384, file: !369, line: 766, column: 7)
!2919 = !DILocation(line: 766, column: 21, scope: !2918)
!2920 = !DILocation(line: 770, column: 42, scope: !2384)
!2921 = !DILocation(line: 768, column: 10, scope: !2384)
!2922 = !DILocation(line: 768, column: 3, scope: !2384)
!2923 = !DILocation(line: 772, column: 1, scope: !2384)
!2924 = distinct !DISubprogram(name: "gettext_quote", scope: !369, file: !369, line: 207, type: !2925, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!49, !49, !5}
!2927 = !{!2928, !2929, !2930, !2931}
!2928 = !DILocalVariable(name: "msgid", arg: 1, scope: !2924, file: !369, line: 207, type: !49)
!2929 = !DILocalVariable(name: "s", arg: 2, scope: !2924, file: !369, line: 207, type: !5)
!2930 = !DILocalVariable(name: "translation", scope: !2924, file: !369, line: 209, type: !49)
!2931 = !DILocalVariable(name: "locale_code", scope: !2924, file: !369, line: 210, type: !49)
!2932 = !DILocation(line: 0, scope: !2924)
!2933 = !DILocation(line: 209, column: 29, scope: !2924)
!2934 = !DILocation(line: 212, column: 19, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2924, file: !369, line: 212, column: 7)
!2936 = !DILocation(line: 212, column: 7, scope: !2924)
!2937 = !DILocation(line: 233, column: 17, scope: !2924)
!2938 = !DILocalVariable(name: "s1", arg: 1, scope: !2939, file: !2940, line: 160, type: !49)
!2939 = distinct !DISubprogram(name: "strcaseeq0", scope: !2940, file: !2940, line: 160, type: !2941, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2943)
!2940 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!51, !49, !49, !48, !48, !48, !48, !48, !48, !48, !48, !48}
!2943 = !{!2938, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2944 = !DILocalVariable(name: "s2", arg: 2, scope: !2939, file: !2940, line: 160, type: !49)
!2945 = !DILocalVariable(name: "s20", arg: 3, scope: !2939, file: !2940, line: 160, type: !48)
!2946 = !DILocalVariable(name: "s21", arg: 4, scope: !2939, file: !2940, line: 160, type: !48)
!2947 = !DILocalVariable(name: "s22", arg: 5, scope: !2939, file: !2940, line: 160, type: !48)
!2948 = !DILocalVariable(name: "s23", arg: 6, scope: !2939, file: !2940, line: 160, type: !48)
!2949 = !DILocalVariable(name: "s24", arg: 7, scope: !2939, file: !2940, line: 160, type: !48)
!2950 = !DILocalVariable(name: "s25", arg: 8, scope: !2939, file: !2940, line: 160, type: !48)
!2951 = !DILocalVariable(name: "s26", arg: 9, scope: !2939, file: !2940, line: 160, type: !48)
!2952 = !DILocalVariable(name: "s27", arg: 10, scope: !2939, file: !2940, line: 160, type: !48)
!2953 = !DILocalVariable(name: "s28", arg: 11, scope: !2939, file: !2940, line: 160, type: !48)
!2954 = !DILocation(line: 0, scope: !2939, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 234, column: 7, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2924, file: !369, line: 234, column: 7)
!2957 = !DILocation(line: 162, column: 7, scope: !2958, inlinedAt: !2955)
!2958 = distinct !DILexicalBlock(scope: !2939, file: !2940, line: 162, column: 7)
!2959 = !DILocalVariable(name: "s1", arg: 1, scope: !2960, file: !2940, line: 146, type: !49)
!2960 = distinct !DISubprogram(name: "strcaseeq1", scope: !2940, file: !2940, line: 146, type: !2961, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!51, !49, !49, !48, !48, !48, !48, !48, !48, !48, !48}
!2963 = !{!2959, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972}
!2964 = !DILocalVariable(name: "s2", arg: 2, scope: !2960, file: !2940, line: 146, type: !49)
!2965 = !DILocalVariable(name: "s21", arg: 3, scope: !2960, file: !2940, line: 146, type: !48)
!2966 = !DILocalVariable(name: "s22", arg: 4, scope: !2960, file: !2940, line: 146, type: !48)
!2967 = !DILocalVariable(name: "s23", arg: 5, scope: !2960, file: !2940, line: 146, type: !48)
!2968 = !DILocalVariable(name: "s24", arg: 6, scope: !2960, file: !2940, line: 146, type: !48)
!2969 = !DILocalVariable(name: "s25", arg: 7, scope: !2960, file: !2940, line: 146, type: !48)
!2970 = !DILocalVariable(name: "s26", arg: 8, scope: !2960, file: !2940, line: 146, type: !48)
!2971 = !DILocalVariable(name: "s27", arg: 9, scope: !2960, file: !2940, line: 146, type: !48)
!2972 = !DILocalVariable(name: "s28", arg: 10, scope: !2960, file: !2940, line: 146, type: !48)
!2973 = !DILocation(line: 0, scope: !2960, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 167, column: 16, scope: !2975, inlinedAt: !2955)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !2940, line: 164, column: 11)
!2976 = distinct !DILexicalBlock(scope: !2958, file: !2940, line: 163, column: 5)
!2977 = !DILocation(line: 148, column: 7, scope: !2978, inlinedAt: !2974)
!2978 = distinct !DILexicalBlock(scope: !2960, file: !2940, line: 148, column: 7)
!2979 = !DILocalVariable(name: "s1", arg: 1, scope: !2980, file: !2940, line: 132, type: !49)
!2980 = distinct !DISubprogram(name: "strcaseeq2", scope: !2940, file: !2940, line: 132, type: !2981, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!51, !49, !49, !48, !48, !48, !48, !48, !48, !48}
!2983 = !{!2979, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991}
!2984 = !DILocalVariable(name: "s2", arg: 2, scope: !2980, file: !2940, line: 132, type: !49)
!2985 = !DILocalVariable(name: "s22", arg: 3, scope: !2980, file: !2940, line: 132, type: !48)
!2986 = !DILocalVariable(name: "s23", arg: 4, scope: !2980, file: !2940, line: 132, type: !48)
!2987 = !DILocalVariable(name: "s24", arg: 5, scope: !2980, file: !2940, line: 132, type: !48)
!2988 = !DILocalVariable(name: "s25", arg: 6, scope: !2980, file: !2940, line: 132, type: !48)
!2989 = !DILocalVariable(name: "s26", arg: 7, scope: !2980, file: !2940, line: 132, type: !48)
!2990 = !DILocalVariable(name: "s27", arg: 8, scope: !2980, file: !2940, line: 132, type: !48)
!2991 = !DILocalVariable(name: "s28", arg: 9, scope: !2980, file: !2940, line: 132, type: !48)
!2992 = !DILocation(line: 0, scope: !2980, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 153, column: 16, scope: !2994, inlinedAt: !2974)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !2940, line: 150, column: 11)
!2995 = distinct !DILexicalBlock(scope: !2978, file: !2940, line: 149, column: 5)
!2996 = !DILocation(line: 134, column: 7, scope: !2997, inlinedAt: !2993)
!2997 = distinct !DILexicalBlock(scope: !2980, file: !2940, line: 134, column: 7)
!2998 = !DILocalVariable(name: "s1", arg: 1, scope: !2999, file: !2940, line: 118, type: !49)
!2999 = distinct !DISubprogram(name: "strcaseeq3", scope: !2940, file: !2940, line: 118, type: !3000, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!51, !49, !49, !48, !48, !48, !48, !48, !48}
!3002 = !{!2998, !3003, !3004, !3005, !3006, !3007, !3008, !3009}
!3003 = !DILocalVariable(name: "s2", arg: 2, scope: !2999, file: !2940, line: 118, type: !49)
!3004 = !DILocalVariable(name: "s23", arg: 3, scope: !2999, file: !2940, line: 118, type: !48)
!3005 = !DILocalVariable(name: "s24", arg: 4, scope: !2999, file: !2940, line: 118, type: !48)
!3006 = !DILocalVariable(name: "s25", arg: 5, scope: !2999, file: !2940, line: 118, type: !48)
!3007 = !DILocalVariable(name: "s26", arg: 6, scope: !2999, file: !2940, line: 118, type: !48)
!3008 = !DILocalVariable(name: "s27", arg: 7, scope: !2999, file: !2940, line: 118, type: !48)
!3009 = !DILocalVariable(name: "s28", arg: 8, scope: !2999, file: !2940, line: 118, type: !48)
!3010 = !DILocation(line: 0, scope: !2999, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 139, column: 16, scope: !3012, inlinedAt: !2993)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !2940, line: 136, column: 11)
!3013 = distinct !DILexicalBlock(scope: !2997, file: !2940, line: 135, column: 5)
!3014 = !DILocation(line: 120, column: 7, scope: !3015, inlinedAt: !3011)
!3015 = distinct !DILexicalBlock(scope: !2999, file: !2940, line: 120, column: 7)
!3016 = !DILocation(line: 120, column: 7, scope: !2999, inlinedAt: !3011)
!3017 = !DILocalVariable(name: "s1", arg: 1, scope: !3018, file: !2940, line: 104, type: !49)
!3018 = distinct !DISubprogram(name: "strcaseeq4", scope: !2940, file: !2940, line: 104, type: !3019, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!51, !49, !49, !48, !48, !48, !48, !48}
!3021 = !{!3017, !3022, !3023, !3024, !3025, !3026, !3027}
!3022 = !DILocalVariable(name: "s2", arg: 2, scope: !3018, file: !2940, line: 104, type: !49)
!3023 = !DILocalVariable(name: "s24", arg: 3, scope: !3018, file: !2940, line: 104, type: !48)
!3024 = !DILocalVariable(name: "s25", arg: 4, scope: !3018, file: !2940, line: 104, type: !48)
!3025 = !DILocalVariable(name: "s26", arg: 5, scope: !3018, file: !2940, line: 104, type: !48)
!3026 = !DILocalVariable(name: "s27", arg: 6, scope: !3018, file: !2940, line: 104, type: !48)
!3027 = !DILocalVariable(name: "s28", arg: 7, scope: !3018, file: !2940, line: 104, type: !48)
!3028 = !DILocation(line: 0, scope: !3018, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 125, column: 16, scope: !3030, inlinedAt: !3011)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !2940, line: 122, column: 11)
!3031 = distinct !DILexicalBlock(scope: !3015, file: !2940, line: 121, column: 5)
!3032 = !DILocation(line: 106, column: 7, scope: !3033, inlinedAt: !3029)
!3033 = distinct !DILexicalBlock(scope: !3018, file: !2940, line: 106, column: 7)
!3034 = !DILocation(line: 106, column: 7, scope: !3018, inlinedAt: !3029)
!3035 = !DILocalVariable(name: "s1", arg: 1, scope: !3036, file: !2940, line: 90, type: !49)
!3036 = distinct !DISubprogram(name: "strcaseeq5", scope: !2940, file: !2940, line: 90, type: !3037, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!51, !49, !49, !48, !48, !48, !48}
!3039 = !{!3035, !3040, !3041, !3042, !3043, !3044}
!3040 = !DILocalVariable(name: "s2", arg: 2, scope: !3036, file: !2940, line: 90, type: !49)
!3041 = !DILocalVariable(name: "s25", arg: 3, scope: !3036, file: !2940, line: 90, type: !48)
!3042 = !DILocalVariable(name: "s26", arg: 4, scope: !3036, file: !2940, line: 90, type: !48)
!3043 = !DILocalVariable(name: "s27", arg: 5, scope: !3036, file: !2940, line: 90, type: !48)
!3044 = !DILocalVariable(name: "s28", arg: 6, scope: !3036, file: !2940, line: 90, type: !48)
!3045 = !DILocation(line: 0, scope: !3036, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 111, column: 16, scope: !3047, inlinedAt: !3029)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !2940, line: 108, column: 11)
!3048 = distinct !DILexicalBlock(scope: !3033, file: !2940, line: 107, column: 5)
!3049 = !DILocation(line: 92, column: 7, scope: !3050, inlinedAt: !3046)
!3050 = distinct !DILexicalBlock(scope: !3036, file: !2940, line: 92, column: 7)
!3051 = !DILocation(line: 92, column: 7, scope: !3036, inlinedAt: !3046)
!3052 = !DILocation(line: 235, column: 12, scope: !2956)
!3053 = !DILocation(line: 235, column: 21, scope: !2956)
!3054 = !DILocation(line: 235, column: 5, scope: !2956)
!3055 = !DILocation(line: 0, scope: !2960, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 167, column: 16, scope: !2975, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 236, column: 7, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2924, file: !369, line: 236, column: 7)
!3059 = !DILocation(line: 148, column: 7, scope: !2978, inlinedAt: !3056)
!3060 = !DILocation(line: 0, scope: !2980, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 153, column: 16, scope: !2994, inlinedAt: !3056)
!3062 = !DILocation(line: 134, column: 7, scope: !2997, inlinedAt: !3061)
!3063 = !DILocation(line: 134, column: 7, scope: !2980, inlinedAt: !3061)
!3064 = !DILocation(line: 0, scope: !2999, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 139, column: 16, scope: !3012, inlinedAt: !3061)
!3066 = !DILocation(line: 120, column: 7, scope: !3015, inlinedAt: !3065)
!3067 = !DILocation(line: 120, column: 7, scope: !2999, inlinedAt: !3065)
!3068 = !DILocation(line: 0, scope: !3018, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 125, column: 16, scope: !3030, inlinedAt: !3065)
!3070 = !DILocation(line: 106, column: 7, scope: !3033, inlinedAt: !3069)
!3071 = !DILocation(line: 106, column: 7, scope: !3018, inlinedAt: !3069)
!3072 = !DILocation(line: 0, scope: !3036, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 111, column: 16, scope: !3047, inlinedAt: !3069)
!3074 = !DILocation(line: 92, column: 7, scope: !3050, inlinedAt: !3073)
!3075 = !DILocation(line: 92, column: 7, scope: !3036, inlinedAt: !3073)
!3076 = !DILocalVariable(name: "s1", arg: 1, scope: !3077, file: !2940, line: 76, type: !49)
!3077 = distinct !DISubprogram(name: "strcaseeq6", scope: !2940, file: !2940, line: 76, type: !3078, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!51, !49, !49, !48, !48, !48}
!3080 = !{!3076, !3081, !3082, !3083, !3084}
!3081 = !DILocalVariable(name: "s2", arg: 2, scope: !3077, file: !2940, line: 76, type: !49)
!3082 = !DILocalVariable(name: "s26", arg: 3, scope: !3077, file: !2940, line: 76, type: !48)
!3083 = !DILocalVariable(name: "s27", arg: 4, scope: !3077, file: !2940, line: 76, type: !48)
!3084 = !DILocalVariable(name: "s28", arg: 5, scope: !3077, file: !2940, line: 76, type: !48)
!3085 = !DILocation(line: 0, scope: !3077, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 97, column: 16, scope: !3087, inlinedAt: !3073)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !2940, line: 94, column: 11)
!3088 = distinct !DILexicalBlock(scope: !3050, file: !2940, line: 93, column: 5)
!3089 = !DILocation(line: 78, column: 7, scope: !3090, inlinedAt: !3086)
!3090 = distinct !DILexicalBlock(scope: !3077, file: !2940, line: 78, column: 7)
!3091 = !DILocation(line: 78, column: 7, scope: !3077, inlinedAt: !3086)
!3092 = !DILocalVariable(name: "s1", arg: 1, scope: !3093, file: !2940, line: 62, type: !49)
!3093 = distinct !DISubprogram(name: "strcaseeq7", scope: !2940, file: !2940, line: 62, type: !3094, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!51, !49, !49, !48, !48}
!3096 = !{!3092, !3097, !3098, !3099}
!3097 = !DILocalVariable(name: "s2", arg: 2, scope: !3093, file: !2940, line: 62, type: !49)
!3098 = !DILocalVariable(name: "s27", arg: 3, scope: !3093, file: !2940, line: 62, type: !48)
!3099 = !DILocalVariable(name: "s28", arg: 4, scope: !3093, file: !2940, line: 62, type: !48)
!3100 = !DILocation(line: 0, scope: !3093, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 83, column: 16, scope: !3102, inlinedAt: !3086)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !2940, line: 80, column: 11)
!3103 = distinct !DILexicalBlock(scope: !3090, file: !2940, line: 79, column: 5)
!3104 = !DILocation(line: 64, column: 7, scope: !3105, inlinedAt: !3101)
!3105 = distinct !DILexicalBlock(scope: !3093, file: !2940, line: 64, column: 7)
!3106 = !DILocation(line: 236, column: 7, scope: !2924)
!3107 = !DILocation(line: 237, column: 12, scope: !3058)
!3108 = !DILocation(line: 237, column: 21, scope: !3058)
!3109 = !DILocation(line: 237, column: 5, scope: !3058)
!3110 = !DILocation(line: 239, column: 13, scope: !2924)
!3111 = !DILocation(line: 239, column: 11, scope: !2924)
!3112 = !DILocation(line: 239, column: 3, scope: !2924)
!3113 = !DILocation(line: 240, column: 1, scope: !2924)
!3114 = distinct !DISubprogram(name: "quotearg_alloc", scope: !369, file: !369, line: 799, type: !3115, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!47, !49, !106, !399}
!3117 = !{!3118, !3119, !3120}
!3118 = !DILocalVariable(name: "arg", arg: 1, scope: !3114, file: !369, line: 799, type: !49)
!3119 = !DILocalVariable(name: "argsize", arg: 2, scope: !3114, file: !369, line: 799, type: !106)
!3120 = !DILocalVariable(name: "o", arg: 3, scope: !3114, file: !369, line: 800, type: !399)
!3121 = !DILocation(line: 0, scope: !3114)
!3122 = !DILocalVariable(name: "arg", arg: 1, scope: !3123, file: !369, line: 812, type: !49)
!3123 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !369, file: !369, line: 812, type: !3124, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!47, !49, !106, !647, !399}
!3126 = !{!3122, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134}
!3127 = !DILocalVariable(name: "argsize", arg: 2, scope: !3123, file: !369, line: 812, type: !106)
!3128 = !DILocalVariable(name: "size", arg: 3, scope: !3123, file: !369, line: 812, type: !647)
!3129 = !DILocalVariable(name: "o", arg: 4, scope: !3123, file: !369, line: 813, type: !399)
!3130 = !DILocalVariable(name: "p", scope: !3123, file: !369, line: 815, type: !399)
!3131 = !DILocalVariable(name: "e", scope: !3123, file: !369, line: 816, type: !51)
!3132 = !DILocalVariable(name: "flags", scope: !3123, file: !369, line: 818, type: !51)
!3133 = !DILocalVariable(name: "bufsize", scope: !3123, file: !369, line: 819, type: !106)
!3134 = !DILocalVariable(name: "buf", scope: !3123, file: !369, line: 823, type: !47)
!3135 = !DILocation(line: 0, scope: !3123, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 802, column: 10, scope: !3114)
!3137 = !DILocation(line: 815, column: 37, scope: !3123, inlinedAt: !3136)
!3138 = !DILocation(line: 816, column: 11, scope: !3123, inlinedAt: !3136)
!3139 = !DILocation(line: 818, column: 18, scope: !3123, inlinedAt: !3136)
!3140 = !DILocation(line: 818, column: 24, scope: !3123, inlinedAt: !3136)
!3141 = !DILocation(line: 819, column: 69, scope: !3123, inlinedAt: !3136)
!3142 = !DILocation(line: 820, column: 53, scope: !3123, inlinedAt: !3136)
!3143 = !DILocation(line: 821, column: 49, scope: !3123, inlinedAt: !3136)
!3144 = !DILocation(line: 822, column: 49, scope: !3123, inlinedAt: !3136)
!3145 = !DILocation(line: 819, column: 20, scope: !3123, inlinedAt: !3136)
!3146 = !DILocation(line: 822, column: 62, scope: !3123, inlinedAt: !3136)
!3147 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !393, line: 216, type: !106)
!3148 = distinct !DISubprogram(name: "xcharalloc", scope: !393, file: !393, line: 216, type: !3149, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!47, !106}
!3151 = !{!3147}
!3152 = !DILocation(line: 0, scope: !3148, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 823, column: 15, scope: !3123, inlinedAt: !3136)
!3154 = !DILocation(line: 218, column: 10, scope: !3148, inlinedAt: !3153)
!3155 = !DILocation(line: 824, column: 60, scope: !3123, inlinedAt: !3136)
!3156 = !DILocation(line: 826, column: 32, scope: !3123, inlinedAt: !3136)
!3157 = !DILocation(line: 826, column: 47, scope: !3123, inlinedAt: !3136)
!3158 = !DILocation(line: 824, column: 3, scope: !3123, inlinedAt: !3136)
!3159 = !DILocation(line: 827, column: 9, scope: !3123, inlinedAt: !3136)
!3160 = !DILocation(line: 802, column: 3, scope: !3114)
!3161 = !DILocation(line: 0, scope: !3123)
!3162 = !DILocation(line: 815, column: 37, scope: !3123)
!3163 = !DILocation(line: 816, column: 11, scope: !3123)
!3164 = !DILocation(line: 818, column: 18, scope: !3123)
!3165 = !DILocation(line: 818, column: 27, scope: !3123)
!3166 = !DILocation(line: 818, column: 24, scope: !3123)
!3167 = !DILocation(line: 819, column: 69, scope: !3123)
!3168 = !DILocation(line: 820, column: 53, scope: !3123)
!3169 = !DILocation(line: 821, column: 49, scope: !3123)
!3170 = !DILocation(line: 822, column: 49, scope: !3123)
!3171 = !DILocation(line: 819, column: 20, scope: !3123)
!3172 = !DILocation(line: 822, column: 62, scope: !3123)
!3173 = !DILocation(line: 0, scope: !3148, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 823, column: 15, scope: !3123)
!3175 = !DILocation(line: 218, column: 10, scope: !3148, inlinedAt: !3174)
!3176 = !DILocation(line: 824, column: 60, scope: !3123)
!3177 = !DILocation(line: 826, column: 32, scope: !3123)
!3178 = !DILocation(line: 826, column: 47, scope: !3123)
!3179 = !DILocation(line: 824, column: 3, scope: !3123)
!3180 = !DILocation(line: 827, column: 9, scope: !3123)
!3181 = !DILocation(line: 828, column: 7, scope: !3123)
!3182 = !DILocation(line: 829, column: 11, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3123, file: !369, line: 828, column: 7)
!3184 = !DILocation(line: 829, column: 5, scope: !3183)
!3185 = !DILocation(line: 830, column: 3, scope: !3123)
!3186 = distinct !DISubprogram(name: "quotearg_free", scope: !369, file: !369, line: 848, type: !133, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3187)
!3187 = !{!3188, !3189}
!3188 = !DILocalVariable(name: "sv", scope: !3186, file: !369, line: 850, type: !475)
!3189 = !DILocalVariable(name: "i", scope: !3186, file: !369, line: 851, type: !51)
!3190 = !DILocation(line: 850, column: 24, scope: !3186)
!3191 = !DILocation(line: 0, scope: !3186)
!3192 = !DILocation(line: 852, column: 19, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !369, line: 852, column: 3)
!3194 = distinct !DILexicalBlock(scope: !3186, file: !369, line: 852, column: 3)
!3195 = !DILocation(line: 852, column: 17, scope: !3193)
!3196 = !DILocation(line: 852, column: 3, scope: !3194)
!3197 = !DILocation(line: 853, column: 17, scope: !3193)
!3198 = !{!3199, !1292, i64 8}
!3199 = !{!"slotvec", !1452, i64 0, !1292, i64 8}
!3200 = !DILocation(line: 853, column: 5, scope: !3193)
!3201 = !DILocation(line: 852, column: 28, scope: !3193)
!3202 = distinct !{!3202, !3196, !3203}
!3203 = !DILocation(line: 853, column: 20, scope: !3194)
!3204 = !DILocation(line: 854, column: 13, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3186, file: !369, line: 854, column: 7)
!3206 = !DILocation(line: 854, column: 17, scope: !3205)
!3207 = !DILocation(line: 854, column: 7, scope: !3186)
!3208 = !DILocation(line: 856, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !369, line: 855, column: 5)
!3210 = !DILocation(line: 857, column: 21, scope: !3209)
!3211 = !{!3199, !1452, i64 0}
!3212 = !DILocation(line: 858, column: 20, scope: !3209)
!3213 = !DILocation(line: 859, column: 5, scope: !3209)
!3214 = !DILocation(line: 860, column: 10, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3186, file: !369, line: 860, column: 7)
!3216 = !DILocation(line: 860, column: 7, scope: !3186)
!3217 = !DILocation(line: 862, column: 13, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3215, file: !369, line: 861, column: 5)
!3219 = !DILocation(line: 862, column: 7, scope: !3218)
!3220 = !DILocation(line: 863, column: 15, scope: !3218)
!3221 = !DILocation(line: 864, column: 5, scope: !3218)
!3222 = !DILocation(line: 865, column: 10, scope: !3186)
!3223 = !DILocation(line: 866, column: 1, scope: !3186)
!3224 = distinct !DISubprogram(name: "quotearg_n", scope: !369, file: !369, line: 931, type: !120, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3225)
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !369, line: 931, type: !51)
!3227 = !DILocalVariable(name: "arg", arg: 2, scope: !3224, file: !369, line: 931, type: !49)
!3228 = !DILocation(line: 0, scope: !3224)
!3229 = !DILocation(line: 933, column: 10, scope: !3224)
!3230 = !DILocation(line: 933, column: 3, scope: !3224)
!3231 = distinct !DISubprogram(name: "quotearg_n_options", scope: !369, file: !369, line: 877, type: !3232, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3234)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!47, !51, !49, !106, !399}
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241, !3244, !3245, !3247, !3248, !3249}
!3235 = !DILocalVariable(name: "n", arg: 1, scope: !3231, file: !369, line: 877, type: !51)
!3236 = !DILocalVariable(name: "arg", arg: 2, scope: !3231, file: !369, line: 877, type: !49)
!3237 = !DILocalVariable(name: "argsize", arg: 3, scope: !3231, file: !369, line: 877, type: !106)
!3238 = !DILocalVariable(name: "options", arg: 4, scope: !3231, file: !369, line: 878, type: !399)
!3239 = !DILocalVariable(name: "e", scope: !3231, file: !369, line: 880, type: !51)
!3240 = !DILocalVariable(name: "sv", scope: !3231, file: !369, line: 882, type: !475)
!3241 = !DILocalVariable(name: "preallocated", scope: !3242, file: !369, line: 889, type: !195)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !369, line: 888, column: 5)
!3243 = distinct !DILexicalBlock(scope: !3231, file: !369, line: 887, column: 7)
!3244 = !DILocalVariable(name: "nmax", scope: !3242, file: !369, line: 890, type: !51)
!3245 = !DILocalVariable(name: "size", scope: !3246, file: !369, line: 903, type: !106)
!3246 = distinct !DILexicalBlock(scope: !3231, file: !369, line: 902, column: 3)
!3247 = !DILocalVariable(name: "val", scope: !3246, file: !369, line: 904, type: !47)
!3248 = !DILocalVariable(name: "flags", scope: !3246, file: !369, line: 906, type: !51)
!3249 = !DILocalVariable(name: "qsize", scope: !3246, file: !369, line: 907, type: !106)
!3250 = !DILocation(line: 0, scope: !3231)
!3251 = !DILocation(line: 880, column: 11, scope: !3231)
!3252 = !DILocation(line: 882, column: 24, scope: !3231)
!3253 = !DILocation(line: 884, column: 9, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3231, file: !369, line: 884, column: 7)
!3255 = !DILocation(line: 884, column: 7, scope: !3231)
!3256 = !DILocation(line: 885, column: 5, scope: !3254)
!3257 = !DILocation(line: 887, column: 7, scope: !3243)
!3258 = !DILocation(line: 887, column: 14, scope: !3243)
!3259 = !DILocation(line: 887, column: 7, scope: !3231)
!3260 = !DILocation(line: 889, column: 31, scope: !3242)
!3261 = !DILocation(line: 0, scope: !3242)
!3262 = !DILocation(line: 892, column: 16, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3242, file: !369, line: 892, column: 11)
!3264 = !DILocation(line: 892, column: 11, scope: !3242)
!3265 = !DILocation(line: 893, column: 9, scope: !3263)
!3266 = !DILocation(line: 895, column: 32, scope: !3242)
!3267 = !DILocation(line: 895, column: 61, scope: !3242)
!3268 = !DILocation(line: 895, column: 58, scope: !3242)
!3269 = !DILocation(line: 895, column: 66, scope: !3242)
!3270 = !DILocation(line: 895, column: 22, scope: !3242)
!3271 = !DILocation(line: 895, column: 15, scope: !3242)
!3272 = !DILocation(line: 896, column: 11, scope: !3242)
!3273 = !DILocation(line: 897, column: 15, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3242, file: !369, line: 896, column: 11)
!3275 = !{i64 0, i64 8, !2161, i64 8, i64 8, !1291}
!3276 = !DILocation(line: 897, column: 9, scope: !3274)
!3277 = !DILocation(line: 898, column: 20, scope: !3242)
!3278 = !DILocation(line: 898, column: 18, scope: !3242)
!3279 = !DILocation(line: 898, column: 15, scope: !3242)
!3280 = !DILocation(line: 898, column: 38, scope: !3242)
!3281 = !DILocation(line: 898, column: 31, scope: !3242)
!3282 = !DILocation(line: 898, column: 48, scope: !3242)
!3283 = !DILocation(line: 0, scope: !2682, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 898, column: 7, scope: !3242)
!3285 = !DILocation(line: 71, column: 10, scope: !2682, inlinedAt: !3284)
!3286 = !DILocation(line: 899, column: 14, scope: !3242)
!3287 = !DILocation(line: 900, column: 5, scope: !3242)
!3288 = !DILocation(line: 903, column: 19, scope: !3246)
!3289 = !DILocation(line: 903, column: 25, scope: !3246)
!3290 = !DILocation(line: 0, scope: !3246)
!3291 = !DILocation(line: 904, column: 23, scope: !3246)
!3292 = !DILocation(line: 906, column: 26, scope: !3246)
!3293 = !DILocation(line: 906, column: 32, scope: !3246)
!3294 = !DILocation(line: 908, column: 55, scope: !3246)
!3295 = !DILocation(line: 909, column: 46, scope: !3246)
!3296 = !DILocation(line: 910, column: 55, scope: !3246)
!3297 = !DILocation(line: 911, column: 55, scope: !3246)
!3298 = !DILocation(line: 907, column: 20, scope: !3246)
!3299 = !DILocation(line: 913, column: 14, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3246, file: !369, line: 913, column: 9)
!3301 = !DILocation(line: 913, column: 9, scope: !3246)
!3302 = !DILocation(line: 915, column: 35, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !369, line: 914, column: 7)
!3304 = !DILocation(line: 915, column: 20, scope: !3303)
!3305 = !DILocation(line: 916, column: 17, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !369, line: 916, column: 13)
!3307 = !DILocation(line: 916, column: 13, scope: !3303)
!3308 = !DILocation(line: 917, column: 11, scope: !3306)
!3309 = !DILocation(line: 0, scope: !3148, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 918, column: 27, scope: !3303)
!3311 = !DILocation(line: 218, column: 10, scope: !3148, inlinedAt: !3310)
!3312 = !DILocation(line: 918, column: 19, scope: !3303)
!3313 = !DILocation(line: 919, column: 69, scope: !3303)
!3314 = !DILocation(line: 921, column: 44, scope: !3303)
!3315 = !DILocation(line: 922, column: 44, scope: !3303)
!3316 = !DILocation(line: 919, column: 9, scope: !3303)
!3317 = !DILocation(line: 923, column: 7, scope: !3303)
!3318 = !DILocation(line: 925, column: 11, scope: !3246)
!3319 = !DILocation(line: 926, column: 5, scope: !3246)
!3320 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !369, file: !369, line: 937, type: !3321, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!47, !51, !49, !106}
!3323 = !{!3324, !3325, !3326}
!3324 = !DILocalVariable(name: "n", arg: 1, scope: !3320, file: !369, line: 937, type: !51)
!3325 = !DILocalVariable(name: "arg", arg: 2, scope: !3320, file: !369, line: 937, type: !49)
!3326 = !DILocalVariable(name: "argsize", arg: 3, scope: !3320, file: !369, line: 937, type: !106)
!3327 = !DILocation(line: 0, scope: !3320)
!3328 = !DILocation(line: 939, column: 10, scope: !3320)
!3329 = !DILocation(line: 939, column: 3, scope: !3320)
!3330 = distinct !DISubprogram(name: "quotearg", scope: !369, file: !369, line: 943, type: !126, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3331)
!3331 = !{!3332}
!3332 = !DILocalVariable(name: "arg", arg: 1, scope: !3330, file: !369, line: 943, type: !49)
!3333 = !DILocation(line: 0, scope: !3330)
!3334 = !DILocation(line: 0, scope: !3224, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 945, column: 10, scope: !3330)
!3336 = !DILocation(line: 933, column: 10, scope: !3224, inlinedAt: !3335)
!3337 = !DILocation(line: 945, column: 3, scope: !3330)
!3338 = distinct !DISubprogram(name: "quotearg_mem", scope: !369, file: !369, line: 949, type: !3339, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!47, !49, !106}
!3341 = !{!3342, !3343}
!3342 = !DILocalVariable(name: "arg", arg: 1, scope: !3338, file: !369, line: 949, type: !49)
!3343 = !DILocalVariable(name: "argsize", arg: 2, scope: !3338, file: !369, line: 949, type: !106)
!3344 = !DILocation(line: 0, scope: !3338)
!3345 = !DILocation(line: 0, scope: !3320, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 951, column: 10, scope: !3338)
!3347 = !DILocation(line: 939, column: 10, scope: !3320, inlinedAt: !3346)
!3348 = !DILocation(line: 951, column: 3, scope: !3338)
!3349 = distinct !DISubprogram(name: "quotearg_n_style", scope: !369, file: !369, line: 955, type: !162, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3350)
!3350 = !{!3351, !3352, !3353, !3354}
!3351 = !DILocalVariable(name: "n", arg: 1, scope: !3349, file: !369, line: 955, type: !51)
!3352 = !DILocalVariable(name: "s", arg: 2, scope: !3349, file: !369, line: 955, type: !5)
!3353 = !DILocalVariable(name: "arg", arg: 3, scope: !3349, file: !369, line: 955, type: !49)
!3354 = !DILocalVariable(name: "o", scope: !3349, file: !369, line: 957, type: !400)
!3355 = !DILocation(line: 0, scope: !3349)
!3356 = !DILocation(line: 957, column: 3, scope: !3349)
!3357 = !DILocation(line: 957, column: 32, scope: !3349)
!3358 = !DILocalVariable(name: "style", arg: 1, scope: !3359, file: !369, line: 193, type: !5)
!3359 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !369, file: !369, line: 193, type: !3360, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!401, !5}
!3362 = !{!3358, !3363}
!3363 = !DILocalVariable(name: "o", scope: !3359, file: !369, line: 195, type: !401)
!3364 = !DILocation(line: 0, scope: !3359, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 957, column: 36, scope: !3349)
!3366 = !DILocation(line: 195, column: 26, scope: !3359, inlinedAt: !3365)
!3367 = !{!3368}
!3368 = distinct !{!3368, !3369, !"quoting_options_from_style: argument 0"}
!3369 = distinct !{!3369, !"quoting_options_from_style"}
!3370 = !DILocation(line: 196, column: 13, scope: !3371, inlinedAt: !3365)
!3371 = distinct !DILexicalBlock(scope: !3359, file: !369, line: 196, column: 7)
!3372 = !DILocation(line: 196, column: 7, scope: !3359, inlinedAt: !3365)
!3373 = !DILocation(line: 197, column: 5, scope: !3371, inlinedAt: !3365)
!3374 = !DILocation(line: 198, column: 5, scope: !3359, inlinedAt: !3365)
!3375 = !DILocation(line: 198, column: 11, scope: !3359, inlinedAt: !3365)
!3376 = !DILocation(line: 958, column: 10, scope: !3349)
!3377 = !DILocation(line: 959, column: 1, scope: !3349)
!3378 = !DILocation(line: 958, column: 3, scope: !3349)
!3379 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !369, file: !369, line: 962, type: !3380, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!47, !51, !5, !49, !106}
!3382 = !{!3383, !3384, !3385, !3386, !3387}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !369, line: 962, type: !51)
!3384 = !DILocalVariable(name: "s", arg: 2, scope: !3379, file: !369, line: 962, type: !5)
!3385 = !DILocalVariable(name: "arg", arg: 3, scope: !3379, file: !369, line: 963, type: !49)
!3386 = !DILocalVariable(name: "argsize", arg: 4, scope: !3379, file: !369, line: 963, type: !106)
!3387 = !DILocalVariable(name: "o", scope: !3379, file: !369, line: 965, type: !400)
!3388 = !DILocation(line: 0, scope: !3379)
!3389 = !DILocation(line: 965, column: 3, scope: !3379)
!3390 = !DILocation(line: 965, column: 32, scope: !3379)
!3391 = !DILocation(line: 0, scope: !3359, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 965, column: 36, scope: !3379)
!3393 = !DILocation(line: 195, column: 26, scope: !3359, inlinedAt: !3392)
!3394 = !{!3395}
!3395 = distinct !{!3395, !3396, !"quoting_options_from_style: argument 0"}
!3396 = distinct !{!3396, !"quoting_options_from_style"}
!3397 = !DILocation(line: 196, column: 13, scope: !3371, inlinedAt: !3392)
!3398 = !DILocation(line: 196, column: 7, scope: !3359, inlinedAt: !3392)
!3399 = !DILocation(line: 197, column: 5, scope: !3371, inlinedAt: !3392)
!3400 = !DILocation(line: 198, column: 5, scope: !3359, inlinedAt: !3392)
!3401 = !DILocation(line: 198, column: 11, scope: !3359, inlinedAt: !3392)
!3402 = !DILocation(line: 966, column: 10, scope: !3379)
!3403 = !DILocation(line: 967, column: 1, scope: !3379)
!3404 = !DILocation(line: 966, column: 3, scope: !3379)
!3405 = distinct !DISubprogram(name: "quotearg_style", scope: !369, file: !369, line: 970, type: !3406, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!47, !5, !49}
!3408 = !{!3409, !3410}
!3409 = !DILocalVariable(name: "s", arg: 1, scope: !3405, file: !369, line: 970, type: !5)
!3410 = !DILocalVariable(name: "arg", arg: 2, scope: !3405, file: !369, line: 970, type: !49)
!3411 = !DILocation(line: 195, column: 26, scope: !3359, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 957, column: 36, scope: !3349, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 972, column: 10, scope: !3405)
!3414 = !DILocation(line: 957, column: 32, scope: !3349, inlinedAt: !3413)
!3415 = !DILocation(line: 0, scope: !3405)
!3416 = !DILocation(line: 0, scope: !3349, inlinedAt: !3413)
!3417 = !DILocation(line: 957, column: 3, scope: !3349, inlinedAt: !3413)
!3418 = !DILocation(line: 0, scope: !3359, inlinedAt: !3412)
!3419 = !{!3420}
!3420 = distinct !{!3420, !3421, !"quoting_options_from_style: argument 0"}
!3421 = distinct !{!3421, !"quoting_options_from_style"}
!3422 = !DILocation(line: 196, column: 13, scope: !3371, inlinedAt: !3412)
!3423 = !DILocation(line: 196, column: 7, scope: !3359, inlinedAt: !3412)
!3424 = !DILocation(line: 197, column: 5, scope: !3371, inlinedAt: !3412)
!3425 = !DILocation(line: 198, column: 5, scope: !3359, inlinedAt: !3412)
!3426 = !DILocation(line: 198, column: 11, scope: !3359, inlinedAt: !3412)
!3427 = !DILocation(line: 958, column: 10, scope: !3349, inlinedAt: !3413)
!3428 = !DILocation(line: 959, column: 1, scope: !3349, inlinedAt: !3413)
!3429 = !DILocation(line: 972, column: 3, scope: !3405)
!3430 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !369, file: !369, line: 976, type: !3431, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!47, !5, !49, !106}
!3433 = !{!3434, !3435, !3436}
!3434 = !DILocalVariable(name: "s", arg: 1, scope: !3430, file: !369, line: 976, type: !5)
!3435 = !DILocalVariable(name: "arg", arg: 2, scope: !3430, file: !369, line: 976, type: !49)
!3436 = !DILocalVariable(name: "argsize", arg: 3, scope: !3430, file: !369, line: 976, type: !106)
!3437 = !DILocation(line: 195, column: 26, scope: !3359, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 965, column: 36, scope: !3379, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 978, column: 10, scope: !3430)
!3440 = !DILocation(line: 965, column: 32, scope: !3379, inlinedAt: !3439)
!3441 = !DILocation(line: 0, scope: !3430)
!3442 = !DILocation(line: 0, scope: !3379, inlinedAt: !3439)
!3443 = !DILocation(line: 965, column: 3, scope: !3379, inlinedAt: !3439)
!3444 = !DILocation(line: 0, scope: !3359, inlinedAt: !3438)
!3445 = !{!3446}
!3446 = distinct !{!3446, !3447, !"quoting_options_from_style: argument 0"}
!3447 = distinct !{!3447, !"quoting_options_from_style"}
!3448 = !DILocation(line: 196, column: 13, scope: !3371, inlinedAt: !3438)
!3449 = !DILocation(line: 196, column: 7, scope: !3359, inlinedAt: !3438)
!3450 = !DILocation(line: 197, column: 5, scope: !3371, inlinedAt: !3438)
!3451 = !DILocation(line: 198, column: 5, scope: !3359, inlinedAt: !3438)
!3452 = !DILocation(line: 198, column: 11, scope: !3359, inlinedAt: !3438)
!3453 = !DILocation(line: 966, column: 10, scope: !3379, inlinedAt: !3439)
!3454 = !DILocation(line: 967, column: 1, scope: !3379, inlinedAt: !3439)
!3455 = !DILocation(line: 978, column: 3, scope: !3430)
!3456 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !369, file: !369, line: 982, type: !3457, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!47, !49, !106, !48}
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DILocalVariable(name: "arg", arg: 1, scope: !3456, file: !369, line: 982, type: !49)
!3461 = !DILocalVariable(name: "argsize", arg: 2, scope: !3456, file: !369, line: 982, type: !106)
!3462 = !DILocalVariable(name: "ch", arg: 3, scope: !3456, file: !369, line: 982, type: !48)
!3463 = !DILocalVariable(name: "options", scope: !3456, file: !369, line: 984, type: !401)
!3464 = !DILocation(line: 0, scope: !3456)
!3465 = !DILocation(line: 984, column: 3, scope: !3456)
!3466 = !DILocation(line: 984, column: 26, scope: !3456)
!3467 = !DILocation(line: 985, column: 13, scope: !3456)
!3468 = !{i64 0, i64 4, !1457, i64 4, i64 4, !1368, i64 8, i64 32, !1457, i64 40, i64 8, !1291, i64 48, i64 8, !1291}
!3469 = !DILocation(line: 0, scope: !2296, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 986, column: 3, scope: !3456)
!3471 = !DILocation(line: 156, column: 62, scope: !2296, inlinedAt: !3470)
!3472 = !DILocation(line: 156, column: 57, scope: !2296, inlinedAt: !3470)
!3473 = !DILocation(line: 157, column: 15, scope: !2296, inlinedAt: !3470)
!3474 = !DILocation(line: 158, column: 12, scope: !2296, inlinedAt: !3470)
!3475 = !DILocation(line: 158, column: 15, scope: !2296, inlinedAt: !3470)
!3476 = !DILocation(line: 158, column: 25, scope: !2296, inlinedAt: !3470)
!3477 = !DILocation(line: 159, column: 18, scope: !2296, inlinedAt: !3470)
!3478 = !DILocation(line: 159, column: 23, scope: !2296, inlinedAt: !3470)
!3479 = !DILocation(line: 159, column: 6, scope: !2296, inlinedAt: !3470)
!3480 = !DILocation(line: 987, column: 10, scope: !3456)
!3481 = !DILocation(line: 988, column: 1, scope: !3456)
!3482 = !DILocation(line: 987, column: 3, scope: !3456)
!3483 = distinct !DISubprogram(name: "quotearg_char", scope: !369, file: !369, line: 991, type: !3484, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!47, !49, !48}
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "arg", arg: 1, scope: !3483, file: !369, line: 991, type: !49)
!3488 = !DILocalVariable(name: "ch", arg: 2, scope: !3483, file: !369, line: 991, type: !48)
!3489 = !DILocation(line: 984, column: 26, scope: !3456, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 993, column: 10, scope: !3483)
!3491 = !DILocation(line: 0, scope: !3483)
!3492 = !DILocation(line: 0, scope: !3456, inlinedAt: !3490)
!3493 = !DILocation(line: 984, column: 3, scope: !3456, inlinedAt: !3490)
!3494 = !DILocation(line: 985, column: 13, scope: !3456, inlinedAt: !3490)
!3495 = !DILocation(line: 0, scope: !2296, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 986, column: 3, scope: !3456, inlinedAt: !3490)
!3497 = !DILocation(line: 156, column: 62, scope: !2296, inlinedAt: !3496)
!3498 = !DILocation(line: 156, column: 57, scope: !2296, inlinedAt: !3496)
!3499 = !DILocation(line: 157, column: 15, scope: !2296, inlinedAt: !3496)
!3500 = !DILocation(line: 158, column: 12, scope: !2296, inlinedAt: !3496)
!3501 = !DILocation(line: 158, column: 15, scope: !2296, inlinedAt: !3496)
!3502 = !DILocation(line: 158, column: 25, scope: !2296, inlinedAt: !3496)
!3503 = !DILocation(line: 159, column: 18, scope: !2296, inlinedAt: !3496)
!3504 = !DILocation(line: 159, column: 23, scope: !2296, inlinedAt: !3496)
!3505 = !DILocation(line: 159, column: 6, scope: !2296, inlinedAt: !3496)
!3506 = !DILocation(line: 987, column: 10, scope: !3456, inlinedAt: !3490)
!3507 = !DILocation(line: 988, column: 1, scope: !3456, inlinedAt: !3490)
!3508 = !DILocation(line: 993, column: 3, scope: !3483)
!3509 = distinct !DISubprogram(name: "quotearg_colon", scope: !369, file: !369, line: 997, type: !126, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3510)
!3510 = !{!3511}
!3511 = !DILocalVariable(name: "arg", arg: 1, scope: !3509, file: !369, line: 997, type: !49)
!3512 = !DILocation(line: 984, column: 26, scope: !3456, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 993, column: 10, scope: !3483, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 999, column: 10, scope: !3509)
!3515 = !DILocation(line: 0, scope: !3509)
!3516 = !DILocation(line: 0, scope: !3483, inlinedAt: !3514)
!3517 = !DILocation(line: 0, scope: !3456, inlinedAt: !3513)
!3518 = !DILocation(line: 984, column: 3, scope: !3456, inlinedAt: !3513)
!3519 = !DILocation(line: 985, column: 13, scope: !3456, inlinedAt: !3513)
!3520 = !DILocation(line: 0, scope: !2296, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 986, column: 3, scope: !3456, inlinedAt: !3513)
!3522 = !DILocation(line: 156, column: 57, scope: !2296, inlinedAt: !3521)
!3523 = !DILocation(line: 158, column: 12, scope: !2296, inlinedAt: !3521)
!3524 = !DILocation(line: 159, column: 6, scope: !2296, inlinedAt: !3521)
!3525 = !DILocation(line: 987, column: 10, scope: !3456, inlinedAt: !3513)
!3526 = !DILocation(line: 988, column: 1, scope: !3456, inlinedAt: !3513)
!3527 = !DILocation(line: 999, column: 3, scope: !3509)
!3528 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !369, file: !369, line: 1003, type: !3339, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3529)
!3529 = !{!3530, !3531}
!3530 = !DILocalVariable(name: "arg", arg: 1, scope: !3528, file: !369, line: 1003, type: !49)
!3531 = !DILocalVariable(name: "argsize", arg: 2, scope: !3528, file: !369, line: 1003, type: !106)
!3532 = !DILocation(line: 984, column: 26, scope: !3456, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 1005, column: 10, scope: !3528)
!3534 = !DILocation(line: 0, scope: !3528)
!3535 = !DILocation(line: 0, scope: !3456, inlinedAt: !3533)
!3536 = !DILocation(line: 984, column: 3, scope: !3456, inlinedAt: !3533)
!3537 = !DILocation(line: 985, column: 13, scope: !3456, inlinedAt: !3533)
!3538 = !DILocation(line: 0, scope: !2296, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 986, column: 3, scope: !3456, inlinedAt: !3533)
!3540 = !DILocation(line: 156, column: 57, scope: !2296, inlinedAt: !3539)
!3541 = !DILocation(line: 158, column: 12, scope: !2296, inlinedAt: !3539)
!3542 = !DILocation(line: 159, column: 6, scope: !2296, inlinedAt: !3539)
!3543 = !DILocation(line: 987, column: 10, scope: !3456, inlinedAt: !3533)
!3544 = !DILocation(line: 988, column: 1, scope: !3456, inlinedAt: !3533)
!3545 = !DILocation(line: 1005, column: 3, scope: !3528)
!3546 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !369, file: !369, line: 1009, type: !162, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3547)
!3547 = !{!3548, !3549, !3550, !3551}
!3548 = !DILocalVariable(name: "n", arg: 1, scope: !3546, file: !369, line: 1009, type: !51)
!3549 = !DILocalVariable(name: "s", arg: 2, scope: !3546, file: !369, line: 1009, type: !5)
!3550 = !DILocalVariable(name: "arg", arg: 3, scope: !3546, file: !369, line: 1009, type: !49)
!3551 = !DILocalVariable(name: "options", scope: !3546, file: !369, line: 1011, type: !401)
!3552 = !DILocation(line: 195, column: 26, scope: !3359, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 1012, column: 13, scope: !3546)
!3554 = !DILocation(line: 0, scope: !3546)
!3555 = !DILocation(line: 1011, column: 3, scope: !3546)
!3556 = !DILocation(line: 1011, column: 26, scope: !3546)
!3557 = !DILocation(line: 1012, column: 13, scope: !3546)
!3558 = !DILocation(line: 0, scope: !3359, inlinedAt: !3553)
!3559 = !{!3560}
!3560 = distinct !{!3560, !3561, !"quoting_options_from_style: argument 0"}
!3561 = distinct !{!3561, !"quoting_options_from_style"}
!3562 = !DILocation(line: 196, column: 13, scope: !3371, inlinedAt: !3553)
!3563 = !DILocation(line: 196, column: 7, scope: !3359, inlinedAt: !3553)
!3564 = !DILocation(line: 197, column: 5, scope: !3371, inlinedAt: !3553)
!3565 = !DILocation(line: 0, scope: !2296, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 1013, column: 3, scope: !3546)
!3567 = !DILocation(line: 156, column: 57, scope: !2296, inlinedAt: !3566)
!3568 = !DILocation(line: 158, column: 12, scope: !2296, inlinedAt: !3566)
!3569 = !DILocation(line: 159, column: 6, scope: !2296, inlinedAt: !3566)
!3570 = !DILocation(line: 1014, column: 10, scope: !3546)
!3571 = !DILocation(line: 1015, column: 1, scope: !3546)
!3572 = !DILocation(line: 1014, column: 3, scope: !3546)
!3573 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !369, file: !369, line: 1018, type: !3574, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!47, !51, !49, !49, !49}
!3576 = !{!3577, !3578, !3579, !3580}
!3577 = !DILocalVariable(name: "n", arg: 1, scope: !3573, file: !369, line: 1018, type: !51)
!3578 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3573, file: !369, line: 1018, type: !49)
!3579 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3573, file: !369, line: 1019, type: !49)
!3580 = !DILocalVariable(name: "arg", arg: 4, scope: !3573, file: !369, line: 1019, type: !49)
!3581 = !DILocalVariable(name: "o", scope: !3582, file: !369, line: 1030, type: !401)
!3582 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !369, file: !369, line: 1026, type: !3583, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!47, !51, !49, !49, !49, !106}
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3581}
!3586 = !DILocalVariable(name: "n", arg: 1, scope: !3582, file: !369, line: 1026, type: !51)
!3587 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3582, file: !369, line: 1026, type: !49)
!3588 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3582, file: !369, line: 1027, type: !49)
!3589 = !DILocalVariable(name: "arg", arg: 4, scope: !3582, file: !369, line: 1028, type: !49)
!3590 = !DILocalVariable(name: "argsize", arg: 5, scope: !3582, file: !369, line: 1028, type: !106)
!3591 = !DILocation(line: 1030, column: 26, scope: !3582, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 1021, column: 10, scope: !3573)
!3593 = !DILocation(line: 0, scope: !3573)
!3594 = !DILocation(line: 0, scope: !3582, inlinedAt: !3592)
!3595 = !DILocation(line: 1030, column: 3, scope: !3582, inlinedAt: !3592)
!3596 = !DILocation(line: 1030, column: 30, scope: !3582, inlinedAt: !3592)
!3597 = !DILocation(line: 0, scope: !2336, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 1031, column: 3, scope: !3582, inlinedAt: !3592)
!3599 = !DILocation(line: 184, column: 6, scope: !2336, inlinedAt: !3598)
!3600 = !DILocation(line: 184, column: 12, scope: !2336, inlinedAt: !3598)
!3601 = !DILocation(line: 185, column: 8, scope: !2350, inlinedAt: !3598)
!3602 = !DILocation(line: 185, column: 23, scope: !2350, inlinedAt: !3598)
!3603 = !DILocation(line: 185, column: 19, scope: !2350, inlinedAt: !3598)
!3604 = !DILocation(line: 186, column: 5, scope: !2350, inlinedAt: !3598)
!3605 = !DILocation(line: 187, column: 6, scope: !2336, inlinedAt: !3598)
!3606 = !DILocation(line: 187, column: 17, scope: !2336, inlinedAt: !3598)
!3607 = !DILocation(line: 188, column: 6, scope: !2336, inlinedAt: !3598)
!3608 = !DILocation(line: 188, column: 18, scope: !2336, inlinedAt: !3598)
!3609 = !DILocation(line: 1032, column: 10, scope: !3582, inlinedAt: !3592)
!3610 = !DILocation(line: 1033, column: 1, scope: !3582, inlinedAt: !3592)
!3611 = !DILocation(line: 1021, column: 3, scope: !3573)
!3612 = !DILocation(line: 0, scope: !3582)
!3613 = !DILocation(line: 1030, column: 3, scope: !3582)
!3614 = !DILocation(line: 1030, column: 26, scope: !3582)
!3615 = !DILocation(line: 1030, column: 30, scope: !3582)
!3616 = !DILocation(line: 0, scope: !2336, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 1031, column: 3, scope: !3582)
!3618 = !DILocation(line: 184, column: 6, scope: !2336, inlinedAt: !3617)
!3619 = !DILocation(line: 184, column: 12, scope: !2336, inlinedAt: !3617)
!3620 = !DILocation(line: 185, column: 8, scope: !2350, inlinedAt: !3617)
!3621 = !DILocation(line: 185, column: 23, scope: !2350, inlinedAt: !3617)
!3622 = !DILocation(line: 185, column: 19, scope: !2350, inlinedAt: !3617)
!3623 = !DILocation(line: 186, column: 5, scope: !2350, inlinedAt: !3617)
!3624 = !DILocation(line: 187, column: 6, scope: !2336, inlinedAt: !3617)
!3625 = !DILocation(line: 187, column: 17, scope: !2336, inlinedAt: !3617)
!3626 = !DILocation(line: 188, column: 6, scope: !2336, inlinedAt: !3617)
!3627 = !DILocation(line: 188, column: 18, scope: !2336, inlinedAt: !3617)
!3628 = !DILocation(line: 1032, column: 10, scope: !3582)
!3629 = !DILocation(line: 1033, column: 1, scope: !3582)
!3630 = !DILocation(line: 1032, column: 3, scope: !3582)
!3631 = distinct !DISubprogram(name: "quotearg_custom", scope: !369, file: !369, line: 1036, type: !3632, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3634)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!47, !49, !49, !49}
!3634 = !{!3635, !3636, !3637}
!3635 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3631, file: !369, line: 1036, type: !49)
!3636 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3631, file: !369, line: 1036, type: !49)
!3637 = !DILocalVariable(name: "arg", arg: 3, scope: !3631, file: !369, line: 1037, type: !49)
!3638 = !DILocation(line: 1030, column: 26, scope: !3582, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 1021, column: 10, scope: !3573, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 1039, column: 10, scope: !3631)
!3641 = !DILocation(line: 0, scope: !3631)
!3642 = !DILocation(line: 0, scope: !3573, inlinedAt: !3640)
!3643 = !DILocation(line: 0, scope: !3582, inlinedAt: !3639)
!3644 = !DILocation(line: 1030, column: 3, scope: !3582, inlinedAt: !3639)
!3645 = !DILocation(line: 1030, column: 30, scope: !3582, inlinedAt: !3639)
!3646 = !DILocation(line: 0, scope: !2336, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 1031, column: 3, scope: !3582, inlinedAt: !3639)
!3648 = !DILocation(line: 184, column: 6, scope: !2336, inlinedAt: !3647)
!3649 = !DILocation(line: 184, column: 12, scope: !2336, inlinedAt: !3647)
!3650 = !DILocation(line: 185, column: 8, scope: !2350, inlinedAt: !3647)
!3651 = !DILocation(line: 185, column: 23, scope: !2350, inlinedAt: !3647)
!3652 = !DILocation(line: 185, column: 19, scope: !2350, inlinedAt: !3647)
!3653 = !DILocation(line: 186, column: 5, scope: !2350, inlinedAt: !3647)
!3654 = !DILocation(line: 187, column: 6, scope: !2336, inlinedAt: !3647)
!3655 = !DILocation(line: 187, column: 17, scope: !2336, inlinedAt: !3647)
!3656 = !DILocation(line: 188, column: 6, scope: !2336, inlinedAt: !3647)
!3657 = !DILocation(line: 188, column: 18, scope: !2336, inlinedAt: !3647)
!3658 = !DILocation(line: 1032, column: 10, scope: !3582, inlinedAt: !3639)
!3659 = !DILocation(line: 1033, column: 1, scope: !3582, inlinedAt: !3639)
!3660 = !DILocation(line: 1039, column: 3, scope: !3631)
!3661 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !369, file: !369, line: 1043, type: !3662, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!47, !49, !49, !49, !106}
!3664 = !{!3665, !3666, !3667, !3668}
!3665 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3661, file: !369, line: 1043, type: !49)
!3666 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3661, file: !369, line: 1043, type: !49)
!3667 = !DILocalVariable(name: "arg", arg: 3, scope: !3661, file: !369, line: 1044, type: !49)
!3668 = !DILocalVariable(name: "argsize", arg: 4, scope: !3661, file: !369, line: 1044, type: !106)
!3669 = !DILocation(line: 1030, column: 26, scope: !3582, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1046, column: 10, scope: !3661)
!3671 = !DILocation(line: 0, scope: !3661)
!3672 = !DILocation(line: 0, scope: !3582, inlinedAt: !3670)
!3673 = !DILocation(line: 1030, column: 3, scope: !3582, inlinedAt: !3670)
!3674 = !DILocation(line: 1030, column: 30, scope: !3582, inlinedAt: !3670)
!3675 = !DILocation(line: 0, scope: !2336, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 1031, column: 3, scope: !3582, inlinedAt: !3670)
!3677 = !DILocation(line: 184, column: 6, scope: !2336, inlinedAt: !3676)
!3678 = !DILocation(line: 184, column: 12, scope: !2336, inlinedAt: !3676)
!3679 = !DILocation(line: 185, column: 8, scope: !2350, inlinedAt: !3676)
!3680 = !DILocation(line: 185, column: 23, scope: !2350, inlinedAt: !3676)
!3681 = !DILocation(line: 185, column: 19, scope: !2350, inlinedAt: !3676)
!3682 = !DILocation(line: 186, column: 5, scope: !2350, inlinedAt: !3676)
!3683 = !DILocation(line: 187, column: 6, scope: !2336, inlinedAt: !3676)
!3684 = !DILocation(line: 187, column: 17, scope: !2336, inlinedAt: !3676)
!3685 = !DILocation(line: 188, column: 6, scope: !2336, inlinedAt: !3676)
!3686 = !DILocation(line: 188, column: 18, scope: !2336, inlinedAt: !3676)
!3687 = !DILocation(line: 1032, column: 10, scope: !3582, inlinedAt: !3670)
!3688 = !DILocation(line: 1033, column: 1, scope: !3582, inlinedAt: !3670)
!3689 = !DILocation(line: 1046, column: 3, scope: !3661)
!3690 = distinct !DISubprogram(name: "quote_n_mem", scope: !369, file: !369, line: 1061, type: !3691, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!49, !51, !49, !106}
!3693 = !{!3694, !3695, !3696}
!3694 = !DILocalVariable(name: "n", arg: 1, scope: !3690, file: !369, line: 1061, type: !51)
!3695 = !DILocalVariable(name: "arg", arg: 2, scope: !3690, file: !369, line: 1061, type: !49)
!3696 = !DILocalVariable(name: "argsize", arg: 3, scope: !3690, file: !369, line: 1061, type: !106)
!3697 = !DILocation(line: 0, scope: !3690)
!3698 = !DILocation(line: 1063, column: 10, scope: !3690)
!3699 = !DILocation(line: 1063, column: 3, scope: !3690)
!3700 = distinct !DISubprogram(name: "quote_mem", scope: !369, file: !369, line: 1067, type: !3701, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!49, !49, !106}
!3703 = !{!3704, !3705}
!3704 = !DILocalVariable(name: "arg", arg: 1, scope: !3700, file: !369, line: 1067, type: !49)
!3705 = !DILocalVariable(name: "argsize", arg: 2, scope: !3700, file: !369, line: 1067, type: !106)
!3706 = !DILocation(line: 0, scope: !3700)
!3707 = !DILocation(line: 0, scope: !3690, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 1069, column: 10, scope: !3700)
!3709 = !DILocation(line: 1063, column: 10, scope: !3690, inlinedAt: !3708)
!3710 = !DILocation(line: 1069, column: 3, scope: !3700)
!3711 = distinct !DISubprogram(name: "quote_n", scope: !369, file: !369, line: 1073, type: !504, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3712)
!3712 = !{!3713, !3714}
!3713 = !DILocalVariable(name: "n", arg: 1, scope: !3711, file: !369, line: 1073, type: !51)
!3714 = !DILocalVariable(name: "arg", arg: 2, scope: !3711, file: !369, line: 1073, type: !49)
!3715 = !DILocation(line: 0, scope: !3711)
!3716 = !DILocation(line: 0, scope: !3690, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 1075, column: 10, scope: !3711)
!3718 = !DILocation(line: 1063, column: 10, scope: !3690, inlinedAt: !3717)
!3719 = !DILocation(line: 1075, column: 3, scope: !3711)
!3720 = distinct !DISubprogram(name: "quote", scope: !369, file: !369, line: 1079, type: !542, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3721)
!3721 = !{!3722}
!3722 = !DILocalVariable(name: "arg", arg: 1, scope: !3720, file: !369, line: 1079, type: !49)
!3723 = !DILocation(line: 0, scope: !3720)
!3724 = !DILocation(line: 0, scope: !3711, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 1081, column: 10, scope: !3720)
!3726 = !DILocation(line: 0, scope: !3690, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 1075, column: 10, scope: !3711, inlinedAt: !3725)
!3728 = !DILocation(line: 1063, column: 10, scope: !3690, inlinedAt: !3727)
!3729 = !DILocation(line: 1081, column: 3, scope: !3720)
!3730 = distinct !DISubprogram(name: "safe_read", scope: !592, file: !592, line: 56, type: !3731, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !3733)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!106, !51, !104, !106}
!3733 = !{!3734, !3735, !3736, !3737}
!3734 = !DILocalVariable(name: "fd", arg: 1, scope: !3730, file: !592, line: 56, type: !51)
!3735 = !DILocalVariable(name: "buf", arg: 2, scope: !3730, file: !592, line: 56, type: !104)
!3736 = !DILocalVariable(name: "count", arg: 3, scope: !3730, file: !592, line: 56, type: !106)
!3737 = !DILocalVariable(name: "result", scope: !3738, file: !592, line: 60, type: !3741)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !592, line: 59, column: 5)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !592, line: 58, column: 3)
!3740 = distinct !DILexicalBlock(scope: !3730, file: !592, line: 58, column: 3)
!3741 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3742, line: 108, baseType: !3743)
!3742 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!3743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !81, line: 193, baseType: !82)
!3744 = !DILocation(line: 0, scope: !3730)
!3745 = !DILocation(line: 58, column: 3, scope: !3730)
!3746 = !DILocation(line: 62, column: 11, scope: !3738)
!3747 = !DILocation(line: 60, column: 24, scope: !3738)
!3748 = !DILocation(line: 0, scope: !3738)
!3749 = !DILocation(line: 62, column: 13, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3738, file: !592, line: 62, column: 11)
!3751 = !DILocation(line: 64, column: 16, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3750, file: !592, line: 64, column: 16)
!3753 = !DILocation(line: 64, column: 16, scope: !3750)
!3754 = distinct !{!3754, !3755, !3756}
!3755 = !DILocation(line: 58, column: 3, scope: !3740)
!3756 = !DILocation(line: 70, column: 5, scope: !3740)
!3757 = !DILocation(line: 66, column: 22, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3752, file: !592, line: 66, column: 16)
!3759 = !DILocation(line: 66, column: 51, scope: !3758)
!3760 = !DILocation(line: 66, column: 32, scope: !3758)
!3761 = !DILocation(line: 71, column: 1, scope: !3730)
!3762 = distinct !DISubprogram(name: "version_etc_arn", scope: !599, file: !599, line: 61, type: !3763, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !598, retainedNodes: !3767)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !3765, !49, !49, !49, !303, !106}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !609)
!3767 = !{!3768, !3769, !3770, !3771, !3772, !3773}
!3768 = !DILocalVariable(name: "stream", arg: 1, scope: !3762, file: !599, line: 61, type: !3765)
!3769 = !DILocalVariable(name: "command_name", arg: 2, scope: !3762, file: !599, line: 62, type: !49)
!3770 = !DILocalVariable(name: "package", arg: 3, scope: !3762, file: !599, line: 62, type: !49)
!3771 = !DILocalVariable(name: "version", arg: 4, scope: !3762, file: !599, line: 63, type: !49)
!3772 = !DILocalVariable(name: "authors", arg: 5, scope: !3762, file: !599, line: 64, type: !303)
!3773 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3762, file: !599, line: 64, type: !106)
!3774 = !DILocation(line: 0, scope: !3762)
!3775 = !DILocation(line: 66, column: 7, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3762, file: !599, line: 66, column: 7)
!3777 = !DILocation(line: 66, column: 7, scope: !3762)
!3778 = !DILocation(line: 67, column: 5, scope: !3776)
!3779 = !DILocation(line: 69, column: 5, scope: !3776)
!3780 = !DILocation(line: 83, column: 3, scope: !3762)
!3781 = !DILocation(line: 85, column: 3, scope: !3762)
!3782 = !DILocation(line: 88, column: 3, scope: !3762)
!3783 = !DILocation(line: 95, column: 3, scope: !3762)
!3784 = !DILocation(line: 97, column: 3, scope: !3762)
!3785 = !DILocation(line: 105, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3762, file: !599, line: 98, column: 5)
!3787 = !DILocation(line: 106, column: 7, scope: !3786)
!3788 = !DILocation(line: 109, column: 7, scope: !3786)
!3789 = !DILocation(line: 110, column: 7, scope: !3786)
!3790 = !DILocation(line: 113, column: 7, scope: !3786)
!3791 = !DILocation(line: 115, column: 7, scope: !3786)
!3792 = !DILocation(line: 120, column: 7, scope: !3786)
!3793 = !DILocation(line: 122, column: 7, scope: !3786)
!3794 = !DILocation(line: 127, column: 7, scope: !3786)
!3795 = !DILocation(line: 129, column: 7, scope: !3786)
!3796 = !DILocation(line: 134, column: 7, scope: !3786)
!3797 = !DILocation(line: 137, column: 7, scope: !3786)
!3798 = !DILocation(line: 142, column: 7, scope: !3786)
!3799 = !DILocation(line: 145, column: 7, scope: !3786)
!3800 = !DILocation(line: 150, column: 7, scope: !3786)
!3801 = !DILocation(line: 154, column: 7, scope: !3786)
!3802 = !DILocation(line: 159, column: 7, scope: !3786)
!3803 = !DILocation(line: 163, column: 7, scope: !3786)
!3804 = !DILocation(line: 170, column: 7, scope: !3786)
!3805 = !DILocation(line: 174, column: 7, scope: !3786)
!3806 = !DILocation(line: 176, column: 1, scope: !3762)
!3807 = distinct !DISubprogram(name: "version_etc_ar", scope: !599, file: !599, line: 183, type: !3808, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !598, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3765, !49, !49, !49, !303}
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816}
!3811 = !DILocalVariable(name: "stream", arg: 1, scope: !3807, file: !599, line: 183, type: !3765)
!3812 = !DILocalVariable(name: "command_name", arg: 2, scope: !3807, file: !599, line: 184, type: !49)
!3813 = !DILocalVariable(name: "package", arg: 3, scope: !3807, file: !599, line: 184, type: !49)
!3814 = !DILocalVariable(name: "version", arg: 4, scope: !3807, file: !599, line: 185, type: !49)
!3815 = !DILocalVariable(name: "authors", arg: 5, scope: !3807, file: !599, line: 185, type: !303)
!3816 = !DILocalVariable(name: "n_authors", scope: !3807, file: !599, line: 187, type: !106)
!3817 = !DILocation(line: 0, scope: !3807)
!3818 = !DILocation(line: 189, column: 8, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3807, file: !599, line: 189, column: 3)
!3820 = !DILocation(line: 0, scope: !3819)
!3821 = !DILocation(line: 189, column: 23, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3819, file: !599, line: 189, column: 3)
!3823 = !DILocation(line: 189, column: 3, scope: !3819)
!3824 = !DILocation(line: 189, column: 52, scope: !3822)
!3825 = distinct !{!3825, !3823, !3826}
!3826 = !DILocation(line: 190, column: 5, scope: !3819)
!3827 = !DILocation(line: 191, column: 3, scope: !3807)
!3828 = !DILocation(line: 192, column: 1, scope: !3807)
!3829 = distinct !DISubprogram(name: "version_etc_va", scope: !599, file: !599, line: 199, type: !3830, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !598, retainedNodes: !3839)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !3765, !49, !49, !49, !3832}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !599, line: 192, size: 192, elements: !3834)
!3834 = !{!3835, !3836, !3837, !3838}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3833, file: !599, line: 192, baseType: !7, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3833, file: !599, line: 192, baseType: !7, size: 32, offset: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3833, file: !599, line: 192, baseType: !104, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3833, file: !599, line: 192, baseType: !104, size: 64, offset: 128)
!3839 = !{!3840, !3841, !3842, !3843, !3844, !3845, !3846}
!3840 = !DILocalVariable(name: "stream", arg: 1, scope: !3829, file: !599, line: 199, type: !3765)
!3841 = !DILocalVariable(name: "command_name", arg: 2, scope: !3829, file: !599, line: 200, type: !49)
!3842 = !DILocalVariable(name: "package", arg: 3, scope: !3829, file: !599, line: 200, type: !49)
!3843 = !DILocalVariable(name: "version", arg: 4, scope: !3829, file: !599, line: 201, type: !49)
!3844 = !DILocalVariable(name: "authors", arg: 5, scope: !3829, file: !599, line: 201, type: !3832)
!3845 = !DILocalVariable(name: "n_authors", scope: !3829, file: !599, line: 203, type: !106)
!3846 = !DILocalVariable(name: "authtab", scope: !3829, file: !599, line: 204, type: !3847)
!3847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 640, elements: !462)
!3848 = !DILocation(line: 0, scope: !3829)
!3849 = !DILocation(line: 204, column: 3, scope: !3829)
!3850 = !DILocation(line: 204, column: 15, scope: !3829)
!3851 = !DILocation(line: 0, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !599, line: 206, column: 3)
!3853 = distinct !DILexicalBlock(scope: !3829, file: !599, line: 206, column: 3)
!3854 = !DILocation(line: 208, column: 35, scope: !3852)
!3855 = !DILocation(line: 208, column: 14, scope: !3852)
!3856 = !DILocation(line: 208, column: 33, scope: !3852)
!3857 = !DILocation(line: 208, column: 67, scope: !3852)
!3858 = !DILocation(line: 206, column: 3, scope: !3853)
!3859 = !DILocation(line: 0, scope: !3853)
!3860 = !DILocation(line: 211, column: 3, scope: !3829)
!3861 = !DILocation(line: 213, column: 1, scope: !3829)
!3862 = distinct !DISubprogram(name: "version_etc", scope: !599, file: !599, line: 230, type: !3863, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !598, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3765, !49, !49, !49, null}
!3865 = !{!3866, !3867, !3868, !3869, !3870}
!3866 = !DILocalVariable(name: "stream", arg: 1, scope: !3862, file: !599, line: 230, type: !3765)
!3867 = !DILocalVariable(name: "command_name", arg: 2, scope: !3862, file: !599, line: 231, type: !49)
!3868 = !DILocalVariable(name: "package", arg: 3, scope: !3862, file: !599, line: 231, type: !49)
!3869 = !DILocalVariable(name: "version", arg: 4, scope: !3862, file: !599, line: 232, type: !49)
!3870 = !DILocalVariable(name: "authors", scope: !3862, file: !599, line: 234, type: !3871)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !54, line: 52, baseType: !3872)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3873, line: 32, baseType: !3874)
!3873 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !599, line: 234, baseType: !3875)
!3875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3833, size: 192, elements: !89)
!3876 = !DILocation(line: 0, scope: !3862)
!3877 = !DILocation(line: 234, column: 3, scope: !3862)
!3878 = !DILocation(line: 234, column: 11, scope: !3862)
!3879 = !DILocation(line: 236, column: 3, scope: !3862)
!3880 = !DILocation(line: 237, column: 3, scope: !3862)
!3881 = !DILocation(line: 238, column: 3, scope: !3862)
!3882 = !DILocation(line: 239, column: 1, scope: !3862)
!3883 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !599, file: !599, line: 242, type: !133, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !598, retainedNodes: !52)
!3884 = !DILocation(line: 244, column: 3, scope: !3883)
!3885 = !DILocation(line: 249, column: 3, scope: !3883)
!3886 = !DILocation(line: 255, column: 3, scope: !3883)
!3887 = !DILocation(line: 260, column: 3, scope: !3883)
!3888 = !DILocation(line: 262, column: 1, scope: !3883)
!3889 = distinct !DISubprogram(name: "xnmalloc", scope: !393, file: !393, line: 99, type: !3890, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!104, !106, !106}
!3892 = !{!3893, !3894}
!3893 = !DILocalVariable(name: "n", arg: 1, scope: !3889, file: !393, line: 99, type: !106)
!3894 = !DILocalVariable(name: "s", arg: 2, scope: !3889, file: !393, line: 99, type: !106)
!3895 = !DILocation(line: 0, scope: !3889)
!3896 = !DILocation(line: 101, column: 7, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3889, file: !393, line: 101, column: 7)
!3898 = !DILocation(line: 101, column: 7, scope: !3889)
!3899 = !DILocation(line: 102, column: 5, scope: !3897)
!3900 = !DILocation(line: 103, column: 21, scope: !3889)
!3901 = !DILocalVariable(name: "n", arg: 1, scope: !3902, file: !641, line: 39, type: !106)
!3902 = distinct !DISubprogram(name: "xmalloc", scope: !641, file: !641, line: 39, type: !3903, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!104, !106}
!3905 = !{!3901, !3906}
!3906 = !DILocalVariable(name: "p", scope: !3902, file: !641, line: 41, type: !104)
!3907 = !DILocation(line: 0, scope: !3902, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 103, column: 10, scope: !3889)
!3909 = !DILocation(line: 41, column: 13, scope: !3902, inlinedAt: !3908)
!3910 = !DILocation(line: 42, column: 8, scope: !3911, inlinedAt: !3908)
!3911 = distinct !DILexicalBlock(scope: !3902, file: !641, line: 42, column: 7)
!3912 = !DILocation(line: 42, column: 15, scope: !3911, inlinedAt: !3908)
!3913 = !DILocation(line: 42, column: 10, scope: !3911, inlinedAt: !3908)
!3914 = !DILocation(line: 43, column: 5, scope: !3911, inlinedAt: !3908)
!3915 = !DILocation(line: 103, column: 3, scope: !3889)
!3916 = !DILocation(line: 0, scope: !3902)
!3917 = !DILocation(line: 41, column: 13, scope: !3902)
!3918 = !DILocation(line: 42, column: 8, scope: !3911)
!3919 = !DILocation(line: 42, column: 15, scope: !3911)
!3920 = !DILocation(line: 42, column: 10, scope: !3911)
!3921 = !DILocation(line: 43, column: 5, scope: !3911)
!3922 = !DILocation(line: 44, column: 3, scope: !3902)
!3923 = distinct !DISubprogram(name: "xnrealloc", scope: !393, file: !393, line: 112, type: !3924, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!104, !104, !106, !106}
!3926 = !{!3927, !3928, !3929}
!3927 = !DILocalVariable(name: "p", arg: 1, scope: !3923, file: !393, line: 112, type: !104)
!3928 = !DILocalVariable(name: "n", arg: 2, scope: !3923, file: !393, line: 112, type: !106)
!3929 = !DILocalVariable(name: "s", arg: 3, scope: !3923, file: !393, line: 112, type: !106)
!3930 = !DILocation(line: 0, scope: !3923)
!3931 = !DILocation(line: 114, column: 7, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3923, file: !393, line: 114, column: 7)
!3933 = !DILocation(line: 114, column: 7, scope: !3923)
!3934 = !DILocation(line: 115, column: 5, scope: !3932)
!3935 = !DILocation(line: 116, column: 25, scope: !3923)
!3936 = !DILocalVariable(name: "p", arg: 1, scope: !3937, file: !641, line: 51, type: !104)
!3937 = distinct !DISubprogram(name: "xrealloc", scope: !641, file: !641, line: 51, type: !3938, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!104, !104, !106}
!3940 = !{!3936, !3941}
!3941 = !DILocalVariable(name: "n", arg: 2, scope: !3937, file: !641, line: 51, type: !106)
!3942 = !DILocation(line: 0, scope: !3937, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 116, column: 10, scope: !3923)
!3944 = !DILocation(line: 53, column: 8, scope: !3945, inlinedAt: !3943)
!3945 = distinct !DILexicalBlock(scope: !3937, file: !641, line: 53, column: 7)
!3946 = !DILocation(line: 53, column: 13, scope: !3945, inlinedAt: !3943)
!3947 = !DILocation(line: 53, column: 10, scope: !3945, inlinedAt: !3943)
!3948 = !DILocation(line: 57, column: 7, scope: !3949, inlinedAt: !3943)
!3949 = distinct !DILexicalBlock(scope: !3945, file: !641, line: 54, column: 5)
!3950 = !DILocation(line: 58, column: 7, scope: !3949, inlinedAt: !3943)
!3951 = !DILocation(line: 61, column: 7, scope: !3937, inlinedAt: !3943)
!3952 = !DILocation(line: 62, column: 8, scope: !3953, inlinedAt: !3943)
!3953 = distinct !DILexicalBlock(scope: !3937, file: !641, line: 62, column: 7)
!3954 = !DILocation(line: 62, column: 13, scope: !3953, inlinedAt: !3943)
!3955 = !DILocation(line: 62, column: 10, scope: !3953, inlinedAt: !3943)
!3956 = !DILocation(line: 63, column: 5, scope: !3953, inlinedAt: !3943)
!3957 = !DILocation(line: 116, column: 3, scope: !3923)
!3958 = !DILocation(line: 0, scope: !3937)
!3959 = !DILocation(line: 53, column: 8, scope: !3945)
!3960 = !DILocation(line: 53, column: 13, scope: !3945)
!3961 = !DILocation(line: 53, column: 10, scope: !3945)
!3962 = !DILocation(line: 57, column: 7, scope: !3949)
!3963 = !DILocation(line: 58, column: 7, scope: !3949)
!3964 = !DILocation(line: 61, column: 7, scope: !3937)
!3965 = !DILocation(line: 62, column: 8, scope: !3953)
!3966 = !DILocation(line: 62, column: 13, scope: !3953)
!3967 = !DILocation(line: 62, column: 10, scope: !3953)
!3968 = !DILocation(line: 63, column: 5, scope: !3953)
!3969 = !DILocation(line: 65, column: 1, scope: !3937)
!3970 = !DILocation(line: 0, scope: !644)
!3971 = !DILocation(line: 176, column: 14, scope: !644)
!3972 = !DILocation(line: 178, column: 9, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !644, file: !393, line: 178, column: 7)
!3974 = !DILocation(line: 178, column: 7, scope: !644)
!3975 = !DILocation(line: 180, column: 13, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !393, line: 180, column: 11)
!3977 = distinct !DILexicalBlock(scope: !3973, file: !393, line: 179, column: 5)
!3978 = !DILocation(line: 180, column: 11, scope: !3977)
!3979 = !DILocation(line: 188, column: 30, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3976, file: !393, line: 181, column: 9)
!3981 = !DILocation(line: 189, column: 16, scope: !3980)
!3982 = !DILocation(line: 189, column: 13, scope: !3980)
!3983 = !DILocation(line: 190, column: 9, scope: !3980)
!3984 = !DILocation(line: 191, column: 11, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3977, file: !393, line: 191, column: 11)
!3986 = !DILocation(line: 191, column: 11, scope: !3977)
!3987 = !DILocation(line: 206, column: 7, scope: !644)
!3988 = !DILocation(line: 207, column: 25, scope: !644)
!3989 = !DILocation(line: 0, scope: !3937, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 207, column: 10, scope: !644)
!3991 = !DILocation(line: 53, column: 10, scope: !3945, inlinedAt: !3990)
!3992 = !DILocation(line: 192, column: 9, scope: !3985)
!3993 = !DILocation(line: 200, column: 69, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !393, line: 200, column: 11)
!3995 = distinct !DILexicalBlock(scope: !3973, file: !393, line: 195, column: 5)
!3996 = !DILocation(line: 201, column: 11, scope: !3994)
!3997 = !DILocation(line: 200, column: 11, scope: !3995)
!3998 = !DILocation(line: 202, column: 9, scope: !3994)
!3999 = !DILocation(line: 203, column: 14, scope: !3995)
!4000 = !DILocation(line: 203, column: 18, scope: !3995)
!4001 = !DILocation(line: 203, column: 9, scope: !3995)
!4002 = !DILocation(line: 53, column: 8, scope: !3945, inlinedAt: !3990)
!4003 = !DILocation(line: 57, column: 7, scope: !3949, inlinedAt: !3990)
!4004 = !DILocation(line: 58, column: 7, scope: !3949, inlinedAt: !3990)
!4005 = !DILocation(line: 61, column: 7, scope: !3937, inlinedAt: !3990)
!4006 = !DILocation(line: 62, column: 8, scope: !3953, inlinedAt: !3990)
!4007 = !DILocation(line: 62, column: 13, scope: !3953, inlinedAt: !3990)
!4008 = !DILocation(line: 62, column: 10, scope: !3953, inlinedAt: !3990)
!4009 = !DILocation(line: 63, column: 5, scope: !3953, inlinedAt: !3990)
!4010 = !DILocation(line: 207, column: 3, scope: !644)
!4011 = distinct !DISubprogram(name: "xcharalloc", scope: !393, file: !393, line: 216, type: !3149, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4012)
!4012 = !{!4013}
!4013 = !DILocalVariable(name: "n", arg: 1, scope: !4011, file: !393, line: 216, type: !106)
!4014 = !DILocation(line: 0, scope: !4011)
!4015 = !DILocation(line: 0, scope: !3902, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 218, column: 10, scope: !4011)
!4017 = !DILocation(line: 41, column: 13, scope: !3902, inlinedAt: !4016)
!4018 = !DILocation(line: 42, column: 8, scope: !3911, inlinedAt: !4016)
!4019 = !DILocation(line: 42, column: 15, scope: !3911, inlinedAt: !4016)
!4020 = !DILocation(line: 42, column: 10, scope: !3911, inlinedAt: !4016)
!4021 = !DILocation(line: 43, column: 5, scope: !3911, inlinedAt: !4016)
!4022 = !DILocation(line: 218, column: 3, scope: !4011)
!4023 = distinct !DISubprogram(name: "x2realloc", scope: !641, file: !641, line: 74, type: !4024, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!104, !104, !647}
!4026 = !{!4027, !4028}
!4027 = !DILocalVariable(name: "p", arg: 1, scope: !4023, file: !641, line: 74, type: !104)
!4028 = !DILocalVariable(name: "pn", arg: 2, scope: !4023, file: !641, line: 74, type: !647)
!4029 = !DILocation(line: 0, scope: !4023)
!4030 = !DILocation(line: 0, scope: !644, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 76, column: 10, scope: !4023)
!4032 = !DILocation(line: 176, column: 14, scope: !644, inlinedAt: !4031)
!4033 = !DILocation(line: 178, column: 9, scope: !3973, inlinedAt: !4031)
!4034 = !DILocation(line: 178, column: 7, scope: !644, inlinedAt: !4031)
!4035 = !DILocation(line: 180, column: 13, scope: !3976, inlinedAt: !4031)
!4036 = !DILocation(line: 180, column: 11, scope: !3977, inlinedAt: !4031)
!4037 = !DILocation(line: 191, column: 11, scope: !3985, inlinedAt: !4031)
!4038 = !DILocation(line: 191, column: 11, scope: !3977, inlinedAt: !4031)
!4039 = !DILocation(line: 206, column: 7, scope: !644, inlinedAt: !4031)
!4040 = !DILocation(line: 0, scope: !3937, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 207, column: 10, scope: !644, inlinedAt: !4031)
!4042 = !DILocation(line: 53, column: 10, scope: !3945, inlinedAt: !4041)
!4043 = !DILocation(line: 192, column: 9, scope: !3985, inlinedAt: !4031)
!4044 = !DILocation(line: 201, column: 11, scope: !3994, inlinedAt: !4031)
!4045 = !DILocation(line: 200, column: 11, scope: !3995, inlinedAt: !4031)
!4046 = !DILocation(line: 202, column: 9, scope: !3994, inlinedAt: !4031)
!4047 = !DILocation(line: 203, column: 14, scope: !3995, inlinedAt: !4031)
!4048 = !DILocation(line: 203, column: 18, scope: !3995, inlinedAt: !4031)
!4049 = !DILocation(line: 203, column: 9, scope: !3995, inlinedAt: !4031)
!4050 = !DILocation(line: 53, column: 8, scope: !3945, inlinedAt: !4041)
!4051 = !DILocation(line: 57, column: 7, scope: !3949, inlinedAt: !4041)
!4052 = !DILocation(line: 58, column: 7, scope: !3949, inlinedAt: !4041)
!4053 = !DILocation(line: 61, column: 7, scope: !3937, inlinedAt: !4041)
!4054 = !DILocation(line: 62, column: 8, scope: !3953, inlinedAt: !4041)
!4055 = !DILocation(line: 62, column: 13, scope: !3953, inlinedAt: !4041)
!4056 = !DILocation(line: 62, column: 10, scope: !3953, inlinedAt: !4041)
!4057 = !DILocation(line: 63, column: 5, scope: !3953, inlinedAt: !4041)
!4058 = !DILocation(line: 76, column: 3, scope: !4023)
!4059 = distinct !DISubprogram(name: "xzalloc", scope: !641, file: !641, line: 84, type: !3903, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4060)
!4060 = !{!4061}
!4061 = !DILocalVariable(name: "n", arg: 1, scope: !4059, file: !641, line: 84, type: !106)
!4062 = !DILocation(line: 0, scope: !4059)
!4063 = !DILocalVariable(name: "n", arg: 1, scope: !4064, file: !641, line: 93, type: !106)
!4064 = distinct !DISubprogram(name: "xcalloc", scope: !641, file: !641, line: 93, type: !3890, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4065)
!4065 = !{!4063, !4066, !4067}
!4066 = !DILocalVariable(name: "s", arg: 2, scope: !4064, file: !641, line: 93, type: !106)
!4067 = !DILocalVariable(name: "p", scope: !4064, file: !641, line: 95, type: !104)
!4068 = !DILocation(line: 0, scope: !4064, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 86, column: 10, scope: !4059)
!4070 = !DILocation(line: 100, column: 7, scope: !4071, inlinedAt: !4069)
!4071 = distinct !DILexicalBlock(scope: !4064, file: !641, line: 100, column: 7)
!4072 = !DILocation(line: 101, column: 7, scope: !4071, inlinedAt: !4069)
!4073 = !DILocation(line: 101, column: 18, scope: !4071, inlinedAt: !4069)
!4074 = !DILocation(line: 101, column: 16, scope: !4071, inlinedAt: !4069)
!4075 = !DILocation(line: 100, column: 7, scope: !4064, inlinedAt: !4069)
!4076 = !DILocation(line: 102, column: 5, scope: !4071, inlinedAt: !4069)
!4077 = !DILocation(line: 86, column: 3, scope: !4059)
!4078 = !DILocation(line: 0, scope: !4064)
!4079 = !DILocation(line: 100, column: 7, scope: !4071)
!4080 = !DILocation(line: 101, column: 7, scope: !4071)
!4081 = !DILocation(line: 101, column: 18, scope: !4071)
!4082 = !DILocation(line: 101, column: 16, scope: !4071)
!4083 = !DILocation(line: 100, column: 7, scope: !4064)
!4084 = !DILocation(line: 102, column: 5, scope: !4071)
!4085 = !DILocation(line: 103, column: 3, scope: !4064)
!4086 = distinct !DISubprogram(name: "xmemdup", scope: !641, file: !641, line: 111, type: !4087, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!104, !297, !106}
!4089 = !{!4090, !4091}
!4090 = !DILocalVariable(name: "p", arg: 1, scope: !4086, file: !641, line: 111, type: !297)
!4091 = !DILocalVariable(name: "s", arg: 2, scope: !4086, file: !641, line: 111, type: !106)
!4092 = !DILocation(line: 0, scope: !4086)
!4093 = !DILocation(line: 0, scope: !3902, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 113, column: 18, scope: !4086)
!4095 = !DILocation(line: 41, column: 13, scope: !3902, inlinedAt: !4094)
!4096 = !DILocation(line: 42, column: 8, scope: !3911, inlinedAt: !4094)
!4097 = !DILocation(line: 42, column: 15, scope: !3911, inlinedAt: !4094)
!4098 = !DILocation(line: 42, column: 10, scope: !3911, inlinedAt: !4094)
!4099 = !DILocation(line: 43, column: 5, scope: !3911, inlinedAt: !4094)
!4100 = !DILocalVariable(name: "__dest", arg: 1, scope: !4101, file: !1910, line: 31, type: !1987)
!4101 = distinct !DISubprogram(name: "memcpy", scope: !1910, file: !1910, line: 31, type: !1985, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4102)
!4102 = !{!4100, !4103, !4104}
!4103 = !DILocalVariable(name: "__src", arg: 2, scope: !4101, file: !1910, line: 31, type: !1988)
!4104 = !DILocalVariable(name: "__len", arg: 3, scope: !4101, file: !1910, line: 31, type: !106)
!4105 = !DILocation(line: 0, scope: !4101, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 113, column: 10, scope: !4086)
!4107 = !DILocation(line: 34, column: 10, scope: !4101, inlinedAt: !4106)
!4108 = !DILocation(line: 113, column: 3, scope: !4086)
!4109 = distinct !DISubprogram(name: "xstrdup", scope: !641, file: !641, line: 119, type: !126, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4110)
!4110 = !{!4111}
!4111 = !DILocalVariable(name: "string", arg: 1, scope: !4109, file: !641, line: 119, type: !49)
!4112 = !DILocation(line: 0, scope: !4109)
!4113 = !DILocation(line: 121, column: 27, scope: !4109)
!4114 = !DILocation(line: 121, column: 43, scope: !4109)
!4115 = !DILocation(line: 0, scope: !4086, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 121, column: 10, scope: !4109)
!4117 = !DILocation(line: 0, scope: !3902, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 113, column: 18, scope: !4086, inlinedAt: !4116)
!4119 = !DILocation(line: 41, column: 13, scope: !3902, inlinedAt: !4118)
!4120 = !DILocation(line: 42, column: 8, scope: !3911, inlinedAt: !4118)
!4121 = !DILocation(line: 42, column: 15, scope: !3911, inlinedAt: !4118)
!4122 = !DILocation(line: 42, column: 10, scope: !3911, inlinedAt: !4118)
!4123 = !DILocation(line: 43, column: 5, scope: !3911, inlinedAt: !4118)
!4124 = !DILocation(line: 0, scope: !4101, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 113, column: 10, scope: !4086, inlinedAt: !4116)
!4126 = !DILocation(line: 34, column: 10, scope: !4101, inlinedAt: !4125)
!4127 = !DILocation(line: 121, column: 3, scope: !4109)
!4128 = distinct !DISubprogram(name: "xalloc_die", scope: !662, file: !662, line: 32, type: !133, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !52)
!4129 = !DILocation(line: 34, column: 10, scope: !4128)
!4130 = !DILocation(line: 34, column: 33, scope: !4128)
!4131 = !DILocation(line: 34, column: 3, scope: !4128)
!4132 = !DILocation(line: 40, column: 3, scope: !4128)
!4133 = distinct !DISubprogram(name: "xstrtoumax", scope: !4134, file: !4134, line: 76, type: !4135, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !664, retainedNodes: !4137)
!4134 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!2128, !49, !308, !51, !2122, !49}
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4150, !4151, !4154, !4155}
!4138 = !DILocalVariable(name: "s", arg: 1, scope: !4133, file: !4134, line: 76, type: !49)
!4139 = !DILocalVariable(name: "ptr", arg: 2, scope: !4133, file: !4134, line: 76, type: !308)
!4140 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4133, file: !4134, line: 76, type: !51)
!4141 = !DILocalVariable(name: "val", arg: 4, scope: !4133, file: !4134, line: 77, type: !2122)
!4142 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4133, file: !4134, line: 77, type: !49)
!4143 = !DILocalVariable(name: "t_ptr", scope: !4133, file: !4134, line: 79, type: !47)
!4144 = !DILocalVariable(name: "p", scope: !4133, file: !4134, line: 80, type: !308)
!4145 = !DILocalVariable(name: "tmp", scope: !4133, file: !4134, line: 81, type: !1409)
!4146 = !DILocalVariable(name: "err", scope: !4133, file: !4134, line: 82, type: !2128)
!4147 = !DILocalVariable(name: "q", scope: !4148, file: !4134, line: 92, type: !49)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !4134, line: 91, column: 5)
!4149 = distinct !DILexicalBlock(scope: !4133, file: !4134, line: 90, column: 7)
!4150 = !DILocalVariable(name: "ch", scope: !4148, file: !4134, line: 93, type: !175)
!4151 = !DILocalVariable(name: "base", scope: !4152, file: !4134, line: 129, type: !51)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !4134, line: 128, column: 5)
!4153 = distinct !DILexicalBlock(scope: !4133, file: !4134, line: 127, column: 7)
!4154 = !DILocalVariable(name: "suffixes", scope: !4152, file: !4134, line: 130, type: !51)
!4155 = !DILocalVariable(name: "overflow", scope: !4152, file: !4134, line: 131, type: !2128)
!4156 = !DILocation(line: 0, scope: !4133)
!4157 = !DILocation(line: 79, column: 3, scope: !4133)
!4158 = !DILocation(line: 84, column: 3, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !4134, line: 84, column: 3)
!4160 = distinct !DILexicalBlock(scope: !4133, file: !4134, line: 84, column: 3)
!4161 = !DILocation(line: 86, column: 8, scope: !4133)
!4162 = !DILocation(line: 88, column: 3, scope: !4133)
!4163 = !DILocation(line: 88, column: 9, scope: !4133)
!4164 = !DILocation(line: 0, scope: !4148)
!4165 = !DILocation(line: 94, column: 7, scope: !4148)
!4166 = !DILocation(line: 94, column: 14, scope: !4148)
!4167 = !DILocation(line: 95, column: 15, scope: !4148)
!4168 = distinct !{!4168, !4165, !4169}
!4169 = !DILocation(line: 95, column: 17, scope: !4148)
!4170 = !DILocation(line: 96, column: 14, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4148, file: !4134, line: 96, column: 11)
!4172 = !DILocalVariable(name: "nptr", arg: 1, scope: !4173, file: !4174, line: 336, type: !4177)
!4173 = distinct !DISubprogram(name: "strtoumax", scope: !4174, file: !4174, line: 336, type: !4175, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !664, retainedNodes: !4179)
!4174 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!1409, !4177, !4178, !51}
!4177 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!4178 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !308)
!4179 = !{!4172, !4180, !4181}
!4180 = !DILocalVariable(name: "endptr", arg: 2, scope: !4173, file: !4174, line: 336, type: !4178)
!4181 = !DILocalVariable(name: "base", arg: 3, scope: !4173, file: !4174, line: 336, type: !51)
!4182 = !DILocation(line: 0, scope: !4173, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 100, column: 9, scope: !4133)
!4184 = !DILocation(line: 339, column: 10, scope: !4173, inlinedAt: !4183)
!4185 = !DILocation(line: 102, column: 7, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4133, file: !4134, line: 102, column: 7)
!4187 = !DILocation(line: 102, column: 10, scope: !4186)
!4188 = !DILocation(line: 102, column: 7, scope: !4133)
!4189 = !DILocation(line: 106, column: 11, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !4134, line: 106, column: 11)
!4191 = distinct !DILexicalBlock(scope: !4186, file: !4134, line: 103, column: 5)
!4192 = !DILocation(line: 106, column: 26, scope: !4190)
!4193 = !DILocation(line: 106, column: 29, scope: !4190)
!4194 = !DILocation(line: 106, column: 33, scope: !4190)
!4195 = !DILocation(line: 106, column: 36, scope: !4190)
!4196 = !DILocation(line: 106, column: 11, scope: !4191)
!4197 = !DILocation(line: 111, column: 12, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4186, file: !4134, line: 111, column: 12)
!4199 = !DILocation(line: 111, column: 12, scope: !4186)
!4200 = !DILocation(line: 116, column: 5, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4198, file: !4134, line: 112, column: 5)
!4202 = !DILocation(line: 121, column: 8, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4133, file: !4134, line: 121, column: 7)
!4204 = !DILocation(line: 121, column: 7, scope: !4133)
!4205 = !DILocation(line: 123, column: 12, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4203, file: !4134, line: 122, column: 5)
!4207 = !DILocation(line: 124, column: 7, scope: !4206)
!4208 = !DILocation(line: 127, column: 7, scope: !4153)
!4209 = !DILocation(line: 127, column: 11, scope: !4153)
!4210 = !DILocation(line: 127, column: 7, scope: !4133)
!4211 = !DILocation(line: 0, scope: !4152)
!4212 = !DILocation(line: 133, column: 12, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4152, file: !4134, line: 133, column: 11)
!4214 = !DILocation(line: 133, column: 11, scope: !4152)
!4215 = !DILocation(line: 135, column: 16, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4213, file: !4134, line: 134, column: 9)
!4217 = !DILocation(line: 136, column: 22, scope: !4216)
!4218 = !DILocation(line: 136, column: 11, scope: !4216)
!4219 = !DILocation(line: 139, column: 7, scope: !4152)
!4220 = !DILocation(line: 151, column: 15, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !4134, line: 151, column: 15)
!4222 = distinct !DILexicalBlock(scope: !4152, file: !4134, line: 140, column: 9)
!4223 = !DILocation(line: 151, column: 15, scope: !4222)
!4224 = !DILocation(line: 152, column: 21, scope: !4221)
!4225 = !DILocation(line: 152, column: 13, scope: !4221)
!4226 = !DILocation(line: 155, column: 21, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !4134, line: 155, column: 21)
!4228 = distinct !DILexicalBlock(scope: !4221, file: !4134, line: 153, column: 15)
!4229 = !DILocation(line: 155, column: 29, scope: !4227)
!4230 = !DILocation(line: 155, column: 21, scope: !4228)
!4231 = !DILocation(line: 163, column: 17, scope: !4228)
!4232 = !DILocation(line: 167, column: 7, scope: !4152)
!4233 = !DILocalVariable(name: "err", scope: !4234, file: !4134, line: 67, type: !2128)
!4234 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4134, file: !4134, line: 65, type: !4235, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !664, retainedNodes: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!2128, !2122, !51, !51}
!4237 = !{!4238, !4239, !4240, !4233}
!4238 = !DILocalVariable(name: "x", arg: 1, scope: !4234, file: !4134, line: 65, type: !2122)
!4239 = !DILocalVariable(name: "base", arg: 2, scope: !4234, file: !4134, line: 65, type: !51)
!4240 = !DILocalVariable(name: "power", arg: 3, scope: !4234, file: !4134, line: 65, type: !51)
!4241 = !DILocation(line: 0, scope: !4234, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 221, column: 22, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4152, file: !4134, line: 168, column: 9)
!4244 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4245, file: !4134, line: 48, type: !51)
!4245 = distinct !DISubprogram(name: "bkm_scale", scope: !4134, file: !4134, line: 48, type: !4246, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !664, retainedNodes: !4248)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!2128, !2122, !51}
!4248 = !{!4249, !4244}
!4249 = !DILocalVariable(name: "x", arg: 1, scope: !4245, file: !4134, line: 48, type: !2122)
!4250 = !DILocation(line: 0, scope: !4245, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 69, column: 12, scope: !4234, inlinedAt: !4242)
!4252 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4251)
!4253 = distinct !DILexicalBlock(scope: !4245, file: !4134, line: 55, column: 7)
!4254 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4251)
!4255 = !DILocation(line: 69, column: 9, scope: !4234, inlinedAt: !4242)
!4256 = !DILocation(line: 229, column: 11, scope: !4152)
!4257 = !DILocation(line: 0, scope: !4234, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 217, column: 22, scope: !4243)
!4259 = !DILocation(line: 0, scope: !4245, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 69, column: 12, scope: !4234, inlinedAt: !4258)
!4261 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4260)
!4262 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4260)
!4263 = !DILocation(line: 69, column: 9, scope: !4234, inlinedAt: !4258)
!4264 = !DILocation(line: 0, scope: !4234, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 204, column: 22, scope: !4243)
!4266 = !DILocation(line: 0, scope: !4245, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 69, column: 12, scope: !4234, inlinedAt: !4265)
!4268 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4267)
!4269 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4267)
!4270 = !DILocation(line: 69, column: 9, scope: !4234, inlinedAt: !4265)
!4271 = !DILocation(line: 0, scope: !4234, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 185, column: 22, scope: !4243)
!4273 = !DILocation(line: 0, scope: !4245, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 69, column: 12, scope: !4234, inlinedAt: !4272)
!4275 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4274)
!4276 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4274)
!4277 = !DILocation(line: 69, column: 9, scope: !4234, inlinedAt: !4272)
!4278 = !DILocation(line: 0, scope: !4245, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 170, column: 22, scope: !4243)
!4280 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4279)
!4281 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4279)
!4282 = !DILocation(line: 171, column: 11, scope: !4243)
!4283 = !DILocation(line: 0, scope: !4245, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 177, column: 22, scope: !4243)
!4285 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4284)
!4286 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4284)
!4287 = !DILocation(line: 178, column: 11, scope: !4243)
!4288 = !DILocation(line: 0, scope: !4234, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 190, column: 22, scope: !4243)
!4290 = !DILocation(line: 0, scope: !4245, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 69, column: 12, scope: !4234, inlinedAt: !4289)
!4292 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4291)
!4293 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4291)
!4294 = !DILocation(line: 69, column: 9, scope: !4234, inlinedAt: !4289)
!4295 = !DILocation(line: 0, scope: !4234, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 195, column: 22, scope: !4243)
!4297 = !DILocation(line: 0, scope: !4245, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 69, column: 12, scope: !4234, inlinedAt: !4296)
!4299 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4298)
!4300 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4298)
!4301 = !DILocation(line: 0, scope: !4234, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 200, column: 22, scope: !4243)
!4303 = !DILocation(line: 0, scope: !4245, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 69, column: 12, scope: !4234, inlinedAt: !4302)
!4305 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4304)
!4306 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4304)
!4307 = !DILocation(line: 69, column: 9, scope: !4234, inlinedAt: !4302)
!4308 = !DILocation(line: 0, scope: !4234, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 209, column: 22, scope: !4243)
!4310 = !DILocation(line: 0, scope: !4245, inlinedAt: !4311)
!4311 = distinct !DILocation(line: 69, column: 12, scope: !4234, inlinedAt: !4309)
!4312 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4311)
!4313 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4311)
!4314 = !DILocation(line: 69, column: 9, scope: !4234, inlinedAt: !4309)
!4315 = !DILocation(line: 0, scope: !4245, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 213, column: 22, scope: !4243)
!4317 = !DILocation(line: 55, column: 39, scope: !4253, inlinedAt: !4316)
!4318 = !DILocation(line: 55, column: 7, scope: !4245, inlinedAt: !4316)
!4319 = !DILocation(line: 214, column: 11, scope: !4243)
!4320 = !DILocation(line: 225, column: 16, scope: !4243)
!4321 = !DILocation(line: 226, column: 22, scope: !4243)
!4322 = !DILocation(line: 226, column: 11, scope: !4243)
!4323 = !DILocation(line: 0, scope: !4243)
!4324 = !DILocation(line: 230, column: 10, scope: !4152)
!4325 = !DILocation(line: 231, column: 11, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4152, file: !4134, line: 231, column: 11)
!4327 = !DILocation(line: 232, column: 13, scope: !4326)
!4328 = !DILocation(line: 231, column: 11, scope: !4152)
!4329 = !DILocation(line: 107, column: 13, scope: !4190)
!4330 = !DILocation(line: 82, column: 16, scope: !4133)
!4331 = !DILocation(line: 235, column: 8, scope: !4133)
!4332 = !DILocation(line: 236, column: 3, scope: !4133)
!4333 = !DILocation(line: 237, column: 1, scope: !4133)
!4334 = distinct !DISubprogram(name: "rpl_calloc", scope: !669, file: !669, line: 42, type: !3890, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !4335)
!4335 = !{!4336, !4337, !4338, !4339}
!4336 = !DILocalVariable(name: "n", arg: 1, scope: !4334, file: !669, line: 42, type: !106)
!4337 = !DILocalVariable(name: "s", arg: 2, scope: !4334, file: !669, line: 42, type: !106)
!4338 = !DILocalVariable(name: "result", scope: !4334, file: !669, line: 44, type: !104)
!4339 = !DILocalVariable(name: "bytes", scope: !4340, file: !669, line: 56, type: !106)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !669, line: 53, column: 5)
!4341 = distinct !DILexicalBlock(scope: !4334, file: !669, line: 47, column: 7)
!4342 = !DILocation(line: 0, scope: !4334)
!4343 = !DILocation(line: 47, column: 9, scope: !4341)
!4344 = !DILocation(line: 47, column: 19, scope: !4341)
!4345 = !DILocation(line: 47, column: 14, scope: !4341)
!4346 = !DILocation(line: 0, scope: !4340)
!4347 = !DILocation(line: 57, column: 21, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4340, file: !669, line: 57, column: 11)
!4349 = !DILocation(line: 57, column: 11, scope: !4340)
!4350 = !DILocation(line: 59, column: 11, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4348, file: !669, line: 58, column: 9)
!4352 = !DILocation(line: 59, column: 17, scope: !4351)
!4353 = !DILocation(line: 65, column: 12, scope: !4334)
!4354 = !DILocation(line: 72, column: 3, scope: !4334)
!4355 = !DILocation(line: 73, column: 1, scope: !4334)
!4356 = distinct !DISubprogram(name: "rpl_fclose", scope: !672, file: !672, line: 58, type: !4357, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !4361)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!51, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !678)
!4361 = !{!4362, !4363, !4364, !4365}
!4362 = !DILocalVariable(name: "fp", arg: 1, scope: !4356, file: !672, line: 58, type: !4359)
!4363 = !DILocalVariable(name: "saved_errno", scope: !4356, file: !672, line: 60, type: !51)
!4364 = !DILocalVariable(name: "fd", scope: !4356, file: !672, line: 61, type: !51)
!4365 = !DILocalVariable(name: "result", scope: !4356, file: !672, line: 62, type: !51)
!4366 = !DILocation(line: 0, scope: !4356)
!4367 = !DILocation(line: 65, column: 8, scope: !4356)
!4368 = !DILocation(line: 66, column: 10, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4356, file: !672, line: 66, column: 7)
!4370 = !DILocation(line: 66, column: 7, scope: !4356)
!4371 = !DILocation(line: 67, column: 12, scope: !4369)
!4372 = !DILocation(line: 67, column: 5, scope: !4369)
!4373 = !DILocation(line: 72, column: 9, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4356, file: !672, line: 72, column: 7)
!4375 = !DILocation(line: 72, column: 23, scope: !4374)
!4376 = !DILocation(line: 72, column: 33, scope: !4374)
!4377 = !DILocation(line: 72, column: 26, scope: !4374)
!4378 = !DILocation(line: 72, column: 59, scope: !4374)
!4379 = !DILocation(line: 73, column: 7, scope: !4374)
!4380 = !DILocation(line: 73, column: 10, scope: !4374)
!4381 = !DILocation(line: 72, column: 7, scope: !4356)
!4382 = !DILocation(line: 100, column: 12, scope: !4356)
!4383 = !DILocation(line: 105, column: 7, scope: !4356)
!4384 = !DILocation(line: 74, column: 19, scope: !4374)
!4385 = !DILocation(line: 105, column: 19, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4356, file: !672, line: 105, column: 7)
!4387 = !DILocation(line: 107, column: 13, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4386, file: !672, line: 106, column: 5)
!4389 = !DILocation(line: 109, column: 5, scope: !4388)
!4390 = !DILocation(line: 112, column: 1, scope: !4356)
!4391 = distinct !DISubprogram(name: "rpl_fflush", scope: !715, file: !715, line: 129, type: !4392, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !4396)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!51, !4394}
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !721)
!4396 = !{!4397}
!4397 = !DILocalVariable(name: "stream", arg: 1, scope: !4391, file: !715, line: 129, type: !4394)
!4398 = !DILocation(line: 0, scope: !4391)
!4399 = !DILocation(line: 150, column: 14, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4391, file: !715, line: 150, column: 7)
!4401 = !DILocation(line: 150, column: 22, scope: !4400)
!4402 = !DILocation(line: 150, column: 27, scope: !4400)
!4403 = !DILocation(line: 150, column: 7, scope: !4391)
!4404 = !DILocation(line: 151, column: 12, scope: !4400)
!4405 = !DILocation(line: 151, column: 5, scope: !4400)
!4406 = !DILocalVariable(name: "fp", arg: 1, scope: !4407, file: !715, line: 41, type: !4394)
!4407 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !715, file: !715, line: 41, type: !4408, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !4410)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{null, !4394}
!4410 = !{!4406}
!4411 = !DILocation(line: 0, scope: !4407, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 156, column: 3, scope: !4391)
!4413 = !DILocation(line: 43, column: 11, scope: !4414, inlinedAt: !4412)
!4414 = distinct !DILexicalBlock(scope: !4407, file: !715, line: 43, column: 7)
!4415 = !DILocation(line: 43, column: 18, scope: !4414, inlinedAt: !4412)
!4416 = !DILocation(line: 43, column: 7, scope: !4407, inlinedAt: !4412)
!4417 = !DILocation(line: 45, column: 5, scope: !4414, inlinedAt: !4412)
!4418 = !DILocation(line: 158, column: 10, scope: !4391)
!4419 = !DILocation(line: 158, column: 3, scope: !4391)
!4420 = !DILocation(line: 235, column: 1, scope: !4391)
!4421 = distinct !DISubprogram(name: "rpl_fseeko", scope: !756, file: !756, line: 28, type: !4422, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !4426)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!51, !4424, !1655, !51}
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !762)
!4426 = !{!4427, !4428, !4429, !4430}
!4427 = !DILocalVariable(name: "fp", arg: 1, scope: !4421, file: !756, line: 28, type: !4424)
!4428 = !DILocalVariable(name: "offset", arg: 2, scope: !4421, file: !756, line: 28, type: !1655)
!4429 = !DILocalVariable(name: "whence", arg: 3, scope: !4421, file: !756, line: 28, type: !51)
!4430 = !DILocalVariable(name: "pos", scope: !4431, file: !756, line: 117, type: !1655)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !756, line: 113, column: 5)
!4432 = distinct !DILexicalBlock(scope: !4421, file: !756, line: 52, column: 7)
!4433 = !DILocation(line: 0, scope: !4421)
!4434 = !DILocation(line: 52, column: 11, scope: !4432)
!4435 = !DILocation(line: 52, column: 31, scope: !4432)
!4436 = !DILocation(line: 52, column: 24, scope: !4432)
!4437 = !DILocation(line: 53, column: 7, scope: !4432)
!4438 = !DILocation(line: 53, column: 14, scope: !4432)
!4439 = !DILocation(line: 53, column: 35, scope: !4432)
!4440 = !{!1451, !1292, i64 32}
!4441 = !DILocation(line: 53, column: 28, scope: !4432)
!4442 = !DILocation(line: 54, column: 7, scope: !4432)
!4443 = !DILocation(line: 54, column: 14, scope: !4432)
!4444 = !{!1451, !1292, i64 72}
!4445 = !DILocation(line: 54, column: 28, scope: !4432)
!4446 = !DILocation(line: 52, column: 7, scope: !4421)
!4447 = !DILocation(line: 117, column: 26, scope: !4431)
!4448 = !DILocation(line: 117, column: 19, scope: !4431)
!4449 = !DILocation(line: 0, scope: !4431)
!4450 = !DILocation(line: 118, column: 15, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4431, file: !756, line: 118, column: 11)
!4452 = !DILocation(line: 118, column: 11, scope: !4431)
!4453 = !DILocation(line: 129, column: 11, scope: !4431)
!4454 = !DILocation(line: 129, column: 18, scope: !4431)
!4455 = !DILocation(line: 130, column: 11, scope: !4431)
!4456 = !DILocation(line: 130, column: 19, scope: !4431)
!4457 = !{!1451, !1452, i64 144}
!4458 = !DILocation(line: 161, column: 7, scope: !4431)
!4459 = !DILocation(line: 163, column: 10, scope: !4421)
!4460 = !DILocation(line: 163, column: 3, scope: !4421)
!4461 = !DILocation(line: 164, column: 1, scope: !4421)
!4462 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !797, file: !797, line: 86, type: !4463, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4469)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!106, !4465, !49, !106, !4466}
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2426, line: 6, baseType: !4468)
!4468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !423, line: 21, baseType: !803)
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4476}
!4470 = !DILocalVariable(name: "pwc", arg: 1, scope: !4462, file: !797, line: 86, type: !4465)
!4471 = !DILocalVariable(name: "s", arg: 2, scope: !4462, file: !797, line: 86, type: !49)
!4472 = !DILocalVariable(name: "n", arg: 3, scope: !4462, file: !797, line: 86, type: !106)
!4473 = !DILocalVariable(name: "ps", arg: 4, scope: !4462, file: !797, line: 86, type: !4466)
!4474 = !DILocalVariable(name: "ret", scope: !4462, file: !797, line: 88, type: !106)
!4475 = !DILocalVariable(name: "wc", scope: !4462, file: !797, line: 89, type: !2430)
!4476 = !DILocalVariable(name: "uc", scope: !4477, file: !797, line: 156, type: !175)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !797, line: 155, column: 5)
!4478 = distinct !DILexicalBlock(scope: !4462, file: !797, line: 154, column: 7)
!4479 = !DILocation(line: 0, scope: !4462)
!4480 = !DILocation(line: 89, column: 3, scope: !4462)
!4481 = !DILocation(line: 105, column: 9, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4462, file: !797, line: 105, column: 7)
!4483 = !DILocation(line: 105, column: 7, scope: !4462)
!4484 = !DILocation(line: 145, column: 9, scope: !4462)
!4485 = !DILocation(line: 154, column: 19, scope: !4478)
!4486 = !DILocation(line: 154, column: 31, scope: !4478)
!4487 = !DILocation(line: 154, column: 26, scope: !4478)
!4488 = !DILocation(line: 154, column: 41, scope: !4478)
!4489 = !DILocation(line: 154, column: 7, scope: !4462)
!4490 = !DILocation(line: 156, column: 26, scope: !4477)
!4491 = !DILocation(line: 0, scope: !4477)
!4492 = !DILocation(line: 157, column: 14, scope: !4477)
!4493 = !DILocation(line: 157, column: 12, scope: !4477)
!4494 = !DILocation(line: 163, column: 1, scope: !4462)
!4495 = distinct !DISubprogram(name: "__argmatch_die", scope: !498, file: !498, line: 60, type: !133, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !52)
!4496 = !DILocation(line: 62, column: 3, scope: !4495)
!4497 = !DILocation(line: 63, column: 1, scope: !4495)
!4498 = distinct !DISubprogram(name: "argmatch", scope: !498, file: !498, line: 82, type: !4499, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4502)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!4501, !49, !303, !297, !106}
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !107, line: 35, baseType: !82)
!4502 = !{!4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510}
!4503 = !DILocalVariable(name: "arg", arg: 1, scope: !4498, file: !498, line: 82, type: !49)
!4504 = !DILocalVariable(name: "arglist", arg: 2, scope: !4498, file: !498, line: 82, type: !303)
!4505 = !DILocalVariable(name: "vallist", arg: 3, scope: !4498, file: !498, line: 83, type: !297)
!4506 = !DILocalVariable(name: "valsize", arg: 4, scope: !4498, file: !498, line: 83, type: !106)
!4507 = !DILocalVariable(name: "i", scope: !4498, file: !498, line: 85, type: !106)
!4508 = !DILocalVariable(name: "arglen", scope: !4498, file: !498, line: 86, type: !106)
!4509 = !DILocalVariable(name: "matchind", scope: !4498, file: !498, line: 87, type: !4501)
!4510 = !DILocalVariable(name: "ambiguous", scope: !4498, file: !498, line: 88, type: !195)
!4511 = !DILocation(line: 0, scope: !4498)
!4512 = !DILocation(line: 90, column: 12, scope: !4498)
!4513 = !DILocation(line: 93, column: 15, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !498, line: 93, column: 3)
!4515 = distinct !DILexicalBlock(scope: !4498, file: !498, line: 93, column: 3)
!4516 = !DILocation(line: 93, column: 3, scope: !4515)
!4517 = !DILocation(line: 0, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !498, line: 106, column: 19)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !498, line: 104, column: 13)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !498, line: 100, column: 20)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !498, line: 97, column: 15)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !498, line: 96, column: 9)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !498, line: 95, column: 11)
!4524 = distinct !DILexicalBlock(scope: !4514, file: !498, line: 94, column: 5)
!4525 = !DILocation(line: 95, column: 12, scope: !4523)
!4526 = !DILocation(line: 95, column: 11, scope: !4524)
!4527 = !DILocation(line: 97, column: 15, scope: !4521)
!4528 = !DILocation(line: 97, column: 35, scope: !4521)
!4529 = !DILocation(line: 97, column: 15, scope: !4522)
!4530 = !DILocation(line: 100, column: 29, scope: !4520)
!4531 = !DILocation(line: 100, column: 20, scope: !4521)
!4532 = !DILocation(line: 107, column: 19, scope: !4518)
!4533 = !DILocation(line: 107, column: 63, scope: !4518)
!4534 = !DILocation(line: 107, column: 53, scope: !4518)
!4535 = !DILocation(line: 108, column: 63, scope: !4518)
!4536 = !DILocation(line: 108, column: 53, scope: !4518)
!4537 = !DILocation(line: 107, column: 22, scope: !4518)
!4538 = !DILocation(line: 106, column: 19, scope: !4519)
!4539 = !DILocation(line: 113, column: 17, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4518, file: !498, line: 109, column: 17)
!4541 = !DILocation(line: 93, column: 28, scope: !4514)
!4542 = distinct !{!4542, !4516, !4543}
!4543 = !DILocation(line: 116, column: 5, scope: !4515)
!4544 = !DILocation(line: 87, column: 13, scope: !4498)
!4545 = !DILocation(line: 88, column: 8, scope: !4498)
!4546 = !DILocation(line: 117, column: 7, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4498, file: !498, line: 117, column: 7)
!4548 = !DILocation(line: 0, scope: !4547)
!4549 = !DILocation(line: 121, column: 1, scope: !4498)
!4550 = distinct !DISubprogram(name: "argmatch_invalid", scope: !498, file: !498, line: 129, type: !4551, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4553)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{null, !49, !49, !4501}
!4553 = !{!4554, !4555, !4556, !4557}
!4554 = !DILocalVariable(name: "context", arg: 1, scope: !4550, file: !498, line: 129, type: !49)
!4555 = !DILocalVariable(name: "value", arg: 2, scope: !4550, file: !498, line: 129, type: !49)
!4556 = !DILocalVariable(name: "problem", arg: 3, scope: !4550, file: !498, line: 129, type: !4501)
!4557 = !DILocalVariable(name: "format", scope: !4550, file: !498, line: 131, type: !49)
!4558 = !DILocation(line: 0, scope: !4550)
!4559 = !DILocation(line: 131, column: 33, scope: !4550)
!4560 = !DILocation(line: 131, column: 25, scope: !4550)
!4561 = !DILocation(line: 135, column: 24, scope: !4550)
!4562 = !DILocation(line: 136, column: 10, scope: !4550)
!4563 = !DILocation(line: 135, column: 3, scope: !4550)
!4564 = !DILocation(line: 137, column: 1, scope: !4550)
!4565 = distinct !DISubprogram(name: "argmatch_valid", scope: !498, file: !498, line: 144, type: !4566, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4568)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{null, !303, !297, !106}
!4568 = !{!4569, !4570, !4571, !4572, !4573}
!4569 = !DILocalVariable(name: "arglist", arg: 1, scope: !4565, file: !498, line: 144, type: !303)
!4570 = !DILocalVariable(name: "vallist", arg: 2, scope: !4565, file: !498, line: 145, type: !297)
!4571 = !DILocalVariable(name: "valsize", arg: 3, scope: !4565, file: !498, line: 145, type: !106)
!4572 = !DILocalVariable(name: "i", scope: !4565, file: !498, line: 147, type: !106)
!4573 = !DILocalVariable(name: "last_val", scope: !4565, file: !498, line: 148, type: !49)
!4574 = !DILocation(line: 0, scope: !4565)
!4575 = !DILocation(line: 152, column: 3, scope: !4565)
!4576 = !DILocation(line: 153, column: 15, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !498, line: 153, column: 3)
!4578 = distinct !DILexicalBlock(scope: !4565, file: !498, line: 153, column: 3)
!4579 = !DILocation(line: 153, column: 3, scope: !4578)
!4580 = !DILocation(line: 154, column: 12, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4577, file: !498, line: 154, column: 9)
!4582 = !DILocation(line: 155, column: 9, scope: !4581)
!4583 = !DILocation(line: 155, column: 63, scope: !4581)
!4584 = !DILocation(line: 155, column: 53, scope: !4581)
!4585 = !DILocation(line: 155, column: 12, scope: !4581)
!4586 = !DILocation(line: 154, column: 9, scope: !4577)
!4587 = !DILocation(line: 158, column: 53, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4581, file: !498, line: 156, column: 7)
!4589 = !DILocation(line: 157, column: 9, scope: !4588)
!4590 = !DILocation(line: 158, column: 43, scope: !4588)
!4591 = !DILocation(line: 159, column: 7, scope: !4588)
!4592 = !DILocation(line: 162, column: 9, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4581, file: !498, line: 161, column: 7)
!4594 = !DILocation(line: 153, column: 28, scope: !4577)
!4595 = distinct !{!4595, !4579, !4596}
!4596 = !DILocation(line: 163, column: 7, scope: !4578)
!4597 = !DILocation(line: 164, column: 3, scope: !4565)
!4598 = !DILocalVariable(name: "__c", arg: 1, scope: !4599, file: !1442, line: 101, type: !51)
!4599 = distinct !DISubprogram(name: "putc_unlocked", scope: !1442, file: !1442, line: 101, type: !4600, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4604)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!51, !51, !4602}
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !510)
!4604 = !{!4598, !4605}
!4605 = !DILocalVariable(name: "__stream", arg: 2, scope: !4599, file: !1442, line: 101, type: !4602)
!4606 = !DILocation(line: 0, scope: !4599, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 164, column: 3, scope: !4565)
!4608 = !DILocation(line: 103, column: 10, scope: !4599, inlinedAt: !4607)
!4609 = !DILocation(line: 165, column: 1, scope: !4565)
!4610 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !498, file: !498, line: 174, type: !4611, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4613)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!4501, !49, !49, !303, !297, !106, !548}
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4619, !4620}
!4614 = !DILocalVariable(name: "context", arg: 1, scope: !4610, file: !498, line: 174, type: !49)
!4615 = !DILocalVariable(name: "arg", arg: 2, scope: !4610, file: !498, line: 175, type: !49)
!4616 = !DILocalVariable(name: "arglist", arg: 3, scope: !4610, file: !498, line: 175, type: !303)
!4617 = !DILocalVariable(name: "vallist", arg: 4, scope: !4610, file: !498, line: 176, type: !297)
!4618 = !DILocalVariable(name: "valsize", arg: 5, scope: !4610, file: !498, line: 176, type: !106)
!4619 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !4610, file: !498, line: 177, type: !548)
!4620 = !DILocalVariable(name: "res", scope: !4610, file: !498, line: 179, type: !4501)
!4621 = !DILocation(line: 0, scope: !4610)
!4622 = !DILocation(line: 0, scope: !4498, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 179, column: 19, scope: !4610)
!4624 = !DILocation(line: 90, column: 12, scope: !4498, inlinedAt: !4623)
!4625 = !DILocation(line: 93, column: 15, scope: !4514, inlinedAt: !4623)
!4626 = !DILocation(line: 93, column: 3, scope: !4515, inlinedAt: !4623)
!4627 = !DILocation(line: 0, scope: !4518, inlinedAt: !4623)
!4628 = !DILocation(line: 95, column: 12, scope: !4523, inlinedAt: !4623)
!4629 = !DILocation(line: 95, column: 11, scope: !4524, inlinedAt: !4623)
!4630 = !DILocation(line: 97, column: 15, scope: !4521, inlinedAt: !4623)
!4631 = !DILocation(line: 97, column: 35, scope: !4521, inlinedAt: !4623)
!4632 = !DILocation(line: 97, column: 15, scope: !4522, inlinedAt: !4623)
!4633 = !DILocation(line: 100, column: 29, scope: !4520, inlinedAt: !4623)
!4634 = !DILocation(line: 100, column: 20, scope: !4521, inlinedAt: !4623)
!4635 = !DILocation(line: 107, column: 19, scope: !4518, inlinedAt: !4623)
!4636 = !DILocation(line: 107, column: 63, scope: !4518, inlinedAt: !4623)
!4637 = !DILocation(line: 107, column: 53, scope: !4518, inlinedAt: !4623)
!4638 = !DILocation(line: 108, column: 63, scope: !4518, inlinedAt: !4623)
!4639 = !DILocation(line: 108, column: 53, scope: !4518, inlinedAt: !4623)
!4640 = !DILocation(line: 107, column: 22, scope: !4518, inlinedAt: !4623)
!4641 = !DILocation(line: 106, column: 19, scope: !4519, inlinedAt: !4623)
!4642 = !DILocation(line: 113, column: 17, scope: !4540, inlinedAt: !4623)
!4643 = !DILocation(line: 93, column: 28, scope: !4514, inlinedAt: !4623)
!4644 = distinct !{!4644, !4626, !4645}
!4645 = !DILocation(line: 116, column: 5, scope: !4515, inlinedAt: !4623)
!4646 = !DILocation(line: 117, column: 7, scope: !4547, inlinedAt: !4623)
!4647 = !DILocation(line: 180, column: 11, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4610, file: !498, line: 180, column: 7)
!4649 = !DILocation(line: 180, column: 7, scope: !4610)
!4650 = !DILocation(line: 0, scope: !4550, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 185, column: 3, scope: !4610)
!4652 = !DILocation(line: 131, column: 33, scope: !4550, inlinedAt: !4651)
!4653 = !DILocation(line: 131, column: 25, scope: !4550, inlinedAt: !4651)
!4654 = !DILocation(line: 135, column: 24, scope: !4550, inlinedAt: !4651)
!4655 = !DILocation(line: 136, column: 10, scope: !4550, inlinedAt: !4651)
!4656 = !DILocation(line: 135, column: 3, scope: !4550, inlinedAt: !4651)
!4657 = !DILocation(line: 186, column: 3, scope: !4610)
!4658 = !DILocation(line: 187, column: 3, scope: !4610)
!4659 = !DILocation(line: 189, column: 3, scope: !4610)
!4660 = !DILocation(line: 190, column: 1, scope: !4610)
!4661 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !498, file: !498, line: 195, type: !4662, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4664)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!49, !297, !303, !297, !106}
!4664 = !{!4665, !4666, !4667, !4668, !4669}
!4665 = !DILocalVariable(name: "value", arg: 1, scope: !4661, file: !498, line: 195, type: !297)
!4666 = !DILocalVariable(name: "arglist", arg: 2, scope: !4661, file: !498, line: 196, type: !303)
!4667 = !DILocalVariable(name: "vallist", arg: 3, scope: !4661, file: !498, line: 197, type: !297)
!4668 = !DILocalVariable(name: "valsize", arg: 4, scope: !4661, file: !498, line: 197, type: !106)
!4669 = !DILocalVariable(name: "i", scope: !4661, file: !498, line: 199, type: !106)
!4670 = !DILocation(line: 0, scope: !4661)
!4671 = !DILocation(line: 201, column: 15, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !498, line: 201, column: 3)
!4673 = distinct !DILexicalBlock(scope: !4661, file: !498, line: 201, column: 3)
!4674 = !DILocation(line: 201, column: 3, scope: !4673)
!4675 = !DILocation(line: 202, column: 10, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4672, file: !498, line: 202, column: 9)
!4677 = !DILocation(line: 202, column: 9, scope: !4672)
!4678 = distinct !{!4678, !4674, !4679}
!4679 = !DILocation(line: 203, column: 23, scope: !4673)
!4680 = !DILocation(line: 202, column: 58, scope: !4676)
!4681 = !DILocation(line: 202, column: 48, scope: !4676)
!4682 = !DILocation(line: 201, column: 28, scope: !4672)
!4683 = !DILocation(line: 205, column: 1, scope: !4661)
!4684 = distinct !DISubprogram(name: "close_stream", scope: !816, file: !816, line: 56, type: !4685, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4689)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!51, !4687}
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !822)
!4689 = !{!4690, !4691, !4693, !4694}
!4690 = !DILocalVariable(name: "stream", arg: 1, scope: !4684, file: !816, line: 56, type: !4687)
!4691 = !DILocalVariable(name: "some_pending", scope: !4684, file: !816, line: 58, type: !4692)
!4692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!4693 = !DILocalVariable(name: "prev_fail", scope: !4684, file: !816, line: 59, type: !4692)
!4694 = !DILocalVariable(name: "fclose_fail", scope: !4684, file: !816, line: 60, type: !4692)
!4695 = !DILocation(line: 0, scope: !4684)
!4696 = !DILocation(line: 58, column: 30, scope: !4684)
!4697 = !DILocalVariable(name: "__stream", arg: 1, scope: !4698, file: !1442, line: 135, type: !4687)
!4698 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1442, file: !1442, line: 135, type: !4685, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4699)
!4699 = !{!4697}
!4700 = !DILocation(line: 0, scope: !4698, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 59, column: 27, scope: !4684)
!4702 = !DILocation(line: 137, column: 10, scope: !4698, inlinedAt: !4701)
!4703 = !DILocation(line: 59, column: 43, scope: !4684)
!4704 = !DILocation(line: 60, column: 29, scope: !4684)
!4705 = !DILocation(line: 60, column: 45, scope: !4684)
!4706 = !DILocation(line: 70, column: 17, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4684, file: !816, line: 70, column: 7)
!4708 = !DILocation(line: 58, column: 50, scope: !4684)
!4709 = !DILocation(line: 70, column: 33, scope: !4707)
!4710 = !DILocation(line: 70, column: 53, scope: !4707)
!4711 = !DILocation(line: 70, column: 59, scope: !4707)
!4712 = !DILocation(line: 70, column: 7, scope: !4684)
!4713 = !DILocation(line: 72, column: 11, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4707, file: !816, line: 71, column: 5)
!4715 = !DILocation(line: 73, column: 9, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4714, file: !816, line: 72, column: 11)
!4717 = !DILocation(line: 73, column: 15, scope: !4716)
!4718 = !DILocation(line: 78, column: 1, scope: !4684)
!4719 = distinct !DISubprogram(name: "hard_locale", scope: !854, file: !854, line: 27, type: !813, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !4720)
!4720 = !{!4721, !4722}
!4721 = !DILocalVariable(name: "category", arg: 1, scope: !4719, file: !854, line: 27, type: !51)
!4722 = !DILocalVariable(name: "locale", scope: !4719, file: !854, line: 29, type: !4723)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2056, elements: !4724)
!4724 = !{!4725}
!4725 = !DISubrange(count: 257)
!4726 = !DILocation(line: 0, scope: !4719)
!4727 = !DILocation(line: 29, column: 3, scope: !4719)
!4728 = !DILocation(line: 29, column: 8, scope: !4719)
!4729 = !DILocation(line: 31, column: 7, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4719, file: !854, line: 31, column: 7)
!4731 = !DILocation(line: 31, column: 7, scope: !4719)
!4732 = !DILocation(line: 34, column: 12, scope: !4719)
!4733 = !DILocation(line: 34, column: 38, scope: !4719)
!4734 = !DILocation(line: 34, column: 41, scope: !4719)
!4735 = !DILocation(line: 34, column: 66, scope: !4719)
!4736 = !DILocation(line: 35, column: 1, scope: !4719)
!4737 = distinct !DISubprogram(name: "locale_charset", scope: !861, file: !861, line: 831, type: !444, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !4738)
!4738 = !{!4739}
!4739 = !DILocalVariable(name: "codeset", scope: !4737, file: !861, line: 833, type: !49)
!4740 = !DILocation(line: 847, column: 13, scope: !4737)
!4741 = !DILocation(line: 0, scope: !4737)
!4742 = !DILocation(line: 911, column: 15, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4737, file: !861, line: 911, column: 7)
!4744 = !DILocation(line: 911, column: 7, scope: !4737)
!4745 = !DILocation(line: 1070, column: 13, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !861, line: 1070, column: 13)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !861, line: 1060, column: 7)
!4748 = distinct !DILexicalBlock(scope: !4737, file: !861, line: 1019, column: 3)
!4749 = !DILocation(line: 1070, column: 24, scope: !4746)
!4750 = !DILocation(line: 1070, column: 13, scope: !4747)
!4751 = !DILocation(line: 1158, column: 3, scope: !4737)
!4752 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1254, file: !1254, line: 269, type: !4753, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1253, retainedNodes: !4755)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!51, !51, !47, !106}
!4755 = !{!4756, !4757, !4758}
!4756 = !DILocalVariable(name: "category", arg: 1, scope: !4752, file: !1254, line: 269, type: !51)
!4757 = !DILocalVariable(name: "buf", arg: 2, scope: !4752, file: !1254, line: 269, type: !47)
!4758 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4752, file: !1254, line: 269, type: !106)
!4759 = !DILocation(line: 0, scope: !4752)
!4760 = !DILocalVariable(name: "category", arg: 1, scope: !4761, file: !1254, line: 91, type: !51)
!4761 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1254, file: !1254, line: 91, type: !4753, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1253, retainedNodes: !4762)
!4762 = !{!4760, !4763, !4764, !4765, !4766}
!4763 = !DILocalVariable(name: "buf", arg: 2, scope: !4761, file: !1254, line: 91, type: !47)
!4764 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4761, file: !1254, line: 91, type: !106)
!4765 = !DILocalVariable(name: "result", scope: !4761, file: !1254, line: 140, type: !49)
!4766 = !DILocalVariable(name: "length", scope: !4767, file: !1254, line: 154, type: !106)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !1254, line: 153, column: 5)
!4768 = distinct !DILexicalBlock(scope: !4761, file: !1254, line: 142, column: 7)
!4769 = !DILocation(line: 0, scope: !4761, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 274, column: 10, scope: !4752)
!4771 = !DILocalVariable(name: "category", arg: 1, scope: !4772, file: !1254, line: 60, type: !51)
!4772 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1254, file: !1254, line: 60, type: !4773, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1253, retainedNodes: !4775)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!49, !51}
!4775 = !{!4771, !4776}
!4776 = !DILocalVariable(name: "result", scope: !4772, file: !1254, line: 62, type: !49)
!4777 = !DILocation(line: 0, scope: !4772, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 140, column: 24, scope: !4761, inlinedAt: !4770)
!4779 = !DILocation(line: 62, column: 24, scope: !4772, inlinedAt: !4778)
!4780 = !DILocation(line: 142, column: 14, scope: !4768, inlinedAt: !4770)
!4781 = !DILocation(line: 142, column: 7, scope: !4761, inlinedAt: !4770)
!4782 = !DILocation(line: 145, column: 19, scope: !4783, inlinedAt: !4770)
!4783 = distinct !DILexicalBlock(scope: !4784, file: !1254, line: 145, column: 11)
!4784 = distinct !DILexicalBlock(scope: !4768, file: !1254, line: 143, column: 5)
!4785 = !DILocation(line: 145, column: 11, scope: !4784, inlinedAt: !4770)
!4786 = !DILocation(line: 149, column: 16, scope: !4783, inlinedAt: !4770)
!4787 = !DILocation(line: 149, column: 9, scope: !4783, inlinedAt: !4770)
!4788 = !DILocation(line: 154, column: 23, scope: !4767, inlinedAt: !4770)
!4789 = !DILocation(line: 0, scope: !4767, inlinedAt: !4770)
!4790 = !DILocation(line: 155, column: 18, scope: !4791, inlinedAt: !4770)
!4791 = distinct !DILexicalBlock(scope: !4767, file: !1254, line: 155, column: 11)
!4792 = !DILocation(line: 155, column: 11, scope: !4767, inlinedAt: !4770)
!4793 = !DILocation(line: 157, column: 39, scope: !4794, inlinedAt: !4770)
!4794 = distinct !DILexicalBlock(scope: !4791, file: !1254, line: 156, column: 9)
!4795 = !DILocalVariable(name: "__dest", arg: 1, scope: !4796, file: !1910, line: 31, type: !1987)
!4796 = distinct !DISubprogram(name: "memcpy", scope: !1910, file: !1910, line: 31, type: !1985, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1253, retainedNodes: !4797)
!4797 = !{!4795, !4798, !4799}
!4798 = !DILocalVariable(name: "__src", arg: 2, scope: !4796, file: !1910, line: 31, type: !1988)
!4799 = !DILocalVariable(name: "__len", arg: 3, scope: !4796, file: !1910, line: 31, type: !106)
!4800 = !DILocation(line: 0, scope: !4796, inlinedAt: !4801)
!4801 = distinct !DILocation(line: 157, column: 11, scope: !4794, inlinedAt: !4770)
!4802 = !DILocation(line: 34, column: 10, scope: !4796, inlinedAt: !4801)
!4803 = !DILocation(line: 158, column: 11, scope: !4794, inlinedAt: !4770)
!4804 = !DILocation(line: 162, column: 23, scope: !4805, inlinedAt: !4770)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !1254, line: 162, column: 15)
!4806 = distinct !DILexicalBlock(scope: !4791, file: !1254, line: 161, column: 9)
!4807 = !DILocation(line: 162, column: 15, scope: !4806, inlinedAt: !4770)
!4808 = !DILocation(line: 167, column: 44, scope: !4809, inlinedAt: !4770)
!4809 = distinct !DILexicalBlock(scope: !4805, file: !1254, line: 163, column: 13)
!4810 = !DILocation(line: 0, scope: !4796, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 167, column: 15, scope: !4809, inlinedAt: !4770)
!4812 = !DILocation(line: 34, column: 10, scope: !4796, inlinedAt: !4811)
!4813 = !DILocation(line: 168, column: 15, scope: !4809, inlinedAt: !4770)
!4814 = !DILocation(line: 168, column: 32, scope: !4809, inlinedAt: !4770)
!4815 = !DILocation(line: 169, column: 13, scope: !4809, inlinedAt: !4770)
!4816 = !DILocation(line: 0, scope: !4768, inlinedAt: !4770)
!4817 = !DILocation(line: 274, column: 3, scope: !4752)
!4818 = distinct !DISubprogram(name: "setlocale_null", scope: !1254, file: !1254, line: 301, type: !4773, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1253, retainedNodes: !4819)
!4819 = !{!4820}
!4820 = !DILocalVariable(name: "category", arg: 1, scope: !4818, file: !1254, line: 301, type: !51)
!4821 = !DILocation(line: 0, scope: !4818)
!4822 = !DILocation(line: 0, scope: !4772, inlinedAt: !4823)
!4823 = distinct !DILocation(line: 304, column: 10, scope: !4818)
!4824 = !DILocation(line: 62, column: 24, scope: !4772, inlinedAt: !4823)
!4825 = !DILocation(line: 304, column: 3, scope: !4818)
