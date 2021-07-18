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
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !53
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), align 8, !dbg !71
@.str.39 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !77
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !82
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !84
@.str.51 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.53 = private unnamed_addr constant [6 x i8] c"%.0Lf\00", align 1
@.str.3.54 = private unnamed_addr constant [6 x i8] c"%.1Lf\00", align 1
@power_letter = internal unnamed_addr constant [9 x i8] c"\00KMGTPEZY", align 1, !dbg !90
@.str.4.55 = private unnamed_addr constant [11 x i8] c"BLOCK_SIZE\00", align 1
@.str.5.56 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.9.57 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@block_size_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.60, i32 0, i32 0), i8* null], align 16, !dbg !107
@block_size_opts = internal constant [2 x i32] [i32 176, i32 144], align 4, !dbg !113
@.str.6.58 = private unnamed_addr constant [18 x i8] c"eEgGkKmMpPtTyYzZ0\00", align 1
@.str.7.59 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.8.60 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !122
@.str.65 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.71, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.77, i32 0, i32 0), i8* null], align 16, !dbg !128
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !156
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !162
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !174
@.str.11.78 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.79 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.80 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.81 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.82 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.83 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.84 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !181
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !188
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !176
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !190
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !195
@.str.1.126 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.131 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !203
@.str.144 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.145 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.146 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.147 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.148 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.1.153 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.157 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !667 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !671, metadata !DIExpression()), !dbg !672
  %3 = icmp eq i32 %0, 0, !dbg !673
  br i1 %3, label %9, label %4, !dbg !675

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !676, !tbaa !678
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #29, !dbg !676
  %7 = load i8*, i8** @program_name, align 8, !dbg !676, !tbaa !678
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #29, !dbg !676
  br label %64, !dbg !676

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #29, !dbg !682
  %11 = load i8*, i8** @program_name, align 8, !dbg !682, !tbaa !678
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #29, !dbg !682
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 5) #29, !dbg !684
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !678
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !684
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 5) #29, !dbg !685
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !678
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #29, !dbg !685
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), i32 5) #29, !dbg !689
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !678
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !689
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #29, !dbg !690
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !678
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !690
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #29, !dbg !691
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !678
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !691
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), metadata !692, metadata !DIExpression()) #29, !dbg !710
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !712
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #29, !dbg !712
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !697, metadata !DIExpression()) #29, !dbg !713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #29, !dbg !713
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), metadata !706, metadata !DIExpression()) #29, !dbg !710
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !707, metadata !DIExpression()) #29, !dbg !710
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !714
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !707, metadata !DIExpression()) #29, !dbg !710
  br label %30, !dbg !715

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !707, metadata !DIExpression()) #29, !dbg !710
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %31) #30, !dbg !716
  %34 = icmp eq i32 %33, 0, !dbg !716
  br i1 %34, label %40, label %35, !dbg !715

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !717
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !707, metadata !DIExpression()) #29, !dbg !710
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !718
  %38 = load i8*, i8** %37, align 8, !dbg !718, !tbaa !719
  %39 = icmp eq i8* %38, null, !dbg !721
  br i1 %39, label %40, label %30, !dbg !722, !llvm.loop !723

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !725
  %43 = load i8*, i8** %42, align 8, !dbg !725, !tbaa !727
  %44 = icmp eq i8* %43, null, !dbg !728
  %45 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %43, !dbg !729
  call void @llvm.dbg.value(metadata i8* %45, metadata !706, metadata !DIExpression()) #29, !dbg !710
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #29, !dbg !730
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #29, !dbg !730
  %48 = tail call i8* @setlocale(i32 5, i8* null) #29, !dbg !731
  call void @llvm.dbg.value(metadata i8* %48, metadata !709, metadata !DIExpression()) #29, !dbg !710
  %49 = icmp eq i8* %48, null, !dbg !732
  br i1 %49, label %57, label %50, !dbg !734

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #30, !dbg !735
  %52 = icmp eq i32 %51, 0, !dbg !735
  br i1 %52, label %57, label %53, !dbg !736

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #29, !dbg !737
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !678
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #29, !dbg !737
  br label %57, !dbg !739

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #29, !dbg !740
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #29, !dbg !740
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #29, !dbg !741
  %61 = icmp eq i8* %45, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), !dbg !741
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !741
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #29, !dbg !741
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #29, !dbg !742
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #31, !dbg !743
  unreachable, !dbg !743
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !744 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !748 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !804 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !808 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !813, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i8** %1, metadata !814, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* @bsd_sum_file, metadata !818, metadata !DIExpression()), !dbg !822
  %3 = load i8*, i8** %1, align 8, !dbg !823, !tbaa !678
  tail call void @set_program_name(i8* %3) #29, !dbg !824
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #29, !dbg !825
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #29, !dbg !826
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #29, !dbg !827
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #29, !dbg !828
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829, !tbaa !678
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #29, !dbg !830
  store i1 false, i1* @have_read_stdin, align 1, !dbg !831
  br label %10, !dbg !832

10:                                               ; preds = %13, %2
  %11 = phi i1 (i8*, i32)* [ @bsd_sum_file, %2 ], [ %14, %13 ], !dbg !822
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !818, metadata !DIExpression()), !dbg !822
  %12 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #29, !dbg !833
  call void @llvm.dbg.value(metadata i32 %12, metadata !816, metadata !DIExpression()), !dbg !822
  switch i32 %12, label %20 [
    i32 -1, label %21
    i32 114, label %13
    i32 115, label %15
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !832

13:                                               ; preds = %10, %15
  %14 = phi i1 (i8*, i32)* [ @sysv_sum_file, %15 ], [ @bsd_sum_file, %10 ]
  br label %10, !dbg !822, !llvm.loop !834

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* @sysv_sum_file, metadata !818, metadata !DIExpression()), !dbg !822
  br label %13, !dbg !836

16:                                               ; preds = %10
  tail call void @usage(i32 0) #32, !dbg !839
  unreachable, !dbg !839

17:                                               ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !840, !tbaa !678
  %19 = load i8*, i8** @Version, align 8, !dbg !840, !tbaa !678
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #29, !dbg !840
  tail call void @exit(i32 0) #31, !dbg !840
  unreachable, !dbg !840

20:                                               ; preds = %10
  tail call void @usage(i32 1) #32, !dbg !841
  unreachable, !dbg !841

21:                                               ; preds = %10
  %22 = load i32, i32* @optind, align 4, !dbg !842, !tbaa !843
  %23 = sub nsw i32 %0, %22, !dbg !845
  call void @llvm.dbg.value(metadata i32 %23, metadata !817, metadata !DIExpression()), !dbg !822
  %24 = icmp slt i32 %23, 1, !dbg !846
  br i1 %24, label %27, label %25, !dbg !848

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8 1, metadata !815, metadata !DIExpression()), !dbg !822
  %26 = icmp slt i32 %22, %0, !dbg !849
  br i1 %26, label %30, label %42, !dbg !852

27:                                               ; preds = %21
  %28 = tail call zeroext i1 %11(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 %23) #29, !dbg !853, !callees !854
  %29 = zext i1 %28 to i8, !dbg !855
  call void @llvm.dbg.value(metadata i8 %29, metadata !815, metadata !DIExpression()), !dbg !822
  br label %42, !dbg !856

30:                                               ; preds = %25, %30
  %31 = phi i32 [ %40, %30 ], [ %22, %25 ]
  %32 = phi i8 [ %38, %30 ], [ 1, %25 ]
  call void @llvm.dbg.value(metadata i8 %32, metadata !815, metadata !DIExpression()), !dbg !822
  %33 = sext i32 %31 to i64, !dbg !857
  %34 = getelementptr inbounds i8*, i8** %1, i64 %33, !dbg !857
  %35 = load i8*, i8** %34, align 8, !dbg !857, !tbaa !678
  %36 = tail call zeroext i1 %11(i8* %35, i32 %23) #29, !dbg !858, !callees !854
  %37 = zext i1 %36 to i8, !dbg !858
  %38 = and i8 %32, %37, !dbg !859
  call void @llvm.dbg.value(metadata i8 %38, metadata !815, metadata !DIExpression()), !dbg !822
  %39 = load i32, i32* @optind, align 4, !dbg !860, !tbaa !843
  %40 = add nsw i32 %39, 1, !dbg !860
  store i32 %40, i32* @optind, align 4, !dbg !860, !tbaa !843
  %41 = icmp slt i32 %40, %0, !dbg !849
  br i1 %41, label %30, label %42, !dbg !852, !llvm.loop !861

42:                                               ; preds = %30, %25, %27
  %43 = phi i8 [ %29, %27 ], [ 1, %25 ], [ %38, %30 ], !dbg !863
  call void @llvm.dbg.value(metadata i8 %43, metadata !815, metadata !DIExpression()), !dbg !822
  %44 = load i1, i1* @have_read_stdin, align 1, !dbg !864
  br i1 %44, label %45, label %53, !dbg !866

45:                                               ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !867, !tbaa !678
  %47 = tail call i32 @rpl_fclose(%struct._IO_FILE* %46) #29, !dbg !868
  %48 = icmp eq i32 %47, -1, !dbg !869
  br i1 %48, label %49, label %53, !dbg !870

49:                                               ; preds = %45
  %50 = tail call i32* @__errno_location() #33, !dbg !871
  %51 = load i32, i32* %50, align 4, !dbg !871, !tbaa !843
  %52 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #29, !dbg !871
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %52) #29, !dbg !871
  unreachable, !dbg !871

53:                                               ; preds = %45, %42
  %54 = xor i8 %43, 1, !dbg !872
  %55 = zext i8 %54 to i32, !dbg !872
  ret i32 %55, !dbg !873
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @bsd_sum_file(i8* %0, i32 %1) unnamed_addr #8 !dbg !874 {
  %3 = alloca [652 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %1, metadata !877, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 0, metadata !882, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i64 0, metadata !883, metadata !DIExpression()), !dbg !893
  %4 = getelementptr inbounds [652 x i8], [652 x i8]* %3, i64 0, i64 0, !dbg !894
  call void @llvm.lifetime.start.p0i8(i64 652, i8* nonnull %4) #29, !dbg !894
  call void @llvm.dbg.declare(metadata [652 x i8]* %3, metadata !888, metadata !DIExpression()), !dbg !895
  %5 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #30, !dbg !896
  %6 = icmp eq i32 %5, 0, !dbg !896
  call void @llvm.dbg.value(metadata i1 %6, metadata !892, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !893
  br i1 %6, label %7, label %9, !dbg !897

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !898, !tbaa !678
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !878, metadata !DIExpression()), !dbg !893
  store i1 true, i1* @have_read_stdin, align 1, !dbg !901
  br label %16, !dbg !902

9:                                                ; preds = %2
  %10 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)), !dbg !903
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !878, metadata !DIExpression()), !dbg !893
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !905
  br i1 %11, label %12, label %16, !dbg !907

12:                                               ; preds = %9
  %13 = tail call i32* @__errno_location() #33, !dbg !908
  %14 = load i32, i32* %13, align 4, !dbg !908, !tbaa !843
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #29, !dbg !910
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %15) #29, !dbg !911
  br label %77, !dbg !912

16:                                               ; preds = %9, %7
  %17 = phi %struct._IO_FILE* [ %8, %7 ], [ %10, %9 ], !dbg !913
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !878, metadata !DIExpression()), !dbg !893
  tail call void @fadvise(%struct._IO_FILE* %17, i32 2) #29, !dbg !914
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 1
  %19 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 2
  br label %20, !dbg !915

20:                                               ; preds = %33, %16
  %21 = phi i32 [ 0, %16 ], [ %40, %33 ], !dbg !893
  %22 = phi i64 [ 0, %16 ], [ %35, %33 ], !dbg !893
  call void @llvm.dbg.value(metadata i64 %22, metadata !883, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %21, metadata !882, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !916, metadata !DIExpression()) #29, !dbg !922
  %23 = load i8*, i8** %18, align 8, !dbg !924, !tbaa !925
  %24 = load i8*, i8** %19, align 8, !dbg !924, !tbaa !929
  %25 = icmp ult i8* %23, %24, !dbg !924
  br i1 %25, label %26, label %30, !dbg !924, !prof !930

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !924
  store i8* %27, i8** %18, align 8, !dbg !924, !tbaa !925
  %28 = load i8, i8* %23, align 1, !dbg !924, !tbaa !931
  %29 = zext i8 %28 to i32, !dbg !924
  call void @llvm.dbg.value(metadata i32 %31, metadata !887, metadata !DIExpression()), !dbg !893
  br label %33, !dbg !915

30:                                               ; preds = %20
  %31 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %17) #29, !dbg !924
  call void @llvm.dbg.value(metadata i32 %31, metadata !887, metadata !DIExpression()), !dbg !893
  %32 = icmp eq i32 %31, -1, !dbg !932
  br i1 %32, label %41, label %33, !dbg !915

33:                                               ; preds = %26, %30
  %34 = phi i32 [ %29, %26 ], [ %31, %30 ]
  %35 = add i64 %22, 1, !dbg !933
  call void @llvm.dbg.value(metadata i64 %35, metadata !883, metadata !DIExpression()), !dbg !893
  %36 = lshr i32 %21, 1, !dbg !935
  %37 = shl nuw nsw i32 %21, 15, !dbg !936
  %38 = or i32 %36, %37, !dbg !937
  call void @llvm.dbg.value(metadata i32 undef, metadata !882, metadata !DIExpression()), !dbg !893
  %39 = add i32 %38, %34, !dbg !938
  %40 = and i32 %39, 65535, !dbg !939
  call void @llvm.dbg.value(metadata i32 %40, metadata !882, metadata !DIExpression()), !dbg !893
  br label %20, !dbg !915, !llvm.loop !940

41:                                               ; preds = %30
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !942, metadata !DIExpression()), !dbg !945
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 0, !dbg !948
  %43 = load i32, i32* %42, align 8, !dbg !948, !tbaa !949
  %44 = and i32 %43, 32, !dbg !950
  %45 = icmp eq i32 %44, 0, !dbg !950
  br i1 %45, label %52, label %46, !dbg !951

46:                                               ; preds = %41
  %47 = tail call i32* @__errno_location() #33, !dbg !952
  %48 = load i32, i32* %47, align 4, !dbg !952, !tbaa !843
  %49 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #29, !dbg !954
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %49) #29, !dbg !955
  br i1 %6, label %77, label %50, !dbg !956

50:                                               ; preds = %46
  %51 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %17) #29, !dbg !957
  br label %77, !dbg !957

52:                                               ; preds = %41
  br i1 %6, label %60, label %53, !dbg !959

53:                                               ; preds = %52
  %54 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %17) #29, !dbg !961
  %55 = icmp eq i32 %54, 0, !dbg !962
  br i1 %55, label %60, label %56, !dbg !963

56:                                               ; preds = %53
  %57 = tail call i32* @__errno_location() #33, !dbg !964
  %58 = load i32, i32* %57, align 4, !dbg !964, !tbaa !843
  %59 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #29, !dbg !966
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %59) #29, !dbg !967
  br label %77, !dbg !968

60:                                               ; preds = %53, %52
  %61 = call i8* @human_readable(i64 %22, i8* nonnull %4, i32 0, i64 1, i64 1024) #29, !dbg !969
  %62 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i32 %21, i8* %61) #29, !dbg !969
  %63 = icmp sgt i32 %1, 1, !dbg !970
  br i1 %63, label %64, label %66, !dbg !972

64:                                               ; preds = %60
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #29, !dbg !973
  br label %66, !dbg !973

66:                                               ; preds = %64, %60
  call void @llvm.dbg.value(metadata i32 10, metadata !974, metadata !DIExpression()) #29, !dbg !979
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !981, !tbaa !678
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 5, !dbg !981
  %69 = load i8*, i8** %68, align 8, !dbg !981, !tbaa !982
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 6, !dbg !981
  %71 = load i8*, i8** %70, align 8, !dbg !981, !tbaa !983
  %72 = icmp ult i8* %69, %71, !dbg !981
  br i1 %72, label %75, label %73, !dbg !981, !prof !930

73:                                               ; preds = %66
  %74 = call i32 @__overflow(%struct._IO_FILE* nonnull %67, i32 10) #29, !dbg !981
  br label %77, !dbg !981

75:                                               ; preds = %66
  %76 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !981
  store i8* %76, i8** %68, align 8, !dbg !981, !tbaa !982
  store i8 10, i8* %69, align 1, !dbg !981, !tbaa !931
  br label %77, !dbg !981

77:                                               ; preds = %75, %73, %46, %50, %56, %12
  %78 = phi i1 [ false, %56 ], [ false, %12 ], [ false, %50 ], [ false, %46 ], [ true, %73 ], [ true, %75 ], !dbg !893
  call void @llvm.lifetime.end.p0i8(i64 652, i8* nonnull %4) #29, !dbg !984
  ret i1 %78, !dbg !984
}

; Function Attrs: nounwind
declare !dbg !985 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !988 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !991 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !995 noundef i32 @setvbuf(%struct._IO_FILE* nocapture noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !998 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @sysv_sum_file(i8* %0, i32 %1) unnamed_addr #8 !dbg !1004 {
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [652 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1006, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %1, metadata !1007, metadata !DIExpression()), !dbg !1023
  %5 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !1024
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %5) #29, !dbg !1024
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !1009, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i64 0, metadata !1013, metadata !DIExpression()), !dbg !1023
  %6 = getelementptr inbounds [652 x i8], [652 x i8]* %4, i64 0, i64 0, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 652, i8* nonnull %6) #29, !dbg !1026
  call void @llvm.dbg.declare(metadata [652 x i8]* %4, metadata !1014, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i32 0, metadata !1017, metadata !DIExpression()), !dbg !1023
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #30, !dbg !1028
  %8 = icmp eq i32 %7, 0, !dbg !1028
  call void @llvm.dbg.value(metadata i1 %8, metadata !1018, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1023
  br i1 %8, label %9, label %10, !dbg !1029

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1008, metadata !DIExpression()), !dbg !1023
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1030
  br label %17, !dbg !1033

10:                                               ; preds = %2
  %11 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 0) #29, !dbg !1034
  call void @llvm.dbg.value(metadata i32 %11, metadata !1008, metadata !DIExpression()), !dbg !1023
  %12 = icmp eq i32 %11, -1, !dbg !1036
  br i1 %12, label %13, label %17, !dbg !1038

13:                                               ; preds = %10
  %14 = tail call i32* @__errno_location() #33, !dbg !1039
  %15 = load i32, i32* %14, align 4, !dbg !1039, !tbaa !843
  %16 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #29, !dbg !1041
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %16) #29, !dbg !1042
  br label %140, !dbg !1043

17:                                               ; preds = %10, %9
  %18 = phi i32 [ 0, %9 ], [ %11, %10 ], !dbg !1044
  call void @llvm.dbg.value(metadata i32 %18, metadata !1008, metadata !DIExpression()), !dbg !1023
  br label %19, !dbg !1045

19:                                               ; preds = %106, %17
  %20 = phi i64 [ 0, %17 ], [ %108, %106 ], !dbg !1046
  %21 = phi i32 [ 0, %17 ], [ %107, %106 ], !dbg !1047
  call void @llvm.dbg.value(metadata i32 %21, metadata !1017, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i64 %20, metadata !1013, metadata !DIExpression()), !dbg !1023
  %22 = call i64 @safe_read(i32 %18, i8* nonnull %5, i64 8192) #29, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %22, metadata !1019, metadata !DIExpression()), !dbg !1049
  switch i64 %22, label %23 [
    i64 0, label %109
    i64 -1, label %91
  ], !dbg !1050

23:                                               ; preds = %19
  %24 = icmp ult i64 %22, 8, !dbg !1051
  br i1 %24, label %88, label %25, !dbg !1051

25:                                               ; preds = %23
  %26 = and i64 %22, -8, !dbg !1051
  %27 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %21, i32 0, !dbg !1051
  %28 = add i64 %26, -8, !dbg !1051
  %29 = lshr exact i64 %28, 3, !dbg !1051
  %30 = add nuw nsw i64 %29, 1, !dbg !1051
  %31 = and i64 %30, 1, !dbg !1051
  %32 = icmp eq i64 %28, 0, !dbg !1051
  br i1 %32, label %64, label %33, !dbg !1051

33:                                               ; preds = %25
  %34 = and i64 %30, 4611686018427387902, !dbg !1051
  br label %35, !dbg !1051

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %61, %35 ], !dbg !1052
  %37 = phi <4 x i32> [ %27, %33 ], [ %59, %35 ]
  %38 = phi <4 x i32> [ zeroinitializer, %33 ], [ %60, %35 ]
  %39 = phi i64 [ %34, %33 ], [ %62, %35 ]
  %40 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %36, !dbg !1054
  %41 = bitcast i8* %40 to <4 x i8>*, !dbg !1054
  %42 = load <4 x i8>, <4 x i8>* %41, align 16, !dbg !1054, !tbaa !931
  %43 = getelementptr inbounds i8, i8* %40, i64 4, !dbg !1054
  %44 = bitcast i8* %43 to <4 x i8>*, !dbg !1054
  %45 = load <4 x i8>, <4 x i8>* %44, align 4, !dbg !1054, !tbaa !931
  %46 = zext <4 x i8> %42 to <4 x i32>, !dbg !1054
  %47 = zext <4 x i8> %45 to <4 x i32>, !dbg !1054
  %48 = add <4 x i32> %37, %46, !dbg !1055
  %49 = add <4 x i32> %38, %47, !dbg !1055
  %50 = or i64 %36, 8, !dbg !1052
  %51 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %50, !dbg !1054
  %52 = bitcast i8* %51 to <4 x i8>*, !dbg !1054
  %53 = load <4 x i8>, <4 x i8>* %52, align 8, !dbg !1054, !tbaa !931
  %54 = getelementptr inbounds i8, i8* %51, i64 4, !dbg !1054
  %55 = bitcast i8* %54 to <4 x i8>*, !dbg !1054
  %56 = load <4 x i8>, <4 x i8>* %55, align 4, !dbg !1054, !tbaa !931
  %57 = zext <4 x i8> %53 to <4 x i32>, !dbg !1054
  %58 = zext <4 x i8> %56 to <4 x i32>, !dbg !1054
  %59 = add <4 x i32> %48, %57, !dbg !1055
  %60 = add <4 x i32> %49, %58, !dbg !1055
  %61 = add i64 %36, 16, !dbg !1052
  %62 = add i64 %39, -2, !dbg !1052
  %63 = icmp eq i64 %62, 0, !dbg !1052
  br i1 %63, label %64, label %35, !dbg !1052, !llvm.loop !1056

64:                                               ; preds = %35, %25
  %65 = phi <4 x i32> [ undef, %25 ], [ %59, %35 ]
  %66 = phi <4 x i32> [ undef, %25 ], [ %60, %35 ]
  %67 = phi i64 [ 0, %25 ], [ %61, %35 ]
  %68 = phi <4 x i32> [ %27, %25 ], [ %59, %35 ]
  %69 = phi <4 x i32> [ zeroinitializer, %25 ], [ %60, %35 ]
  %70 = icmp eq i64 %31, 0, !dbg !1052
  br i1 %70, label %82, label %71, !dbg !1052

71:                                               ; preds = %64
  %72 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %67, !dbg !1054
  %73 = getelementptr inbounds i8, i8* %72, i64 4, !dbg !1054
  %74 = bitcast i8* %73 to <4 x i8>*, !dbg !1054
  %75 = load <4 x i8>, <4 x i8>* %74, align 4, !dbg !1054, !tbaa !931
  %76 = zext <4 x i8> %75 to <4 x i32>, !dbg !1054
  %77 = add <4 x i32> %69, %76, !dbg !1055
  %78 = bitcast i8* %72 to <4 x i8>*, !dbg !1054
  %79 = load <4 x i8>, <4 x i8>* %78, align 8, !dbg !1054, !tbaa !931
  %80 = zext <4 x i8> %79 to <4 x i32>, !dbg !1054
  %81 = add <4 x i32> %68, %80, !dbg !1055
  br label %82, !dbg !1051

82:                                               ; preds = %64, %71
  %83 = phi <4 x i32> [ %65, %64 ], [ %81, %71 ], !dbg !1055
  %84 = phi <4 x i32> [ %66, %64 ], [ %77, %71 ], !dbg !1055
  %85 = add <4 x i32> %84, %83, !dbg !1051
  %86 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %85), !dbg !1051
  %87 = icmp eq i64 %22, %26, !dbg !1051
  br i1 %87, label %106, label %88, !dbg !1051

88:                                               ; preds = %23, %82
  %89 = phi i64 [ 0, %23 ], [ %26, %82 ]
  %90 = phi i32 [ %21, %23 ], [ %86, %82 ]
  br label %97, !dbg !1051

91:                                               ; preds = %19
  %92 = tail call i32* @__errno_location() #33, !dbg !1059
  %93 = load i32, i32* %92, align 4, !dbg !1059, !tbaa !843
  %94 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #29, !dbg !1062
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %94) #29, !dbg !1063
  br i1 %8, label %140, label %95, !dbg !1064

95:                                               ; preds = %91
  %96 = call i32 @close(i32 %18) #29, !dbg !1065
  br label %140, !dbg !1065

97:                                               ; preds = %88, %97
  %98 = phi i64 [ %104, %97 ], [ %89, %88 ]
  %99 = phi i32 [ %103, %97 ], [ %90, %88 ]
  call void @llvm.dbg.value(metadata i64 %98, metadata !1021, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 %99, metadata !1017, metadata !DIExpression()), !dbg !1023
  %100 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %98, !dbg !1054
  %101 = load i8, i8* %100, align 1, !dbg !1054, !tbaa !931
  %102 = zext i8 %101 to i32, !dbg !1054
  %103 = add i32 %99, %102, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %103, metadata !1017, metadata !DIExpression()), !dbg !1023
  %104 = add nuw i64 %98, 1, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %104, metadata !1021, metadata !DIExpression()), !dbg !1067
  %105 = icmp eq i64 %104, %22, !dbg !1068
  br i1 %105, label %106, label %97, !dbg !1051, !llvm.loop !1069

106:                                              ; preds = %97, %82
  %107 = phi i32 [ %86, %82 ], [ %103, %97 ], !dbg !1055
  %108 = add i64 %22, %20, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %107, metadata !1017, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i64 %108, metadata !1013, metadata !DIExpression()), !dbg !1023
  br label %19

109:                                              ; preds = %19
  call void @llvm.dbg.value(metadata i32 %107, metadata !1017, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i64 %108, metadata !1013, metadata !DIExpression()), !dbg !1023
  br i1 %8, label %117, label %110, !dbg !1072

110:                                              ; preds = %109
  %111 = call i32 @close(i32 %18) #29, !dbg !1074
  %112 = icmp eq i32 %111, 0, !dbg !1075
  br i1 %112, label %117, label %113, !dbg !1076

113:                                              ; preds = %110
  %114 = tail call i32* @__errno_location() #33, !dbg !1077
  %115 = load i32, i32* %114, align 4, !dbg !1077, !tbaa !843
  %116 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #29, !dbg !1079
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %116) #29, !dbg !1080
  br label %140, !dbg !1081

117:                                              ; preds = %110, %109
  %118 = and i32 %21, 65535, !dbg !1082
  %119 = lshr i32 %21, 16, !dbg !1083
  %120 = add nuw nsw i32 %118, %119, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %120, metadata !1015, metadata !DIExpression()), !dbg !1023
  %121 = and i32 %120, 65535, !dbg !1085
  %122 = lshr i32 %120, 16, !dbg !1086
  %123 = add nuw nsw i32 %121, %122, !dbg !1087
  call void @llvm.dbg.value(metadata i32 %123, metadata !1016, metadata !DIExpression()), !dbg !1023
  %124 = call i8* @human_readable(i64 %20, i8* nonnull %6, i32 0, i64 1, i64 512) #29, !dbg !1088
  %125 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %123, i8* %124) #29, !dbg !1088
  %126 = icmp eq i32 %1, 0, !dbg !1089
  br i1 %126, label %129, label %127, !dbg !1091

127:                                              ; preds = %117
  %128 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #29, !dbg !1092
  br label %129, !dbg !1092

129:                                              ; preds = %127, %117
  call void @llvm.dbg.value(metadata i32 10, metadata !974, metadata !DIExpression()) #29, !dbg !1093
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1095, !tbaa !678
  %131 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %130, i64 0, i32 5, !dbg !1095
  %132 = load i8*, i8** %131, align 8, !dbg !1095, !tbaa !982
  %133 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %130, i64 0, i32 6, !dbg !1095
  %134 = load i8*, i8** %133, align 8, !dbg !1095, !tbaa !983
  %135 = icmp ult i8* %132, %134, !dbg !1095
  br i1 %135, label %138, label %136, !dbg !1095, !prof !930

136:                                              ; preds = %129
  %137 = call i32 @__overflow(%struct._IO_FILE* nonnull %130, i32 10) #29, !dbg !1095
  br label %140, !dbg !1095

138:                                              ; preds = %129
  %139 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !1095
  store i8* %139, i8** %131, align 8, !dbg !1095, !tbaa !982
  store i8 10, i8* %132, align 1, !dbg !1095, !tbaa !931
  br label %140, !dbg !1095

140:                                              ; preds = %91, %95, %138, %136, %113, %13
  %141 = phi i1 [ false, %113 ], [ false, %13 ], [ true, %136 ], [ true, %138 ], [ false, %95 ], [ false, %91 ]
  call void @llvm.lifetime.end.p0i8(i64 652, i8* nonnull %6) #29, !dbg !1096
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %5) #29, !dbg !1096
  ret i1 %141, !dbg !1096
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !1097 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !1101 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

declare !dbg !1105 i32 @close(i32) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1109, metadata !DIExpression()), !dbg !1110
  store i8* %0, i8** @file_name, align 8, !dbg !1111, !tbaa !678
  ret void, !dbg !1112
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1113 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1117, metadata !DIExpression()), !dbg !1118
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1119, !tbaa !1120
  ret void, !dbg !1122
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1123 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1128, !tbaa !678
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #29, !dbg !1129
  %3 = icmp eq i32 %2, 0, !dbg !1130
  br i1 %3, label %22, label %4, !dbg !1131

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1132, !tbaa !1120, !range !1133
  %6 = icmp eq i8 %5, 0, !dbg !1132
  br i1 %6, label %11, label %7, !dbg !1134

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #33, !dbg !1135
  %9 = load i32, i32* %8, align 4, !dbg !1135, !tbaa !843
  %10 = icmp eq i32 %9, 32, !dbg !1136
  br i1 %10, label %22, label %11, !dbg !1137

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #29, !dbg !1138
  call void @llvm.dbg.value(metadata i8* %12, metadata !1125, metadata !DIExpression()), !dbg !1139
  %13 = load i8*, i8** @file_name, align 8, !dbg !1140, !tbaa !678
  %14 = icmp eq i8* %13, null, !dbg !1140
  %15 = tail call i32* @__errno_location() #33, !dbg !1142
  %16 = load i32, i32* %15, align 4, !dbg !1142, !tbaa !843
  br i1 %14, label %19, label %17, !dbg !1143

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #29, !dbg !1144
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.43, i64 0, i64 0), i8* %18, i8* %12) #29, !dbg !1145
  br label %20, !dbg !1145

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0), i8* %12) #29, !dbg !1146
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1147, !tbaa !843
  tail call void @_exit(i32 %21) #31, !dbg !1148
  unreachable, !dbg !1148

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1149, !tbaa !678
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #29, !dbg !1151
  %25 = icmp eq i32 %24, 0, !dbg !1152
  br i1 %25, label %28, label %26, !dbg !1153

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1154, !tbaa !843
  tail call void @_exit(i32 %27) #31, !dbg !1155
  unreachable, !dbg !1155

28:                                               ; preds = %22
  ret void, !dbg !1156
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1163, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %1, metadata !1164, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %2, metadata !1165, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i32 %3, metadata !1166, metadata !DIExpression()), !dbg !1169
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #29, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %5, metadata !1167, metadata !DIExpression()), !dbg !1171
  ret void, !dbg !1172
}

; Function Attrs: nounwind
declare !dbg !1173 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1176 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1214, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 %1, metadata !1215, metadata !DIExpression()), !dbg !1216
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1217
  br i1 %3, label %7, label %4, !dbg !1219

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !1220
  call void @llvm.dbg.value(metadata i32 %5, metadata !1163, metadata !DIExpression()) #29, !dbg !1221
  call void @llvm.dbg.value(metadata i64 0, metadata !1164, metadata !DIExpression()) #29, !dbg !1221
  call void @llvm.dbg.value(metadata i64 0, metadata !1165, metadata !DIExpression()) #29, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %1, metadata !1166, metadata !DIExpression()) #29, !dbg !1221
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #29, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %6, metadata !1167, metadata !DIExpression()) #29, !dbg !1224
  br label %7, !dbg !1225

7:                                                ; preds = %4, %2
  ret void, !dbg !1226
}

; Function Attrs: nofree nounwind
declare !dbg !1227 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @human_readable(i64 %0, i8* %1, i32 %2, i64 %3, i64 %4) local_unnamed_addr #8 !dbg !1230 {
  %6 = alloca [41 x i8], align 16
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1293, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1319
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1296, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1320
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %0, metadata !1234, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %1, metadata !1235, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %2, metadata !1236, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %3, metadata !1237, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %4, metadata !1238, metadata !DIExpression()), !dbg !1322
  %7 = and i32 %2, 3, !dbg !1323
  call void @llvm.dbg.value(metadata i32 %7, metadata !1239, metadata !DIExpression()), !dbg !1322
  %8 = and i32 %2, 32, !dbg !1324
  %9 = icmp ne i32 %8, 0, !dbg !1325
  %10 = select i1 %9, i32 1024, i32 1000, !dbg !1325
  call void @llvm.dbg.value(metadata i32 %10, metadata !1240, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 -1, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 8, metadata !1244, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1249, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 1, metadata !1250, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.52, i64 0, i64 0), metadata !1251, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.52, i64 0, i64 0), metadata !1252, metadata !DIExpression()), !dbg !1322
  %11 = tail call %struct.lconv* @localeconv() #29, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.lconv* %11, metadata !1253, metadata !DIExpression()), !dbg !1322
  %12 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 0, !dbg !1327
  %13 = load i8*, i8** %12, align 8, !dbg !1327, !tbaa !1328
  %14 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %13) #30, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %14, metadata !1282, metadata !DIExpression()), !dbg !1322
  %15 = add i64 %14, -1, !dbg !1331
  %16 = icmp ult i64 %15, 16, !dbg !1331
  %17 = select i1 %16, i64 %14, i64 1, !dbg !1331
  %18 = select i1 %16, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), !dbg !1331
  call void @llvm.dbg.value(metadata i8* %18, metadata !1249, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %17, metadata !1250, metadata !DIExpression()), !dbg !1322
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 2, !dbg !1333
  %20 = load i8*, i8** %19, align 8, !dbg !1333, !tbaa !1334
  call void @llvm.dbg.value(metadata i8* %20, metadata !1251, metadata !DIExpression()), !dbg !1322
  %21 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 1, !dbg !1335
  %22 = load i8*, i8** %21, align 8, !dbg !1335, !tbaa !1337
  %23 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %22) #30, !dbg !1338
  %24 = icmp ult i64 %23, 17, !dbg !1339
  %25 = select i1 %24, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.52, i64 0, i64 0), !dbg !1340
  call void @llvm.dbg.value(metadata i8* %25, metadata !1252, metadata !DIExpression()), !dbg !1322
  %26 = getelementptr inbounds i8, i8* %1, i64 647, !dbg !1341
  call void @llvm.dbg.value(metadata i8* %26, metadata !1246, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %26, metadata !1245, metadata !DIExpression()), !dbg !1322
  %27 = icmp ugt i64 %4, %3, !dbg !1342
  br i1 %27, label %36, label %28, !dbg !1343

28:                                               ; preds = %5
  %29 = urem i64 %3, %4, !dbg !1344
  %30 = udiv i64 %3, %4, !dbg !1345
  %31 = icmp eq i64 %29, 0, !dbg !1346
  br i1 %31, label %32, label %56, !dbg !1347

32:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %30, metadata !1283, metadata !DIExpression()), !dbg !1348
  %33 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %30, i64 %0), !dbg !1349
  %34 = extractvalue { i64, i1 } %33, 0, !dbg !1349
  %35 = extractvalue { i64, i1 } %33, 1, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %34, metadata !1241, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 0, metadata !1242, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 0, metadata !1248, metadata !DIExpression()), !dbg !1322
  br i1 %35, label %56, label %143

36:                                               ; preds = %5
  %37 = icmp eq i64 %3, 0, !dbg !1350
  br i1 %37, label %56, label %38, !dbg !1351

38:                                               ; preds = %36
  %39 = urem i64 %4, %3, !dbg !1352
  %40 = udiv i64 %4, %3, !dbg !1353
  %41 = icmp eq i64 %39, 0, !dbg !1354
  br i1 %41, label %42, label %56, !dbg !1355

42:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 %40, metadata !1288, metadata !DIExpression()), !dbg !1356
  %43 = urem i64 %0, %40, !dbg !1357
  %44 = mul i64 %43, 10, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %44, metadata !1291, metadata !DIExpression()), !dbg !1356
  %45 = urem i64 %44, %40, !dbg !1359
  %46 = shl i64 %45, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %46, metadata !1292, metadata !DIExpression()), !dbg !1356
  %47 = udiv i64 %0, %40, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %47, metadata !1241, metadata !DIExpression()), !dbg !1322
  %48 = udiv i64 %44, %40, !dbg !1362
  %49 = trunc i64 %48 to i32, !dbg !1363
  call void @llvm.dbg.value(metadata i32 %49, metadata !1242, metadata !DIExpression()), !dbg !1322
  %50 = icmp ult i64 %46, %40, !dbg !1364
  %51 = icmp ne i64 %46, 0, !dbg !1365
  %52 = zext i1 %51 to i32, !dbg !1365
  %53 = icmp ult i64 %40, %46, !dbg !1365
  %54 = select i1 %53, i32 3, i32 2, !dbg !1365
  %55 = select i1 %50, i32 %52, i32 %54, !dbg !1365
  br label %143, !dbg !1365

56:                                               ; preds = %32, %36, %38, %28
  %57 = uitofp i64 %4 to x86_fp80, !dbg !1366
  call void @llvm.dbg.value(metadata x86_fp80 %57, metadata !1293, metadata !DIExpression()), !dbg !1367
  %58 = uitofp i64 %0 to x86_fp80, !dbg !1368
  %59 = uitofp i64 %3 to x86_fp80, !dbg !1369
  %60 = fdiv x86_fp80 %59, %57, !dbg !1370
  %61 = fmul x86_fp80 %60, %58, !dbg !1371
  call void @llvm.dbg.value(metadata x86_fp80 %61, metadata !1296, metadata !DIExpression()), !dbg !1367
  %62 = and i32 %2, 16, !dbg !1372
  %63 = icmp eq i32 %62, 0, !dbg !1372
  br i1 %63, label %68, label %64, !dbg !1373

64:                                               ; preds = %56
  %65 = uitofp i32 %10 to x86_fp80
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata x86_fp80 %65, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1322
  %66 = fmul x86_fp80 %65, %65, !dbg !1375
  %67 = fcmp ugt x86_fp80 %66, %61, !dbg !1376
  br i1 %67, label %85, label %378, !dbg !1377, !llvm.loop !1379

68:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 %7, metadata !1382, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata x86_fp80 %61, metadata !1387, metadata !DIExpression()), !dbg !1391
  %69 = icmp ne i32 %7, 1, !dbg !1394
  %70 = fcmp olt x86_fp80 %61, 0xK403EFFFFFFFFFFFFFFFF
  %71 = and i1 %69, %70, !dbg !1395
  br i1 %71, label %72, label %81, !dbg !1395

72:                                               ; preds = %68
  %73 = fptoui x86_fp80 %61 to i64, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %73, metadata !1388, metadata !DIExpression()), !dbg !1397
  %74 = icmp eq i32 %7, 0, !dbg !1398
  %75 = uitofp i64 %73 to x86_fp80, !dbg !1399
  %76 = fcmp une x86_fp80 %61, %75, !dbg !1399
  %77 = and i1 %74, %76, !dbg !1399
  %78 = zext i1 %77 to i64, !dbg !1400
  %79 = add i64 %78, %73, !dbg !1401
  %80 = uitofp i64 %79 to x86_fp80, !dbg !1402
  call void @llvm.dbg.value(metadata x86_fp80 %80, metadata !1387, metadata !DIExpression()), !dbg !1391
  br label %81, !dbg !1403

81:                                               ; preds = %68, %72
  %82 = phi x86_fp80 [ %80, %72 ], [ %61, %68 ]
  call void @llvm.dbg.value(metadata x86_fp80 %82, metadata !1387, metadata !DIExpression()), !dbg !1391
  %83 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.53, i64 0, i64 0), x86_fp80 %82) #29, !dbg !1404
  %84 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #30, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %84, metadata !1297, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 0, metadata !1298, metadata !DIExpression()), !dbg !1367
  br label %135, !dbg !1406

85:                                               ; preds = %402, %398, %394, %390, %386, %382, %378, %64
  %86 = phi x86_fp80 [ %65, %64 ], [ %379, %378 ], [ %383, %382 ], [ %387, %386 ], [ %391, %390 ], [ %395, %394 ], [ %399, %398 ], [ %403, %402 ], !dbg !1407
  %87 = phi i32 [ 1, %64 ], [ 2, %378 ], [ 3, %382 ], [ 4, %386 ], [ 5, %390 ], [ 6, %394 ], [ 7, %398 ], [ 8, %402 ], !dbg !1408
  %88 = fdiv x86_fp80 %61, %86, !dbg !1409
  call void @llvm.dbg.value(metadata x86_fp80 %88, metadata !1296, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %7, metadata !1382, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata x86_fp80 %88, metadata !1387, metadata !DIExpression()), !dbg !1410
  %89 = icmp ne i32 %7, 1, !dbg !1412
  %90 = fcmp olt x86_fp80 %88, 0xK403EFFFFFFFFFFFFFFFF
  %91 = and i1 %89, %90, !dbg !1413
  br i1 %91, label %92, label %101, !dbg !1413

92:                                               ; preds = %85
  %93 = fptoui x86_fp80 %88 to i64, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %93, metadata !1388, metadata !DIExpression()), !dbg !1415
  %94 = icmp eq i32 %7, 0, !dbg !1416
  %95 = uitofp i64 %93 to x86_fp80, !dbg !1417
  %96 = fcmp une x86_fp80 %88, %95, !dbg !1417
  %97 = and i1 %94, %96, !dbg !1417
  %98 = zext i1 %97 to i64, !dbg !1418
  %99 = add i64 %98, %93, !dbg !1419
  %100 = uitofp i64 %99 to x86_fp80, !dbg !1420
  call void @llvm.dbg.value(metadata x86_fp80 %100, metadata !1387, metadata !DIExpression()), !dbg !1410
  br label %101, !dbg !1421

101:                                              ; preds = %85, %92
  %102 = phi x86_fp80 [ %100, %92 ], [ %88, %85 ]
  call void @llvm.dbg.value(metadata x86_fp80 %102, metadata !1387, metadata !DIExpression()), !dbg !1410
  %103 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.54, i64 0, i64 0), x86_fp80 %102) #29, !dbg !1422
  %104 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #30, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %104, metadata !1297, metadata !DIExpression()), !dbg !1367
  %105 = xor i64 %17, -1, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %17, metadata !1298, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1367
  %106 = select i1 %9, i64 2, i64 3, !dbg !1425
  %107 = add i64 %106, %17, !dbg !1427
  %108 = icmp ult i64 %107, %104, !dbg !1428
  br i1 %108, label %117, label %109, !dbg !1429

109:                                              ; preds = %101
  %110 = and i32 %2, 8, !dbg !1430
  %111 = icmp eq i32 %110, 0, !dbg !1430
  br i1 %111, label %135, label %112, !dbg !1431

112:                                              ; preds = %109
  %113 = add i64 %104, -1, !dbg !1432
  %114 = getelementptr inbounds i8, i8* %1, i64 %113, !dbg !1433
  %115 = load i8, i8* %114, align 1, !dbg !1433, !tbaa !931
  %116 = icmp eq i8 %115, 48, !dbg !1434
  br i1 %116, label %117, label %135, !dbg !1435

117:                                              ; preds = %112, %101
  %118 = fmul x86_fp80 %88, 0xK4002A000000000000000, !dbg !1436
  call void @llvm.dbg.value(metadata i32 %7, metadata !1382, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata x86_fp80 %118, metadata !1387, metadata !DIExpression()), !dbg !1438
  %119 = fcmp olt x86_fp80 %118, 0xK403EFFFFFFFFFFFFFFFF
  %120 = and i1 %89, %119, !dbg !1440
  br i1 %120, label %121, label %130, !dbg !1440

121:                                              ; preds = %117
  %122 = fptoui x86_fp80 %118 to i64, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %122, metadata !1388, metadata !DIExpression()), !dbg !1442
  %123 = icmp eq i32 %7, 0, !dbg !1443
  %124 = uitofp i64 %122 to x86_fp80, !dbg !1444
  %125 = fcmp une x86_fp80 %118, %124, !dbg !1444
  %126 = and i1 %123, %125, !dbg !1444
  %127 = zext i1 %126 to i64, !dbg !1445
  %128 = add i64 %127, %122, !dbg !1446
  %129 = uitofp i64 %128 to x86_fp80, !dbg !1447
  call void @llvm.dbg.value(metadata x86_fp80 %129, metadata !1387, metadata !DIExpression()), !dbg !1438
  br label %130, !dbg !1448

130:                                              ; preds = %117, %121
  %131 = phi x86_fp80 [ %129, %121 ], [ %118, %117 ]
  call void @llvm.dbg.value(metadata x86_fp80 %131, metadata !1387, metadata !DIExpression()), !dbg !1438
  %132 = fdiv x86_fp80 %131, 0xK4002A000000000000000, !dbg !1436
  %133 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.53, i64 0, i64 0), x86_fp80 %132) #29, !dbg !1436
  %134 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #30, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %134, metadata !1297, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 0, metadata !1298, metadata !DIExpression()), !dbg !1367
  br label %135, !dbg !1450

135:                                              ; preds = %109, %112, %130, %81
  %136 = phi i64 [ %84, %81 ], [ %134, %130 ], [ %104, %112 ], [ %104, %109 ], !dbg !1451
  %137 = phi i64 [ 0, %81 ], [ 0, %130 ], [ %105, %112 ], [ %105, %109 ], !dbg !1451
  %138 = phi i32 [ -1, %81 ], [ %87, %130 ], [ %87, %112 ], [ %87, %109 ], !dbg !1322
  call void @llvm.dbg.value(metadata i32 %138, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 undef, metadata !1298, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %136, metadata !1297, metadata !DIExpression()), !dbg !1367
  %139 = sub i64 0, %136, !dbg !1452
  %140 = getelementptr inbounds i8, i8* %26, i64 %139, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %140, metadata !1245, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %140, metadata !1453, metadata !DIExpression()) #29, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %1, metadata !1459, metadata !DIExpression()) #29, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %136, metadata !1460, metadata !DIExpression()) #29, !dbg !1461
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %140, i8* nonnull align 1 %1, i64 %136, i1 false) #29, !dbg !1463
  %141 = getelementptr inbounds i8, i8* %140, i64 %136, !dbg !1464
  %142 = getelementptr inbounds i8, i8* %141, i64 %137, !dbg !1465
  call void @llvm.dbg.value(metadata i8* %142, metadata !1247, metadata !DIExpression()), !dbg !1322
  br label %260, !dbg !1466

143:                                              ; preds = %42, %32
  %144 = phi i32 [ 0, %32 ], [ %55, %42 ], !dbg !1467
  %145 = phi i32 [ 0, %32 ], [ %49, %42 ], !dbg !1467
  %146 = phi i64 [ %34, %32 ], [ %47, %42 ], !dbg !1467
  call void @llvm.dbg.value(metadata i64 %146, metadata !1241, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %145, metadata !1242, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %144, metadata !1248, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.label(metadata !1317), !dbg !1468
  %147 = and i32 %2, 16, !dbg !1469
  %148 = icmp eq i32 %147, 0, !dbg !1469
  br i1 %148, label %214, label %149, !dbg !1470

149:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1322
  %150 = zext i32 %10 to i64, !dbg !1471
  %151 = icmp ult i64 %146, %150, !dbg !1472
  br i1 %151, label %214, label %152, !dbg !1473

152:                                              ; preds = %149, %176
  %153 = phi i32 [ %177, %176 ], [ %144, %149 ], !dbg !1322
  %154 = phi i32 [ %178, %176 ], [ 0, %149 ], !dbg !1474
  %155 = phi i32 [ %166, %176 ], [ %145, %149 ], !dbg !1322
  %156 = phi i64 [ %165, %176 ], [ %146, %149 ], !dbg !1322
  call void @llvm.dbg.value(metadata i64 %156, metadata !1241, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %155, metadata !1242, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %154, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %153, metadata !1248, metadata !DIExpression()), !dbg !1322
  %157 = urem i64 %156, %150, !dbg !1475
  %158 = trunc i64 %157 to i32, !dbg !1476
  %159 = mul nuw nsw i32 %158, 10, !dbg !1476
  %160 = add i32 %159, %155, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %160, metadata !1302, metadata !DIExpression()), !dbg !1477
  %161 = urem i32 %160, %10, !dbg !1478
  %162 = shl nuw nsw i32 %161, 1, !dbg !1479
  %163 = lshr i32 %153, 1, !dbg !1480
  %164 = add nuw nsw i32 %162, %163, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %164, metadata !1309, metadata !DIExpression()), !dbg !1477
  %165 = udiv i64 %156, %150, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %165, metadata !1241, metadata !DIExpression()), !dbg !1322
  %166 = udiv i32 %160, %10, !dbg !1483
  call void @llvm.dbg.value(metadata i32 %166, metadata !1242, metadata !DIExpression()), !dbg !1322
  %167 = icmp ult i32 %164, %10, !dbg !1484
  br i1 %167, label %168, label %172, !dbg !1485

168:                                              ; preds = %152
  %169 = sub nsw i32 0, %153, !dbg !1486
  %170 = icmp ne i32 %164, %169, !dbg !1486
  %171 = zext i1 %170 to i32, !dbg !1486
  br label %176, !dbg !1485

172:                                              ; preds = %152
  %173 = add nsw i32 %164, %153, !dbg !1487
  %174 = icmp ult i32 %10, %173, !dbg !1488
  %175 = select i1 %174, i32 3, i32 2, !dbg !1489
  br label %176, !dbg !1485

176:                                              ; preds = %172, %168
  %177 = phi i32 [ %171, %168 ], [ %175, %172 ], !dbg !1485
  call void @llvm.dbg.value(metadata i32 %177, metadata !1248, metadata !DIExpression()), !dbg !1322
  %178 = add nuw nsw i32 %154, 1, !dbg !1490
  call void @llvm.dbg.value(metadata i32 %178, metadata !1243, metadata !DIExpression()), !dbg !1322
  %179 = icmp uge i64 %165, %150, !dbg !1491
  %180 = icmp ult i32 %154, 7, !dbg !1492
  %181 = and i1 %180, %179, !dbg !1492
  br i1 %181, label %152, label %182, !dbg !1493, !llvm.loop !1494

182:                                              ; preds = %176
  %183 = icmp ult i64 %165, 10, !dbg !1497
  br i1 %183, label %184, label %214, !dbg !1499

184:                                              ; preds = %182
  %185 = icmp eq i32 %7, 1, !dbg !1500
  br i1 %185, label %186, label %190, !dbg !1503

186:                                              ; preds = %184
  %187 = and i32 %166, 1, !dbg !1504
  %188 = add nuw nsw i32 %177, %187, !dbg !1505
  %189 = icmp ugt i32 %188, 2, !dbg !1506
  br i1 %189, label %194, label %200, !dbg !1507

190:                                              ; preds = %184
  %191 = icmp eq i32 %7, 0, !dbg !1508
  %192 = icmp ne i32 %177, 0
  %193 = and i1 %191, %192, !dbg !1509
  br i1 %193, label %194, label %200, !dbg !1509

194:                                              ; preds = %190, %186
  %195 = add nsw i32 %166, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %195, metadata !1242, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 0, metadata !1248, metadata !DIExpression()), !dbg !1322
  %196 = icmp eq i32 %195, 10, !dbg !1512
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = add nuw nsw i64 %165, 1
  call void @llvm.dbg.value(metadata i64 %198, metadata !1241, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 undef, metadata !1242, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 0, metadata !1248, metadata !DIExpression()), !dbg !1322
  %199 = icmp ult i64 %165, 9, !dbg !1514
  br i1 %199, label %200, label %214, !dbg !1516

200:                                              ; preds = %194, %190, %186, %197
  %201 = phi i64 [ %198, %197 ], [ %165, %186 ], [ %165, %190 ], [ %165, %194 ]
  %202 = phi i32 [ 0, %197 ], [ %166, %186 ], [ %166, %190 ], [ %195, %194 ]
  %203 = phi i32 [ 0, %197 ], [ %177, %186 ], [ %177, %190 ], [ 0, %194 ]
  %204 = icmp ne i32 %202, 0, !dbg !1517
  %205 = and i32 %2, 8
  %206 = icmp eq i32 %205, 0
  %207 = or i1 %206, %204, !dbg !1518
  br i1 %207, label %208, label %214, !dbg !1518

208:                                              ; preds = %200
  %209 = trunc i32 %202 to i8, !dbg !1519
  %210 = add i8 %209, 48, !dbg !1519
  %211 = getelementptr inbounds i8, i8* %1, i64 646, !dbg !1521
  call void @llvm.dbg.value(metadata i8* %211, metadata !1245, metadata !DIExpression()), !dbg !1322
  store i8 %210, i8* %211, align 1, !dbg !1522, !tbaa !931
  %212 = sub i64 0, %17, !dbg !1523
  %213 = getelementptr inbounds i8, i8* %211, i64 %212, !dbg !1523
  call void @llvm.dbg.value(metadata i8* %213, metadata !1245, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %213, metadata !1524, metadata !DIExpression()) #29, !dbg !1533
  call void @llvm.dbg.value(metadata i8* %18, metadata !1531, metadata !DIExpression()) #29, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %17, metadata !1532, metadata !DIExpression()) #29, !dbg !1533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %213, i8* nonnull align 1 %18, i64 %17, i1 false) #29, !dbg !1535
  call void @llvm.dbg.value(metadata i32 0, metadata !1248, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 0, metadata !1242, metadata !DIExpression()), !dbg !1322
  br label %214, !dbg !1536

214:                                              ; preds = %200, %149, %197, %208, %182, %143
  %215 = phi i32 [ 0, %208 ], [ 0, %197 ], [ %177, %182 ], [ %144, %149 ], [ %144, %143 ], [ %203, %200 ], !dbg !1322
  %216 = phi i8* [ %213, %208 ], [ %26, %197 ], [ %26, %182 ], [ %26, %149 ], [ %26, %143 ], [ %26, %200 ], !dbg !1322
  %217 = phi i32 [ %178, %208 ], [ %178, %197 ], [ %178, %182 ], [ 0, %149 ], [ -1, %143 ], [ %178, %200 ], !dbg !1322
  %218 = phi i32 [ 0, %208 ], [ 0, %197 ], [ %166, %182 ], [ %145, %149 ], [ %145, %143 ], [ 0, %200 ], !dbg !1322
  %219 = phi i64 [ %201, %208 ], [ 10, %197 ], [ %165, %182 ], [ %146, %149 ], [ %146, %143 ], [ %201, %200 ], !dbg !1322
  call void @llvm.dbg.value(metadata i64 %219, metadata !1241, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %218, metadata !1242, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %217, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %216, metadata !1245, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %215, metadata !1248, metadata !DIExpression()), !dbg !1322
  switch i32 %7, label %247 [
    i32 1, label %220
    i32 0, label %228
  ], !dbg !1537

220:                                              ; preds = %214
  %221 = zext i32 %215 to i64, !dbg !1538
  %222 = and i64 %219, 1, !dbg !1540
  %223 = sub nsw i64 0, %221, !dbg !1541
  %224 = icmp ne i64 %222, %223, !dbg !1541
  %225 = zext i1 %224 to i32, !dbg !1541
  %226 = add nsw i32 %218, %225, !dbg !1542
  %227 = icmp sgt i32 %226, 5, !dbg !1543
  br i1 %227, label %231, label %247, !dbg !1544

228:                                              ; preds = %214
  %229 = add nsw i32 %218, %215, !dbg !1545
  %230 = icmp sgt i32 %229, 0, !dbg !1546
  br i1 %230, label %231, label %247, !dbg !1537

231:                                              ; preds = %228, %220
  %232 = add i64 %219, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %232, metadata !1241, metadata !DIExpression()), !dbg !1322
  %233 = xor i1 %148, true, !dbg !1549
  %234 = zext i32 %10 to i64
  %235 = icmp eq i64 %232, %234
  %236 = and i1 %235, %233, !dbg !1549
  %237 = icmp slt i32 %217, 8
  %238 = and i1 %237, %236, !dbg !1549
  br i1 %238, label %239, label %247, !dbg !1549

239:                                              ; preds = %231
  %240 = add nsw i32 %217, 1, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %240, metadata !1243, metadata !DIExpression()), !dbg !1322
  %241 = and i32 %2, 8, !dbg !1553
  %242 = icmp eq i32 %241, 0, !dbg !1553
  br i1 %242, label %243, label %247, !dbg !1555

243:                                              ; preds = %239
  %244 = getelementptr inbounds i8, i8* %216, i64 -1, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %244, metadata !1245, metadata !DIExpression()), !dbg !1322
  store i8 48, i8* %244, align 1, !dbg !1558, !tbaa !931
  %245 = sub i64 0, %17, !dbg !1559
  %246 = getelementptr inbounds i8, i8* %244, i64 %245, !dbg !1559
  call void @llvm.dbg.value(metadata i8* %246, metadata !1245, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %246, metadata !1524, metadata !DIExpression()) #29, !dbg !1560
  call void @llvm.dbg.value(metadata i8* %18, metadata !1531, metadata !DIExpression()) #29, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %17, metadata !1532, metadata !DIExpression()) #29, !dbg !1560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %246, i8* nonnull align 1 %18, i64 %17, i1 false) #29, !dbg !1562
  br label %247, !dbg !1563

247:                                              ; preds = %239, %243, %214, %231, %228, %220
  %248 = phi i8* [ %216, %231 ], [ %216, %220 ], [ %216, %228 ], [ %216, %214 ], [ %216, %239 ], [ %246, %243 ], !dbg !1523
  %249 = phi i32 [ %217, %231 ], [ %217, %220 ], [ %217, %228 ], [ %217, %214 ], [ %240, %239 ], [ %240, %243 ], !dbg !1564
  %250 = phi i64 [ %232, %231 ], [ %219, %220 ], [ %219, %228 ], [ %219, %214 ], [ 1, %239 ], [ 1, %243 ], !dbg !1564
  call void @llvm.dbg.value(metadata i64 %250, metadata !1241, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %249, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %248, metadata !1245, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %248, metadata !1247, metadata !DIExpression()), !dbg !1322
  br label %251, !dbg !1565

251:                                              ; preds = %251, %247
  %252 = phi i8* [ %248, %247 ], [ %257, %251 ], !dbg !1564
  %253 = phi i64 [ %250, %247 ], [ %258, %251 ], !dbg !1564
  call void @llvm.dbg.value(metadata i64 %253, metadata !1241, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %252, metadata !1245, metadata !DIExpression()), !dbg !1322
  %254 = urem i64 %253, 10, !dbg !1566
  %255 = trunc i64 %254 to i8, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %254, metadata !1310, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1568
  %256 = or i8 %255, 48, !dbg !1569
  %257 = getelementptr inbounds i8, i8* %252, i64 -1, !dbg !1570
  call void @llvm.dbg.value(metadata i8* %257, metadata !1245, metadata !DIExpression()), !dbg !1322
  store i8 %256, i8* %257, align 1, !dbg !1571, !tbaa !931
  %258 = udiv i64 %253, 10, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %258, metadata !1241, metadata !DIExpression()), !dbg !1322
  %259 = icmp ult i64 %253, 10, !dbg !1573
  br i1 %259, label %260, label %251, !dbg !1574, !llvm.loop !1575

260:                                              ; preds = %251, %135
  %261 = phi i8* [ %142, %135 ], [ %248, %251 ], !dbg !1322
  %262 = phi i8* [ %140, %135 ], [ %257, %251 ], !dbg !1322
  %263 = phi i32 [ %138, %135 ], [ %249, %251 ], !dbg !1322
  call void @llvm.dbg.value(metadata i32 %263, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %262, metadata !1245, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %261, metadata !1247, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.label(metadata !1318), !dbg !1577
  %264 = and i32 %2, 4, !dbg !1578
  %265 = icmp eq i32 %264, 0, !dbg !1578
  br i1 %265, label %312, label %266, !dbg !1580

266:                                              ; preds = %260
  %267 = ptrtoint i8* %261 to i64, !dbg !1581
  %268 = ptrtoint i8* %262 to i64, !dbg !1581
  %269 = sub i64 %267, %268, !dbg !1581
  call void @llvm.dbg.value(metadata i8* %262, metadata !1582, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %269, metadata !1587, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.dbg.value(metadata i8* %20, metadata !1588, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.dbg.value(metadata i8* %25, metadata !1589, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.dbg.value(metadata i64 -1, metadata !1591, metadata !DIExpression()) #29, !dbg !1602
  %270 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %25) #30, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %270, metadata !1592, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %269, metadata !1593, metadata !DIExpression()) #29, !dbg !1602
  %271 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 0, !dbg !1605
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %271) #29, !dbg !1605
  call void @llvm.dbg.declare(metadata [41 x i8]* %6, metadata !1594, metadata !DIExpression()) #29, !dbg !1606
  call void @llvm.dbg.value(metadata i8* %271, metadata !1524, metadata !DIExpression()) #29, !dbg !1607
  call void @llvm.dbg.value(metadata i8* %262, metadata !1531, metadata !DIExpression()) #29, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %269, metadata !1532, metadata !DIExpression()) #29, !dbg !1607
  %272 = call i8* @__memcpy_chk(i8* nonnull %271, i8* nonnull %262, i64 %269, i64 41) #29, !dbg !1609
  call void @llvm.dbg.value(metadata i8* %261, metadata !1590, metadata !DIExpression()) #29, !dbg !1602
  %273 = load i8, i8* %20, align 1, !dbg !1610, !tbaa !931
  call void @llvm.dbg.value(metadata i8 %273, metadata !1598, metadata !DIExpression()) #29, !dbg !1611
  %274 = icmp eq i8 %273, 0, !dbg !1612
  %275 = icmp ult i8 %273, 127, !dbg !1614
  %276 = zext i8 %273 to i64, !dbg !1614
  %277 = select i1 %275, i64 %276, i64 %269, !dbg !1614
  %278 = select i1 %274, i64 -1, i64 %277, !dbg !1614
  call void @llvm.dbg.value(metadata i8* undef, metadata !1588, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %278, metadata !1591, metadata !DIExpression()) #29, !dbg !1602
  %279 = icmp ugt i64 %278, %269, !dbg !1615
  %280 = select i1 %279, i64 %269, i64 %278, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %280, metadata !1591, metadata !DIExpression()) #29, !dbg !1602
  %281 = sub i64 0, %280, !dbg !1618
  %282 = getelementptr inbounds i8, i8* %261, i64 %281, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %282, metadata !1590, metadata !DIExpression()) #29, !dbg !1602
  %283 = sub i64 %269, %280, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %283, metadata !1593, metadata !DIExpression()) #29, !dbg !1602
  %284 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %283, !dbg !1620
  call void @llvm.dbg.value(metadata i8* %282, metadata !1524, metadata !DIExpression()) #29, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %284, metadata !1531, metadata !DIExpression()) #29, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %280, metadata !1532, metadata !DIExpression()) #29, !dbg !1621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %282, i8* nonnull align 1 %284, i64 %280, i1 false) #29, !dbg !1623
  %285 = icmp eq i64 %283, 0, !dbg !1624
  br i1 %285, label %310, label %286, !dbg !1626

286:                                              ; preds = %266
  %287 = sub i64 0, %270
  br label %288, !dbg !1626

288:                                              ; preds = %288, %286
  %289 = phi i64 [ %283, %286 ], [ %307, %288 ]
  %290 = phi i8* [ %282, %286 ], [ %306, %288 ]
  %291 = phi i64 [ %280, %286 ], [ %304, %288 ]
  %292 = phi i1 [ %274, %286 ], [ %298, %288 ]
  %293 = phi i8* [ %20, %286 ], [ %295, %288 ]
  call void @llvm.dbg.value(metadata i8* %293, metadata !1588, metadata !DIExpression()) #29, !dbg !1602
  %294 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !1614
  %295 = select i1 %292, i8* %293, i8* %294, !dbg !1614
  call void @llvm.dbg.value(metadata i8* %295, metadata !1588, metadata !DIExpression()) #29, !dbg !1602
  %296 = getelementptr inbounds i8, i8* %290, i64 %287, !dbg !1627
  call void @llvm.dbg.value(metadata i8* %296, metadata !1590, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.dbg.value(metadata i8* %296, metadata !1524, metadata !DIExpression()) #29, !dbg !1628
  call void @llvm.dbg.value(metadata i8* %25, metadata !1531, metadata !DIExpression()) #29, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %270, metadata !1532, metadata !DIExpression()) #29, !dbg !1628
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %296, i8* nonnull align 1 %25, i64 %270, i1 false) #29, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %289, metadata !1593, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %291, metadata !1591, metadata !DIExpression()) #29, !dbg !1602
  %297 = load i8, i8* %295, align 1, !dbg !1610, !tbaa !931
  call void @llvm.dbg.value(metadata i8 %297, metadata !1598, metadata !DIExpression()) #29, !dbg !1611
  %298 = icmp eq i8 %297, 0, !dbg !1612
  %299 = icmp ult i8 %297, 127, !dbg !1614
  %300 = zext i8 %297 to i64, !dbg !1614
  %301 = select i1 %299, i64 %300, i64 %289, !dbg !1614
  %302 = select i1 %298, i64 %291, i64 %301, !dbg !1614
  call void @llvm.dbg.value(metadata i8* undef, metadata !1588, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %302, metadata !1591, metadata !DIExpression()) #29, !dbg !1602
  %303 = icmp ult i64 %289, %302, !dbg !1615
  %304 = select i1 %303, i64 %289, i64 %302, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %304, metadata !1591, metadata !DIExpression()) #29, !dbg !1602
  %305 = sub i64 0, %304, !dbg !1618
  %306 = getelementptr inbounds i8, i8* %296, i64 %305, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %306, metadata !1590, metadata !DIExpression()) #29, !dbg !1602
  %307 = sub i64 %289, %304, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %307, metadata !1593, metadata !DIExpression()) #29, !dbg !1602
  %308 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %307, !dbg !1620
  call void @llvm.dbg.value(metadata i8* %306, metadata !1524, metadata !DIExpression()) #29, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %308, metadata !1531, metadata !DIExpression()) #29, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %304, metadata !1532, metadata !DIExpression()) #29, !dbg !1621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %306, i8* nonnull align 1 %308, i64 %304, i1 false) #29, !dbg !1623
  %309 = icmp eq i64 %307, 0, !dbg !1624
  br i1 %309, label %310, label %288, !dbg !1626

310:                                              ; preds = %288, %266
  %311 = phi i8* [ %282, %266 ], [ %306, %288 ], !dbg !1618
  call void @llvm.dbg.value(metadata i8* %296, metadata !1590, metadata !DIExpression()) #29, !dbg !1602
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %271) #29, !dbg !1631
  call void @llvm.dbg.value(metadata i8* %311, metadata !1245, metadata !DIExpression()), !dbg !1322
  br label %312, !dbg !1632

312:                                              ; preds = %310, %260
  %313 = phi i8* [ %311, %310 ], [ %262, %260 ], !dbg !1322
  call void @llvm.dbg.value(metadata i8* %313, metadata !1245, metadata !DIExpression()), !dbg !1322
  %314 = trunc i32 %2 to i8, !dbg !1633
  %315 = icmp sgt i8 %314, -1, !dbg !1633
  br i1 %315, label %357, label %316, !dbg !1634

316:                                              ; preds = %312
  %317 = icmp slt i32 %263, 0, !dbg !1635
  br i1 %317, label %318, label %323, !dbg !1636

318:                                              ; preds = %316
  call void @llvm.dbg.value(metadata i64 1, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1322
  %319 = icmp ugt i64 %4, 1, !dbg !1638
  br i1 %319, label %320, label %323, !dbg !1641

320:                                              ; preds = %318
  %321 = zext i32 %10 to i64
  call void @llvm.dbg.value(metadata i64 1, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %321, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1322
  %322 = icmp ult i64 %321, %4, !dbg !1638
  br i1 %322, label %359, label %323, !dbg !1641, !llvm.loop !1642

323:                                              ; preds = %374, %320, %359, %362, %365, %368, %371, %318, %316
  %324 = phi i32 [ %263, %316 ], [ 0, %318 ], [ 1, %320 ], [ 2, %359 ], [ 3, %362 ], [ 4, %365 ], [ 5, %368 ], [ 6, %371 ], [ %377, %374 ], !dbg !1322
  call void @llvm.dbg.value(metadata i32 %324, metadata !1243, metadata !DIExpression()), !dbg !1322
  %325 = and i32 %2, 256, !dbg !1644
  %326 = or i32 %324, %325, !dbg !1646
  %327 = icmp eq i32 %326, 0, !dbg !1646
  %328 = and i32 %2, 64
  %329 = icmp eq i32 %328, 0
  %330 = or i1 %329, %327, !dbg !1647
  br i1 %330, label %333, label %331, !dbg !1647

331:                                              ; preds = %323
  %332 = getelementptr inbounds i8, i8* %1, i64 648, !dbg !1648
  call void @llvm.dbg.value(metadata i8* %332, metadata !1246, metadata !DIExpression()), !dbg !1322
  store i8 32, i8* %26, align 1, !dbg !1649, !tbaa !931
  br label %333, !dbg !1650

333:                                              ; preds = %331, %323
  %334 = phi i8* [ %332, %331 ], [ %26, %323 ], !dbg !1322
  call void @llvm.dbg.value(metadata i8* %334, metadata !1246, metadata !DIExpression()), !dbg !1322
  %335 = icmp ne i32 %324, 0, !dbg !1651
  br i1 %335, label %336, label %347, !dbg !1653

336:                                              ; preds = %333
  %337 = icmp eq i32 %8, 0, !dbg !1654
  %338 = icmp eq i32 %324, 1
  %339 = and i1 %337, %338, !dbg !1655
  br i1 %339, label %344, label %340, !dbg !1655

340:                                              ; preds = %336
  %341 = sext i32 %324 to i64, !dbg !1656
  %342 = getelementptr inbounds [9 x i8], [9 x i8]* @power_letter, i64 0, i64 %341, !dbg !1656
  %343 = load i8, i8* %342, align 1, !dbg !1656, !tbaa !931
  br label %344, !dbg !1657

344:                                              ; preds = %336, %340
  %345 = phi i8 [ %343, %340 ], [ 107, %336 ]
  %346 = getelementptr inbounds i8, i8* %334, i64 1, !dbg !1658
  call void @llvm.dbg.value(metadata i8* %346, metadata !1246, metadata !DIExpression()), !dbg !1322
  store i8 %345, i8* %334, align 1, !dbg !1659, !tbaa !931
  br label %347, !dbg !1660

347:                                              ; preds = %344, %333
  %348 = phi i8* [ %346, %344 ], [ %334, %333 ], !dbg !1661
  call void @llvm.dbg.value(metadata i8* %348, metadata !1246, metadata !DIExpression()), !dbg !1322
  %349 = icmp eq i32 %325, 0, !dbg !1662
  br i1 %349, label %357, label %350, !dbg !1664

350:                                              ; preds = %347
  %351 = and i1 %9, %335, !dbg !1665
  br i1 %351, label %352, label %354, !dbg !1665

352:                                              ; preds = %350
  %353 = getelementptr inbounds i8, i8* %348, i64 1, !dbg !1668
  call void @llvm.dbg.value(metadata i8* %353, metadata !1246, metadata !DIExpression()), !dbg !1322
  store i8 105, i8* %348, align 1, !dbg !1669, !tbaa !931
  br label %354, !dbg !1670

354:                                              ; preds = %352, %350
  %355 = phi i8* [ %353, %352 ], [ %348, %350 ], !dbg !1661
  call void @llvm.dbg.value(metadata i8* %355, metadata !1246, metadata !DIExpression()), !dbg !1322
  %356 = getelementptr inbounds i8, i8* %355, i64 1, !dbg !1671
  call void @llvm.dbg.value(metadata i8* %356, metadata !1246, metadata !DIExpression()), !dbg !1322
  store i8 66, i8* %355, align 1, !dbg !1672, !tbaa !931
  br label %357, !dbg !1673

357:                                              ; preds = %347, %354, %312
  %358 = phi i8* [ %356, %354 ], [ %348, %347 ], [ %26, %312 ], !dbg !1322
  call void @llvm.dbg.value(metadata i8* %358, metadata !1246, metadata !DIExpression()), !dbg !1322
  store i8 0, i8* %358, align 1, !dbg !1674, !tbaa !931
  ret i8* %313, !dbg !1675

359:                                              ; preds = %320
  call void @llvm.dbg.value(metadata i64 %321, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 2, metadata !1243, metadata !DIExpression()), !dbg !1322
  %360 = mul nuw nsw i64 %321, %321, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %360, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 2, metadata !1243, metadata !DIExpression()), !dbg !1322
  %361 = icmp ult i64 %360, %4, !dbg !1638
  br i1 %361, label %362, label %323, !dbg !1641, !llvm.loop !1642

362:                                              ; preds = %359
  call void @llvm.dbg.value(metadata i64 %360, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 2, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 3, metadata !1243, metadata !DIExpression()), !dbg !1322
  %363 = mul nuw nsw i64 %360, %321, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %363, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 3, metadata !1243, metadata !DIExpression()), !dbg !1322
  %364 = icmp ult i64 %363, %4, !dbg !1638
  br i1 %364, label %365, label %323, !dbg !1641, !llvm.loop !1642

365:                                              ; preds = %362
  call void @llvm.dbg.value(metadata i64 %363, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 3, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 4, metadata !1243, metadata !DIExpression()), !dbg !1322
  %366 = mul nuw nsw i64 %363, %321, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %366, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 4, metadata !1243, metadata !DIExpression()), !dbg !1322
  %367 = icmp ult i64 %366, %4, !dbg !1638
  br i1 %367, label %368, label %323, !dbg !1641, !llvm.loop !1642

368:                                              ; preds = %365
  call void @llvm.dbg.value(metadata i64 %366, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 4, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 5, metadata !1243, metadata !DIExpression()), !dbg !1322
  %369 = mul nuw nsw i64 %366, %321, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %369, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 5, metadata !1243, metadata !DIExpression()), !dbg !1322
  %370 = icmp ult i64 %369, %4, !dbg !1638
  br i1 %370, label %371, label %323, !dbg !1641, !llvm.loop !1642

371:                                              ; preds = %368
  call void @llvm.dbg.value(metadata i64 %369, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 5, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 6, metadata !1243, metadata !DIExpression()), !dbg !1322
  %372 = mul i64 %369, %321, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %372, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 6, metadata !1243, metadata !DIExpression()), !dbg !1322
  %373 = icmp ult i64 %372, %4, !dbg !1638
  br i1 %373, label %374, label %323, !dbg !1641, !llvm.loop !1642

374:                                              ; preds = %371
  call void @llvm.dbg.value(metadata i64 %372, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 6, metadata !1243, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 7, metadata !1243, metadata !DIExpression()), !dbg !1322
  %375 = mul i64 %372, %321, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %375, metadata !1312, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 7, metadata !1243, metadata !DIExpression()), !dbg !1322
  %376 = icmp ult i64 %375, %4, !dbg !1638
  %377 = select i1 %376, i32 8, i32 7, !dbg !1641
  br label %323, !dbg !1641

378:                                              ; preds = %64
  call void @llvm.dbg.value(metadata x86_fp80 %65, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1322
  %379 = fmul x86_fp80 %65, %65, !dbg !1407
  call void @llvm.dbg.value(metadata x86_fp80 %379, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 2, metadata !1243, metadata !DIExpression()), !dbg !1322
  %380 = fmul x86_fp80 %379, %65, !dbg !1375
  %381 = fcmp ugt x86_fp80 %380, %61, !dbg !1376
  br i1 %381, label %85, label %382, !dbg !1377, !llvm.loop !1379

382:                                              ; preds = %378
  call void @llvm.dbg.value(metadata x86_fp80 %379, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 2, metadata !1243, metadata !DIExpression()), !dbg !1322
  %383 = fmul x86_fp80 %379, %65, !dbg !1407
  call void @llvm.dbg.value(metadata x86_fp80 %383, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 3, metadata !1243, metadata !DIExpression()), !dbg !1322
  %384 = fmul x86_fp80 %383, %65, !dbg !1375
  %385 = fcmp ugt x86_fp80 %384, %61, !dbg !1376
  br i1 %385, label %85, label %386, !dbg !1377, !llvm.loop !1379

386:                                              ; preds = %382
  call void @llvm.dbg.value(metadata x86_fp80 %383, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 3, metadata !1243, metadata !DIExpression()), !dbg !1322
  %387 = fmul x86_fp80 %383, %65, !dbg !1407
  call void @llvm.dbg.value(metadata x86_fp80 %387, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 4, metadata !1243, metadata !DIExpression()), !dbg !1322
  %388 = fmul x86_fp80 %387, %65, !dbg !1375
  %389 = fcmp ugt x86_fp80 %388, %61, !dbg !1376
  br i1 %389, label %85, label %390, !dbg !1377, !llvm.loop !1379

390:                                              ; preds = %386
  call void @llvm.dbg.value(metadata x86_fp80 %387, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 4, metadata !1243, metadata !DIExpression()), !dbg !1322
  %391 = fmul x86_fp80 %387, %65, !dbg !1407
  call void @llvm.dbg.value(metadata x86_fp80 %391, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 5, metadata !1243, metadata !DIExpression()), !dbg !1322
  %392 = fmul x86_fp80 %391, %65, !dbg !1375
  %393 = fcmp ugt x86_fp80 %392, %61, !dbg !1376
  br i1 %393, label %85, label %394, !dbg !1377, !llvm.loop !1379

394:                                              ; preds = %390
  call void @llvm.dbg.value(metadata x86_fp80 %391, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 5, metadata !1243, metadata !DIExpression()), !dbg !1322
  %395 = fmul x86_fp80 %391, %65, !dbg !1407
  call void @llvm.dbg.value(metadata x86_fp80 %395, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 6, metadata !1243, metadata !DIExpression()), !dbg !1322
  %396 = fmul x86_fp80 %395, %65, !dbg !1375
  %397 = fcmp ugt x86_fp80 %396, %61, !dbg !1376
  br i1 %397, label %85, label %398, !dbg !1377, !llvm.loop !1379

398:                                              ; preds = %394
  call void @llvm.dbg.value(metadata x86_fp80 %395, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 6, metadata !1243, metadata !DIExpression()), !dbg !1322
  %399 = fmul x86_fp80 %395, %65, !dbg !1407
  call void @llvm.dbg.value(metadata x86_fp80 %399, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 7, metadata !1243, metadata !DIExpression()), !dbg !1322
  %400 = fmul x86_fp80 %399, %65, !dbg !1375
  %401 = fcmp ugt x86_fp80 %400, %61, !dbg !1376
  br i1 %401, label %85, label %402, !dbg !1377, !llvm.loop !1379

402:                                              ; preds = %398
  call void @llvm.dbg.value(metadata x86_fp80 %399, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 7, metadata !1243, metadata !DIExpression()), !dbg !1322
  %403 = fmul x86_fp80 %399, %65, !dbg !1407
  call void @llvm.dbg.value(metadata x86_fp80 %403, metadata !1299, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 8, metadata !1243, metadata !DIExpression()), !dbg !1322
  br label %85
}

; Function Attrs: nounwind
declare !dbg !1677 %struct.lconv* @localeconv() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @human_options(i8* %0, i32* nocapture %1, i64* %2) local_unnamed_addr #8 !dbg !1681 {
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32* %1, metadata !1687, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64* %2, metadata !1688, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* %0, metadata !1692, metadata !DIExpression()) #29, !dbg !1707
  call void @llvm.dbg.value(metadata i64* %2, metadata !1697, metadata !DIExpression()) #29, !dbg !1707
  call void @llvm.dbg.value(metadata i32* %1, metadata !1698, metadata !DIExpression()) #29, !dbg !1707
  call void @llvm.dbg.value(metadata i32 0, metadata !1700, metadata !DIExpression()) #29, !dbg !1707
  %5 = icmp eq i8* %0, null, !dbg !1709
  br i1 %5, label %6, label %16, !dbg !1710

6:                                                ; preds = %3
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.55, i64 0, i64 0)) #29, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %7, metadata !1692, metadata !DIExpression()) #29, !dbg !1707
  %8 = icmp eq i8* %7, null, !dbg !1712
  br i1 %8, label %9, label %16, !dbg !1713

9:                                                ; preds = %6
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.56, i64 0, i64 0)) #29, !dbg !1714
  call void @llvm.dbg.value(metadata i8* %10, metadata !1692, metadata !DIExpression()) #29, !dbg !1707
  %11 = icmp eq i8* %10, null, !dbg !1715
  br i1 %11, label %12, label %16, !dbg !1716

12:                                               ; preds = %9
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.57, i64 0, i64 0)) #29, !dbg !1717
  %14 = icmp eq i8* %13, null, !dbg !1717
  %15 = select i1 %14, i64 1024, i64 512, !dbg !1717
  store i64 %15, i64* %2, align 8, !dbg !1722, !tbaa !1723
  br label %66, !dbg !1724

16:                                               ; preds = %9, %6, %3
  %17 = phi i8* [ %0, %3 ], [ %7, %6 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i8* %17, metadata !1692, metadata !DIExpression()) #29, !dbg !1707
  %18 = load i8, i8* %17, align 1, !dbg !1725, !tbaa !931
  %19 = icmp eq i8 %18, 39, !dbg !1727
  %20 = getelementptr inbounds i8, i8* %17, i64 1
  %21 = select i1 %19, i8* %20, i8* %17, !dbg !1728
  %22 = select i1 %19, i32 4, i32 0, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %22, metadata !1700, metadata !DIExpression()) #29, !dbg !1707
  call void @llvm.dbg.value(metadata i8* %21, metadata !1692, metadata !DIExpression()) #29, !dbg !1707
  %23 = tail call i64 @argmatch(i8* nonnull %21, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @block_size_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @block_size_opts to i8*), i64 4) #30, !dbg !1729
  %24 = trunc i64 %23 to i32, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %24, metadata !1699, metadata !DIExpression()) #29, !dbg !1707
  %25 = icmp sgt i32 %24, -1, !dbg !1730
  br i1 %25, label %26, label %32, !dbg !1731

26:                                               ; preds = %16
  %27 = shl i64 %23, 32, !dbg !1732
  %28 = ashr exact i64 %27, 32, !dbg !1732
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* @block_size_opts, i64 0, i64 %28, !dbg !1732
  %30 = load i32, i32* %29, align 4, !dbg !1732, !tbaa !843
  %31 = or i32 %30, %22, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %31, metadata !1700, metadata !DIExpression()) #29, !dbg !1707
  store i64 1, i64* %2, align 8, !dbg !1735, !tbaa !1723
  br label %66, !dbg !1736

32:                                               ; preds = %16
  %33 = bitcast i8** %4 to i8*, !dbg !1737
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #29, !dbg !1737
  call void @llvm.dbg.value(metadata i8** %4, metadata !1701, metadata !DIExpression(DW_OP_deref)) #29, !dbg !1738
  %34 = call i32 @xstrtoumax(i8* nonnull %21, i8** nonnull %4, i32 0, i64* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.58, i64 0, i64 0)) #29, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %34, metadata !1706, metadata !DIExpression()) #29, !dbg !1738
  %35 = icmp eq i32 %34, 0, !dbg !1740
  br i1 %35, label %36, label %42, !dbg !1742

36:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i8* %21, metadata !1692, metadata !DIExpression()) #29, !dbg !1707
  %37 = load i8, i8* %21, align 1, !dbg !1743, !tbaa !931
  %38 = add i8 %37, -48, !dbg !1746
  %39 = icmp ult i8 %38, 10, !dbg !1746
  br i1 %39, label %64, label %40, !dbg !1747

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8, !tbaa !678
  br label %47, !dbg !1747

42:                                               ; preds = %32
  store i32 0, i32* %1, align 4, !dbg !1748, !tbaa !843
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #29, !dbg !1750
  br label %68

43:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i8* %50, metadata !1692, metadata !DIExpression()) #29, !dbg !1707
  %44 = load i8, i8* %50, align 1, !dbg !1743, !tbaa !931
  %45 = add i8 %44, -48, !dbg !1746
  %46 = icmp ult i8 %45, 10, !dbg !1746
  br i1 %46, label %64, label %47, !dbg !1747, !llvm.loop !1751

47:                                               ; preds = %43, %40
  %48 = phi i8* [ %21, %40 ], [ %50, %43 ]
  call void @llvm.dbg.value(metadata i8* %48, metadata !1692, metadata !DIExpression()) #29, !dbg !1707
  call void @llvm.dbg.value(metadata i8* %41, metadata !1701, metadata !DIExpression()) #29, !dbg !1738
  %49 = icmp eq i8* %48, %41, !dbg !1753
  %50 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1755
  call void @llvm.dbg.value(metadata i8* %50, metadata !1692, metadata !DIExpression()) #29, !dbg !1707
  br i1 %49, label %51, label %43, !dbg !1756

51:                                               ; preds = %47
  %52 = or i32 %22, 128, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %52, metadata !1700, metadata !DIExpression()) #29, !dbg !1707
  %53 = getelementptr inbounds i8, i8* %41, i64 -1, !dbg !1759
  %54 = load i8, i8* %53, align 1, !dbg !1759, !tbaa !931
  %55 = icmp eq i8 %54, 66, !dbg !1761
  %56 = or i32 %22, 384
  %57 = select i1 %55, i32 %56, i32 %52, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %57, metadata !1700, metadata !DIExpression()) #29, !dbg !1707
  call void @llvm.dbg.value(metadata i8* %41, metadata !1701, metadata !DIExpression()) #29, !dbg !1738
  br i1 %55, label %58, label %62, !dbg !1763

58:                                               ; preds = %51
  %59 = getelementptr inbounds i8, i8* %41, i64 -2, !dbg !1765
  %60 = load i8, i8* %59, align 1, !dbg !1765, !tbaa !931
  %61 = icmp eq i8 %60, 105, !dbg !1766
  br i1 %61, label %62, label %64, !dbg !1767

62:                                               ; preds = %58, %51
  %63 = or i32 %57, 32, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %63, metadata !1700, metadata !DIExpression()) #29, !dbg !1707
  br label %64, !dbg !1769

64:                                               ; preds = %43, %62, %58, %36
  %65 = phi i32 [ %63, %62 ], [ %56, %58 ], [ %22, %36 ], [ %22, %43 ], !dbg !1770
  call void @llvm.dbg.value(metadata i32 %65, metadata !1700, metadata !DIExpression()) #29, !dbg !1707
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #29, !dbg !1750
  br label %66

66:                                               ; preds = %64, %26, %12
  %67 = phi i32 [ %31, %26 ], [ %65, %64 ], [ 0, %12 ], !dbg !1707
  call void @llvm.dbg.value(metadata i32 %67, metadata !1700, metadata !DIExpression()) #29, !dbg !1707
  store i32 %67, i32* %1, align 4, !dbg !1771, !tbaa !843
  br label %68, !dbg !1772

68:                                               ; preds = %42, %66
  %69 = phi i32 [ 0, %66 ], [ %34, %42 ], !dbg !1707
  call void @llvm.dbg.value(metadata i32 %69, metadata !1689, metadata !DIExpression()), !dbg !1691
  %70 = load i64, i64* %2, align 8, !dbg !1773, !tbaa !1723
  %71 = icmp eq i64 %70, 0, !dbg !1775
  br i1 %71, label %72, label %76, !dbg !1776

72:                                               ; preds = %68
  %73 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.57, i64 0, i64 0)) #29, !dbg !1777
  %74 = icmp eq i8* %73, null, !dbg !1777
  %75 = select i1 %74, i64 1024, i64 512, !dbg !1777
  store i64 %75, i64* %2, align 8, !dbg !1780, !tbaa !1723
  call void @llvm.dbg.value(metadata i32 4, metadata !1689, metadata !DIExpression()), !dbg !1691
  br label %76, !dbg !1781

76:                                               ; preds = %72, %68
  %77 = phi i32 [ 4, %72 ], [ %69, %68 ], !dbg !1691
  call void @llvm.dbg.value(metadata i32 %77, metadata !1689, metadata !DIExpression()), !dbg !1691
  ret i32 %77, !dbg !1782
}

; Function Attrs: nofree nounwind readonly
declare !dbg !1783 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1784 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1786, metadata !DIExpression()), !dbg !1789
  %2 = icmp eq i8* %0, null, !dbg !1790
  br i1 %2, label %3, label %6, !dbg !1792

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1793, !tbaa !678
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.65, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #34, !dbg !1795
  tail call void @abort() #31, !dbg !1796
  unreachable, !dbg !1796

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #30, !dbg !1797
  call void @llvm.dbg.value(metadata i8* %7, metadata !1787, metadata !DIExpression()), !dbg !1789
  %8 = icmp eq i8* %7, null, !dbg !1798
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1799
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1799
  call void @llvm.dbg.value(metadata i8* %10, metadata !1788, metadata !DIExpression()), !dbg !1789
  %11 = ptrtoint i8* %10 to i64, !dbg !1800
  %12 = ptrtoint i8* %0 to i64, !dbg !1800
  %13 = sub i64 %11, %12, !dbg !1800
  %14 = icmp sgt i64 %13, 6, !dbg !1802
  br i1 %14, label %15, label %24, !dbg !1803

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1804
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.66, i64 0, i64 0), i64 7) #30, !dbg !1805
  %18 = icmp eq i32 %17, 0, !dbg !1806
  br i1 %18, label %19, label %24, !dbg !1807

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1786, metadata !DIExpression()), !dbg !1789
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.67, i64 0, i64 0), i64 3) #30, !dbg !1808
  %21 = icmp eq i32 %20, 0, !dbg !1811
  br i1 %21, label %22, label %24, !dbg !1812

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1813
  call void @llvm.dbg.value(metadata i8* %23, metadata !1786, metadata !DIExpression()), !dbg !1789
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1815, !tbaa !678
  br label %24, !dbg !1816

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1786, metadata !DIExpression()), !dbg !1789
  store i8* %25, i8** @program_name, align 8, !dbg !1817, !tbaa !678
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1818, !tbaa !678
  ret void, !dbg !1819
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1820 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1825, metadata !DIExpression()), !dbg !1828
  %2 = tail call i32* @__errno_location() #33, !dbg !1829
  %3 = load i32, i32* %2, align 4, !dbg !1829, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %3, metadata !1826, metadata !DIExpression()), !dbg !1828
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1830
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1830
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1830
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #29, !dbg !1831
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1831
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1827, metadata !DIExpression()), !dbg !1828
  store i32 %3, i32* %2, align 4, !dbg !1832, !tbaa !843
  ret %struct.quoting_options* %8, !dbg !1833
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !1834 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1840, metadata !DIExpression()), !dbg !1841
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1842
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1842
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1843
  %5 = load i32, i32* %4, align 8, !dbg !1843, !tbaa !1844
  ret i32 %5, !dbg !1846
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1847 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1851, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %1, metadata !1852, metadata !DIExpression()), !dbg !1853
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1854
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1854
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1855
  store i32 %1, i32* %5, align 8, !dbg !1856, !tbaa !1844
  ret void, !dbg !1857
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1858 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1862, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %1, metadata !1863, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %2, metadata !1864, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %1, metadata !1865, metadata !DIExpression()), !dbg !1870
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1871
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1871
  %6 = lshr i8 %1, 5, !dbg !1872
  %7 = zext i8 %6 to i64, !dbg !1872
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1873
  call void @llvm.dbg.value(metadata i32* %8, metadata !1866, metadata !DIExpression()), !dbg !1870
  %9 = and i8 %1, 31, !dbg !1874
  %10 = zext i8 %9 to i32, !dbg !1874
  call void @llvm.dbg.value(metadata i32 %10, metadata !1868, metadata !DIExpression()), !dbg !1870
  %11 = load i32, i32* %8, align 4, !dbg !1875, !tbaa !843
  %12 = lshr i32 %11, %10, !dbg !1876
  %13 = and i32 %12, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %13, metadata !1869, metadata !DIExpression()), !dbg !1870
  %14 = and i32 %2, 1, !dbg !1878
  %15 = xor i32 %13, %14, !dbg !1879
  %16 = shl i32 %15, %10, !dbg !1880
  %17 = xor i32 %16, %11, !dbg !1881
  store i32 %17, i32* %8, align 4, !dbg !1881, !tbaa !843
  ret i32 %13, !dbg !1882
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1883 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1887, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 %1, metadata !1888, metadata !DIExpression()), !dbg !1890
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1891
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1893
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1887, metadata !DIExpression()), !dbg !1890
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1894
  %6 = load i32, i32* %5, align 4, !dbg !1894, !tbaa !1895
  call void @llvm.dbg.value(metadata i32 %6, metadata !1889, metadata !DIExpression()), !dbg !1890
  store i32 %1, i32* %5, align 4, !dbg !1896, !tbaa !1895
  ret i32 %6, !dbg !1897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1898 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1902, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8* %1, metadata !1903, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8* %2, metadata !1904, metadata !DIExpression()), !dbg !1905
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1906
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1902, metadata !DIExpression()), !dbg !1905
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1909
  store i32 10, i32* %6, align 8, !dbg !1910, !tbaa !1844
  %7 = icmp ne i8* %1, null, !dbg !1911
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1913
  br i1 %9, label %11, label %10, !dbg !1913

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !1914
  unreachable, !dbg !1914

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1915
  store i8* %1, i8** %12, align 8, !dbg !1916, !tbaa !1917
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1918
  store i8* %2, i8** %13, align 8, !dbg !1919, !tbaa !1920
  ret void, !dbg !1921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1922 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1926, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %1, metadata !1927, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8* %2, metadata !1928, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %3, metadata !1929, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1930, metadata !DIExpression()), !dbg !1934
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1935
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1935
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1931, metadata !DIExpression()), !dbg !1934
  %8 = tail call i32* @__errno_location() #33, !dbg !1936
  %9 = load i32, i32* %8, align 4, !dbg !1936, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %9, metadata !1932, metadata !DIExpression()), !dbg !1934
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1937
  %11 = load i32, i32* %10, align 8, !dbg !1937, !tbaa !1844
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1938
  %13 = load i32, i32* %12, align 4, !dbg !1938, !tbaa !1895
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1939
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1940
  %16 = load i8*, i8** %15, align 8, !dbg !1940, !tbaa !1917
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1941
  %18 = load i8*, i8** %17, align 8, !dbg !1941, !tbaa !1920
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %19, metadata !1933, metadata !DIExpression()), !dbg !1934
  store i32 %9, i32* %8, align 4, !dbg !1943, !tbaa !843
  ret i64 %19, !dbg !1944
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1945 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1951, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %1, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %2, metadata !1953, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %3, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %4, metadata !1955, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %5, metadata !1956, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32* %6, metadata !1957, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %7, metadata !1958, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %8, metadata !1959, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1962, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* null, metadata !1963, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1964, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !1965, metadata !DIExpression()), !dbg !2019
  %13 = tail call i64 @__ctype_get_mb_cur_max() #29, !dbg !2020
  %14 = icmp eq i64 %13, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i1 %14, metadata !1966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2019
  %15 = lshr i32 %5, 1, !dbg !2022
  %16 = trunc i32 %15 to i8, !dbg !2022
  %17 = and i8 %16, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i8 %17, metadata !1967, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !1969, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 1, metadata !1970, metadata !DIExpression()), !dbg !2019
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2023

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2024
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2025
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2026
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2027
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2019
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2028
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2029
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2030
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %38, metadata !1970, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %37, metadata !1969, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %36, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %35, metadata !1967, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %34, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %33, metadata !1965, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %32, metadata !1964, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %31, metadata !1963, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %30, metadata !1962, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %29, metadata !1959, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %28, metadata !1958, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %27, metadata !1955, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.label(metadata !2013), !dbg !2031
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
  ], !dbg !2032

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1967, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 5, metadata !1955, metadata !DIExpression()), !dbg !2019
  br label %92, !dbg !2033

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1967, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 5, metadata !1955, metadata !DIExpression()), !dbg !2019
  %42 = and i8 %35, 1, !dbg !2035
  %43 = icmp eq i8 %42, 0, !dbg !2035
  br i1 %43, label %44, label %92, !dbg !2033

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2037
  br i1 %45, label %92, label %46, !dbg !2040

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2037, !tbaa !931
  br label %92, !dbg !2037

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.78, i64 0, i64 0), i32 %27), !dbg !2041
  call void @llvm.dbg.value(metadata i8* %48, metadata !1958, metadata !DIExpression()), !dbg !2019
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), i32 %27), !dbg !2045
  call void @llvm.dbg.value(metadata i8* %49, metadata !1959, metadata !DIExpression()), !dbg !2019
  br label %50, !dbg !2046

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1959, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %51, metadata !1958, metadata !DIExpression()), !dbg !2019
  %53 = and i8 %35, 1, !dbg !2047
  %54 = icmp eq i8 %53, 0, !dbg !2047
  br i1 %54, label %55, label %70, !dbg !2049

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1963, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1961, metadata !DIExpression()), !dbg !2019
  %56 = load i8, i8* %51, align 1, !dbg !2050, !tbaa !931
  %57 = icmp eq i8 %56, 0, !dbg !2053
  br i1 %57, label %70, label %58, !dbg !2053

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1963, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %61, metadata !1961, metadata !DIExpression()), !dbg !2019
  %62 = icmp ult i64 %61, %39, !dbg !2054
  br i1 %62, label %63, label %65, !dbg !2057

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2054
  store i8 %59, i8* %64, align 1, !dbg !2054, !tbaa !931
  br label %65, !dbg !2054

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %66, metadata !1961, metadata !DIExpression()), !dbg !2019
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2058
  call void @llvm.dbg.value(metadata i8* %67, metadata !1963, metadata !DIExpression()), !dbg !2019
  %68 = load i8, i8* %67, align 1, !dbg !2050, !tbaa !931
  %69 = icmp eq i8 %68, 0, !dbg !2053
  br i1 %69, label %70, label %58, !dbg !2053, !llvm.loop !2059

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2061
  call void @llvm.dbg.value(metadata i64 %71, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 1, metadata !1965, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %52, metadata !1963, metadata !DIExpression()), !dbg !2019
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #30, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %72, metadata !1964, metadata !DIExpression()), !dbg !2019
  br label %92, !dbg !2063

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1965, metadata !DIExpression()), !dbg !2019
  br label %74, !dbg !2064

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2019
  call void @llvm.dbg.value(metadata i8 %75, metadata !1965, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 1, metadata !1967, metadata !DIExpression()), !dbg !2019
  br label %76, !dbg !2065

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2027
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2019
  call void @llvm.dbg.value(metadata i8 %78, metadata !1967, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %77, metadata !1965, metadata !DIExpression()), !dbg !2019
  %79 = and i8 %78, 1, !dbg !2066
  %80 = icmp eq i8 %79, 0, !dbg !2066
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2068
  br label %82, !dbg !2068

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2019
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2022
  call void @llvm.dbg.value(metadata i8 %84, metadata !1967, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %83, metadata !1965, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 2, metadata !1955, metadata !DIExpression()), !dbg !2019
  %85 = and i8 %84, 1, !dbg !2069
  %86 = icmp eq i8 %85, 0, !dbg !2069
  br i1 %86, label %87, label %92, !dbg !2071

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2072
  br i1 %88, label %92, label %89, !dbg !2075

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2072, !tbaa !931
  br label %92, !dbg !2072

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !2019
  br label %92, !dbg !2076

91:                                               ; preds = %26
  call void @abort() #31, !dbg !2077
  unreachable, !dbg !2077

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2061
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %40 ], !dbg !2019
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2019
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2019
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2019
  call void @llvm.dbg.value(metadata i8 %100, metadata !1967, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %99, metadata !1965, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %98, metadata !1964, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %97, metadata !1963, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %96, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %95, metadata !1959, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %94, metadata !1958, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %93, metadata !1955, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1960, metadata !DIExpression()), !dbg !2019
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
  br label %121, !dbg !2078

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2079
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2061
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2024
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2028
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2029
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2030
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %128, metadata !1970, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %127, metadata !1969, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %126, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %125, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %124, metadata !1962, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %123, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %122, metadata !1960, metadata !DIExpression()), !dbg !2019
  %130 = icmp eq i64 %125, -1, !dbg !2080
  br i1 %130, label %131, label %135, !dbg !2081

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2082
  %133 = load i8, i8* %132, align 1, !dbg !2082, !tbaa !931
  %134 = icmp eq i8 %133, 0, !dbg !2083
  br i1 %134, label %587, label %137, !dbg !2084

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2085
  br i1 %136, label %587, label %137, !dbg !2084

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2086
  br i1 %106, label %138, label %153, !dbg !2087

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2089
  %140 = and i1 %107, %130, !dbg !2090
  br i1 %140, label %141, label %143, !dbg !2090

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %142, metadata !1954, metadata !DIExpression()), !dbg !2019
  br label %143, !dbg !2092

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2092
  call void @llvm.dbg.value(metadata i64 %144, metadata !1954, metadata !DIExpression()), !dbg !2019
  %145 = icmp ugt i64 %139, %144, !dbg !2093
  br i1 %145, label %153, label %146, !dbg !2094

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2095
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2096
  %149 = icmp ne i32 %148, 0, !dbg !2097
  %150 = or i1 %149, %109, !dbg !2098
  %151 = xor i1 %149, true, !dbg !2098
  %152 = zext i1 %151 to i8, !dbg !2098
  br i1 %150, label %153, label %646, !dbg !2098

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2086
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %156, metadata !1976, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %154, metadata !1954, metadata !DIExpression()), !dbg !2019
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2099
  %158 = load i8, i8* %157, align 1, !dbg !2099, !tbaa !931
  call void @llvm.dbg.value(metadata i8 %158, metadata !1971, metadata !DIExpression()), !dbg !2086
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
  ], !dbg !2100

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2101

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2102

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2086
  %162 = and i8 %126, 1, !dbg !2106
  %163 = icmp eq i8 %162, 0, !dbg !2106
  %164 = and i1 %110, %163, !dbg !2106
  br i1 %164, label %165, label %181, !dbg !2106

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2108
  br i1 %166, label %167, label %169, !dbg !2112

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2108
  store i8 39, i8* %168, align 1, !dbg !2108, !tbaa !931
  br label %169, !dbg !2108

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %170, metadata !1961, metadata !DIExpression()), !dbg !2019
  %171 = icmp ult i64 %170, %129, !dbg !2113
  br i1 %171, label %172, label %174, !dbg !2116

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2113
  store i8 36, i8* %173, align 1, !dbg !2113, !tbaa !931
  br label %174, !dbg !2113

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %175, metadata !1961, metadata !DIExpression()), !dbg !2019
  %176 = icmp ult i64 %175, %129, !dbg !2117
  br i1 %176, label %177, label %179, !dbg !2120

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2117
  store i8 39, i8* %178, align 1, !dbg !2117, !tbaa !931
  br label %179, !dbg !2117

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %180, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 1, metadata !1968, metadata !DIExpression()), !dbg !2019
  br label %181, !dbg !2121

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2019
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2019
  call void @llvm.dbg.value(metadata i8 %183, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %182, metadata !1961, metadata !DIExpression()), !dbg !2019
  %184 = icmp ult i64 %182, %129, !dbg !2122
  br i1 %184, label %185, label %187, !dbg !2125

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2122
  store i8 92, i8* %186, align 1, !dbg !2122, !tbaa !931
  br label %187, !dbg !2122

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %188, metadata !1961, metadata !DIExpression()), !dbg !2019
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2126
  br i1 %191, label %192, label %473, !dbg !2126

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2128
  %194 = load i8, i8* %193, align 1, !dbg !2128, !tbaa !931
  %195 = add i8 %194, -48, !dbg !2129
  %196 = icmp ult i8 %195, 10, !dbg !2129
  br i1 %196, label %197, label %473, !dbg !2129

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2130
  br i1 %198, label %199, label %201, !dbg !2134

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2130
  store i8 48, i8* %200, align 1, !dbg !2130, !tbaa !931
  br label %201, !dbg !2130

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %202, metadata !1961, metadata !DIExpression()), !dbg !2019
  %203 = icmp ult i64 %202, %129, !dbg !2135
  br i1 %203, label %204, label %206, !dbg !2138

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2135
  store i8 48, i8* %205, align 1, !dbg !2135, !tbaa !931
  br label %206, !dbg !2135

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %207, metadata !1961, metadata !DIExpression()), !dbg !2019
  br label %473, !dbg !2139

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2140

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2141

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2142

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2144
  br i1 %214, label %215, label %473, !dbg !2144

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2146
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2147
  %218 = load i8, i8* %217, align 1, !dbg !2147, !tbaa !931
  %219 = icmp eq i8 %218, 63, !dbg !2148
  br i1 %219, label %220, label %473, !dbg !2149

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2150
  %222 = load i8, i8* %221, align 1, !dbg !2150, !tbaa !931
  %223 = sext i8 %222 to i32, !dbg !2150
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
  ], !dbg !2151

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2152

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1971, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 undef, metadata !1960, metadata !DIExpression()), !dbg !2019
  %226 = icmp ult i64 %123, %129, !dbg !2154
  br i1 %226, label %227, label %229, !dbg !2157

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2154
  store i8 63, i8* %228, align 1, !dbg !2154, !tbaa !931
  br label %229, !dbg !2154

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %230, metadata !1961, metadata !DIExpression()), !dbg !2019
  %231 = icmp ult i64 %230, %129, !dbg !2158
  br i1 %231, label %232, label %234, !dbg !2161

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2158
  store i8 34, i8* %233, align 1, !dbg !2158, !tbaa !931
  br label %234, !dbg !2158

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %235, metadata !1961, metadata !DIExpression()), !dbg !2019
  %236 = icmp ult i64 %235, %129, !dbg !2162
  br i1 %236, label %237, label %239, !dbg !2165

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2162
  store i8 34, i8* %238, align 1, !dbg !2162, !tbaa !931
  br label %239, !dbg !2162

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %240, metadata !1961, metadata !DIExpression()), !dbg !2019
  %241 = icmp ult i64 %240, %129, !dbg !2166
  br i1 %241, label %242, label %244, !dbg !2169

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2166
  store i8 63, i8* %243, align 1, !dbg !2166, !tbaa !931
  br label %244, !dbg !2166

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %245, metadata !1961, metadata !DIExpression()), !dbg !2019
  br label %473, !dbg !2170

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1975, metadata !DIExpression()), !dbg !2086
  br label %256, !dbg !2171

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1975, metadata !DIExpression()), !dbg !2086
  br label %256, !dbg !2172

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1975, metadata !DIExpression()), !dbg !2086
  br label %254, !dbg !2173

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1975, metadata !DIExpression()), !dbg !2086
  br label %254, !dbg !2174

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1975, metadata !DIExpression()), !dbg !2086
  br label %256, !dbg !2175

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1975, metadata !DIExpression()), !dbg !2086
  br i1 %110, label %252, label %253, !dbg !2176

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2177

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2180

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2182
  call void @llvm.dbg.value(metadata i8 %255, metadata !1975, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.label(metadata !2014), !dbg !2183
  br i1 %111, label %256, label %631, !dbg !2184

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2182
  call void @llvm.dbg.value(metadata i8 %257, metadata !1975, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.label(metadata !2015), !dbg !2186
  br i1 %102, label %495, label %473, !dbg !2187

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2188

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2189, !tbaa !931
  %261 = icmp eq i8 %260, 0, !dbg !2191
  br i1 %261, label %262, label %473, !dbg !2192

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2193
  br i1 %263, label %264, label %473, !dbg !2195

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2086
  br label %265, !dbg !2196

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %266, metadata !1978, metadata !DIExpression()), !dbg !2086
  br i1 %111, label %473, label %631, !dbg !2197

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1969, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2086
  br i1 %110, label %268, label %473, !dbg !2199

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2200

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2203
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2205
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2205
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %274, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %273, metadata !1962, metadata !DIExpression()), !dbg !2019
  %275 = icmp ult i64 %123, %274, !dbg !2206
  br i1 %275, label %276, label %278, !dbg !2209

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2206
  store i8 39, i8* %277, align 1, !dbg !2206, !tbaa !931
  br label %278, !dbg !2206

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %279, metadata !1961, metadata !DIExpression()), !dbg !2019
  %280 = icmp ult i64 %279, %274, !dbg !2210
  br i1 %280, label %281, label %283, !dbg !2213

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2210
  store i8 92, i8* %282, align 1, !dbg !2210, !tbaa !931
  br label %283, !dbg !2210

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %284, metadata !1961, metadata !DIExpression()), !dbg !2019
  %285 = icmp ult i64 %284, %274, !dbg !2214
  br i1 %285, label %286, label %288, !dbg !2217

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2214
  store i8 39, i8* %287, align 1, !dbg !2214, !tbaa !931
  br label %288, !dbg !2214

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %289, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !2019
  br label %473, !dbg !2218

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2219

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1979, metadata !DIExpression()), !dbg !2220
  %292 = tail call i16** @__ctype_b_loc() #33, !dbg !2221
  %293 = load i16*, i16** %292, align 8, !dbg !2221, !tbaa !678
  %294 = zext i8 %158 to i64, !dbg !2221
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2221
  %296 = load i16, i16* %295, align 2, !dbg !2221, !tbaa !2223
  %297 = lshr i16 %296, 14, !dbg !2224
  %298 = trunc i16 %297 to i8, !dbg !2224
  %299 = and i8 %298, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i8 %354, metadata !1982, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %355, metadata !1979, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %306, metadata !1954, metadata !DIExpression()), !dbg !2019
  %300 = icmp eq i8 %299, 0, !dbg !2225
  call void @llvm.dbg.value(metadata i1 %357, metadata !1978, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2086
  br label %359, !dbg !2226

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2227
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1983, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %23, metadata !2229, metadata !DIExpression()) #29, !dbg !2236
  call void @llvm.dbg.value(metadata i32 0, metadata !2234, metadata !DIExpression()) #29, !dbg !2236
  call void @llvm.dbg.value(metadata i64 8, metadata !2235, metadata !DIExpression()) #29, !dbg !2236
  store i64 0, i64* %10, align 8, !dbg !2238
  call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 1, metadata !1982, metadata !DIExpression()), !dbg !2220
  %302 = icmp eq i64 %154, -1, !dbg !2239
  br i1 %302, label %303, label %305, !dbg !2241

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %304, metadata !1954, metadata !DIExpression()), !dbg !2019
  br label %305, !dbg !2243

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2086
  call void @llvm.dbg.value(metadata i64 %306, metadata !1954, metadata !DIExpression()), !dbg !2019
  br label %307, !dbg !2244

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2245
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2246
  call void @llvm.dbg.value(metadata i8 %309, metadata !1982, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %308, metadata !1979, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2247
  %310 = add i64 %308, %122, !dbg !2248
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2249
  %312 = sub i64 %306, %310, !dbg !2250
  call void @llvm.dbg.value(metadata i32* %12, metadata !1999, metadata !DIExpression(DW_OP_deref)), !dbg !2251
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #29, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %313, metadata !2002, metadata !DIExpression()), !dbg !2251
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2253

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1979, metadata !DIExpression()), !dbg !2220
  %315 = icmp ugt i64 %306, %310, !dbg !2254
  br i1 %315, label %316, label %341, !dbg !2256

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2257
  br label %318, !dbg !2257

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1979, metadata !DIExpression()), !dbg !2220
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2258
  %322 = load i8, i8* %321, align 1, !dbg !2258, !tbaa !931
  %323 = icmp eq i8 %322, 0, !dbg !2256
  br i1 %323, label %341, label %324, !dbg !2257

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %325, metadata !1979, metadata !DIExpression()), !dbg !2220
  %326 = add i64 %325, %122, !dbg !2260
  %327 = icmp ult i64 %326, %306, !dbg !2254
  br i1 %327, label %318, label %341, !dbg !2256, !llvm.loop !2261

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2262
  call void @llvm.dbg.value(metadata i64 1, metadata !2003, metadata !DIExpression()), !dbg !2263
  br i1 %330, label %331, label %344, !dbg !2262

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2003, metadata !DIExpression()), !dbg !2263
  %333 = add i64 %332, %310, !dbg !2264
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2267
  %335 = load i8, i8* %334, align 1, !dbg !2267, !tbaa !931
  %336 = sext i8 %335 to i32, !dbg !2267
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2268

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %338, metadata !2003, metadata !DIExpression()), !dbg !2263
  %339 = icmp eq i64 %338, %313, !dbg !2270
  br i1 %339, label %344, label %331, !dbg !2271, !llvm.loop !2272

340:                                              ; preds = %307
  br label %341, !dbg !2274

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1982, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 undef, metadata !1979, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2274
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2275, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %345, metadata !1999, metadata !DIExpression()), !dbg !2251
  %346 = call i32 @iswprint(i32 %345) #29, !dbg !2277
  %347 = icmp eq i32 %346, 0, !dbg !2277
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2278
  call void @llvm.dbg.value(metadata i8 %348, metadata !1982, metadata !DIExpression()), !dbg !2220
  %349 = add i64 %313, %308, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %349, metadata !1979, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2274
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #30, !dbg !2280
  %351 = icmp eq i32 %350, 0, !dbg !2281
  br i1 %351, label %307, label %353, !dbg !2282, !llvm.loop !2283

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1982, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 undef, metadata !1979, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2285
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2285
  call void @llvm.dbg.value(metadata i8 %354, metadata !1982, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %355, metadata !1979, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %306, metadata !1954, metadata !DIExpression()), !dbg !2019
  %356 = and i8 %354, 1, !dbg !2225
  %357 = icmp eq i8 %356, 0, !dbg !2225
  call void @llvm.dbg.value(metadata i1 %357, metadata !1978, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2086
  %358 = icmp ugt i64 %355, 1, !dbg !2286
  br i1 %358, label %367, label %359, !dbg !2226

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2287
  br i1 %364, label %367, label %365, !dbg !2287

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i8 %472, metadata !1978, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %441, metadata !1977, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %440, metadata !1976, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %439, metadata !1971, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %438, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %371, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %437, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %375, metadata !1960, metadata !DIExpression()), !dbg !2019
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %372, metadata !2010, metadata !DIExpression()), !dbg !2289
  %373 = and i1 %102, %368
  br label %374, !dbg !2290

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2079
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2019
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2028
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2086
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2086
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2291
  call void @llvm.dbg.value(metadata i8 %380, metadata !1977, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %379, metadata !1976, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %378, metadata !1971, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %377, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %376, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %375, metadata !1960, metadata !DIExpression()), !dbg !2019
  br i1 %373, label %381, label %427, !dbg !2292

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2297

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2086
  %383 = and i8 %377, 1, !dbg !2300
  %384 = icmp eq i8 %383, 0, !dbg !2300
  %385 = and i1 %110, %384, !dbg !2300
  br i1 %385, label %386, label %402, !dbg !2300

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2302
  br i1 %387, label %388, label %390, !dbg !2306

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2302
  store i8 39, i8* %389, align 1, !dbg !2302, !tbaa !931
  br label %390, !dbg !2302

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %391, metadata !1961, metadata !DIExpression()), !dbg !2019
  %392 = icmp ult i64 %391, %129, !dbg !2307
  br i1 %392, label %393, label %395, !dbg !2310

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2307
  store i8 36, i8* %394, align 1, !dbg !2307, !tbaa !931
  br label %395, !dbg !2307

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %396, metadata !1961, metadata !DIExpression()), !dbg !2019
  %397 = icmp ult i64 %396, %129, !dbg !2311
  br i1 %397, label %398, label %400, !dbg !2314

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2311
  store i8 39, i8* %399, align 1, !dbg !2311, !tbaa !931
  br label %400, !dbg !2311

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %401, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 1, metadata !1968, metadata !DIExpression()), !dbg !2019
  br label %402, !dbg !2315

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2019
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2019
  call void @llvm.dbg.value(metadata i8 %404, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %403, metadata !1961, metadata !DIExpression()), !dbg !2019
  %405 = icmp ult i64 %403, %129, !dbg !2316
  br i1 %405, label %406, label %408, !dbg !2319

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2316
  store i8 92, i8* %407, align 1, !dbg !2316, !tbaa !931
  br label %408, !dbg !2316

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %409, metadata !1961, metadata !DIExpression()), !dbg !2019
  %410 = icmp ult i64 %409, %129, !dbg !2320
  br i1 %410, label %411, label %415, !dbg !2323

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2320
  %413 = or i8 %412, 48, !dbg !2320
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2320
  store i8 %413, i8* %414, align 1, !dbg !2320, !tbaa !931
  br label %415, !dbg !2320

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %416, metadata !1961, metadata !DIExpression()), !dbg !2019
  %417 = icmp ult i64 %416, %129, !dbg !2324
  br i1 %417, label %418, label %423, !dbg !2327

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2324
  %420 = and i8 %419, 7, !dbg !2324
  %421 = or i8 %420, 48, !dbg !2324
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2324
  store i8 %421, i8* %422, align 1, !dbg !2324, !tbaa !931
  br label %423, !dbg !2324

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %424, metadata !1961, metadata !DIExpression()), !dbg !2019
  %425 = and i8 %378, 7, !dbg !2328
  %426 = or i8 %425, 48, !dbg !2329
  call void @llvm.dbg.value(metadata i8 %426, metadata !1971, metadata !DIExpression()), !dbg !2086
  br label %436, !dbg !2330

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2331
  %429 = icmp eq i8 %428, 0, !dbg !2331
  br i1 %429, label %436, label %430, !dbg !2333

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2334
  br i1 %431, label %432, label %434, !dbg !2338

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2334
  store i8 92, i8* %433, align 1, !dbg !2334, !tbaa !931
  br label %434, !dbg !2334

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %435, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2086
  br label %436, !dbg !2339

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2019
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2028
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2086
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2086
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %441, metadata !1977, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %440, metadata !1976, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %439, metadata !1971, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %438, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %437, metadata !1961, metadata !DIExpression()), !dbg !2019
  %442 = add i64 %375, 1, !dbg !2340
  %443 = icmp ugt i64 %372, %442, !dbg !2342
  br i1 %443, label %444, label %471, !dbg !2343

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2344
  %446 = icmp ne i8 %445, 0, !dbg !2344
  %447 = and i8 %441, 1, !dbg !2344
  %448 = icmp eq i8 %447, 0, !dbg !2344
  %449 = and i1 %446, %448, !dbg !2344
  br i1 %449, label %450, label %461, !dbg !2344

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2347
  br i1 %451, label %452, label %454, !dbg !2351

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2347
  store i8 39, i8* %453, align 1, !dbg !2347, !tbaa !931
  br label %454, !dbg !2347

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %455, metadata !1961, metadata !DIExpression()), !dbg !2019
  %456 = icmp ult i64 %455, %129, !dbg !2352
  br i1 %456, label %457, label %459, !dbg !2355

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2352
  store i8 39, i8* %458, align 1, !dbg !2352, !tbaa !931
  br label %459, !dbg !2352

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %460, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !2019
  br label %461, !dbg !2356

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2357
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2019
  call void @llvm.dbg.value(metadata i8 %463, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %462, metadata !1961, metadata !DIExpression()), !dbg !2019
  %464 = icmp ult i64 %462, %129, !dbg !2358
  br i1 %464, label %465, label %467, !dbg !2361

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2358
  store i8 %439, i8* %466, align 1, !dbg !2358, !tbaa !931
  br label %467, !dbg !2358

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %468, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %442, metadata !1960, metadata !DIExpression()), !dbg !2019
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2362
  %470 = load i8, i8* %469, align 1, !dbg !2362, !tbaa !931
  call void @llvm.dbg.value(metadata i8 %470, metadata !1971, metadata !DIExpression()), !dbg !2086
  br label %374, !dbg !2363, !llvm.loop !2364

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i8 %472, metadata !1978, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %441, metadata !1977, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %440, metadata !1976, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %439, metadata !1971, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %438, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %371, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %437, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %375, metadata !1960, metadata !DIExpression()), !dbg !2019
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2079
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2019
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2024
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2367
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2019
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2019
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2086
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2086
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2086
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %482, metadata !1978, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %481, metadata !1977, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %156, metadata !1976, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %480, metadata !1971, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %479, metadata !1969, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %478, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %477, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %476, metadata !1962, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %475, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %474, metadata !1960, metadata !DIExpression()), !dbg !2019
  br i1 %116, label %494, label %484, !dbg !2368

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2370
  %486 = zext i8 %485 to i64, !dbg !2370
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2371
  %488 = load i32, i32* %487, align 4, !dbg !2371, !tbaa !843
  %489 = and i8 %480, 31, !dbg !2372
  %490 = zext i8 %489 to i32, !dbg !2372
  %491 = shl nuw i32 1, %490, !dbg !2373
  %492 = and i32 %488, %491, !dbg !2373
  %493 = icmp eq i32 %492, 0, !dbg !2373
  br i1 %493, label %494, label %495, !dbg !2374

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2375

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2376
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2019
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2024
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2367
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2028
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2029
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2086
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2086
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %503, metadata !1978, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %502, metadata !1971, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %501, metadata !1969, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %500, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %499, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %498, metadata !1962, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %497, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %496, metadata !1960, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.label(metadata !2016), !dbg !2377
  br i1 %109, label %505, label %635, !dbg !2378

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2086
  %506 = and i8 %500, 1, !dbg !2380
  %507 = icmp eq i8 %506, 0, !dbg !2380
  %508 = and i1 %110, %507, !dbg !2380
  br i1 %508, label %509, label %525, !dbg !2380

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2382
  br i1 %510, label %511, label %513, !dbg !2386

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2382
  store i8 39, i8* %512, align 1, !dbg !2382, !tbaa !931
  br label %513, !dbg !2382

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %514, metadata !1961, metadata !DIExpression()), !dbg !2019
  %515 = icmp ult i64 %514, %504, !dbg !2387
  br i1 %515, label %516, label %518, !dbg !2390

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2387
  store i8 36, i8* %517, align 1, !dbg !2387, !tbaa !931
  br label %518, !dbg !2387

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %519, metadata !1961, metadata !DIExpression()), !dbg !2019
  %520 = icmp ult i64 %519, %504, !dbg !2391
  br i1 %520, label %521, label %523, !dbg !2394

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2391
  store i8 39, i8* %522, align 1, !dbg !2391, !tbaa !931
  br label %523, !dbg !2391

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %524, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 1, metadata !1968, metadata !DIExpression()), !dbg !2019
  br label %525, !dbg !2395

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2086
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2019
  call void @llvm.dbg.value(metadata i8 %527, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %526, metadata !1961, metadata !DIExpression()), !dbg !2019
  %528 = icmp ult i64 %526, %504, !dbg !2396
  br i1 %528, label %529, label %531, !dbg !2399

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2396
  store i8 92, i8* %530, align 1, !dbg !2396, !tbaa !931
  br label %531, !dbg !2396

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %543, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %542, metadata !1978, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %541, metadata !1977, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %540, metadata !1971, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %539, metadata !1969, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %538, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %537, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %536, metadata !1962, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %535, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %534, metadata !1960, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.label(metadata !2017), !dbg !2400
  br label %560, !dbg !2401

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2376
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2019
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2024
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2367
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2028
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2029
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2404
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2086
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2086
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %542, metadata !1978, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %541, metadata !1977, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %540, metadata !1971, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %539, metadata !1969, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %538, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %537, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %536, metadata !1962, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %535, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %534, metadata !1960, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.label(metadata !2017), !dbg !2400
  %544 = and i8 %538, 1, !dbg !2401
  %545 = icmp ne i8 %544, 0, !dbg !2401
  %546 = and i8 %541, 1, !dbg !2401
  %547 = icmp eq i8 %546, 0, !dbg !2401
  %548 = and i1 %545, %547, !dbg !2401
  br i1 %548, label %549, label %560, !dbg !2401

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2405
  br i1 %550, label %551, label %553, !dbg !2409

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2405
  store i8 39, i8* %552, align 1, !dbg !2405, !tbaa !931
  br label %553, !dbg !2405

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %554, metadata !1961, metadata !DIExpression()), !dbg !2019
  %555 = icmp ult i64 %554, %543, !dbg !2410
  br i1 %555, label %556, label %558, !dbg !2413

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2410
  store i8 39, i8* %557, align 1, !dbg !2410, !tbaa !931
  br label %558, !dbg !2410

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %559, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !2019
  br label %560, !dbg !2414

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2086
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2019
  call void @llvm.dbg.value(metadata i8 %569, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %568, metadata !1961, metadata !DIExpression()), !dbg !2019
  %570 = icmp ult i64 %568, %561, !dbg !2415
  br i1 %570, label %571, label %573, !dbg !2418

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2415
  store i8 %563, i8* %572, align 1, !dbg !2415, !tbaa !931
  br label %573, !dbg !2415

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %574, metadata !1961, metadata !DIExpression()), !dbg !2019
  %575 = icmp eq i8 %562, 0, !dbg !2419
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2421
  call void @llvm.dbg.value(metadata i8 %576, metadata !1970, metadata !DIExpression()), !dbg !2019
  br label %577, !dbg !2422

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2376
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2019
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2024
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2367
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2028
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2019
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2030
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %584, metadata !1970, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %583, metadata !1969, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 %582, metadata !1968, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %581, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %580, metadata !1962, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %579, metadata !1961, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %578, metadata !1960, metadata !DIExpression()), !dbg !2019
  %586 = add i64 %578, 1, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %586, metadata !1960, metadata !DIExpression()), !dbg !2019
  br label %121, !dbg !2424, !llvm.loop !2425

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2427
  %590 = and i1 %110, %589, !dbg !2429
  %591 = xor i1 %590, true, !dbg !2429
  %592 = or i1 %109, %591, !dbg !2429
  br i1 %592, label %593, label %635, !dbg !2429

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2430
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2430
  br i1 %597, label %598, label %607, !dbg !2430

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2432
  %600 = icmp eq i8 %599, 0, !dbg !2432
  br i1 %600, label %603, label %601, !dbg !2435

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2436
  br label %652, !dbg !2437

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2438
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2440
  br i1 %606, label %26, label %607, !dbg !2440

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2441
  %610 = and i1 %609, %608, !dbg !2443
  br i1 %610, label %611, label %626, !dbg !2443

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1963, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %123, metadata !1961, metadata !DIExpression()), !dbg !2019
  %612 = load i8, i8* %97, align 1, !dbg !2444, !tbaa !931
  %613 = icmp eq i8 %612, 0, !dbg !2447
  br i1 %613, label %626, label %614, !dbg !2447

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1963, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %617, metadata !1961, metadata !DIExpression()), !dbg !2019
  %618 = icmp ult i64 %617, %129, !dbg !2448
  br i1 %618, label %619, label %621, !dbg !2451

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2448
  store i8 %615, i8* %620, align 1, !dbg !2448, !tbaa !931
  br label %621, !dbg !2448

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %622, metadata !1961, metadata !DIExpression()), !dbg !2019
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %623, metadata !1963, metadata !DIExpression()), !dbg !2019
  %624 = load i8, i8* %623, align 1, !dbg !2444, !tbaa !931
  %625 = icmp eq i8 %624, 0, !dbg !2447
  br i1 %625, label %626, label %614, !dbg !2447, !llvm.loop !2453

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2061
  call void @llvm.dbg.value(metadata i64 %627, metadata !1961, metadata !DIExpression()), !dbg !2019
  %628 = icmp ult i64 %627, %129, !dbg !2455
  br i1 %628, label %629, label %652, !dbg !2457

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2458
  store i8 0, i8* %630, align 1, !dbg !2459, !tbaa !931
  br label %652, !dbg !2458

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %637, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.label(metadata !2018), !dbg !2460
  %633 = icmp eq i8 %101, 0, !dbg !2461
  %634 = select i1 %633, i32 2, i32 4, !dbg !2461
  br label %642, !dbg !2461

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1952, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %637, metadata !1954, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.label(metadata !2018), !dbg !2460
  %639 = icmp eq i32 %93, 2, !dbg !2463
  %640 = icmp eq i8 %636, 0, !dbg !2461
  %641 = select i1 %640, i32 2, i32 4, !dbg !2461
  br i1 %639, label %642, label %646, !dbg !2461

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2461

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1955, metadata !DIExpression()), !dbg !2019
  %650 = and i32 %5, -3, !dbg !2464
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2465
  br label %652, !dbg !2466

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2467
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2468 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2472, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 %1, metadata !2473, metadata !DIExpression()), !dbg !2476
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #29, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %3, metadata !2474, metadata !DIExpression()), !dbg !2476
  %4 = icmp eq i8* %3, %0, !dbg !2478
  br i1 %4, label %5, label %72, !dbg !2480

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #29, !dbg !2481
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %6, metadata !2482, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8* undef, metadata !2488, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 85, metadata !2489, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 84, metadata !2490, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 70, metadata !2491, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 45, metadata !2492, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 56, metadata !2493, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 0, metadata !2494, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 0, metadata !2495, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 0, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 0, metadata !2497, metadata !DIExpression()), !dbg !2498
  %7 = load i8, i8* %6, align 1, !dbg !2501, !tbaa !931
  %8 = and i8 %7, -33, !dbg !2501
  %9 = sext i8 %8 to i32, !dbg !2501
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2501

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2503, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8* undef, metadata !2508, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 84, metadata !2509, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 70, metadata !2510, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 45, metadata !2511, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 56, metadata !2512, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 0, metadata !2513, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 0, metadata !2514, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 0, metadata !2515, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 0, metadata !2516, metadata !DIExpression()), !dbg !2517
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2521
  %12 = load i8, i8* %11, align 1, !dbg !2521, !tbaa !931
  %13 = and i8 %12, -33, !dbg !2521
  %14 = icmp eq i8 %13, 84, !dbg !2521
  br i1 %14, label %15, label %69, !dbg !2521

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2523, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8* undef, metadata !2528, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 70, metadata !2529, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 45, metadata !2530, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 56, metadata !2531, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 0, metadata !2532, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 0, metadata !2533, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2536
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2540
  %17 = load i8, i8* %16, align 1, !dbg !2540, !tbaa !931
  %18 = and i8 %17, -33, !dbg !2540
  %19 = icmp eq i8 %18, 70, !dbg !2540
  br i1 %19, label %20, label %69, !dbg !2540

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2542, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* undef, metadata !2547, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 45, metadata !2548, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 56, metadata !2549, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 0, metadata !2550, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 0, metadata !2551, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2554
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2558
  %22 = load i8, i8* %21, align 1, !dbg !2558, !tbaa !931
  %23 = icmp eq i8 %22, 45, !dbg !2558
  br i1 %23, label %24, label %69, !dbg !2560

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2561, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* undef, metadata !2566, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 56, metadata !2567, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, metadata !2568, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2572
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2576
  %26 = load i8, i8* %25, align 1, !dbg !2576, !tbaa !931
  %27 = icmp eq i8 %26, 56, !dbg !2576
  br i1 %27, label %28, label %69, !dbg !2578

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2579, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* undef, metadata !2584, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2586, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2589
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2593
  %30 = load i8, i8* %29, align 1, !dbg !2593, !tbaa !931
  %31 = icmp eq i8 %30, 0, !dbg !2593
  br i1 %31, label %32, label %69, !dbg !2595

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2596, !tbaa !931
  %34 = icmp eq i8 %33, 96, !dbg !2597
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.81, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.82, i64 0, i64 0), !dbg !2596
  br label %72, !dbg !2598

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2503, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8* undef, metadata !2508, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 66, metadata !2509, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 49, metadata !2510, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 56, metadata !2511, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 48, metadata !2512, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 51, metadata !2513, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 48, metadata !2514, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 0, metadata !2515, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 0, metadata !2516, metadata !DIExpression()), !dbg !2599
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2603
  %38 = load i8, i8* %37, align 1, !dbg !2603, !tbaa !931
  %39 = and i8 %38, -33, !dbg !2603
  %40 = icmp eq i8 %39, 66, !dbg !2603
  br i1 %40, label %41, label %69, !dbg !2603

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2523, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8* undef, metadata !2528, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 49, metadata !2529, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 56, metadata !2530, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 48, metadata !2531, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 51, metadata !2532, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 48, metadata !2533, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2604
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2606
  %43 = load i8, i8* %42, align 1, !dbg !2606, !tbaa !931
  %44 = icmp eq i8 %43, 49, !dbg !2606
  br i1 %44, label %45, label %69, !dbg !2607

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2542, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8* undef, metadata !2547, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 56, metadata !2548, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 48, metadata !2549, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 51, metadata !2550, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 48, metadata !2551, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2608
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2610
  %47 = load i8, i8* %46, align 1, !dbg !2610, !tbaa !931
  %48 = icmp eq i8 %47, 56, !dbg !2610
  br i1 %48, label %49, label %69, !dbg !2611

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2561, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8* undef, metadata !2566, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 48, metadata !2567, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 51, metadata !2568, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 48, metadata !2569, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2612
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2614
  %51 = load i8, i8* %50, align 1, !dbg !2614, !tbaa !931
  %52 = icmp eq i8 %51, 48, !dbg !2614
  br i1 %52, label %53, label %69, !dbg !2615

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2579, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8* undef, metadata !2584, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 51, metadata !2585, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 48, metadata !2586, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2587, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2616
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2618
  %55 = load i8, i8* %54, align 1, !dbg !2618, !tbaa !931
  %56 = icmp eq i8 %55, 51, !dbg !2618
  br i1 %56, label %57, label %69, !dbg !2619

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2620, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* undef, metadata !2625, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 48, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 0, metadata !2628, metadata !DIExpression()), !dbg !2629
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2633
  %59 = load i8, i8* %58, align 1, !dbg !2633, !tbaa !931
  %60 = icmp eq i8 %59, 48, !dbg !2633
  br i1 %60, label %61, label %69, !dbg !2635

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2636, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* undef, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2644
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2648
  %63 = load i8, i8* %62, align 1, !dbg !2648, !tbaa !931
  %64 = icmp eq i8 %63, 0, !dbg !2648
  br i1 %64, label %65, label %69, !dbg !2650

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2651, !tbaa !931
  %67 = icmp eq i8 %66, 96, !dbg !2652
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.83, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.84, i64 0, i64 0), !dbg !2651
  br label %72, !dbg !2653

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2654
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), !dbg !2655
  br label %72, !dbg !2656

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2476
  ret i8* %73, !dbg !2657
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2658 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2662 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2668 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2672, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %0, metadata !2676, metadata !DIExpression()) #29, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %1, metadata !2681, metadata !DIExpression()) #29, !dbg !2689
  call void @llvm.dbg.value(metadata i64* null, metadata !2682, metadata !DIExpression()) #29, !dbg !2689
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2683, metadata !DIExpression()) #29, !dbg !2689
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2691
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2684, metadata !DIExpression()) #29, !dbg !2689
  %6 = tail call i32* @__errno_location() #33, !dbg !2692
  %7 = load i32, i32* %6, align 4, !dbg !2692, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %7, metadata !2685, metadata !DIExpression()) #29, !dbg !2689
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2693
  %9 = load i32, i32* %8, align 4, !dbg !2693, !tbaa !1895
  %10 = or i32 %9, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i32 %10, metadata !2686, metadata !DIExpression()) #29, !dbg !2689
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2695
  %12 = load i32, i32* %11, align 8, !dbg !2695, !tbaa !1844
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2696
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2697
  %15 = load i8*, i8** %14, align 8, !dbg !2697, !tbaa !1917
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2698
  %17 = load i8*, i8** %16, align 8, !dbg !2698, !tbaa !1920
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #29, !dbg !2699
  %19 = add i64 %18, 1, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %19, metadata !2687, metadata !DIExpression()) #29, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %19, metadata !2701, metadata !DIExpression()) #29, !dbg !2706
  %20 = tail call noalias i8* @xmalloc(i64 %19) #29, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %20, metadata !2688, metadata !DIExpression()) #29, !dbg !2689
  %21 = load i32, i32* %11, align 8, !dbg !2709, !tbaa !1844
  %22 = load i8*, i8** %14, align 8, !dbg !2710, !tbaa !1917
  %23 = load i8*, i8** %16, align 8, !dbg !2711, !tbaa !1920
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #29, !dbg !2712
  store i32 %7, i32* %6, align 4, !dbg !2713, !tbaa !843
  ret i8* %20, !dbg !2714
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2677 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2676, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %1, metadata !2681, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64* %2, metadata !2682, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2683, metadata !DIExpression()), !dbg !2715
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2716
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2684, metadata !DIExpression()), !dbg !2715
  %7 = tail call i32* @__errno_location() #33, !dbg !2717
  %8 = load i32, i32* %7, align 4, !dbg !2717, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %8, metadata !2685, metadata !DIExpression()), !dbg !2715
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2718
  %10 = load i32, i32* %9, align 4, !dbg !2718, !tbaa !1895
  %11 = icmp eq i64* %2, null, !dbg !2719
  %12 = zext i1 %11 to i32, !dbg !2719
  %13 = or i32 %10, %12, !dbg !2720
  call void @llvm.dbg.value(metadata i32 %13, metadata !2686, metadata !DIExpression()), !dbg !2715
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2721
  %15 = load i32, i32* %14, align 8, !dbg !2721, !tbaa !1844
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2722
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2723
  %18 = load i8*, i8** %17, align 8, !dbg !2723, !tbaa !1917
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2724
  %20 = load i8*, i8** %19, align 8, !dbg !2724, !tbaa !1920
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2725
  %22 = add i64 %21, 1, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %22, metadata !2687, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %22, metadata !2701, metadata !DIExpression()) #29, !dbg !2727
  %23 = tail call noalias i8* @xmalloc(i64 %22) #29, !dbg !2729
  call void @llvm.dbg.value(metadata i8* %23, metadata !2688, metadata !DIExpression()), !dbg !2715
  %24 = load i32, i32* %14, align 8, !dbg !2730, !tbaa !1844
  %25 = load i8*, i8** %17, align 8, !dbg !2731, !tbaa !1917
  %26 = load i8*, i8** %19, align 8, !dbg !2732, !tbaa !1920
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2733
  store i32 %8, i32* %7, align 4, !dbg !2734, !tbaa !843
  br i1 %11, label %29, label %28, !dbg !2735

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2736, !tbaa !1723
  br label %29, !dbg !2738

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2739
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2740 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2744, !tbaa !678
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2742, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 1, metadata !2743, metadata !DIExpression()), !dbg !2745
  %2 = load i32, i32* @nslots, align 4, !dbg !2746, !tbaa !843
  %3 = icmp sgt i32 %2, 1, !dbg !2749
  br i1 %3, label %4, label %12, !dbg !2750

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2749
  br label %6, !dbg !2750

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2743, metadata !DIExpression()), !dbg !2745
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2751
  %9 = load i8*, i8** %8, align 8, !dbg !2751, !tbaa !2752
  tail call void @free(i8* %9) #29, !dbg !2754
  %10 = add nuw nsw i64 %7, 1, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %10, metadata !2743, metadata !DIExpression()), !dbg !2745
  %11 = icmp eq i64 %10, %5, !dbg !2749
  br i1 %11, label %12, label %6, !dbg !2750, !llvm.loop !2756

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2758
  %14 = load i8*, i8** %13, align 8, !dbg !2758, !tbaa !2752
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2760
  br i1 %15, label %17, label %16, !dbg !2761

16:                                               ; preds = %12
  tail call void @free(i8* %14) #29, !dbg !2762
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2764, !tbaa !2765
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2766, !tbaa !2752
  br label %17, !dbg !2767

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2768
  br i1 %18, label %21, label %19, !dbg !2770

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2771
  tail call void @free(i8* %20) #29, !dbg !2773
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2774, !tbaa !678
  br label %21, !dbg !2775

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2776, !tbaa !843
  ret void, !dbg !2777
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2780, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8* %1, metadata !2781, metadata !DIExpression()), !dbg !2782
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2783
  ret i8* %3, !dbg !2784
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2785 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2789, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8* %1, metadata !2790, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %2, metadata !2791, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2792, metadata !DIExpression()), !dbg !2804
  %5 = tail call i32* @__errno_location() #33, !dbg !2805
  %6 = load i32, i32* %5, align 4, !dbg !2805, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %6, metadata !2793, metadata !DIExpression()), !dbg !2804
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2806, !tbaa !678
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2794, metadata !DIExpression()), !dbg !2804
  %8 = icmp slt i32 %0, 0, !dbg !2807
  br i1 %8, label %9, label %10, !dbg !2809

9:                                                ; preds = %4
  tail call void @abort() #31, !dbg !2810
  unreachable, !dbg !2810

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2811, !tbaa !843
  %12 = icmp sgt i32 %11, %0, !dbg !2812
  br i1 %12, label %34, label %13, !dbg !2813

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2814
  call void @llvm.dbg.value(metadata i1 %14, metadata !2795, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2815
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2798, metadata !DIExpression()), !dbg !2815
  %15 = icmp eq i32 %0, 2147483647, !dbg !2816
  br i1 %15, label %16, label %17, !dbg !2818

16:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !2819
  unreachable, !dbg !2819

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2820
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2820
  %20 = add nuw nsw i32 %0, 1, !dbg !2821
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2822
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #29, !dbg !2823
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2823
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2794, metadata !DIExpression()), !dbg !2804
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2824, !tbaa !678
  br i1 %14, label %25, label %26, !dbg !2825

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2826, !tbaa.struct !2828
  br label %26, !dbg !2829

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2830, !tbaa !843
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2831
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2832
  %31 = sub nsw i32 %20, %27, !dbg !2833
  %32 = sext i32 %31 to i64, !dbg !2834
  %33 = shl nsw i64 %32, 4, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %30, metadata !2229, metadata !DIExpression()) #29, !dbg !2836
  call void @llvm.dbg.value(metadata i32 0, metadata !2234, metadata !DIExpression()) #29, !dbg !2836
  call void @llvm.dbg.value(metadata i64 %33, metadata !2235, metadata !DIExpression()) #29, !dbg !2836
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #29, !dbg !2838
  store i32 %20, i32* @nslots, align 4, !dbg !2839, !tbaa !843
  br label %34, !dbg !2840

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2804
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2794, metadata !DIExpression()), !dbg !2804
  %36 = zext i32 %0 to i64, !dbg !2841
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2842
  %38 = load i64, i64* %37, align 8, !dbg !2842, !tbaa !2765
  call void @llvm.dbg.value(metadata i64 %38, metadata !2799, metadata !DIExpression()), !dbg !2843
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2844
  %40 = load i8*, i8** %39, align 8, !dbg !2844, !tbaa !2752
  call void @llvm.dbg.value(metadata i8* %40, metadata !2801, metadata !DIExpression()), !dbg !2843
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2845
  %42 = load i32, i32* %41, align 4, !dbg !2845, !tbaa !1895
  %43 = or i32 %42, 1, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %43, metadata !2802, metadata !DIExpression()), !dbg !2843
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2847
  %45 = load i32, i32* %44, align 8, !dbg !2847, !tbaa !1844
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2848
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2849
  %48 = load i8*, i8** %47, align 8, !dbg !2849, !tbaa !1917
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2850
  %50 = load i8*, i8** %49, align 8, !dbg !2850, !tbaa !1920
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2851
  call void @llvm.dbg.value(metadata i64 %51, metadata !2803, metadata !DIExpression()), !dbg !2843
  %52 = icmp ugt i64 %38, %51, !dbg !2852
  br i1 %52, label %63, label %53, !dbg !2854

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %54, metadata !2799, metadata !DIExpression()), !dbg !2843
  store i64 %54, i64* %37, align 8, !dbg !2857, !tbaa !2765
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2858
  br i1 %55, label %57, label %56, !dbg !2860

56:                                               ; preds = %53
  tail call void @free(i8* %40) #29, !dbg !2861
  br label %57, !dbg !2861

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2701, metadata !DIExpression()) #29, !dbg !2862
  %58 = tail call noalias i8* @xmalloc(i64 %54) #29, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %58, metadata !2801, metadata !DIExpression()), !dbg !2843
  store i8* %58, i8** %39, align 8, !dbg !2865, !tbaa !2752
  %59 = load i32, i32* %44, align 8, !dbg !2866, !tbaa !1844
  %60 = load i8*, i8** %47, align 8, !dbg !2867, !tbaa !1917
  %61 = load i8*, i8** %49, align 8, !dbg !2868, !tbaa !1920
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2869
  br label %63, !dbg !2870

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2843
  call void @llvm.dbg.value(metadata i8* %64, metadata !2801, metadata !DIExpression()), !dbg !2843
  store i32 %6, i32* %5, align 4, !dbg !2871, !tbaa !843
  ret i8* %64, !dbg !2872
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2877, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %1, metadata !2878, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %2, metadata !2879, metadata !DIExpression()), !dbg !2880
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2881
  ret i8* %4, !dbg !2882
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2883 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2885, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i32 0, metadata !2780, metadata !DIExpression()) #29, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %0, metadata !2781, metadata !DIExpression()) #29, !dbg !2887
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !2889
  ret i8* %2, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2891 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2895, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %1, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 0, metadata !2877, metadata !DIExpression()) #29, !dbg !2898
  call void @llvm.dbg.value(metadata i8* %0, metadata !2878, metadata !DIExpression()) #29, !dbg !2898
  call void @llvm.dbg.value(metadata i64 %1, metadata !2879, metadata !DIExpression()) #29, !dbg !2898
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !2900
  ret i8* %3, !dbg !2901
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2902 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2906, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i32 %1, metadata !2907, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()), !dbg !2910
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2911
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2911
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2909, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2913), !dbg !2916
  call void @llvm.dbg.value(metadata i32 %1, metadata !2917, metadata !DIExpression()) #29, !dbg !2923
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2922, metadata !DIExpression()) #29, !dbg !2925
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !2925, !alias.scope !2913
  %6 = icmp eq i32 %1, 10, !dbg !2926
  br i1 %6, label %7, label %8, !dbg !2928

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !2929, !noalias !2913
  unreachable, !dbg !2929

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2930
  store i32 %1, i32* %9, align 8, !dbg !2931, !tbaa !1844, !alias.scope !2913
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2932
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2933
  ret i8* %10, !dbg !2934
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2935 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2939, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i32 %1, metadata !2940, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* %2, metadata !2941, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %3, metadata !2942, metadata !DIExpression()), !dbg !2944
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2945
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2945
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2943, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2947), !dbg !2950
  call void @llvm.dbg.value(metadata i32 %1, metadata !2917, metadata !DIExpression()) #29, !dbg !2951
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2922, metadata !DIExpression()) #29, !dbg !2953
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #29, !dbg !2953, !alias.scope !2947
  %7 = icmp eq i32 %1, 10, !dbg !2954
  br i1 %7, label %8, label %9, !dbg !2955

8:                                                ; preds = %4
  tail call void @abort() #31, !dbg !2956, !noalias !2947
  unreachable, !dbg !2956

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2957
  store i32 %1, i32* %10, align 8, !dbg !2958, !tbaa !1844, !alias.scope !2947
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2960
  ret i8* %11, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2962 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %1, metadata !2967, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 0, metadata !2906, metadata !DIExpression()) #29, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()) #29, !dbg !2969
  call void @llvm.dbg.value(metadata i8* %1, metadata !2908, metadata !DIExpression()) #29, !dbg !2969
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2971
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2971
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2909, metadata !DIExpression()) #29, !dbg !2972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2973) #29, !dbg !2976
  call void @llvm.dbg.value(metadata i32 %0, metadata !2917, metadata !DIExpression()) #29, !dbg !2977
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2922, metadata !DIExpression()) #29, !dbg !2979
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #29, !dbg !2979, !alias.scope !2973
  %5 = icmp eq i32 %0, 10, !dbg !2980
  br i1 %5, label %6, label %7, !dbg !2981

6:                                                ; preds = %2
  tail call void @abort() #31, !dbg !2982, !noalias !2973
  unreachable, !dbg !2982

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2983
  store i32 %0, i32* %8, align 8, !dbg !2984, !tbaa !1844, !alias.scope !2973
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !2985
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2986
  ret i8* %9, !dbg !2987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2988 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* %1, metadata !2993, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %2, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i32 0, metadata !2939, metadata !DIExpression()) #29, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %0, metadata !2940, metadata !DIExpression()) #29, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %1, metadata !2941, metadata !DIExpression()) #29, !dbg !2996
  call void @llvm.dbg.value(metadata i64 %2, metadata !2942, metadata !DIExpression()) #29, !dbg !2996
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2998
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2998
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2943, metadata !DIExpression()) #29, !dbg !2999
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3000) #29, !dbg !3003
  call void @llvm.dbg.value(metadata i32 %0, metadata !2917, metadata !DIExpression()) #29, !dbg !3004
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2922, metadata !DIExpression()) #29, !dbg !3006
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !3006, !alias.scope !3000
  %6 = icmp eq i32 %0, 10, !dbg !3007
  br i1 %6, label %7, label %8, !dbg !3008

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !3009, !noalias !3000
  unreachable, !dbg !3009

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3010
  store i32 %0, i32* %9, align 8, !dbg !3011, !tbaa !1844, !alias.scope !3000
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #29, !dbg !3012
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3013
  ret i8* %10, !dbg !3014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3015 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3019, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 %2, metadata !3021, metadata !DIExpression()), !dbg !3023
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3024
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3024
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3022, metadata !DIExpression()), !dbg !3025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3026, !tbaa.struct !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1862, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 %2, metadata !1863, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 %2, metadata !1865, metadata !DIExpression()), !dbg !3028
  %6 = lshr i8 %2, 5, !dbg !3030
  %7 = zext i8 %6 to i64, !dbg !3030
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3031
  call void @llvm.dbg.value(metadata i32* %8, metadata !1866, metadata !DIExpression()), !dbg !3028
  %9 = and i8 %2, 31, !dbg !3032
  %10 = zext i8 %9 to i32, !dbg !3032
  call void @llvm.dbg.value(metadata i32 %10, metadata !1868, metadata !DIExpression()), !dbg !3028
  %11 = load i32, i32* %8, align 4, !dbg !3033, !tbaa !843
  %12 = lshr i32 %11, %10, !dbg !3034
  %13 = and i32 %12, 1, !dbg !3035
  call void @llvm.dbg.value(metadata i32 %13, metadata !1869, metadata !DIExpression()), !dbg !3028
  %14 = xor i32 %13, 1, !dbg !3036
  %15 = shl i32 %14, %10, !dbg !3037
  %16 = xor i32 %15, %11, !dbg !3038
  store i32 %16, i32* %8, align 4, !dbg !3038, !tbaa !843
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3039
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3040
  ret i8* %17, !dbg !3041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3042 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3046, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 %1, metadata !3047, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8* %0, metadata !3019, metadata !DIExpression()) #29, !dbg !3049
  call void @llvm.dbg.value(metadata i64 -1, metadata !3020, metadata !DIExpression()) #29, !dbg !3049
  call void @llvm.dbg.value(metadata i8 %1, metadata !3021, metadata !DIExpression()) #29, !dbg !3049
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3051
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3051
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3022, metadata !DIExpression()) #29, !dbg !3052
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3053, !tbaa.struct !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1862, metadata !DIExpression()) #29, !dbg !3054
  call void @llvm.dbg.value(metadata i8 %1, metadata !1863, metadata !DIExpression()) #29, !dbg !3054
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()) #29, !dbg !3054
  call void @llvm.dbg.value(metadata i8 %1, metadata !1865, metadata !DIExpression()) #29, !dbg !3054
  %5 = lshr i8 %1, 5, !dbg !3056
  %6 = zext i8 %5 to i64, !dbg !3056
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3057
  call void @llvm.dbg.value(metadata i32* %7, metadata !1866, metadata !DIExpression()) #29, !dbg !3054
  %8 = and i8 %1, 31, !dbg !3058
  %9 = zext i8 %8 to i32, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %9, metadata !1868, metadata !DIExpression()) #29, !dbg !3054
  %10 = load i32, i32* %7, align 4, !dbg !3059, !tbaa !843
  %11 = lshr i32 %10, %9, !dbg !3060
  %12 = and i32 %11, 1, !dbg !3061
  call void @llvm.dbg.value(metadata i32 %12, metadata !1869, metadata !DIExpression()) #29, !dbg !3054
  %13 = xor i32 %12, 1, !dbg !3062
  %14 = shl i32 %13, %9, !dbg !3063
  %15 = xor i32 %14, %10, !dbg !3064
  store i32 %15, i32* %7, align 4, !dbg !3064, !tbaa !843
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !3065
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3066
  ret i8* %16, !dbg !3067
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3068 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %0, metadata !3046, metadata !DIExpression()) #29, !dbg !3072
  call void @llvm.dbg.value(metadata i8 58, metadata !3047, metadata !DIExpression()) #29, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %0, metadata !3019, metadata !DIExpression()) #29, !dbg !3074
  call void @llvm.dbg.value(metadata i64 -1, metadata !3020, metadata !DIExpression()) #29, !dbg !3074
  call void @llvm.dbg.value(metadata i8 58, metadata !3021, metadata !DIExpression()) #29, !dbg !3074
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3076
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #29, !dbg !3076
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3022, metadata !DIExpression()) #29, !dbg !3077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3078, !tbaa.struct !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1862, metadata !DIExpression()) #29, !dbg !3079
  call void @llvm.dbg.value(metadata i8 58, metadata !1863, metadata !DIExpression()) #29, !dbg !3079
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()) #29, !dbg !3079
  call void @llvm.dbg.value(metadata i8 58, metadata !1865, metadata !DIExpression()) #29, !dbg !3079
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3081
  call void @llvm.dbg.value(metadata i32* %4, metadata !1866, metadata !DIExpression()) #29, !dbg !3079
  call void @llvm.dbg.value(metadata i32 26, metadata !1868, metadata !DIExpression()) #29, !dbg !3079
  %5 = load i32, i32* %4, align 4, !dbg !3082, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %5, metadata !1869, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !3079
  %6 = or i32 %5, 67108864, !dbg !3083
  store i32 %6, i32* %4, align 4, !dbg !3083, !tbaa !843
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #29, !dbg !3084
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #29, !dbg !3085
  ret i8* %7, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3087 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* %0, metadata !3019, metadata !DIExpression()) #29, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()) #29, !dbg !3092
  call void @llvm.dbg.value(metadata i8 58, metadata !3021, metadata !DIExpression()) #29, !dbg !3092
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3094
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3022, metadata !DIExpression()) #29, !dbg !3095
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3096, !tbaa.struct !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1862, metadata !DIExpression()) #29, !dbg !3097
  call void @llvm.dbg.value(metadata i8 58, metadata !1863, metadata !DIExpression()) #29, !dbg !3097
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()) #29, !dbg !3097
  call void @llvm.dbg.value(metadata i8 58, metadata !1865, metadata !DIExpression()) #29, !dbg !3097
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3099
  call void @llvm.dbg.value(metadata i32* %5, metadata !1866, metadata !DIExpression()) #29, !dbg !3097
  call void @llvm.dbg.value(metadata i32 26, metadata !1868, metadata !DIExpression()) #29, !dbg !3097
  %6 = load i32, i32* %5, align 4, !dbg !3100, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %6, metadata !1869, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !3097
  %7 = or i32 %6, 67108864, !dbg !3101
  store i32 %7, i32* %5, align 4, !dbg !3101, !tbaa !843
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #29, !dbg !3102
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3103
  ret i8* %8, !dbg !3104
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3105 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2922, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3111
  call void @llvm.dbg.value(metadata i32 %0, metadata !3107, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 %1, metadata !3108, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %2, metadata !3109, metadata !DIExpression()), !dbg !3113
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3114
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3114
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3110, metadata !DIExpression()), !dbg !3115
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3116
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3117), !dbg !3116
  call void @llvm.dbg.value(metadata i32 %1, metadata !2917, metadata !DIExpression()) #29, !dbg !3120
  call void @llvm.dbg.value(metadata i32 0, metadata !2922, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3120
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3111, !alias.scope !3117
  %8 = icmp eq i32 %1, 10, !dbg !3121
  br i1 %8, label %9, label %10, !dbg !3122

9:                                                ; preds = %3
  tail call void @abort() #31, !dbg !3123, !noalias !3117
  unreachable, !dbg !3123

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2922, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3120
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3116
  store i32 %1, i32* %11, align 8, !dbg !3116, !tbaa.struct !3027
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3116
  %13 = bitcast i32* %12 to i8*, !dbg !3116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3116, !tbaa.struct !3124
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3116
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1862, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8 58, metadata !1863, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8 58, metadata !1865, metadata !DIExpression()), !dbg !3125
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3127
  call void @llvm.dbg.value(metadata i32* %14, metadata !1866, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i32 26, metadata !1868, metadata !DIExpression()), !dbg !3125
  %15 = load i32, i32* %14, align 4, !dbg !3128, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %15, metadata !1869, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3125
  %16 = or i32 %15, 67108864, !dbg !3129
  store i32 %16, i32* %14, align 4, !dbg !3129, !tbaa !843
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3130
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3131
  ret i8* %17, !dbg !3132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3133 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3137, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %1, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %2, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %3, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i32 %0, metadata !3142, metadata !DIExpression()) #29, !dbg !3152
  call void @llvm.dbg.value(metadata i8* %1, metadata !3147, metadata !DIExpression()) #29, !dbg !3152
  call void @llvm.dbg.value(metadata i8* %2, metadata !3148, metadata !DIExpression()) #29, !dbg !3152
  call void @llvm.dbg.value(metadata i8* %3, metadata !3149, metadata !DIExpression()) #29, !dbg !3152
  call void @llvm.dbg.value(metadata i64 -1, metadata !3150, metadata !DIExpression()) #29, !dbg !3152
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3154
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3154
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3151, metadata !DIExpression()) #29, !dbg !3155
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3156, !tbaa.struct !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1902, metadata !DIExpression()) #29, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %1, metadata !1903, metadata !DIExpression()) #29, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %2, metadata !1904, metadata !DIExpression()) #29, !dbg !3157
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1902, metadata !DIExpression()) #29, !dbg !3157
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3159
  store i32 10, i32* %7, align 8, !dbg !3160, !tbaa !1844
  %8 = icmp ne i8* %1, null, !dbg !3161
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3162
  br i1 %10, label %12, label %11, !dbg !3162

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !3163
  unreachable, !dbg !3163

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3164
  store i8* %1, i8** %13, align 8, !dbg !3165, !tbaa !1917
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3166
  store i8* %2, i8** %14, align 8, !dbg !3167, !tbaa !1920
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #29, !dbg !3168
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3169
  ret i8* %15, !dbg !3170
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3143 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3142, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8* %1, metadata !3147, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8* %2, metadata !3148, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8* %3, metadata !3149, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %4, metadata !3150, metadata !DIExpression()), !dbg !3171
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #29, !dbg !3172
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3151, metadata !DIExpression()), !dbg !3173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3174, !tbaa.struct !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1902, metadata !DIExpression()) #29, !dbg !3175
  call void @llvm.dbg.value(metadata i8* %1, metadata !1903, metadata !DIExpression()) #29, !dbg !3175
  call void @llvm.dbg.value(metadata i8* %2, metadata !1904, metadata !DIExpression()) #29, !dbg !3175
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1902, metadata !DIExpression()) #29, !dbg !3175
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3177
  store i32 10, i32* %8, align 8, !dbg !3178, !tbaa !1844
  %9 = icmp ne i8* %1, null, !dbg !3179
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3180
  br i1 %11, label %13, label %12, !dbg !3180

12:                                               ; preds = %5
  tail call void @abort() #31, !dbg !3181
  unreachable, !dbg !3181

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3182
  store i8* %1, i8** %14, align 8, !dbg !3183, !tbaa !1917
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3184
  store i8* %2, i8** %15, align 8, !dbg !3185, !tbaa !1920
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3186
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #29, !dbg !3187
  ret i8* %16, !dbg !3188
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3189 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %1, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %2, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3137, metadata !DIExpression()) #29, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %0, metadata !3138, metadata !DIExpression()) #29, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %1, metadata !3139, metadata !DIExpression()) #29, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %2, metadata !3140, metadata !DIExpression()) #29, !dbg !3197
  call void @llvm.dbg.value(metadata i32 0, metadata !3142, metadata !DIExpression()) #29, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()) #29, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %1, metadata !3148, metadata !DIExpression()) #29, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %2, metadata !3149, metadata !DIExpression()) #29, !dbg !3199
  call void @llvm.dbg.value(metadata i64 -1, metadata !3150, metadata !DIExpression()) #29, !dbg !3199
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3201
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3201
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3151, metadata !DIExpression()) #29, !dbg !3202
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3203, !tbaa.struct !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1902, metadata !DIExpression()) #29, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %0, metadata !1903, metadata !DIExpression()) #29, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %1, metadata !1904, metadata !DIExpression()) #29, !dbg !3204
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1902, metadata !DIExpression()) #29, !dbg !3204
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3206
  store i32 10, i32* %6, align 8, !dbg !3207, !tbaa !1844
  %7 = icmp ne i8* %0, null, !dbg !3208
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3209
  br i1 %9, label %11, label %10, !dbg !3209

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !3210
  unreachable, !dbg !3210

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3211
  store i8* %0, i8** %12, align 8, !dbg !3212, !tbaa !1917
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3213
  store i8* %1, i8** %13, align 8, !dbg !3214, !tbaa !1920
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #29, !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3216
  ret i8* %14, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3218 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3222, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8* %1, metadata !3223, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8* %2, metadata !3224, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %3, metadata !3225, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 0, metadata !3142, metadata !DIExpression()) #29, !dbg !3227
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()) #29, !dbg !3227
  call void @llvm.dbg.value(metadata i8* %1, metadata !3148, metadata !DIExpression()) #29, !dbg !3227
  call void @llvm.dbg.value(metadata i8* %2, metadata !3149, metadata !DIExpression()) #29, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %3, metadata !3150, metadata !DIExpression()) #29, !dbg !3227
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3229
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3229
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3151, metadata !DIExpression()) #29, !dbg !3230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3231, !tbaa.struct !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1902, metadata !DIExpression()) #29, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %0, metadata !1903, metadata !DIExpression()) #29, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %1, metadata !1904, metadata !DIExpression()) #29, !dbg !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1902, metadata !DIExpression()) #29, !dbg !3232
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3234
  store i32 10, i32* %7, align 8, !dbg !3235, !tbaa !1844
  %8 = icmp ne i8* %0, null, !dbg !3236
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3237
  br i1 %10, label %12, label %11, !dbg !3237

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !3238
  unreachable, !dbg !3238

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3239
  store i8* %0, i8** %13, align 8, !dbg !3240, !tbaa !1917
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3241
  store i8* %1, i8** %14, align 8, !dbg !3242, !tbaa !1920
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #29, !dbg !3243
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3244
  ret i8* %15, !dbg !3245
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3246 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %1, metadata !3251, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %2, metadata !3252, metadata !DIExpression()), !dbg !3253
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3254
  ret i8* %4, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3256 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i32 0, metadata !3250, metadata !DIExpression()) #29, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %0, metadata !3251, metadata !DIExpression()) #29, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %1, metadata !3252, metadata !DIExpression()) #29, !dbg !3263
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3265
  ret i8* %3, !dbg !3266
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8* %1, metadata !3272, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 %0, metadata !3250, metadata !DIExpression()) #29, !dbg !3274
  call void @llvm.dbg.value(metadata i8* %1, metadata !3251, metadata !DIExpression()) #29, !dbg !3274
  call void @llvm.dbg.value(metadata i64 -1, metadata !3252, metadata !DIExpression()) #29, !dbg !3274
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3276
  ret i8* %3, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3278 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3282, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()) #29, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %0, metadata !3272, metadata !DIExpression()) #29, !dbg !3284
  call void @llvm.dbg.value(metadata i32 0, metadata !3250, metadata !DIExpression()) #29, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %0, metadata !3251, metadata !DIExpression()) #29, !dbg !3286
  call void @llvm.dbg.value(metadata i64 -1, metadata !3252, metadata !DIExpression()) #29, !dbg !3286
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3288
  ret i8* %2, !dbg !3289
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32 %0, i8* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !3290 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3294, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8* %1, metadata !3295, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %2, metadata !3296, metadata !DIExpression()), !dbg !3304
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #29, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %4, metadata !3297, metadata !DIExpression()), !dbg !3306
  %5 = icmp sgt i64 %4, -1, !dbg !3307
  br i1 %5, label %21, label %6, !dbg !3309

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #33, !dbg !3304
  br label %8, !dbg !3309

8:                                                ; preds = %6, %17
  %9 = phi i64 [ %4, %6 ], [ %19, %17 ]
  %10 = phi i64 [ %2, %6 ], [ %18, %17 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !3296, metadata !DIExpression()), !dbg !3304
  %11 = load i32, i32* %7, align 4, !dbg !3310, !tbaa !843
  %12 = icmp eq i32 %11, 4, !dbg !3310
  br i1 %12, label %17, label %13, !dbg !3312, !llvm.loop !3313

13:                                               ; preds = %8
  %14 = icmp eq i32 %11, 22, !dbg !3316
  %15 = icmp ugt i64 %10, 2146435072
  %16 = and i1 %15, %14, !dbg !3318
  br i1 %16, label %17, label %21, !dbg !3318

17:                                               ; preds = %13, %8
  %18 = phi i64 [ %10, %8 ], [ 2146435072, %13 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !3296, metadata !DIExpression()), !dbg !3304
  %19 = tail call i64 @read(i32 %0, i8* %1, i64 %18) #29, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %19, metadata !3297, metadata !DIExpression()), !dbg !3306
  %20 = icmp sgt i64 %19, -1, !dbg !3307
  br i1 %20, label %21, label %8, !dbg !3309

21:                                               ; preds = %17, %13, %3
  %22 = phi i64 [ %4, %3 ], [ %9, %13 ], [ %19, %17 ], !dbg !3305
  call void @llvm.dbg.value(metadata i64 %18, metadata !3296, metadata !DIExpression()), !dbg !3304
  ret i64 %22, !dbg !3319
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3320 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3359, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %1, metadata !3360, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %2, metadata !3361, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %3, metadata !3362, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8** %4, metadata !3363, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i64 %5, metadata !3364, metadata !DIExpression()), !dbg !3365
  %7 = icmp eq i8* %1, null, !dbg !3366
  br i1 %7, label %10, label %8, !dbg !3368

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #29, !dbg !3369
  br label %12, !dbg !3369

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.92, i64 0, i64 0), i8* %2, i8* %3) #29, !dbg !3370
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.93, i64 0, i64 0), i32 5) #29, !dbg !3371
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #29, !dbg !3371
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.94, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3372
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #29, !dbg !3373
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.96, i64 0, i64 0)) #29, !dbg !3373
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.94, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3374
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
  ], !dbg !3375

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.97, i64 0, i64 0), i32 5) #29, !dbg !3376
  %21 = load i8*, i8** %4, align 8, !dbg !3376, !tbaa !678
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #29, !dbg !3376
  br label %147, !dbg !3378

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.98, i64 0, i64 0), i32 5) #29, !dbg !3379
  %25 = load i8*, i8** %4, align 8, !dbg !3379, !tbaa !678
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3379
  %27 = load i8*, i8** %26, align 8, !dbg !3379, !tbaa !678
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #29, !dbg !3379
  br label %147, !dbg !3380

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.99, i64 0, i64 0), i32 5) #29, !dbg !3381
  %31 = load i8*, i8** %4, align 8, !dbg !3381, !tbaa !678
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3381
  %33 = load i8*, i8** %32, align 8, !dbg !3381, !tbaa !678
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3381
  %35 = load i8*, i8** %34, align 8, !dbg !3381, !tbaa !678
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #29, !dbg !3381
  br label %147, !dbg !3382

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.100, i64 0, i64 0), i32 5) #29, !dbg !3383
  %39 = load i8*, i8** %4, align 8, !dbg !3383, !tbaa !678
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3383
  %41 = load i8*, i8** %40, align 8, !dbg !3383, !tbaa !678
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3383
  %43 = load i8*, i8** %42, align 8, !dbg !3383, !tbaa !678
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3383
  %45 = load i8*, i8** %44, align 8, !dbg !3383, !tbaa !678
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #29, !dbg !3383
  br label %147, !dbg !3384

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.101, i64 0, i64 0), i32 5) #29, !dbg !3385
  %49 = load i8*, i8** %4, align 8, !dbg !3385, !tbaa !678
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3385
  %51 = load i8*, i8** %50, align 8, !dbg !3385, !tbaa !678
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3385
  %53 = load i8*, i8** %52, align 8, !dbg !3385, !tbaa !678
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3385
  %55 = load i8*, i8** %54, align 8, !dbg !3385, !tbaa !678
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3385
  %57 = load i8*, i8** %56, align 8, !dbg !3385, !tbaa !678
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #29, !dbg !3385
  br label %147, !dbg !3386

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.102, i64 0, i64 0), i32 5) #29, !dbg !3387
  %61 = load i8*, i8** %4, align 8, !dbg !3387, !tbaa !678
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3387
  %63 = load i8*, i8** %62, align 8, !dbg !3387, !tbaa !678
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3387
  %65 = load i8*, i8** %64, align 8, !dbg !3387, !tbaa !678
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3387
  %67 = load i8*, i8** %66, align 8, !dbg !3387, !tbaa !678
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3387
  %69 = load i8*, i8** %68, align 8, !dbg !3387, !tbaa !678
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3387
  %71 = load i8*, i8** %70, align 8, !dbg !3387, !tbaa !678
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #29, !dbg !3387
  br label %147, !dbg !3388

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.103, i64 0, i64 0), i32 5) #29, !dbg !3389
  %75 = load i8*, i8** %4, align 8, !dbg !3389, !tbaa !678
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3389
  %77 = load i8*, i8** %76, align 8, !dbg !3389, !tbaa !678
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3389
  %79 = load i8*, i8** %78, align 8, !dbg !3389, !tbaa !678
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3389
  %81 = load i8*, i8** %80, align 8, !dbg !3389, !tbaa !678
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3389
  %83 = load i8*, i8** %82, align 8, !dbg !3389, !tbaa !678
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3389
  %85 = load i8*, i8** %84, align 8, !dbg !3389, !tbaa !678
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3389
  %87 = load i8*, i8** %86, align 8, !dbg !3389, !tbaa !678
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #29, !dbg !3389
  br label %147, !dbg !3390

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.104, i64 0, i64 0), i32 5) #29, !dbg !3391
  %91 = load i8*, i8** %4, align 8, !dbg !3391, !tbaa !678
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3391
  %93 = load i8*, i8** %92, align 8, !dbg !3391, !tbaa !678
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3391
  %95 = load i8*, i8** %94, align 8, !dbg !3391, !tbaa !678
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3391
  %97 = load i8*, i8** %96, align 8, !dbg !3391, !tbaa !678
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3391
  %99 = load i8*, i8** %98, align 8, !dbg !3391, !tbaa !678
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3391
  %101 = load i8*, i8** %100, align 8, !dbg !3391, !tbaa !678
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3391
  %103 = load i8*, i8** %102, align 8, !dbg !3391, !tbaa !678
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3391
  %105 = load i8*, i8** %104, align 8, !dbg !3391, !tbaa !678
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #29, !dbg !3391
  br label %147, !dbg !3392

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.105, i64 0, i64 0), i32 5) #29, !dbg !3393
  %109 = load i8*, i8** %4, align 8, !dbg !3393, !tbaa !678
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3393
  %111 = load i8*, i8** %110, align 8, !dbg !3393, !tbaa !678
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3393
  %113 = load i8*, i8** %112, align 8, !dbg !3393, !tbaa !678
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3393
  %115 = load i8*, i8** %114, align 8, !dbg !3393, !tbaa !678
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3393
  %117 = load i8*, i8** %116, align 8, !dbg !3393, !tbaa !678
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3393
  %119 = load i8*, i8** %118, align 8, !dbg !3393, !tbaa !678
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3393
  %121 = load i8*, i8** %120, align 8, !dbg !3393, !tbaa !678
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3393
  %123 = load i8*, i8** %122, align 8, !dbg !3393, !tbaa !678
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3393
  %125 = load i8*, i8** %124, align 8, !dbg !3393, !tbaa !678
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #29, !dbg !3393
  br label %147, !dbg !3394

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.106, i64 0, i64 0), i32 5) #29, !dbg !3395
  %129 = load i8*, i8** %4, align 8, !dbg !3395, !tbaa !678
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3395
  %131 = load i8*, i8** %130, align 8, !dbg !3395, !tbaa !678
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3395
  %133 = load i8*, i8** %132, align 8, !dbg !3395, !tbaa !678
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3395
  %135 = load i8*, i8** %134, align 8, !dbg !3395, !tbaa !678
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3395
  %137 = load i8*, i8** %136, align 8, !dbg !3395, !tbaa !678
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3395
  %139 = load i8*, i8** %138, align 8, !dbg !3395, !tbaa !678
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3395
  %141 = load i8*, i8** %140, align 8, !dbg !3395, !tbaa !678
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3395
  %143 = load i8*, i8** %142, align 8, !dbg !3395, !tbaa !678
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3395
  %145 = load i8*, i8** %144, align 8, !dbg !3395, !tbaa !678
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #29, !dbg !3395
  br label %147, !dbg !3396

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3398 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3402, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* %1, metadata !3403, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* %2, metadata !3404, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* %3, metadata !3405, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8** %4, metadata !3406, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 0, metadata !3407, metadata !DIExpression()), !dbg !3408
  br label %6, !dbg !3409

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3411
  call void @llvm.dbg.value(metadata i64 %7, metadata !3407, metadata !DIExpression()), !dbg !3408
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3412
  %9 = load i8*, i8** %8, align 8, !dbg !3412, !tbaa !678
  %10 = icmp eq i8* %9, null, !dbg !3414
  %11 = add i64 %7, 1, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %11, metadata !3407, metadata !DIExpression()), !dbg !3408
  br i1 %10, label %12, label %6, !dbg !3414, !llvm.loop !3416

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3418
  ret void, !dbg !3419
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3420 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3431, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8* %1, metadata !3432, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8* %2, metadata !3433, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8* %3, metadata !3434, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3435, metadata !DIExpression()), !dbg !3439
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3440
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3440
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3437, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 0, metadata !3436, metadata !DIExpression()), !dbg !3439
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3436, metadata !DIExpression()), !dbg !3439
  %11 = load i32, i32* %8, align 8, !dbg !3442
  %12 = icmp ult i32 %11, 41, !dbg !3442
  br i1 %12, label %13, label %18, !dbg !3442

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3442
  %15 = zext i32 %11 to i64, !dbg !3442
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3442
  %17 = add nuw nsw i32 %11, 8, !dbg !3442
  store i32 %17, i32* %8, align 8, !dbg !3442
  br label %21, !dbg !3442

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3442
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3442
  store i8* %20, i8** %9, align 8, !dbg !3442
  br label %21, !dbg !3442

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3442
  %25 = load i8*, i8** %24, align 8, !dbg !3442
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3445
  store i8* %25, i8** %26, align 16, !dbg !3446, !tbaa !678
  %27 = icmp eq i8* %25, null, !dbg !3447
  br i1 %27, label %30, label %28, !dbg !3448

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 1, metadata !3436, metadata !DIExpression()), !dbg !3439
  %29 = icmp ult i32 %22, 41, !dbg !3442
  br i1 %29, label %35, label %32, !dbg !3442

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3449
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3450
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3451
  ret void, !dbg !3451

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3442
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3442
  store i8* %34, i8** %9, align 8, !dbg !3442
  br label %40, !dbg !3442

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3442
  %37 = zext i32 %22 to i64, !dbg !3442
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3442
  %39 = add nuw nsw i32 %22, 8, !dbg !3442
  store i32 %39, i32* %8, align 8, !dbg !3442
  br label %40, !dbg !3442

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3442
  %44 = load i8*, i8** %43, align 8, !dbg !3442
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3445
  store i8* %44, i8** %45, align 8, !dbg !3446, !tbaa !678
  %46 = icmp eq i8* %44, null, !dbg !3447
  br i1 %46, label %30, label %47, !dbg !3448

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 2, metadata !3436, metadata !DIExpression()), !dbg !3439
  %48 = icmp ult i32 %41, 41, !dbg !3442
  br i1 %48, label %52, label %49, !dbg !3442

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3442
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3442
  store i8* %51, i8** %9, align 8, !dbg !3442
  br label %57, !dbg !3442

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3442
  %54 = zext i32 %41 to i64, !dbg !3442
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3442
  %56 = add nuw nsw i32 %41, 8, !dbg !3442
  store i32 %56, i32* %8, align 8, !dbg !3442
  br label %57, !dbg !3442

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3442
  %61 = load i8*, i8** %60, align 8, !dbg !3442
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3445
  store i8* %61, i8** %62, align 16, !dbg !3446, !tbaa !678
  %63 = icmp eq i8* %61, null, !dbg !3447
  br i1 %63, label %30, label %64, !dbg !3448

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 3, metadata !3436, metadata !DIExpression()), !dbg !3439
  %65 = icmp ult i32 %58, 41, !dbg !3442
  br i1 %65, label %69, label %66, !dbg !3442

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3442
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3442
  store i8* %68, i8** %9, align 8, !dbg !3442
  br label %74, !dbg !3442

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3442
  %71 = zext i32 %58 to i64, !dbg !3442
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3442
  %73 = add nuw nsw i32 %58, 8, !dbg !3442
  store i32 %73, i32* %8, align 8, !dbg !3442
  br label %74, !dbg !3442

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3442
  %78 = load i8*, i8** %77, align 8, !dbg !3442
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3445
  store i8* %78, i8** %79, align 8, !dbg !3446, !tbaa !678
  %80 = icmp eq i8* %78, null, !dbg !3447
  br i1 %80, label %30, label %81, !dbg !3448

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 4, metadata !3436, metadata !DIExpression()), !dbg !3439
  %82 = icmp ult i32 %75, 41, !dbg !3442
  br i1 %82, label %86, label %83, !dbg !3442

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3442
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3442
  store i8* %85, i8** %9, align 8, !dbg !3442
  br label %91, !dbg !3442

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3442
  %88 = zext i32 %75 to i64, !dbg !3442
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3442
  %90 = add nuw nsw i32 %75, 8, !dbg !3442
  store i32 %90, i32* %8, align 8, !dbg !3442
  br label %91, !dbg !3442

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3442
  %95 = load i8*, i8** %94, align 8, !dbg !3442
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3445
  store i8* %95, i8** %96, align 16, !dbg !3446, !tbaa !678
  %97 = icmp eq i8* %95, null, !dbg !3447
  br i1 %97, label %30, label %98, !dbg !3448

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 5, metadata !3436, metadata !DIExpression()), !dbg !3439
  %99 = icmp ult i32 %92, 41, !dbg !3442
  br i1 %99, label %103, label %100, !dbg !3442

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3442
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3442
  store i8* %102, i8** %9, align 8, !dbg !3442
  br label %108, !dbg !3442

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3442
  %105 = zext i32 %92 to i64, !dbg !3442
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3442
  %107 = add nuw nsw i32 %92, 8, !dbg !3442
  store i32 %107, i32* %8, align 8, !dbg !3442
  br label %108, !dbg !3442

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3442
  %111 = load i8*, i8** %110, align 8, !dbg !3442
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3445
  store i8* %111, i8** %112, align 8, !dbg !3446, !tbaa !678
  %113 = icmp eq i8* %111, null, !dbg !3447
  br i1 %113, label %30, label %114, !dbg !3448

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3436, metadata !DIExpression()), !dbg !3439
  %115 = load i8*, i8** %9, align 8, !dbg !3442
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3442
  store i8* %116, i8** %9, align 8, !dbg !3442
  %117 = bitcast i8* %115 to i8**, !dbg !3442
  %118 = load i8*, i8** %117, align 8, !dbg !3442
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3445
  store i8* %118, i8** %119, align 16, !dbg !3446, !tbaa !678
  %120 = icmp eq i8* %118, null, !dbg !3447
  br i1 %120, label %30, label %121, !dbg !3448

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3436, metadata !DIExpression()), !dbg !3439
  %122 = load i8*, i8** %9, align 8, !dbg !3442
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3442
  store i8* %123, i8** %9, align 8, !dbg !3442
  %124 = bitcast i8* %122 to i8**, !dbg !3442
  %125 = load i8*, i8** %124, align 8, !dbg !3442
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3445
  store i8* %125, i8** %126, align 8, !dbg !3446, !tbaa !678
  %127 = icmp eq i8* %125, null, !dbg !3447
  br i1 %127, label %30, label %128, !dbg !3448

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3436, metadata !DIExpression()), !dbg !3439
  %129 = load i8*, i8** %9, align 8, !dbg !3442
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3442
  store i8* %130, i8** %9, align 8, !dbg !3442
  %131 = bitcast i8* %129 to i8**, !dbg !3442
  %132 = load i8*, i8** %131, align 8, !dbg !3442
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3445
  store i8* %132, i8** %133, align 16, !dbg !3446, !tbaa !678
  %134 = icmp eq i8* %132, null, !dbg !3447
  br i1 %134, label %30, label %135, !dbg !3448

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3436, metadata !DIExpression()), !dbg !3439
  %136 = load i8*, i8** %9, align 8, !dbg !3442
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3442
  store i8* %137, i8** %9, align 8, !dbg !3442
  %138 = bitcast i8* %136 to i8**, !dbg !3442
  %139 = load i8*, i8** %138, align 8, !dbg !3442
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3445
  store i8* %139, i8** %140, align 8, !dbg !3446, !tbaa !678
  %141 = icmp eq i8* %139, null, !dbg !3447
  %142 = select i1 %141, i64 9, i64 10, !dbg !3448
  br label %30, !dbg !3448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3452 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3456, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %1, metadata !3457, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %2, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %3, metadata !3459, metadata !DIExpression()), !dbg !3466
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3467
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3467
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3460, metadata !DIExpression()), !dbg !3468
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3469
  call void @llvm.va_start(i8* nonnull %6), !dbg !3469
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3470
  call void @llvm.va_end(i8* nonnull %6), !dbg !3471
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3472
  ret void, !dbg !3472
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #24

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3473 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3474, !tbaa !678
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.94, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3474
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.109, i64 0, i64 0), i32 5) #29, !dbg !3475
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.110, i64 0, i64 0)) #29, !dbg !3475
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.111, i64 0, i64 0), i32 5) #29, !dbg !3476
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.112, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.113, i64 0, i64 0)) #29, !dbg !3476
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.114, i64 0, i64 0), i32 5) #29, !dbg !3477
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.115, i64 0, i64 0)) #29, !dbg !3477
  ret void, !dbg !3478
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3479 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3483, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %1, metadata !3484, metadata !DIExpression()), !dbg !3485
  %3 = udiv i64 9223372036854775807, %1, !dbg !3486
  %4 = icmp ult i64 %3, %0, !dbg !3486
  br i1 %4, label %5, label %6, !dbg !3488

5:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !3489
  unreachable, !dbg !3489

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3490
  call void @llvm.dbg.value(metadata i64 %7, metadata !3491, metadata !DIExpression()) #29, !dbg !3497
  %8 = tail call noalias i8* @malloc(i64 %7) #29, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %8, metadata !3496, metadata !DIExpression()) #29, !dbg !3497
  %9 = icmp eq i8* %8, null, !dbg !3500
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3502
  br i1 %11, label %12, label %13, !dbg !3502

12:                                               ; preds = %6
  tail call void @xalloc_die() #31, !dbg !3503
  unreachable, !dbg !3503

13:                                               ; preds = %6
  ret i8* %8, !dbg !3504
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3492 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3491, metadata !DIExpression()), !dbg !3505
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %2, metadata !3496, metadata !DIExpression()), !dbg !3505
  %3 = icmp eq i8* %2, null, !dbg !3507
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3508
  br i1 %5, label %6, label %7, !dbg !3508

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3509
  unreachable, !dbg !3509

7:                                                ; preds = %1
  ret i8* %2, !dbg !3510
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !3511 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3515, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3516, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %2, metadata !3517, metadata !DIExpression()), !dbg !3518
  %4 = udiv i64 9223372036854775807, %2, !dbg !3519
  %5 = icmp ult i64 %4, %1, !dbg !3519
  br i1 %5, label %6, label %7, !dbg !3521

6:                                                ; preds = %3
  tail call void @xalloc_die() #31, !dbg !3522
  unreachable, !dbg !3522

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #29, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %8, metadata !3529, metadata !DIExpression()) #29, !dbg !3530
  %9 = icmp eq i64 %8, 0, !dbg !3532
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3534
  br i1 %11, label %12, label %13, !dbg !3534

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #29, !dbg !3535
  br label %19, !dbg !3537

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #29, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %14, metadata !3524, metadata !DIExpression()) #29, !dbg !3530
  %15 = icmp eq i8* %14, null, !dbg !3539
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3541
  br i1 %17, label %18, label %19, !dbg !3541

18:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3542
  unreachable, !dbg !3542

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3530
  ret i8* %20, !dbg !3543
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3525 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3529, metadata !DIExpression()), !dbg !3544
  %3 = icmp eq i64 %1, 0, !dbg !3545
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3546
  br i1 %5, label %6, label %7, !dbg !3546

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #29, !dbg !3547
  br label %13, !dbg !3548

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #29, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %8, metadata !3524, metadata !DIExpression()), !dbg !3544
  %9 = icmp eq i8* %8, null, !dbg !3550
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3551
  br i1 %11, label %12, label %13, !dbg !3551

12:                                               ; preds = %7
  tail call void @xalloc_die() #31, !dbg !3552
  unreachable, !dbg !3552

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3544
  ret i8* %14, !dbg !3553
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !237 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !242, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i64* %1, metadata !243, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i64 %2, metadata !244, metadata !DIExpression()), !dbg !3554
  %4 = load i64, i64* %1, align 8, !dbg !3555, !tbaa !1723
  call void @llvm.dbg.value(metadata i64 %4, metadata !245, metadata !DIExpression()), !dbg !3554
  %5 = icmp eq i8* %0, null, !dbg !3556
  br i1 %5, label %6, label %20, !dbg !3558

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3559
  br i1 %7, label %8, label %13, !dbg !3562

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %9, metadata !245, metadata !DIExpression()), !dbg !3554
  %10 = icmp ugt i64 %2, 128, !dbg !3565
  %11 = zext i1 %10 to i64, !dbg !3565
  %12 = add nuw nsw i64 %9, %11, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %12, metadata !245, metadata !DIExpression()), !dbg !3554
  br label %13, !dbg !3567

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3554
  call void @llvm.dbg.value(metadata i64 %14, metadata !245, metadata !DIExpression()), !dbg !3554
  %15 = udiv i64 9223372036854775807, %2, !dbg !3568
  %16 = icmp ult i64 %15, %14, !dbg !3568
  br i1 %16, label %19, label %17, !dbg !3570

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !245, metadata !DIExpression()), !dbg !3554
  store i64 %14, i64* %1, align 8, !dbg !3571, !tbaa !1723
  %18 = mul i64 %14, %2, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #29, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %28, metadata !3529, metadata !DIExpression()) #29, !dbg !3573
  br label %31, !dbg !3575

19:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3576
  unreachable, !dbg !3576

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3577
  %22 = icmp ugt i64 %21, %4, !dbg !3580
  br i1 %22, label %24, label %23, !dbg !3581

23:                                               ; preds = %20
  tail call void @xalloc_die() #31, !dbg !3582
  unreachable, !dbg !3582

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3583
  %26 = add nuw i64 %4, 1, !dbg !3584
  %27 = add i64 %26, %25, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %27, metadata !245, metadata !DIExpression()), !dbg !3554
  store i64 %27, i64* %1, align 8, !dbg !3571, !tbaa !1723
  %28 = mul i64 %27, %2, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #29, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %28, metadata !3529, metadata !DIExpression()) #29, !dbg !3573
  %29 = icmp eq i64 %28, 0, !dbg !3586
  br i1 %29, label %30, label %31, !dbg !3575

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #29, !dbg !3587
  br label %38, !dbg !3588

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #29, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %33, metadata !3524, metadata !DIExpression()) #29, !dbg !3573
  %34 = icmp eq i8* %33, null, !dbg !3590
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3591
  br i1 %36, label %37, label %38, !dbg !3591

37:                                               ; preds = %31
  tail call void @xalloc_die() #31, !dbg !3592
  unreachable, !dbg !3592

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3573
  ret i8* %39, !dbg !3593
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !3594 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %0, metadata !3491, metadata !DIExpression()) #29, !dbg !3598
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %2, metadata !3496, metadata !DIExpression()) #29, !dbg !3598
  %3 = icmp eq i8* %2, null, !dbg !3601
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3602
  br i1 %5, label %6, label %7, !dbg !3602

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3603
  unreachable, !dbg !3603

7:                                                ; preds = %1
  ret i8* %2, !dbg !3604
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3605 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64* %1, metadata !3610, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %0, metadata !242, metadata !DIExpression()) #29, !dbg !3612
  call void @llvm.dbg.value(metadata i64* %1, metadata !243, metadata !DIExpression()) #29, !dbg !3612
  call void @llvm.dbg.value(metadata i64 1, metadata !244, metadata !DIExpression()) #29, !dbg !3612
  %3 = load i64, i64* %1, align 8, !dbg !3614, !tbaa !1723
  call void @llvm.dbg.value(metadata i64 %3, metadata !245, metadata !DIExpression()) #29, !dbg !3612
  %4 = icmp eq i8* %0, null, !dbg !3615
  br i1 %4, label %5, label %10, !dbg !3616

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3617
  br i1 %6, label %17, label %7, !dbg !3618

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !245, metadata !DIExpression()) #29, !dbg !3612
  %8 = icmp slt i64 %3, 0, !dbg !3619
  br i1 %8, label %9, label %17, !dbg !3620

9:                                                ; preds = %7
  tail call void @xalloc_die() #31, !dbg !3621
  unreachable, !dbg !3621

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3622
  br i1 %11, label %13, label %12, !dbg !3623

12:                                               ; preds = %10
  tail call void @xalloc_die() #31, !dbg !3624
  unreachable, !dbg !3624

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3625
  %15 = add nuw nsw i64 %3, 1, !dbg !3626
  %16 = add nuw nsw i64 %15, %14, !dbg !3627
  call void @llvm.dbg.value(metadata i64 %16, metadata !245, metadata !DIExpression()) #29, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #29, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %16, metadata !3529, metadata !DIExpression()) #29, !dbg !3628
  br label %17, !dbg !3630

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3631
  store i64 %18, i64* %1, align 8, !dbg !3631, !tbaa !1723
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #29, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %19, metadata !3524, metadata !DIExpression()) #29, !dbg !3628
  %20 = icmp eq i8* %19, null, !dbg !3633
  br i1 %20, label %21, label %22, !dbg !3634

21:                                               ; preds = %17
  tail call void @xalloc_die() #31, !dbg !3635
  unreachable, !dbg !3635

22:                                               ; preds = %17
  ret i8* %19, !dbg !3636
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3637 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3639, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %0, metadata !3641, metadata !DIExpression()) #29, !dbg !3646
  call void @llvm.dbg.value(metadata i64 1, metadata !3644, metadata !DIExpression()) #29, !dbg !3646
  %2 = icmp slt i64 %0, 0, !dbg !3648
  br i1 %2, label %6, label %3, !dbg !3650

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #29, !dbg !3651
  call void @llvm.dbg.value(metadata i8* %4, metadata !3645, metadata !DIExpression()) #29, !dbg !3646
  %5 = icmp eq i8* %4, null, !dbg !3652
  br i1 %5, label %6, label %7, !dbg !3653

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #31, !dbg !3654
  unreachable, !dbg !3654

7:                                                ; preds = %3
  ret i8* %4, !dbg !3655
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3642 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3641, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()), !dbg !3656
  %3 = udiv i64 9223372036854775807, %1, !dbg !3657
  %4 = icmp ult i64 %3, %0, !dbg !3657
  br i1 %4, label %8, label %5, !dbg !3658

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #29, !dbg !3659
  call void @llvm.dbg.value(metadata i8* %6, metadata !3645, metadata !DIExpression()), !dbg !3656
  %7 = icmp eq i8* %6, null, !dbg !3660
  br i1 %7, label %8, label %9, !dbg !3661

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #31, !dbg !3662
  unreachable, !dbg !3662

9:                                                ; preds = %5
  ret i8* %6, !dbg !3663
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3664 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3668, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %1, metadata !3669, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %1, metadata !3491, metadata !DIExpression()) #29, !dbg !3671
  %3 = tail call noalias i8* @malloc(i64 %1) #29, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %3, metadata !3496, metadata !DIExpression()) #29, !dbg !3671
  %4 = icmp eq i8* %3, null, !dbg !3674
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3675
  br i1 %6, label %7, label %8, !dbg !3675

7:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !3676
  unreachable, !dbg !3676

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3677, metadata !DIExpression()) #29, !dbg !3682
  call void @llvm.dbg.value(metadata i8* %0, metadata !3680, metadata !DIExpression()) #29, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()) #29, !dbg !3682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #29, !dbg !3684
  ret i8* %3, !dbg !3685
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3686 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3688, metadata !DIExpression()), !dbg !3689
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !3690
  %3 = add i64 %2, 1, !dbg !3691
  call void @llvm.dbg.value(metadata i8* %0, metadata !3668, metadata !DIExpression()) #29, !dbg !3692
  call void @llvm.dbg.value(metadata i64 %3, metadata !3669, metadata !DIExpression()) #29, !dbg !3692
  call void @llvm.dbg.value(metadata i64 %3, metadata !3491, metadata !DIExpression()) #29, !dbg !3694
  %4 = tail call noalias i8* @malloc(i64 %3) #29, !dbg !3696
  call void @llvm.dbg.value(metadata i8* %4, metadata !3496, metadata !DIExpression()) #29, !dbg !3694
  %5 = icmp eq i8* %4, null, !dbg !3697
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3698
  br i1 %7, label %8, label %9, !dbg !3698

8:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3699
  unreachable, !dbg !3699

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3677, metadata !DIExpression()) #29, !dbg !3700
  call void @llvm.dbg.value(metadata i8* %0, metadata !3680, metadata !DIExpression()) #29, !dbg !3700
  call void @llvm.dbg.value(metadata i64 %3, metadata !3681, metadata !DIExpression()) #29, !dbg !3700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #29, !dbg !3702
  ret i8* %4, !dbg !3703
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3704 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3705, !tbaa !843
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.126, i64 0, i64 0), i32 5) #29, !dbg !3706
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i64 0, i64 0), i8* %2) #29, !dbg !3707
  tail call void @abort() #31, !dbg !3708
  unreachable, !dbg !3708
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3709 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3714, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8** %1, metadata !3715, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 %2, metadata !3716, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64* %3, metadata !3717, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %4, metadata !3718, metadata !DIExpression()), !dbg !3732
  %7 = bitcast i8** %6 to i8*, !dbg !3733
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #29, !dbg !3733
  call void @llvm.dbg.value(metadata i32 0, metadata !3722, metadata !DIExpression()), !dbg !3732
  %8 = icmp ult i32 %2, 37, !dbg !3734
  br i1 %8, label %10, label %9, !dbg !3734

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.130, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.131, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #31, !dbg !3734
  unreachable, !dbg !3734

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3737
  call void @llvm.dbg.value(metadata i8** %25, metadata !3720, metadata !DIExpression()), !dbg !3732
  %12 = tail call i32* @__errno_location() #33, !dbg !3738
  store i32 0, i32* %12, align 4, !dbg !3739, !tbaa !843
  call void @llvm.dbg.value(metadata i8* %0, metadata !3723, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8 undef, metadata !3726, metadata !DIExpression()), !dbg !3740
  %13 = tail call i16** @__ctype_b_loc() #33, !dbg !3732
  %14 = load i16*, i16** %13, align 8, !tbaa !678
  br label %15, !dbg !3741

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3740
  %17 = load i8, i8* %16, align 1, !dbg !3740, !tbaa !931
  call void @llvm.dbg.value(metadata i8 %17, metadata !3726, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8* %16, metadata !3723, metadata !DIExpression()), !dbg !3740
  %18 = zext i8 %17 to i64, !dbg !3742
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3742
  %20 = load i16, i16* %19, align 2, !dbg !3742, !tbaa !2223
  %21 = and i16 %20, 8192, !dbg !3742
  %22 = icmp eq i16 %21, 0, !dbg !3741
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3743
  call void @llvm.dbg.value(metadata i8* %23, metadata !3723, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8 undef, metadata !3726, metadata !DIExpression()), !dbg !3740
  br i1 %22, label %24, label %15, !dbg !3741, !llvm.loop !3744

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3737
  %26 = icmp eq i8 %17, 45, !dbg !3746
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #29, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %28, metadata !3721, metadata !DIExpression()), !dbg !3732
  %29 = load i8*, i8** %25, align 8, !dbg !3749, !tbaa !678
  %30 = icmp eq i8* %29, %0, !dbg !3751
  br i1 %30, label %31, label %40, !dbg !3752

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3753
  br i1 %32, label %285, label %33, !dbg !3756

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3757, !tbaa !931
  %35 = icmp eq i8 %34, 0, !dbg !3757
  br i1 %35, label %285, label %36, !dbg !3758

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3757
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #30, !dbg !3759
  %39 = icmp eq i8* %38, null, !dbg !3759
  br i1 %39, label %285, label %47, !dbg !3760

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3761, !tbaa !843
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3763

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3722, metadata !DIExpression()), !dbg !3732
  br label %43, !dbg !3764

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3732
  call void @llvm.dbg.value(metadata i32 %44, metadata !3722, metadata !DIExpression()), !dbg !3732
  %45 = icmp eq i8* %4, null, !dbg !3766
  br i1 %45, label %46, label %47, !dbg !3768

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3721, metadata !DIExpression()), !dbg !3732
  store i64 %28, i64* %3, align 8, !dbg !3769, !tbaa !1723
  br label %285, !dbg !3771

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3772, !tbaa !931
  %51 = sext i8 %50 to i32, !dbg !3772
  %52 = icmp eq i8 %50, 0, !dbg !3773
  br i1 %52, label %282, label %53, !dbg !3774

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3727, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 1, metadata !3730, metadata !DIExpression()), !dbg !3775
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #30, !dbg !3776
  %55 = icmp eq i8* %54, null, !dbg !3776
  br i1 %55, label %56, label %58, !dbg !3778

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3721, metadata !DIExpression()), !dbg !3732
  store i64 %49, i64* %3, align 8, !dbg !3779, !tbaa !1723
  %57 = or i32 %48, 2, !dbg !3781
  br label %285, !dbg !3782

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
  ], !dbg !3783

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #30, !dbg !3784
  %61 = icmp eq i8* %60, null, !dbg !3784
  br i1 %61, label %72, label %62, !dbg !3787

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3788
  %64 = load i8, i8* %63, align 1, !dbg !3788, !tbaa !931
  %65 = sext i8 %64 to i32, !dbg !3788
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3789

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3790
  %68 = load i8, i8* %67, align 1, !dbg !3790, !tbaa !931
  %69 = icmp eq i8 %68, 66, !dbg !3793
  %70 = select i1 %69, i64 3, i64 1, !dbg !3794
  br label %72, !dbg !3794

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3727, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 2, metadata !3730, metadata !DIExpression()), !dbg !3775
  br label %72, !dbg !3795

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3730, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 undef, metadata !3727, metadata !DIExpression()), !dbg !3775
  switch i32 %51, label %265 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %267
    i32 75, label %267
    i32 77, label %230
    i32 109, label %230
    i32 80, label %150
    i32 84, label %240
    i32 116, label %240
    i32 119, label %260
    i32 89, label %110
    i32 90, label %75
  ], !dbg !3796

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 7, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3814
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #29, !dbg !3816
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3816
  %78 = mul i64 %49, %73, !dbg !3818
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3818
  call void @llvm.dbg.value(metadata i1 %77, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %77, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3814
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #29, !dbg !3816
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3816
  %82 = mul i64 %79, %73, !dbg !3818
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3818
  %84 = or i1 %77, %81, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %84, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %84, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3814
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #29, !dbg !3816
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3816
  %87 = mul i64 %83, %73, !dbg !3818
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3818
  %89 = or i1 %84, %86, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %89, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %89, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3814
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #29, !dbg !3816
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3816
  %92 = mul i64 %88, %73, !dbg !3818
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3818
  %94 = or i1 %89, %91, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %94, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %94, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3814
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #29, !dbg !3816
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3816
  %97 = mul i64 %93, %73, !dbg !3818
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3818
  %99 = or i1 %94, %96, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %99, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %99, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3814
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #29, !dbg !3816
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3816
  %102 = mul i64 %98, %73, !dbg !3818
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3818
  %104 = or i1 %99, %101, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %104, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %104, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3814
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #29, !dbg !3816
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3816
  %107 = mul i64 %103, %73, !dbg !3818
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3818
  %109 = or i1 %104, %106, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %109, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3805
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3805
  br label %272, !dbg !3820

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 8, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 7, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3823
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #29, !dbg !3825
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3825
  %113 = mul i64 %49, %73, !dbg !3826
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3826
  call void @llvm.dbg.value(metadata i1 %112, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 7, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %112, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 7, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3823
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #29, !dbg !3825
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3825
  %117 = mul i64 %114, %73, !dbg !3826
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3826
  %119 = or i1 %112, %116, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %119, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %119, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3823
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #29, !dbg !3825
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3825
  %122 = mul i64 %118, %73, !dbg !3826
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3826
  %124 = or i1 %119, %121, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %124, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %124, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3823
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #29, !dbg !3825
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3825
  %127 = mul i64 %123, %73, !dbg !3826
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3826
  %129 = or i1 %124, %126, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %129, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %129, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3823
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #29, !dbg !3825
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3825
  %132 = mul i64 %128, %73, !dbg !3826
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3826
  %134 = or i1 %129, %131, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %134, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %134, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3823
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #29, !dbg !3825
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3825
  %137 = mul i64 %133, %73, !dbg !3826
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3826
  %139 = or i1 %134, %136, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %139, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %139, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3823
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #29, !dbg !3825
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3825
  %142 = mul i64 %138, %73, !dbg !3826
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3826
  %144 = or i1 %139, %141, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %144, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %144, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3823
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #29, !dbg !3825
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3825
  %147 = mul i64 %143, %73, !dbg !3826
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3826
  %149 = or i1 %144, %146, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %149, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3821
  br label %272, !dbg !3820

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3830
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #29, !dbg !3832
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3832
  %153 = mul i64 %49, %73, !dbg !3833
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3833
  call void @llvm.dbg.value(metadata i1 %152, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i1 %152, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3830
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #29, !dbg !3832
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3832
  %157 = mul i64 %154, %73, !dbg !3833
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3833
  %159 = or i1 %152, %156, !dbg !3834
  call void @llvm.dbg.value(metadata i1 %159, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i1 %159, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3830
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #29, !dbg !3832
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3832
  %162 = mul i64 %158, %73, !dbg !3833
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3833
  %164 = or i1 %159, %161, !dbg !3834
  call void @llvm.dbg.value(metadata i1 %164, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i1 %164, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3830
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #29, !dbg !3832
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3832
  %167 = mul i64 %163, %73, !dbg !3833
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3833
  %169 = or i1 %164, %166, !dbg !3834
  call void @llvm.dbg.value(metadata i1 %169, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i1 %169, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3830
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #29, !dbg !3832
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3832
  %172 = mul i64 %168, %73, !dbg !3833
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3833
  %174 = or i1 %169, %171, !dbg !3834
  call void @llvm.dbg.value(metadata i1 %174, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3828
  br label %272, !dbg !3820

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3837
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #29, !dbg !3839
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3839
  %178 = mul i64 %49, %73, !dbg !3840
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3840
  call void @llvm.dbg.value(metadata i1 %177, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %177, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3837
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #29, !dbg !3839
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3839
  %182 = mul i64 %179, %73, !dbg !3840
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3840
  %184 = or i1 %177, %181, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %184, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %184, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3837
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #29, !dbg !3839
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3839
  %187 = mul i64 %183, %73, !dbg !3840
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3840
  %189 = or i1 %184, %186, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %189, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %189, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3837
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #29, !dbg !3839
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3839
  %192 = mul i64 %188, %73, !dbg !3840
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3840
  %194 = or i1 %189, %191, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %194, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %194, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3837
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #29, !dbg !3839
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3839
  %197 = mul i64 %193, %73, !dbg !3840
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3840
  %199 = or i1 %194, %196, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %199, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %199, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3837
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #29, !dbg !3839
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3839
  %202 = mul i64 %198, %73, !dbg !3840
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3840
  %204 = or i1 %199, %201, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %204, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3835
  br label %272, !dbg !3820

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3842
  call void @llvm.dbg.value(metadata i32 512, metadata !3813, metadata !DIExpression()) #29, !dbg !3842
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #29, !dbg !3844
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3844
  %208 = shl i64 %49, 9, !dbg !3845
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3845
  call void @llvm.dbg.value(metadata i1 %207, metadata !3731, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  br label %272, !dbg !3846

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3847
  call void @llvm.dbg.value(metadata i32 1024, metadata !3813, metadata !DIExpression()) #29, !dbg !3847
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #29, !dbg !3849
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3849
  %213 = shl i64 %49, 10, !dbg !3850
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3850
  call void @llvm.dbg.value(metadata i1 %212, metadata !3731, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  br label %272, !dbg !3851

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3802, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 undef, metadata !3803, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3854
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3854
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #29, !dbg !3856
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3856
  %218 = mul i64 %49, %73, !dbg !3857
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3857
  call void @llvm.dbg.value(metadata i1 %217, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i1 %217, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3854
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3854
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #29, !dbg !3856
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3856
  %222 = mul i64 %219, %73, !dbg !3857
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3857
  %224 = or i1 %217, %221, !dbg !3858
  call void @llvm.dbg.value(metadata i1 %224, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i1 %224, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3854
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3854
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #29, !dbg !3856
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3856
  %227 = mul i64 %223, %73, !dbg !3857
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3857
  %229 = or i1 %224, %226, !dbg !3858
  call void @llvm.dbg.value(metadata i1 %229, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3852
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3852
  br label %272, !dbg !3820

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3802, metadata !DIExpression()) #29, !dbg !3859
  call void @llvm.dbg.value(metadata i32 undef, metadata !3803, metadata !DIExpression()) #29, !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #29, !dbg !3859
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3859
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3861
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3861
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #29, !dbg !3863
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3863
  %233 = mul i64 %49, %73, !dbg !3864
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3864
  call void @llvm.dbg.value(metadata i1 %232, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #29, !dbg !3859
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #29, !dbg !3863
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3863
  %237 = mul i64 %234, %73, !dbg !3864
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3864
  %239 = or i1 %232, %236, !dbg !3865
  call void @llvm.dbg.value(metadata i1 %239, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3859
  br label %272, !dbg !3820

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3802, metadata !DIExpression()) #29, !dbg !3866
  call void @llvm.dbg.value(metadata i32 undef, metadata !3803, metadata !DIExpression()) #29, !dbg !3866
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #29, !dbg !3866
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #29, !dbg !3866
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3868
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3868
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #29, !dbg !3870
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3870
  %243 = mul i64 %49, %73, !dbg !3871
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3871
  call void @llvm.dbg.value(metadata i1 %242, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3866
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #29, !dbg !3866
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #29, !dbg !3870
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3870
  %247 = mul i64 %244, %73, !dbg !3871
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3871
  %249 = or i1 %242, %246, !dbg !3872
  call void @llvm.dbg.value(metadata i1 %249, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3866
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #29, !dbg !3866
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #29, !dbg !3870
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3870
  %252 = mul i64 %248, %73, !dbg !3871
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3871
  %254 = or i1 %249, %251, !dbg !3872
  call void @llvm.dbg.value(metadata i1 %254, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3866
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #29, !dbg !3866
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #29, !dbg !3870
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3870
  %257 = mul i64 %253, %73, !dbg !3871
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3871
  %259 = or i1 %254, %256, !dbg !3872
  call void @llvm.dbg.value(metadata i1 %259, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3866
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3866
  br label %272, !dbg !3820

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3873
  call void @llvm.dbg.value(metadata i32 2, metadata !3813, metadata !DIExpression()) #29, !dbg !3873
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #29, !dbg !3875
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3875
  %263 = shl i64 %49, 1, !dbg !3876
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3876
  call void @llvm.dbg.value(metadata i1 %262, metadata !3731, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  br label %272, !dbg !3877

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3721, metadata !DIExpression()), !dbg !3732
  store i64 %49, i64* %3, align 8, !dbg !3878, !tbaa !1723
  %266 = or i32 %48, 2, !dbg !3879
  br label %285, !dbg !3880

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3802, metadata !DIExpression()) #29, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3803, metadata !DIExpression()) #29, !dbg !3881
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #29, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3881
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #29, !dbg !3883
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #29, !dbg !3883
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #29, !dbg !3885
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3885
  call void @llvm.dbg.value(metadata i32 undef, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #29, !dbg !3881
  call void @llvm.dbg.value(metadata i1 %269, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !3881
  %270 = mul i64 %49, %73, !dbg !3886
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3886
  br label %272, !dbg !3820

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3732
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %275, metadata !3731, metadata !DIExpression()), !dbg !3775
  %276 = or i32 %48, %275, !dbg !3820
  call void @llvm.dbg.value(metadata i32 %276, metadata !3722, metadata !DIExpression()), !dbg !3732
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3888
  store i8* %277, i8** %25, align 8, !dbg !3888, !tbaa !678
  %278 = load i8, i8* %277, align 1, !dbg !3889, !tbaa !931
  %279 = icmp eq i8 %278, 0, !dbg !3889
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3891
  call void @llvm.dbg.value(metadata i32 %281, metadata !3722, metadata !DIExpression()), !dbg !3732
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3892
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3893
  call void @llvm.dbg.value(metadata i32 %284, metadata !3722, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %283, metadata !3721, metadata !DIExpression()), !dbg !3732
  store i64 %283, i64* %3, align 8, !dbg !3894, !tbaa !1723
  br label %285, !dbg !3895

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3732
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #29, !dbg !3896
  ret i32 %286, !dbg !3896
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3897 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !3901 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3903, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %1, metadata !3904, metadata !DIExpression()), !dbg !3909
  %3 = icmp eq i64 %0, 0, !dbg !3910
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3911
  br i1 %5, label %11, label %6, !dbg !3911

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3906, metadata !DIExpression()), !dbg !3912
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3913
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3913
  br i1 %8, label %9, label %11, !dbg !3915

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #33, !dbg !3916
  store i32 12, i32* %10, align 4, !dbg !3918, !tbaa !843
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3903, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %12, metadata !3904, metadata !DIExpression()), !dbg !3909
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #29, !dbg !3919
  call void @llvm.dbg.value(metadata i8* %14, metadata !3905, metadata !DIExpression()), !dbg !3909
  br label %15, !dbg !3920

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3909
  ret i8* %16, !dbg !3921
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3922 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3960, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 0, metadata !3961, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 0, metadata !3963, metadata !DIExpression()), !dbg !3964
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !3965
  call void @llvm.dbg.value(metadata i32 %2, metadata !3962, metadata !DIExpression()), !dbg !3964
  %3 = icmp slt i32 %2, 0, !dbg !3966
  br i1 %3, label %4, label %6, !dbg !3968

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3969
  br label %24, !dbg !3970

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !3971
  %8 = icmp eq i32 %7, 0, !dbg !3971
  br i1 %8, label %13, label %9, !dbg !3973

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !3974
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #29, !dbg !3975
  %12 = icmp eq i64 %11, -1, !dbg !3976
  br i1 %12, label %16, label %13, !dbg !3977

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #29, !dbg !3978
  %15 = icmp eq i32 %14, 0, !dbg !3978
  br i1 %15, label %16, label %18, !dbg !3979

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3961, metadata !DIExpression()), !dbg !3964
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3980
  call void @llvm.dbg.value(metadata i32 %21, metadata !3963, metadata !DIExpression()), !dbg !3964
  br label %24, !dbg !3981

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #33, !dbg !3982
  %20 = load i32, i32* %19, align 4, !dbg !3982, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %20, metadata !3961, metadata !DIExpression()), !dbg !3964
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3980
  call void @llvm.dbg.value(metadata i32 %21, metadata !3963, metadata !DIExpression()), !dbg !3964
  %22 = icmp eq i32 %20, 0, !dbg !3983
  br i1 %22, label %24, label %23, !dbg !3981

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3985, !tbaa !843
  call void @llvm.dbg.value(metadata i32 -1, metadata !3963, metadata !DIExpression()), !dbg !3964
  br label %24, !dbg !3987

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3964
  ret i32 %25, !dbg !3988
}

; Function Attrs: nofree nounwind
declare !dbg !3989 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3992 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3995 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4033, metadata !DIExpression()), !dbg !4034
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4035
  br i1 %2, label %6, label %3, !dbg !4037

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !4038
  %5 = icmp eq i32 %4, 0, !dbg !4038
  br i1 %5, label %6, label %8, !dbg !4039

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4040
  br label %17, !dbg !4041

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4042, metadata !DIExpression()) #29, !dbg !4047
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4049
  %10 = load i32, i32* %9, align 8, !dbg !4049, !tbaa !949
  %11 = and i32 %10, 256, !dbg !4051
  %12 = icmp eq i32 %11, 0, !dbg !4051
  br i1 %12, label %15, label %13, !dbg !4052

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #29, !dbg !4053
  br label %15, !dbg !4053

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4054
  br label %17, !dbg !4055

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4034
  ret i32 %18, !dbg !4056
}

; Function Attrs: nofree nounwind
declare !dbg !4057 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4060 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4098, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 %1, metadata !4099, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 %2, metadata !4100, metadata !DIExpression()), !dbg !4104
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4105
  %5 = load i8*, i8** %4, align 8, !dbg !4105, !tbaa !929
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4106
  %7 = load i8*, i8** %6, align 8, !dbg !4106, !tbaa !925
  %8 = icmp eq i8* %5, %7, !dbg !4107
  br i1 %8, label %9, label %28, !dbg !4108

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4109
  %11 = load i8*, i8** %10, align 8, !dbg !4109, !tbaa !982
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4110
  %13 = load i8*, i8** %12, align 8, !dbg !4110, !tbaa !4111
  %14 = icmp eq i8* %11, %13, !dbg !4112
  br i1 %14, label %15, label %28, !dbg !4113

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4114
  %17 = load i8*, i8** %16, align 8, !dbg !4114, !tbaa !4115
  %18 = icmp eq i8* %17, null, !dbg !4116
  br i1 %18, label %19, label %28, !dbg !4117

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !4118
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #29, !dbg !4119
  call void @llvm.dbg.value(metadata i64 %21, metadata !4101, metadata !DIExpression()), !dbg !4120
  %22 = icmp eq i64 %21, -1, !dbg !4121
  br i1 %22, label %30, label %23, !dbg !4123

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4124
  %25 = load i32, i32* %24, align 8, !dbg !4125, !tbaa !949
  %26 = and i32 %25, -17, !dbg !4125
  store i32 %26, i32* %24, align 8, !dbg !4125, !tbaa !949
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4126
  store i64 %21, i64* %27, align 8, !dbg !4127, !tbaa !4128
  br label %30, !dbg !4129

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4130
  br label %30, !dbg !4131

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4104
  ret i32 %31, !dbg !4132
}

; Function Attrs: nofree nounwind
declare !dbg !4133 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4136 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4152, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i8* %1, metadata !4153, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i64 %2, metadata !4154, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4155, metadata !DIExpression()), !dbg !4161
  %6 = bitcast i32* %5 to i8*, !dbg !4162
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #29, !dbg !4162
  %7 = icmp eq i32* %0, null, !dbg !4163
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4165
  call void @llvm.dbg.value(metadata i32* %8, metadata !4152, metadata !DIExpression()), !dbg !4161
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #29, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %9, metadata !4156, metadata !DIExpression()), !dbg !4161
  %10 = icmp ugt i64 %9, -3, !dbg !4167
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4168
  br i1 %12, label %13, label %18, !dbg !4168

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #29, !dbg !4169
  br i1 %14, label %18, label %15, !dbg !4170

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4171, !tbaa !931
  call void @llvm.dbg.value(metadata i8 %16, metadata !4158, metadata !DIExpression()), !dbg !4172
  %17 = zext i8 %16 to i32, !dbg !4173
  store i32 %17, i32* %8, align 4, !dbg !4174, !tbaa !843
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4161
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #29, !dbg !4175
  ret i64 %19, !dbg !4175
}

; Function Attrs: nounwind
declare !dbg !4176 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #8 !dbg !4180 {
  tail call void @usage(i32 1) #29, !dbg !4181
  ret void, !dbg !4182
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @argmatch(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* readonly %2, i64 %3) local_unnamed_addr #28 !dbg !4183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4188, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i8** %1, metadata !4189, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i8* %2, metadata !4190, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %3, metadata !4191, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 -1, metadata !4194, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i8 0, metadata !4195, metadata !DIExpression()), !dbg !4196
  %5 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !4197
  call void @llvm.dbg.value(metadata i64 %5, metadata !4193, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 0, metadata !4192, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i8 0, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 -1, metadata !4194, metadata !DIExpression()), !dbg !4196
  %6 = load i8*, i8** %1, align 8, !dbg !4198, !tbaa !678
  %7 = icmp eq i8* %6, null, !dbg !4201
  br i1 %7, label %38, label %8, !dbg !4201

8:                                                ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !4201

10:                                               ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %13, metadata !4194, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %14, metadata !4192, metadata !DIExpression()), !dbg !4196
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #30, !dbg !4202
  %16 = icmp eq i32 %15, 0, !dbg !4202
  br i1 %16, label %17, label %31, !dbg !4205

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #30, !dbg !4206
  %19 = icmp eq i64 %18, %5, !dbg !4209
  br i1 %19, label %44, label %20, !dbg !4210

20:                                               ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !4211
  br i1 %21, label %31, label %22, !dbg !4213

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !4214

23:                                               ; preds = %22
  %24 = mul i64 %13, %3, !dbg !4217
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !4218
  %26 = mul i64 %14, %3, !dbg !4219
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !4220
  %28 = tail call i32 @bcmp(i8* nonnull %25, i8* nonnull %27, i64 %3), !dbg !4221
  %29 = icmp eq i32 %28, 0, !dbg !4221
  br i1 %29, label %31, label %30, !dbg !4222

30:                                               ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !4195, metadata !DIExpression()), !dbg !4196
  br label %31, !dbg !4223

31:                                               ; preds = %20, %10, %30, %23
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ], !dbg !4196
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ], !dbg !4196
  call void @llvm.dbg.value(metadata i8 %33, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %32, metadata !4194, metadata !DIExpression()), !dbg !4196
  %34 = add i64 %14, 1, !dbg !4225
  call void @llvm.dbg.value(metadata i64 %34, metadata !4192, metadata !DIExpression()), !dbg !4196
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !4198
  %36 = load i8*, i8** %35, align 8, !dbg !4198, !tbaa !678
  %37 = icmp eq i8* %36, null, !dbg !4201
  br i1 %37, label %38, label %10, !dbg !4201, !llvm.loop !4226

38:                                               ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !4228
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !4229
  %41 = and i8 %40, 1, !dbg !4230
  %42 = icmp eq i8 %41, 0, !dbg !4230
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !4232
  ret i64 %43, !dbg !4232

44:                                               ; preds = %17
  ret i64 %14, !dbg !4233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_invalid(i8* %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4238, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i8* %1, metadata !4239, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i64 %2, metadata !4240, metadata !DIExpression()), !dbg !4242
  %4 = icmp eq i64 %2, -1, !dbg !4243
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.144, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.145, i64 0, i64 0), !dbg !4244
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #29, !dbg !4242
  call void @llvm.dbg.value(metadata i8* %6, metadata !4241, metadata !DIExpression()), !dbg !4242
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #29, !dbg !4245
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #29, !dbg !4246
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #29, !dbg !4247
  ret void, !dbg !4248
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_valid(i8** nocapture readonly %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #8 !dbg !4249 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !4253, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8* %1, metadata !4254, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %2, metadata !4255, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8* null, metadata !4257, metadata !DIExpression()), !dbg !4258
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.146, i64 0, i64 0), i32 5) #29, !dbg !4259
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4259, !tbaa !678
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !4259
  call void @llvm.dbg.value(metadata i64 0, metadata !4256, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8* null, metadata !4257, metadata !DIExpression()), !dbg !4258
  %7 = load i8*, i8** %0, align 8, !dbg !4260, !tbaa !678
  %8 = icmp eq i8* %7, null, !dbg !4263
  br i1 %8, label %35, label %9, !dbg !4263

9:                                                ; preds = %3, %29
  %10 = phi i8* [ %33, %29 ], [ %7, %3 ]
  %11 = phi i8* [ %30, %29 ], [ null, %3 ]
  %12 = phi i64 [ %31, %29 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %12, metadata !4256, metadata !DIExpression()), !dbg !4258
  %13 = icmp eq i64 %12, 0, !dbg !4264
  br i1 %13, label %19, label %14, !dbg !4266

14:                                               ; preds = %9
  %15 = mul i64 %12, %2, !dbg !4267
  %16 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !4268
  %17 = tail call i32 @bcmp(i8* %11, i8* %16, i64 %2), !dbg !4269
  %18 = icmp eq i32 %17, 0, !dbg !4269
  br i1 %18, label %25, label %19, !dbg !4270

19:                                               ; preds = %9, %14
  %20 = phi i64 [ %15, %14 ], [ 0, %9 ], !dbg !4271
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4273, !tbaa !678
  %22 = tail call i8* @quote(i8* nonnull %10) #29, !dbg !4273
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.147, i64 0, i64 0), i8* %22) #29, !dbg !4273
  %24 = getelementptr inbounds i8, i8* %1, i64 %20, !dbg !4274
  call void @llvm.dbg.value(metadata i8* %24, metadata !4257, metadata !DIExpression()), !dbg !4258
  br label %29, !dbg !4275

25:                                               ; preds = %14
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4276, !tbaa !678
  %27 = tail call i8* @quote(i8* nonnull %10) #29, !dbg !4276
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %26, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.148, i64 0, i64 0), i8* %27) #29, !dbg !4276
  br label %29

29:                                               ; preds = %19, %25
  %30 = phi i8* [ %24, %19 ], [ %11, %25 ], !dbg !4258
  call void @llvm.dbg.value(metadata i8* %30, metadata !4257, metadata !DIExpression()), !dbg !4258
  %31 = add i64 %12, 1, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %31, metadata !4256, metadata !DIExpression()), !dbg !4258
  %32 = getelementptr inbounds i8*, i8** %0, i64 %31, !dbg !4260
  %33 = load i8*, i8** %32, align 8, !dbg !4260, !tbaa !678
  %34 = icmp eq i8* %33, null, !dbg !4263
  br i1 %34, label %35, label %9, !dbg !4263, !llvm.loop !4279

35:                                               ; preds = %29, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4281, !tbaa !678
  call void @llvm.dbg.value(metadata i32 10, metadata !4282, metadata !DIExpression()) #29, !dbg !4322
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !4321, metadata !DIExpression()) #29, !dbg !4322
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !4324
  %38 = load i8*, i8** %37, align 8, !dbg !4324, !tbaa !982
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !4324
  %40 = load i8*, i8** %39, align 8, !dbg !4324, !tbaa !983
  %41 = icmp ult i8* %38, %40, !dbg !4324
  br i1 %41, label %44, label %42, !dbg !4324, !prof !930

42:                                               ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #29, !dbg !4324
  br label %46, !dbg !4324

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !4324
  store i8* %45, i8** %37, align 8, !dbg !4324, !tbaa !982
  store i8 10, i8* %38, align 1, !dbg !4324, !tbaa !931
  br label %46, !dbg !4324

46:                                               ; preds = %42, %44
  ret void, !dbg !4325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @__xargmatch_internal(i8* %0, i8* %1, i8** nocapture readonly %2, i8* readonly %3, i64 %4, void ()* nocapture %5) local_unnamed_addr #8 !dbg !4326 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4330, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i8* %1, metadata !4331, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i8** %2, metadata !4332, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i8* %3, metadata !4333, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i64 %4, metadata !4334, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata void ()* %5, metadata !4335, metadata !DIExpression()), !dbg !4337
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #30, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %7, metadata !4336, metadata !DIExpression()), !dbg !4337
  %8 = icmp sgt i64 %7, -1, !dbg !4339
  br i1 %8, label %15, label %9, !dbg !4341

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %0, metadata !4238, metadata !DIExpression()) #29, !dbg !4342
  call void @llvm.dbg.value(metadata i8* %1, metadata !4239, metadata !DIExpression()) #29, !dbg !4342
  call void @llvm.dbg.value(metadata i64 %7, metadata !4240, metadata !DIExpression()) #29, !dbg !4342
  %10 = icmp eq i64 %7, -1, !dbg !4344
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.144, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.145, i64 0, i64 0), !dbg !4345
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #29, !dbg !4342
  call void @llvm.dbg.value(metadata i8* %12, metadata !4241, metadata !DIExpression()) #29, !dbg !4342
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #29, !dbg !4346
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #29, !dbg !4347
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #29, !dbg !4348
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4), !dbg !4349
  tail call void %5() #29, !dbg !4350
  br label %15, !dbg !4351

15:                                               ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ], !dbg !4337
  ret i64 %16, !dbg !4352
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #28 !dbg !4353 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4357, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i8** %1, metadata !4358, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i8* %2, metadata !4359, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %3, metadata !4360, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 0, metadata !4361, metadata !DIExpression()), !dbg !4362
  %5 = load i8*, i8** %1, align 8, !dbg !4363, !tbaa !678
  %6 = icmp eq i8* %5, null, !dbg !4366
  br i1 %6, label %21, label %7, !dbg !4366

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !4361, metadata !DIExpression()), !dbg !4362
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3), !dbg !4367
  %9 = icmp eq i32 %8, 0, !dbg !4367
  call void @llvm.dbg.value(metadata i64 1, metadata !4361, metadata !DIExpression()), !dbg !4362
  br i1 %9, label %21, label %10, !dbg !4369

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !4361, metadata !DIExpression()), !dbg !4362
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !4363
  %13 = load i8*, i8** %12, align 8, !dbg !4363, !tbaa !678
  %14 = icmp eq i8* %13, null, !dbg !4366
  br i1 %14, label %21, label %15, !dbg !4366, !llvm.loop !4370

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !4361, metadata !DIExpression()), !dbg !4362
  %16 = mul i64 %11, %3, !dbg !4372
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !4373
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3), !dbg !4367
  %19 = icmp eq i32 %18, 0, !dbg !4367
  %20 = add i64 %11, 1, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %20, metadata !4361, metadata !DIExpression()), !dbg !4362
  br i1 %19, label %21, label %10, !dbg !4369, !llvm.loop !4370

21:                                               ; preds = %10, %15, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ %13, %15 ], [ null, %10 ], !dbg !4363
  ret i8* %22, !dbg !4375
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4376 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4414, metadata !DIExpression()), !dbg !4419
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #29, !dbg !4420
  call void @llvm.dbg.value(metadata i1 undef, metadata !4415, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4419
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4421, metadata !DIExpression()), !dbg !4424
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4426
  %4 = load i32, i32* %3, align 8, !dbg !4426, !tbaa !949
  %5 = and i32 %4, 32, !dbg !4427
  %6 = icmp eq i32 %5, 0, !dbg !4427
  call void @llvm.dbg.value(metadata i1 %6, metadata !4417, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4419
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #29, !dbg !4428
  %8 = icmp eq i32 %7, 0, !dbg !4429
  call void @llvm.dbg.value(metadata i1 %8, metadata !4418, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4419
  br i1 %6, label %9, label %19, !dbg !4430

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4432
  call void @llvm.dbg.value(metadata i1 %10, metadata !4415, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4419
  %11 = or i1 %10, %8, !dbg !4433
  %12 = xor i1 %8, true, !dbg !4433
  %13 = sext i1 %12 to i32, !dbg !4433
  br i1 %11, label %22, label %14, !dbg !4433

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #33, !dbg !4434
  %16 = load i32, i32* %15, align 4, !dbg !4434, !tbaa !843
  %17 = icmp ne i32 %16, 9, !dbg !4435
  %18 = sext i1 %17 to i32, !dbg !4436
  br label %22, !dbg !4436

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4437

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #33, !dbg !4439
  store i32 0, i32* %21, align 4, !dbg !4441, !tbaa !843
  br label %22, !dbg !4439

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4419
  ret i32 %23, !dbg !4442
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4443 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4447, metadata !DIExpression()), !dbg !4452
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4453
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #29, !dbg !4453
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4448, metadata !DIExpression()), !dbg !4454
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #29, !dbg !4455
  %5 = icmp eq i32 %4, 0, !dbg !4455
  br i1 %5, label %6, label %13, !dbg !4457

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4458
  %8 = load i16, i16* %7, align 16, !dbg !4458
  %9 = icmp eq i16 %8, 67, !dbg !4458
  br i1 %9, label %13, label %10, !dbg !4459

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0), i64 6), !dbg !4460
  %12 = icmp ne i32 %11, 0, !dbg !4461
  br label %13, !dbg !4459

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4452
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #29, !dbg !4462
  ret i1 %14, !dbg !4462
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4463 {
  %1 = tail call i8* @nl_langinfo(i32 14) #29, !dbg !4468
  call void @llvm.dbg.value(metadata i8* %1, metadata !4467, metadata !DIExpression()), !dbg !4469
  %2 = icmp eq i8* %1, null, !dbg !4470
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.156, i64 0, i64 0), i8* %1, !dbg !4472
  call void @llvm.dbg.value(metadata i8* %3, metadata !4467, metadata !DIExpression()), !dbg !4469
  %4 = load i8, i8* %3, align 1, !dbg !4473, !tbaa !931
  %5 = icmp eq i8 %4, 0, !dbg !4477
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0), i8* %3, !dbg !4478
  call void @llvm.dbg.value(metadata i8* %6, metadata !4467, metadata !DIExpression()), !dbg !4469
  ret i8* %6, !dbg !4479
}

; Function Attrs: nounwind
declare !dbg !4480 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4483 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4487, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8* %1, metadata !4488, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %2, metadata !4489, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 %0, metadata !4491, metadata !DIExpression()) #29, !dbg !4500
  call void @llvm.dbg.value(metadata i8* %1, metadata !4494, metadata !DIExpression()) #29, !dbg !4500
  call void @llvm.dbg.value(metadata i64 %2, metadata !4495, metadata !DIExpression()) #29, !dbg !4500
  call void @llvm.dbg.value(metadata i32 %0, metadata !4502, metadata !DIExpression()) #29, !dbg !4508
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !4510
  call void @llvm.dbg.value(metadata i8* %4, metadata !4507, metadata !DIExpression()) #29, !dbg !4508
  call void @llvm.dbg.value(metadata i8* %4, metadata !4496, metadata !DIExpression()) #29, !dbg !4500
  %5 = icmp eq i8* %4, null, !dbg !4511
  br i1 %5, label %6, label %9, !dbg !4512

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4513
  br i1 %7, label %19, label %8, !dbg !4516

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4517, !tbaa !931
  br label %19, !dbg !4518

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #30, !dbg !4519
  call void @llvm.dbg.value(metadata i64 %10, metadata !4497, metadata !DIExpression()) #29, !dbg !4520
  %11 = icmp ult i64 %10, %2, !dbg !4521
  br i1 %11, label %12, label %14, !dbg !4523

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4524
  call void @llvm.dbg.value(metadata i8* %1, metadata !4526, metadata !DIExpression()) #29, !dbg !4531
  call void @llvm.dbg.value(metadata i8* %4, metadata !4529, metadata !DIExpression()) #29, !dbg !4531
  call void @llvm.dbg.value(metadata i64 %13, metadata !4530, metadata !DIExpression()) #29, !dbg !4531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #29, !dbg !4533
  br label %19, !dbg !4534

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4535
  br i1 %15, label %19, label %16, !dbg !4538

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4539
  call void @llvm.dbg.value(metadata i8* %1, metadata !4526, metadata !DIExpression()) #29, !dbg !4541
  call void @llvm.dbg.value(metadata i8* %4, metadata !4529, metadata !DIExpression()) #29, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %17, metadata !4530, metadata !DIExpression()) #29, !dbg !4541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #29, !dbg !4543
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4544
  store i8 0, i8* %18, align 1, !dbg !4545, !tbaa !931
  br label %19, !dbg !4546

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4547
  ret i32 %20, !dbg !4548
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4549 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4551, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i32 %0, metadata !4502, metadata !DIExpression()) #29, !dbg !4553
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !4555
  call void @llvm.dbg.value(metadata i8* %2, metadata !4507, metadata !DIExpression()) #29, !dbg !4553
  ret i8* %2, !dbg !4556
}

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
attributes #10 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nosync nounwind readnone willreturn }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #22 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #23 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #29 = { nounwind }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind readnone willreturn }
attributes #34 = { cold }

!llvm.dbg.cu = !{!2, !73, !79, !86, !215, !92, !124, !130, !218, !225, !197, !232, !249, !251, !255, !257, !259, !261, !263, !205, !266, !268, !270, !659}
!llvm.ident = !{!661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661, !661}
!llvm.module.flags = !{!662, !663, !664, !665, !666}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 42, type: !70, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !51, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/sum.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !29}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 43, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./lib/human.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!42 = !{!43, !45, !46, !47, !48}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!50 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !{!52, !53}
!52 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 44, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1024, elements: !68)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !58, line: 50, size: 256, elements: !59)
!58 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!59 = !{!60, !63, !65, !67}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !58, line: 52, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !57, file: !58, line: 55, baseType: !64, size: 32, offset: 64)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !57, file: !58, line: 56, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !57, file: !58, line: 57, baseType: !64, size: 32, offset: 192)
!68 = !{!69}
!69 = !DISubrange(count: 4)
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "Version", scope: !73, file: !74, line: 2, type: !61, isLocal: false, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !76, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!75 = !{}
!76 = !{!71}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "file_name", scope: !79, file: !80, line: 46, type: !61, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !81, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!81 = !{!77, !82}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !79, file: !80, line: 56, type: !70, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "exit_failure", scope: !86, file: !87, line: 24, type: !89, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !88, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!88 = !{!84}
!89 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "power_letter", scope: !92, file: !93, line: 36, type: !119, isLocal: true, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !103, globals: !106, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "lib/human.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!94 = !{!29, !95}
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !96, line: 25, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!99 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!100 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!101 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!102 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!106 = !{!90, !107, !113}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "block_size_args", scope: !92, file: !93, line: 398, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 192, elements: !111)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!111 = !{!112}
!112 = !DISubrange(count: 3)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "block_size_opts", scope: !92, file: !93, line: 399, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !117)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!117 = !{!118}
!118 = !DISubrange(count: 2)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 72, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 9)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "program_name", scope: !124, file: !125, line: 33, type: !61, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !126, globals: !127, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!126 = !{!45, !43}
!127 = !{!122}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !130, file: !131, line: 85, type: !192, isLocal: false, isDefinition: true)
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !132, retainedTypes: !153, globals: !155, splitDebugInlining: false, nameTableKind: None)
!131 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!132 = !{!5, !133, !138}
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!136 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!137 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !139, line: 46, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!141 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!142 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!143 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!144 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!145 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!146 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!147 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!148 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!149 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!152 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!153 = !{!64, !154, !48, !43}
!154 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!155 = !{!128, !156, !162, !174, !176, !181, !188, !190}
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !130, file: !131, line: 101, type: !158, isLocal: false, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 320, elements: !160)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!160 = !{!161}
!161 = !DISubrange(count: 10)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !130, file: !131, line: 1052, type: !164, isLocal: false, isDefinition: true)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !131, line: 65, size: 448, elements: !165)
!165 = !{!166, !167, !168, !172, !173}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !164, file: !131, line: 68, baseType: !5, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !131, line: 71, baseType: !64, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !164, file: !131, line: 75, baseType: !169, size: 256, offset: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !164, file: !131, line: 78, baseType: !61, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !164, file: !131, line: 81, baseType: !61, size: 64, offset: 384)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !130, file: !131, line: 116, type: !164, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "slot0", scope: !130, file: !131, line: 842, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 256)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "slotvec", scope: !130, file: !131, line: 845, type: !183, isLocal: true, isDefinition: true)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !131, line: 834, size: 128, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !184, file: !131, line: 836, baseType: !48, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !184, file: !131, line: 837, baseType: !43, size: 64, offset: 64)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "nslots", scope: !130, file: !131, line: 843, type: !64, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "slotvec0", scope: !130, file: !131, line: 844, type: !184, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 704, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 11)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !197, file: !198, line: 26, type: !200, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !199, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !{!195}
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 376, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 47)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !205, file: !206, line: 67, type: !210, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !207, retainedTypes: !208, globals: !209, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = !{!5}
!208 = !{!45, !61, !47}
!209 = !{!203}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !211, line: 61, baseType: !212)
!211 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null}
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !217, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!217 = !{!20}
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !220, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = !{!221}
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 40, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = !{!224}
!224 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !227, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = !{!228}
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !226, line: 40, baseType: !7, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!231 = !{!45}
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !234, retainedTypes: !248, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = !{!235}
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !237, file: !236, line: 186, baseType: !7, size: 32, elements: !246)
!236 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!237 = distinct !DISubprogram(name: "x2nrealloc", scope: !236, file: !236, line: 174, type: !238, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !241)
!238 = !DISubroutineType(types: !239)
!239 = !{!45, !45, !240, !48}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!241 = !{!242, !243, !244, !245}
!242 = !DILocalVariable(name: "p", arg: 1, scope: !237, file: !236, line: 174, type: !45)
!243 = !DILocalVariable(name: "pn", arg: 2, scope: !237, file: !236, line: 174, type: !240)
!244 = !DILocalVariable(name: "s", arg: 3, scope: !237, file: !236, line: 174, type: !48)
!245 = !DILocalVariable(name: "n", scope: !237, file: !236, line: 176, type: !48)
!246 = !{!247}
!247 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!248 = !{!48, !43, !45}
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !253, retainedTypes: !254, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!253 = !{!95, !138}
!254 = !{!64, !154}
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !265, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!265 = !{!48}
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !272, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!272 = !{!273}
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 41, baseType: !7, size: 32, elements: !275)
!274 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!276 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!277 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!278 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!279 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!280 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!281 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!282 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!283 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!284 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!285 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!286 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!287 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!288 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!289 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!290 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!291 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!292 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!293 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!294 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!295 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!296 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!297 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!298 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!299 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!300 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!301 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!302 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!303 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!304 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!305 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!306 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!307 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!308 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!309 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!310 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!311 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!312 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!313 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!314 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!315 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!316 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!317 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!318 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!319 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!320 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!321 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!322 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!323 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!324 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!325 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!384 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!387 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!388 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!389 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!390 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!391 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!392 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!393 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!394 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!395 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!396 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!397 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!398 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!471 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!544 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!545 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!546 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!547 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!548 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!549 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!550 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!551 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!552 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!553 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!554 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!555 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!556 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!557 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!558 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!560 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!561 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!562 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!563 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!564 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!565 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!591 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!592 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!593 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!594 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!595 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!600 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!601 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!602 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!603 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!660 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!661 = !{!"clang version 12.0.1"}
!662 = !{i32 7, !"Dwarf Version", i32 4}
!663 = !{i32 2, !"Debug Info Version", i32 3}
!664 = !{i32 1, !"wchar_size", i32 4}
!665 = !{i32 7, !"PIC Level", i32 2}
!666 = !{i32 7, !"PIE Level", i32 2}
!667 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !668, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !64}
!670 = !{!671}
!671 = !DILocalVariable(name: "status", arg: 1, scope: !667, file: !3, line: 53, type: !64)
!672 = !DILocation(line: 0, scope: !667)
!673 = !DILocation(line: 55, column: 14, scope: !674)
!674 = distinct !DILexicalBlock(scope: !667, file: !3, line: 55, column: 7)
!675 = !DILocation(line: 55, column: 7, scope: !667)
!676 = !DILocation(line: 56, column: 5, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !3, line: 56, column: 5)
!678 = !{!679, !679, i64 0}
!679 = !{!"any pointer", !680, i64 0}
!680 = !{!"omnipotent char", !681, i64 0}
!681 = !{!"Simple C/C++ TBAA"}
!682 = !DILocation(line: 59, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !674, file: !3, line: 58, column: 5)
!684 = !DILocation(line: 63, column: 7, scope: !683)
!685 = !DILocation(line: 583, column: 3, scope: !686, inlinedAt: !688)
!686 = distinct !DISubprogram(name: "emit_stdin_note", scope: !687, file: !687, line: 581, type: !213, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !75)
!687 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!688 = distinct !DILocation(line: 67, column: 7, scope: !683)
!689 = !DILocation(line: 69, column: 7, scope: !683)
!690 = !DILocation(line: 74, column: 7, scope: !683)
!691 = !DILocation(line: 75, column: 7, scope: !683)
!692 = !DILocalVariable(name: "program", arg: 1, scope: !693, file: !687, line: 634, type: !61)
!693 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !687, file: !687, line: 634, type: !694, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !61}
!696 = !{!692, !697, !706, !707, !709}
!697 = !DILocalVariable(name: "infomap", scope: !693, file: !687, line: 636, type: !698)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 896, elements: !704)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !693, file: !687, line: 636, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !700, file: !687, line: 636, baseType: !61, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !687, line: 636, baseType: !61, size: 64, offset: 64)
!704 = !{!705}
!705 = !DISubrange(count: 7)
!706 = !DILocalVariable(name: "node", scope: !693, file: !687, line: 646, type: !61)
!707 = !DILocalVariable(name: "map_prog", scope: !693, file: !687, line: 647, type: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!709 = !DILocalVariable(name: "lc_messages", scope: !693, file: !687, line: 659, type: !61)
!710 = !DILocation(line: 0, scope: !693, inlinedAt: !711)
!711 = distinct !DILocation(line: 76, column: 7, scope: !683)
!712 = !DILocation(line: 636, column: 3, scope: !693, inlinedAt: !711)
!713 = !DILocation(line: 636, column: 67, scope: !693, inlinedAt: !711)
!714 = !DILocation(line: 647, column: 36, scope: !693, inlinedAt: !711)
!715 = !DILocation(line: 649, column: 3, scope: !693, inlinedAt: !711)
!716 = !DILocation(line: 649, column: 33, scope: !693, inlinedAt: !711)
!717 = !DILocation(line: 650, column: 13, scope: !693, inlinedAt: !711)
!718 = !DILocation(line: 649, column: 20, scope: !693, inlinedAt: !711)
!719 = !{!720, !679, i64 0}
!720 = !{!"infomap", !679, i64 0, !679, i64 8}
!721 = !DILocation(line: 649, column: 10, scope: !693, inlinedAt: !711)
!722 = !DILocation(line: 649, column: 28, scope: !693, inlinedAt: !711)
!723 = distinct !{!723, !715, !717, !724}
!724 = !{!"llvm.loop.mustprogress"}
!725 = !DILocation(line: 652, column: 17, scope: !726, inlinedAt: !711)
!726 = distinct !DILexicalBlock(scope: !693, file: !687, line: 652, column: 7)
!727 = !{!720, !679, i64 8}
!728 = !DILocation(line: 652, column: 7, scope: !726, inlinedAt: !711)
!729 = !DILocation(line: 652, column: 7, scope: !693, inlinedAt: !711)
!730 = !DILocation(line: 655, column: 3, scope: !693, inlinedAt: !711)
!731 = !DILocation(line: 659, column: 29, scope: !693, inlinedAt: !711)
!732 = !DILocation(line: 660, column: 7, scope: !733, inlinedAt: !711)
!733 = distinct !DILexicalBlock(scope: !693, file: !687, line: 660, column: 7)
!734 = !DILocation(line: 660, column: 19, scope: !733, inlinedAt: !711)
!735 = !DILocation(line: 660, column: 22, scope: !733, inlinedAt: !711)
!736 = !DILocation(line: 660, column: 7, scope: !693, inlinedAt: !711)
!737 = !DILocation(line: 666, column: 7, scope: !738, inlinedAt: !711)
!738 = distinct !DILexicalBlock(scope: !733, file: !687, line: 661, column: 5)
!739 = !DILocation(line: 668, column: 5, scope: !738, inlinedAt: !711)
!740 = !DILocation(line: 669, column: 3, scope: !693, inlinedAt: !711)
!741 = !DILocation(line: 671, column: 3, scope: !693, inlinedAt: !711)
!742 = !DILocation(line: 673, column: 1, scope: !693, inlinedAt: !711)
!743 = !DILocation(line: 78, column: 3, scope: !667)
!744 = !DISubprogram(name: "dcgettext", scope: !745, file: !745, line: 51, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!745 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!746 = !DISubroutineType(types: !747)
!747 = !{!43, !61, !61, !64}
!748 = !DISubprogram(name: "fputs_unlocked", scope: !749, file: !749, line: 667, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!749 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!750 = !DISubroutineType(types: !751)
!751 = !{!64, !61, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !754, line: 49, size: 1728, elements: !755)
!754 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !771, !772, !773, !774, !778, !779, !781, !785, !788, !790, !793, !796, !797, !798, !799, !800}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !753, file: !754, line: 51, baseType: !64, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !753, file: !754, line: 54, baseType: !43, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !753, file: !754, line: 55, baseType: !43, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !753, file: !754, line: 56, baseType: !43, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !753, file: !754, line: 57, baseType: !43, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !753, file: !754, line: 58, baseType: !43, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !753, file: !754, line: 59, baseType: !43, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !753, file: !754, line: 60, baseType: !43, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !753, file: !754, line: 61, baseType: !43, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !753, file: !754, line: 64, baseType: !43, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !753, file: !754, line: 65, baseType: !43, size: 64, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !753, file: !754, line: 66, baseType: !43, size: 64, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !753, file: !754, line: 68, baseType: !769, size: 64, offset: 768)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !754, line: 36, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !753, file: !754, line: 70, baseType: !752, size: 64, offset: 832)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !753, file: !754, line: 72, baseType: !64, size: 32, offset: 896)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !753, file: !754, line: 73, baseType: !64, size: 32, offset: 928)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !753, file: !754, line: 74, baseType: !775, size: 64, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !776, line: 152, baseType: !777)
!776 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!777 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !753, file: !754, line: 77, baseType: !154, size: 16, offset: 1024)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !753, file: !754, line: 78, baseType: !780, size: 8, offset: 1040)
!780 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !753, file: !754, line: 79, baseType: !782, size: 8, offset: 1048)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 1)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !753, file: !754, line: 81, baseType: !786, size: 64, offset: 1088)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !754, line: 43, baseType: null)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !753, file: !754, line: 89, baseType: !789, size: 64, offset: 1152)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !776, line: 153, baseType: !777)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !753, file: !754, line: 91, baseType: !791, size: 64, offset: 1216)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !754, line: 37, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !753, file: !754, line: 92, baseType: !794, size: 64, offset: 1280)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !754, line: 38, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !753, file: !754, line: 93, baseType: !752, size: 64, offset: 1344)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !753, file: !754, line: 94, baseType: !45, size: 64, offset: 1408)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !753, file: !754, line: 95, baseType: !48, size: 64, offset: 1472)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !753, file: !754, line: 96, baseType: !64, size: 32, offset: 1536)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !753, file: !754, line: 98, baseType: !801, size: 160, offset: 1568)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 20)
!804 = !DISubprogram(name: "setlocale", scope: !805, file: !805, line: 122, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!805 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!806 = !DISubroutineType(types: !807)
!807 = !{!43, !64, !61}
!808 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 221, type: !809, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!809 = !DISubroutineType(types: !810)
!810 = !{!64, !64, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!812 = !{!813, !814, !815, !816, !817, !818}
!813 = !DILocalVariable(name: "argc", arg: 1, scope: !808, file: !3, line: 221, type: !64)
!814 = !DILocalVariable(name: "argv", arg: 2, scope: !808, file: !3, line: 221, type: !811)
!815 = !DILocalVariable(name: "ok", scope: !808, file: !3, line: 223, type: !70)
!816 = !DILocalVariable(name: "optc", scope: !808, file: !3, line: 224, type: !64)
!817 = !DILocalVariable(name: "files_given", scope: !808, file: !3, line: 225, type: !64)
!818 = !DILocalVariable(name: "sum_func", scope: !808, file: !3, line: 226, type: !819)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!70, !61, !64}
!822 = !DILocation(line: 0, scope: !808)
!823 = !DILocation(line: 229, column: 21, scope: !808)
!824 = !DILocation(line: 229, column: 3, scope: !808)
!825 = !DILocation(line: 230, column: 3, scope: !808)
!826 = !DILocation(line: 231, column: 3, scope: !808)
!827 = !DILocation(line: 232, column: 3, scope: !808)
!828 = !DILocation(line: 234, column: 3, scope: !808)
!829 = !DILocation(line: 238, column: 12, scope: !808)
!830 = !DILocation(line: 238, column: 3, scope: !808)
!831 = !DILocation(line: 240, column: 19, scope: !808)
!832 = !DILocation(line: 242, column: 3, scope: !808)
!833 = !DILocation(line: 242, column: 18, scope: !808)
!834 = distinct !{!834, !832, !835, !724}
!835 = !DILocation(line: 261, column: 5, scope: !808)
!836 = !DILocation(line: 252, column: 11, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 245, column: 9)
!838 = distinct !DILexicalBlock(scope: !808, file: !3, line: 243, column: 5)
!839 = !DILocation(line: 254, column: 9, scope: !837)
!840 = !DILocation(line: 256, column: 9, scope: !837)
!841 = !DILocation(line: 259, column: 11, scope: !837)
!842 = !DILocation(line: 263, column: 24, scope: !808)
!843 = !{!844, !844, i64 0}
!844 = !{!"int", !680, i64 0}
!845 = !DILocation(line: 263, column: 22, scope: !808)
!846 = !DILocation(line: 264, column: 19, scope: !847)
!847 = distinct !DILexicalBlock(scope: !808, file: !3, line: 264, column: 7)
!848 = !DILocation(line: 264, column: 7, scope: !808)
!849 = !DILocation(line: 267, column: 28, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 267, column: 5)
!851 = distinct !DILexicalBlock(scope: !847, file: !3, line: 267, column: 5)
!852 = !DILocation(line: 267, column: 5, scope: !851)
!853 = !DILocation(line: 265, column: 10, scope: !847)
!854 = !{i1 (i8*, i32)* @bsd_sum_file, i1 (i8*, i32)* @sysv_sum_file}
!855 = !DILocation(line: 265, column: 8, scope: !847)
!856 = !DILocation(line: 265, column: 5, scope: !847)
!857 = !DILocation(line: 268, column: 23, scope: !850)
!858 = !DILocation(line: 268, column: 13, scope: !850)
!859 = !DILocation(line: 268, column: 10, scope: !850)
!860 = !DILocation(line: 267, column: 42, scope: !850)
!861 = distinct !{!861, !852, !862, !724}
!862 = !DILocation(line: 268, column: 48, scope: !851)
!863 = !DILocation(line: 0, scope: !847)
!864 = !DILocation(line: 270, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !808, file: !3, line: 270, column: 7)
!866 = !DILocation(line: 270, column: 23, scope: !865)
!867 = !DILocation(line: 270, column: 34, scope: !865)
!868 = !DILocation(line: 270, column: 26, scope: !865)
!869 = !DILocation(line: 270, column: 41, scope: !865)
!870 = !DILocation(line: 270, column: 7, scope: !808)
!871 = !DILocation(line: 271, column: 5, scope: !865)
!872 = !DILocation(line: 272, column: 10, scope: !808)
!873 = !DILocation(line: 273, column: 1, scope: !808)
!874 = distinct !DISubprogram(name: "bsd_sum_file", scope: !3, file: !3, line: 88, type: !820, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !875)
!875 = !{!876, !877, !878, !882, !883, !887, !888, !892}
!876 = !DILocalVariable(name: "file", arg: 1, scope: !874, file: !3, line: 88, type: !61)
!877 = !DILocalVariable(name: "print_name", arg: 2, scope: !874, file: !3, line: 88, type: !64)
!878 = !DILocalVariable(name: "fp", scope: !874, file: !3, line: 90, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !881, line: 7, baseType: !753)
!881 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!882 = !DILocalVariable(name: "checksum", scope: !874, file: !3, line: 91, type: !64)
!883 = !DILocalVariable(name: "total_bytes", scope: !874, file: !3, line: 92, type: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !885, line: 102, baseType: !886)
!885 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !776, line: 73, baseType: !50)
!887 = !DILocalVariable(name: "ch", scope: !874, file: !3, line: 93, type: !64)
!888 = !DILocalVariable(name: "hbuf", scope: !874, file: !3, line: 94, type: !889)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 5216, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 652)
!892 = !DILocalVariable(name: "is_stdin", scope: !874, file: !3, line: 95, type: !70)
!893 = !DILocation(line: 0, scope: !874)
!894 = !DILocation(line: 94, column: 3, scope: !874)
!895 = !DILocation(line: 94, column: 8, scope: !874)
!896 = !DILocation(line: 95, column: 19, scope: !874)
!897 = !DILocation(line: 97, column: 7, scope: !874)
!898 = !DILocation(line: 99, column: 12, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 98, column: 5)
!900 = distinct !DILexicalBlock(scope: !874, file: !3, line: 97, column: 7)
!901 = !DILocation(line: 100, column: 23, scope: !899)
!902 = !DILocation(line: 102, column: 5, scope: !899)
!903 = !DILocation(line: 105, column: 12, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !3, line: 104, column: 5)
!905 = !DILocation(line: 106, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !904, file: !3, line: 106, column: 11)
!907 = !DILocation(line: 106, column: 11, scope: !904)
!908 = !DILocation(line: 108, column: 21, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !3, line: 107, column: 9)
!910 = !DILocation(line: 108, column: 34, scope: !909)
!911 = !DILocation(line: 108, column: 11, scope: !909)
!912 = !DILocation(line: 109, column: 11, scope: !909)
!913 = !DILocation(line: 0, scope: !900)
!914 = !DILocation(line: 113, column: 3, scope: !874)
!915 = !DILocation(line: 115, column: 3, scope: !874)
!916 = !DILocalVariable(name: "__fp", arg: 1, scope: !917, file: !918, line: 66, type: !879)
!917 = distinct !DISubprogram(name: "getc_unlocked", scope: !918, file: !918, line: 66, type: !919, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !921)
!918 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!919 = !DISubroutineType(types: !920)
!920 = !{!64, !879}
!921 = !{!916}
!922 = !DILocation(line: 0, scope: !917, inlinedAt: !923)
!923 = distinct !DILocation(line: 115, column: 16, scope: !874)
!924 = !DILocation(line: 68, column: 10, scope: !917, inlinedAt: !923)
!925 = !{!926, !679, i64 8}
!926 = !{!"_IO_FILE", !844, i64 0, !679, i64 8, !679, i64 16, !679, i64 24, !679, i64 32, !679, i64 40, !679, i64 48, !679, i64 56, !679, i64 64, !679, i64 72, !679, i64 80, !679, i64 88, !679, i64 96, !679, i64 104, !844, i64 112, !844, i64 116, !927, i64 120, !928, i64 128, !680, i64 130, !680, i64 131, !679, i64 136, !927, i64 144, !679, i64 152, !679, i64 160, !679, i64 168, !679, i64 176, !927, i64 184, !844, i64 192, !680, i64 196}
!927 = !{!"long", !680, i64 0}
!928 = !{!"short", !680, i64 0}
!929 = !{!926, !679, i64 16}
!930 = !{!"branch_weights", i32 2000, i32 1}
!931 = !{!680, !680, i64 0}
!932 = !DILocation(line: 115, column: 27, scope: !874)
!933 = !DILocation(line: 117, column: 18, scope: !934)
!934 = distinct !DILexicalBlock(scope: !874, file: !3, line: 116, column: 5)
!935 = !DILocation(line: 118, column: 28, scope: !934)
!936 = !DILocation(line: 118, column: 52, scope: !934)
!937 = !DILocation(line: 118, column: 34, scope: !934)
!938 = !DILocation(line: 119, column: 16, scope: !934)
!939 = !DILocation(line: 120, column: 16, scope: !934)
!940 = distinct !{!940, !915, !941, !724}
!941 = !DILocation(line: 121, column: 5, scope: !874)
!942 = !DILocalVariable(name: "__stream", arg: 1, scope: !943, file: !918, line: 135, type: !879)
!943 = distinct !DISubprogram(name: "ferror_unlocked", scope: !918, file: !918, line: 135, type: !919, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!944 = !{!942}
!945 = !DILocation(line: 0, scope: !943, inlinedAt: !946)
!946 = distinct !DILocation(line: 123, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !874, file: !3, line: 123, column: 7)
!948 = !DILocation(line: 137, column: 10, scope: !943, inlinedAt: !946)
!949 = !{!926, !844, i64 0}
!950 = !DILocation(line: 123, column: 7, scope: !947)
!951 = !DILocation(line: 123, column: 7, scope: !874)
!952 = !DILocation(line: 125, column: 17, scope: !953)
!953 = distinct !DILexicalBlock(scope: !947, file: !3, line: 124, column: 5)
!954 = !DILocation(line: 125, column: 30, scope: !953)
!955 = !DILocation(line: 125, column: 7, scope: !953)
!956 = !DILocation(line: 126, column: 11, scope: !953)
!957 = !DILocation(line: 127, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 126, column: 11)
!959 = !DILocation(line: 131, column: 17, scope: !960)
!960 = distinct !DILexicalBlock(scope: !874, file: !3, line: 131, column: 7)
!961 = !DILocation(line: 131, column: 20, scope: !960)
!962 = !DILocation(line: 131, column: 32, scope: !960)
!963 = !DILocation(line: 131, column: 7, scope: !874)
!964 = !DILocation(line: 133, column: 17, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !3, line: 132, column: 5)
!966 = !DILocation(line: 133, column: 30, scope: !965)
!967 = !DILocation(line: 133, column: 7, scope: !965)
!968 = !DILocation(line: 134, column: 7, scope: !965)
!969 = !DILocation(line: 137, column: 3, scope: !874)
!970 = !DILocation(line: 139, column: 18, scope: !971)
!971 = distinct !DILexicalBlock(scope: !874, file: !3, line: 139, column: 7)
!972 = !DILocation(line: 139, column: 7, scope: !874)
!973 = !DILocation(line: 140, column: 5, scope: !971)
!974 = !DILocalVariable(name: "__c", arg: 1, scope: !975, file: !918, line: 108, type: !64)
!975 = distinct !DISubprogram(name: "putchar_unlocked", scope: !918, file: !918, line: 108, type: !976, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{!64, !64}
!978 = !{!974}
!979 = !DILocation(line: 0, scope: !975, inlinedAt: !980)
!980 = distinct !DILocation(line: 141, column: 3, scope: !874)
!981 = !DILocation(line: 110, column: 10, scope: !975, inlinedAt: !980)
!982 = !{!926, !679, i64 40}
!983 = !{!926, !679, i64 48}
!984 = !DILocation(line: 144, column: 1, scope: !874)
!985 = !DISubprogram(name: "bindtextdomain", scope: !745, file: !745, line: 86, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!986 = !DISubroutineType(types: !987)
!987 = !{!43, !61, !61}
!988 = !DISubprogram(name: "textdomain", scope: !745, file: !745, line: 82, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!989 = !DISubroutineType(types: !990)
!990 = !{!43, !61}
!991 = !DISubprogram(name: "atexit", scope: !992, file: !992, line: 595, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!992 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!993 = !DISubroutineType(types: !994)
!994 = !{!64, !212}
!995 = !DISubprogram(name: "setvbuf", scope: !749, file: !749, line: 308, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!996 = !DISubroutineType(types: !997)
!997 = !{!64, !752, !43, !64, !50}
!998 = !DISubprogram(name: "getopt_long", scope: !58, file: !58, line: 66, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!64, !64, !1001, !61, !1003, !66}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1004 = distinct !DISubprogram(name: "sysv_sum_file", scope: !3, file: !3, line: 152, type: !820, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1005)
!1005 = !{!1006, !1007, !1008, !1009, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1021}
!1006 = !DILocalVariable(name: "file", arg: 1, scope: !1004, file: !3, line: 152, type: !61)
!1007 = !DILocalVariable(name: "print_name", arg: 2, scope: !1004, file: !3, line: 152, type: !64)
!1008 = !DILocalVariable(name: "fd", scope: !1004, file: !3, line: 154, type: !64)
!1009 = !DILocalVariable(name: "buf", scope: !1004, file: !3, line: 155, type: !1010)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 65536, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 8192)
!1013 = !DILocalVariable(name: "total_bytes", scope: !1004, file: !3, line: 156, type: !884)
!1014 = !DILocalVariable(name: "hbuf", scope: !1004, file: !3, line: 157, type: !889)
!1015 = !DILocalVariable(name: "r", scope: !1004, file: !3, line: 158, type: !64)
!1016 = !DILocalVariable(name: "checksum", scope: !1004, file: !3, line: 159, type: !64)
!1017 = !DILocalVariable(name: "s", scope: !1004, file: !3, line: 162, type: !7)
!1018 = !DILocalVariable(name: "is_stdin", scope: !1004, file: !3, line: 164, type: !70)
!1019 = !DILocalVariable(name: "bytes_read", scope: !1020, file: !3, line: 184, type: !48)
!1020 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 183, column: 5)
!1021 = !DILocalVariable(name: "i", scope: !1022, file: !3, line: 197, type: !48)
!1022 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 197, column: 7)
!1023 = !DILocation(line: 0, scope: !1004)
!1024 = !DILocation(line: 155, column: 3, scope: !1004)
!1025 = !DILocation(line: 155, column: 17, scope: !1004)
!1026 = !DILocation(line: 157, column: 3, scope: !1004)
!1027 = !DILocation(line: 157, column: 8, scope: !1004)
!1028 = !DILocation(line: 164, column: 19, scope: !1004)
!1029 = !DILocation(line: 166, column: 7, scope: !1004)
!1030 = !DILocation(line: 169, column: 23, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 167, column: 5)
!1032 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 166, column: 7)
!1033 = !DILocation(line: 171, column: 5, scope: !1031)
!1034 = !DILocation(line: 174, column: 12, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 173, column: 5)
!1036 = !DILocation(line: 175, column: 14, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 175, column: 11)
!1038 = !DILocation(line: 175, column: 11, scope: !1035)
!1039 = !DILocation(line: 177, column: 21, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 176, column: 9)
!1041 = !DILocation(line: 177, column: 34, scope: !1040)
!1042 = !DILocation(line: 177, column: 11, scope: !1040)
!1043 = !DILocation(line: 178, column: 11, scope: !1040)
!1044 = !DILocation(line: 0, scope: !1032)
!1045 = !DILocation(line: 182, column: 3, scope: !1004)
!1046 = !DILocation(line: 156, column: 13, scope: !1004)
!1047 = !DILocation(line: 162, column: 16, scope: !1004)
!1048 = !DILocation(line: 184, column: 27, scope: !1020)
!1049 = !DILocation(line: 0, scope: !1020)
!1050 = !DILocation(line: 186, column: 11, scope: !1020)
!1051 = !DILocation(line: 197, column: 7, scope: !1022)
!1052 = !DILocation(line: 197, column: 43, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 197, column: 7)
!1054 = !DILocation(line: 198, column: 14, scope: !1053)
!1055 = !DILocation(line: 198, column: 11, scope: !1053)
!1056 = distinct !{!1056, !1051, !1057, !724, !1058}
!1057 = !DILocation(line: 198, column: 19, scope: !1022)
!1058 = !{!"llvm.loop.isvectorized", i32 1}
!1059 = !DILocation(line: 191, column: 21, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 190, column: 9)
!1061 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 189, column: 11)
!1062 = !DILocation(line: 191, column: 34, scope: !1060)
!1063 = !DILocation(line: 191, column: 11, scope: !1060)
!1064 = !DILocation(line: 192, column: 15, scope: !1060)
!1065 = !DILocation(line: 193, column: 13, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 192, column: 15)
!1067 = !DILocation(line: 0, scope: !1022)
!1068 = !DILocation(line: 197, column: 28, scope: !1053)
!1069 = distinct !{!1069, !1051, !1057, !724, !1070, !1058}
!1070 = !{!"llvm.loop.unroll.runtime.disable"}
!1071 = !DILocation(line: 199, column: 19, scope: !1020)
!1072 = !DILocation(line: 202, column: 17, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 202, column: 7)
!1074 = !DILocation(line: 202, column: 20, scope: !1073)
!1075 = !DILocation(line: 202, column: 31, scope: !1073)
!1076 = !DILocation(line: 202, column: 7, scope: !1004)
!1077 = !DILocation(line: 204, column: 17, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 203, column: 5)
!1079 = !DILocation(line: 204, column: 30, scope: !1078)
!1080 = !DILocation(line: 204, column: 7, scope: !1078)
!1081 = !DILocation(line: 205, column: 7, scope: !1078)
!1082 = !DILocation(line: 208, column: 10, scope: !1004)
!1083 = !DILocation(line: 208, column: 40, scope: !1004)
!1084 = !DILocation(line: 208, column: 20, scope: !1004)
!1085 = !DILocation(line: 209, column: 17, scope: !1004)
!1086 = !DILocation(line: 209, column: 32, scope: !1004)
!1087 = !DILocation(line: 209, column: 27, scope: !1004)
!1088 = !DILocation(line: 211, column: 3, scope: !1004)
!1089 = !DILocation(line: 213, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 213, column: 7)
!1091 = !DILocation(line: 213, column: 7, scope: !1004)
!1092 = !DILocation(line: 214, column: 5, scope: !1090)
!1093 = !DILocation(line: 0, scope: !975, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 215, column: 3, scope: !1004)
!1095 = !DILocation(line: 110, column: 10, scope: !975, inlinedAt: !1094)
!1096 = !DILocation(line: 218, column: 1, scope: !1004)
!1097 = !DISubprogram(name: "error", scope: !1098, file: !1098, line: 52, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!1098 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !64, !64, !61, null}
!1101 = !DISubprogram(name: "open", scope: !1102, file: !1102, line: 196, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!1102 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!64, !61, !64, null}
!1105 = !DISubprogram(name: "close", scope: !1106, file: !1106, line: 353, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!1106 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1107 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !80, file: !80, line: 51, type: !694, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1108)
!1108 = !{!1109}
!1109 = !DILocalVariable(name: "file", arg: 1, scope: !1107, file: !80, line: 51, type: !61)
!1110 = !DILocation(line: 0, scope: !1107)
!1111 = !DILocation(line: 53, column: 13, scope: !1107)
!1112 = !DILocation(line: 54, column: 1, scope: !1107)
!1113 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !80, file: !80, line: 88, type: !1114, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !70}
!1116 = !{!1117}
!1117 = !DILocalVariable(name: "ignore", arg: 1, scope: !1113, file: !80, line: 88, type: !70)
!1118 = !DILocation(line: 0, scope: !1113)
!1119 = !DILocation(line: 90, column: 16, scope: !1113)
!1120 = !{!1121, !1121, i64 0}
!1121 = !{!"_Bool", !680, i64 0}
!1122 = !DILocation(line: 91, column: 1, scope: !1113)
!1123 = distinct !DISubprogram(name: "close_stdout", scope: !80, file: !80, line: 117, type: !213, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1124)
!1124 = !{!1125}
!1125 = !DILocalVariable(name: "write_error", scope: !1126, file: !80, line: 122, type: !61)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !80, line: 121, column: 5)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !80, line: 119, column: 7)
!1128 = !DILocation(line: 119, column: 21, scope: !1127)
!1129 = !DILocation(line: 119, column: 7, scope: !1127)
!1130 = !DILocation(line: 119, column: 29, scope: !1127)
!1131 = !DILocation(line: 120, column: 7, scope: !1127)
!1132 = !DILocation(line: 120, column: 12, scope: !1127)
!1133 = !{i8 0, i8 2}
!1134 = !DILocation(line: 120, column: 25, scope: !1127)
!1135 = !DILocation(line: 120, column: 28, scope: !1127)
!1136 = !DILocation(line: 120, column: 34, scope: !1127)
!1137 = !DILocation(line: 119, column: 7, scope: !1123)
!1138 = !DILocation(line: 122, column: 33, scope: !1126)
!1139 = !DILocation(line: 0, scope: !1126)
!1140 = !DILocation(line: 123, column: 11, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1126, file: !80, line: 123, column: 11)
!1142 = !DILocation(line: 0, scope: !1141)
!1143 = !DILocation(line: 123, column: 11, scope: !1126)
!1144 = !DILocation(line: 124, column: 36, scope: !1141)
!1145 = !DILocation(line: 124, column: 9, scope: !1141)
!1146 = !DILocation(line: 127, column: 9, scope: !1141)
!1147 = !DILocation(line: 129, column: 14, scope: !1126)
!1148 = !DILocation(line: 129, column: 7, scope: !1126)
!1149 = !DILocation(line: 134, column: 42, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1123, file: !80, line: 134, column: 7)
!1151 = !DILocation(line: 134, column: 28, scope: !1150)
!1152 = !DILocation(line: 134, column: 50, scope: !1150)
!1153 = !DILocation(line: 134, column: 7, scope: !1123)
!1154 = !DILocation(line: 135, column: 12, scope: !1150)
!1155 = !DILocation(line: 135, column: 5, scope: !1150)
!1156 = !DILocation(line: 136, column: 1, scope: !1123)
!1157 = distinct !DISubprogram(name: "fdadvise", scope: !216, file: !216, line: 31, type: !1158, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1162)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !64, !1160, !1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !749, line: 63, baseType: !775)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1162 = !{!1163, !1164, !1165, !1166, !1167}
!1163 = !DILocalVariable(name: "fd", arg: 1, scope: !1157, file: !216, line: 31, type: !64)
!1164 = !DILocalVariable(name: "offset", arg: 2, scope: !1157, file: !216, line: 31, type: !1160)
!1165 = !DILocalVariable(name: "len", arg: 3, scope: !1157, file: !216, line: 31, type: !1160)
!1166 = !DILocalVariable(name: "advice", arg: 4, scope: !1157, file: !216, line: 31, type: !1161)
!1167 = !DILocalVariable(name: "__x", scope: !1168, file: !216, line: 34, type: !64)
!1168 = distinct !DILexicalBlock(scope: !1157, file: !216, line: 34, column: 3)
!1169 = !DILocation(line: 0, scope: !1157)
!1170 = !DILocation(line: 34, column: 3, scope: !1168)
!1171 = !DILocation(line: 0, scope: !1168)
!1172 = !DILocation(line: 36, column: 1, scope: !1157)
!1173 = !DISubprogram(name: "posix_fadvise", scope: !1102, file: !1102, line: 288, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!64, !64, !777, !777, !64}
!1176 = distinct !DISubprogram(name: "fadvise", scope: !216, file: !216, line: 39, type: !1177, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1213)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1179, !1161}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !881, line: 7, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !754, line: 49, size: 1728, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1181, file: !754, line: 51, baseType: !64, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1181, file: !754, line: 54, baseType: !43, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1181, file: !754, line: 55, baseType: !43, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1181, file: !754, line: 56, baseType: !43, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1181, file: !754, line: 57, baseType: !43, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1181, file: !754, line: 58, baseType: !43, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1181, file: !754, line: 59, baseType: !43, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1181, file: !754, line: 60, baseType: !43, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1181, file: !754, line: 61, baseType: !43, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1181, file: !754, line: 64, baseType: !43, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1181, file: !754, line: 65, baseType: !43, size: 64, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1181, file: !754, line: 66, baseType: !43, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1181, file: !754, line: 68, baseType: !769, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1181, file: !754, line: 70, baseType: !1197, size: 64, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1181, file: !754, line: 72, baseType: !64, size: 32, offset: 896)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1181, file: !754, line: 73, baseType: !64, size: 32, offset: 928)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1181, file: !754, line: 74, baseType: !775, size: 64, offset: 960)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1181, file: !754, line: 77, baseType: !154, size: 16, offset: 1024)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1181, file: !754, line: 78, baseType: !780, size: 8, offset: 1040)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1181, file: !754, line: 79, baseType: !782, size: 8, offset: 1048)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1181, file: !754, line: 81, baseType: !786, size: 64, offset: 1088)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1181, file: !754, line: 89, baseType: !789, size: 64, offset: 1152)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1181, file: !754, line: 91, baseType: !791, size: 64, offset: 1216)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1181, file: !754, line: 92, baseType: !794, size: 64, offset: 1280)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1181, file: !754, line: 93, baseType: !1197, size: 64, offset: 1344)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1181, file: !754, line: 94, baseType: !45, size: 64, offset: 1408)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1181, file: !754, line: 95, baseType: !48, size: 64, offset: 1472)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1181, file: !754, line: 96, baseType: !64, size: 32, offset: 1536)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1181, file: !754, line: 98, baseType: !801, size: 160, offset: 1568)
!1213 = !{!1214, !1215}
!1214 = !DILocalVariable(name: "fp", arg: 1, scope: !1176, file: !216, line: 39, type: !1179)
!1215 = !DILocalVariable(name: "advice", arg: 2, scope: !1176, file: !216, line: 39, type: !1161)
!1216 = !DILocation(line: 0, scope: !1176)
!1217 = !DILocation(line: 41, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1176, file: !216, line: 41, column: 7)
!1219 = !DILocation(line: 41, column: 7, scope: !1176)
!1220 = !DILocation(line: 42, column: 15, scope: !1218)
!1221 = !DILocation(line: 0, scope: !1157, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 42, column: 5, scope: !1218)
!1223 = !DILocation(line: 34, column: 3, scope: !1168, inlinedAt: !1222)
!1224 = !DILocation(line: 0, scope: !1168, inlinedAt: !1222)
!1225 = !DILocation(line: 42, column: 5, scope: !1218)
!1226 = !DILocation(line: 43, column: 1, scope: !1176)
!1227 = !DISubprogram(name: "fileno", scope: !749, file: !749, line: 785, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!64, !1197}
!1230 = distinct !DISubprogram(name: "human_readable", scope: !93, file: !93, line: 153, type: !1231, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1233)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!43, !884, !43, !64, !884, !884}
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1282, !1283, !1288, !1291, !1292, !1293, !1296, !1297, !1298, !1299, !1302, !1309, !1310, !1312, !1317, !1318}
!1234 = !DILocalVariable(name: "n", arg: 1, scope: !1230, file: !93, line: 153, type: !884)
!1235 = !DILocalVariable(name: "buf", arg: 2, scope: !1230, file: !93, line: 153, type: !43)
!1236 = !DILocalVariable(name: "opts", arg: 3, scope: !1230, file: !93, line: 153, type: !64)
!1237 = !DILocalVariable(name: "from_block_size", arg: 4, scope: !1230, file: !93, line: 154, type: !884)
!1238 = !DILocalVariable(name: "to_block_size", arg: 5, scope: !1230, file: !93, line: 154, type: !884)
!1239 = !DILocalVariable(name: "inexact_style", scope: !1230, file: !93, line: 156, type: !64)
!1240 = !DILocalVariable(name: "base", scope: !1230, file: !93, line: 158, type: !7)
!1241 = !DILocalVariable(name: "amt", scope: !1230, file: !93, line: 159, type: !884)
!1242 = !DILocalVariable(name: "tenths", scope: !1230, file: !93, line: 160, type: !64)
!1243 = !DILocalVariable(name: "exponent", scope: !1230, file: !93, line: 161, type: !64)
!1244 = !DILocalVariable(name: "exponent_max", scope: !1230, file: !93, line: 162, type: !64)
!1245 = !DILocalVariable(name: "p", scope: !1230, file: !93, line: 163, type: !43)
!1246 = !DILocalVariable(name: "psuffix", scope: !1230, file: !93, line: 164, type: !43)
!1247 = !DILocalVariable(name: "integerlim", scope: !1230, file: !93, line: 165, type: !61)
!1248 = !DILocalVariable(name: "rounding", scope: !1230, file: !93, line: 171, type: !64)
!1249 = !DILocalVariable(name: "decimal_point", scope: !1230, file: !93, line: 173, type: !61)
!1250 = !DILocalVariable(name: "decimal_pointlen", scope: !1230, file: !93, line: 174, type: !48)
!1251 = !DILocalVariable(name: "grouping", scope: !1230, file: !93, line: 175, type: !61)
!1252 = !DILocalVariable(name: "thousands_sep", scope: !1230, file: !93, line: 176, type: !61)
!1253 = !DILocalVariable(name: "l", scope: !1230, file: !93, line: 177, type: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1256)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !805, line: 51, size: 768, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !1256, file: !805, line: 55, baseType: !43, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !1256, file: !805, line: 56, baseType: !43, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !1256, file: !805, line: 62, baseType: !43, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !1256, file: !805, line: 68, baseType: !43, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !1256, file: !805, line: 69, baseType: !43, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !1256, file: !805, line: 70, baseType: !43, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !1256, file: !805, line: 71, baseType: !43, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !1256, file: !805, line: 72, baseType: !43, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !1256, file: !805, line: 73, baseType: !43, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !1256, file: !805, line: 74, baseType: !43, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !1256, file: !805, line: 75, baseType: !44, size: 8, offset: 640)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !1256, file: !805, line: 76, baseType: !44, size: 8, offset: 648)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !1256, file: !805, line: 78, baseType: !44, size: 8, offset: 656)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !1256, file: !805, line: 80, baseType: !44, size: 8, offset: 664)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !1256, file: !805, line: 82, baseType: !44, size: 8, offset: 672)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !1256, file: !805, line: 84, baseType: !44, size: 8, offset: 680)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !1256, file: !805, line: 91, baseType: !44, size: 8, offset: 688)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !1256, file: !805, line: 92, baseType: !44, size: 8, offset: 696)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !1256, file: !805, line: 95, baseType: !44, size: 8, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !1256, file: !805, line: 97, baseType: !44, size: 8, offset: 712)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !1256, file: !805, line: 99, baseType: !44, size: 8, offset: 720)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !1256, file: !805, line: 101, baseType: !44, size: 8, offset: 728)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !1256, file: !805, line: 108, baseType: !44, size: 8, offset: 736)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !1256, file: !805, line: 109, baseType: !44, size: 8, offset: 744)
!1282 = !DILocalVariable(name: "pointlen", scope: !1230, file: !93, line: 178, type: !48)
!1283 = !DILocalVariable(name: "multiplier", scope: !1284, file: !93, line: 199, type: !884)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !93, line: 198, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !93, line: 197, column: 11)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !93, line: 196, column: 5)
!1287 = distinct !DILexicalBlock(scope: !1230, file: !93, line: 195, column: 7)
!1288 = !DILocalVariable(name: "divisor", scope: !1289, file: !93, line: 211, type: !884)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !93, line: 210, column: 5)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !93, line: 209, column: 12)
!1291 = !DILocalVariable(name: "r10", scope: !1289, file: !93, line: 212, type: !884)
!1292 = !DILocalVariable(name: "r2", scope: !1289, file: !93, line: 213, type: !884)
!1293 = !DILocalVariable(name: "dto_block_size", scope: !1294, file: !93, line: 225, type: !1295)
!1294 = distinct !DILexicalBlock(scope: !1230, file: !93, line: 220, column: 3)
!1295 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1296 = !DILocalVariable(name: "damt", scope: !1294, file: !93, line: 226, type: !1295)
!1297 = !DILocalVariable(name: "buflen", scope: !1294, file: !93, line: 227, type: !48)
!1298 = !DILocalVariable(name: "nonintegerlen", scope: !1294, file: !93, line: 228, type: !48)
!1299 = !DILocalVariable(name: "e", scope: !1300, file: !93, line: 238, type: !1295)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !93, line: 237, column: 7)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !93, line: 230, column: 9)
!1302 = !DILocalVariable(name: "r10", scope: !1303, file: !93, line: 286, type: !7)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !93, line: 285, column: 15)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !93, line: 283, column: 11)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !93, line: 282, column: 13)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !93, line: 279, column: 7)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !93, line: 278, column: 9)
!1308 = distinct !DILexicalBlock(scope: !1230, file: !93, line: 272, column: 3)
!1309 = !DILocalVariable(name: "r2", scope: !1303, file: !93, line: 287, type: !7)
!1310 = !DILocalVariable(name: "digit", scope: !1311, file: !93, line: 349, type: !64)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !93, line: 348, column: 7)
!1312 = !DILocalVariable(name: "power", scope: !1313, file: !93, line: 363, type: !884)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !93, line: 362, column: 9)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !93, line: 361, column: 11)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !93, line: 360, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1230, file: !93, line: 359, column: 7)
!1317 = !DILabel(scope: !1230, name: "use_integer_arithmetic", file: !93, line: 271)
!1318 = !DILabel(scope: !1230, name: "do_grouping", file: !93, line: 355)
!1319 = !DILocation(line: 225, column: 17, scope: !1294)
!1320 = !DILocation(line: 226, column: 17, scope: !1294)
!1321 = !DILocation(line: 238, column: 21, scope: !1300)
!1322 = !DILocation(line: 0, scope: !1230)
!1323 = !DILocation(line: 157, column: 10, scope: !1230)
!1324 = !DILocation(line: 158, column: 28, scope: !1230)
!1325 = !DILocation(line: 158, column: 23, scope: !1230)
!1326 = !DILocation(line: 177, column: 27, scope: !1230)
!1327 = !DILocation(line: 178, column: 32, scope: !1230)
!1328 = !{!1329, !679, i64 0}
!1329 = !{!"lconv", !679, i64 0, !679, i64 8, !679, i64 16, !679, i64 24, !679, i64 32, !679, i64 40, !679, i64 48, !679, i64 56, !679, i64 64, !679, i64 72, !680, i64 80, !680, i64 81, !680, i64 82, !680, i64 83, !680, i64 84, !680, i64 85, !680, i64 86, !680, i64 87, !680, i64 88, !680, i64 89, !680, i64 90, !680, i64 91, !680, i64 92, !680, i64 93}
!1330 = !DILocation(line: 178, column: 21, scope: !1230)
!1331 = !DILocation(line: 179, column: 20, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1230, file: !93, line: 179, column: 7)
!1333 = !DILocation(line: 184, column: 17, scope: !1230)
!1334 = !{!1329, !679, i64 16}
!1335 = !DILocation(line: 185, column: 18, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1230, file: !93, line: 185, column: 7)
!1337 = !{!1329, !679, i64 8}
!1338 = !DILocation(line: 185, column: 7, scope: !1336)
!1339 = !DILocation(line: 185, column: 33, scope: !1336)
!1340 = !DILocation(line: 185, column: 7, scope: !1230)
!1341 = !DILocation(line: 189, column: 46, scope: !1230)
!1342 = !DILocation(line: 195, column: 21, scope: !1287)
!1343 = !DILocation(line: 195, column: 7, scope: !1230)
!1344 = !DILocation(line: 197, column: 27, scope: !1285)
!1345 = !DILocation(line: 199, column: 50, scope: !1284)
!1346 = !DILocation(line: 197, column: 43, scope: !1285)
!1347 = !DILocation(line: 197, column: 11, scope: !1286)
!1348 = !DILocation(line: 0, scope: !1284)
!1349 = !DILocation(line: 200, column: 19, scope: !1284)
!1350 = !DILocation(line: 209, column: 28, scope: !1290)
!1351 = !DILocation(line: 209, column: 33, scope: !1290)
!1352 = !DILocation(line: 209, column: 50, scope: !1290)
!1353 = !DILocation(line: 211, column: 41, scope: !1289)
!1354 = !DILocation(line: 209, column: 68, scope: !1290)
!1355 = !DILocation(line: 209, column: 12, scope: !1287)
!1356 = !DILocation(line: 0, scope: !1289)
!1357 = !DILocation(line: 212, column: 26, scope: !1289)
!1358 = !DILocation(line: 212, column: 37, scope: !1289)
!1359 = !DILocation(line: 213, column: 27, scope: !1289)
!1360 = !DILocation(line: 213, column: 38, scope: !1289)
!1361 = !DILocation(line: 214, column: 15, scope: !1289)
!1362 = !DILocation(line: 215, column: 20, scope: !1289)
!1363 = !DILocation(line: 215, column: 16, scope: !1289)
!1364 = !DILocation(line: 216, column: 21, scope: !1289)
!1365 = !DILocation(line: 216, column: 18, scope: !1289)
!1366 = !DILocation(line: 225, column: 34, scope: !1294)
!1367 = !DILocation(line: 0, scope: !1294)
!1368 = !DILocation(line: 226, column: 24, scope: !1294)
!1369 = !DILocation(line: 226, column: 29, scope: !1294)
!1370 = !DILocation(line: 226, column: 45, scope: !1294)
!1371 = !DILocation(line: 226, column: 26, scope: !1294)
!1372 = !DILocation(line: 230, column: 17, scope: !1301)
!1373 = !DILocation(line: 230, column: 9, scope: !1294)
!1374 = !DILocation(line: 0, scope: !1300)
!1375 = !DILocation(line: 246, column: 18, scope: !1300)
!1376 = !DILocation(line: 246, column: 25, scope: !1300)
!1377 = !DILocation(line: 245, column: 11, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1300, file: !93, line: 242, column: 11)
!1379 = distinct !{!1379, !1380, !1381, !724}
!1380 = !DILocation(line: 241, column: 9, scope: !1300)
!1381 = !DILocation(line: 246, column: 59, scope: !1300)
!1382 = !DILocalVariable(name: "inexact_style", arg: 1, scope: !1383, file: !93, line: 54, type: !64)
!1383 = distinct !DISubprogram(name: "adjust_value", scope: !93, file: !93, line: 54, type: !1384, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1295, !64, !1295}
!1386 = !{!1382, !1387, !1388}
!1387 = !DILocalVariable(name: "value", arg: 2, scope: !1383, file: !93, line: 54, type: !1295)
!1388 = !DILocalVariable(name: "u", scope: !1389, file: !93, line: 62, type: !884)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !93, line: 61, column: 5)
!1390 = distinct !DILexicalBlock(scope: !1383, file: !93, line: 60, column: 7)
!1391 = !DILocation(line: 0, scope: !1383, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 232, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1301, file: !93, line: 231, column: 7)
!1394 = !DILocation(line: 60, column: 21, scope: !1390, inlinedAt: !1392)
!1395 = !DILocation(line: 60, column: 47, scope: !1390, inlinedAt: !1392)
!1396 = !DILocation(line: 62, column: 21, scope: !1389, inlinedAt: !1392)
!1397 = !DILocation(line: 0, scope: !1389, inlinedAt: !1392)
!1398 = !DILocation(line: 63, column: 34, scope: !1389, inlinedAt: !1392)
!1399 = !DILocation(line: 63, column: 51, scope: !1389, inlinedAt: !1392)
!1400 = !DILocation(line: 63, column: 19, scope: !1389, inlinedAt: !1392)
!1401 = !DILocation(line: 63, column: 17, scope: !1389, inlinedAt: !1392)
!1402 = !DILocation(line: 63, column: 15, scope: !1389, inlinedAt: !1392)
!1403 = !DILocation(line: 64, column: 5, scope: !1389, inlinedAt: !1392)
!1404 = !DILocation(line: 232, column: 9, scope: !1393)
!1405 = !DILocation(line: 233, column: 18, scope: !1393)
!1406 = !DILocation(line: 235, column: 7, scope: !1393)
!1407 = !DILocation(line: 243, column: 15, scope: !1378)
!1408 = !DILocation(line: 244, column: 21, scope: !1378)
!1409 = !DILocation(line: 248, column: 14, scope: !1300)
!1410 = !DILocation(line: 0, scope: !1383, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 250, column: 9, scope: !1300)
!1412 = !DILocation(line: 60, column: 21, scope: !1390, inlinedAt: !1411)
!1413 = !DILocation(line: 60, column: 47, scope: !1390, inlinedAt: !1411)
!1414 = !DILocation(line: 62, column: 21, scope: !1389, inlinedAt: !1411)
!1415 = !DILocation(line: 0, scope: !1389, inlinedAt: !1411)
!1416 = !DILocation(line: 63, column: 34, scope: !1389, inlinedAt: !1411)
!1417 = !DILocation(line: 63, column: 51, scope: !1389, inlinedAt: !1411)
!1418 = !DILocation(line: 63, column: 19, scope: !1389, inlinedAt: !1411)
!1419 = !DILocation(line: 63, column: 17, scope: !1389, inlinedAt: !1411)
!1420 = !DILocation(line: 63, column: 15, scope: !1389, inlinedAt: !1411)
!1421 = !DILocation(line: 64, column: 5, scope: !1389, inlinedAt: !1411)
!1422 = !DILocation(line: 250, column: 9, scope: !1300)
!1423 = !DILocation(line: 251, column: 18, scope: !1300)
!1424 = !DILocation(line: 252, column: 42, scope: !1300)
!1425 = !DILocation(line: 254, column: 15, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1300, file: !93, line: 254, column: 13)
!1427 = !DILocation(line: 254, column: 31, scope: !1426)
!1428 = !DILocation(line: 254, column: 60, scope: !1426)
!1429 = !DILocation(line: 255, column: 13, scope: !1426)
!1430 = !DILocation(line: 255, column: 23, scope: !1426)
!1431 = !DILocation(line: 256, column: 17, scope: !1426)
!1432 = !DILocation(line: 256, column: 31, scope: !1426)
!1433 = !DILocation(line: 256, column: 20, scope: !1426)
!1434 = !DILocation(line: 256, column: 36, scope: !1426)
!1435 = !DILocation(line: 254, column: 13, scope: !1300)
!1436 = !DILocation(line: 258, column: 13, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1426, file: !93, line: 257, column: 11)
!1438 = !DILocation(line: 0, scope: !1383, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 258, column: 13, scope: !1437)
!1440 = !DILocation(line: 60, column: 47, scope: !1390, inlinedAt: !1439)
!1441 = !DILocation(line: 62, column: 21, scope: !1389, inlinedAt: !1439)
!1442 = !DILocation(line: 0, scope: !1389, inlinedAt: !1439)
!1443 = !DILocation(line: 63, column: 34, scope: !1389, inlinedAt: !1439)
!1444 = !DILocation(line: 63, column: 51, scope: !1389, inlinedAt: !1439)
!1445 = !DILocation(line: 63, column: 19, scope: !1389, inlinedAt: !1439)
!1446 = !DILocation(line: 63, column: 17, scope: !1389, inlinedAt: !1439)
!1447 = !DILocation(line: 63, column: 15, scope: !1389, inlinedAt: !1439)
!1448 = !DILocation(line: 64, column: 5, scope: !1389, inlinedAt: !1439)
!1449 = !DILocation(line: 260, column: 22, scope: !1437)
!1450 = !DILocation(line: 262, column: 11, scope: !1437)
!1451 = !DILocation(line: 0, scope: !1301)
!1452 = !DILocation(line: 265, column: 17, scope: !1294)
!1453 = !DILocalVariable(name: "__dest", arg: 1, scope: !1454, file: !1455, line: 34, type: !45)
!1454 = distinct !DISubprogram(name: "memmove", scope: !1455, file: !1455, line: 34, type: !1456, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1458)
!1455 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!45, !45, !104, !48}
!1458 = !{!1453, !1459, !1460}
!1459 = !DILocalVariable(name: "__src", arg: 2, scope: !1454, file: !1455, line: 34, type: !104)
!1460 = !DILocalVariable(name: "__len", arg: 3, scope: !1454, file: !1455, line: 34, type: !48)
!1461 = !DILocation(line: 0, scope: !1454, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 266, column: 5, scope: !1294)
!1463 = !DILocation(line: 36, column: 10, scope: !1454, inlinedAt: !1462)
!1464 = !DILocation(line: 267, column: 20, scope: !1294)
!1465 = !DILocation(line: 267, column: 29, scope: !1294)
!1466 = !DILocation(line: 269, column: 3, scope: !1230)
!1467 = !DILocation(line: 0, scope: !1287)
!1468 = !DILocation(line: 271, column: 2, scope: !1230)
!1469 = !DILocation(line: 278, column: 14, scope: !1307)
!1470 = !DILocation(line: 278, column: 9, scope: !1308)
!1471 = !DILocation(line: 282, column: 13, scope: !1305)
!1472 = !DILocation(line: 282, column: 18, scope: !1305)
!1473 = !DILocation(line: 282, column: 13, scope: !1306)
!1474 = !DILocation(line: 0, scope: !1306)
!1475 = !DILocation(line: 286, column: 41, scope: !1303)
!1476 = !DILocation(line: 286, column: 36, scope: !1303)
!1477 = !DILocation(line: 0, scope: !1303)
!1478 = !DILocation(line: 287, column: 40, scope: !1303)
!1479 = !DILocation(line: 287, column: 48, scope: !1303)
!1480 = !DILocation(line: 287, column: 64, scope: !1303)
!1481 = !DILocation(line: 287, column: 52, scope: !1303)
!1482 = !DILocation(line: 288, column: 21, scope: !1303)
!1483 = !DILocation(line: 289, column: 30, scope: !1303)
!1484 = !DILocation(line: 290, column: 32, scope: !1303)
!1485 = !DILocation(line: 290, column: 29, scope: !1303)
!1486 = !DILocation(line: 291, column: 47, scope: !1303)
!1487 = !DILocation(line: 292, column: 46, scope: !1303)
!1488 = !DILocation(line: 292, column: 41, scope: !1303)
!1489 = !DILocation(line: 292, column: 33, scope: !1303)
!1490 = !DILocation(line: 293, column: 25, scope: !1303)
!1491 = !DILocation(line: 295, column: 25, scope: !1304)
!1492 = !DILocation(line: 295, column: 32, scope: !1304)
!1493 = !DILocation(line: 294, column: 15, scope: !1303)
!1494 = distinct !{!1494, !1495, !1496, !724}
!1495 = !DILocation(line: 284, column: 13, scope: !1304)
!1496 = !DILocation(line: 295, column: 58, scope: !1304)
!1497 = !DILocation(line: 297, column: 21, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1304, file: !93, line: 297, column: 17)
!1499 = !DILocation(line: 297, column: 17, scope: !1304)
!1500 = !DILocation(line: 299, column: 35, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !93, line: 299, column: 21)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !93, line: 298, column: 15)
!1503 = !DILocation(line: 299, column: 21, scope: !1502)
!1504 = !DILocation(line: 300, column: 46, scope: !1501)
!1505 = !DILocation(line: 300, column: 36, scope: !1501)
!1506 = !DILocation(line: 300, column: 25, scope: !1501)
!1507 = !DILocation(line: 299, column: 21, scope: !1501)
!1508 = !DILocation(line: 301, column: 37, scope: !1501)
!1509 = !DILocation(line: 301, column: 54, scope: !1501)
!1510 = !DILocation(line: 303, column: 27, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1501, file: !93, line: 302, column: 19)
!1512 = !DILocation(line: 306, column: 32, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1511, file: !93, line: 306, column: 25)
!1514 = !DILocation(line: 313, column: 25, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1502, file: !93, line: 313, column: 21)
!1516 = !DILocation(line: 314, column: 21, scope: !1515)
!1517 = !DILocation(line: 314, column: 25, scope: !1515)
!1518 = !DILocation(line: 314, column: 32, scope: !1515)
!1519 = !DILocation(line: 316, column: 28, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !93, line: 315, column: 19)
!1521 = !DILocation(line: 316, column: 22, scope: !1520)
!1522 = !DILocation(line: 316, column: 26, scope: !1520)
!1523 = !DILocation(line: 317, column: 23, scope: !1520)
!1524 = !DILocalVariable(name: "__dest", arg: 1, scope: !1525, file: !1455, line: 26, type: !1528)
!1525 = distinct !DISubprogram(name: "memcpy", scope: !1455, file: !1455, line: 26, type: !1526, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1530)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!45, !1528, !1529, !48}
!1528 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!1529 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !104)
!1530 = !{!1524, !1531, !1532}
!1531 = !DILocalVariable(name: "__src", arg: 2, scope: !1525, file: !1455, line: 26, type: !1529)
!1532 = !DILocalVariable(name: "__len", arg: 3, scope: !1525, file: !1455, line: 26, type: !48)
!1533 = !DILocation(line: 0, scope: !1525, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 318, column: 21, scope: !1520)
!1535 = !DILocation(line: 29, column: 10, scope: !1525, inlinedAt: !1534)
!1536 = !DILocation(line: 320, column: 19, scope: !1520)
!1537 = !DILocation(line: 325, column: 9, scope: !1308)
!1538 = !DILocation(line: 326, column: 29, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1308, file: !93, line: 325, column: 9)
!1540 = !DILocation(line: 326, column: 45, scope: !1539)
!1541 = !DILocation(line: 326, column: 27, scope: !1539)
!1542 = !DILocation(line: 326, column: 22, scope: !1539)
!1543 = !DILocation(line: 326, column: 13, scope: !1539)
!1544 = !DILocation(line: 325, column: 9, scope: !1539)
!1545 = !DILocation(line: 327, column: 56, scope: !1539)
!1546 = !DILocation(line: 327, column: 47, scope: !1539)
!1547 = !DILocation(line: 329, column: 12, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !93, line: 328, column: 7)
!1549 = !DILocation(line: 332, column: 13, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1548, file: !93, line: 331, column: 13)
!1551 = !DILocation(line: 334, column: 21, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1550, file: !93, line: 333, column: 11)
!1553 = !DILocation(line: 335, column: 25, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1552, file: !93, line: 335, column: 17)
!1555 = !DILocation(line: 335, column: 17, scope: !1552)
!1556 = !DILocation(line: 337, column: 18, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !93, line: 336, column: 15)
!1558 = !DILocation(line: 337, column: 22, scope: !1557)
!1559 = !DILocation(line: 338, column: 19, scope: !1557)
!1560 = !DILocation(line: 0, scope: !1525, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 339, column: 17, scope: !1557)
!1562 = !DILocation(line: 29, column: 10, scope: !1525, inlinedAt: !1561)
!1563 = !DILocation(line: 340, column: 15, scope: !1557)
!1564 = !DILocation(line: 0, scope: !1308)
!1565 = !DILocation(line: 347, column: 5, scope: !1308)
!1566 = !DILocation(line: 349, column: 25, scope: !1311)
!1567 = !DILocation(line: 349, column: 21, scope: !1311)
!1568 = !DILocation(line: 0, scope: !1311)
!1569 = !DILocation(line: 350, column: 22, scope: !1311)
!1570 = !DILocation(line: 350, column: 10, scope: !1311)
!1571 = !DILocation(line: 350, column: 14, scope: !1311)
!1572 = !DILocation(line: 352, column: 17, scope: !1308)
!1573 = !DILocation(line: 352, column: 24, scope: !1308)
!1574 = !DILocation(line: 351, column: 7, scope: !1311)
!1575 = distinct !{!1575, !1565, !1576, !724}
!1576 = !DILocation(line: 352, column: 28, scope: !1308)
!1577 = !DILocation(line: 355, column: 2, scope: !1230)
!1578 = !DILocation(line: 356, column: 12, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1230, file: !93, line: 356, column: 7)
!1580 = !DILocation(line: 356, column: 7, scope: !1230)
!1581 = !DILocation(line: 357, column: 37, scope: !1579)
!1582 = !DILocalVariable(name: "number", arg: 1, scope: !1583, file: !93, line: 79, type: !43)
!1583 = distinct !DISubprogram(name: "group_number", scope: !93, file: !93, line: 79, type: !1584, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1586)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!43, !43, !48, !61, !61}
!1586 = !{!1582, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1598}
!1587 = !DILocalVariable(name: "numberlen", arg: 2, scope: !1583, file: !93, line: 79, type: !48)
!1588 = !DILocalVariable(name: "grouping", arg: 3, scope: !1583, file: !93, line: 80, type: !61)
!1589 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !1583, file: !93, line: 80, type: !61)
!1590 = !DILocalVariable(name: "d", scope: !1583, file: !93, line: 82, type: !43)
!1591 = !DILocalVariable(name: "grouplen", scope: !1583, file: !93, line: 83, type: !48)
!1592 = !DILocalVariable(name: "thousands_seplen", scope: !1583, file: !93, line: 84, type: !48)
!1593 = !DILocalVariable(name: "i", scope: !1583, file: !93, line: 85, type: !48)
!1594 = !DILocalVariable(name: "buf", scope: !1583, file: !93, line: 89, type: !1595)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 328, elements: !1596)
!1596 = !{!1597}
!1597 = !DISubrange(count: 41)
!1598 = !DILocalVariable(name: "g", scope: !1599, file: !93, line: 96, type: !47)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !93, line: 95, column: 5)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !93, line: 94, column: 3)
!1601 = distinct !DILexicalBlock(scope: !1583, file: !93, line: 94, column: 3)
!1602 = !DILocation(line: 0, scope: !1583, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 357, column: 9, scope: !1579)
!1604 = !DILocation(line: 84, column: 29, scope: !1583, inlinedAt: !1603)
!1605 = !DILocation(line: 89, column: 3, scope: !1583, inlinedAt: !1603)
!1606 = !DILocation(line: 89, column: 8, scope: !1583, inlinedAt: !1603)
!1607 = !DILocation(line: 0, scope: !1525, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 91, column: 3, scope: !1583, inlinedAt: !1603)
!1609 = !DILocation(line: 29, column: 10, scope: !1525, inlinedAt: !1608)
!1610 = !DILocation(line: 96, column: 25, scope: !1599, inlinedAt: !1603)
!1611 = !DILocation(line: 0, scope: !1599, inlinedAt: !1603)
!1612 = !DILocation(line: 98, column: 11, scope: !1613, inlinedAt: !1603)
!1613 = distinct !DILexicalBlock(scope: !1599, file: !93, line: 98, column: 11)
!1614 = !DILocation(line: 98, column: 11, scope: !1599, inlinedAt: !1603)
!1615 = !DILocation(line: 104, column: 13, scope: !1616, inlinedAt: !1603)
!1616 = distinct !DILexicalBlock(scope: !1599, file: !93, line: 104, column: 11)
!1617 = !DILocation(line: 104, column: 11, scope: !1599, inlinedAt: !1603)
!1618 = !DILocation(line: 107, column: 9, scope: !1599, inlinedAt: !1603)
!1619 = !DILocation(line: 108, column: 9, scope: !1599, inlinedAt: !1603)
!1620 = !DILocation(line: 109, column: 22, scope: !1599, inlinedAt: !1603)
!1621 = !DILocation(line: 0, scope: !1525, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 109, column: 7, scope: !1599, inlinedAt: !1603)
!1623 = !DILocation(line: 29, column: 10, scope: !1525, inlinedAt: !1622)
!1624 = !DILocation(line: 110, column: 13, scope: !1625, inlinedAt: !1603)
!1625 = distinct !DILexicalBlock(scope: !1599, file: !93, line: 110, column: 11)
!1626 = !DILocation(line: 110, column: 11, scope: !1599, inlinedAt: !1603)
!1627 = !DILocation(line: 113, column: 9, scope: !1599, inlinedAt: !1603)
!1628 = !DILocation(line: 0, scope: !1525, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 114, column: 7, scope: !1599, inlinedAt: !1603)
!1630 = !DILocation(line: 29, column: 10, scope: !1525, inlinedAt: !1629)
!1631 = !DILocation(line: 116, column: 1, scope: !1583, inlinedAt: !1603)
!1632 = !DILocation(line: 357, column: 5, scope: !1579)
!1633 = !DILocation(line: 359, column: 12, scope: !1316)
!1634 = !DILocation(line: 359, column: 7, scope: !1230)
!1635 = !DILocation(line: 361, column: 20, scope: !1314)
!1636 = !DILocation(line: 361, column: 11, scope: !1315)
!1637 = !DILocation(line: 0, scope: !1313)
!1638 = !DILocation(line: 365, column: 33, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !93, line: 365, column: 11)
!1640 = distinct !DILexicalBlock(scope: !1313, file: !93, line: 365, column: 11)
!1641 = !DILocation(line: 365, column: 11, scope: !1640)
!1642 = distinct !{!1642, !1641, !1643, !724}
!1643 = !DILocation(line: 367, column: 15, scope: !1640)
!1644 = !DILocation(line: 370, column: 29, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1315, file: !93, line: 370, column: 11)
!1646 = !DILocation(line: 370, column: 21, scope: !1645)
!1647 = !DILocation(line: 370, column: 41, scope: !1645)
!1648 = !DILocation(line: 371, column: 17, scope: !1645)
!1649 = !DILocation(line: 371, column: 20, scope: !1645)
!1650 = !DILocation(line: 371, column: 9, scope: !1645)
!1651 = !DILocation(line: 373, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1315, file: !93, line: 373, column: 11)
!1653 = !DILocation(line: 373, column: 11, scope: !1315)
!1654 = !DILocation(line: 374, column: 31, scope: !1652)
!1655 = !DILocation(line: 374, column: 50, scope: !1652)
!1656 = !DILocation(line: 376, column: 25, scope: !1652)
!1657 = !DILocation(line: 374, column: 23, scope: !1652)
!1658 = !DILocation(line: 374, column: 17, scope: !1652)
!1659 = !DILocation(line: 374, column: 20, scope: !1652)
!1660 = !DILocation(line: 374, column: 9, scope: !1652)
!1661 = !DILocation(line: 0, scope: !1315)
!1662 = !DILocation(line: 378, column: 16, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1315, file: !93, line: 378, column: 11)
!1664 = !DILocation(line: 378, column: 11, scope: !1315)
!1665 = !DILocation(line: 380, column: 40, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !93, line: 380, column: 15)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !93, line: 379, column: 9)
!1668 = !DILocation(line: 381, column: 21, scope: !1666)
!1669 = !DILocation(line: 381, column: 24, scope: !1666)
!1670 = !DILocation(line: 381, column: 13, scope: !1666)
!1671 = !DILocation(line: 382, column: 19, scope: !1667)
!1672 = !DILocation(line: 382, column: 22, scope: !1667)
!1673 = !DILocation(line: 383, column: 9, scope: !1667)
!1674 = !DILocation(line: 386, column: 12, scope: !1230)
!1675 = !DILocation(line: 389, column: 1, scope: !1230)
!1676 = !DILocation(line: 365, column: 56, scope: !1639)
!1677 = !DISubprogram(name: "localeconv", scope: !805, file: !805, line: 125, type: !1678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1681 = distinct !DISubprogram(name: "human_options", scope: !93, file: !93, line: 462, type: !1682, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1685)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!95, !61, !66, !1684}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!1685 = !{!1686, !1687, !1688, !1689}
!1686 = !DILocalVariable(name: "spec", arg: 1, scope: !1681, file: !93, line: 462, type: !61)
!1687 = !DILocalVariable(name: "opts", arg: 2, scope: !1681, file: !93, line: 462, type: !66)
!1688 = !DILocalVariable(name: "block_size", arg: 3, scope: !1681, file: !93, line: 462, type: !1684)
!1689 = !DILocalVariable(name: "e", scope: !1681, file: !93, line: 464, type: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !96, line: 38, baseType: !95)
!1691 = !DILocation(line: 0, scope: !1681)
!1692 = !DILocalVariable(name: "spec", arg: 1, scope: !1693, file: !93, line: 412, type: !61)
!1693 = distinct !DISubprogram(name: "humblock", scope: !93, file: !93, line: 412, type: !1694, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!1690, !61, !1684, !66}
!1696 = !{!1692, !1697, !1698, !1699, !1700, !1701, !1706}
!1697 = !DILocalVariable(name: "block_size", arg: 2, scope: !1693, file: !93, line: 412, type: !1684)
!1698 = !DILocalVariable(name: "options", arg: 3, scope: !1693, file: !93, line: 412, type: !66)
!1699 = !DILocalVariable(name: "i", scope: !1693, file: !93, line: 414, type: !64)
!1700 = !DILocalVariable(name: "opts", scope: !1693, file: !93, line: 415, type: !64)
!1701 = !DILocalVariable(name: "ptr", scope: !1702, file: !93, line: 436, type: !43)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !93, line: 435, column: 9)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !93, line: 429, column: 11)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !93, line: 422, column: 5)
!1705 = distinct !DILexicalBlock(scope: !1693, file: !93, line: 417, column: 7)
!1706 = !DILocalVariable(name: "e", scope: !1702, file: !93, line: 437, type: !1690)
!1707 = !DILocation(line: 0, scope: !1693, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 464, column: 20, scope: !1681)
!1709 = !DILocation(line: 417, column: 9, scope: !1705, inlinedAt: !1708)
!1710 = !DILocation(line: 418, column: 7, scope: !1705, inlinedAt: !1708)
!1711 = !DILocation(line: 418, column: 20, scope: !1705, inlinedAt: !1708)
!1712 = !DILocation(line: 418, column: 18, scope: !1705, inlinedAt: !1708)
!1713 = !DILocation(line: 419, column: 7, scope: !1705, inlinedAt: !1708)
!1714 = !DILocation(line: 419, column: 20, scope: !1705, inlinedAt: !1708)
!1715 = !DILocation(line: 419, column: 18, scope: !1705, inlinedAt: !1708)
!1716 = !DILocation(line: 417, column: 7, scope: !1693, inlinedAt: !1708)
!1717 = !DILocation(line: 408, column: 10, scope: !1718, inlinedAt: !1721)
!1718 = distinct !DISubprogram(name: "default_block_size", scope: !93, file: !93, line: 406, type: !1719, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !75)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!884}
!1721 = distinct !DILocation(line: 420, column: 19, scope: !1705, inlinedAt: !1708)
!1722 = !DILocation(line: 420, column: 17, scope: !1705, inlinedAt: !1708)
!1723 = !{!927, !927, i64 0}
!1724 = !DILocation(line: 420, column: 5, scope: !1705, inlinedAt: !1708)
!1725 = !DILocation(line: 423, column: 11, scope: !1726, inlinedAt: !1708)
!1726 = distinct !DILexicalBlock(scope: !1704, file: !93, line: 423, column: 11)
!1727 = !DILocation(line: 423, column: 17, scope: !1726, inlinedAt: !1708)
!1728 = !DILocation(line: 423, column: 11, scope: !1704, inlinedAt: !1708)
!1729 = !DILocation(line: 429, column: 21, scope: !1703, inlinedAt: !1708)
!1730 = !DILocation(line: 429, column: 13, scope: !1703, inlinedAt: !1708)
!1731 = !DILocation(line: 429, column: 11, scope: !1704, inlinedAt: !1708)
!1732 = !DILocation(line: 431, column: 19, scope: !1733, inlinedAt: !1708)
!1733 = distinct !DILexicalBlock(scope: !1703, file: !93, line: 430, column: 9)
!1734 = !DILocation(line: 431, column: 16, scope: !1733, inlinedAt: !1708)
!1735 = !DILocation(line: 432, column: 23, scope: !1733, inlinedAt: !1708)
!1736 = !DILocation(line: 433, column: 9, scope: !1733, inlinedAt: !1708)
!1737 = !DILocation(line: 436, column: 11, scope: !1702, inlinedAt: !1708)
!1738 = !DILocation(line: 0, scope: !1702, inlinedAt: !1708)
!1739 = !DILocation(line: 437, column: 28, scope: !1702, inlinedAt: !1708)
!1740 = !DILocation(line: 439, column: 17, scope: !1741, inlinedAt: !1708)
!1741 = distinct !DILexicalBlock(scope: !1702, file: !93, line: 439, column: 15)
!1742 = !DILocation(line: 439, column: 15, scope: !1702, inlinedAt: !1708)
!1743 = !DILocation(line: 444, column: 28, scope: !1744, inlinedAt: !1708)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !93, line: 444, column: 11)
!1745 = distinct !DILexicalBlock(scope: !1702, file: !93, line: 444, column: 11)
!1746 = !DILocation(line: 444, column: 34, scope: !1744, inlinedAt: !1708)
!1747 = !DILocation(line: 444, column: 11, scope: !1745, inlinedAt: !1708)
!1748 = !DILocation(line: 441, column: 24, scope: !1749, inlinedAt: !1708)
!1749 = distinct !DILexicalBlock(scope: !1741, file: !93, line: 440, column: 13)
!1750 = !DILocation(line: 454, column: 9, scope: !1703, inlinedAt: !1708)
!1751 = distinct !{!1751, !1747, !1752, !724}
!1752 = !DILocation(line: 453, column: 15, scope: !1745, inlinedAt: !1708)
!1753 = !DILocation(line: 445, column: 22, scope: !1754, inlinedAt: !1708)
!1754 = distinct !DILexicalBlock(scope: !1744, file: !93, line: 445, column: 17)
!1755 = !DILocation(line: 444, column: 56, scope: !1744, inlinedAt: !1708)
!1756 = !DILocation(line: 445, column: 17, scope: !1744, inlinedAt: !1708)
!1757 = !DILocation(line: 447, column: 22, scope: !1758, inlinedAt: !1708)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !93, line: 446, column: 15)
!1759 = !DILocation(line: 448, column: 21, scope: !1760, inlinedAt: !1708)
!1760 = distinct !DILexicalBlock(scope: !1758, file: !93, line: 448, column: 21)
!1761 = !DILocation(line: 448, column: 29, scope: !1760, inlinedAt: !1708)
!1762 = !DILocation(line: 448, column: 21, scope: !1758, inlinedAt: !1708)
!1763 = !DILocation(line: 450, column: 36, scope: !1764, inlinedAt: !1708)
!1764 = distinct !DILexicalBlock(scope: !1758, file: !93, line: 450, column: 21)
!1765 = !DILocation(line: 450, column: 39, scope: !1764, inlinedAt: !1708)
!1766 = !DILocation(line: 450, column: 47, scope: !1764, inlinedAt: !1708)
!1767 = !DILocation(line: 450, column: 21, scope: !1758, inlinedAt: !1708)
!1768 = !DILocation(line: 451, column: 24, scope: !1764, inlinedAt: !1708)
!1769 = !DILocation(line: 451, column: 19, scope: !1764, inlinedAt: !1708)
!1770 = !DILocation(line: 0, scope: !1704, inlinedAt: !1708)
!1771 = !DILocation(line: 457, column: 12, scope: !1693, inlinedAt: !1708)
!1772 = !DILocation(line: 458, column: 3, scope: !1693, inlinedAt: !1708)
!1773 = !DILocation(line: 465, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1681, file: !93, line: 465, column: 7)
!1775 = !DILocation(line: 465, column: 19, scope: !1774)
!1776 = !DILocation(line: 465, column: 7, scope: !1681)
!1777 = !DILocation(line: 408, column: 10, scope: !1718, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 467, column: 21, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !93, line: 466, column: 5)
!1780 = !DILocation(line: 467, column: 19, scope: !1779)
!1781 = !DILocation(line: 469, column: 5, scope: !1779)
!1782 = !DILocation(line: 470, column: 3, scope: !1681)
!1783 = !DISubprogram(name: "getenv", scope: !992, file: !992, line: 634, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!1784 = distinct !DISubprogram(name: "set_program_name", scope: !125, file: !125, line: 39, type: !694, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !124, retainedNodes: !1785)
!1785 = !{!1786, !1787, !1788}
!1786 = !DILocalVariable(name: "argv0", arg: 1, scope: !1784, file: !125, line: 39, type: !61)
!1787 = !DILocalVariable(name: "slash", scope: !1784, file: !125, line: 46, type: !61)
!1788 = !DILocalVariable(name: "base", scope: !1784, file: !125, line: 47, type: !61)
!1789 = !DILocation(line: 0, scope: !1784)
!1790 = !DILocation(line: 51, column: 13, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1784, file: !125, line: 51, column: 7)
!1792 = !DILocation(line: 51, column: 7, scope: !1784)
!1793 = !DILocation(line: 55, column: 14, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1791, file: !125, line: 52, column: 5)
!1795 = !DILocation(line: 54, column: 7, scope: !1794)
!1796 = !DILocation(line: 56, column: 7, scope: !1794)
!1797 = !DILocation(line: 59, column: 11, scope: !1784)
!1798 = !DILocation(line: 60, column: 17, scope: !1784)
!1799 = !DILocation(line: 60, column: 11, scope: !1784)
!1800 = !DILocation(line: 61, column: 12, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1784, file: !125, line: 61, column: 7)
!1802 = !DILocation(line: 61, column: 20, scope: !1801)
!1803 = !DILocation(line: 61, column: 25, scope: !1801)
!1804 = !DILocation(line: 61, column: 42, scope: !1801)
!1805 = !DILocation(line: 61, column: 28, scope: !1801)
!1806 = !DILocation(line: 61, column: 61, scope: !1801)
!1807 = !DILocation(line: 61, column: 7, scope: !1784)
!1808 = !DILocation(line: 64, column: 11, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !125, line: 64, column: 11)
!1810 = distinct !DILexicalBlock(scope: !1801, file: !125, line: 62, column: 5)
!1811 = !DILocation(line: 64, column: 36, scope: !1809)
!1812 = !DILocation(line: 64, column: 11, scope: !1810)
!1813 = !DILocation(line: 66, column: 24, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !125, line: 65, column: 9)
!1815 = !DILocation(line: 70, column: 41, scope: !1814)
!1816 = !DILocation(line: 72, column: 9, scope: !1814)
!1817 = !DILocation(line: 84, column: 16, scope: !1784)
!1818 = !DILocation(line: 90, column: 27, scope: !1784)
!1819 = !DILocation(line: 92, column: 1, scope: !1784)
!1820 = distinct !DISubprogram(name: "clone_quoting_options", scope: !131, file: !131, line: 122, type: !1821, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1824)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1823, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1824 = !{!1825, !1826, !1827}
!1825 = !DILocalVariable(name: "o", arg: 1, scope: !1820, file: !131, line: 122, type: !1823)
!1826 = !DILocalVariable(name: "e", scope: !1820, file: !131, line: 124, type: !64)
!1827 = !DILocalVariable(name: "p", scope: !1820, file: !131, line: 125, type: !1823)
!1828 = !DILocation(line: 0, scope: !1820)
!1829 = !DILocation(line: 124, column: 11, scope: !1820)
!1830 = !DILocation(line: 125, column: 40, scope: !1820)
!1831 = !DILocation(line: 125, column: 31, scope: !1820)
!1832 = !DILocation(line: 127, column: 9, scope: !1820)
!1833 = !DILocation(line: 128, column: 3, scope: !1820)
!1834 = distinct !DISubprogram(name: "get_quoting_style", scope: !131, file: !131, line: 133, type: !1835, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1839)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!5, !1837}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1839 = !{!1840}
!1840 = !DILocalVariable(name: "o", arg: 1, scope: !1834, file: !131, line: 133, type: !1837)
!1841 = !DILocation(line: 0, scope: !1834)
!1842 = !DILocation(line: 135, column: 11, scope: !1834)
!1843 = !DILocation(line: 135, column: 46, scope: !1834)
!1844 = !{!1845, !680, i64 0}
!1845 = !{!"quoting_options", !680, i64 0, !844, i64 4, !680, i64 8, !679, i64 40, !679, i64 48}
!1846 = !DILocation(line: 135, column: 3, scope: !1834)
!1847 = distinct !DISubprogram(name: "set_quoting_style", scope: !131, file: !131, line: 141, type: !1848, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1823, !5}
!1850 = !{!1851, !1852}
!1851 = !DILocalVariable(name: "o", arg: 1, scope: !1847, file: !131, line: 141, type: !1823)
!1852 = !DILocalVariable(name: "s", arg: 2, scope: !1847, file: !131, line: 141, type: !5)
!1853 = !DILocation(line: 0, scope: !1847)
!1854 = !DILocation(line: 143, column: 4, scope: !1847)
!1855 = !DILocation(line: 143, column: 39, scope: !1847)
!1856 = !DILocation(line: 143, column: 45, scope: !1847)
!1857 = !DILocation(line: 144, column: 1, scope: !1847)
!1858 = distinct !DISubprogram(name: "set_char_quoting", scope: !131, file: !131, line: 152, type: !1859, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!64, !1823, !44, !64}
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1868, !1869}
!1862 = !DILocalVariable(name: "o", arg: 1, scope: !1858, file: !131, line: 152, type: !1823)
!1863 = !DILocalVariable(name: "c", arg: 2, scope: !1858, file: !131, line: 152, type: !44)
!1864 = !DILocalVariable(name: "i", arg: 3, scope: !1858, file: !131, line: 152, type: !64)
!1865 = !DILocalVariable(name: "uc", scope: !1858, file: !131, line: 154, type: !47)
!1866 = !DILocalVariable(name: "p", scope: !1858, file: !131, line: 155, type: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1868 = !DILocalVariable(name: "shift", scope: !1858, file: !131, line: 157, type: !64)
!1869 = !DILocalVariable(name: "r", scope: !1858, file: !131, line: 158, type: !64)
!1870 = !DILocation(line: 0, scope: !1858)
!1871 = !DILocation(line: 156, column: 6, scope: !1858)
!1872 = !DILocation(line: 156, column: 62, scope: !1858)
!1873 = !DILocation(line: 156, column: 57, scope: !1858)
!1874 = !DILocation(line: 157, column: 15, scope: !1858)
!1875 = !DILocation(line: 158, column: 12, scope: !1858)
!1876 = !DILocation(line: 158, column: 15, scope: !1858)
!1877 = !DILocation(line: 158, column: 25, scope: !1858)
!1878 = !DILocation(line: 159, column: 13, scope: !1858)
!1879 = !DILocation(line: 159, column: 18, scope: !1858)
!1880 = !DILocation(line: 159, column: 23, scope: !1858)
!1881 = !DILocation(line: 159, column: 6, scope: !1858)
!1882 = !DILocation(line: 160, column: 3, scope: !1858)
!1883 = distinct !DISubprogram(name: "set_quoting_flags", scope: !131, file: !131, line: 168, type: !1884, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!64, !1823, !64}
!1886 = !{!1887, !1888, !1889}
!1887 = !DILocalVariable(name: "o", arg: 1, scope: !1883, file: !131, line: 168, type: !1823)
!1888 = !DILocalVariable(name: "i", arg: 2, scope: !1883, file: !131, line: 168, type: !64)
!1889 = !DILocalVariable(name: "r", scope: !1883, file: !131, line: 170, type: !64)
!1890 = !DILocation(line: 0, scope: !1883)
!1891 = !DILocation(line: 171, column: 8, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1883, file: !131, line: 171, column: 7)
!1893 = !DILocation(line: 171, column: 7, scope: !1883)
!1894 = !DILocation(line: 173, column: 10, scope: !1883)
!1895 = !{!1845, !844, i64 4}
!1896 = !DILocation(line: 174, column: 12, scope: !1883)
!1897 = !DILocation(line: 175, column: 3, scope: !1883)
!1898 = distinct !DISubprogram(name: "set_custom_quoting", scope: !131, file: !131, line: 179, type: !1899, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !1823, !61, !61}
!1901 = !{!1902, !1903, !1904}
!1902 = !DILocalVariable(name: "o", arg: 1, scope: !1898, file: !131, line: 179, type: !1823)
!1903 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1898, file: !131, line: 180, type: !61)
!1904 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1898, file: !131, line: 180, type: !61)
!1905 = !DILocation(line: 0, scope: !1898)
!1906 = !DILocation(line: 182, column: 8, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1898, file: !131, line: 182, column: 7)
!1908 = !DILocation(line: 182, column: 7, scope: !1898)
!1909 = !DILocation(line: 184, column: 6, scope: !1898)
!1910 = !DILocation(line: 184, column: 12, scope: !1898)
!1911 = !DILocation(line: 185, column: 8, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1898, file: !131, line: 185, column: 7)
!1913 = !DILocation(line: 185, column: 19, scope: !1912)
!1914 = !DILocation(line: 186, column: 5, scope: !1912)
!1915 = !DILocation(line: 187, column: 6, scope: !1898)
!1916 = !DILocation(line: 187, column: 17, scope: !1898)
!1917 = !{!1845, !679, i64 40}
!1918 = !DILocation(line: 188, column: 6, scope: !1898)
!1919 = !DILocation(line: 188, column: 18, scope: !1898)
!1920 = !{!1845, !679, i64 48}
!1921 = !DILocation(line: 189, column: 1, scope: !1898)
!1922 = distinct !DISubprogram(name: "quotearg_buffer", scope: !131, file: !131, line: 784, type: !1923, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!48, !43, !48, !61, !48, !1837}
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933}
!1926 = !DILocalVariable(name: "buffer", arg: 1, scope: !1922, file: !131, line: 784, type: !43)
!1927 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1922, file: !131, line: 784, type: !48)
!1928 = !DILocalVariable(name: "arg", arg: 3, scope: !1922, file: !131, line: 785, type: !61)
!1929 = !DILocalVariable(name: "argsize", arg: 4, scope: !1922, file: !131, line: 785, type: !48)
!1930 = !DILocalVariable(name: "o", arg: 5, scope: !1922, file: !131, line: 786, type: !1837)
!1931 = !DILocalVariable(name: "p", scope: !1922, file: !131, line: 788, type: !1837)
!1932 = !DILocalVariable(name: "e", scope: !1922, file: !131, line: 789, type: !64)
!1933 = !DILocalVariable(name: "r", scope: !1922, file: !131, line: 790, type: !48)
!1934 = !DILocation(line: 0, scope: !1922)
!1935 = !DILocation(line: 788, column: 37, scope: !1922)
!1936 = !DILocation(line: 789, column: 11, scope: !1922)
!1937 = !DILocation(line: 791, column: 43, scope: !1922)
!1938 = !DILocation(line: 791, column: 53, scope: !1922)
!1939 = !DILocation(line: 791, column: 60, scope: !1922)
!1940 = !DILocation(line: 792, column: 43, scope: !1922)
!1941 = !DILocation(line: 792, column: 58, scope: !1922)
!1942 = !DILocation(line: 790, column: 14, scope: !1922)
!1943 = !DILocation(line: 793, column: 9, scope: !1922)
!1944 = !DILocation(line: 794, column: 3, scope: !1922)
!1945 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !131, file: !131, line: 256, type: !1946, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1950)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!48, !43, !48, !61, !48, !5, !64, !1948, !61, !61}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1975, !1976, !1977, !1978, !1979, !1982, !1983, !1999, !2002, !2003, !2010, !2013, !2014, !2015, !2016, !2017, !2018}
!1951 = !DILocalVariable(name: "buffer", arg: 1, scope: !1945, file: !131, line: 256, type: !43)
!1952 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1945, file: !131, line: 256, type: !48)
!1953 = !DILocalVariable(name: "arg", arg: 3, scope: !1945, file: !131, line: 257, type: !61)
!1954 = !DILocalVariable(name: "argsize", arg: 4, scope: !1945, file: !131, line: 257, type: !48)
!1955 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1945, file: !131, line: 258, type: !5)
!1956 = !DILocalVariable(name: "flags", arg: 6, scope: !1945, file: !131, line: 258, type: !64)
!1957 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1945, file: !131, line: 259, type: !1948)
!1958 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1945, file: !131, line: 260, type: !61)
!1959 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1945, file: !131, line: 261, type: !61)
!1960 = !DILocalVariable(name: "i", scope: !1945, file: !131, line: 263, type: !48)
!1961 = !DILocalVariable(name: "len", scope: !1945, file: !131, line: 264, type: !48)
!1962 = !DILocalVariable(name: "orig_buffersize", scope: !1945, file: !131, line: 265, type: !48)
!1963 = !DILocalVariable(name: "quote_string", scope: !1945, file: !131, line: 266, type: !61)
!1964 = !DILocalVariable(name: "quote_string_len", scope: !1945, file: !131, line: 267, type: !48)
!1965 = !DILocalVariable(name: "backslash_escapes", scope: !1945, file: !131, line: 268, type: !70)
!1966 = !DILocalVariable(name: "unibyte_locale", scope: !1945, file: !131, line: 269, type: !70)
!1967 = !DILocalVariable(name: "elide_outer_quotes", scope: !1945, file: !131, line: 270, type: !70)
!1968 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1945, file: !131, line: 271, type: !70)
!1969 = !DILocalVariable(name: "encountered_single_quote", scope: !1945, file: !131, line: 272, type: !70)
!1970 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1945, file: !131, line: 273, type: !70)
!1971 = !DILocalVariable(name: "c", scope: !1972, file: !131, line: 402, type: !47)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !131, line: 401, column: 5)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !131, line: 400, column: 3)
!1974 = distinct !DILexicalBlock(scope: !1945, file: !131, line: 400, column: 3)
!1975 = !DILocalVariable(name: "esc", scope: !1972, file: !131, line: 403, type: !47)
!1976 = !DILocalVariable(name: "is_right_quote", scope: !1972, file: !131, line: 404, type: !70)
!1977 = !DILocalVariable(name: "escaping", scope: !1972, file: !131, line: 405, type: !70)
!1978 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1972, file: !131, line: 406, type: !70)
!1979 = !DILocalVariable(name: "m", scope: !1980, file: !131, line: 610, type: !48)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 608, column: 11)
!1981 = distinct !DILexicalBlock(scope: !1972, file: !131, line: 426, column: 9)
!1982 = !DILocalVariable(name: "printable", scope: !1980, file: !131, line: 612, type: !70)
!1983 = !DILocalVariable(name: "mbstate", scope: !1984, file: !131, line: 621, type: !1986)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !131, line: 620, column: 15)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !131, line: 614, column: 17)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1987, line: 6, baseType: !1988)
!1987 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1989, line: 21, baseType: !1990)
!1989 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1989, line: 13, size: 64, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1990, file: !1989, line: 15, baseType: !64, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1990, file: !1989, line: 20, baseType: !1994, size: 32, offset: 32)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1990, file: !1989, line: 16, size: 32, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1994, file: !1989, line: 18, baseType: !7, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1994, file: !1989, line: 19, baseType: !1998, size: 32)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !68)
!1999 = !DILocalVariable(name: "w", scope: !2000, file: !131, line: 631, type: !2001)
!2000 = distinct !DILexicalBlock(scope: !1984, file: !131, line: 630, column: 19)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !49, line: 74, baseType: !64)
!2002 = !DILocalVariable(name: "bytes", scope: !2000, file: !131, line: 632, type: !48)
!2003 = !DILocalVariable(name: "j", scope: !2004, file: !131, line: 657, type: !48)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !131, line: 656, column: 27)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !131, line: 654, column: 29)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !131, line: 649, column: 23)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !131, line: 641, column: 30)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !131, line: 636, column: 30)
!2009 = distinct !DILexicalBlock(scope: !2000, file: !131, line: 634, column: 25)
!2010 = !DILocalVariable(name: "ilim", scope: !2011, file: !131, line: 684, type: !48)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !131, line: 681, column: 15)
!2012 = distinct !DILexicalBlock(scope: !1980, file: !131, line: 680, column: 17)
!2013 = !DILabel(scope: !1945, name: "process_input", file: !131, line: 314)
!2014 = !DILabel(scope: !1981, name: "c_and_shell_escape", file: !131, line: 512)
!2015 = !DILabel(scope: !1981, name: "c_escape", file: !131, line: 517)
!2016 = !DILabel(scope: !1972, name: "store_escape", file: !131, line: 719)
!2017 = !DILabel(scope: !1972, name: "store_c", file: !131, line: 722)
!2018 = !DILabel(scope: !1945, name: "force_outer_quoting_style", file: !131, line: 763)
!2019 = !DILocation(line: 0, scope: !1945)
!2020 = !DILocation(line: 269, column: 25, scope: !1945)
!2021 = !DILocation(line: 269, column: 36, scope: !1945)
!2022 = !DILocation(line: 270, column: 8, scope: !1945)
!2023 = !DILocation(line: 273, column: 3, scope: !1945)
!2024 = !DILocation(line: 265, column: 10, scope: !1945)
!2025 = !DILocation(line: 266, column: 15, scope: !1945)
!2026 = !DILocation(line: 267, column: 10, scope: !1945)
!2027 = !DILocation(line: 268, column: 8, scope: !1945)
!2028 = !DILocation(line: 271, column: 8, scope: !1945)
!2029 = !DILocation(line: 272, column: 8, scope: !1945)
!2030 = !DILocation(line: 273, column: 8, scope: !1945)
!2031 = !DILocation(line: 314, column: 2, scope: !1945)
!2032 = !DILocation(line: 316, column: 3, scope: !1945)
!2033 = !DILocation(line: 323, column: 11, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1945, file: !131, line: 317, column: 5)
!2035 = !DILocation(line: 323, column: 12, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2034, file: !131, line: 323, column: 11)
!2037 = !DILocation(line: 324, column: 9, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !131, line: 324, column: 9)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !131, line: 324, column: 9)
!2040 = !DILocation(line: 324, column: 9, scope: !2039)
!2041 = !DILocation(line: 362, column: 26, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !131, line: 340, column: 11)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !131, line: 339, column: 13)
!2044 = distinct !DILexicalBlock(scope: !2034, file: !131, line: 338, column: 7)
!2045 = !DILocation(line: 363, column: 27, scope: !2042)
!2046 = !DILocation(line: 364, column: 11, scope: !2042)
!2047 = !DILocation(line: 365, column: 14, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !131, line: 365, column: 13)
!2049 = !DILocation(line: 365, column: 13, scope: !2044)
!2050 = !DILocation(line: 366, column: 43, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !131, line: 366, column: 11)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !131, line: 366, column: 11)
!2053 = !DILocation(line: 366, column: 11, scope: !2052)
!2054 = !DILocation(line: 367, column: 13, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !131, line: 367, column: 13)
!2056 = distinct !DILexicalBlock(scope: !2051, file: !131, line: 367, column: 13)
!2057 = !DILocation(line: 367, column: 13, scope: !2056)
!2058 = !DILocation(line: 366, column: 70, scope: !2051)
!2059 = distinct !{!2059, !2053, !2060, !724}
!2060 = !DILocation(line: 367, column: 13, scope: !2052)
!2061 = !DILocation(line: 264, column: 10, scope: !1945)
!2062 = !DILocation(line: 370, column: 28, scope: !2044)
!2063 = !DILocation(line: 372, column: 7, scope: !2034)
!2064 = !DILocation(line: 376, column: 7, scope: !2034)
!2065 = !DILocation(line: 379, column: 7, scope: !2034)
!2066 = !DILocation(line: 381, column: 12, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2034, file: !131, line: 381, column: 11)
!2068 = !DILocation(line: 381, column: 11, scope: !2034)
!2069 = !DILocation(line: 386, column: 12, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2034, file: !131, line: 386, column: 11)
!2071 = !DILocation(line: 386, column: 11, scope: !2034)
!2072 = !DILocation(line: 387, column: 9, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !131, line: 387, column: 9)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !131, line: 387, column: 9)
!2075 = !DILocation(line: 387, column: 9, scope: !2074)
!2076 = !DILocation(line: 394, column: 7, scope: !2034)
!2077 = !DILocation(line: 397, column: 7, scope: !2034)
!2078 = !DILocation(line: 400, column: 8, scope: !1974)
!2079 = !DILocation(line: 0, scope: !1974)
!2080 = !DILocation(line: 400, column: 27, scope: !1973)
!2081 = !DILocation(line: 400, column: 19, scope: !1973)
!2082 = !DILocation(line: 400, column: 41, scope: !1973)
!2083 = !DILocation(line: 400, column: 48, scope: !1973)
!2084 = !DILocation(line: 400, column: 3, scope: !1974)
!2085 = !DILocation(line: 400, column: 60, scope: !1973)
!2086 = !DILocation(line: 0, scope: !1972)
!2087 = !DILocation(line: 409, column: 11, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1972, file: !131, line: 408, column: 11)
!2089 = !DILocation(line: 411, column: 17, scope: !2088)
!2090 = !DILocation(line: 412, column: 39, scope: !2088)
!2091 = !DILocation(line: 416, column: 32, scope: !2088)
!2092 = !DILocation(line: 412, column: 19, scope: !2088)
!2093 = !DILocation(line: 412, column: 15, scope: !2088)
!2094 = !DILocation(line: 417, column: 11, scope: !2088)
!2095 = !DILocation(line: 417, column: 26, scope: !2088)
!2096 = !DILocation(line: 417, column: 14, scope: !2088)
!2097 = !DILocation(line: 417, column: 63, scope: !2088)
!2098 = !DILocation(line: 408, column: 11, scope: !1972)
!2099 = !DILocation(line: 424, column: 11, scope: !1972)
!2100 = !DILocation(line: 425, column: 7, scope: !1972)
!2101 = !DILocation(line: 428, column: 15, scope: !1981)
!2102 = !DILocation(line: 430, column: 15, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !131, line: 430, column: 15)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !131, line: 429, column: 13)
!2105 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 428, column: 15)
!2106 = !DILocation(line: 430, column: 15, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !131, line: 430, column: 15)
!2108 = !DILocation(line: 430, column: 15, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !131, line: 430, column: 15)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !131, line: 430, column: 15)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !131, line: 430, column: 15)
!2112 = !DILocation(line: 430, column: 15, scope: !2110)
!2113 = !DILocation(line: 430, column: 15, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !131, line: 430, column: 15)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !131, line: 430, column: 15)
!2116 = !DILocation(line: 430, column: 15, scope: !2115)
!2117 = !DILocation(line: 430, column: 15, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !131, line: 430, column: 15)
!2119 = distinct !DILexicalBlock(scope: !2111, file: !131, line: 430, column: 15)
!2120 = !DILocation(line: 430, column: 15, scope: !2119)
!2121 = !DILocation(line: 430, column: 15, scope: !2111)
!2122 = !DILocation(line: 430, column: 15, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !131, line: 430, column: 15)
!2124 = distinct !DILexicalBlock(scope: !2103, file: !131, line: 430, column: 15)
!2125 = !DILocation(line: 430, column: 15, scope: !2124)
!2126 = !DILocation(line: 438, column: 19, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2104, file: !131, line: 437, column: 19)
!2128 = !DILocation(line: 438, column: 48, scope: !2127)
!2129 = !DILocation(line: 438, column: 59, scope: !2127)
!2130 = !DILocation(line: 440, column: 19, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !131, line: 440, column: 19)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !131, line: 440, column: 19)
!2133 = distinct !DILexicalBlock(scope: !2127, file: !131, line: 439, column: 17)
!2134 = !DILocation(line: 440, column: 19, scope: !2132)
!2135 = !DILocation(line: 441, column: 19, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !131, line: 441, column: 19)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !131, line: 441, column: 19)
!2138 = !DILocation(line: 441, column: 19, scope: !2137)
!2139 = !DILocation(line: 442, column: 17, scope: !2133)
!2140 = !DILocation(line: 449, column: 20, scope: !2105)
!2141 = !DILocation(line: 454, column: 11, scope: !1981)
!2142 = !DILocation(line: 457, column: 19, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 455, column: 13)
!2144 = !DILocation(line: 463, column: 19, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2143, file: !131, line: 462, column: 19)
!2146 = !DILocation(line: 463, column: 47, scope: !2145)
!2147 = !DILocation(line: 463, column: 41, scope: !2145)
!2148 = !DILocation(line: 463, column: 52, scope: !2145)
!2149 = !DILocation(line: 462, column: 19, scope: !2143)
!2150 = !DILocation(line: 464, column: 25, scope: !2145)
!2151 = !DILocation(line: 464, column: 17, scope: !2145)
!2152 = !DILocation(line: 471, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2145, file: !131, line: 465, column: 19)
!2154 = !DILocation(line: 475, column: 21, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !131, line: 475, column: 21)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !131, line: 475, column: 21)
!2157 = !DILocation(line: 475, column: 21, scope: !2156)
!2158 = !DILocation(line: 476, column: 21, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !131, line: 476, column: 21)
!2160 = distinct !DILexicalBlock(scope: !2153, file: !131, line: 476, column: 21)
!2161 = !DILocation(line: 476, column: 21, scope: !2160)
!2162 = !DILocation(line: 477, column: 21, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !131, line: 477, column: 21)
!2164 = distinct !DILexicalBlock(scope: !2153, file: !131, line: 477, column: 21)
!2165 = !DILocation(line: 477, column: 21, scope: !2164)
!2166 = !DILocation(line: 478, column: 21, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !131, line: 478, column: 21)
!2168 = distinct !DILexicalBlock(scope: !2153, file: !131, line: 478, column: 21)
!2169 = !DILocation(line: 478, column: 21, scope: !2168)
!2170 = !DILocation(line: 479, column: 21, scope: !2153)
!2171 = !DILocation(line: 492, column: 31, scope: !1981)
!2172 = !DILocation(line: 493, column: 31, scope: !1981)
!2173 = !DILocation(line: 495, column: 31, scope: !1981)
!2174 = !DILocation(line: 496, column: 31, scope: !1981)
!2175 = !DILocation(line: 497, column: 31, scope: !1981)
!2176 = !DILocation(line: 500, column: 15, scope: !1981)
!2177 = !DILocation(line: 502, column: 19, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !131, line: 501, column: 13)
!2179 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 500, column: 15)
!2180 = !DILocation(line: 509, column: 33, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 509, column: 15)
!2182 = !DILocation(line: 0, scope: !1981)
!2183 = !DILocation(line: 512, column: 9, scope: !1981)
!2184 = !DILocation(line: 514, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 513, column: 15)
!2186 = !DILocation(line: 517, column: 9, scope: !1981)
!2187 = !DILocation(line: 518, column: 15, scope: !1981)
!2188 = !DILocation(line: 526, column: 15, scope: !1981)
!2189 = !DILocation(line: 526, column: 40, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 526, column: 15)
!2191 = !DILocation(line: 526, column: 47, scope: !2190)
!2192 = !DILocation(line: 526, column: 18, scope: !2190)
!2193 = !DILocation(line: 530, column: 17, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 530, column: 15)
!2195 = !DILocation(line: 530, column: 15, scope: !1981)
!2196 = !DILocation(line: 535, column: 11, scope: !1981)
!2197 = !DILocation(line: 549, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 548, column: 15)
!2199 = !DILocation(line: 556, column: 15, scope: !1981)
!2200 = !DILocation(line: 558, column: 19, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !131, line: 557, column: 13)
!2202 = distinct !DILexicalBlock(scope: !1981, file: !131, line: 556, column: 15)
!2203 = !DILocation(line: 561, column: 19, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !131, line: 561, column: 19)
!2205 = !DILocation(line: 561, column: 30, scope: !2204)
!2206 = !DILocation(line: 570, column: 15, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !131, line: 570, column: 15)
!2208 = distinct !DILexicalBlock(scope: !2201, file: !131, line: 570, column: 15)
!2209 = !DILocation(line: 570, column: 15, scope: !2208)
!2210 = !DILocation(line: 571, column: 15, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !131, line: 571, column: 15)
!2212 = distinct !DILexicalBlock(scope: !2201, file: !131, line: 571, column: 15)
!2213 = !DILocation(line: 571, column: 15, scope: !2212)
!2214 = !DILocation(line: 572, column: 15, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !131, line: 572, column: 15)
!2216 = distinct !DILexicalBlock(scope: !2201, file: !131, line: 572, column: 15)
!2217 = !DILocation(line: 572, column: 15, scope: !2216)
!2218 = !DILocation(line: 574, column: 13, scope: !2201)
!2219 = !DILocation(line: 614, column: 17, scope: !1980)
!2220 = !DILocation(line: 0, scope: !1980)
!2221 = !DILocation(line: 617, column: 29, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1985, file: !131, line: 615, column: 15)
!2223 = !{!928, !928, i64 0}
!2224 = !DILocation(line: 617, column: 27, scope: !2222)
!2225 = !DILocation(line: 678, column: 40, scope: !1980)
!2226 = !DILocation(line: 680, column: 23, scope: !2012)
!2227 = !DILocation(line: 621, column: 17, scope: !1984)
!2228 = !DILocation(line: 621, column: 27, scope: !1984)
!2229 = !DILocalVariable(name: "__dest", arg: 1, scope: !2230, file: !1455, line: 57, type: !45)
!2230 = distinct !DISubprogram(name: "memset", scope: !1455, file: !1455, line: 57, type: !2231, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!45, !45, !64, !48}
!2233 = !{!2229, !2234, !2235}
!2234 = !DILocalVariable(name: "__ch", arg: 2, scope: !2230, file: !1455, line: 57, type: !64)
!2235 = !DILocalVariable(name: "__len", arg: 3, scope: !2230, file: !1455, line: 57, type: !48)
!2236 = !DILocation(line: 0, scope: !2230, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 622, column: 17, scope: !1984)
!2238 = !DILocation(line: 59, column: 10, scope: !2230, inlinedAt: !2237)
!2239 = !DILocation(line: 626, column: 29, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !1984, file: !131, line: 626, column: 21)
!2241 = !DILocation(line: 626, column: 21, scope: !1984)
!2242 = !DILocation(line: 627, column: 29, scope: !2240)
!2243 = !DILocation(line: 627, column: 19, scope: !2240)
!2244 = !DILocation(line: 629, column: 17, scope: !1984)
!2245 = !DILocation(line: 624, column: 19, scope: !1984)
!2246 = !DILocation(line: 625, column: 27, scope: !1984)
!2247 = !DILocation(line: 631, column: 21, scope: !2000)
!2248 = !DILocation(line: 632, column: 56, scope: !2000)
!2249 = !DILocation(line: 632, column: 50, scope: !2000)
!2250 = !DILocation(line: 633, column: 53, scope: !2000)
!2251 = !DILocation(line: 0, scope: !2000)
!2252 = !DILocation(line: 632, column: 36, scope: !2000)
!2253 = !DILocation(line: 634, column: 25, scope: !2000)
!2254 = !DILocation(line: 644, column: 38, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2007, file: !131, line: 642, column: 23)
!2256 = !DILocation(line: 644, column: 48, scope: !2255)
!2257 = !DILocation(line: 644, column: 25, scope: !2255)
!2258 = !DILocation(line: 644, column: 51, scope: !2255)
!2259 = !DILocation(line: 645, column: 28, scope: !2255)
!2260 = !DILocation(line: 644, column: 34, scope: !2255)
!2261 = distinct !{!2261, !2257, !2259, !724}
!2262 = !DILocation(line: 655, column: 29, scope: !2005)
!2263 = !DILocation(line: 0, scope: !2004)
!2264 = !DILocation(line: 659, column: 49, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !131, line: 658, column: 29)
!2266 = distinct !DILexicalBlock(scope: !2004, file: !131, line: 658, column: 29)
!2267 = !DILocation(line: 659, column: 39, scope: !2265)
!2268 = !DILocation(line: 659, column: 31, scope: !2265)
!2269 = !DILocation(line: 658, column: 53, scope: !2265)
!2270 = !DILocation(line: 658, column: 43, scope: !2265)
!2271 = !DILocation(line: 658, column: 29, scope: !2266)
!2272 = distinct !{!2272, !2271, !2273, !724}
!2273 = !DILocation(line: 667, column: 33, scope: !2266)
!2274 = !DILocation(line: 674, column: 19, scope: !1984)
!2275 = !DILocation(line: 670, column: 41, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2006, file: !131, line: 670, column: 29)
!2277 = !DILocation(line: 670, column: 31, scope: !2276)
!2278 = !DILocation(line: 670, column: 29, scope: !2006)
!2279 = !DILocation(line: 672, column: 27, scope: !2006)
!2280 = !DILocation(line: 675, column: 26, scope: !1984)
!2281 = !DILocation(line: 675, column: 24, scope: !1984)
!2282 = !DILocation(line: 674, column: 19, scope: !2000)
!2283 = distinct !{!2283, !2244, !2284, !724}
!2284 = !DILocation(line: 675, column: 44, scope: !1984)
!2285 = !DILocation(line: 676, column: 15, scope: !1985)
!2286 = !DILocation(line: 680, column: 19, scope: !2012)
!2287 = !DILocation(line: 680, column: 45, scope: !2012)
!2288 = !DILocation(line: 684, column: 33, scope: !2011)
!2289 = !DILocation(line: 0, scope: !2011)
!2290 = !DILocation(line: 686, column: 17, scope: !2011)
!2291 = !DILocation(line: 405, column: 12, scope: !1972)
!2292 = !DILocation(line: 688, column: 43, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !131, line: 688, column: 25)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !131, line: 687, column: 19)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !131, line: 686, column: 17)
!2296 = distinct !DILexicalBlock(scope: !2011, file: !131, line: 686, column: 17)
!2297 = !DILocation(line: 690, column: 25, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !131, line: 690, column: 25)
!2299 = distinct !DILexicalBlock(scope: !2293, file: !131, line: 689, column: 23)
!2300 = !DILocation(line: 690, column: 25, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !131, line: 690, column: 25)
!2302 = !DILocation(line: 690, column: 25, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !131, line: 690, column: 25)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !131, line: 690, column: 25)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !131, line: 690, column: 25)
!2306 = !DILocation(line: 690, column: 25, scope: !2304)
!2307 = !DILocation(line: 690, column: 25, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !131, line: 690, column: 25)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !131, line: 690, column: 25)
!2310 = !DILocation(line: 690, column: 25, scope: !2309)
!2311 = !DILocation(line: 690, column: 25, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !131, line: 690, column: 25)
!2313 = distinct !DILexicalBlock(scope: !2305, file: !131, line: 690, column: 25)
!2314 = !DILocation(line: 690, column: 25, scope: !2313)
!2315 = !DILocation(line: 690, column: 25, scope: !2305)
!2316 = !DILocation(line: 690, column: 25, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !131, line: 690, column: 25)
!2318 = distinct !DILexicalBlock(scope: !2298, file: !131, line: 690, column: 25)
!2319 = !DILocation(line: 690, column: 25, scope: !2318)
!2320 = !DILocation(line: 691, column: 25, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !131, line: 691, column: 25)
!2322 = distinct !DILexicalBlock(scope: !2299, file: !131, line: 691, column: 25)
!2323 = !DILocation(line: 691, column: 25, scope: !2322)
!2324 = !DILocation(line: 692, column: 25, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !131, line: 692, column: 25)
!2326 = distinct !DILexicalBlock(scope: !2299, file: !131, line: 692, column: 25)
!2327 = !DILocation(line: 692, column: 25, scope: !2326)
!2328 = !DILocation(line: 693, column: 38, scope: !2299)
!2329 = !DILocation(line: 693, column: 33, scope: !2299)
!2330 = !DILocation(line: 694, column: 23, scope: !2299)
!2331 = !DILocation(line: 695, column: 30, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2293, file: !131, line: 695, column: 30)
!2333 = !DILocation(line: 695, column: 30, scope: !2293)
!2334 = !DILocation(line: 697, column: 25, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !131, line: 697, column: 25)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !131, line: 697, column: 25)
!2337 = distinct !DILexicalBlock(scope: !2332, file: !131, line: 696, column: 23)
!2338 = !DILocation(line: 697, column: 25, scope: !2336)
!2339 = !DILocation(line: 699, column: 23, scope: !2337)
!2340 = !DILocation(line: 700, column: 35, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2294, file: !131, line: 700, column: 25)
!2342 = !DILocation(line: 700, column: 30, scope: !2341)
!2343 = !DILocation(line: 700, column: 25, scope: !2294)
!2344 = !DILocation(line: 702, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !131, line: 702, column: 21)
!2346 = distinct !DILexicalBlock(scope: !2294, file: !131, line: 702, column: 21)
!2347 = !DILocation(line: 702, column: 21, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !131, line: 702, column: 21)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !131, line: 702, column: 21)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !131, line: 702, column: 21)
!2351 = !DILocation(line: 702, column: 21, scope: !2349)
!2352 = !DILocation(line: 702, column: 21, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !131, line: 702, column: 21)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !131, line: 702, column: 21)
!2355 = !DILocation(line: 702, column: 21, scope: !2354)
!2356 = !DILocation(line: 702, column: 21, scope: !2350)
!2357 = !DILocation(line: 0, scope: !2294)
!2358 = !DILocation(line: 703, column: 21, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !131, line: 703, column: 21)
!2360 = distinct !DILexicalBlock(scope: !2294, file: !131, line: 703, column: 21)
!2361 = !DILocation(line: 703, column: 21, scope: !2360)
!2362 = !DILocation(line: 704, column: 25, scope: !2294)
!2363 = !DILocation(line: 686, column: 17, scope: !2295)
!2364 = distinct !{!2364, !2365, !2366}
!2365 = !DILocation(line: 686, column: 17, scope: !2296)
!2366 = !DILocation(line: 705, column: 19, scope: !2296)
!2367 = !DILocation(line: 416, column: 30, scope: !2088)
!2368 = !DILocation(line: 712, column: 34, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !1972, file: !131, line: 712, column: 11)
!2370 = !DILocation(line: 715, column: 35, scope: !2369)
!2371 = !DILocation(line: 715, column: 17, scope: !2369)
!2372 = !DILocation(line: 715, column: 47, scope: !2369)
!2373 = !DILocation(line: 715, column: 65, scope: !2369)
!2374 = !DILocation(line: 716, column: 11, scope: !2369)
!2375 = !DILocation(line: 712, column: 11, scope: !1972)
!2376 = !DILocation(line: 400, column: 10, scope: !1974)
!2377 = !DILocation(line: 719, column: 5, scope: !1972)
!2378 = !DILocation(line: 720, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !1972, file: !131, line: 720, column: 7)
!2380 = !DILocation(line: 720, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2379, file: !131, line: 720, column: 7)
!2382 = !DILocation(line: 720, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !131, line: 720, column: 7)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !131, line: 720, column: 7)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !131, line: 720, column: 7)
!2386 = !DILocation(line: 720, column: 7, scope: !2384)
!2387 = !DILocation(line: 720, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !131, line: 720, column: 7)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !131, line: 720, column: 7)
!2390 = !DILocation(line: 720, column: 7, scope: !2389)
!2391 = !DILocation(line: 720, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !131, line: 720, column: 7)
!2393 = distinct !DILexicalBlock(scope: !2385, file: !131, line: 720, column: 7)
!2394 = !DILocation(line: 720, column: 7, scope: !2393)
!2395 = !DILocation(line: 720, column: 7, scope: !2385)
!2396 = !DILocation(line: 720, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !131, line: 720, column: 7)
!2398 = distinct !DILexicalBlock(scope: !2379, file: !131, line: 720, column: 7)
!2399 = !DILocation(line: 720, column: 7, scope: !2398)
!2400 = !DILocation(line: 722, column: 5, scope: !1972)
!2401 = !DILocation(line: 723, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !131, line: 723, column: 7)
!2403 = distinct !DILexicalBlock(scope: !1972, file: !131, line: 723, column: 7)
!2404 = !DILocation(line: 424, column: 9, scope: !1972)
!2405 = !DILocation(line: 723, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !131, line: 723, column: 7)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !131, line: 723, column: 7)
!2408 = distinct !DILexicalBlock(scope: !2402, file: !131, line: 723, column: 7)
!2409 = !DILocation(line: 723, column: 7, scope: !2407)
!2410 = !DILocation(line: 723, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !131, line: 723, column: 7)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !131, line: 723, column: 7)
!2413 = !DILocation(line: 723, column: 7, scope: !2412)
!2414 = !DILocation(line: 723, column: 7, scope: !2408)
!2415 = !DILocation(line: 724, column: 7, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !131, line: 724, column: 7)
!2417 = distinct !DILexicalBlock(scope: !1972, file: !131, line: 724, column: 7)
!2418 = !DILocation(line: 724, column: 7, scope: !2417)
!2419 = !DILocation(line: 726, column: 13, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !1972, file: !131, line: 726, column: 11)
!2421 = !DILocation(line: 726, column: 11, scope: !1972)
!2422 = !DILocation(line: 728, column: 5, scope: !1973)
!2423 = !DILocation(line: 400, column: 75, scope: !1973)
!2424 = !DILocation(line: 400, column: 3, scope: !1973)
!2425 = distinct !{!2425, !2084, !2426, !724}
!2426 = !DILocation(line: 728, column: 5, scope: !1974)
!2427 = !DILocation(line: 730, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !1945, file: !131, line: 730, column: 7)
!2429 = !DILocation(line: 730, column: 16, scope: !2428)
!2430 = !DILocation(line: 738, column: 51, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !1945, file: !131, line: 738, column: 7)
!2432 = !DILocation(line: 741, column: 11, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !131, line: 741, column: 11)
!2434 = distinct !DILexicalBlock(scope: !2431, file: !131, line: 740, column: 5)
!2435 = !DILocation(line: 741, column: 11, scope: !2434)
!2436 = !DILocation(line: 742, column: 16, scope: !2433)
!2437 = !DILocation(line: 742, column: 9, scope: !2433)
!2438 = !DILocation(line: 746, column: 18, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2433, file: !131, line: 746, column: 16)
!2440 = !DILocation(line: 746, column: 29, scope: !2439)
!2441 = !DILocation(line: 755, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !1945, file: !131, line: 755, column: 7)
!2443 = !DILocation(line: 755, column: 20, scope: !2442)
!2444 = !DILocation(line: 756, column: 12, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !131, line: 756, column: 5)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !131, line: 756, column: 5)
!2447 = !DILocation(line: 756, column: 5, scope: !2446)
!2448 = !DILocation(line: 757, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !131, line: 757, column: 7)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !131, line: 757, column: 7)
!2451 = !DILocation(line: 757, column: 7, scope: !2450)
!2452 = !DILocation(line: 756, column: 39, scope: !2445)
!2453 = distinct !{!2453, !2447, !2454, !724}
!2454 = !DILocation(line: 757, column: 7, scope: !2446)
!2455 = !DILocation(line: 759, column: 11, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !1945, file: !131, line: 759, column: 7)
!2457 = !DILocation(line: 759, column: 7, scope: !1945)
!2458 = !DILocation(line: 760, column: 5, scope: !2456)
!2459 = !DILocation(line: 760, column: 17, scope: !2456)
!2460 = !DILocation(line: 763, column: 2, scope: !1945)
!2461 = !DILocation(line: 766, column: 51, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !1945, file: !131, line: 766, column: 7)
!2463 = !DILocation(line: 766, column: 21, scope: !2462)
!2464 = !DILocation(line: 770, column: 42, scope: !1945)
!2465 = !DILocation(line: 768, column: 10, scope: !1945)
!2466 = !DILocation(line: 768, column: 3, scope: !1945)
!2467 = !DILocation(line: 772, column: 1, scope: !1945)
!2468 = distinct !DISubprogram(name: "gettext_quote", scope: !131, file: !131, line: 207, type: !2469, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!61, !61, !5}
!2471 = !{!2472, !2473, !2474, !2475}
!2472 = !DILocalVariable(name: "msgid", arg: 1, scope: !2468, file: !131, line: 207, type: !61)
!2473 = !DILocalVariable(name: "s", arg: 2, scope: !2468, file: !131, line: 207, type: !5)
!2474 = !DILocalVariable(name: "translation", scope: !2468, file: !131, line: 209, type: !61)
!2475 = !DILocalVariable(name: "locale_code", scope: !2468, file: !131, line: 210, type: !61)
!2476 = !DILocation(line: 0, scope: !2468)
!2477 = !DILocation(line: 209, column: 29, scope: !2468)
!2478 = !DILocation(line: 212, column: 19, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2468, file: !131, line: 212, column: 7)
!2480 = !DILocation(line: 212, column: 7, scope: !2468)
!2481 = !DILocation(line: 233, column: 17, scope: !2468)
!2482 = !DILocalVariable(name: "s1", arg: 1, scope: !2483, file: !2484, line: 160, type: !61)
!2483 = distinct !DISubprogram(name: "strcaseeq0", scope: !2484, file: !2484, line: 160, type: !2485, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2487)
!2484 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!64, !61, !61, !44, !44, !44, !44, !44, !44, !44, !44, !44}
!2487 = !{!2482, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497}
!2488 = !DILocalVariable(name: "s2", arg: 2, scope: !2483, file: !2484, line: 160, type: !61)
!2489 = !DILocalVariable(name: "s20", arg: 3, scope: !2483, file: !2484, line: 160, type: !44)
!2490 = !DILocalVariable(name: "s21", arg: 4, scope: !2483, file: !2484, line: 160, type: !44)
!2491 = !DILocalVariable(name: "s22", arg: 5, scope: !2483, file: !2484, line: 160, type: !44)
!2492 = !DILocalVariable(name: "s23", arg: 6, scope: !2483, file: !2484, line: 160, type: !44)
!2493 = !DILocalVariable(name: "s24", arg: 7, scope: !2483, file: !2484, line: 160, type: !44)
!2494 = !DILocalVariable(name: "s25", arg: 8, scope: !2483, file: !2484, line: 160, type: !44)
!2495 = !DILocalVariable(name: "s26", arg: 9, scope: !2483, file: !2484, line: 160, type: !44)
!2496 = !DILocalVariable(name: "s27", arg: 10, scope: !2483, file: !2484, line: 160, type: !44)
!2497 = !DILocalVariable(name: "s28", arg: 11, scope: !2483, file: !2484, line: 160, type: !44)
!2498 = !DILocation(line: 0, scope: !2483, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 234, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2468, file: !131, line: 234, column: 7)
!2501 = !DILocation(line: 162, column: 7, scope: !2502, inlinedAt: !2499)
!2502 = distinct !DILexicalBlock(scope: !2483, file: !2484, line: 162, column: 7)
!2503 = !DILocalVariable(name: "s1", arg: 1, scope: !2504, file: !2484, line: 146, type: !61)
!2504 = distinct !DISubprogram(name: "strcaseeq1", scope: !2484, file: !2484, line: 146, type: !2505, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!64, !61, !61, !44, !44, !44, !44, !44, !44, !44, !44}
!2507 = !{!2503, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2508 = !DILocalVariable(name: "s2", arg: 2, scope: !2504, file: !2484, line: 146, type: !61)
!2509 = !DILocalVariable(name: "s21", arg: 3, scope: !2504, file: !2484, line: 146, type: !44)
!2510 = !DILocalVariable(name: "s22", arg: 4, scope: !2504, file: !2484, line: 146, type: !44)
!2511 = !DILocalVariable(name: "s23", arg: 5, scope: !2504, file: !2484, line: 146, type: !44)
!2512 = !DILocalVariable(name: "s24", arg: 6, scope: !2504, file: !2484, line: 146, type: !44)
!2513 = !DILocalVariable(name: "s25", arg: 7, scope: !2504, file: !2484, line: 146, type: !44)
!2514 = !DILocalVariable(name: "s26", arg: 8, scope: !2504, file: !2484, line: 146, type: !44)
!2515 = !DILocalVariable(name: "s27", arg: 9, scope: !2504, file: !2484, line: 146, type: !44)
!2516 = !DILocalVariable(name: "s28", arg: 10, scope: !2504, file: !2484, line: 146, type: !44)
!2517 = !DILocation(line: 0, scope: !2504, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 167, column: 16, scope: !2519, inlinedAt: !2499)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !2484, line: 164, column: 11)
!2520 = distinct !DILexicalBlock(scope: !2502, file: !2484, line: 163, column: 5)
!2521 = !DILocation(line: 148, column: 7, scope: !2522, inlinedAt: !2518)
!2522 = distinct !DILexicalBlock(scope: !2504, file: !2484, line: 148, column: 7)
!2523 = !DILocalVariable(name: "s1", arg: 1, scope: !2524, file: !2484, line: 132, type: !61)
!2524 = distinct !DISubprogram(name: "strcaseeq2", scope: !2484, file: !2484, line: 132, type: !2525, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!64, !61, !61, !44, !44, !44, !44, !44, !44, !44}
!2527 = !{!2523, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2528 = !DILocalVariable(name: "s2", arg: 2, scope: !2524, file: !2484, line: 132, type: !61)
!2529 = !DILocalVariable(name: "s22", arg: 3, scope: !2524, file: !2484, line: 132, type: !44)
!2530 = !DILocalVariable(name: "s23", arg: 4, scope: !2524, file: !2484, line: 132, type: !44)
!2531 = !DILocalVariable(name: "s24", arg: 5, scope: !2524, file: !2484, line: 132, type: !44)
!2532 = !DILocalVariable(name: "s25", arg: 6, scope: !2524, file: !2484, line: 132, type: !44)
!2533 = !DILocalVariable(name: "s26", arg: 7, scope: !2524, file: !2484, line: 132, type: !44)
!2534 = !DILocalVariable(name: "s27", arg: 8, scope: !2524, file: !2484, line: 132, type: !44)
!2535 = !DILocalVariable(name: "s28", arg: 9, scope: !2524, file: !2484, line: 132, type: !44)
!2536 = !DILocation(line: 0, scope: !2524, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 153, column: 16, scope: !2538, inlinedAt: !2518)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !2484, line: 150, column: 11)
!2539 = distinct !DILexicalBlock(scope: !2522, file: !2484, line: 149, column: 5)
!2540 = !DILocation(line: 134, column: 7, scope: !2541, inlinedAt: !2537)
!2541 = distinct !DILexicalBlock(scope: !2524, file: !2484, line: 134, column: 7)
!2542 = !DILocalVariable(name: "s1", arg: 1, scope: !2543, file: !2484, line: 118, type: !61)
!2543 = distinct !DISubprogram(name: "strcaseeq3", scope: !2484, file: !2484, line: 118, type: !2544, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!64, !61, !61, !44, !44, !44, !44, !44, !44}
!2546 = !{!2542, !2547, !2548, !2549, !2550, !2551, !2552, !2553}
!2547 = !DILocalVariable(name: "s2", arg: 2, scope: !2543, file: !2484, line: 118, type: !61)
!2548 = !DILocalVariable(name: "s23", arg: 3, scope: !2543, file: !2484, line: 118, type: !44)
!2549 = !DILocalVariable(name: "s24", arg: 4, scope: !2543, file: !2484, line: 118, type: !44)
!2550 = !DILocalVariable(name: "s25", arg: 5, scope: !2543, file: !2484, line: 118, type: !44)
!2551 = !DILocalVariable(name: "s26", arg: 6, scope: !2543, file: !2484, line: 118, type: !44)
!2552 = !DILocalVariable(name: "s27", arg: 7, scope: !2543, file: !2484, line: 118, type: !44)
!2553 = !DILocalVariable(name: "s28", arg: 8, scope: !2543, file: !2484, line: 118, type: !44)
!2554 = !DILocation(line: 0, scope: !2543, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 139, column: 16, scope: !2556, inlinedAt: !2537)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !2484, line: 136, column: 11)
!2557 = distinct !DILexicalBlock(scope: !2541, file: !2484, line: 135, column: 5)
!2558 = !DILocation(line: 120, column: 7, scope: !2559, inlinedAt: !2555)
!2559 = distinct !DILexicalBlock(scope: !2543, file: !2484, line: 120, column: 7)
!2560 = !DILocation(line: 120, column: 7, scope: !2543, inlinedAt: !2555)
!2561 = !DILocalVariable(name: "s1", arg: 1, scope: !2562, file: !2484, line: 104, type: !61)
!2562 = distinct !DISubprogram(name: "strcaseeq4", scope: !2484, file: !2484, line: 104, type: !2563, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!64, !61, !61, !44, !44, !44, !44, !44}
!2565 = !{!2561, !2566, !2567, !2568, !2569, !2570, !2571}
!2566 = !DILocalVariable(name: "s2", arg: 2, scope: !2562, file: !2484, line: 104, type: !61)
!2567 = !DILocalVariable(name: "s24", arg: 3, scope: !2562, file: !2484, line: 104, type: !44)
!2568 = !DILocalVariable(name: "s25", arg: 4, scope: !2562, file: !2484, line: 104, type: !44)
!2569 = !DILocalVariable(name: "s26", arg: 5, scope: !2562, file: !2484, line: 104, type: !44)
!2570 = !DILocalVariable(name: "s27", arg: 6, scope: !2562, file: !2484, line: 104, type: !44)
!2571 = !DILocalVariable(name: "s28", arg: 7, scope: !2562, file: !2484, line: 104, type: !44)
!2572 = !DILocation(line: 0, scope: !2562, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 125, column: 16, scope: !2574, inlinedAt: !2555)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !2484, line: 122, column: 11)
!2575 = distinct !DILexicalBlock(scope: !2559, file: !2484, line: 121, column: 5)
!2576 = !DILocation(line: 106, column: 7, scope: !2577, inlinedAt: !2573)
!2577 = distinct !DILexicalBlock(scope: !2562, file: !2484, line: 106, column: 7)
!2578 = !DILocation(line: 106, column: 7, scope: !2562, inlinedAt: !2573)
!2579 = !DILocalVariable(name: "s1", arg: 1, scope: !2580, file: !2484, line: 90, type: !61)
!2580 = distinct !DISubprogram(name: "strcaseeq5", scope: !2484, file: !2484, line: 90, type: !2581, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!64, !61, !61, !44, !44, !44, !44}
!2583 = !{!2579, !2584, !2585, !2586, !2587, !2588}
!2584 = !DILocalVariable(name: "s2", arg: 2, scope: !2580, file: !2484, line: 90, type: !61)
!2585 = !DILocalVariable(name: "s25", arg: 3, scope: !2580, file: !2484, line: 90, type: !44)
!2586 = !DILocalVariable(name: "s26", arg: 4, scope: !2580, file: !2484, line: 90, type: !44)
!2587 = !DILocalVariable(name: "s27", arg: 5, scope: !2580, file: !2484, line: 90, type: !44)
!2588 = !DILocalVariable(name: "s28", arg: 6, scope: !2580, file: !2484, line: 90, type: !44)
!2589 = !DILocation(line: 0, scope: !2580, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 111, column: 16, scope: !2591, inlinedAt: !2573)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !2484, line: 108, column: 11)
!2592 = distinct !DILexicalBlock(scope: !2577, file: !2484, line: 107, column: 5)
!2593 = !DILocation(line: 92, column: 7, scope: !2594, inlinedAt: !2590)
!2594 = distinct !DILexicalBlock(scope: !2580, file: !2484, line: 92, column: 7)
!2595 = !DILocation(line: 92, column: 7, scope: !2580, inlinedAt: !2590)
!2596 = !DILocation(line: 235, column: 12, scope: !2500)
!2597 = !DILocation(line: 235, column: 21, scope: !2500)
!2598 = !DILocation(line: 235, column: 5, scope: !2500)
!2599 = !DILocation(line: 0, scope: !2504, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 167, column: 16, scope: !2519, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 236, column: 7, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2468, file: !131, line: 236, column: 7)
!2603 = !DILocation(line: 148, column: 7, scope: !2522, inlinedAt: !2600)
!2604 = !DILocation(line: 0, scope: !2524, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 153, column: 16, scope: !2538, inlinedAt: !2600)
!2606 = !DILocation(line: 134, column: 7, scope: !2541, inlinedAt: !2605)
!2607 = !DILocation(line: 134, column: 7, scope: !2524, inlinedAt: !2605)
!2608 = !DILocation(line: 0, scope: !2543, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 139, column: 16, scope: !2556, inlinedAt: !2605)
!2610 = !DILocation(line: 120, column: 7, scope: !2559, inlinedAt: !2609)
!2611 = !DILocation(line: 120, column: 7, scope: !2543, inlinedAt: !2609)
!2612 = !DILocation(line: 0, scope: !2562, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 125, column: 16, scope: !2574, inlinedAt: !2609)
!2614 = !DILocation(line: 106, column: 7, scope: !2577, inlinedAt: !2613)
!2615 = !DILocation(line: 106, column: 7, scope: !2562, inlinedAt: !2613)
!2616 = !DILocation(line: 0, scope: !2580, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 111, column: 16, scope: !2591, inlinedAt: !2613)
!2618 = !DILocation(line: 92, column: 7, scope: !2594, inlinedAt: !2617)
!2619 = !DILocation(line: 92, column: 7, scope: !2580, inlinedAt: !2617)
!2620 = !DILocalVariable(name: "s1", arg: 1, scope: !2621, file: !2484, line: 76, type: !61)
!2621 = distinct !DISubprogram(name: "strcaseeq6", scope: !2484, file: !2484, line: 76, type: !2622, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!64, !61, !61, !44, !44, !44}
!2624 = !{!2620, !2625, !2626, !2627, !2628}
!2625 = !DILocalVariable(name: "s2", arg: 2, scope: !2621, file: !2484, line: 76, type: !61)
!2626 = !DILocalVariable(name: "s26", arg: 3, scope: !2621, file: !2484, line: 76, type: !44)
!2627 = !DILocalVariable(name: "s27", arg: 4, scope: !2621, file: !2484, line: 76, type: !44)
!2628 = !DILocalVariable(name: "s28", arg: 5, scope: !2621, file: !2484, line: 76, type: !44)
!2629 = !DILocation(line: 0, scope: !2621, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 97, column: 16, scope: !2631, inlinedAt: !2617)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !2484, line: 94, column: 11)
!2632 = distinct !DILexicalBlock(scope: !2594, file: !2484, line: 93, column: 5)
!2633 = !DILocation(line: 78, column: 7, scope: !2634, inlinedAt: !2630)
!2634 = distinct !DILexicalBlock(scope: !2621, file: !2484, line: 78, column: 7)
!2635 = !DILocation(line: 78, column: 7, scope: !2621, inlinedAt: !2630)
!2636 = !DILocalVariable(name: "s1", arg: 1, scope: !2637, file: !2484, line: 62, type: !61)
!2637 = distinct !DISubprogram(name: "strcaseeq7", scope: !2484, file: !2484, line: 62, type: !2638, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!64, !61, !61, !44, !44}
!2640 = !{!2636, !2641, !2642, !2643}
!2641 = !DILocalVariable(name: "s2", arg: 2, scope: !2637, file: !2484, line: 62, type: !61)
!2642 = !DILocalVariable(name: "s27", arg: 3, scope: !2637, file: !2484, line: 62, type: !44)
!2643 = !DILocalVariable(name: "s28", arg: 4, scope: !2637, file: !2484, line: 62, type: !44)
!2644 = !DILocation(line: 0, scope: !2637, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 83, column: 16, scope: !2646, inlinedAt: !2630)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !2484, line: 80, column: 11)
!2647 = distinct !DILexicalBlock(scope: !2634, file: !2484, line: 79, column: 5)
!2648 = !DILocation(line: 64, column: 7, scope: !2649, inlinedAt: !2645)
!2649 = distinct !DILexicalBlock(scope: !2637, file: !2484, line: 64, column: 7)
!2650 = !DILocation(line: 236, column: 7, scope: !2468)
!2651 = !DILocation(line: 237, column: 12, scope: !2602)
!2652 = !DILocation(line: 237, column: 21, scope: !2602)
!2653 = !DILocation(line: 237, column: 5, scope: !2602)
!2654 = !DILocation(line: 239, column: 13, scope: !2468)
!2655 = !DILocation(line: 239, column: 11, scope: !2468)
!2656 = !DILocation(line: 239, column: 3, scope: !2468)
!2657 = !DILocation(line: 240, column: 1, scope: !2468)
!2658 = !DISubprogram(name: "iswprint", scope: !2659, file: !2659, line: 120, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!2659 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!64, !7}
!2662 = !DISubprogram(name: "mbsinit", scope: !2663, file: !2663, line: 292, type: !2664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!2663 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!64, !2666}
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!2668 = distinct !DISubprogram(name: "quotearg_alloc", scope: !131, file: !131, line: 799, type: !2669, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!43, !61, !48, !1837}
!2671 = !{!2672, !2673, !2674}
!2672 = !DILocalVariable(name: "arg", arg: 1, scope: !2668, file: !131, line: 799, type: !61)
!2673 = !DILocalVariable(name: "argsize", arg: 2, scope: !2668, file: !131, line: 799, type: !48)
!2674 = !DILocalVariable(name: "o", arg: 3, scope: !2668, file: !131, line: 800, type: !1837)
!2675 = !DILocation(line: 0, scope: !2668)
!2676 = !DILocalVariable(name: "arg", arg: 1, scope: !2677, file: !131, line: 812, type: !61)
!2677 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !131, file: !131, line: 812, type: !2678, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!43, !61, !48, !240, !1837}
!2680 = !{!2676, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688}
!2681 = !DILocalVariable(name: "argsize", arg: 2, scope: !2677, file: !131, line: 812, type: !48)
!2682 = !DILocalVariable(name: "size", arg: 3, scope: !2677, file: !131, line: 812, type: !240)
!2683 = !DILocalVariable(name: "o", arg: 4, scope: !2677, file: !131, line: 813, type: !1837)
!2684 = !DILocalVariable(name: "p", scope: !2677, file: !131, line: 815, type: !1837)
!2685 = !DILocalVariable(name: "e", scope: !2677, file: !131, line: 816, type: !64)
!2686 = !DILocalVariable(name: "flags", scope: !2677, file: !131, line: 818, type: !64)
!2687 = !DILocalVariable(name: "bufsize", scope: !2677, file: !131, line: 819, type: !48)
!2688 = !DILocalVariable(name: "buf", scope: !2677, file: !131, line: 823, type: !43)
!2689 = !DILocation(line: 0, scope: !2677, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 802, column: 10, scope: !2668)
!2691 = !DILocation(line: 815, column: 37, scope: !2677, inlinedAt: !2690)
!2692 = !DILocation(line: 816, column: 11, scope: !2677, inlinedAt: !2690)
!2693 = !DILocation(line: 818, column: 18, scope: !2677, inlinedAt: !2690)
!2694 = !DILocation(line: 818, column: 24, scope: !2677, inlinedAt: !2690)
!2695 = !DILocation(line: 819, column: 69, scope: !2677, inlinedAt: !2690)
!2696 = !DILocation(line: 820, column: 53, scope: !2677, inlinedAt: !2690)
!2697 = !DILocation(line: 821, column: 49, scope: !2677, inlinedAt: !2690)
!2698 = !DILocation(line: 822, column: 49, scope: !2677, inlinedAt: !2690)
!2699 = !DILocation(line: 819, column: 20, scope: !2677, inlinedAt: !2690)
!2700 = !DILocation(line: 822, column: 62, scope: !2677, inlinedAt: !2690)
!2701 = !DILocalVariable(name: "n", arg: 1, scope: !2702, file: !236, line: 216, type: !48)
!2702 = distinct !DISubprogram(name: "xcharalloc", scope: !236, file: !236, line: 216, type: !2703, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!43, !48}
!2705 = !{!2701}
!2706 = !DILocation(line: 0, scope: !2702, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 823, column: 15, scope: !2677, inlinedAt: !2690)
!2708 = !DILocation(line: 218, column: 10, scope: !2702, inlinedAt: !2707)
!2709 = !DILocation(line: 824, column: 60, scope: !2677, inlinedAt: !2690)
!2710 = !DILocation(line: 826, column: 32, scope: !2677, inlinedAt: !2690)
!2711 = !DILocation(line: 826, column: 47, scope: !2677, inlinedAt: !2690)
!2712 = !DILocation(line: 824, column: 3, scope: !2677, inlinedAt: !2690)
!2713 = !DILocation(line: 827, column: 9, scope: !2677, inlinedAt: !2690)
!2714 = !DILocation(line: 802, column: 3, scope: !2668)
!2715 = !DILocation(line: 0, scope: !2677)
!2716 = !DILocation(line: 815, column: 37, scope: !2677)
!2717 = !DILocation(line: 816, column: 11, scope: !2677)
!2718 = !DILocation(line: 818, column: 18, scope: !2677)
!2719 = !DILocation(line: 818, column: 27, scope: !2677)
!2720 = !DILocation(line: 818, column: 24, scope: !2677)
!2721 = !DILocation(line: 819, column: 69, scope: !2677)
!2722 = !DILocation(line: 820, column: 53, scope: !2677)
!2723 = !DILocation(line: 821, column: 49, scope: !2677)
!2724 = !DILocation(line: 822, column: 49, scope: !2677)
!2725 = !DILocation(line: 819, column: 20, scope: !2677)
!2726 = !DILocation(line: 822, column: 62, scope: !2677)
!2727 = !DILocation(line: 0, scope: !2702, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 823, column: 15, scope: !2677)
!2729 = !DILocation(line: 218, column: 10, scope: !2702, inlinedAt: !2728)
!2730 = !DILocation(line: 824, column: 60, scope: !2677)
!2731 = !DILocation(line: 826, column: 32, scope: !2677)
!2732 = !DILocation(line: 826, column: 47, scope: !2677)
!2733 = !DILocation(line: 824, column: 3, scope: !2677)
!2734 = !DILocation(line: 827, column: 9, scope: !2677)
!2735 = !DILocation(line: 828, column: 7, scope: !2677)
!2736 = !DILocation(line: 829, column: 11, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2677, file: !131, line: 828, column: 7)
!2738 = !DILocation(line: 829, column: 5, scope: !2737)
!2739 = !DILocation(line: 830, column: 3, scope: !2677)
!2740 = distinct !DISubprogram(name: "quotearg_free", scope: !131, file: !131, line: 848, type: !213, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2741)
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "sv", scope: !2740, file: !131, line: 850, type: !183)
!2743 = !DILocalVariable(name: "i", scope: !2740, file: !131, line: 851, type: !64)
!2744 = !DILocation(line: 850, column: 24, scope: !2740)
!2745 = !DILocation(line: 0, scope: !2740)
!2746 = !DILocation(line: 852, column: 19, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !131, line: 852, column: 3)
!2748 = distinct !DILexicalBlock(scope: !2740, file: !131, line: 852, column: 3)
!2749 = !DILocation(line: 852, column: 17, scope: !2747)
!2750 = !DILocation(line: 852, column: 3, scope: !2748)
!2751 = !DILocation(line: 853, column: 17, scope: !2747)
!2752 = !{!2753, !679, i64 8}
!2753 = !{!"slotvec", !927, i64 0, !679, i64 8}
!2754 = !DILocation(line: 853, column: 5, scope: !2747)
!2755 = !DILocation(line: 852, column: 28, scope: !2747)
!2756 = distinct !{!2756, !2750, !2757, !724}
!2757 = !DILocation(line: 853, column: 20, scope: !2748)
!2758 = !DILocation(line: 854, column: 13, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2740, file: !131, line: 854, column: 7)
!2760 = !DILocation(line: 854, column: 17, scope: !2759)
!2761 = !DILocation(line: 854, column: 7, scope: !2740)
!2762 = !DILocation(line: 856, column: 7, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !131, line: 855, column: 5)
!2764 = !DILocation(line: 857, column: 21, scope: !2763)
!2765 = !{!2753, !927, i64 0}
!2766 = !DILocation(line: 858, column: 20, scope: !2763)
!2767 = !DILocation(line: 859, column: 5, scope: !2763)
!2768 = !DILocation(line: 860, column: 10, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2740, file: !131, line: 860, column: 7)
!2770 = !DILocation(line: 860, column: 7, scope: !2740)
!2771 = !DILocation(line: 862, column: 13, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !131, line: 861, column: 5)
!2773 = !DILocation(line: 862, column: 7, scope: !2772)
!2774 = !DILocation(line: 863, column: 15, scope: !2772)
!2775 = !DILocation(line: 864, column: 5, scope: !2772)
!2776 = !DILocation(line: 865, column: 10, scope: !2740)
!2777 = !DILocation(line: 866, column: 1, scope: !2740)
!2778 = distinct !DISubprogram(name: "quotearg_n", scope: !131, file: !131, line: 931, type: !806, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2779)
!2779 = !{!2780, !2781}
!2780 = !DILocalVariable(name: "n", arg: 1, scope: !2778, file: !131, line: 931, type: !64)
!2781 = !DILocalVariable(name: "arg", arg: 2, scope: !2778, file: !131, line: 931, type: !61)
!2782 = !DILocation(line: 0, scope: !2778)
!2783 = !DILocation(line: 933, column: 10, scope: !2778)
!2784 = !DILocation(line: 933, column: 3, scope: !2778)
!2785 = distinct !DISubprogram(name: "quotearg_n_options", scope: !131, file: !131, line: 877, type: !2786, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!43, !64, !61, !48, !1837}
!2788 = !{!2789, !2790, !2791, !2792, !2793, !2794, !2795, !2798, !2799, !2801, !2802, !2803}
!2789 = !DILocalVariable(name: "n", arg: 1, scope: !2785, file: !131, line: 877, type: !64)
!2790 = !DILocalVariable(name: "arg", arg: 2, scope: !2785, file: !131, line: 877, type: !61)
!2791 = !DILocalVariable(name: "argsize", arg: 3, scope: !2785, file: !131, line: 877, type: !48)
!2792 = !DILocalVariable(name: "options", arg: 4, scope: !2785, file: !131, line: 878, type: !1837)
!2793 = !DILocalVariable(name: "e", scope: !2785, file: !131, line: 880, type: !64)
!2794 = !DILocalVariable(name: "sv", scope: !2785, file: !131, line: 882, type: !183)
!2795 = !DILocalVariable(name: "preallocated", scope: !2796, file: !131, line: 889, type: !70)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !131, line: 888, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2785, file: !131, line: 887, column: 7)
!2798 = !DILocalVariable(name: "nmax", scope: !2796, file: !131, line: 890, type: !64)
!2799 = !DILocalVariable(name: "size", scope: !2800, file: !131, line: 903, type: !48)
!2800 = distinct !DILexicalBlock(scope: !2785, file: !131, line: 902, column: 3)
!2801 = !DILocalVariable(name: "val", scope: !2800, file: !131, line: 904, type: !43)
!2802 = !DILocalVariable(name: "flags", scope: !2800, file: !131, line: 906, type: !64)
!2803 = !DILocalVariable(name: "qsize", scope: !2800, file: !131, line: 907, type: !48)
!2804 = !DILocation(line: 0, scope: !2785)
!2805 = !DILocation(line: 880, column: 11, scope: !2785)
!2806 = !DILocation(line: 882, column: 24, scope: !2785)
!2807 = !DILocation(line: 884, column: 9, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2785, file: !131, line: 884, column: 7)
!2809 = !DILocation(line: 884, column: 7, scope: !2785)
!2810 = !DILocation(line: 885, column: 5, scope: !2808)
!2811 = !DILocation(line: 887, column: 7, scope: !2797)
!2812 = !DILocation(line: 887, column: 14, scope: !2797)
!2813 = !DILocation(line: 887, column: 7, scope: !2785)
!2814 = !DILocation(line: 889, column: 31, scope: !2796)
!2815 = !DILocation(line: 0, scope: !2796)
!2816 = !DILocation(line: 892, column: 16, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2796, file: !131, line: 892, column: 11)
!2818 = !DILocation(line: 892, column: 11, scope: !2796)
!2819 = !DILocation(line: 893, column: 9, scope: !2817)
!2820 = !DILocation(line: 895, column: 32, scope: !2796)
!2821 = !DILocation(line: 895, column: 61, scope: !2796)
!2822 = !DILocation(line: 895, column: 66, scope: !2796)
!2823 = !DILocation(line: 895, column: 22, scope: !2796)
!2824 = !DILocation(line: 895, column: 15, scope: !2796)
!2825 = !DILocation(line: 896, column: 11, scope: !2796)
!2826 = !DILocation(line: 897, column: 15, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2796, file: !131, line: 896, column: 11)
!2828 = !{i64 0, i64 8, !1723, i64 8, i64 8, !678}
!2829 = !DILocation(line: 897, column: 9, scope: !2827)
!2830 = !DILocation(line: 898, column: 20, scope: !2796)
!2831 = !DILocation(line: 898, column: 18, scope: !2796)
!2832 = !DILocation(line: 898, column: 15, scope: !2796)
!2833 = !DILocation(line: 898, column: 38, scope: !2796)
!2834 = !DILocation(line: 898, column: 31, scope: !2796)
!2835 = !DILocation(line: 898, column: 48, scope: !2796)
!2836 = !DILocation(line: 0, scope: !2230, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 898, column: 7, scope: !2796)
!2838 = !DILocation(line: 59, column: 10, scope: !2230, inlinedAt: !2837)
!2839 = !DILocation(line: 899, column: 14, scope: !2796)
!2840 = !DILocation(line: 900, column: 5, scope: !2796)
!2841 = !DILocation(line: 903, column: 19, scope: !2800)
!2842 = !DILocation(line: 903, column: 25, scope: !2800)
!2843 = !DILocation(line: 0, scope: !2800)
!2844 = !DILocation(line: 904, column: 23, scope: !2800)
!2845 = !DILocation(line: 906, column: 26, scope: !2800)
!2846 = !DILocation(line: 906, column: 32, scope: !2800)
!2847 = !DILocation(line: 908, column: 55, scope: !2800)
!2848 = !DILocation(line: 909, column: 46, scope: !2800)
!2849 = !DILocation(line: 910, column: 55, scope: !2800)
!2850 = !DILocation(line: 911, column: 55, scope: !2800)
!2851 = !DILocation(line: 907, column: 20, scope: !2800)
!2852 = !DILocation(line: 913, column: 14, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2800, file: !131, line: 913, column: 9)
!2854 = !DILocation(line: 913, column: 9, scope: !2800)
!2855 = !DILocation(line: 915, column: 35, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2853, file: !131, line: 914, column: 7)
!2857 = !DILocation(line: 915, column: 20, scope: !2856)
!2858 = !DILocation(line: 916, column: 17, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !131, line: 916, column: 13)
!2860 = !DILocation(line: 916, column: 13, scope: !2856)
!2861 = !DILocation(line: 917, column: 11, scope: !2859)
!2862 = !DILocation(line: 0, scope: !2702, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 918, column: 27, scope: !2856)
!2864 = !DILocation(line: 218, column: 10, scope: !2702, inlinedAt: !2863)
!2865 = !DILocation(line: 918, column: 19, scope: !2856)
!2866 = !DILocation(line: 919, column: 69, scope: !2856)
!2867 = !DILocation(line: 921, column: 44, scope: !2856)
!2868 = !DILocation(line: 922, column: 44, scope: !2856)
!2869 = !DILocation(line: 919, column: 9, scope: !2856)
!2870 = !DILocation(line: 923, column: 7, scope: !2856)
!2871 = !DILocation(line: 925, column: 11, scope: !2800)
!2872 = !DILocation(line: 926, column: 5, scope: !2800)
!2873 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !131, file: !131, line: 937, type: !2874, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!43, !64, !61, !48}
!2876 = !{!2877, !2878, !2879}
!2877 = !DILocalVariable(name: "n", arg: 1, scope: !2873, file: !131, line: 937, type: !64)
!2878 = !DILocalVariable(name: "arg", arg: 2, scope: !2873, file: !131, line: 937, type: !61)
!2879 = !DILocalVariable(name: "argsize", arg: 3, scope: !2873, file: !131, line: 937, type: !48)
!2880 = !DILocation(line: 0, scope: !2873)
!2881 = !DILocation(line: 939, column: 10, scope: !2873)
!2882 = !DILocation(line: 939, column: 3, scope: !2873)
!2883 = distinct !DISubprogram(name: "quotearg", scope: !131, file: !131, line: 943, type: !989, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2884)
!2884 = !{!2885}
!2885 = !DILocalVariable(name: "arg", arg: 1, scope: !2883, file: !131, line: 943, type: !61)
!2886 = !DILocation(line: 0, scope: !2883)
!2887 = !DILocation(line: 0, scope: !2778, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 945, column: 10, scope: !2883)
!2889 = !DILocation(line: 933, column: 10, scope: !2778, inlinedAt: !2888)
!2890 = !DILocation(line: 945, column: 3, scope: !2883)
!2891 = distinct !DISubprogram(name: "quotearg_mem", scope: !131, file: !131, line: 949, type: !2892, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!43, !61, !48}
!2894 = !{!2895, !2896}
!2895 = !DILocalVariable(name: "arg", arg: 1, scope: !2891, file: !131, line: 949, type: !61)
!2896 = !DILocalVariable(name: "argsize", arg: 2, scope: !2891, file: !131, line: 949, type: !48)
!2897 = !DILocation(line: 0, scope: !2891)
!2898 = !DILocation(line: 0, scope: !2873, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 951, column: 10, scope: !2891)
!2900 = !DILocation(line: 939, column: 10, scope: !2873, inlinedAt: !2899)
!2901 = !DILocation(line: 951, column: 3, scope: !2891)
!2902 = distinct !DISubprogram(name: "quotearg_n_style", scope: !131, file: !131, line: 955, type: !2903, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!43, !64, !5, !61}
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DILocalVariable(name: "n", arg: 1, scope: !2902, file: !131, line: 955, type: !64)
!2907 = !DILocalVariable(name: "s", arg: 2, scope: !2902, file: !131, line: 955, type: !5)
!2908 = !DILocalVariable(name: "arg", arg: 3, scope: !2902, file: !131, line: 955, type: !61)
!2909 = !DILocalVariable(name: "o", scope: !2902, file: !131, line: 957, type: !1838)
!2910 = !DILocation(line: 0, scope: !2902)
!2911 = !DILocation(line: 957, column: 3, scope: !2902)
!2912 = !DILocation(line: 957, column: 32, scope: !2902)
!2913 = !{!2914}
!2914 = distinct !{!2914, !2915, !"quoting_options_from_style: argument 0"}
!2915 = distinct !{!2915, !"quoting_options_from_style"}
!2916 = !DILocation(line: 957, column: 36, scope: !2902)
!2917 = !DILocalVariable(name: "style", arg: 1, scope: !2918, file: !131, line: 193, type: !5)
!2918 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !131, file: !131, line: 193, type: !2919, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!164, !5}
!2921 = !{!2917, !2922}
!2922 = !DILocalVariable(name: "o", scope: !2918, file: !131, line: 195, type: !164)
!2923 = !DILocation(line: 0, scope: !2918, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 957, column: 36, scope: !2902)
!2925 = !DILocation(line: 195, column: 26, scope: !2918, inlinedAt: !2924)
!2926 = !DILocation(line: 196, column: 13, scope: !2927, inlinedAt: !2924)
!2927 = distinct !DILexicalBlock(scope: !2918, file: !131, line: 196, column: 7)
!2928 = !DILocation(line: 196, column: 7, scope: !2918, inlinedAt: !2924)
!2929 = !DILocation(line: 197, column: 5, scope: !2927, inlinedAt: !2924)
!2930 = !DILocation(line: 198, column: 5, scope: !2918, inlinedAt: !2924)
!2931 = !DILocation(line: 198, column: 11, scope: !2918, inlinedAt: !2924)
!2932 = !DILocation(line: 958, column: 10, scope: !2902)
!2933 = !DILocation(line: 959, column: 1, scope: !2902)
!2934 = !DILocation(line: 958, column: 3, scope: !2902)
!2935 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !131, file: !131, line: 962, type: !2936, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!43, !64, !5, !61, !48}
!2938 = !{!2939, !2940, !2941, !2942, !2943}
!2939 = !DILocalVariable(name: "n", arg: 1, scope: !2935, file: !131, line: 962, type: !64)
!2940 = !DILocalVariable(name: "s", arg: 2, scope: !2935, file: !131, line: 962, type: !5)
!2941 = !DILocalVariable(name: "arg", arg: 3, scope: !2935, file: !131, line: 963, type: !61)
!2942 = !DILocalVariable(name: "argsize", arg: 4, scope: !2935, file: !131, line: 963, type: !48)
!2943 = !DILocalVariable(name: "o", scope: !2935, file: !131, line: 965, type: !1838)
!2944 = !DILocation(line: 0, scope: !2935)
!2945 = !DILocation(line: 965, column: 3, scope: !2935)
!2946 = !DILocation(line: 965, column: 32, scope: !2935)
!2947 = !{!2948}
!2948 = distinct !{!2948, !2949, !"quoting_options_from_style: argument 0"}
!2949 = distinct !{!2949, !"quoting_options_from_style"}
!2950 = !DILocation(line: 965, column: 36, scope: !2935)
!2951 = !DILocation(line: 0, scope: !2918, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 965, column: 36, scope: !2935)
!2953 = !DILocation(line: 195, column: 26, scope: !2918, inlinedAt: !2952)
!2954 = !DILocation(line: 196, column: 13, scope: !2927, inlinedAt: !2952)
!2955 = !DILocation(line: 196, column: 7, scope: !2918, inlinedAt: !2952)
!2956 = !DILocation(line: 197, column: 5, scope: !2927, inlinedAt: !2952)
!2957 = !DILocation(line: 198, column: 5, scope: !2918, inlinedAt: !2952)
!2958 = !DILocation(line: 198, column: 11, scope: !2918, inlinedAt: !2952)
!2959 = !DILocation(line: 966, column: 10, scope: !2935)
!2960 = !DILocation(line: 967, column: 1, scope: !2935)
!2961 = !DILocation(line: 966, column: 3, scope: !2935)
!2962 = distinct !DISubprogram(name: "quotearg_style", scope: !131, file: !131, line: 970, type: !2963, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!43, !5, !61}
!2965 = !{!2966, !2967}
!2966 = !DILocalVariable(name: "s", arg: 1, scope: !2962, file: !131, line: 970, type: !5)
!2967 = !DILocalVariable(name: "arg", arg: 2, scope: !2962, file: !131, line: 970, type: !61)
!2968 = !DILocation(line: 0, scope: !2962)
!2969 = !DILocation(line: 0, scope: !2902, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 972, column: 10, scope: !2962)
!2971 = !DILocation(line: 957, column: 3, scope: !2902, inlinedAt: !2970)
!2972 = !DILocation(line: 957, column: 32, scope: !2902, inlinedAt: !2970)
!2973 = !{!2974}
!2974 = distinct !{!2974, !2975, !"quoting_options_from_style: argument 0"}
!2975 = distinct !{!2975, !"quoting_options_from_style"}
!2976 = !DILocation(line: 957, column: 36, scope: !2902, inlinedAt: !2970)
!2977 = !DILocation(line: 0, scope: !2918, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 957, column: 36, scope: !2902, inlinedAt: !2970)
!2979 = !DILocation(line: 195, column: 26, scope: !2918, inlinedAt: !2978)
!2980 = !DILocation(line: 196, column: 13, scope: !2927, inlinedAt: !2978)
!2981 = !DILocation(line: 196, column: 7, scope: !2918, inlinedAt: !2978)
!2982 = !DILocation(line: 197, column: 5, scope: !2927, inlinedAt: !2978)
!2983 = !DILocation(line: 198, column: 5, scope: !2918, inlinedAt: !2978)
!2984 = !DILocation(line: 198, column: 11, scope: !2918, inlinedAt: !2978)
!2985 = !DILocation(line: 958, column: 10, scope: !2902, inlinedAt: !2970)
!2986 = !DILocation(line: 959, column: 1, scope: !2902, inlinedAt: !2970)
!2987 = !DILocation(line: 972, column: 3, scope: !2962)
!2988 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !131, file: !131, line: 976, type: !2989, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!43, !5, !61, !48}
!2991 = !{!2992, !2993, !2994}
!2992 = !DILocalVariable(name: "s", arg: 1, scope: !2988, file: !131, line: 976, type: !5)
!2993 = !DILocalVariable(name: "arg", arg: 2, scope: !2988, file: !131, line: 976, type: !61)
!2994 = !DILocalVariable(name: "argsize", arg: 3, scope: !2988, file: !131, line: 976, type: !48)
!2995 = !DILocation(line: 0, scope: !2988)
!2996 = !DILocation(line: 0, scope: !2935, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 978, column: 10, scope: !2988)
!2998 = !DILocation(line: 965, column: 3, scope: !2935, inlinedAt: !2997)
!2999 = !DILocation(line: 965, column: 32, scope: !2935, inlinedAt: !2997)
!3000 = !{!3001}
!3001 = distinct !{!3001, !3002, !"quoting_options_from_style: argument 0"}
!3002 = distinct !{!3002, !"quoting_options_from_style"}
!3003 = !DILocation(line: 965, column: 36, scope: !2935, inlinedAt: !2997)
!3004 = !DILocation(line: 0, scope: !2918, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 965, column: 36, scope: !2935, inlinedAt: !2997)
!3006 = !DILocation(line: 195, column: 26, scope: !2918, inlinedAt: !3005)
!3007 = !DILocation(line: 196, column: 13, scope: !2927, inlinedAt: !3005)
!3008 = !DILocation(line: 196, column: 7, scope: !2918, inlinedAt: !3005)
!3009 = !DILocation(line: 197, column: 5, scope: !2927, inlinedAt: !3005)
!3010 = !DILocation(line: 198, column: 5, scope: !2918, inlinedAt: !3005)
!3011 = !DILocation(line: 198, column: 11, scope: !2918, inlinedAt: !3005)
!3012 = !DILocation(line: 966, column: 10, scope: !2935, inlinedAt: !2997)
!3013 = !DILocation(line: 967, column: 1, scope: !2935, inlinedAt: !2997)
!3014 = !DILocation(line: 978, column: 3, scope: !2988)
!3015 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !131, file: !131, line: 982, type: !3016, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!43, !61, !48, !44}
!3018 = !{!3019, !3020, !3021, !3022}
!3019 = !DILocalVariable(name: "arg", arg: 1, scope: !3015, file: !131, line: 982, type: !61)
!3020 = !DILocalVariable(name: "argsize", arg: 2, scope: !3015, file: !131, line: 982, type: !48)
!3021 = !DILocalVariable(name: "ch", arg: 3, scope: !3015, file: !131, line: 982, type: !44)
!3022 = !DILocalVariable(name: "options", scope: !3015, file: !131, line: 984, type: !164)
!3023 = !DILocation(line: 0, scope: !3015)
!3024 = !DILocation(line: 984, column: 3, scope: !3015)
!3025 = !DILocation(line: 984, column: 26, scope: !3015)
!3026 = !DILocation(line: 985, column: 13, scope: !3015)
!3027 = !{i64 0, i64 4, !931, i64 4, i64 4, !843, i64 8, i64 32, !931, i64 40, i64 8, !678, i64 48, i64 8, !678}
!3028 = !DILocation(line: 0, scope: !1858, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 986, column: 3, scope: !3015)
!3030 = !DILocation(line: 156, column: 62, scope: !1858, inlinedAt: !3029)
!3031 = !DILocation(line: 156, column: 57, scope: !1858, inlinedAt: !3029)
!3032 = !DILocation(line: 157, column: 15, scope: !1858, inlinedAt: !3029)
!3033 = !DILocation(line: 158, column: 12, scope: !1858, inlinedAt: !3029)
!3034 = !DILocation(line: 158, column: 15, scope: !1858, inlinedAt: !3029)
!3035 = !DILocation(line: 158, column: 25, scope: !1858, inlinedAt: !3029)
!3036 = !DILocation(line: 159, column: 18, scope: !1858, inlinedAt: !3029)
!3037 = !DILocation(line: 159, column: 23, scope: !1858, inlinedAt: !3029)
!3038 = !DILocation(line: 159, column: 6, scope: !1858, inlinedAt: !3029)
!3039 = !DILocation(line: 987, column: 10, scope: !3015)
!3040 = !DILocation(line: 988, column: 1, scope: !3015)
!3041 = !DILocation(line: 987, column: 3, scope: !3015)
!3042 = distinct !DISubprogram(name: "quotearg_char", scope: !131, file: !131, line: 991, type: !3043, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3045)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!43, !61, !44}
!3045 = !{!3046, !3047}
!3046 = !DILocalVariable(name: "arg", arg: 1, scope: !3042, file: !131, line: 991, type: !61)
!3047 = !DILocalVariable(name: "ch", arg: 2, scope: !3042, file: !131, line: 991, type: !44)
!3048 = !DILocation(line: 0, scope: !3042)
!3049 = !DILocation(line: 0, scope: !3015, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 993, column: 10, scope: !3042)
!3051 = !DILocation(line: 984, column: 3, scope: !3015, inlinedAt: !3050)
!3052 = !DILocation(line: 984, column: 26, scope: !3015, inlinedAt: !3050)
!3053 = !DILocation(line: 985, column: 13, scope: !3015, inlinedAt: !3050)
!3054 = !DILocation(line: 0, scope: !1858, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 986, column: 3, scope: !3015, inlinedAt: !3050)
!3056 = !DILocation(line: 156, column: 62, scope: !1858, inlinedAt: !3055)
!3057 = !DILocation(line: 156, column: 57, scope: !1858, inlinedAt: !3055)
!3058 = !DILocation(line: 157, column: 15, scope: !1858, inlinedAt: !3055)
!3059 = !DILocation(line: 158, column: 12, scope: !1858, inlinedAt: !3055)
!3060 = !DILocation(line: 158, column: 15, scope: !1858, inlinedAt: !3055)
!3061 = !DILocation(line: 158, column: 25, scope: !1858, inlinedAt: !3055)
!3062 = !DILocation(line: 159, column: 18, scope: !1858, inlinedAt: !3055)
!3063 = !DILocation(line: 159, column: 23, scope: !1858, inlinedAt: !3055)
!3064 = !DILocation(line: 159, column: 6, scope: !1858, inlinedAt: !3055)
!3065 = !DILocation(line: 987, column: 10, scope: !3015, inlinedAt: !3050)
!3066 = !DILocation(line: 988, column: 1, scope: !3015, inlinedAt: !3050)
!3067 = !DILocation(line: 993, column: 3, scope: !3042)
!3068 = distinct !DISubprogram(name: "quotearg_colon", scope: !131, file: !131, line: 997, type: !989, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3069)
!3069 = !{!3070}
!3070 = !DILocalVariable(name: "arg", arg: 1, scope: !3068, file: !131, line: 997, type: !61)
!3071 = !DILocation(line: 0, scope: !3068)
!3072 = !DILocation(line: 0, scope: !3042, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 999, column: 10, scope: !3068)
!3074 = !DILocation(line: 0, scope: !3015, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 993, column: 10, scope: !3042, inlinedAt: !3073)
!3076 = !DILocation(line: 984, column: 3, scope: !3015, inlinedAt: !3075)
!3077 = !DILocation(line: 984, column: 26, scope: !3015, inlinedAt: !3075)
!3078 = !DILocation(line: 985, column: 13, scope: !3015, inlinedAt: !3075)
!3079 = !DILocation(line: 0, scope: !1858, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 986, column: 3, scope: !3015, inlinedAt: !3075)
!3081 = !DILocation(line: 156, column: 57, scope: !1858, inlinedAt: !3080)
!3082 = !DILocation(line: 158, column: 12, scope: !1858, inlinedAt: !3080)
!3083 = !DILocation(line: 159, column: 6, scope: !1858, inlinedAt: !3080)
!3084 = !DILocation(line: 987, column: 10, scope: !3015, inlinedAt: !3075)
!3085 = !DILocation(line: 988, column: 1, scope: !3015, inlinedAt: !3075)
!3086 = !DILocation(line: 999, column: 3, scope: !3068)
!3087 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !131, file: !131, line: 1003, type: !2892, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3088)
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "arg", arg: 1, scope: !3087, file: !131, line: 1003, type: !61)
!3090 = !DILocalVariable(name: "argsize", arg: 2, scope: !3087, file: !131, line: 1003, type: !48)
!3091 = !DILocation(line: 0, scope: !3087)
!3092 = !DILocation(line: 0, scope: !3015, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 1005, column: 10, scope: !3087)
!3094 = !DILocation(line: 984, column: 3, scope: !3015, inlinedAt: !3093)
!3095 = !DILocation(line: 984, column: 26, scope: !3015, inlinedAt: !3093)
!3096 = !DILocation(line: 985, column: 13, scope: !3015, inlinedAt: !3093)
!3097 = !DILocation(line: 0, scope: !1858, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 986, column: 3, scope: !3015, inlinedAt: !3093)
!3099 = !DILocation(line: 156, column: 57, scope: !1858, inlinedAt: !3098)
!3100 = !DILocation(line: 158, column: 12, scope: !1858, inlinedAt: !3098)
!3101 = !DILocation(line: 159, column: 6, scope: !1858, inlinedAt: !3098)
!3102 = !DILocation(line: 987, column: 10, scope: !3015, inlinedAt: !3093)
!3103 = !DILocation(line: 988, column: 1, scope: !3015, inlinedAt: !3093)
!3104 = !DILocation(line: 1005, column: 3, scope: !3087)
!3105 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !131, file: !131, line: 1009, type: !2903, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3106)
!3106 = !{!3107, !3108, !3109, !3110}
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3105, file: !131, line: 1009, type: !64)
!3108 = !DILocalVariable(name: "s", arg: 2, scope: !3105, file: !131, line: 1009, type: !5)
!3109 = !DILocalVariable(name: "arg", arg: 3, scope: !3105, file: !131, line: 1009, type: !61)
!3110 = !DILocalVariable(name: "options", scope: !3105, file: !131, line: 1011, type: !164)
!3111 = !DILocation(line: 195, column: 26, scope: !2918, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 1012, column: 13, scope: !3105)
!3113 = !DILocation(line: 0, scope: !3105)
!3114 = !DILocation(line: 1011, column: 3, scope: !3105)
!3115 = !DILocation(line: 1011, column: 26, scope: !3105)
!3116 = !DILocation(line: 1012, column: 13, scope: !3105)
!3117 = !{!3118}
!3118 = distinct !{!3118, !3119, !"quoting_options_from_style: argument 0"}
!3119 = distinct !{!3119, !"quoting_options_from_style"}
!3120 = !DILocation(line: 0, scope: !2918, inlinedAt: !3112)
!3121 = !DILocation(line: 196, column: 13, scope: !2927, inlinedAt: !3112)
!3122 = !DILocation(line: 196, column: 7, scope: !2918, inlinedAt: !3112)
!3123 = !DILocation(line: 197, column: 5, scope: !2927, inlinedAt: !3112)
!3124 = !{i64 0, i64 4, !843, i64 4, i64 32, !931, i64 36, i64 8, !678, i64 44, i64 8, !678}
!3125 = !DILocation(line: 0, scope: !1858, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 1013, column: 3, scope: !3105)
!3127 = !DILocation(line: 156, column: 57, scope: !1858, inlinedAt: !3126)
!3128 = !DILocation(line: 158, column: 12, scope: !1858, inlinedAt: !3126)
!3129 = !DILocation(line: 159, column: 6, scope: !1858, inlinedAt: !3126)
!3130 = !DILocation(line: 1014, column: 10, scope: !3105)
!3131 = !DILocation(line: 1015, column: 1, scope: !3105)
!3132 = !DILocation(line: 1014, column: 3, scope: !3105)
!3133 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !131, file: !131, line: 1018, type: !3134, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!43, !64, !61, !61, !61}
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !131, line: 1018, type: !64)
!3138 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3133, file: !131, line: 1018, type: !61)
!3139 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3133, file: !131, line: 1019, type: !61)
!3140 = !DILocalVariable(name: "arg", arg: 4, scope: !3133, file: !131, line: 1019, type: !61)
!3141 = !DILocation(line: 0, scope: !3133)
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3143, file: !131, line: 1026, type: !64)
!3143 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !131, file: !131, line: 1026, type: !3144, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!43, !64, !61, !61, !61, !48}
!3146 = !{!3142, !3147, !3148, !3149, !3150, !3151}
!3147 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3143, file: !131, line: 1026, type: !61)
!3148 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3143, file: !131, line: 1027, type: !61)
!3149 = !DILocalVariable(name: "arg", arg: 4, scope: !3143, file: !131, line: 1028, type: !61)
!3150 = !DILocalVariable(name: "argsize", arg: 5, scope: !3143, file: !131, line: 1028, type: !48)
!3151 = !DILocalVariable(name: "o", scope: !3143, file: !131, line: 1030, type: !164)
!3152 = !DILocation(line: 0, scope: !3143, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 1021, column: 10, scope: !3133)
!3154 = !DILocation(line: 1030, column: 3, scope: !3143, inlinedAt: !3153)
!3155 = !DILocation(line: 1030, column: 26, scope: !3143, inlinedAt: !3153)
!3156 = !DILocation(line: 1030, column: 30, scope: !3143, inlinedAt: !3153)
!3157 = !DILocation(line: 0, scope: !1898, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 1031, column: 3, scope: !3143, inlinedAt: !3153)
!3159 = !DILocation(line: 184, column: 6, scope: !1898, inlinedAt: !3158)
!3160 = !DILocation(line: 184, column: 12, scope: !1898, inlinedAt: !3158)
!3161 = !DILocation(line: 185, column: 8, scope: !1912, inlinedAt: !3158)
!3162 = !DILocation(line: 185, column: 19, scope: !1912, inlinedAt: !3158)
!3163 = !DILocation(line: 186, column: 5, scope: !1912, inlinedAt: !3158)
!3164 = !DILocation(line: 187, column: 6, scope: !1898, inlinedAt: !3158)
!3165 = !DILocation(line: 187, column: 17, scope: !1898, inlinedAt: !3158)
!3166 = !DILocation(line: 188, column: 6, scope: !1898, inlinedAt: !3158)
!3167 = !DILocation(line: 188, column: 18, scope: !1898, inlinedAt: !3158)
!3168 = !DILocation(line: 1032, column: 10, scope: !3143, inlinedAt: !3153)
!3169 = !DILocation(line: 1033, column: 1, scope: !3143, inlinedAt: !3153)
!3170 = !DILocation(line: 1021, column: 3, scope: !3133)
!3171 = !DILocation(line: 0, scope: !3143)
!3172 = !DILocation(line: 1030, column: 3, scope: !3143)
!3173 = !DILocation(line: 1030, column: 26, scope: !3143)
!3174 = !DILocation(line: 1030, column: 30, scope: !3143)
!3175 = !DILocation(line: 0, scope: !1898, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 1031, column: 3, scope: !3143)
!3177 = !DILocation(line: 184, column: 6, scope: !1898, inlinedAt: !3176)
!3178 = !DILocation(line: 184, column: 12, scope: !1898, inlinedAt: !3176)
!3179 = !DILocation(line: 185, column: 8, scope: !1912, inlinedAt: !3176)
!3180 = !DILocation(line: 185, column: 19, scope: !1912, inlinedAt: !3176)
!3181 = !DILocation(line: 186, column: 5, scope: !1912, inlinedAt: !3176)
!3182 = !DILocation(line: 187, column: 6, scope: !1898, inlinedAt: !3176)
!3183 = !DILocation(line: 187, column: 17, scope: !1898, inlinedAt: !3176)
!3184 = !DILocation(line: 188, column: 6, scope: !1898, inlinedAt: !3176)
!3185 = !DILocation(line: 188, column: 18, scope: !1898, inlinedAt: !3176)
!3186 = !DILocation(line: 1032, column: 10, scope: !3143)
!3187 = !DILocation(line: 1033, column: 1, scope: !3143)
!3188 = !DILocation(line: 1032, column: 3, scope: !3143)
!3189 = distinct !DISubprogram(name: "quotearg_custom", scope: !131, file: !131, line: 1036, type: !3190, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!43, !61, !61, !61}
!3192 = !{!3193, !3194, !3195}
!3193 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3189, file: !131, line: 1036, type: !61)
!3194 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3189, file: !131, line: 1036, type: !61)
!3195 = !DILocalVariable(name: "arg", arg: 3, scope: !3189, file: !131, line: 1037, type: !61)
!3196 = !DILocation(line: 0, scope: !3189)
!3197 = !DILocation(line: 0, scope: !3133, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 1039, column: 10, scope: !3189)
!3199 = !DILocation(line: 0, scope: !3143, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1021, column: 10, scope: !3133, inlinedAt: !3198)
!3201 = !DILocation(line: 1030, column: 3, scope: !3143, inlinedAt: !3200)
!3202 = !DILocation(line: 1030, column: 26, scope: !3143, inlinedAt: !3200)
!3203 = !DILocation(line: 1030, column: 30, scope: !3143, inlinedAt: !3200)
!3204 = !DILocation(line: 0, scope: !1898, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 1031, column: 3, scope: !3143, inlinedAt: !3200)
!3206 = !DILocation(line: 184, column: 6, scope: !1898, inlinedAt: !3205)
!3207 = !DILocation(line: 184, column: 12, scope: !1898, inlinedAt: !3205)
!3208 = !DILocation(line: 185, column: 8, scope: !1912, inlinedAt: !3205)
!3209 = !DILocation(line: 185, column: 19, scope: !1912, inlinedAt: !3205)
!3210 = !DILocation(line: 186, column: 5, scope: !1912, inlinedAt: !3205)
!3211 = !DILocation(line: 187, column: 6, scope: !1898, inlinedAt: !3205)
!3212 = !DILocation(line: 187, column: 17, scope: !1898, inlinedAt: !3205)
!3213 = !DILocation(line: 188, column: 6, scope: !1898, inlinedAt: !3205)
!3214 = !DILocation(line: 188, column: 18, scope: !1898, inlinedAt: !3205)
!3215 = !DILocation(line: 1032, column: 10, scope: !3143, inlinedAt: !3200)
!3216 = !DILocation(line: 1033, column: 1, scope: !3143, inlinedAt: !3200)
!3217 = !DILocation(line: 1039, column: 3, scope: !3189)
!3218 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !131, file: !131, line: 1043, type: !3219, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!43, !61, !61, !61, !48}
!3221 = !{!3222, !3223, !3224, !3225}
!3222 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3218, file: !131, line: 1043, type: !61)
!3223 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3218, file: !131, line: 1043, type: !61)
!3224 = !DILocalVariable(name: "arg", arg: 3, scope: !3218, file: !131, line: 1044, type: !61)
!3225 = !DILocalVariable(name: "argsize", arg: 4, scope: !3218, file: !131, line: 1044, type: !48)
!3226 = !DILocation(line: 0, scope: !3218)
!3227 = !DILocation(line: 0, scope: !3143, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 1046, column: 10, scope: !3218)
!3229 = !DILocation(line: 1030, column: 3, scope: !3143, inlinedAt: !3228)
!3230 = !DILocation(line: 1030, column: 26, scope: !3143, inlinedAt: !3228)
!3231 = !DILocation(line: 1030, column: 30, scope: !3143, inlinedAt: !3228)
!3232 = !DILocation(line: 0, scope: !1898, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 1031, column: 3, scope: !3143, inlinedAt: !3228)
!3234 = !DILocation(line: 184, column: 6, scope: !1898, inlinedAt: !3233)
!3235 = !DILocation(line: 184, column: 12, scope: !1898, inlinedAt: !3233)
!3236 = !DILocation(line: 185, column: 8, scope: !1912, inlinedAt: !3233)
!3237 = !DILocation(line: 185, column: 19, scope: !1912, inlinedAt: !3233)
!3238 = !DILocation(line: 186, column: 5, scope: !1912, inlinedAt: !3233)
!3239 = !DILocation(line: 187, column: 6, scope: !1898, inlinedAt: !3233)
!3240 = !DILocation(line: 187, column: 17, scope: !1898, inlinedAt: !3233)
!3241 = !DILocation(line: 188, column: 6, scope: !1898, inlinedAt: !3233)
!3242 = !DILocation(line: 188, column: 18, scope: !1898, inlinedAt: !3233)
!3243 = !DILocation(line: 1032, column: 10, scope: !3143, inlinedAt: !3228)
!3244 = !DILocation(line: 1033, column: 1, scope: !3143, inlinedAt: !3228)
!3245 = !DILocation(line: 1046, column: 3, scope: !3218)
!3246 = distinct !DISubprogram(name: "quote_n_mem", scope: !131, file: !131, line: 1061, type: !3247, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!61, !64, !61, !48}
!3249 = !{!3250, !3251, !3252}
!3250 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !131, line: 1061, type: !64)
!3251 = !DILocalVariable(name: "arg", arg: 2, scope: !3246, file: !131, line: 1061, type: !61)
!3252 = !DILocalVariable(name: "argsize", arg: 3, scope: !3246, file: !131, line: 1061, type: !48)
!3253 = !DILocation(line: 0, scope: !3246)
!3254 = !DILocation(line: 1063, column: 10, scope: !3246)
!3255 = !DILocation(line: 1063, column: 3, scope: !3246)
!3256 = distinct !DISubprogram(name: "quote_mem", scope: !131, file: !131, line: 1067, type: !3257, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!61, !61, !48}
!3259 = !{!3260, !3261}
!3260 = !DILocalVariable(name: "arg", arg: 1, scope: !3256, file: !131, line: 1067, type: !61)
!3261 = !DILocalVariable(name: "argsize", arg: 2, scope: !3256, file: !131, line: 1067, type: !48)
!3262 = !DILocation(line: 0, scope: !3256)
!3263 = !DILocation(line: 0, scope: !3246, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 1069, column: 10, scope: !3256)
!3265 = !DILocation(line: 1063, column: 10, scope: !3246, inlinedAt: !3264)
!3266 = !DILocation(line: 1069, column: 3, scope: !3256)
!3267 = distinct !DISubprogram(name: "quote_n", scope: !131, file: !131, line: 1073, type: !3268, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!61, !64, !61}
!3270 = !{!3271, !3272}
!3271 = !DILocalVariable(name: "n", arg: 1, scope: !3267, file: !131, line: 1073, type: !64)
!3272 = !DILocalVariable(name: "arg", arg: 2, scope: !3267, file: !131, line: 1073, type: !61)
!3273 = !DILocation(line: 0, scope: !3267)
!3274 = !DILocation(line: 0, scope: !3246, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 1075, column: 10, scope: !3267)
!3276 = !DILocation(line: 1063, column: 10, scope: !3246, inlinedAt: !3275)
!3277 = !DILocation(line: 1075, column: 3, scope: !3267)
!3278 = distinct !DISubprogram(name: "quote", scope: !131, file: !131, line: 1079, type: !3279, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!61, !61}
!3281 = !{!3282}
!3282 = !DILocalVariable(name: "arg", arg: 1, scope: !3278, file: !131, line: 1079, type: !61)
!3283 = !DILocation(line: 0, scope: !3278)
!3284 = !DILocation(line: 0, scope: !3267, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 1081, column: 10, scope: !3278)
!3286 = !DILocation(line: 0, scope: !3246, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1075, column: 10, scope: !3267, inlinedAt: !3285)
!3288 = !DILocation(line: 1063, column: 10, scope: !3246, inlinedAt: !3287)
!3289 = !DILocation(line: 1081, column: 3, scope: !3278)
!3290 = distinct !DISubprogram(name: "safe_read", scope: !219, file: !219, line: 56, type: !3291, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!48, !64, !45, !48}
!3293 = !{!3294, !3295, !3296, !3297}
!3294 = !DILocalVariable(name: "fd", arg: 1, scope: !3290, file: !219, line: 56, type: !64)
!3295 = !DILocalVariable(name: "buf", arg: 2, scope: !3290, file: !219, line: 56, type: !45)
!3296 = !DILocalVariable(name: "count", arg: 3, scope: !3290, file: !219, line: 56, type: !48)
!3297 = !DILocalVariable(name: "result", scope: !3298, file: !219, line: 60, type: !3301)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !219, line: 59, column: 5)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !219, line: 58, column: 3)
!3300 = distinct !DILexicalBlock(scope: !3290, file: !219, line: 58, column: 3)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3302, line: 108, baseType: !3303)
!3302 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !776, line: 194, baseType: !777)
!3304 = !DILocation(line: 0, scope: !3290)
!3305 = !DILocation(line: 60, column: 24, scope: !3298)
!3306 = !DILocation(line: 0, scope: !3298)
!3307 = !DILocation(line: 62, column: 13, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3298, file: !219, line: 62, column: 11)
!3309 = !DILocation(line: 62, column: 11, scope: !3298)
!3310 = !DILocation(line: 64, column: 16, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3308, file: !219, line: 64, column: 16)
!3312 = !DILocation(line: 64, column: 16, scope: !3308)
!3313 = distinct !{!3313, !3314, !3315}
!3314 = !DILocation(line: 58, column: 3, scope: !3300)
!3315 = !DILocation(line: 70, column: 5, scope: !3300)
!3316 = !DILocation(line: 66, column: 22, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3311, file: !219, line: 66, column: 16)
!3318 = !DILocation(line: 66, column: 32, scope: !3317)
!3319 = !DILocation(line: 71, column: 1, scope: !3290)
!3320 = distinct !DISubprogram(name: "version_etc_arn", scope: !226, file: !226, line: 61, type: !3321, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3358)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !3323, !61, !61, !61, !3357, !48}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !881, line: 7, baseType: !3325)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !754, line: 49, size: 1728, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3325, file: !754, line: 51, baseType: !64, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3325, file: !754, line: 54, baseType: !43, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3325, file: !754, line: 55, baseType: !43, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3325, file: !754, line: 56, baseType: !43, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3325, file: !754, line: 57, baseType: !43, size: 64, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3325, file: !754, line: 58, baseType: !43, size: 64, offset: 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3325, file: !754, line: 59, baseType: !43, size: 64, offset: 384)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3325, file: !754, line: 60, baseType: !43, size: 64, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3325, file: !754, line: 61, baseType: !43, size: 64, offset: 512)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3325, file: !754, line: 64, baseType: !43, size: 64, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3325, file: !754, line: 65, baseType: !43, size: 64, offset: 640)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3325, file: !754, line: 66, baseType: !43, size: 64, offset: 704)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3325, file: !754, line: 68, baseType: !769, size: 64, offset: 768)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3325, file: !754, line: 70, baseType: !3341, size: 64, offset: 832)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3325, file: !754, line: 72, baseType: !64, size: 32, offset: 896)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3325, file: !754, line: 73, baseType: !64, size: 32, offset: 928)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3325, file: !754, line: 74, baseType: !775, size: 64, offset: 960)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3325, file: !754, line: 77, baseType: !154, size: 16, offset: 1024)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3325, file: !754, line: 78, baseType: !780, size: 8, offset: 1040)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3325, file: !754, line: 79, baseType: !782, size: 8, offset: 1048)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3325, file: !754, line: 81, baseType: !786, size: 64, offset: 1088)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3325, file: !754, line: 89, baseType: !789, size: 64, offset: 1152)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3325, file: !754, line: 91, baseType: !791, size: 64, offset: 1216)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3325, file: !754, line: 92, baseType: !794, size: 64, offset: 1280)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3325, file: !754, line: 93, baseType: !3341, size: 64, offset: 1344)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3325, file: !754, line: 94, baseType: !45, size: 64, offset: 1408)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3325, file: !754, line: 95, baseType: !48, size: 64, offset: 1472)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3325, file: !754, line: 96, baseType: !64, size: 32, offset: 1536)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3325, file: !754, line: 98, baseType: !801, size: 160, offset: 1568)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364}
!3359 = !DILocalVariable(name: "stream", arg: 1, scope: !3320, file: !226, line: 61, type: !3323)
!3360 = !DILocalVariable(name: "command_name", arg: 2, scope: !3320, file: !226, line: 62, type: !61)
!3361 = !DILocalVariable(name: "package", arg: 3, scope: !3320, file: !226, line: 62, type: !61)
!3362 = !DILocalVariable(name: "version", arg: 4, scope: !3320, file: !226, line: 63, type: !61)
!3363 = !DILocalVariable(name: "authors", arg: 5, scope: !3320, file: !226, line: 64, type: !3357)
!3364 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3320, file: !226, line: 64, type: !48)
!3365 = !DILocation(line: 0, scope: !3320)
!3366 = !DILocation(line: 66, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3320, file: !226, line: 66, column: 7)
!3368 = !DILocation(line: 66, column: 7, scope: !3320)
!3369 = !DILocation(line: 67, column: 5, scope: !3367)
!3370 = !DILocation(line: 69, column: 5, scope: !3367)
!3371 = !DILocation(line: 83, column: 3, scope: !3320)
!3372 = !DILocation(line: 85, column: 3, scope: !3320)
!3373 = !DILocation(line: 88, column: 3, scope: !3320)
!3374 = !DILocation(line: 95, column: 3, scope: !3320)
!3375 = !DILocation(line: 97, column: 3, scope: !3320)
!3376 = !DILocation(line: 105, column: 7, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3320, file: !226, line: 98, column: 5)
!3378 = !DILocation(line: 106, column: 7, scope: !3377)
!3379 = !DILocation(line: 109, column: 7, scope: !3377)
!3380 = !DILocation(line: 110, column: 7, scope: !3377)
!3381 = !DILocation(line: 113, column: 7, scope: !3377)
!3382 = !DILocation(line: 115, column: 7, scope: !3377)
!3383 = !DILocation(line: 120, column: 7, scope: !3377)
!3384 = !DILocation(line: 122, column: 7, scope: !3377)
!3385 = !DILocation(line: 127, column: 7, scope: !3377)
!3386 = !DILocation(line: 129, column: 7, scope: !3377)
!3387 = !DILocation(line: 134, column: 7, scope: !3377)
!3388 = !DILocation(line: 137, column: 7, scope: !3377)
!3389 = !DILocation(line: 142, column: 7, scope: !3377)
!3390 = !DILocation(line: 145, column: 7, scope: !3377)
!3391 = !DILocation(line: 150, column: 7, scope: !3377)
!3392 = !DILocation(line: 154, column: 7, scope: !3377)
!3393 = !DILocation(line: 159, column: 7, scope: !3377)
!3394 = !DILocation(line: 163, column: 7, scope: !3377)
!3395 = !DILocation(line: 170, column: 7, scope: !3377)
!3396 = !DILocation(line: 174, column: 7, scope: !3377)
!3397 = !DILocation(line: 176, column: 1, scope: !3320)
!3398 = distinct !DISubprogram(name: "version_etc_ar", scope: !226, file: !226, line: 183, type: !3399, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !3323, !61, !61, !61, !3357}
!3401 = !{!3402, !3403, !3404, !3405, !3406, !3407}
!3402 = !DILocalVariable(name: "stream", arg: 1, scope: !3398, file: !226, line: 183, type: !3323)
!3403 = !DILocalVariable(name: "command_name", arg: 2, scope: !3398, file: !226, line: 184, type: !61)
!3404 = !DILocalVariable(name: "package", arg: 3, scope: !3398, file: !226, line: 184, type: !61)
!3405 = !DILocalVariable(name: "version", arg: 4, scope: !3398, file: !226, line: 185, type: !61)
!3406 = !DILocalVariable(name: "authors", arg: 5, scope: !3398, file: !226, line: 185, type: !3357)
!3407 = !DILocalVariable(name: "n_authors", scope: !3398, file: !226, line: 187, type: !48)
!3408 = !DILocation(line: 0, scope: !3398)
!3409 = !DILocation(line: 189, column: 8, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3398, file: !226, line: 189, column: 3)
!3411 = !DILocation(line: 0, scope: !3410)
!3412 = !DILocation(line: 189, column: 23, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3410, file: !226, line: 189, column: 3)
!3414 = !DILocation(line: 189, column: 3, scope: !3410)
!3415 = !DILocation(line: 189, column: 52, scope: !3413)
!3416 = distinct !{!3416, !3414, !3417, !724}
!3417 = !DILocation(line: 190, column: 5, scope: !3410)
!3418 = !DILocation(line: 191, column: 3, scope: !3398)
!3419 = !DILocation(line: 192, column: 1, scope: !3398)
!3420 = distinct !DISubprogram(name: "version_etc_va", scope: !226, file: !226, line: 199, type: !3421, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3430)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !3323, !61, !61, !61, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3424, file: !226, line: 192, baseType: !7, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3424, file: !226, line: 192, baseType: !7, size: 32, offset: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3424, file: !226, line: 192, baseType: !45, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3424, file: !226, line: 192, baseType: !45, size: 64, offset: 128)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437}
!3431 = !DILocalVariable(name: "stream", arg: 1, scope: !3420, file: !226, line: 199, type: !3323)
!3432 = !DILocalVariable(name: "command_name", arg: 2, scope: !3420, file: !226, line: 200, type: !61)
!3433 = !DILocalVariable(name: "package", arg: 3, scope: !3420, file: !226, line: 200, type: !61)
!3434 = !DILocalVariable(name: "version", arg: 4, scope: !3420, file: !226, line: 201, type: !61)
!3435 = !DILocalVariable(name: "authors", arg: 5, scope: !3420, file: !226, line: 201, type: !3423)
!3436 = !DILocalVariable(name: "n_authors", scope: !3420, file: !226, line: 203, type: !48)
!3437 = !DILocalVariable(name: "authtab", scope: !3420, file: !226, line: 204, type: !3438)
!3438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, elements: !160)
!3439 = !DILocation(line: 0, scope: !3420)
!3440 = !DILocation(line: 204, column: 3, scope: !3420)
!3441 = !DILocation(line: 204, column: 15, scope: !3420)
!3442 = !DILocation(line: 208, column: 35, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !226, line: 206, column: 3)
!3444 = distinct !DILexicalBlock(scope: !3420, file: !226, line: 206, column: 3)
!3445 = !DILocation(line: 208, column: 14, scope: !3443)
!3446 = !DILocation(line: 208, column: 33, scope: !3443)
!3447 = !DILocation(line: 208, column: 67, scope: !3443)
!3448 = !DILocation(line: 206, column: 3, scope: !3444)
!3449 = !DILocation(line: 0, scope: !3444)
!3450 = !DILocation(line: 211, column: 3, scope: !3420)
!3451 = !DILocation(line: 213, column: 1, scope: !3420)
!3452 = distinct !DISubprogram(name: "version_etc", scope: !226, file: !226, line: 230, type: !3453, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !3323, !61, !61, !61, null}
!3455 = !{!3456, !3457, !3458, !3459, !3460}
!3456 = !DILocalVariable(name: "stream", arg: 1, scope: !3452, file: !226, line: 230, type: !3323)
!3457 = !DILocalVariable(name: "command_name", arg: 2, scope: !3452, file: !226, line: 231, type: !61)
!3458 = !DILocalVariable(name: "package", arg: 3, scope: !3452, file: !226, line: 231, type: !61)
!3459 = !DILocalVariable(name: "version", arg: 4, scope: !3452, file: !226, line: 232, type: !61)
!3460 = !DILocalVariable(name: "authors", scope: !3452, file: !226, line: 234, type: !3461)
!3461 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !749, line: 52, baseType: !3462)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3463, line: 32, baseType: !3464)
!3463 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !226, baseType: !3465)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3424, size: 192, elements: !783)
!3466 = !DILocation(line: 0, scope: !3452)
!3467 = !DILocation(line: 234, column: 3, scope: !3452)
!3468 = !DILocation(line: 234, column: 11, scope: !3452)
!3469 = !DILocation(line: 236, column: 3, scope: !3452)
!3470 = !DILocation(line: 237, column: 3, scope: !3452)
!3471 = !DILocation(line: 238, column: 3, scope: !3452)
!3472 = !DILocation(line: 239, column: 1, scope: !3452)
!3473 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !226, file: !226, line: 242, type: !213, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !75)
!3474 = !DILocation(line: 244, column: 3, scope: !3473)
!3475 = !DILocation(line: 249, column: 3, scope: !3473)
!3476 = !DILocation(line: 255, column: 3, scope: !3473)
!3477 = !DILocation(line: 260, column: 3, scope: !3473)
!3478 = !DILocation(line: 262, column: 1, scope: !3473)
!3479 = distinct !DISubprogram(name: "xnmalloc", scope: !236, file: !236, line: 99, type: !3480, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!45, !48, !48}
!3482 = !{!3483, !3484}
!3483 = !DILocalVariable(name: "n", arg: 1, scope: !3479, file: !236, line: 99, type: !48)
!3484 = !DILocalVariable(name: "s", arg: 2, scope: !3479, file: !236, line: 99, type: !48)
!3485 = !DILocation(line: 0, scope: !3479)
!3486 = !DILocation(line: 101, column: 7, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3479, file: !236, line: 101, column: 7)
!3488 = !DILocation(line: 101, column: 7, scope: !3479)
!3489 = !DILocation(line: 102, column: 5, scope: !3487)
!3490 = !DILocation(line: 103, column: 21, scope: !3479)
!3491 = !DILocalVariable(name: "n", arg: 1, scope: !3492, file: !233, line: 39, type: !48)
!3492 = distinct !DISubprogram(name: "xmalloc", scope: !233, file: !233, line: 39, type: !3493, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!45, !48}
!3495 = !{!3491, !3496}
!3496 = !DILocalVariable(name: "p", scope: !3492, file: !233, line: 41, type: !45)
!3497 = !DILocation(line: 0, scope: !3492, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 103, column: 10, scope: !3479)
!3499 = !DILocation(line: 41, column: 13, scope: !3492, inlinedAt: !3498)
!3500 = !DILocation(line: 42, column: 8, scope: !3501, inlinedAt: !3498)
!3501 = distinct !DILexicalBlock(scope: !3492, file: !233, line: 42, column: 7)
!3502 = !DILocation(line: 42, column: 10, scope: !3501, inlinedAt: !3498)
!3503 = !DILocation(line: 43, column: 5, scope: !3501, inlinedAt: !3498)
!3504 = !DILocation(line: 103, column: 3, scope: !3479)
!3505 = !DILocation(line: 0, scope: !3492)
!3506 = !DILocation(line: 41, column: 13, scope: !3492)
!3507 = !DILocation(line: 42, column: 8, scope: !3501)
!3508 = !DILocation(line: 42, column: 10, scope: !3501)
!3509 = !DILocation(line: 43, column: 5, scope: !3501)
!3510 = !DILocation(line: 44, column: 3, scope: !3492)
!3511 = distinct !DISubprogram(name: "xnrealloc", scope: !236, file: !236, line: 112, type: !3512, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!45, !45, !48, !48}
!3514 = !{!3515, !3516, !3517}
!3515 = !DILocalVariable(name: "p", arg: 1, scope: !3511, file: !236, line: 112, type: !45)
!3516 = !DILocalVariable(name: "n", arg: 2, scope: !3511, file: !236, line: 112, type: !48)
!3517 = !DILocalVariable(name: "s", arg: 3, scope: !3511, file: !236, line: 112, type: !48)
!3518 = !DILocation(line: 0, scope: !3511)
!3519 = !DILocation(line: 114, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3511, file: !236, line: 114, column: 7)
!3521 = !DILocation(line: 114, column: 7, scope: !3511)
!3522 = !DILocation(line: 115, column: 5, scope: !3520)
!3523 = !DILocation(line: 116, column: 25, scope: !3511)
!3524 = !DILocalVariable(name: "p", arg: 1, scope: !3525, file: !233, line: 51, type: !45)
!3525 = distinct !DISubprogram(name: "xrealloc", scope: !233, file: !233, line: 51, type: !3526, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!45, !45, !48}
!3528 = !{!3524, !3529}
!3529 = !DILocalVariable(name: "n", arg: 2, scope: !3525, file: !233, line: 51, type: !48)
!3530 = !DILocation(line: 0, scope: !3525, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 116, column: 10, scope: !3511)
!3532 = !DILocation(line: 53, column: 8, scope: !3533, inlinedAt: !3531)
!3533 = distinct !DILexicalBlock(scope: !3525, file: !233, line: 53, column: 7)
!3534 = !DILocation(line: 53, column: 10, scope: !3533, inlinedAt: !3531)
!3535 = !DILocation(line: 57, column: 7, scope: !3536, inlinedAt: !3531)
!3536 = distinct !DILexicalBlock(scope: !3533, file: !233, line: 54, column: 5)
!3537 = !DILocation(line: 58, column: 7, scope: !3536, inlinedAt: !3531)
!3538 = !DILocation(line: 61, column: 7, scope: !3525, inlinedAt: !3531)
!3539 = !DILocation(line: 62, column: 8, scope: !3540, inlinedAt: !3531)
!3540 = distinct !DILexicalBlock(scope: !3525, file: !233, line: 62, column: 7)
!3541 = !DILocation(line: 62, column: 10, scope: !3540, inlinedAt: !3531)
!3542 = !DILocation(line: 63, column: 5, scope: !3540, inlinedAt: !3531)
!3543 = !DILocation(line: 116, column: 3, scope: !3511)
!3544 = !DILocation(line: 0, scope: !3525)
!3545 = !DILocation(line: 53, column: 8, scope: !3533)
!3546 = !DILocation(line: 53, column: 10, scope: !3533)
!3547 = !DILocation(line: 57, column: 7, scope: !3536)
!3548 = !DILocation(line: 58, column: 7, scope: !3536)
!3549 = !DILocation(line: 61, column: 7, scope: !3525)
!3550 = !DILocation(line: 62, column: 8, scope: !3540)
!3551 = !DILocation(line: 62, column: 10, scope: !3540)
!3552 = !DILocation(line: 63, column: 5, scope: !3540)
!3553 = !DILocation(line: 65, column: 1, scope: !3525)
!3554 = !DILocation(line: 0, scope: !237)
!3555 = !DILocation(line: 176, column: 14, scope: !237)
!3556 = !DILocation(line: 178, column: 9, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !237, file: !236, line: 178, column: 7)
!3558 = !DILocation(line: 178, column: 7, scope: !237)
!3559 = !DILocation(line: 180, column: 13, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !236, line: 180, column: 11)
!3561 = distinct !DILexicalBlock(scope: !3557, file: !236, line: 179, column: 5)
!3562 = !DILocation(line: 180, column: 11, scope: !3561)
!3563 = !DILocation(line: 188, column: 30, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3560, file: !236, line: 181, column: 9)
!3565 = !DILocation(line: 189, column: 16, scope: !3564)
!3566 = !DILocation(line: 189, column: 13, scope: !3564)
!3567 = !DILocation(line: 190, column: 9, scope: !3564)
!3568 = !DILocation(line: 191, column: 11, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3561, file: !236, line: 191, column: 11)
!3570 = !DILocation(line: 191, column: 11, scope: !3561)
!3571 = !DILocation(line: 206, column: 7, scope: !237)
!3572 = !DILocation(line: 207, column: 25, scope: !237)
!3573 = !DILocation(line: 0, scope: !3525, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 207, column: 10, scope: !237)
!3575 = !DILocation(line: 53, column: 10, scope: !3533, inlinedAt: !3574)
!3576 = !DILocation(line: 192, column: 9, scope: !3569)
!3577 = !DILocation(line: 200, column: 69, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !236, line: 200, column: 11)
!3579 = distinct !DILexicalBlock(scope: !3557, file: !236, line: 195, column: 5)
!3580 = !DILocation(line: 201, column: 11, scope: !3578)
!3581 = !DILocation(line: 200, column: 11, scope: !3579)
!3582 = !DILocation(line: 202, column: 9, scope: !3578)
!3583 = !DILocation(line: 203, column: 14, scope: !3579)
!3584 = !DILocation(line: 203, column: 18, scope: !3579)
!3585 = !DILocation(line: 203, column: 9, scope: !3579)
!3586 = !DILocation(line: 53, column: 8, scope: !3533, inlinedAt: !3574)
!3587 = !DILocation(line: 57, column: 7, scope: !3536, inlinedAt: !3574)
!3588 = !DILocation(line: 58, column: 7, scope: !3536, inlinedAt: !3574)
!3589 = !DILocation(line: 61, column: 7, scope: !3525, inlinedAt: !3574)
!3590 = !DILocation(line: 62, column: 8, scope: !3540, inlinedAt: !3574)
!3591 = !DILocation(line: 62, column: 10, scope: !3540, inlinedAt: !3574)
!3592 = !DILocation(line: 63, column: 5, scope: !3540, inlinedAt: !3574)
!3593 = !DILocation(line: 207, column: 3, scope: !237)
!3594 = distinct !DISubprogram(name: "xcharalloc", scope: !236, file: !236, line: 216, type: !2703, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3595)
!3595 = !{!3596}
!3596 = !DILocalVariable(name: "n", arg: 1, scope: !3594, file: !236, line: 216, type: !48)
!3597 = !DILocation(line: 0, scope: !3594)
!3598 = !DILocation(line: 0, scope: !3492, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 218, column: 10, scope: !3594)
!3600 = !DILocation(line: 41, column: 13, scope: !3492, inlinedAt: !3599)
!3601 = !DILocation(line: 42, column: 8, scope: !3501, inlinedAt: !3599)
!3602 = !DILocation(line: 42, column: 10, scope: !3501, inlinedAt: !3599)
!3603 = !DILocation(line: 43, column: 5, scope: !3501, inlinedAt: !3599)
!3604 = !DILocation(line: 218, column: 3, scope: !3594)
!3605 = distinct !DISubprogram(name: "x2realloc", scope: !233, file: !233, line: 74, type: !3606, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!45, !45, !240}
!3608 = !{!3609, !3610}
!3609 = !DILocalVariable(name: "p", arg: 1, scope: !3605, file: !233, line: 74, type: !45)
!3610 = !DILocalVariable(name: "pn", arg: 2, scope: !3605, file: !233, line: 74, type: !240)
!3611 = !DILocation(line: 0, scope: !3605)
!3612 = !DILocation(line: 0, scope: !237, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 76, column: 10, scope: !3605)
!3614 = !DILocation(line: 176, column: 14, scope: !237, inlinedAt: !3613)
!3615 = !DILocation(line: 178, column: 9, scope: !3557, inlinedAt: !3613)
!3616 = !DILocation(line: 178, column: 7, scope: !237, inlinedAt: !3613)
!3617 = !DILocation(line: 180, column: 13, scope: !3560, inlinedAt: !3613)
!3618 = !DILocation(line: 180, column: 11, scope: !3561, inlinedAt: !3613)
!3619 = !DILocation(line: 191, column: 11, scope: !3569, inlinedAt: !3613)
!3620 = !DILocation(line: 191, column: 11, scope: !3561, inlinedAt: !3613)
!3621 = !DILocation(line: 192, column: 9, scope: !3569, inlinedAt: !3613)
!3622 = !DILocation(line: 201, column: 11, scope: !3578, inlinedAt: !3613)
!3623 = !DILocation(line: 200, column: 11, scope: !3579, inlinedAt: !3613)
!3624 = !DILocation(line: 202, column: 9, scope: !3578, inlinedAt: !3613)
!3625 = !DILocation(line: 203, column: 14, scope: !3579, inlinedAt: !3613)
!3626 = !DILocation(line: 203, column: 18, scope: !3579, inlinedAt: !3613)
!3627 = !DILocation(line: 203, column: 9, scope: !3579, inlinedAt: !3613)
!3628 = !DILocation(line: 0, scope: !3525, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 207, column: 10, scope: !237, inlinedAt: !3613)
!3630 = !DILocation(line: 53, column: 10, scope: !3533, inlinedAt: !3629)
!3631 = !DILocation(line: 206, column: 7, scope: !237, inlinedAt: !3613)
!3632 = !DILocation(line: 61, column: 7, scope: !3525, inlinedAt: !3629)
!3633 = !DILocation(line: 62, column: 8, scope: !3540, inlinedAt: !3629)
!3634 = !DILocation(line: 62, column: 10, scope: !3540, inlinedAt: !3629)
!3635 = !DILocation(line: 63, column: 5, scope: !3540, inlinedAt: !3629)
!3636 = !DILocation(line: 76, column: 3, scope: !3605)
!3637 = distinct !DISubprogram(name: "xzalloc", scope: !233, file: !233, line: 84, type: !3493, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3638)
!3638 = !{!3639}
!3639 = !DILocalVariable(name: "n", arg: 1, scope: !3637, file: !233, line: 84, type: !48)
!3640 = !DILocation(line: 0, scope: !3637)
!3641 = !DILocalVariable(name: "n", arg: 1, scope: !3642, file: !233, line: 93, type: !48)
!3642 = distinct !DISubprogram(name: "xcalloc", scope: !233, file: !233, line: 93, type: !3480, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3643)
!3643 = !{!3641, !3644, !3645}
!3644 = !DILocalVariable(name: "s", arg: 2, scope: !3642, file: !233, line: 93, type: !48)
!3645 = !DILocalVariable(name: "p", scope: !3642, file: !233, line: 95, type: !45)
!3646 = !DILocation(line: 0, scope: !3642, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 86, column: 10, scope: !3637)
!3648 = !DILocation(line: 100, column: 7, scope: !3649, inlinedAt: !3647)
!3649 = distinct !DILexicalBlock(scope: !3642, file: !233, line: 100, column: 7)
!3650 = !DILocation(line: 101, column: 7, scope: !3649, inlinedAt: !3647)
!3651 = !DILocation(line: 101, column: 18, scope: !3649, inlinedAt: !3647)
!3652 = !DILocation(line: 101, column: 16, scope: !3649, inlinedAt: !3647)
!3653 = !DILocation(line: 100, column: 7, scope: !3642, inlinedAt: !3647)
!3654 = !DILocation(line: 102, column: 5, scope: !3649, inlinedAt: !3647)
!3655 = !DILocation(line: 86, column: 3, scope: !3637)
!3656 = !DILocation(line: 0, scope: !3642)
!3657 = !DILocation(line: 100, column: 7, scope: !3649)
!3658 = !DILocation(line: 101, column: 7, scope: !3649)
!3659 = !DILocation(line: 101, column: 18, scope: !3649)
!3660 = !DILocation(line: 101, column: 16, scope: !3649)
!3661 = !DILocation(line: 100, column: 7, scope: !3642)
!3662 = !DILocation(line: 102, column: 5, scope: !3649)
!3663 = !DILocation(line: 103, column: 3, scope: !3642)
!3664 = distinct !DISubprogram(name: "xmemdup", scope: !233, file: !233, line: 111, type: !3665, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!45, !104, !48}
!3667 = !{!3668, !3669}
!3668 = !DILocalVariable(name: "p", arg: 1, scope: !3664, file: !233, line: 111, type: !104)
!3669 = !DILocalVariable(name: "s", arg: 2, scope: !3664, file: !233, line: 111, type: !48)
!3670 = !DILocation(line: 0, scope: !3664)
!3671 = !DILocation(line: 0, scope: !3492, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 113, column: 18, scope: !3664)
!3673 = !DILocation(line: 41, column: 13, scope: !3492, inlinedAt: !3672)
!3674 = !DILocation(line: 42, column: 8, scope: !3501, inlinedAt: !3672)
!3675 = !DILocation(line: 42, column: 10, scope: !3501, inlinedAt: !3672)
!3676 = !DILocation(line: 43, column: 5, scope: !3501, inlinedAt: !3672)
!3677 = !DILocalVariable(name: "__dest", arg: 1, scope: !3678, file: !1455, line: 26, type: !1528)
!3678 = distinct !DISubprogram(name: "memcpy", scope: !1455, file: !1455, line: 26, type: !1526, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3679)
!3679 = !{!3677, !3680, !3681}
!3680 = !DILocalVariable(name: "__src", arg: 2, scope: !3678, file: !1455, line: 26, type: !1529)
!3681 = !DILocalVariable(name: "__len", arg: 3, scope: !3678, file: !1455, line: 26, type: !48)
!3682 = !DILocation(line: 0, scope: !3678, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 113, column: 10, scope: !3664)
!3684 = !DILocation(line: 29, column: 10, scope: !3678, inlinedAt: !3683)
!3685 = !DILocation(line: 113, column: 3, scope: !3664)
!3686 = distinct !DISubprogram(name: "xstrdup", scope: !233, file: !233, line: 119, type: !989, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3687)
!3687 = !{!3688}
!3688 = !DILocalVariable(name: "string", arg: 1, scope: !3686, file: !233, line: 119, type: !61)
!3689 = !DILocation(line: 0, scope: !3686)
!3690 = !DILocation(line: 121, column: 27, scope: !3686)
!3691 = !DILocation(line: 121, column: 43, scope: !3686)
!3692 = !DILocation(line: 0, scope: !3664, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 121, column: 10, scope: !3686)
!3694 = !DILocation(line: 0, scope: !3492, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 113, column: 18, scope: !3664, inlinedAt: !3693)
!3696 = !DILocation(line: 41, column: 13, scope: !3492, inlinedAt: !3695)
!3697 = !DILocation(line: 42, column: 8, scope: !3501, inlinedAt: !3695)
!3698 = !DILocation(line: 42, column: 10, scope: !3501, inlinedAt: !3695)
!3699 = !DILocation(line: 43, column: 5, scope: !3501, inlinedAt: !3695)
!3700 = !DILocation(line: 0, scope: !3678, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 113, column: 10, scope: !3664, inlinedAt: !3693)
!3702 = !DILocation(line: 29, column: 10, scope: !3678, inlinedAt: !3701)
!3703 = !DILocation(line: 121, column: 3, scope: !3686)
!3704 = distinct !DISubprogram(name: "xalloc_die", scope: !250, file: !250, line: 32, type: !213, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !75)
!3705 = !DILocation(line: 34, column: 10, scope: !3704)
!3706 = !DILocation(line: 34, column: 33, scope: !3704)
!3707 = !DILocation(line: 34, column: 3, scope: !3704)
!3708 = !DILocation(line: 40, column: 3, scope: !3704)
!3709 = distinct !DISubprogram(name: "xstrtoumax", scope: !3710, file: !3710, line: 76, type: !3711, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !3713)
!3710 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!1690, !61, !811, !64, !1684, !61}
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3726, !3727, !3730, !3731}
!3714 = !DILocalVariable(name: "s", arg: 1, scope: !3709, file: !3710, line: 76, type: !61)
!3715 = !DILocalVariable(name: "ptr", arg: 2, scope: !3709, file: !3710, line: 76, type: !811)
!3716 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3709, file: !3710, line: 76, type: !64)
!3717 = !DILocalVariable(name: "val", arg: 4, scope: !3709, file: !3710, line: 77, type: !1684)
!3718 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3709, file: !3710, line: 77, type: !61)
!3719 = !DILocalVariable(name: "t_ptr", scope: !3709, file: !3710, line: 79, type: !43)
!3720 = !DILocalVariable(name: "p", scope: !3709, file: !3710, line: 80, type: !811)
!3721 = !DILocalVariable(name: "tmp", scope: !3709, file: !3710, line: 81, type: !884)
!3722 = !DILocalVariable(name: "err", scope: !3709, file: !3710, line: 82, type: !1690)
!3723 = !DILocalVariable(name: "q", scope: !3724, file: !3710, line: 92, type: !61)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !3710, line: 91, column: 5)
!3725 = distinct !DILexicalBlock(scope: !3709, file: !3710, line: 90, column: 7)
!3726 = !DILocalVariable(name: "ch", scope: !3724, file: !3710, line: 93, type: !47)
!3727 = !DILocalVariable(name: "base", scope: !3728, file: !3710, line: 129, type: !64)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !3710, line: 128, column: 5)
!3729 = distinct !DILexicalBlock(scope: !3709, file: !3710, line: 127, column: 7)
!3730 = !DILocalVariable(name: "suffixes", scope: !3728, file: !3710, line: 130, type: !64)
!3731 = !DILocalVariable(name: "overflow", scope: !3728, file: !3710, line: 131, type: !1690)
!3732 = !DILocation(line: 0, scope: !3709)
!3733 = !DILocation(line: 79, column: 3, scope: !3709)
!3734 = !DILocation(line: 84, column: 3, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !3710, line: 84, column: 3)
!3736 = distinct !DILexicalBlock(scope: !3709, file: !3710, line: 84, column: 3)
!3737 = !DILocation(line: 86, column: 8, scope: !3709)
!3738 = !DILocation(line: 88, column: 3, scope: !3709)
!3739 = !DILocation(line: 88, column: 9, scope: !3709)
!3740 = !DILocation(line: 0, scope: !3724)
!3741 = !DILocation(line: 94, column: 7, scope: !3724)
!3742 = !DILocation(line: 94, column: 14, scope: !3724)
!3743 = !DILocation(line: 95, column: 15, scope: !3724)
!3744 = distinct !{!3744, !3741, !3745, !724}
!3745 = !DILocation(line: 95, column: 17, scope: !3724)
!3746 = !DILocation(line: 96, column: 14, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3724, file: !3710, line: 96, column: 11)
!3748 = !DILocation(line: 100, column: 9, scope: !3709)
!3749 = !DILocation(line: 102, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3709, file: !3710, line: 102, column: 7)
!3751 = !DILocation(line: 102, column: 10, scope: !3750)
!3752 = !DILocation(line: 102, column: 7, scope: !3709)
!3753 = !DILocation(line: 106, column: 11, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !3710, line: 106, column: 11)
!3755 = distinct !DILexicalBlock(scope: !3750, file: !3710, line: 103, column: 5)
!3756 = !DILocation(line: 106, column: 26, scope: !3754)
!3757 = !DILocation(line: 106, column: 29, scope: !3754)
!3758 = !DILocation(line: 106, column: 33, scope: !3754)
!3759 = !DILocation(line: 106, column: 36, scope: !3754)
!3760 = !DILocation(line: 106, column: 11, scope: !3755)
!3761 = !DILocation(line: 111, column: 12, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3750, file: !3710, line: 111, column: 12)
!3763 = !DILocation(line: 111, column: 12, scope: !3750)
!3764 = !DILocation(line: 116, column: 5, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !3710, line: 112, column: 5)
!3766 = !DILocation(line: 121, column: 8, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3709, file: !3710, line: 121, column: 7)
!3768 = !DILocation(line: 121, column: 7, scope: !3709)
!3769 = !DILocation(line: 123, column: 12, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !3710, line: 122, column: 5)
!3771 = !DILocation(line: 124, column: 7, scope: !3770)
!3772 = !DILocation(line: 127, column: 7, scope: !3729)
!3773 = !DILocation(line: 127, column: 11, scope: !3729)
!3774 = !DILocation(line: 127, column: 7, scope: !3709)
!3775 = !DILocation(line: 0, scope: !3728)
!3776 = !DILocation(line: 133, column: 12, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3728, file: !3710, line: 133, column: 11)
!3778 = !DILocation(line: 133, column: 11, scope: !3728)
!3779 = !DILocation(line: 135, column: 16, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !3710, line: 134, column: 9)
!3781 = !DILocation(line: 136, column: 22, scope: !3780)
!3782 = !DILocation(line: 136, column: 11, scope: !3780)
!3783 = !DILocation(line: 139, column: 7, scope: !3728)
!3784 = !DILocation(line: 151, column: 15, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !3710, line: 151, column: 15)
!3786 = distinct !DILexicalBlock(scope: !3728, file: !3710, line: 140, column: 9)
!3787 = !DILocation(line: 151, column: 15, scope: !3786)
!3788 = !DILocation(line: 152, column: 21, scope: !3785)
!3789 = !DILocation(line: 152, column: 13, scope: !3785)
!3790 = !DILocation(line: 155, column: 21, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !3710, line: 155, column: 21)
!3792 = distinct !DILexicalBlock(scope: !3785, file: !3710, line: 153, column: 15)
!3793 = !DILocation(line: 155, column: 29, scope: !3791)
!3794 = !DILocation(line: 155, column: 21, scope: !3792)
!3795 = !DILocation(line: 163, column: 17, scope: !3792)
!3796 = !DILocation(line: 167, column: 7, scope: !3728)
!3797 = !DILocalVariable(name: "err", scope: !3798, file: !3710, line: 67, type: !1690)
!3798 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3710, file: !3710, line: 65, type: !3799, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!1690, !1684, !64, !64}
!3801 = !{!3802, !3803, !3804, !3797}
!3802 = !DILocalVariable(name: "x", arg: 1, scope: !3798, file: !3710, line: 65, type: !1684)
!3803 = !DILocalVariable(name: "base", arg: 2, scope: !3798, file: !3710, line: 65, type: !64)
!3804 = !DILocalVariable(name: "power", arg: 3, scope: !3798, file: !3710, line: 65, type: !64)
!3805 = !DILocation(line: 0, scope: !3798, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 221, column: 22, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3728, file: !3710, line: 168, column: 9)
!3808 = !DILocalVariable(name: "x", arg: 1, scope: !3809, file: !3710, line: 48, type: !1684)
!3809 = distinct !DISubprogram(name: "bkm_scale", scope: !3710, file: !3710, line: 48, type: !3810, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!1690, !1684, !64}
!3812 = !{!3808, !3813}
!3813 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3809, file: !3710, line: 48, type: !64)
!3814 = !DILocation(line: 0, scope: !3809, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3806)
!3816 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3815)
!3817 = distinct !DILexicalBlock(scope: !3809, file: !3710, line: 55, column: 7)
!3818 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3815)
!3819 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3806)
!3820 = !DILocation(line: 229, column: 11, scope: !3728)
!3821 = !DILocation(line: 0, scope: !3798, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 217, column: 22, scope: !3807)
!3823 = !DILocation(line: 0, scope: !3809, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3822)
!3825 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3824)
!3826 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3824)
!3827 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3822)
!3828 = !DILocation(line: 0, scope: !3798, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 204, column: 22, scope: !3807)
!3830 = !DILocation(line: 0, scope: !3809, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3829)
!3832 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3831)
!3833 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3831)
!3834 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3829)
!3835 = !DILocation(line: 0, scope: !3798, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 185, column: 22, scope: !3807)
!3837 = !DILocation(line: 0, scope: !3809, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3836)
!3839 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3838)
!3840 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3838)
!3841 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3836)
!3842 = !DILocation(line: 0, scope: !3809, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 170, column: 22, scope: !3807)
!3844 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3843)
!3845 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3843)
!3846 = !DILocation(line: 171, column: 11, scope: !3807)
!3847 = !DILocation(line: 0, scope: !3809, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 177, column: 22, scope: !3807)
!3849 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3848)
!3850 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3848)
!3851 = !DILocation(line: 178, column: 11, scope: !3807)
!3852 = !DILocation(line: 0, scope: !3798, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 190, column: 22, scope: !3807)
!3854 = !DILocation(line: 0, scope: !3809, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3853)
!3856 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3855)
!3857 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3855)
!3858 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3853)
!3859 = !DILocation(line: 0, scope: !3798, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 200, column: 22, scope: !3807)
!3861 = !DILocation(line: 0, scope: !3809, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3860)
!3863 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3862)
!3864 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3862)
!3865 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3860)
!3866 = !DILocation(line: 0, scope: !3798, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 209, column: 22, scope: !3807)
!3868 = !DILocation(line: 0, scope: !3809, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3867)
!3870 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3869)
!3871 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3869)
!3872 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3867)
!3873 = !DILocation(line: 0, scope: !3809, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 213, column: 22, scope: !3807)
!3875 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3874)
!3876 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3874)
!3877 = !DILocation(line: 214, column: 11, scope: !3807)
!3878 = !DILocation(line: 225, column: 16, scope: !3807)
!3879 = !DILocation(line: 226, column: 22, scope: !3807)
!3880 = !DILocation(line: 226, column: 11, scope: !3807)
!3881 = !DILocation(line: 0, scope: !3798, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 195, column: 22, scope: !3807)
!3883 = !DILocation(line: 0, scope: !3809, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3882)
!3885 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3884)
!3886 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3884)
!3887 = !DILocation(line: 0, scope: !3807)
!3888 = !DILocation(line: 230, column: 10, scope: !3728)
!3889 = !DILocation(line: 231, column: 11, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3728, file: !3710, line: 231, column: 11)
!3891 = !DILocation(line: 231, column: 11, scope: !3728)
!3892 = !DILocation(line: 107, column: 13, scope: !3754)
!3893 = !DILocation(line: 82, column: 16, scope: !3709)
!3894 = !DILocation(line: 235, column: 8, scope: !3709)
!3895 = !DILocation(line: 236, column: 3, scope: !3709)
!3896 = !DILocation(line: 237, column: 1, scope: !3709)
!3897 = !DISubprogram(name: "strtoumax", scope: !3898, file: !3898, line: 301, type: !3899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!3898 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!50, !61, !811, !64}
!3901 = distinct !DISubprogram(name: "rpl_calloc", scope: !256, file: !256, line: 42, type: !3480, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3902)
!3902 = !{!3903, !3904, !3905, !3906}
!3903 = !DILocalVariable(name: "n", arg: 1, scope: !3901, file: !256, line: 42, type: !48)
!3904 = !DILocalVariable(name: "s", arg: 2, scope: !3901, file: !256, line: 42, type: !48)
!3905 = !DILocalVariable(name: "result", scope: !3901, file: !256, line: 44, type: !45)
!3906 = !DILocalVariable(name: "bytes", scope: !3907, file: !256, line: 56, type: !48)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !256, line: 53, column: 5)
!3908 = distinct !DILexicalBlock(scope: !3901, file: !256, line: 47, column: 7)
!3909 = !DILocation(line: 0, scope: !3901)
!3910 = !DILocation(line: 47, column: 9, scope: !3908)
!3911 = !DILocation(line: 47, column: 14, scope: !3908)
!3912 = !DILocation(line: 0, scope: !3907)
!3913 = !DILocation(line: 57, column: 21, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3907, file: !256, line: 57, column: 11)
!3915 = !DILocation(line: 57, column: 11, scope: !3907)
!3916 = !DILocation(line: 59, column: 11, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3914, file: !256, line: 58, column: 9)
!3918 = !DILocation(line: 59, column: 17, scope: !3917)
!3919 = !DILocation(line: 65, column: 12, scope: !3901)
!3920 = !DILocation(line: 72, column: 3, scope: !3901)
!3921 = !DILocation(line: 73, column: 1, scope: !3901)
!3922 = distinct !DISubprogram(name: "rpl_fclose", scope: !258, file: !258, line: 58, type: !3923, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !3959)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!64, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !881, line: 7, baseType: !3927)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !754, line: 49, size: 1728, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3927, file: !754, line: 51, baseType: !64, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3927, file: !754, line: 54, baseType: !43, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3927, file: !754, line: 55, baseType: !43, size: 64, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3927, file: !754, line: 56, baseType: !43, size: 64, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3927, file: !754, line: 57, baseType: !43, size: 64, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3927, file: !754, line: 58, baseType: !43, size: 64, offset: 320)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3927, file: !754, line: 59, baseType: !43, size: 64, offset: 384)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3927, file: !754, line: 60, baseType: !43, size: 64, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3927, file: !754, line: 61, baseType: !43, size: 64, offset: 512)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3927, file: !754, line: 64, baseType: !43, size: 64, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3927, file: !754, line: 65, baseType: !43, size: 64, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3927, file: !754, line: 66, baseType: !43, size: 64, offset: 704)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3927, file: !754, line: 68, baseType: !769, size: 64, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3927, file: !754, line: 70, baseType: !3943, size: 64, offset: 832)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3927, file: !754, line: 72, baseType: !64, size: 32, offset: 896)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3927, file: !754, line: 73, baseType: !64, size: 32, offset: 928)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3927, file: !754, line: 74, baseType: !775, size: 64, offset: 960)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3927, file: !754, line: 77, baseType: !154, size: 16, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3927, file: !754, line: 78, baseType: !780, size: 8, offset: 1040)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3927, file: !754, line: 79, baseType: !782, size: 8, offset: 1048)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3927, file: !754, line: 81, baseType: !786, size: 64, offset: 1088)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3927, file: !754, line: 89, baseType: !789, size: 64, offset: 1152)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3927, file: !754, line: 91, baseType: !791, size: 64, offset: 1216)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3927, file: !754, line: 92, baseType: !794, size: 64, offset: 1280)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3927, file: !754, line: 93, baseType: !3943, size: 64, offset: 1344)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3927, file: !754, line: 94, baseType: !45, size: 64, offset: 1408)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3927, file: !754, line: 95, baseType: !48, size: 64, offset: 1472)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3927, file: !754, line: 96, baseType: !64, size: 32, offset: 1536)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3927, file: !754, line: 98, baseType: !801, size: 160, offset: 1568)
!3959 = !{!3960, !3961, !3962, !3963}
!3960 = !DILocalVariable(name: "fp", arg: 1, scope: !3922, file: !258, line: 58, type: !3925)
!3961 = !DILocalVariable(name: "saved_errno", scope: !3922, file: !258, line: 60, type: !64)
!3962 = !DILocalVariable(name: "fd", scope: !3922, file: !258, line: 61, type: !64)
!3963 = !DILocalVariable(name: "result", scope: !3922, file: !258, line: 62, type: !64)
!3964 = !DILocation(line: 0, scope: !3922)
!3965 = !DILocation(line: 65, column: 8, scope: !3922)
!3966 = !DILocation(line: 66, column: 10, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3922, file: !258, line: 66, column: 7)
!3968 = !DILocation(line: 66, column: 7, scope: !3922)
!3969 = !DILocation(line: 67, column: 12, scope: !3967)
!3970 = !DILocation(line: 67, column: 5, scope: !3967)
!3971 = !DILocation(line: 72, column: 9, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3922, file: !258, line: 72, column: 7)
!3973 = !DILocation(line: 72, column: 23, scope: !3972)
!3974 = !DILocation(line: 72, column: 33, scope: !3972)
!3975 = !DILocation(line: 72, column: 26, scope: !3972)
!3976 = !DILocation(line: 72, column: 59, scope: !3972)
!3977 = !DILocation(line: 73, column: 7, scope: !3972)
!3978 = !DILocation(line: 73, column: 10, scope: !3972)
!3979 = !DILocation(line: 72, column: 7, scope: !3922)
!3980 = !DILocation(line: 100, column: 12, scope: !3922)
!3981 = !DILocation(line: 105, column: 7, scope: !3922)
!3982 = !DILocation(line: 74, column: 19, scope: !3972)
!3983 = !DILocation(line: 105, column: 19, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3922, file: !258, line: 105, column: 7)
!3985 = !DILocation(line: 107, column: 13, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3984, file: !258, line: 106, column: 5)
!3987 = !DILocation(line: 109, column: 5, scope: !3986)
!3988 = !DILocation(line: 112, column: 1, scope: !3922)
!3989 = !DISubprogram(name: "fclose", scope: !749, file: !749, line: 213, type: !3990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!64, !3943}
!3992 = !DISubprogram(name: "lseek", scope: !1106, file: !1106, line: 334, type: !3993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!777, !64, !777, !64}
!3995 = distinct !DISubprogram(name: "rpl_fflush", scope: !260, file: !260, line: 129, type: !3996, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !4032)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!64, !3998}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !881, line: 7, baseType: !4000)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !754, line: 49, size: 1728, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4000, file: !754, line: 51, baseType: !64, size: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4000, file: !754, line: 54, baseType: !43, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4000, file: !754, line: 55, baseType: !43, size: 64, offset: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4000, file: !754, line: 56, baseType: !43, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4000, file: !754, line: 57, baseType: !43, size: 64, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4000, file: !754, line: 58, baseType: !43, size: 64, offset: 320)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4000, file: !754, line: 59, baseType: !43, size: 64, offset: 384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4000, file: !754, line: 60, baseType: !43, size: 64, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4000, file: !754, line: 61, baseType: !43, size: 64, offset: 512)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4000, file: !754, line: 64, baseType: !43, size: 64, offset: 576)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4000, file: !754, line: 65, baseType: !43, size: 64, offset: 640)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4000, file: !754, line: 66, baseType: !43, size: 64, offset: 704)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4000, file: !754, line: 68, baseType: !769, size: 64, offset: 768)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4000, file: !754, line: 70, baseType: !4016, size: 64, offset: 832)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4000, file: !754, line: 72, baseType: !64, size: 32, offset: 896)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4000, file: !754, line: 73, baseType: !64, size: 32, offset: 928)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4000, file: !754, line: 74, baseType: !775, size: 64, offset: 960)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4000, file: !754, line: 77, baseType: !154, size: 16, offset: 1024)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4000, file: !754, line: 78, baseType: !780, size: 8, offset: 1040)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4000, file: !754, line: 79, baseType: !782, size: 8, offset: 1048)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4000, file: !754, line: 81, baseType: !786, size: 64, offset: 1088)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4000, file: !754, line: 89, baseType: !789, size: 64, offset: 1152)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4000, file: !754, line: 91, baseType: !791, size: 64, offset: 1216)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4000, file: !754, line: 92, baseType: !794, size: 64, offset: 1280)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4000, file: !754, line: 93, baseType: !4016, size: 64, offset: 1344)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4000, file: !754, line: 94, baseType: !45, size: 64, offset: 1408)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4000, file: !754, line: 95, baseType: !48, size: 64, offset: 1472)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4000, file: !754, line: 96, baseType: !64, size: 32, offset: 1536)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4000, file: !754, line: 98, baseType: !801, size: 160, offset: 1568)
!4032 = !{!4033}
!4033 = !DILocalVariable(name: "stream", arg: 1, scope: !3995, file: !260, line: 129, type: !3998)
!4034 = !DILocation(line: 0, scope: !3995)
!4035 = !DILocation(line: 150, column: 14, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !3995, file: !260, line: 150, column: 7)
!4037 = !DILocation(line: 150, column: 22, scope: !4036)
!4038 = !DILocation(line: 150, column: 27, scope: !4036)
!4039 = !DILocation(line: 150, column: 7, scope: !3995)
!4040 = !DILocation(line: 151, column: 12, scope: !4036)
!4041 = !DILocation(line: 151, column: 5, scope: !4036)
!4042 = !DILocalVariable(name: "fp", arg: 1, scope: !4043, file: !260, line: 41, type: !3998)
!4043 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !260, file: !260, line: 41, type: !4044, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !4046)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{null, !3998}
!4046 = !{!4042}
!4047 = !DILocation(line: 0, scope: !4043, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 156, column: 3, scope: !3995)
!4049 = !DILocation(line: 43, column: 11, scope: !4050, inlinedAt: !4048)
!4050 = distinct !DILexicalBlock(scope: !4043, file: !260, line: 43, column: 7)
!4051 = !DILocation(line: 43, column: 18, scope: !4050, inlinedAt: !4048)
!4052 = !DILocation(line: 43, column: 7, scope: !4043, inlinedAt: !4048)
!4053 = !DILocation(line: 45, column: 5, scope: !4050, inlinedAt: !4048)
!4054 = !DILocation(line: 158, column: 10, scope: !3995)
!4055 = !DILocation(line: 158, column: 3, scope: !3995)
!4056 = !DILocation(line: 235, column: 1, scope: !3995)
!4057 = !DISubprogram(name: "fflush", scope: !749, file: !749, line: 218, type: !4058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!64, !4016}
!4060 = distinct !DISubprogram(name: "rpl_fseeko", scope: !262, file: !262, line: 28, type: !4061, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4097)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!64, !4063, !1160, !64}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !881, line: 7, baseType: !4065)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !754, line: 49, size: 1728, elements: !4066)
!4066 = !{!4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4065, file: !754, line: 51, baseType: !64, size: 32)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4065, file: !754, line: 54, baseType: !43, size: 64, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4065, file: !754, line: 55, baseType: !43, size: 64, offset: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4065, file: !754, line: 56, baseType: !43, size: 64, offset: 192)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4065, file: !754, line: 57, baseType: !43, size: 64, offset: 256)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4065, file: !754, line: 58, baseType: !43, size: 64, offset: 320)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4065, file: !754, line: 59, baseType: !43, size: 64, offset: 384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4065, file: !754, line: 60, baseType: !43, size: 64, offset: 448)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4065, file: !754, line: 61, baseType: !43, size: 64, offset: 512)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4065, file: !754, line: 64, baseType: !43, size: 64, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4065, file: !754, line: 65, baseType: !43, size: 64, offset: 640)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4065, file: !754, line: 66, baseType: !43, size: 64, offset: 704)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4065, file: !754, line: 68, baseType: !769, size: 64, offset: 768)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4065, file: !754, line: 70, baseType: !4081, size: 64, offset: 832)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4065, file: !754, line: 72, baseType: !64, size: 32, offset: 896)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4065, file: !754, line: 73, baseType: !64, size: 32, offset: 928)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4065, file: !754, line: 74, baseType: !775, size: 64, offset: 960)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4065, file: !754, line: 77, baseType: !154, size: 16, offset: 1024)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4065, file: !754, line: 78, baseType: !780, size: 8, offset: 1040)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4065, file: !754, line: 79, baseType: !782, size: 8, offset: 1048)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4065, file: !754, line: 81, baseType: !786, size: 64, offset: 1088)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4065, file: !754, line: 89, baseType: !789, size: 64, offset: 1152)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4065, file: !754, line: 91, baseType: !791, size: 64, offset: 1216)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4065, file: !754, line: 92, baseType: !794, size: 64, offset: 1280)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4065, file: !754, line: 93, baseType: !4081, size: 64, offset: 1344)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4065, file: !754, line: 94, baseType: !45, size: 64, offset: 1408)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4065, file: !754, line: 95, baseType: !48, size: 64, offset: 1472)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4065, file: !754, line: 96, baseType: !64, size: 32, offset: 1536)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4065, file: !754, line: 98, baseType: !801, size: 160, offset: 1568)
!4097 = !{!4098, !4099, !4100, !4101}
!4098 = !DILocalVariable(name: "fp", arg: 1, scope: !4060, file: !262, line: 28, type: !4063)
!4099 = !DILocalVariable(name: "offset", arg: 2, scope: !4060, file: !262, line: 28, type: !1160)
!4100 = !DILocalVariable(name: "whence", arg: 3, scope: !4060, file: !262, line: 28, type: !64)
!4101 = !DILocalVariable(name: "pos", scope: !4102, file: !262, line: 117, type: !1160)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !262, line: 113, column: 5)
!4103 = distinct !DILexicalBlock(scope: !4060, file: !262, line: 52, column: 7)
!4104 = !DILocation(line: 0, scope: !4060)
!4105 = !DILocation(line: 52, column: 11, scope: !4103)
!4106 = !DILocation(line: 52, column: 31, scope: !4103)
!4107 = !DILocation(line: 52, column: 24, scope: !4103)
!4108 = !DILocation(line: 53, column: 7, scope: !4103)
!4109 = !DILocation(line: 53, column: 14, scope: !4103)
!4110 = !DILocation(line: 53, column: 35, scope: !4103)
!4111 = !{!926, !679, i64 32}
!4112 = !DILocation(line: 53, column: 28, scope: !4103)
!4113 = !DILocation(line: 54, column: 7, scope: !4103)
!4114 = !DILocation(line: 54, column: 14, scope: !4103)
!4115 = !{!926, !679, i64 72}
!4116 = !DILocation(line: 54, column: 28, scope: !4103)
!4117 = !DILocation(line: 52, column: 7, scope: !4060)
!4118 = !DILocation(line: 117, column: 26, scope: !4102)
!4119 = !DILocation(line: 117, column: 19, scope: !4102)
!4120 = !DILocation(line: 0, scope: !4102)
!4121 = !DILocation(line: 118, column: 15, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4102, file: !262, line: 118, column: 11)
!4123 = !DILocation(line: 118, column: 11, scope: !4102)
!4124 = !DILocation(line: 129, column: 11, scope: !4102)
!4125 = !DILocation(line: 129, column: 18, scope: !4102)
!4126 = !DILocation(line: 130, column: 11, scope: !4102)
!4127 = !DILocation(line: 130, column: 19, scope: !4102)
!4128 = !{!926, !927, i64 144}
!4129 = !DILocation(line: 161, column: 7, scope: !4102)
!4130 = !DILocation(line: 163, column: 10, scope: !4060)
!4131 = !DILocation(line: 163, column: 3, scope: !4060)
!4132 = !DILocation(line: 164, column: 1, scope: !4060)
!4133 = !DISubprogram(name: "fseeko", scope: !749, file: !749, line: 712, type: !4134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!64, !4081, !777, !64}
!4136 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !264, file: !264, line: 86, type: !4137, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !4151)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!48, !4139, !61, !48, !4140}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1987, line: 6, baseType: !4142)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1989, line: 21, baseType: !4143)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1989, line: 13, size: 64, elements: !4144)
!4144 = !{!4145, !4146}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4143, file: !1989, line: 15, baseType: !64, size: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4143, file: !1989, line: 20, baseType: !4147, size: 32, offset: 32)
!4147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4143, file: !1989, line: 16, size: 32, elements: !4148)
!4148 = !{!4149, !4150}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4147, file: !1989, line: 18, baseType: !7, size: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4147, file: !1989, line: 19, baseType: !1998, size: 32)
!4151 = !{!4152, !4153, !4154, !4155, !4156, !4157, !4158}
!4152 = !DILocalVariable(name: "pwc", arg: 1, scope: !4136, file: !264, line: 86, type: !4139)
!4153 = !DILocalVariable(name: "s", arg: 2, scope: !4136, file: !264, line: 86, type: !61)
!4154 = !DILocalVariable(name: "n", arg: 3, scope: !4136, file: !264, line: 86, type: !48)
!4155 = !DILocalVariable(name: "ps", arg: 4, scope: !4136, file: !264, line: 86, type: !4140)
!4156 = !DILocalVariable(name: "ret", scope: !4136, file: !264, line: 88, type: !48)
!4157 = !DILocalVariable(name: "wc", scope: !4136, file: !264, line: 89, type: !2001)
!4158 = !DILocalVariable(name: "uc", scope: !4159, file: !264, line: 156, type: !47)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !264, line: 155, column: 5)
!4160 = distinct !DILexicalBlock(scope: !4136, file: !264, line: 154, column: 7)
!4161 = !DILocation(line: 0, scope: !4136)
!4162 = !DILocation(line: 89, column: 3, scope: !4136)
!4163 = !DILocation(line: 105, column: 9, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4136, file: !264, line: 105, column: 7)
!4165 = !DILocation(line: 105, column: 7, scope: !4136)
!4166 = !DILocation(line: 145, column: 9, scope: !4136)
!4167 = !DILocation(line: 154, column: 19, scope: !4160)
!4168 = !DILocation(line: 154, column: 26, scope: !4160)
!4169 = !DILocation(line: 154, column: 41, scope: !4160)
!4170 = !DILocation(line: 154, column: 7, scope: !4136)
!4171 = !DILocation(line: 156, column: 26, scope: !4159)
!4172 = !DILocation(line: 0, scope: !4159)
!4173 = !DILocation(line: 157, column: 14, scope: !4159)
!4174 = !DILocation(line: 157, column: 12, scope: !4159)
!4175 = !DILocation(line: 163, column: 1, scope: !4136)
!4176 = !DISubprogram(name: "mbrtowc", scope: !2663, file: !2663, line: 296, type: !4177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!50, !66, !61, !50, !4179}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4180 = distinct !DISubprogram(name: "__argmatch_die", scope: !206, file: !206, line: 60, type: !213, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !75)
!4181 = !DILocation(line: 62, column: 3, scope: !4180)
!4182 = !DILocation(line: 63, column: 1, scope: !4180)
!4183 = distinct !DISubprogram(name: "argmatch", scope: !206, file: !206, line: 82, type: !4184, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !4187)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!4186, !61, !3357, !104, !48}
!4186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !49, line: 35, baseType: !777)
!4187 = !{!4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195}
!4188 = !DILocalVariable(name: "arg", arg: 1, scope: !4183, file: !206, line: 82, type: !61)
!4189 = !DILocalVariable(name: "arglist", arg: 2, scope: !4183, file: !206, line: 82, type: !3357)
!4190 = !DILocalVariable(name: "vallist", arg: 3, scope: !4183, file: !206, line: 83, type: !104)
!4191 = !DILocalVariable(name: "valsize", arg: 4, scope: !4183, file: !206, line: 83, type: !48)
!4192 = !DILocalVariable(name: "i", scope: !4183, file: !206, line: 85, type: !48)
!4193 = !DILocalVariable(name: "arglen", scope: !4183, file: !206, line: 86, type: !48)
!4194 = !DILocalVariable(name: "matchind", scope: !4183, file: !206, line: 87, type: !4186)
!4195 = !DILocalVariable(name: "ambiguous", scope: !4183, file: !206, line: 88, type: !70)
!4196 = !DILocation(line: 0, scope: !4183)
!4197 = !DILocation(line: 90, column: 12, scope: !4183)
!4198 = !DILocation(line: 93, column: 15, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !206, line: 93, column: 3)
!4200 = distinct !DILexicalBlock(scope: !4183, file: !206, line: 93, column: 3)
!4201 = !DILocation(line: 93, column: 3, scope: !4200)
!4202 = !DILocation(line: 95, column: 12, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !206, line: 95, column: 11)
!4204 = distinct !DILexicalBlock(scope: !4199, file: !206, line: 94, column: 5)
!4205 = !DILocation(line: 95, column: 11, scope: !4204)
!4206 = !DILocation(line: 97, column: 15, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !206, line: 97, column: 15)
!4208 = distinct !DILexicalBlock(scope: !4203, file: !206, line: 96, column: 9)
!4209 = !DILocation(line: 97, column: 35, scope: !4207)
!4210 = !DILocation(line: 97, column: 15, scope: !4208)
!4211 = !DILocation(line: 100, column: 29, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4207, file: !206, line: 100, column: 20)
!4213 = !DILocation(line: 100, column: 20, scope: !4207)
!4214 = !DILocation(line: 107, column: 19, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !206, line: 106, column: 19)
!4216 = distinct !DILexicalBlock(scope: !4212, file: !206, line: 104, column: 13)
!4217 = !DILocation(line: 107, column: 63, scope: !4215)
!4218 = !DILocation(line: 107, column: 53, scope: !4215)
!4219 = !DILocation(line: 108, column: 63, scope: !4215)
!4220 = !DILocation(line: 108, column: 53, scope: !4215)
!4221 = !DILocation(line: 107, column: 22, scope: !4215)
!4222 = !DILocation(line: 106, column: 19, scope: !4216)
!4223 = !DILocation(line: 113, column: 17, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4215, file: !206, line: 109, column: 17)
!4225 = !DILocation(line: 93, column: 28, scope: !4199)
!4226 = distinct !{!4226, !4201, !4227, !724}
!4227 = !DILocation(line: 116, column: 5, scope: !4200)
!4228 = !DILocation(line: 87, column: 13, scope: !4183)
!4229 = !DILocation(line: 88, column: 8, scope: !4183)
!4230 = !DILocation(line: 117, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4183, file: !206, line: 117, column: 7)
!4232 = !DILocation(line: 117, column: 7, scope: !4183)
!4233 = !DILocation(line: 121, column: 1, scope: !4183)
!4234 = distinct !DISubprogram(name: "argmatch_invalid", scope: !206, file: !206, line: 129, type: !4235, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{null, !61, !61, !4186}
!4237 = !{!4238, !4239, !4240, !4241}
!4238 = !DILocalVariable(name: "context", arg: 1, scope: !4234, file: !206, line: 129, type: !61)
!4239 = !DILocalVariable(name: "value", arg: 2, scope: !4234, file: !206, line: 129, type: !61)
!4240 = !DILocalVariable(name: "problem", arg: 3, scope: !4234, file: !206, line: 129, type: !4186)
!4241 = !DILocalVariable(name: "format", scope: !4234, file: !206, line: 131, type: !61)
!4242 = !DILocation(line: 0, scope: !4234)
!4243 = !DILocation(line: 131, column: 33, scope: !4234)
!4244 = !DILocation(line: 131, column: 25, scope: !4234)
!4245 = !DILocation(line: 135, column: 24, scope: !4234)
!4246 = !DILocation(line: 136, column: 10, scope: !4234)
!4247 = !DILocation(line: 135, column: 3, scope: !4234)
!4248 = !DILocation(line: 137, column: 1, scope: !4234)
!4249 = distinct !DISubprogram(name: "argmatch_valid", scope: !206, file: !206, line: 144, type: !4250, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !3357, !104, !48}
!4252 = !{!4253, !4254, !4255, !4256, !4257}
!4253 = !DILocalVariable(name: "arglist", arg: 1, scope: !4249, file: !206, line: 144, type: !3357)
!4254 = !DILocalVariable(name: "vallist", arg: 2, scope: !4249, file: !206, line: 145, type: !104)
!4255 = !DILocalVariable(name: "valsize", arg: 3, scope: !4249, file: !206, line: 145, type: !48)
!4256 = !DILocalVariable(name: "i", scope: !4249, file: !206, line: 147, type: !48)
!4257 = !DILocalVariable(name: "last_val", scope: !4249, file: !206, line: 148, type: !61)
!4258 = !DILocation(line: 0, scope: !4249)
!4259 = !DILocation(line: 152, column: 3, scope: !4249)
!4260 = !DILocation(line: 153, column: 15, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !206, line: 153, column: 3)
!4262 = distinct !DILexicalBlock(scope: !4249, file: !206, line: 153, column: 3)
!4263 = !DILocation(line: 153, column: 3, scope: !4262)
!4264 = !DILocation(line: 154, column: 12, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4261, file: !206, line: 154, column: 9)
!4266 = !DILocation(line: 155, column: 9, scope: !4265)
!4267 = !DILocation(line: 155, column: 63, scope: !4265)
!4268 = !DILocation(line: 155, column: 53, scope: !4265)
!4269 = !DILocation(line: 155, column: 12, scope: !4265)
!4270 = !DILocation(line: 154, column: 9, scope: !4261)
!4271 = !DILocation(line: 158, column: 53, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4265, file: !206, line: 156, column: 7)
!4273 = !DILocation(line: 157, column: 9, scope: !4272)
!4274 = !DILocation(line: 158, column: 43, scope: !4272)
!4275 = !DILocation(line: 159, column: 7, scope: !4272)
!4276 = !DILocation(line: 162, column: 9, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4265, file: !206, line: 161, column: 7)
!4278 = !DILocation(line: 153, column: 28, scope: !4261)
!4279 = distinct !{!4279, !4263, !4280, !724}
!4280 = !DILocation(line: 163, column: 7, scope: !4262)
!4281 = !DILocation(line: 164, column: 3, scope: !4249)
!4282 = !DILocalVariable(name: "__c", arg: 1, scope: !4283, file: !918, line: 101, type: !64)
!4283 = distinct !DISubprogram(name: "putc_unlocked", scope: !918, file: !918, line: 101, type: !4284, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !4320)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!64, !64, !4286}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !881, line: 7, baseType: !4288)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !754, line: 49, size: 1728, elements: !4289)
!4289 = !{!4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4288, file: !754, line: 51, baseType: !64, size: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4288, file: !754, line: 54, baseType: !43, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4288, file: !754, line: 55, baseType: !43, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4288, file: !754, line: 56, baseType: !43, size: 64, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4288, file: !754, line: 57, baseType: !43, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4288, file: !754, line: 58, baseType: !43, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4288, file: !754, line: 59, baseType: !43, size: 64, offset: 384)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4288, file: !754, line: 60, baseType: !43, size: 64, offset: 448)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4288, file: !754, line: 61, baseType: !43, size: 64, offset: 512)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4288, file: !754, line: 64, baseType: !43, size: 64, offset: 576)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4288, file: !754, line: 65, baseType: !43, size: 64, offset: 640)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4288, file: !754, line: 66, baseType: !43, size: 64, offset: 704)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4288, file: !754, line: 68, baseType: !769, size: 64, offset: 768)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4288, file: !754, line: 70, baseType: !4304, size: 64, offset: 832)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4288, file: !754, line: 72, baseType: !64, size: 32, offset: 896)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4288, file: !754, line: 73, baseType: !64, size: 32, offset: 928)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4288, file: !754, line: 74, baseType: !775, size: 64, offset: 960)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4288, file: !754, line: 77, baseType: !154, size: 16, offset: 1024)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4288, file: !754, line: 78, baseType: !780, size: 8, offset: 1040)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4288, file: !754, line: 79, baseType: !782, size: 8, offset: 1048)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4288, file: !754, line: 81, baseType: !786, size: 64, offset: 1088)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4288, file: !754, line: 89, baseType: !789, size: 64, offset: 1152)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4288, file: !754, line: 91, baseType: !791, size: 64, offset: 1216)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4288, file: !754, line: 92, baseType: !794, size: 64, offset: 1280)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4288, file: !754, line: 93, baseType: !4304, size: 64, offset: 1344)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4288, file: !754, line: 94, baseType: !45, size: 64, offset: 1408)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4288, file: !754, line: 95, baseType: !48, size: 64, offset: 1472)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4288, file: !754, line: 96, baseType: !64, size: 32, offset: 1536)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4288, file: !754, line: 98, baseType: !801, size: 160, offset: 1568)
!4320 = !{!4282, !4321}
!4321 = !DILocalVariable(name: "__stream", arg: 2, scope: !4283, file: !918, line: 101, type: !4286)
!4322 = !DILocation(line: 0, scope: !4283, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 164, column: 3, scope: !4249)
!4324 = !DILocation(line: 103, column: 10, scope: !4283, inlinedAt: !4323)
!4325 = !DILocation(line: 165, column: 1, scope: !4249)
!4326 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !206, file: !206, line: 174, type: !4327, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !4329)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!4186, !61, !61, !3357, !104, !48, !210}
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335, !4336}
!4330 = !DILocalVariable(name: "context", arg: 1, scope: !4326, file: !206, line: 174, type: !61)
!4331 = !DILocalVariable(name: "arg", arg: 2, scope: !4326, file: !206, line: 175, type: !61)
!4332 = !DILocalVariable(name: "arglist", arg: 3, scope: !4326, file: !206, line: 175, type: !3357)
!4333 = !DILocalVariable(name: "vallist", arg: 4, scope: !4326, file: !206, line: 176, type: !104)
!4334 = !DILocalVariable(name: "valsize", arg: 5, scope: !4326, file: !206, line: 176, type: !48)
!4335 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !4326, file: !206, line: 177, type: !210)
!4336 = !DILocalVariable(name: "res", scope: !4326, file: !206, line: 179, type: !4186)
!4337 = !DILocation(line: 0, scope: !4326)
!4338 = !DILocation(line: 179, column: 19, scope: !4326)
!4339 = !DILocation(line: 180, column: 11, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4326, file: !206, line: 180, column: 7)
!4341 = !DILocation(line: 180, column: 7, scope: !4326)
!4342 = !DILocation(line: 0, scope: !4234, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 185, column: 3, scope: !4326)
!4344 = !DILocation(line: 131, column: 33, scope: !4234, inlinedAt: !4343)
!4345 = !DILocation(line: 131, column: 25, scope: !4234, inlinedAt: !4343)
!4346 = !DILocation(line: 135, column: 24, scope: !4234, inlinedAt: !4343)
!4347 = !DILocation(line: 136, column: 10, scope: !4234, inlinedAt: !4343)
!4348 = !DILocation(line: 135, column: 3, scope: !4234, inlinedAt: !4343)
!4349 = !DILocation(line: 186, column: 3, scope: !4326)
!4350 = !DILocation(line: 187, column: 3, scope: !4326)
!4351 = !DILocation(line: 189, column: 3, scope: !4326)
!4352 = !DILocation(line: 190, column: 1, scope: !4326)
!4353 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !206, file: !206, line: 195, type: !4354, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !4356)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!61, !104, !3357, !104, !48}
!4356 = !{!4357, !4358, !4359, !4360, !4361}
!4357 = !DILocalVariable(name: "value", arg: 1, scope: !4353, file: !206, line: 195, type: !104)
!4358 = !DILocalVariable(name: "arglist", arg: 2, scope: !4353, file: !206, line: 196, type: !3357)
!4359 = !DILocalVariable(name: "vallist", arg: 3, scope: !4353, file: !206, line: 197, type: !104)
!4360 = !DILocalVariable(name: "valsize", arg: 4, scope: !4353, file: !206, line: 197, type: !48)
!4361 = !DILocalVariable(name: "i", scope: !4353, file: !206, line: 199, type: !48)
!4362 = !DILocation(line: 0, scope: !4353)
!4363 = !DILocation(line: 201, column: 15, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !206, line: 201, column: 3)
!4365 = distinct !DILexicalBlock(scope: !4353, file: !206, line: 201, column: 3)
!4366 = !DILocation(line: 201, column: 3, scope: !4365)
!4367 = !DILocation(line: 202, column: 10, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4364, file: !206, line: 202, column: 9)
!4369 = !DILocation(line: 202, column: 9, scope: !4364)
!4370 = distinct !{!4370, !4366, !4371, !724}
!4371 = !DILocation(line: 203, column: 23, scope: !4365)
!4372 = !DILocation(line: 202, column: 58, scope: !4368)
!4373 = !DILocation(line: 202, column: 48, scope: !4368)
!4374 = !DILocation(line: 201, column: 28, scope: !4364)
!4375 = !DILocation(line: 205, column: 1, scope: !4353)
!4376 = distinct !DISubprogram(name: "close_stream", scope: !267, file: !267, line: 56, type: !4377, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !4413)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!64, !4379}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !881, line: 7, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !754, line: 49, size: 1728, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4381, file: !754, line: 51, baseType: !64, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4381, file: !754, line: 54, baseType: !43, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4381, file: !754, line: 55, baseType: !43, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4381, file: !754, line: 56, baseType: !43, size: 64, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4381, file: !754, line: 57, baseType: !43, size: 64, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4381, file: !754, line: 58, baseType: !43, size: 64, offset: 320)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4381, file: !754, line: 59, baseType: !43, size: 64, offset: 384)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4381, file: !754, line: 60, baseType: !43, size: 64, offset: 448)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4381, file: !754, line: 61, baseType: !43, size: 64, offset: 512)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4381, file: !754, line: 64, baseType: !43, size: 64, offset: 576)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4381, file: !754, line: 65, baseType: !43, size: 64, offset: 640)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4381, file: !754, line: 66, baseType: !43, size: 64, offset: 704)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4381, file: !754, line: 68, baseType: !769, size: 64, offset: 768)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4381, file: !754, line: 70, baseType: !4397, size: 64, offset: 832)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4381, file: !754, line: 72, baseType: !64, size: 32, offset: 896)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4381, file: !754, line: 73, baseType: !64, size: 32, offset: 928)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4381, file: !754, line: 74, baseType: !775, size: 64, offset: 960)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4381, file: !754, line: 77, baseType: !154, size: 16, offset: 1024)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4381, file: !754, line: 78, baseType: !780, size: 8, offset: 1040)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4381, file: !754, line: 79, baseType: !782, size: 8, offset: 1048)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4381, file: !754, line: 81, baseType: !786, size: 64, offset: 1088)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4381, file: !754, line: 89, baseType: !789, size: 64, offset: 1152)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4381, file: !754, line: 91, baseType: !791, size: 64, offset: 1216)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4381, file: !754, line: 92, baseType: !794, size: 64, offset: 1280)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4381, file: !754, line: 93, baseType: !4397, size: 64, offset: 1344)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4381, file: !754, line: 94, baseType: !45, size: 64, offset: 1408)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4381, file: !754, line: 95, baseType: !48, size: 64, offset: 1472)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4381, file: !754, line: 96, baseType: !64, size: 32, offset: 1536)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4381, file: !754, line: 98, baseType: !801, size: 160, offset: 1568)
!4413 = !{!4414, !4415, !4417, !4418}
!4414 = !DILocalVariable(name: "stream", arg: 1, scope: !4376, file: !267, line: 56, type: !4379)
!4415 = !DILocalVariable(name: "some_pending", scope: !4376, file: !267, line: 58, type: !4416)
!4416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!4417 = !DILocalVariable(name: "prev_fail", scope: !4376, file: !267, line: 59, type: !4416)
!4418 = !DILocalVariable(name: "fclose_fail", scope: !4376, file: !267, line: 60, type: !4416)
!4419 = !DILocation(line: 0, scope: !4376)
!4420 = !DILocation(line: 58, column: 30, scope: !4376)
!4421 = !DILocalVariable(name: "__stream", arg: 1, scope: !4422, file: !918, line: 135, type: !4379)
!4422 = distinct !DISubprogram(name: "ferror_unlocked", scope: !918, file: !918, line: 135, type: !4377, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !4423)
!4423 = !{!4421}
!4424 = !DILocation(line: 0, scope: !4422, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 59, column: 27, scope: !4376)
!4426 = !DILocation(line: 137, column: 10, scope: !4422, inlinedAt: !4425)
!4427 = !DILocation(line: 59, column: 43, scope: !4376)
!4428 = !DILocation(line: 60, column: 29, scope: !4376)
!4429 = !DILocation(line: 60, column: 45, scope: !4376)
!4430 = !DILocation(line: 70, column: 17, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4376, file: !267, line: 70, column: 7)
!4432 = !DILocation(line: 58, column: 50, scope: !4376)
!4433 = !DILocation(line: 70, column: 33, scope: !4431)
!4434 = !DILocation(line: 70, column: 53, scope: !4431)
!4435 = !DILocation(line: 70, column: 59, scope: !4431)
!4436 = !DILocation(line: 70, column: 7, scope: !4376)
!4437 = !DILocation(line: 72, column: 11, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4431, file: !267, line: 71, column: 5)
!4439 = !DILocation(line: 73, column: 9, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4438, file: !267, line: 72, column: 11)
!4441 = !DILocation(line: 73, column: 15, scope: !4440)
!4442 = !DILocation(line: 78, column: 1, scope: !4376)
!4443 = distinct !DISubprogram(name: "hard_locale", scope: !269, file: !269, line: 27, type: !4444, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !4446)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!70, !64}
!4446 = !{!4447, !4448}
!4447 = !DILocalVariable(name: "category", arg: 1, scope: !4443, file: !269, line: 27, type: !64)
!4448 = !DILocalVariable(name: "locale", scope: !4443, file: !269, line: 29, type: !4449)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2056, elements: !4450)
!4450 = !{!4451}
!4451 = !DISubrange(count: 257)
!4452 = !DILocation(line: 0, scope: !4443)
!4453 = !DILocation(line: 29, column: 3, scope: !4443)
!4454 = !DILocation(line: 29, column: 8, scope: !4443)
!4455 = !DILocation(line: 31, column: 7, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4443, file: !269, line: 31, column: 7)
!4457 = !DILocation(line: 31, column: 7, scope: !4443)
!4458 = !DILocation(line: 34, column: 12, scope: !4443)
!4459 = !DILocation(line: 34, column: 38, scope: !4443)
!4460 = !DILocation(line: 34, column: 41, scope: !4443)
!4461 = !DILocation(line: 34, column: 66, scope: !4443)
!4462 = !DILocation(line: 35, column: 1, scope: !4443)
!4463 = distinct !DISubprogram(name: "locale_charset", scope: !271, file: !271, line: 831, type: !4464, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !4466)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!61}
!4466 = !{!4467}
!4467 = !DILocalVariable(name: "codeset", scope: !4463, file: !271, line: 833, type: !61)
!4468 = !DILocation(line: 847, column: 13, scope: !4463)
!4469 = !DILocation(line: 0, scope: !4463)
!4470 = !DILocation(line: 911, column: 15, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4463, file: !271, line: 911, column: 7)
!4472 = !DILocation(line: 911, column: 7, scope: !4463)
!4473 = !DILocation(line: 1070, column: 13, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !271, line: 1070, column: 13)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !271, line: 1060, column: 7)
!4476 = distinct !DILexicalBlock(scope: !4463, file: !271, line: 1019, column: 3)
!4477 = !DILocation(line: 1070, column: 24, scope: !4474)
!4478 = !DILocation(line: 1070, column: 13, scope: !4475)
!4479 = !DILocation(line: 1158, column: 3, scope: !4463)
!4480 = !DISubprogram(name: "nl_langinfo", scope: !274, file: !274, line: 661, type: !4481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!43, !64}
!4483 = distinct !DISubprogram(name: "setlocale_null_r", scope: !660, file: !660, line: 269, type: !4484, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !659, retainedNodes: !4486)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!64, !64, !43, !48}
!4486 = !{!4487, !4488, !4489}
!4487 = !DILocalVariable(name: "category", arg: 1, scope: !4483, file: !660, line: 269, type: !64)
!4488 = !DILocalVariable(name: "buf", arg: 2, scope: !4483, file: !660, line: 269, type: !43)
!4489 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4483, file: !660, line: 269, type: !48)
!4490 = !DILocation(line: 0, scope: !4483)
!4491 = !DILocalVariable(name: "category", arg: 1, scope: !4492, file: !660, line: 91, type: !64)
!4492 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !660, file: !660, line: 91, type: !4484, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !659, retainedNodes: !4493)
!4493 = !{!4491, !4494, !4495, !4496, !4497}
!4494 = !DILocalVariable(name: "buf", arg: 2, scope: !4492, file: !660, line: 91, type: !43)
!4495 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4492, file: !660, line: 91, type: !48)
!4496 = !DILocalVariable(name: "result", scope: !4492, file: !660, line: 140, type: !61)
!4497 = !DILocalVariable(name: "length", scope: !4498, file: !660, line: 154, type: !48)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !660, line: 153, column: 5)
!4499 = distinct !DILexicalBlock(scope: !4492, file: !660, line: 142, column: 7)
!4500 = !DILocation(line: 0, scope: !4492, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 274, column: 10, scope: !4483)
!4502 = !DILocalVariable(name: "category", arg: 1, scope: !4503, file: !660, line: 60, type: !64)
!4503 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !660, file: !660, line: 60, type: !4504, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !659, retainedNodes: !4506)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!61, !64}
!4506 = !{!4502, !4507}
!4507 = !DILocalVariable(name: "result", scope: !4503, file: !660, line: 62, type: !61)
!4508 = !DILocation(line: 0, scope: !4503, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 140, column: 24, scope: !4492, inlinedAt: !4501)
!4510 = !DILocation(line: 62, column: 24, scope: !4503, inlinedAt: !4509)
!4511 = !DILocation(line: 142, column: 14, scope: !4499, inlinedAt: !4501)
!4512 = !DILocation(line: 142, column: 7, scope: !4492, inlinedAt: !4501)
!4513 = !DILocation(line: 145, column: 19, scope: !4514, inlinedAt: !4501)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !660, line: 145, column: 11)
!4515 = distinct !DILexicalBlock(scope: !4499, file: !660, line: 143, column: 5)
!4516 = !DILocation(line: 145, column: 11, scope: !4515, inlinedAt: !4501)
!4517 = !DILocation(line: 149, column: 16, scope: !4514, inlinedAt: !4501)
!4518 = !DILocation(line: 149, column: 9, scope: !4514, inlinedAt: !4501)
!4519 = !DILocation(line: 154, column: 23, scope: !4498, inlinedAt: !4501)
!4520 = !DILocation(line: 0, scope: !4498, inlinedAt: !4501)
!4521 = !DILocation(line: 155, column: 18, scope: !4522, inlinedAt: !4501)
!4522 = distinct !DILexicalBlock(scope: !4498, file: !660, line: 155, column: 11)
!4523 = !DILocation(line: 155, column: 11, scope: !4498, inlinedAt: !4501)
!4524 = !DILocation(line: 157, column: 39, scope: !4525, inlinedAt: !4501)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !660, line: 156, column: 9)
!4526 = !DILocalVariable(name: "__dest", arg: 1, scope: !4527, file: !1455, line: 26, type: !1528)
!4527 = distinct !DISubprogram(name: "memcpy", scope: !1455, file: !1455, line: 26, type: !1526, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !659, retainedNodes: !4528)
!4528 = !{!4526, !4529, !4530}
!4529 = !DILocalVariable(name: "__src", arg: 2, scope: !4527, file: !1455, line: 26, type: !1529)
!4530 = !DILocalVariable(name: "__len", arg: 3, scope: !4527, file: !1455, line: 26, type: !48)
!4531 = !DILocation(line: 0, scope: !4527, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 157, column: 11, scope: !4525, inlinedAt: !4501)
!4533 = !DILocation(line: 29, column: 10, scope: !4527, inlinedAt: !4532)
!4534 = !DILocation(line: 158, column: 11, scope: !4525, inlinedAt: !4501)
!4535 = !DILocation(line: 162, column: 23, scope: !4536, inlinedAt: !4501)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !660, line: 162, column: 15)
!4537 = distinct !DILexicalBlock(scope: !4522, file: !660, line: 161, column: 9)
!4538 = !DILocation(line: 162, column: 15, scope: !4537, inlinedAt: !4501)
!4539 = !DILocation(line: 167, column: 44, scope: !4540, inlinedAt: !4501)
!4540 = distinct !DILexicalBlock(scope: !4536, file: !660, line: 163, column: 13)
!4541 = !DILocation(line: 0, scope: !4527, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 167, column: 15, scope: !4540, inlinedAt: !4501)
!4543 = !DILocation(line: 29, column: 10, scope: !4527, inlinedAt: !4542)
!4544 = !DILocation(line: 168, column: 15, scope: !4540, inlinedAt: !4501)
!4545 = !DILocation(line: 168, column: 32, scope: !4540, inlinedAt: !4501)
!4546 = !DILocation(line: 169, column: 13, scope: !4540, inlinedAt: !4501)
!4547 = !DILocation(line: 0, scope: !4499, inlinedAt: !4501)
!4548 = !DILocation(line: 274, column: 3, scope: !4483)
!4549 = distinct !DISubprogram(name: "setlocale_null", scope: !660, file: !660, line: 301, type: !4504, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !659, retainedNodes: !4550)
!4550 = !{!4551}
!4551 = !DILocalVariable(name: "category", arg: 1, scope: !4549, file: !660, line: 301, type: !64)
!4552 = !DILocation(line: 0, scope: !4549)
!4553 = !DILocation(line: 0, scope: !4503, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 304, column: 10, scope: !4549)
!4555 = !DILocation(line: 62, column: 24, scope: !4503, inlinedAt: !4554)
!4556 = !DILocation(line: 304, column: 3, scope: !4549)
