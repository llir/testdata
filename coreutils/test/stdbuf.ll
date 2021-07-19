; ModuleID = 'coreutils-8.32/src/stdbuf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.anon = type { i64, i32, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.allocator = type { i8* (i64)*, i8* (i8*, i64)*, void (i8*)*, void (i64)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... COMMAND\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Run COMMAND, with modified buffering operations for its standard streams.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [182 x i8] c"  -i, --input=MODE   adjust standard input stream buffering\0A  -o, --output=MODE  adjust standard output stream buffering\0A  -e, --error=MODE   adjust standard error stream buffering\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"\0AIf MODE is 'L' the corresponding stream will be line buffered.\0AThis option is invalid with standard input.\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\0AIf MODE is '0' the corresponding stream will be unbuffered.\0A\00", align 1
@.str.8 = private unnamed_addr constant [312 x i8] c"\0AOtherwise MODE is a number which may be followed by one of the following:\0AKB 1000, K 1024, MB 1000*1000, M 1024*1024, and so on for G, T, P, E, Z, Y.\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0AIn this case the corresponding stream will be fully buffered with the buffer\0Asize set to MODE bytes.\0A\00", align 1
@.str.9 = private unnamed_addr constant [267 x i8] c"\0ANOTE: If COMMAND adjusts the buffering of its standard streams ('tee' does\0Afor example) then that will override corresponding changes by 'stdbuf'.\0AAlso some filters (like 'dd' and 'cat' etc.) don't use streams for I/O,\0Aand are thus unaffected by 'stdbuf' settings.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"stdbuf\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.38 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"+i:o:e:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@stdbuf = internal unnamed_addr global [3 x %struct.anon] zeroinitializer, align 16, !dbg !33
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [36 x i8] c"line buffering stdin is meaningless\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"EGkKMPTYZ0\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"%s%c=L\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"_STDBUF_\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"%s%c=%lu\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"failed to update the environment with %s\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"you must specify a buffering mode option\00", align 1
@program_path = internal unnamed_addr global i8* null, align 8, !dbg !31
@.str.52 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"/usr/local/lib/coreutils\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"LD_PRELOAD\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"/usr/local/libexec/coreutils\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"libstdbuf.so\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"failed to find %s\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%s=%s:%s\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !60
@.str.15 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !66
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !71
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.63 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.64 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !74
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !80
@.str.81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 16, !dbg !86
@.str.84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.85 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.86 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.87 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.88 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.90 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.91 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.92 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.93 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !128
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !134
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !146
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.96 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.97 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.98 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.99 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.100 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !153
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !160
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !148
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !162
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.107 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.108 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.109 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.110 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.111 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.112 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.113 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.114 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.115 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.116 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.117 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.118 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.119 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.120 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.126 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.127 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.128 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !168
@.str.1.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.147 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.148 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.161 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.164 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.165 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@stdlib_allocator = dso_local local_unnamed_addr constant %struct.allocator { i8* (i64)* @malloc, i8* (i8*, i64)* @realloc, void (i8*)* @free, void (i64)* null }, align 8, !dbg !176

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !661 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !665, metadata !DIExpression()), !dbg !666
  %3 = icmp eq i32 %0, 0, !dbg !667
  br i1 %3, label %9, label %4, !dbg !669

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !670, !tbaa !672
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #28, !dbg !670
  %7 = load i8*, i8** @program_name, align 8, !dbg !670, !tbaa !672
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #28, !dbg !670
  br label %76, !dbg !670

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #28, !dbg !676
  %11 = load i8*, i8** @program_name, align 8, !dbg !676, !tbaa !672
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #28, !dbg !676
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 5) #28, !dbg !678
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !678, !tbaa !672
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !678
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i64 0, i64 0), i32 5) #28, !dbg !679
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !672
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #28, !dbg !679
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.3, i64 0, i64 0), i32 5) #28, !dbg !684
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !672
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !684
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #28, !dbg !685
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !672
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !685
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #28, !dbg !686
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !672
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !686
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 5) #28, !dbg !687
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !672
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !687
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 5) #28, !dbg !688
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !672
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !688
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([312 x i8], [312 x i8]* @.str.8, i64 0, i64 0), i32 5) #28, !dbg !689
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !672
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !689
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.9, i64 0, i64 0), i32 5) #28, !dbg !690
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !672
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !690
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !691, metadata !DIExpression()) #28, !dbg !709
  %40 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !711
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %40) #28, !dbg !711
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !696, metadata !DIExpression()) #28, !dbg !712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %40, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #28, !dbg !712
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !705, metadata !DIExpression()) #28, !dbg !709
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !706, metadata !DIExpression()) #28, !dbg !709
  %41 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !713
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !706, metadata !DIExpression()) #28, !dbg !709
  br label %42, !dbg !714

42:                                               ; preds = %47, %9
  %43 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %44 = phi %struct.infomap* [ %48, %47 ], [ %41, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !706, metadata !DIExpression()) #28, !dbg !709
  %45 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %43) #29, !dbg !715
  %46 = icmp eq i32 %45, 0, !dbg !715
  br i1 %46, label %52, label %47, !dbg !714

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 1, !dbg !716
  call void @llvm.dbg.value(metadata %struct.infomap* %48, metadata !706, metadata !DIExpression()) #28, !dbg !709
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 0, i32 0, !dbg !717
  %50 = load i8*, i8** %49, align 8, !dbg !717, !tbaa !718
  %51 = icmp eq i8* %50, null, !dbg !720
  br i1 %51, label %52, label %42, !dbg !721, !llvm.loop !722

52:                                               ; preds = %47, %42
  %53 = phi %struct.infomap* [ %44, %42 ], [ %48, %47 ]
  %54 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 0, i32 1, !dbg !724
  %55 = load i8*, i8** %54, align 8, !dbg !724, !tbaa !726
  %56 = icmp eq i8* %55, null, !dbg !727
  %57 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %55, !dbg !728
  call void @llvm.dbg.value(metadata i8* %57, metadata !705, metadata !DIExpression()) #28, !dbg !709
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #28, !dbg !729
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0)) #28, !dbg !729
  %60 = tail call i8* @setlocale(i32 5, i8* null) #28, !dbg !730
  call void @llvm.dbg.value(metadata i8* %60, metadata !708, metadata !DIExpression()) #28, !dbg !709
  %61 = icmp eq i8* %60, null, !dbg !731
  br i1 %61, label %69, label %62, !dbg !733

62:                                               ; preds = %52
  %63 = tail call i32 @strncmp(i8* nonnull %60, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #29, !dbg !734
  %64 = icmp eq i32 %63, 0, !dbg !734
  br i1 %64, label %69, label %65, !dbg !735

65:                                               ; preds = %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.38, i64 0, i64 0), i32 5) #28, !dbg !736
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !672
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #28, !dbg !736
  br label %69, !dbg !738

69:                                               ; preds = %52, %62, %65
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 5) #28, !dbg !739
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #28, !dbg !739
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #28, !dbg !740
  %73 = icmp eq i8* %57, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), !dbg !740
  %74 = select i1 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !740
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* %57, i8* %74) #28, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %40) #28, !dbg !741
  br label %76

76:                                               ; preds = %69, %4
  tail call void @exit(i32 %0) #30, !dbg !742
  unreachable, !dbg !742
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !743 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !747 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !802 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !806 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !811, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i8** %1, metadata !812, metadata !DIExpression()), !dbg !817
  %9 = load i8*, i8** %1, align 8, !dbg !818, !tbaa !672
  tail call void @set_program_name(i8* %9) #28, !dbg !819
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #28, !dbg !820
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #28, !dbg !821
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #28, !dbg !822
  call void @llvm.dbg.value(metadata i32 125, metadata !823, metadata !DIExpression()), !dbg !826
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !828, !tbaa !830
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #28, !dbg !832
  %14 = bitcast i64* %4 to i8*
  br label %15, !dbg !833

15:                                               ; preds = %51, %2
  %16 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #28, !dbg !834
  call void @llvm.dbg.value(metadata i32 %16, metadata !813, metadata !DIExpression()), !dbg !817
  switch i32 %16, label %63 [
    i32 -1, label %64
    i32 -131, label %60
    i32 -130, label %59
    i32 101, label %19
    i32 105, label %17
    i32 111, label %18
  ], !dbg !833

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !835, metadata !DIExpression()), !dbg !841
  br label %19, !dbg !844

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 1, metadata !835, metadata !DIExpression()), !dbg !841
  br label %19, !dbg !846

19:                                               ; preds = %15, %18, %17
  %20 = phi i64 [ 0, %17 ], [ 1, %18 ], [ 2, %15 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !835, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 -1, metadata !814, metadata !DIExpression()), !dbg !847
  %21 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 1, !dbg !848
  store i32 %16, i32* %21, align 8, !dbg !849, !tbaa !850
  %22 = load i8*, i8** @optarg, align 8, !dbg !853, !tbaa !672
  br label %23, !dbg !854

23:                                               ; preds = %27, %19
  %24 = phi i8* [ %28, %27 ], [ %22, %19 ], !dbg !853
  %25 = load i8, i8* %24, align 1, !dbg !855, !tbaa !856
  %26 = sext i8 %25 to i32, !dbg !855
  call void @llvm.dbg.value(metadata i32 %26, metadata !857, metadata !DIExpression()), !dbg !863
  switch i32 %26, label %29 [
    i32 32, label %27
    i32 9, label %27
    i32 10, label %27
    i32 11, label %27
    i32 12, label %27
    i32 13, label %27
  ], !dbg !865

27:                                               ; preds = %23, %23, %23, %23, %23, %23
  %28 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !866
  store i8* %28, i8** @optarg, align 8, !dbg !866, !tbaa !672
  br label %23, !dbg !854, !llvm.loop !867

29:                                               ; preds = %23
  %30 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 2, !dbg !868
  store i8* %24, i8** %30, align 8, !dbg !869, !tbaa !870
  %31 = icmp eq i32 %16, 105, !dbg !871
  br i1 %31, label %32, label %37, !dbg !873

32:                                               ; preds = %29
  %33 = load i8, i8* %24, align 1, !dbg !874, !tbaa !856
  %34 = icmp eq i8 %33, 76, !dbg !875
  br i1 %34, label %35, label %37, !dbg !876

35:                                               ; preds = %32
  %36 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #28, !dbg !877
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36) #28, !dbg !879
  call void @usage(i32 125) #31, !dbg !880
  unreachable, !dbg !880

37:                                               ; preds = %32, %29
  %38 = call i32 @strcmp(i8* nonnull dereferenceable(1) %24, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #29, !dbg !881
  %39 = icmp eq i32 %38, 0, !dbg !881
  br i1 %39, label %51, label %40, !dbg !883

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* %24, metadata !884, metadata !DIExpression()) #28, !dbg !892
  call void @llvm.dbg.value(metadata i64* undef, metadata !889, metadata !DIExpression()) #28, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #28, !dbg !894
  call void @llvm.dbg.value(metadata i64* %4, metadata !890, metadata !DIExpression(DW_OP_deref)) #28, !dbg !892
  %41 = call i32 @xstrtoumax(i8* nonnull %24, i8** null, i32 10, i64* nonnull %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0)) #28, !dbg !895
  call void @llvm.dbg.value(metadata i32 %41, metadata !891, metadata !DIExpression()) #28, !dbg !892
  call void @llvm.dbg.value(metadata i64 undef, metadata !890, metadata !DIExpression()) #28, !dbg !892
  switch i32 %41, label %44 [
    i32 0, label %47
    i32 1, label %42
  ], !dbg !896

42:                                               ; preds = %40
  %43 = tail call i32* @__errno_location() #32, !dbg !897
  br label %52, !dbg !896

44:                                               ; preds = %40
  %45 = tail call i32* @__errno_location() #32, !dbg !898
  %46 = load i32, i32* %45, align 4, !dbg !898, !tbaa !830
  br label %52, !dbg !899

47:                                               ; preds = %40
  %48 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 0, !dbg !900
  call void @llvm.dbg.value(metadata i64* %48, metadata !889, metadata !DIExpression()) #28, !dbg !892
  %49 = tail call i32* @__errno_location() #32, !dbg !901
  store i32 0, i32* %49, align 4, !dbg !904, !tbaa !830
  %50 = load i64, i64* %4, align 8, !dbg !905, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %50, metadata !890, metadata !DIExpression()) #28, !dbg !892
  store i64 %50, i64* %48, align 8, !dbg !907, !tbaa !906
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #28, !dbg !908
  br label %51, !dbg !909

51:                                               ; preds = %47, %37
  br label %15, !dbg !834, !llvm.loop !910

52:                                               ; preds = %42, %44
  %53 = phi i32* [ %43, %42 ], [ %45, %44 ], !dbg !897
  %54 = phi i32 [ 75, %42 ], [ %46, %44 ], !dbg !899
  store i32 %54, i32* %53, align 4, !dbg !912, !tbaa !830
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #28, !dbg !908
  %55 = load i32, i32* %53, align 4, !dbg !913, !tbaa !830
  %56 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 5) #28, !dbg !913
  %57 = load i8*, i8** @optarg, align 8, !dbg !913, !tbaa !672
  %58 = call i8* @quote(i8* %57) #28, !dbg !913
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %55, i8* %56, i8* %58) #28, !dbg !913
  unreachable, !dbg !913

59:                                               ; preds = %15
  call void @usage(i32 0) #31, !dbg !914
  unreachable, !dbg !914

60:                                               ; preds = %15
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !915, !tbaa !672
  %62 = load i8*, i8** @Version, align 8, !dbg !915, !tbaa !672
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #28, !dbg !915
  call void @exit(i32 0) #30, !dbg !915
  unreachable, !dbg !915

63:                                               ; preds = %15
  call void @usage(i32 125) #31, !dbg !916
  unreachable, !dbg !916

64:                                               ; preds = %15
  %65 = load i32, i32* @optind, align 4, !dbg !917, !tbaa !830
  %66 = sext i32 %65 to i64, !dbg !918
  %67 = getelementptr inbounds i8*, i8** %1, i64 %66, !dbg !918
  call void @llvm.dbg.value(metadata i8** %67, metadata !812, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 undef, metadata !811, metadata !DIExpression()), !dbg !817
  %68 = icmp slt i32 %65, %0, !dbg !919
  br i1 %68, label %71, label %69, !dbg !921

69:                                               ; preds = %64
  %70 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 5) #28, !dbg !922
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %70) #28, !dbg !924
  call void @usage(i32 125) #31, !dbg !925
  unreachable, !dbg !925

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i8 0, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.dbg.value(metadata i64 0, metadata !931, metadata !DIExpression()) #28, !dbg !957
  %72 = bitcast i8** %3 to i8*
  call void @llvm.dbg.value(metadata i8 0, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.dbg.value(metadata i64 0, metadata !931, metadata !DIExpression()) #28, !dbg !957
  %73 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 2), align 16, !dbg !958, !tbaa !870
  %74 = icmp eq i8* %73, null, !dbg !959
  br i1 %74, label %117, label %75, !dbg !960

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #28, !dbg !961
  %76 = load i8, i8* %73, align 1, !dbg !962, !tbaa !856
  %77 = icmp eq i8 %76, 76, !dbg !963
  %78 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 1), align 8, !dbg !964, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %78, metadata !965, metadata !DIExpression()) #28, !dbg !968
  call void @llvm.dbg.value(metadata i32 %78, metadata !965, metadata !DIExpression()) #28, !dbg !970
  %79 = add i32 %78, 128, !dbg !964
  %80 = icmp ult i32 %79, 384, !dbg !964
  br i1 %77, label %81, label %91, !dbg !972

81:                                               ; preds = %75
  br i1 %80, label %82, label %88, !dbg !973

82:                                               ; preds = %81
  %83 = tail call i32** @__ctype_toupper_loc() #32, !dbg !974
  %84 = load i32*, i32** %83, align 8, !dbg !975, !tbaa !672
  %85 = sext i32 %78 to i64, !dbg !976
  %86 = getelementptr inbounds i32, i32* %84, i64 %85, !dbg !976
  %87 = load i32, i32* %86, align 4, !dbg !976, !tbaa !830
  br label %88, !dbg !977

88:                                               ; preds = %82, %81
  %89 = phi i32 [ %87, %82 ], [ %78, %81 ], !dbg !978
  call void @llvm.dbg.value(metadata i32 %89, metadata !939, metadata !DIExpression()) #28, !dbg !979
  call void @llvm.dbg.value(metadata i8** %3, metadata !933, metadata !DIExpression(DW_OP_deref)) #28, !dbg !980
  %90 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %89) #28, !dbg !981
  call void @llvm.dbg.value(metadata i32 %90, metadata !938, metadata !DIExpression()) #28, !dbg !980
  br label %102, !dbg !982

91:                                               ; preds = %75
  br i1 %80, label %92, label %98, !dbg !983

92:                                               ; preds = %91
  %93 = tail call i32** @__ctype_toupper_loc() #32, !dbg !984
  %94 = load i32*, i32** %93, align 8, !dbg !985, !tbaa !672
  %95 = sext i32 %78 to i64, !dbg !986
  %96 = getelementptr inbounds i32, i32* %94, i64 %95, !dbg !986
  %97 = load i32, i32* %96, align 4, !dbg !986, !tbaa !830
  br label %98, !dbg !987

98:                                               ; preds = %92, %91
  %99 = phi i32 [ %97, %92 ], [ %78, %91 ], !dbg !988
  call void @llvm.dbg.value(metadata i32 %99, metadata !947, metadata !DIExpression()) #28, !dbg !989
  %100 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 0), align 16, !dbg !990, !tbaa !991
  call void @llvm.dbg.value(metadata i8** %3, metadata !933, metadata !DIExpression(DW_OP_deref)) #28, !dbg !980
  %101 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %99, i64 %100) #28, !dbg !990
  call void @llvm.dbg.value(metadata i32 %101, metadata !938, metadata !DIExpression()) #28, !dbg !980
  br label %102

102:                                              ; preds = %98, %88
  %103 = phi i32 [ %90, %88 ], [ %101, %98 ], !dbg !964
  call void @llvm.dbg.value(metadata i32 %103, metadata !938, metadata !DIExpression()) #28, !dbg !980
  %104 = icmp slt i32 %103, 0, !dbg !992
  br i1 %104, label %105, label %106, !dbg !994

105:                                              ; preds = %293, %254, %102
  call void @xalloc_die() #30, !dbg !995
  unreachable, !dbg !995

106:                                              ; preds = %102
  %107 = load i8*, i8** %3, align 8, !dbg !996, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %107, metadata !933, metadata !DIExpression()) #28, !dbg !980
  %108 = call i32 @putenv(i8* %107) #28, !dbg !998
  %109 = icmp eq i32 %108, 0, !dbg !999
  br i1 %109, label %116, label %110, !dbg !1000

110:                                              ; preds = %296, %257, %106
  %111 = tail call i32* @__errno_location() #32, !dbg !1001
  %112 = load i32, i32* %111, align 4, !dbg !1001, !tbaa !830
  %113 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #28, !dbg !1001
  %114 = load i8*, i8** %3, align 8, !dbg !1001, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %114, metadata !933, metadata !DIExpression()) #28, !dbg !980
  %115 = call i8* @quote(i8* %114) #28, !dbg !1001
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %112, i8* %113, i8* %115) #28, !dbg !1001
  unreachable, !dbg !1001

116:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i8 1, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #28, !dbg !1003
  br label %117, !dbg !1004

117:                                              ; preds = %116, %71
  %118 = phi i8 [ 1, %116 ], [ 0, %71 ], !dbg !954
  call void @llvm.dbg.value(metadata i8 %118, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.dbg.value(metadata i64 1, metadata !931, metadata !DIExpression()) #28, !dbg !957
  call void @llvm.dbg.value(metadata i8 %118, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.dbg.value(metadata i64 1, metadata !931, metadata !DIExpression()) #28, !dbg !957
  %119 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 2), align 8, !dbg !958, !tbaa !870
  %120 = icmp eq i8* %119, null, !dbg !959
  br i1 %120, label %262, label %227, !dbg !960

121:                                              ; preds = %301
  %122 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i32 5) #28, !dbg !1005
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %122) #28, !dbg !1007
  call void @usage(i32 125) #31, !dbg !1008
  unreachable, !dbg !1008

123:                                              ; preds = %301
  %124 = load i8*, i8** @program_name, align 8, !dbg !1009, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %124, metadata !1010, metadata !DIExpression()) #28, !dbg !1024
  %125 = call i8* @strchr(i8* nonnull dereferenceable(1) %124, i32 47) #29, !dbg !1026
  %126 = icmp eq i8* %125, null, !dbg !1026
  br i1 %126, label %129, label %127, !dbg !1027

127:                                              ; preds = %123
  %128 = call i8* @dir_name(i8* %124) #28, !dbg !1028
  store i8* %128, i8** @program_path, align 8, !dbg !1030, !tbaa !672
  br label %154, !dbg !1031

129:                                              ; preds = %123
  %130 = call i8* @xreadlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0)) #28, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %130, metadata !1013, metadata !DIExpression()) #28, !dbg !1033
  %131 = icmp eq i8* %130, null, !dbg !1034
  br i1 %131, label %134, label %132, !dbg !1035

132:                                              ; preds = %129
  %133 = call i8* @dir_name(i8* nonnull %130) #28, !dbg !1036
  store i8* %133, i8** @program_path, align 8, !dbg !1037, !tbaa !672
  br label %151, !dbg !1038

134:                                              ; preds = %129
  %135 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #28, !dbg !1039
  call void @llvm.dbg.value(metadata i8* %135, metadata !1013, metadata !DIExpression()) #28, !dbg !1033
  %136 = icmp eq i8* %135, null, !dbg !1040
  br i1 %136, label %151, label %137, !dbg !1041

137:                                              ; preds = %134
  %138 = call noalias i8* @xstrdup(i8* nonnull %135) #28, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %138, metadata !1013, metadata !DIExpression()) #28, !dbg !1033
  %139 = call i8* @strtok(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #28, !dbg !1043
  call void @llvm.dbg.value(metadata i8* %139, metadata !1016, metadata !DIExpression()) #28, !dbg !1044
  %140 = icmp eq i8* %139, null, !dbg !1045
  br i1 %140, label %151, label %141, !dbg !1046

141:                                              ; preds = %137, %148
  %142 = phi i8* [ %149, %148 ], [ %139, %137 ]
  call void @llvm.dbg.value(metadata i8* %142, metadata !1016, metadata !DIExpression()) #28, !dbg !1044
  %143 = call i8* @file_name_concat(i8* nonnull %142, i8* %124, i8** null) #28, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %143, metadata !1020, metadata !DIExpression()) #28, !dbg !1048
  %144 = call i32 @access(i8* %143, i32 1) #28, !dbg !1049
  %145 = icmp eq i32 %144, 0, !dbg !1051
  br i1 %145, label %146, label %148, !dbg !1052

146:                                              ; preds = %141
  %147 = call i8* @dir_name(i8* %143) #28, !dbg !1053
  store i8* %147, i8** @program_path, align 8, !dbg !1055, !tbaa !672
  call void @free(i8* %143) #28, !dbg !1056
  br label %151

148:                                              ; preds = %141
  call void @free(i8* %143) #28, !dbg !1057
  %149 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #28, !dbg !1058
  call void @llvm.dbg.value(metadata i8* %149, metadata !1016, metadata !DIExpression()) #28, !dbg !1044
  %150 = icmp eq i8* %149, null, !dbg !1045
  br i1 %150, label %151, label %141, !dbg !1046, !llvm.loop !1059

151:                                              ; preds = %148, %146, %137, %134, %132
  %152 = phi i8* [ %130, %132 ], [ null, %134 ], [ %138, %146 ], [ %138, %137 ], [ %138, %148 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8* %152, metadata !1013, metadata !DIExpression()) #28, !dbg !1033
  call void @free(i8* %152) #28, !dbg !1061
  %153 = load i8*, i8** @program_path, align 8, !dbg !1062, !tbaa !672
  br label %154

154:                                              ; preds = %127, %151
  %155 = phi i8* [ %128, %127 ], [ %153, %151 ], !dbg !1062
  %156 = icmp eq i8* %155, null, !dbg !1062
  br i1 %156, label %157, label %159, !dbg !1064

157:                                              ; preds = %154
  %158 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #28, !dbg !1065
  store i8* %158, i8** @program_path, align 8, !dbg !1066, !tbaa !672
  br label %159, !dbg !1067

159:                                              ; preds = %157, %154
  %160 = phi i8* [ %158, %157 ], [ %155, %154 ], !dbg !1068
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), metadata !1072, metadata !DIExpression()) #28, !dbg !1117
  %161 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)) #28, !dbg !1118
  call void @llvm.dbg.value(metadata i8* %161, metadata !1073, metadata !DIExpression()) #28, !dbg !1117
  %162 = bitcast i8** %5 to i8*, !dbg !1119
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %162) #28, !dbg !1119
  %163 = bitcast [3 x i8*]* %6 to i8*, !dbg !1120
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %163) #28, !dbg !1120
  call void @llvm.dbg.declare(metadata [3 x i8*]* %6, metadata !1075, metadata !DIExpression()) #28, !dbg !1121
  %164 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0, !dbg !1122
  store i8* %160, i8** %164, align 16, !dbg !1122, !tbaa !672
  %165 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1, !dbg !1122
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i8** %165, align 8, !dbg !1122, !tbaa !672
  %166 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 2, !dbg !1122
  store i8* null, i8** %166, align 16, !dbg !1122, !tbaa !672
  call void @llvm.dbg.value(metadata i8** %164, metadata !1077, metadata !DIExpression()) #28, !dbg !1117
  %167 = bitcast i8** %7 to i8*, !dbg !1123
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %167) #28, !dbg !1123
  %168 = bitcast %struct.stat* %8 to i8*, !dbg !1124
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %168) #28, !dbg !1124
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1080, metadata !DIExpression()) #28, !dbg !1125
  %169 = load i8, i8* %160, align 1, !dbg !1126, !tbaa !856
  %170 = icmp eq i8 %169, 0, !dbg !1126
  br i1 %170, label %171, label %173, !dbg !1128

171:                                              ; preds = %191, %159
  %172 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #28, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %172, metadata !1079, metadata !DIExpression()) #28, !dbg !1117
  store i8* %172, i8** %7, align 8, !dbg !1131, !tbaa !672
  br label %194, !dbg !1132

173:                                              ; preds = %159, %191
  %174 = phi i8* [ %186, %191 ], [ %160, %159 ]
  %175 = phi i8** [ %185, %191 ], [ %164, %159 ]
  call void @llvm.dbg.value(metadata i8** %175, metadata !1077, metadata !DIExpression()) #28, !dbg !1117
  call void @llvm.dbg.value(metadata i8** %7, metadata !1079, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1117
  %176 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %7, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #28, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %176, metadata !1071, metadata !DIExpression()) #28, !dbg !1117
  %177 = icmp slt i32 %176, 0, !dbg !1134
  br i1 %177, label %178, label %179, !dbg !1136

178:                                              ; preds = %173
  call void @xalloc_die() #30, !dbg !1137
  unreachable, !dbg !1137

179:                                              ; preds = %173
  %180 = load i8*, i8** %7, align 8, !dbg !1138, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %180, metadata !1079, metadata !DIExpression()) #28, !dbg !1117
  %181 = call i32 @stat(i8* %180, %struct.stat* nonnull %8) #28, !dbg !1140
  %182 = icmp eq i32 %181, 0, !dbg !1141
  br i1 %182, label %194, label %183, !dbg !1142

183:                                              ; preds = %179
  %184 = load i8*, i8** %7, align 8, !dbg !1143, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %184, metadata !1079, metadata !DIExpression()) #28, !dbg !1117
  call void @free(i8* %184) #28, !dbg !1144
  %185 = getelementptr inbounds i8*, i8** %175, i64 1, !dbg !1145
  call void @llvm.dbg.value(metadata i8** %185, metadata !1077, metadata !DIExpression()) #28, !dbg !1117
  %186 = load i8*, i8** %185, align 8, !dbg !1146, !tbaa !672
  %187 = icmp eq i8* %186, null, !dbg !1146
  br i1 %187, label %188, label %191, !dbg !1148

188:                                              ; preds = %183
  %189 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i32 5) #28, !dbg !1149
  %190 = call i8* @quote(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #28, !dbg !1149
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %189, i8* %190) #28, !dbg !1149
  unreachable, !dbg !1149

191:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i8** %185, metadata !1077, metadata !DIExpression()) #28, !dbg !1117
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %168) #28, !dbg !1150
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %168) #28, !dbg !1124
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1080, metadata !DIExpression()) #28, !dbg !1125
  %192 = load i8, i8* %186, align 1, !dbg !1126, !tbaa !856
  %193 = icmp eq i8 %192, 0, !dbg !1126
  br i1 %193, label %171, label %173, !dbg !1128

194:                                              ; preds = %179, %171
  call void @llvm.dbg.value(metadata i8** %185, metadata !1077, metadata !DIExpression()) #28, !dbg !1117
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %168) #28, !dbg !1150
  %195 = icmp eq i8* %161, null, !dbg !1151
  %196 = load i8*, i8** %7, align 8, !dbg !1153, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %196, metadata !1079, metadata !DIExpression()) #28, !dbg !1117
  call void @llvm.dbg.value(metadata i8* %196, metadata !1079, metadata !DIExpression()) #28, !dbg !1117
  call void @llvm.dbg.value(metadata i8** %5, metadata !1074, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1117
  call void @llvm.dbg.value(metadata i8** %5, metadata !1074, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1117
  br i1 %195, label %199, label %197, !dbg !1154

197:                                              ; preds = %194
  %198 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %161, i8* %196) #28, !dbg !1155
  call void @llvm.dbg.value(metadata i32 %198, metadata !1071, metadata !DIExpression()) #28, !dbg !1117
  br label %201, !dbg !1156

199:                                              ; preds = %194
  %200 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* %196) #28, !dbg !1157
  call void @llvm.dbg.value(metadata i32 %200, metadata !1071, metadata !DIExpression()) #28, !dbg !1117
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ], !dbg !1153
  call void @llvm.dbg.value(metadata i32 %202, metadata !1071, metadata !DIExpression()) #28, !dbg !1117
  %203 = icmp slt i32 %202, 0, !dbg !1158
  br i1 %203, label %204, label %205, !dbg !1160

204:                                              ; preds = %201
  call void @xalloc_die() #30, !dbg !1161
  unreachable, !dbg !1161

205:                                              ; preds = %201
  %206 = load i8*, i8** %7, align 8, !dbg !1162, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %206, metadata !1079, metadata !DIExpression()) #28, !dbg !1117
  call void @free(i8* %206) #28, !dbg !1163
  %207 = load i8*, i8** %5, align 8, !dbg !1164, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %207, metadata !1074, metadata !DIExpression()) #28, !dbg !1117
  %208 = call i32 @putenv(i8* %207) #28, !dbg !1165
  call void @llvm.dbg.value(metadata i32 %208, metadata !1071, metadata !DIExpression()) #28, !dbg !1117
  %209 = icmp eq i32 %208, 0, !dbg !1166
  br i1 %209, label %216, label %210, !dbg !1168

210:                                              ; preds = %205
  %211 = tail call i32* @__errno_location() #32, !dbg !1169
  %212 = load i32, i32* %211, align 4, !dbg !1169, !tbaa !830
  %213 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #28, !dbg !1169
  %214 = load i8*, i8** %5, align 8, !dbg !1169, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %214, metadata !1074, metadata !DIExpression()) #28, !dbg !1117
  %215 = call i8* @quote(i8* %214) #28, !dbg !1169
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %212, i8* %213, i8* %215) #28, !dbg !1169
  unreachable, !dbg !1169

216:                                              ; preds = %205
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %167) #28, !dbg !1171
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %163) #28, !dbg !1171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %162) #28, !dbg !1171
  %217 = load i8*, i8** @program_path, align 8, !dbg !1172, !tbaa !672
  call void @free(i8* %217) #28, !dbg !1173
  %218 = load i8*, i8** %67, align 8, !dbg !1174, !tbaa !672
  %219 = call i32 @execvp(i8* %218, i8** nonnull %67) #28, !dbg !1175
  %220 = tail call i32* @__errno_location() #32, !dbg !1176
  %221 = load i32, i32* %220, align 4, !dbg !1176, !tbaa !830
  %222 = icmp eq i32 %221, 2, !dbg !1177
  %223 = select i1 %222, i32 127, i32 126, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %223, metadata !816, metadata !DIExpression()), !dbg !817
  %224 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 5) #28, !dbg !1178
  %225 = load i8*, i8** %67, align 8, !dbg !1179, !tbaa !672
  %226 = call i8* @quote(i8* %225) #28, !dbg !1180
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %221, i8* %224, i8* %226) #28, !dbg !1181
  ret i32 %223, !dbg !1182

227:                                              ; preds = %117
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #28, !dbg !961
  %228 = load i8, i8* %119, align 1, !dbg !962, !tbaa !856
  %229 = icmp eq i8 %228, 76, !dbg !963
  %230 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 1), align 16, !dbg !964, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %230, metadata !965, metadata !DIExpression()) #28, !dbg !968
  call void @llvm.dbg.value(metadata i32 %230, metadata !965, metadata !DIExpression()) #28, !dbg !970
  %231 = add i32 %230, 128, !dbg !964
  %232 = icmp ult i32 %231, 384, !dbg !964
  br i1 %229, label %244, label %233, !dbg !972

233:                                              ; preds = %227
  br i1 %232, label %234, label %240, !dbg !983

234:                                              ; preds = %233
  %235 = tail call i32** @__ctype_toupper_loc() #32, !dbg !984
  %236 = load i32*, i32** %235, align 8, !dbg !985, !tbaa !672
  %237 = sext i32 %230 to i64, !dbg !986
  %238 = getelementptr inbounds i32, i32* %236, i64 %237, !dbg !986
  %239 = load i32, i32* %238, align 4, !dbg !986, !tbaa !830
  br label %240, !dbg !987

240:                                              ; preds = %234, %233
  %241 = phi i32 [ %239, %234 ], [ %230, %233 ], !dbg !988
  call void @llvm.dbg.value(metadata i32 %241, metadata !947, metadata !DIExpression()) #28, !dbg !989
  %242 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 0), align 8, !dbg !990, !tbaa !991
  call void @llvm.dbg.value(metadata i8** %3, metadata !933, metadata !DIExpression(DW_OP_deref)) #28, !dbg !980
  %243 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %241, i64 %242) #28, !dbg !990
  call void @llvm.dbg.value(metadata i32 %243, metadata !938, metadata !DIExpression()) #28, !dbg !980
  br label %254

244:                                              ; preds = %227
  br i1 %232, label %245, label %251, !dbg !973

245:                                              ; preds = %244
  %246 = tail call i32** @__ctype_toupper_loc() #32, !dbg !974
  %247 = load i32*, i32** %246, align 8, !dbg !975, !tbaa !672
  %248 = sext i32 %230 to i64, !dbg !976
  %249 = getelementptr inbounds i32, i32* %247, i64 %248, !dbg !976
  %250 = load i32, i32* %249, align 4, !dbg !976, !tbaa !830
  br label %251, !dbg !977

251:                                              ; preds = %245, %244
  %252 = phi i32 [ %250, %245 ], [ %230, %244 ], !dbg !978
  call void @llvm.dbg.value(metadata i32 %252, metadata !939, metadata !DIExpression()) #28, !dbg !979
  call void @llvm.dbg.value(metadata i8** %3, metadata !933, metadata !DIExpression(DW_OP_deref)) #28, !dbg !980
  %253 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %252) #28, !dbg !981
  call void @llvm.dbg.value(metadata i32 %253, metadata !938, metadata !DIExpression()) #28, !dbg !980
  br label %254, !dbg !982

254:                                              ; preds = %251, %240
  %255 = phi i32 [ %253, %251 ], [ %243, %240 ], !dbg !964
  call void @llvm.dbg.value(metadata i32 %255, metadata !938, metadata !DIExpression()) #28, !dbg !980
  %256 = icmp slt i32 %255, 0, !dbg !992
  br i1 %256, label %105, label %257, !dbg !994

257:                                              ; preds = %254
  %258 = load i8*, i8** %3, align 8, !dbg !996, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %258, metadata !933, metadata !DIExpression()) #28, !dbg !980
  %259 = call i32 @putenv(i8* %258) #28, !dbg !998
  %260 = icmp eq i32 %259, 0, !dbg !999
  br i1 %260, label %261, label %110, !dbg !1000

261:                                              ; preds = %257
  call void @llvm.dbg.value(metadata i8 1, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #28, !dbg !1003
  br label %262, !dbg !1004

262:                                              ; preds = %261, %117
  %263 = phi i8 [ 1, %261 ], [ %118, %117 ], !dbg !954
  call void @llvm.dbg.value(metadata i8 %263, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.dbg.value(metadata i64 2, metadata !931, metadata !DIExpression()) #28, !dbg !957
  call void @llvm.dbg.value(metadata i8 %263, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.dbg.value(metadata i64 2, metadata !931, metadata !DIExpression()) #28, !dbg !957
  %264 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 2), align 16, !dbg !958, !tbaa !870
  %265 = icmp eq i8* %264, null, !dbg !959
  br i1 %265, label %301, label %266, !dbg !960

266:                                              ; preds = %262
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #28, !dbg !961
  %267 = load i8, i8* %264, align 1, !dbg !962, !tbaa !856
  %268 = icmp eq i8 %267, 76, !dbg !963
  %269 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 1), align 8, !dbg !964, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %269, metadata !965, metadata !DIExpression()) #28, !dbg !968
  call void @llvm.dbg.value(metadata i32 %269, metadata !965, metadata !DIExpression()) #28, !dbg !970
  %270 = add i32 %269, 128, !dbg !964
  %271 = icmp ult i32 %270, 384, !dbg !964
  br i1 %268, label %283, label %272, !dbg !972

272:                                              ; preds = %266
  br i1 %271, label %273, label %279, !dbg !983

273:                                              ; preds = %272
  %274 = tail call i32** @__ctype_toupper_loc() #32, !dbg !984
  %275 = load i32*, i32** %274, align 8, !dbg !985, !tbaa !672
  %276 = sext i32 %269 to i64, !dbg !986
  %277 = getelementptr inbounds i32, i32* %275, i64 %276, !dbg !986
  %278 = load i32, i32* %277, align 4, !dbg !986, !tbaa !830
  br label %279, !dbg !987

279:                                              ; preds = %273, %272
  %280 = phi i32 [ %278, %273 ], [ %269, %272 ], !dbg !988
  call void @llvm.dbg.value(metadata i32 %280, metadata !947, metadata !DIExpression()) #28, !dbg !989
  %281 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 0), align 16, !dbg !990, !tbaa !991
  call void @llvm.dbg.value(metadata i8** %3, metadata !933, metadata !DIExpression(DW_OP_deref)) #28, !dbg !980
  %282 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %280, i64 %281) #28, !dbg !990
  call void @llvm.dbg.value(metadata i32 %282, metadata !938, metadata !DIExpression()) #28, !dbg !980
  br label %293

283:                                              ; preds = %266
  br i1 %271, label %284, label %290, !dbg !973

284:                                              ; preds = %283
  %285 = tail call i32** @__ctype_toupper_loc() #32, !dbg !974
  %286 = load i32*, i32** %285, align 8, !dbg !975, !tbaa !672
  %287 = sext i32 %269 to i64, !dbg !976
  %288 = getelementptr inbounds i32, i32* %286, i64 %287, !dbg !976
  %289 = load i32, i32* %288, align 4, !dbg !976, !tbaa !830
  br label %290, !dbg !977

290:                                              ; preds = %284, %283
  %291 = phi i32 [ %289, %284 ], [ %269, %283 ], !dbg !978
  call void @llvm.dbg.value(metadata i32 %291, metadata !939, metadata !DIExpression()) #28, !dbg !979
  call void @llvm.dbg.value(metadata i8** %3, metadata !933, metadata !DIExpression(DW_OP_deref)) #28, !dbg !980
  %292 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %291) #28, !dbg !981
  call void @llvm.dbg.value(metadata i32 %292, metadata !938, metadata !DIExpression()) #28, !dbg !980
  br label %293, !dbg !982

293:                                              ; preds = %290, %279
  %294 = phi i32 [ %292, %290 ], [ %282, %279 ], !dbg !964
  call void @llvm.dbg.value(metadata i32 %294, metadata !938, metadata !DIExpression()) #28, !dbg !980
  %295 = icmp slt i32 %294, 0, !dbg !992
  br i1 %295, label %105, label %296, !dbg !994

296:                                              ; preds = %293
  %297 = load i8*, i8** %3, align 8, !dbg !996, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %297, metadata !933, metadata !DIExpression()) #28, !dbg !980
  %298 = call i32 @putenv(i8* %297) #28, !dbg !998
  %299 = icmp eq i32 %298, 0, !dbg !999
  br i1 %299, label %300, label %110, !dbg !1000

300:                                              ; preds = %296
  call void @llvm.dbg.value(metadata i8 1, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #28, !dbg !1003
  br label %301, !dbg !1004

301:                                              ; preds = %300, %262
  %302 = phi i8 [ 1, %300 ], [ %263, %262 ], !dbg !954
  call void @llvm.dbg.value(metadata i8 %302, metadata !926, metadata !DIExpression()) #28, !dbg !954
  call void @llvm.dbg.value(metadata i64 3, metadata !931, metadata !DIExpression()) #28, !dbg !957
  %303 = and i8 %302, 1, !dbg !1183
  %304 = icmp eq i8 %303, 0, !dbg !1183
  br i1 %304, label %121, label %123, !dbg !1184
}

; Function Attrs: nounwind
declare !dbg !1185 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1188 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1191 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1196 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1202 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readnone willreturn
declare i32** @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1206 i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare !dbg !1209 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind willreturn
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !1210 noundef i32 @access(i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) #12

; Function Attrs: nofree nounwind
declare !dbg !1214 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1219 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !1222 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1224, metadata !DIExpression()), !dbg !1225
  store i8* %0, i8** @file_name, align 8, !dbg !1226, !tbaa !672
  ret void, !dbg !1227
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !1228 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1232, metadata !DIExpression()), !dbg !1233
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1234, !tbaa !1235
  ret void, !dbg !1237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1238 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1243, !tbaa !672
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #28, !dbg !1244
  %3 = icmp eq i32 %2, 0, !dbg !1245
  br i1 %3, label %22, label %4, !dbg !1246

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1247, !tbaa !1235, !range !1248
  %6 = icmp eq i8 %5, 0, !dbg !1247
  br i1 %6, label %11, label %7, !dbg !1249

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #32, !dbg !1250
  %9 = load i32, i32* %8, align 4, !dbg !1250, !tbaa !830
  %10 = icmp eq i32 %9, 32, !dbg !1251
  br i1 %10, label %22, label %11, !dbg !1252

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 5) #28, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %12, metadata !1240, metadata !DIExpression()), !dbg !1254
  %13 = load i8*, i8** @file_name, align 8, !dbg !1255, !tbaa !672
  %14 = icmp eq i8* %13, null, !dbg !1255
  %15 = tail call i32* @__errno_location() #32, !dbg !1257
  %16 = load i32, i32* %15, align 4, !dbg !1257, !tbaa !830
  br i1 %14, label %19, label %17, !dbg !1258

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #28, !dbg !1259
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.63, i64 0, i64 0), i8* %18, i8* %12) #28, !dbg !1260
  br label %20, !dbg !1260

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.64, i64 0, i64 0), i8* %12) #28, !dbg !1261
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1262, !tbaa !830
  tail call void @_exit(i32 %21) #30, !dbg !1263
  unreachable, !dbg !1263

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1264, !tbaa !672
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #28, !dbg !1266
  %25 = icmp eq i32 %24, 0, !dbg !1267
  br i1 %25, label %28, label %26, !dbg !1268

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1269, !tbaa !830
  tail call void @_exit(i32 %27) #30, !dbg !1270
  unreachable, !dbg !1270

28:                                               ; preds = %22
  ret void, !dbg !1271
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @dir_name(i8* %0) local_unnamed_addr #8 !dbg !1272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1274, metadata !DIExpression()), !dbg !1276
  %2 = tail call i8* @mdir_name(i8* %0) #28, !dbg !1277
  call void @llvm.dbg.value(metadata i8* %2, metadata !1275, metadata !DIExpression()), !dbg !1276
  %3 = icmp eq i8* %2, null, !dbg !1278
  br i1 %3, label %4, label %5, !dbg !1280

4:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !1281
  unreachable, !dbg !1281

5:                                                ; preds = %1
  ret i8* %2, !dbg !1282
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @dir_len(i8* %0) local_unnamed_addr #15 !dbg !1283 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1287, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64 0, metadata !1288, metadata !DIExpression()), !dbg !1290
  %2 = load i8, i8* %0, align 1, !dbg !1291, !tbaa !856
  %3 = icmp eq i8 %2, 47, !dbg !1291
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !1288, metadata !DIExpression()), !dbg !1290
  %5 = tail call i8* @last_component(i8* nonnull %0) #29, !dbg !1292
  %6 = ptrtoint i8* %5 to i64, !dbg !1294
  %7 = ptrtoint i8* %0 to i64, !dbg !1294
  %8 = sub i64 %6, %7, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %8, metadata !1289, metadata !DIExpression()), !dbg !1290
  %9 = icmp ult i64 %8, %4, !dbg !1295
  %10 = select i1 %9, i64 %8, i64 %4, !dbg !1295
  br label %11, !dbg !1295

11:                                               ; preds = %14, %1
  %12 = phi i64 [ %8, %1 ], [ %15, %14 ], !dbg !1296
  call void @llvm.dbg.value(metadata i64 %12, metadata !1289, metadata !DIExpression()), !dbg !1290
  %13 = icmp ugt i64 %12, %4, !dbg !1297
  br i1 %13, label %14, label %19, !dbg !1299

14:                                               ; preds = %11
  %15 = add i64 %12, -1, !dbg !1300
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !1300
  %17 = load i8, i8* %16, align 1, !dbg !1300, !tbaa !856
  %18 = icmp eq i8 %17, 47, !dbg !1300
  br i1 %18, label %11, label %19, !dbg !1302, !llvm.loop !1303

19:                                               ; preds = %14, %11
  %20 = phi i64 [ %12, %14 ], [ %10, %11 ], !dbg !1296
  ret i64 %20, !dbg !1305
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @mdir_name(i8* %0) local_unnamed_addr #16 !dbg !1306 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8* %0, metadata !1287, metadata !DIExpression()) #28, !dbg !1313
  call void @llvm.dbg.value(metadata i64 0, metadata !1288, metadata !DIExpression()) #28, !dbg !1313
  %2 = load i8, i8* %0, align 1, !dbg !1315, !tbaa !856
  %3 = icmp eq i8 %2, 47, !dbg !1315
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !1288, metadata !DIExpression()) #28, !dbg !1313
  %5 = tail call i8* @last_component(i8* nonnull %0) #29, !dbg !1316
  %6 = ptrtoint i8* %5 to i64, !dbg !1317
  %7 = ptrtoint i8* %0 to i64, !dbg !1317
  %8 = sub i64 %6, %7, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %8, metadata !1289, metadata !DIExpression()) #28, !dbg !1313
  %9 = icmp ult i64 %8, %4, !dbg !1318
  %10 = select i1 %9, i64 %8, i64 %4, !dbg !1318
  br label %11, !dbg !1318

11:                                               ; preds = %14, %1
  %12 = phi i64 [ %8, %1 ], [ %15, %14 ], !dbg !1319
  call void @llvm.dbg.value(metadata i64 %12, metadata !1289, metadata !DIExpression()) #28, !dbg !1313
  %13 = icmp ugt i64 %12, %4, !dbg !1320
  br i1 %13, label %14, label %19, !dbg !1321

14:                                               ; preds = %11
  %15 = add i64 %12, -1, !dbg !1322
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !1322
  %17 = load i8, i8* %16, align 1, !dbg !1322, !tbaa !856
  %18 = icmp eq i8 %17, 47, !dbg !1322
  br i1 %18, label %11, label %19, !dbg !1323, !llvm.loop !1324

19:                                               ; preds = %11, %14
  %20 = phi i64 [ %12, %14 ], [ %10, %11 ], !dbg !1319
  call void @llvm.dbg.value(metadata i64 %20, metadata !1309, metadata !DIExpression()), !dbg !1312
  %21 = icmp eq i64 %20, 0, !dbg !1326
  call void @llvm.dbg.value(metadata i1 %21, metadata !1310, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1312
  %22 = zext i1 %21 to i64, !dbg !1327
  %23 = add i64 %20, 1, !dbg !1328
  %24 = add i64 %23, %22, !dbg !1329
  %25 = tail call noalias i8* @malloc(i64 %24) #28, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %25, metadata !1311, metadata !DIExpression()), !dbg !1312
  %26 = icmp eq i8* %25, null, !dbg !1331
  br i1 %26, label %32, label %27, !dbg !1333

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %25, metadata !1334, metadata !DIExpression()) #28, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %0, metadata !1344, metadata !DIExpression()) #28, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %20, metadata !1345, metadata !DIExpression()) #28, !dbg !1346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %25, i8* nonnull align 1 %0, i64 %20, i1 false) #28, !dbg !1348
  br i1 %21, label %28, label %29, !dbg !1349

28:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 1, metadata !1309, metadata !DIExpression()), !dbg !1312
  store i8 46, i8* %25, align 1, !dbg !1350, !tbaa !856
  br label %29, !dbg !1352

29:                                               ; preds = %28, %27
  %30 = phi i64 [ 1, %28 ], [ %20, %27 ], !dbg !1312
  call void @llvm.dbg.value(metadata i64 %30, metadata !1309, metadata !DIExpression()), !dbg !1312
  %31 = getelementptr inbounds i8, i8* %25, i64 %30, !dbg !1353
  store i8 0, i8* %31, align 1, !dbg !1354, !tbaa !856
  br label %32, !dbg !1355

32:                                               ; preds = %19, %29
  ret i8* %25, !dbg !1356
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) #17

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #18 !dbg !1357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1359, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %0, metadata !1360, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8 0, metadata !1362, metadata !DIExpression()), !dbg !1363
  br label %2, !dbg !1364

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1363
  call void @llvm.dbg.value(metadata i8* %3, metadata !1360, metadata !DIExpression()), !dbg !1363
  %4 = load i8, i8* %3, align 1, !dbg !1365, !tbaa !856
  %5 = icmp eq i8 %4, 47, !dbg !1365
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1366
  call void @llvm.dbg.value(metadata i8* %6, metadata !1360, metadata !DIExpression()), !dbg !1363
  br i1 %5, label %2, label %7, !dbg !1364, !llvm.loop !1367

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1368
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1371
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1372
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1363
  call void @llvm.dbg.value(metadata i8 %11, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %10, metadata !1361, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %9, metadata !1360, metadata !DIExpression()), !dbg !1363
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1373

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !1374
  %14 = icmp eq i8 %13, 0, !dbg !1374
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1378
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1378
  br label %17, !dbg !1378

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1363
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1363
  call void @llvm.dbg.value(metadata i8 %19, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %18, metadata !1360, metadata !DIExpression()), !dbg !1363
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1379
  call void @llvm.dbg.value(metadata i8* %20, metadata !1361, metadata !DIExpression()), !dbg !1363
  %21 = load i8, i8* %20, align 1, !dbg !1368, !tbaa !856
  br label %7, !dbg !1380, !llvm.loop !1381

22:                                               ; preds = %7
  ret i8* %9, !dbg !1383
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #15 !dbg !1384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1386, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 0, metadata !1388, metadata !DIExpression()), !dbg !1389
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %2, metadata !1387, metadata !DIExpression()), !dbg !1389
  %3 = icmp ne i64 %2, 0, !dbg !1392
  %4 = zext i1 %3 to i64, !dbg !1392
  br label %5, !dbg !1392

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1393
  call void @llvm.dbg.value(metadata i64 %6, metadata !1387, metadata !DIExpression()), !dbg !1389
  %7 = icmp ugt i64 %6, 1, !dbg !1394
  br i1 %7, label %8, label %13, !dbg !1396

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1397
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1397
  %11 = load i8, i8* %10, align 1, !dbg !1397, !tbaa !856
  %12 = icmp eq i8 %11, 47, !dbg !1397
  br i1 %12, label %5, label %13, !dbg !1398, !llvm.loop !1399

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1393
  ret i64 %14, !dbg !1401
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @file_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !1402 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1406, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %1, metadata !1407, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8** %2, metadata !1408, metadata !DIExpression()), !dbg !1410
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #28, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %4, metadata !1409, metadata !DIExpression()), !dbg !1410
  %5 = icmp eq i8* %4, null, !dbg !1412
  br i1 %5, label %6, label %7, !dbg !1414

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !1415
  unreachable, !dbg !1415

7:                                                ; preds = %3
  ret i8* %4, !dbg !1416
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #16 !dbg !1417 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1419, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8* %1, metadata !1420, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8** %2, metadata !1421, metadata !DIExpression()), !dbg !1429
  %4 = tail call i8* @last_component(i8* %0) #29, !dbg !1430
  call void @llvm.dbg.value(metadata i8* %4, metadata !1422, metadata !DIExpression()), !dbg !1429
  %5 = tail call i64 @base_len(i8* %4) #29, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %5, metadata !1423, metadata !DIExpression()), !dbg !1429
  %6 = ptrtoint i8* %4 to i64, !dbg !1432
  %7 = ptrtoint i8* %0 to i64, !dbg !1432
  %8 = sub i64 %6, %7, !dbg !1432
  %9 = add i64 %8, %5, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %9, metadata !1424, metadata !DIExpression()), !dbg !1429
  %10 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #29, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %10, metadata !1425, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 0, metadata !1426, metadata !DIExpression()), !dbg !1429
  %11 = icmp eq i64 %5, 0, !dbg !1435
  br i1 %11, label %22, label %12, !dbg !1437

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1438
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1438
  %15 = load i8, i8* %14, align 1, !dbg !1438, !tbaa !856
  %16 = icmp eq i8 %15, 47, !dbg !1438
  br i1 %16, label %26, label %17, !dbg !1441

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1442, !tbaa !856
  %19 = icmp eq i8 %18, 47, !dbg !1442
  %20 = xor i1 %19, true, !dbg !1443
  %21 = select i1 %19, i8 0, i8 47, !dbg !1443
  br label %26, !dbg !1443

22:                                               ; preds = %3
  %23 = load i8, i8* %1, align 1, !dbg !1444, !tbaa !856
  %24 = icmp eq i8 %23, 47, !dbg !1444
  %25 = select i1 %24, i8 46, i8 0, !dbg !1446
  br label %26, !dbg !1446

26:                                               ; preds = %22, %17, %12
  %27 = phi i1 [ false, %12 ], [ %20, %17 ], [ %24, %22 ]
  %28 = phi i8 [ 0, %12 ], [ %21, %17 ], [ %25, %22 ], !dbg !1429
  %29 = zext i1 %27 to i64
  call void @llvm.dbg.value(metadata i8 %28, metadata !1426, metadata !DIExpression()), !dbg !1429
  %30 = add i64 %10, 1, !dbg !1447
  %31 = add i64 %30, %9, !dbg !1448
  %32 = add i64 %31, %29, !dbg !1449
  %33 = tail call noalias i8* @malloc(i64 %32) #28, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %33, metadata !1427, metadata !DIExpression()), !dbg !1429
  %34 = icmp eq i8* %33, null, !dbg !1451
  br i1 %34, label %42, label %35, !dbg !1453

35:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %33, metadata !1454, metadata !DIExpression()) #28, !dbg !1459
  call void @llvm.dbg.value(metadata i8* %0, metadata !1457, metadata !DIExpression()) #28, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %9, metadata !1458, metadata !DIExpression()) #28, !dbg !1459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %33, i8* nonnull align 1 %0, i64 %9, i1 false) #28, !dbg !1461
  %36 = getelementptr inbounds i8, i8* %33, i64 %9, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %36, metadata !1428, metadata !DIExpression()), !dbg !1429
  store i8 %28, i8* %36, align 1, !dbg !1462, !tbaa !856
  %37 = getelementptr inbounds i8, i8* %36, i64 %29, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %37, metadata !1428, metadata !DIExpression()), !dbg !1429
  %38 = icmp eq i8** %2, null, !dbg !1464
  br i1 %38, label %40, label %39, !dbg !1466

39:                                               ; preds = %35
  store i8* %37, i8** %2, align 8, !dbg !1467, !tbaa !672
  br label %40, !dbg !1468

40:                                               ; preds = %39, %35
  call void @llvm.dbg.value(metadata i8* %37, metadata !1454, metadata !DIExpression()) #28, !dbg !1469
  call void @llvm.dbg.value(metadata i8* %1, metadata !1457, metadata !DIExpression()) #28, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %10, metadata !1458, metadata !DIExpression()) #28, !dbg !1469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %37, i8* nonnull align 1 %1, i64 %10, i1 false) #28, !dbg !1471
  %41 = getelementptr inbounds i8, i8* %37, i64 %10, !dbg !1471
  call void @llvm.dbg.value(metadata i8* %41, metadata !1428, metadata !DIExpression()), !dbg !1429
  store i8 0, i8* %41, align 1, !dbg !1472, !tbaa !856
  br label %42, !dbg !1473

42:                                               ; preds = %26, %40
  ret i8* %33, !dbg !1474
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1477, metadata !DIExpression()), !dbg !1480
  %2 = icmp eq i8* %0, null, !dbg !1481
  br i1 %2, label %3, label %6, !dbg !1483

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1484, !tbaa !672
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #33, !dbg !1486
  tail call void @abort() #30, !dbg !1487
  unreachable, !dbg !1487

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #29, !dbg !1488
  call void @llvm.dbg.value(metadata i8* %7, metadata !1478, metadata !DIExpression()), !dbg !1480
  %8 = icmp eq i8* %7, null, !dbg !1489
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1490
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %10, metadata !1479, metadata !DIExpression()), !dbg !1480
  %11 = ptrtoint i8* %10 to i64, !dbg !1491
  %12 = ptrtoint i8* %0 to i64, !dbg !1491
  %13 = sub i64 %11, %12, !dbg !1491
  %14 = icmp sgt i64 %13, 6, !dbg !1493
  br i1 %14, label %15, label %24, !dbg !1494

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1495
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.82, i64 0, i64 0), i64 7) #29, !dbg !1496
  %18 = icmp eq i32 %17, 0, !dbg !1497
  br i1 %18, label %19, label %24, !dbg !1498

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1477, metadata !DIExpression()), !dbg !1480
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i64 3) #29, !dbg !1499
  %21 = icmp eq i32 %20, 0, !dbg !1502
  br i1 %21, label %22, label %24, !dbg !1503

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1504
  call void @llvm.dbg.value(metadata i8* %23, metadata !1477, metadata !DIExpression()), !dbg !1480
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1506, !tbaa !672
  br label %24, !dbg !1507

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1477, metadata !DIExpression()), !dbg !1480
  store i8* %25, i8** @program_name, align 8, !dbg !1508, !tbaa !672
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1509, !tbaa !672
  ret void, !dbg !1510
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #19

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1511 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1516, metadata !DIExpression()), !dbg !1519
  %2 = tail call i32* @__errno_location() #32, !dbg !1520
  %3 = load i32, i32* %2, align 4, !dbg !1520, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %3, metadata !1517, metadata !DIExpression()), !dbg !1519
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1521
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1521
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1521
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #28, !dbg !1522
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1522
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1518, metadata !DIExpression()), !dbg !1519
  store i32 %3, i32* %2, align 4, !dbg !1523, !tbaa !830
  ret %struct.quoting_options* %8, !dbg !1524
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #18 !dbg !1525 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1531, metadata !DIExpression()), !dbg !1532
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1533
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1533
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1534
  %5 = load i32, i32* %4, align 8, !dbg !1534, !tbaa !1535
  ret i32 %5, !dbg !1537
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !1538 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1542, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %1, metadata !1543, metadata !DIExpression()), !dbg !1544
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1545
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1545
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1546
  store i32 %1, i32* %5, align 8, !dbg !1547, !tbaa !1535
  ret void, !dbg !1548
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #20 !dbg !1549 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1553, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8 %1, metadata !1554, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i32 %2, metadata !1555, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8 %1, metadata !1556, metadata !DIExpression()), !dbg !1562
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1563
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1563
  %6 = lshr i8 %1, 5, !dbg !1564
  %7 = zext i8 %6 to i64, !dbg !1564
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1565
  call void @llvm.dbg.value(metadata i32* %8, metadata !1558, metadata !DIExpression()), !dbg !1562
  %9 = and i8 %1, 31, !dbg !1566
  %10 = zext i8 %9 to i32, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %10, metadata !1560, metadata !DIExpression()), !dbg !1562
  %11 = load i32, i32* %8, align 4, !dbg !1567, !tbaa !830
  %12 = lshr i32 %11, %10, !dbg !1568
  %13 = and i32 %12, 1, !dbg !1569
  call void @llvm.dbg.value(metadata i32 %13, metadata !1561, metadata !DIExpression()), !dbg !1562
  %14 = and i32 %2, 1, !dbg !1570
  %15 = xor i32 %13, %14, !dbg !1571
  %16 = shl i32 %15, %10, !dbg !1572
  %17 = xor i32 %16, %11, !dbg !1573
  store i32 %17, i32* %8, align 4, !dbg !1573, !tbaa !830
  ret i32 %13, !dbg !1574
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #20 !dbg !1575 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1579, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i32 %1, metadata !1580, metadata !DIExpression()), !dbg !1582
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1583
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1585
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1579, metadata !DIExpression()), !dbg !1582
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1586
  %6 = load i32, i32* %5, align 4, !dbg !1586, !tbaa !1587
  call void @llvm.dbg.value(metadata i32 %6, metadata !1581, metadata !DIExpression()), !dbg !1582
  store i32 %1, i32* %5, align 4, !dbg !1588, !tbaa !1587
  ret i32 %6, !dbg !1589
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1590 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1594, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8* %1, metadata !1595, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8* %2, metadata !1596, metadata !DIExpression()), !dbg !1597
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1598
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1600
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1594, metadata !DIExpression()), !dbg !1597
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1601
  store i32 10, i32* %6, align 8, !dbg !1602, !tbaa !1535
  %7 = icmp ne i8* %1, null, !dbg !1603
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1605
  br i1 %9, label %11, label %10, !dbg !1605

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !1606
  unreachable, !dbg !1606

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1607
  store i8* %1, i8** %12, align 8, !dbg !1608, !tbaa !1609
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1610
  store i8* %2, i8** %13, align 8, !dbg !1611, !tbaa !1612
  ret void, !dbg !1613
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1618, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %1, metadata !1619, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8* %2, metadata !1620, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %3, metadata !1621, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1622, metadata !DIExpression()), !dbg !1626
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1627
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1627
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1623, metadata !DIExpression()), !dbg !1626
  %8 = tail call i32* @__errno_location() #32, !dbg !1628
  %9 = load i32, i32* %8, align 4, !dbg !1628, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %9, metadata !1624, metadata !DIExpression()), !dbg !1626
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1629
  %11 = load i32, i32* %10, align 8, !dbg !1629, !tbaa !1535
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1630
  %13 = load i32, i32* %12, align 4, !dbg !1630, !tbaa !1587
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1631
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1632
  %16 = load i8*, i8** %15, align 8, !dbg !1632, !tbaa !1609
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1633
  %18 = load i8*, i8** %17, align 8, !dbg !1633, !tbaa !1612
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %19, metadata !1625, metadata !DIExpression()), !dbg !1626
  store i32 %9, i32* %8, align 4, !dbg !1635, !tbaa !830
  ret i64 %19, !dbg !1636
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1637 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1643, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %1, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %2, metadata !1645, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %3, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %4, metadata !1647, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %5, metadata !1648, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32* %6, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %7, metadata !1650, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %8, metadata !1651, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !1654, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* null, metadata !1655, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !1656, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1657, metadata !DIExpression()), !dbg !1713
  %13 = tail call i64 @__ctype_get_mb_cur_max() #28, !dbg !1714
  %14 = icmp eq i64 %13, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i1 %14, metadata !1658, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1713
  %15 = lshr i32 %5, 1, !dbg !1716
  %16 = trunc i32 %15 to i8, !dbg !1716
  %17 = and i8 %16, 1, !dbg !1716
  call void @llvm.dbg.value(metadata i8 %17, metadata !1659, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1661, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 1, metadata !1662, metadata !DIExpression()), !dbg !1713
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1717

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1718
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1719
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1720
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1721
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1713
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1722
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1723
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1724
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %38, metadata !1662, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %37, metadata !1661, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %36, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %35, metadata !1659, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %34, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %33, metadata !1657, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %32, metadata !1656, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %31, metadata !1655, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %30, metadata !1654, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %29, metadata !1651, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %28, metadata !1650, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %27, metadata !1647, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.label(metadata !1707), !dbg !1725
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
  ], !dbg !1726

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1659, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 5, metadata !1647, metadata !DIExpression()), !dbg !1713
  br label %92, !dbg !1727

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1659, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 5, metadata !1647, metadata !DIExpression()), !dbg !1713
  %42 = and i8 %35, 1, !dbg !1729
  %43 = icmp eq i8 %42, 0, !dbg !1729
  br i1 %43, label %44, label %92, !dbg !1727

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1731
  br i1 %45, label %92, label %46, !dbg !1734

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1731, !tbaa !856
  br label %92, !dbg !1731

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 %27), !dbg !1735
  call void @llvm.dbg.value(metadata i8* %48, metadata !1650, metadata !DIExpression()), !dbg !1713
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 %27), !dbg !1739
  call void @llvm.dbg.value(metadata i8* %49, metadata !1651, metadata !DIExpression()), !dbg !1713
  br label %50, !dbg !1740

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1651, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %51, metadata !1650, metadata !DIExpression()), !dbg !1713
  %53 = and i8 %35, 1, !dbg !1741
  %54 = icmp eq i8 %53, 0, !dbg !1741
  br i1 %54, label %55, label %70, !dbg !1743

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1655, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !1653, metadata !DIExpression()), !dbg !1713
  %56 = load i8, i8* %51, align 1, !dbg !1744, !tbaa !856
  %57 = icmp eq i8 %56, 0, !dbg !1747
  br i1 %57, label %70, label %58, !dbg !1747

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1655, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %61, metadata !1653, metadata !DIExpression()), !dbg !1713
  %62 = icmp ult i64 %61, %39, !dbg !1748
  br i1 %62, label %63, label %65, !dbg !1751

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1748
  store i8 %59, i8* %64, align 1, !dbg !1748, !tbaa !856
  br label %65, !dbg !1748

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %66, metadata !1653, metadata !DIExpression()), !dbg !1713
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1752
  call void @llvm.dbg.value(metadata i8* %67, metadata !1655, metadata !DIExpression()), !dbg !1713
  %68 = load i8, i8* %67, align 1, !dbg !1744, !tbaa !856
  %69 = icmp eq i8 %68, 0, !dbg !1747
  br i1 %69, label %70, label %58, !dbg !1747, !llvm.loop !1753

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1755
  call void @llvm.dbg.value(metadata i64 %71, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 1, metadata !1657, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %52, metadata !1655, metadata !DIExpression()), !dbg !1713
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #29, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %72, metadata !1656, metadata !DIExpression()), !dbg !1713
  br label %92, !dbg !1757

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1657, metadata !DIExpression()), !dbg !1713
  br label %74, !dbg !1758

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1713
  call void @llvm.dbg.value(metadata i8 %75, metadata !1657, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 1, metadata !1659, metadata !DIExpression()), !dbg !1713
  br label %76, !dbg !1759

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1721
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1713
  call void @llvm.dbg.value(metadata i8 %78, metadata !1659, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %77, metadata !1657, metadata !DIExpression()), !dbg !1713
  %79 = and i8 %78, 1, !dbg !1760
  %80 = icmp eq i8 %79, 0, !dbg !1760
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1762
  br label %82, !dbg !1762

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1713
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1716
  call void @llvm.dbg.value(metadata i8 %84, metadata !1659, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %83, metadata !1657, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 2, metadata !1647, metadata !DIExpression()), !dbg !1713
  %85 = and i8 %84, 1, !dbg !1763
  %86 = icmp eq i8 %85, 0, !dbg !1763
  br i1 %86, label %87, label %92, !dbg !1765

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1766
  br i1 %88, label %92, label %89, !dbg !1769

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1766, !tbaa !856
  br label %92, !dbg !1766

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1659, metadata !DIExpression()), !dbg !1713
  br label %92, !dbg !1770

91:                                               ; preds = %26
  call void @abort() #30, !dbg !1771
  unreachable, !dbg !1771

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1755
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %40 ], !dbg !1713
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1713
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1713
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1713
  call void @llvm.dbg.value(metadata i8 %100, metadata !1659, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %99, metadata !1657, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %98, metadata !1656, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %97, metadata !1655, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %96, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %95, metadata !1651, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %94, metadata !1650, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %93, metadata !1647, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1713
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
  br label %121, !dbg !1772

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1773
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1755
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1718
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1722
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1723
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1724
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %128, metadata !1662, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %127, metadata !1661, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %126, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %125, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %124, metadata !1654, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %123, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %122, metadata !1652, metadata !DIExpression()), !dbg !1713
  %130 = icmp eq i64 %125, -1, !dbg !1774
  br i1 %130, label %131, label %135, !dbg !1775

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1776
  %133 = load i8, i8* %132, align 1, !dbg !1776, !tbaa !856
  %134 = icmp eq i8 %133, 0, !dbg !1777
  br i1 %134, label %587, label %137, !dbg !1778

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1779
  br i1 %136, label %587, label %137, !dbg !1778

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1668, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 0, metadata !1669, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 0, metadata !1670, metadata !DIExpression()), !dbg !1780
  br i1 %106, label %138, label %153, !dbg !1781

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1783
  %140 = and i1 %107, %130, !dbg !1784
  br i1 %140, label %141, label %143, !dbg !1784

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %142, metadata !1646, metadata !DIExpression()), !dbg !1713
  br label %143, !dbg !1786

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1786
  call void @llvm.dbg.value(metadata i64 %144, metadata !1646, metadata !DIExpression()), !dbg !1713
  %145 = icmp ugt i64 %139, %144, !dbg !1787
  br i1 %145, label %153, label %146, !dbg !1788

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1789
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1790
  %149 = icmp ne i32 %148, 0, !dbg !1791
  %150 = or i1 %149, %109, !dbg !1792
  %151 = xor i1 %149, true, !dbg !1792
  %152 = zext i1 %151 to i8, !dbg !1792
  br i1 %150, label %153, label %646, !dbg !1792

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1780
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1780
  call void @llvm.dbg.value(metadata i8 %156, metadata !1668, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %154, metadata !1646, metadata !DIExpression()), !dbg !1713
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1793
  %158 = load i8, i8* %157, align 1, !dbg !1793, !tbaa !856
  call void @llvm.dbg.value(metadata i8 %158, metadata !1663, metadata !DIExpression()), !dbg !1780
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
  ], !dbg !1794

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1795

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1796

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1669, metadata !DIExpression()), !dbg !1780
  %162 = and i8 %126, 1, !dbg !1800
  %163 = icmp eq i8 %162, 0, !dbg !1800
  %164 = and i1 %110, %163, !dbg !1800
  br i1 %164, label %165, label %181, !dbg !1800

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1802
  br i1 %166, label %167, label %169, !dbg !1806

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1802
  store i8 39, i8* %168, align 1, !dbg !1802, !tbaa !856
  br label %169, !dbg !1802

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %170, metadata !1653, metadata !DIExpression()), !dbg !1713
  %171 = icmp ult i64 %170, %129, !dbg !1807
  br i1 %171, label %172, label %174, !dbg !1810

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1807
  store i8 36, i8* %173, align 1, !dbg !1807, !tbaa !856
  br label %174, !dbg !1807

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %175, metadata !1653, metadata !DIExpression()), !dbg !1713
  %176 = icmp ult i64 %175, %129, !dbg !1811
  br i1 %176, label %177, label %179, !dbg !1814

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1811
  store i8 39, i8* %178, align 1, !dbg !1811, !tbaa !856
  br label %179, !dbg !1811

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %180, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 1, metadata !1660, metadata !DIExpression()), !dbg !1713
  br label %181, !dbg !1815

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1713
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1713
  call void @llvm.dbg.value(metadata i8 %183, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %182, metadata !1653, metadata !DIExpression()), !dbg !1713
  %184 = icmp ult i64 %182, %129, !dbg !1816
  br i1 %184, label %185, label %187, !dbg !1819

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1816
  store i8 92, i8* %186, align 1, !dbg !1816, !tbaa !856
  br label %187, !dbg !1816

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %188, metadata !1653, metadata !DIExpression()), !dbg !1713
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1820
  br i1 %191, label %192, label %473, !dbg !1820

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1822
  %194 = load i8, i8* %193, align 1, !dbg !1822, !tbaa !856
  %195 = add i8 %194, -48, !dbg !1823
  %196 = icmp ult i8 %195, 10, !dbg !1823
  br i1 %196, label %197, label %473, !dbg !1823

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1824
  br i1 %198, label %199, label %201, !dbg !1828

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1824
  store i8 48, i8* %200, align 1, !dbg !1824, !tbaa !856
  br label %201, !dbg !1824

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %202, metadata !1653, metadata !DIExpression()), !dbg !1713
  %203 = icmp ult i64 %202, %129, !dbg !1829
  br i1 %203, label %204, label %206, !dbg !1832

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1829
  store i8 48, i8* %205, align 1, !dbg !1829, !tbaa !856
  br label %206, !dbg !1829

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %207, metadata !1653, metadata !DIExpression()), !dbg !1713
  br label %473, !dbg !1833

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1834

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1835

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1836

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1838
  br i1 %214, label %215, label %473, !dbg !1838

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1840
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1841
  %218 = load i8, i8* %217, align 1, !dbg !1841, !tbaa !856
  %219 = icmp eq i8 %218, 63, !dbg !1842
  br i1 %219, label %220, label %473, !dbg !1843

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1844
  %222 = load i8, i8* %221, align 1, !dbg !1844, !tbaa !856
  %223 = sext i8 %222 to i32, !dbg !1844
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
  ], !dbg !1845

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1846

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1663, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 undef, metadata !1652, metadata !DIExpression()), !dbg !1713
  %226 = icmp ult i64 %123, %129, !dbg !1848
  br i1 %226, label %227, label %229, !dbg !1851

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1848
  store i8 63, i8* %228, align 1, !dbg !1848, !tbaa !856
  br label %229, !dbg !1848

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %230, metadata !1653, metadata !DIExpression()), !dbg !1713
  %231 = icmp ult i64 %230, %129, !dbg !1852
  br i1 %231, label %232, label %234, !dbg !1855

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1852
  store i8 34, i8* %233, align 1, !dbg !1852, !tbaa !856
  br label %234, !dbg !1852

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %235, metadata !1653, metadata !DIExpression()), !dbg !1713
  %236 = icmp ult i64 %235, %129, !dbg !1856
  br i1 %236, label %237, label %239, !dbg !1859

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1856
  store i8 34, i8* %238, align 1, !dbg !1856, !tbaa !856
  br label %239, !dbg !1856

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %240, metadata !1653, metadata !DIExpression()), !dbg !1713
  %241 = icmp ult i64 %240, %129, !dbg !1860
  br i1 %241, label %242, label %244, !dbg !1863

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1860
  store i8 63, i8* %243, align 1, !dbg !1860, !tbaa !856
  br label %244, !dbg !1860

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %245, metadata !1653, metadata !DIExpression()), !dbg !1713
  br label %473, !dbg !1864

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1667, metadata !DIExpression()), !dbg !1780
  br label %256, !dbg !1865

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1667, metadata !DIExpression()), !dbg !1780
  br label %256, !dbg !1866

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1667, metadata !DIExpression()), !dbg !1780
  br label %254, !dbg !1867

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1667, metadata !DIExpression()), !dbg !1780
  br label %254, !dbg !1868

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1667, metadata !DIExpression()), !dbg !1780
  br label %256, !dbg !1869

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1667, metadata !DIExpression()), !dbg !1780
  br i1 %110, label %252, label %253, !dbg !1870

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1871

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1874

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1876
  call void @llvm.dbg.value(metadata i8 %255, metadata !1667, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.label(metadata !1708), !dbg !1877
  br i1 %111, label %256, label %631, !dbg !1878

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1876
  call void @llvm.dbg.value(metadata i8 %257, metadata !1667, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.label(metadata !1709), !dbg !1880
  br i1 %102, label %495, label %473, !dbg !1881

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1882

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1883, !tbaa !856
  %261 = icmp eq i8 %260, 0, !dbg !1885
  br i1 %261, label %262, label %473, !dbg !1886

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1887
  br i1 %263, label %264, label %473, !dbg !1889

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1670, metadata !DIExpression()), !dbg !1780
  br label %265, !dbg !1890

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1780
  call void @llvm.dbg.value(metadata i8 %266, metadata !1670, metadata !DIExpression()), !dbg !1780
  br i1 %111, label %473, label %631, !dbg !1891

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1661, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 1, metadata !1670, metadata !DIExpression()), !dbg !1780
  br i1 %110, label %268, label %473, !dbg !1893

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1894

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1897
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1899
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1899
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %274, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %273, metadata !1654, metadata !DIExpression()), !dbg !1713
  %275 = icmp ult i64 %123, %274, !dbg !1900
  br i1 %275, label %276, label %278, !dbg !1903

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1900
  store i8 39, i8* %277, align 1, !dbg !1900, !tbaa !856
  br label %278, !dbg !1900

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %279, metadata !1653, metadata !DIExpression()), !dbg !1713
  %280 = icmp ult i64 %279, %274, !dbg !1904
  br i1 %280, label %281, label %283, !dbg !1907

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1904
  store i8 92, i8* %282, align 1, !dbg !1904, !tbaa !856
  br label %283, !dbg !1904

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %284, metadata !1653, metadata !DIExpression()), !dbg !1713
  %285 = icmp ult i64 %284, %274, !dbg !1908
  br i1 %285, label %286, label %288, !dbg !1911

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1908
  store i8 39, i8* %287, align 1, !dbg !1908, !tbaa !856
  br label %288, !dbg !1908

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %289, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1660, metadata !DIExpression()), !dbg !1713
  br label %473, !dbg !1912

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1913

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1671, metadata !DIExpression()), !dbg !1914
  %292 = tail call i16** @__ctype_b_loc() #32, !dbg !1915
  %293 = load i16*, i16** %292, align 8, !dbg !1915, !tbaa !672
  %294 = zext i8 %158 to i64, !dbg !1915
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1915
  %296 = load i16, i16* %295, align 2, !dbg !1915, !tbaa !1917
  %297 = lshr i16 %296, 14, !dbg !1919
  %298 = trunc i16 %297 to i8, !dbg !1919
  %299 = and i8 %298, 1, !dbg !1919
  call void @llvm.dbg.value(metadata i8 %354, metadata !1674, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %355, metadata !1671, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %306, metadata !1646, metadata !DIExpression()), !dbg !1713
  %300 = icmp eq i8 %299, 0, !dbg !1920
  call void @llvm.dbg.value(metadata i1 %357, metadata !1670, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1780
  br label %359, !dbg !1921

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #28, !dbg !1922
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1675, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8* %23, metadata !1924, metadata !DIExpression()) #28, !dbg !1931
  call void @llvm.dbg.value(metadata i32 0, metadata !1929, metadata !DIExpression()) #28, !dbg !1931
  call void @llvm.dbg.value(metadata i64 8, metadata !1930, metadata !DIExpression()) #28, !dbg !1931
  store i64 0, i64* %10, align 8, !dbg !1933
  call void @llvm.dbg.value(metadata i64 0, metadata !1671, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 1, metadata !1674, metadata !DIExpression()), !dbg !1914
  %302 = icmp eq i64 %154, -1, !dbg !1934
  br i1 %302, label %303, label %305, !dbg !1936

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %304, metadata !1646, metadata !DIExpression()), !dbg !1713
  br label %305, !dbg !1938

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1780
  call void @llvm.dbg.value(metadata i64 %306, metadata !1646, metadata !DIExpression()), !dbg !1713
  br label %307, !dbg !1939

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1940
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1941
  call void @llvm.dbg.value(metadata i8 %309, metadata !1674, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %308, metadata !1671, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #28, !dbg !1942
  %310 = add i64 %308, %122, !dbg !1943
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1944
  %312 = sub i64 %306, %310, !dbg !1945
  call void @llvm.dbg.value(metadata i32* %12, metadata !1693, metadata !DIExpression(DW_OP_deref)), !dbg !1946
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #28, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %313, metadata !1696, metadata !DIExpression()), !dbg !1946
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1948

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1671, metadata !DIExpression()), !dbg !1914
  %315 = icmp ugt i64 %306, %310, !dbg !1949
  br i1 %315, label %316, label %341, !dbg !1951

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1952
  br label %318, !dbg !1952

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1671, metadata !DIExpression()), !dbg !1914
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1953
  %322 = load i8, i8* %321, align 1, !dbg !1953, !tbaa !856
  %323 = icmp eq i8 %322, 0, !dbg !1951
  br i1 %323, label %341, label %324, !dbg !1952

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %325, metadata !1671, metadata !DIExpression()), !dbg !1914
  %326 = add i64 %325, %122, !dbg !1955
  %327 = icmp ult i64 %326, %306, !dbg !1949
  br i1 %327, label %318, label %341, !dbg !1951, !llvm.loop !1956

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1957
  call void @llvm.dbg.value(metadata i64 1, metadata !1697, metadata !DIExpression()), !dbg !1958
  br i1 %330, label %331, label %344, !dbg !1957

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1697, metadata !DIExpression()), !dbg !1958
  %333 = add i64 %332, %310, !dbg !1959
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1962
  %335 = load i8, i8* %334, align 1, !dbg !1962, !tbaa !856
  %336 = sext i8 %335 to i32, !dbg !1962
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1963

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %338, metadata !1697, metadata !DIExpression()), !dbg !1958
  %339 = icmp eq i64 %338, %313, !dbg !1965
  br i1 %339, label %344, label %331, !dbg !1966, !llvm.loop !1967

340:                                              ; preds = %307
  br label %341, !dbg !1969

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1674, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 undef, metadata !1671, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !1969
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1970, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %345, metadata !1693, metadata !DIExpression()), !dbg !1946
  %346 = call i32 @iswprint(i32 %345) #28, !dbg !1972
  %347 = icmp eq i32 %346, 0, !dbg !1972
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1973
  call void @llvm.dbg.value(metadata i8 %348, metadata !1674, metadata !DIExpression()), !dbg !1914
  %349 = add i64 %313, %308, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %349, metadata !1671, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !1969
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #29, !dbg !1975
  %351 = icmp eq i32 %350, 0, !dbg !1976
  br i1 %351, label %307, label %353, !dbg !1977, !llvm.loop !1978

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1674, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 undef, metadata !1671, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !1969
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !1980
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !1980
  call void @llvm.dbg.value(metadata i8 %354, metadata !1674, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %355, metadata !1671, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %306, metadata !1646, metadata !DIExpression()), !dbg !1713
  %356 = and i8 %354, 1, !dbg !1920
  %357 = icmp eq i8 %356, 0, !dbg !1920
  call void @llvm.dbg.value(metadata i1 %357, metadata !1670, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1780
  %358 = icmp ugt i64 %355, 1, !dbg !1981
  br i1 %358, label %367, label %359, !dbg !1921

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1982
  br i1 %364, label %367, label %365, !dbg !1982

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %472, metadata !1670, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %441, metadata !1669, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %440, metadata !1668, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %439, metadata !1663, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %438, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %371, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %437, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %375, metadata !1652, metadata !DIExpression()), !dbg !1713
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %372, metadata !1704, metadata !DIExpression()), !dbg !1984
  %373 = and i1 %102, %368
  br label %374, !dbg !1985

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1773
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1713
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1722
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1780
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1780
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1986
  call void @llvm.dbg.value(metadata i8 %380, metadata !1669, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %379, metadata !1668, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %378, metadata !1663, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %377, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %376, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %375, metadata !1652, metadata !DIExpression()), !dbg !1713
  br i1 %373, label %381, label %427, !dbg !1987

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1992

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1669, metadata !DIExpression()), !dbg !1780
  %383 = and i8 %377, 1, !dbg !1995
  %384 = icmp eq i8 %383, 0, !dbg !1995
  %385 = and i1 %110, %384, !dbg !1995
  br i1 %385, label %386, label %402, !dbg !1995

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1997
  br i1 %387, label %388, label %390, !dbg !2001

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1997
  store i8 39, i8* %389, align 1, !dbg !1997, !tbaa !856
  br label %390, !dbg !1997

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %391, metadata !1653, metadata !DIExpression()), !dbg !1713
  %392 = icmp ult i64 %391, %129, !dbg !2002
  br i1 %392, label %393, label %395, !dbg !2005

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2002
  store i8 36, i8* %394, align 1, !dbg !2002, !tbaa !856
  br label %395, !dbg !2002

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %396, metadata !1653, metadata !DIExpression()), !dbg !1713
  %397 = icmp ult i64 %396, %129, !dbg !2006
  br i1 %397, label %398, label %400, !dbg !2009

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2006
  store i8 39, i8* %399, align 1, !dbg !2006, !tbaa !856
  br label %400, !dbg !2006

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %401, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 1, metadata !1660, metadata !DIExpression()), !dbg !1713
  br label %402, !dbg !2010

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1713
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1713
  call void @llvm.dbg.value(metadata i8 %404, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %403, metadata !1653, metadata !DIExpression()), !dbg !1713
  %405 = icmp ult i64 %403, %129, !dbg !2011
  br i1 %405, label %406, label %408, !dbg !2014

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2011
  store i8 92, i8* %407, align 1, !dbg !2011, !tbaa !856
  br label %408, !dbg !2011

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %409, metadata !1653, metadata !DIExpression()), !dbg !1713
  %410 = icmp ult i64 %409, %129, !dbg !2015
  br i1 %410, label %411, label %415, !dbg !2018

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2015
  %413 = or i8 %412, 48, !dbg !2015
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2015
  store i8 %413, i8* %414, align 1, !dbg !2015, !tbaa !856
  br label %415, !dbg !2015

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %416, metadata !1653, metadata !DIExpression()), !dbg !1713
  %417 = icmp ult i64 %416, %129, !dbg !2019
  br i1 %417, label %418, label %423, !dbg !2022

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2019
  %420 = and i8 %419, 7, !dbg !2019
  %421 = or i8 %420, 48, !dbg !2019
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2019
  store i8 %421, i8* %422, align 1, !dbg !2019, !tbaa !856
  br label %423, !dbg !2019

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %424, metadata !1653, metadata !DIExpression()), !dbg !1713
  %425 = and i8 %378, 7, !dbg !2023
  %426 = or i8 %425, 48, !dbg !2024
  call void @llvm.dbg.value(metadata i8 %426, metadata !1663, metadata !DIExpression()), !dbg !1780
  br label %436, !dbg !2025

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2026
  %429 = icmp eq i8 %428, 0, !dbg !2026
  br i1 %429, label %436, label %430, !dbg !2028

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2029
  br i1 %431, label %432, label %434, !dbg !2033

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2029
  store i8 92, i8* %433, align 1, !dbg !2029, !tbaa !856
  br label %434, !dbg !2029

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %435, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1668, metadata !DIExpression()), !dbg !1780
  br label %436, !dbg !2034

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1713
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1722
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1780
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1780
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1780
  call void @llvm.dbg.value(metadata i8 %441, metadata !1669, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %440, metadata !1668, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %439, metadata !1663, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %438, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %437, metadata !1653, metadata !DIExpression()), !dbg !1713
  %442 = add i64 %375, 1, !dbg !2035
  %443 = icmp ugt i64 %372, %442, !dbg !2037
  br i1 %443, label %444, label %471, !dbg !2038

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2039
  %446 = icmp ne i8 %445, 0, !dbg !2039
  %447 = and i8 %441, 1, !dbg !2039
  %448 = icmp eq i8 %447, 0, !dbg !2039
  %449 = and i1 %446, %448, !dbg !2039
  br i1 %449, label %450, label %461, !dbg !2039

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2042
  br i1 %451, label %452, label %454, !dbg !2046

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2042
  store i8 39, i8* %453, align 1, !dbg !2042, !tbaa !856
  br label %454, !dbg !2042

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %455, metadata !1653, metadata !DIExpression()), !dbg !1713
  %456 = icmp ult i64 %455, %129, !dbg !2047
  br i1 %456, label %457, label %459, !dbg !2050

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2047
  store i8 39, i8* %458, align 1, !dbg !2047, !tbaa !856
  br label %459, !dbg !2047

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %460, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1660, metadata !DIExpression()), !dbg !1713
  br label %461, !dbg !2051

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2052
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1713
  call void @llvm.dbg.value(metadata i8 %463, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %462, metadata !1653, metadata !DIExpression()), !dbg !1713
  %464 = icmp ult i64 %462, %129, !dbg !2053
  br i1 %464, label %465, label %467, !dbg !2056

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2053
  store i8 %439, i8* %466, align 1, !dbg !2053, !tbaa !856
  br label %467, !dbg !2053

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %468, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %442, metadata !1652, metadata !DIExpression()), !dbg !1713
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2057
  %470 = load i8, i8* %469, align 1, !dbg !2057, !tbaa !856
  call void @llvm.dbg.value(metadata i8 %470, metadata !1663, metadata !DIExpression()), !dbg !1780
  br label %374, !dbg !2058, !llvm.loop !2059

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %472, metadata !1670, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %441, metadata !1669, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %440, metadata !1668, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %439, metadata !1663, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %438, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %371, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %437, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %375, metadata !1652, metadata !DIExpression()), !dbg !1713
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1773
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1713
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1718
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2062
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1713
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1713
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1780
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1780
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1780
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %482, metadata !1670, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %481, metadata !1669, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %156, metadata !1668, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %480, metadata !1663, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %479, metadata !1661, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %478, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %477, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %476, metadata !1654, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %475, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %474, metadata !1652, metadata !DIExpression()), !dbg !1713
  br i1 %116, label %494, label %484, !dbg !2063

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2065
  %486 = zext i8 %485 to i64, !dbg !2065
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2066
  %488 = load i32, i32* %487, align 4, !dbg !2066, !tbaa !830
  %489 = and i8 %480, 31, !dbg !2067
  %490 = zext i8 %489 to i32, !dbg !2067
  %491 = shl nuw i32 1, %490, !dbg !2068
  %492 = and i32 %488, %491, !dbg !2068
  %493 = icmp eq i32 %492, 0, !dbg !2068
  br i1 %493, label %494, label %495, !dbg !2069

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2070

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2071
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1713
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1718
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2062
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1722
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1723
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1780
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1780
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %503, metadata !1670, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %502, metadata !1663, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %501, metadata !1661, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %500, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %499, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %498, metadata !1654, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %497, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %496, metadata !1652, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.label(metadata !1710), !dbg !2072
  br i1 %109, label %505, label %635, !dbg !2073

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1669, metadata !DIExpression()), !dbg !1780
  %506 = and i8 %500, 1, !dbg !2075
  %507 = icmp eq i8 %506, 0, !dbg !2075
  %508 = and i1 %110, %507, !dbg !2075
  br i1 %508, label %509, label %525, !dbg !2075

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2077
  br i1 %510, label %511, label %513, !dbg !2081

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2077
  store i8 39, i8* %512, align 1, !dbg !2077, !tbaa !856
  br label %513, !dbg !2077

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %514, metadata !1653, metadata !DIExpression()), !dbg !1713
  %515 = icmp ult i64 %514, %504, !dbg !2082
  br i1 %515, label %516, label %518, !dbg !2085

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2082
  store i8 36, i8* %517, align 1, !dbg !2082, !tbaa !856
  br label %518, !dbg !2082

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %519, metadata !1653, metadata !DIExpression()), !dbg !1713
  %520 = icmp ult i64 %519, %504, !dbg !2086
  br i1 %520, label %521, label %523, !dbg !2089

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2086
  store i8 39, i8* %522, align 1, !dbg !2086, !tbaa !856
  br label %523, !dbg !2086

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %524, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 1, metadata !1660, metadata !DIExpression()), !dbg !1713
  br label %525, !dbg !2090

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1780
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1713
  call void @llvm.dbg.value(metadata i8 %527, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %526, metadata !1653, metadata !DIExpression()), !dbg !1713
  %528 = icmp ult i64 %526, %504, !dbg !2091
  br i1 %528, label %529, label %531, !dbg !2094

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2091
  store i8 92, i8* %530, align 1, !dbg !2091, !tbaa !856
  br label %531, !dbg !2091

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %543, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %542, metadata !1670, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %541, metadata !1669, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %540, metadata !1663, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %539, metadata !1661, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %538, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %537, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %536, metadata !1654, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %535, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %534, metadata !1652, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.label(metadata !1711), !dbg !2095
  br label %560, !dbg !2096

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2071
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1713
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1718
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2062
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1722
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1723
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2099
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1780
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1780
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %542, metadata !1670, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %541, metadata !1669, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %540, metadata !1663, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %539, metadata !1661, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %538, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %537, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %536, metadata !1654, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %535, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %534, metadata !1652, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.label(metadata !1711), !dbg !2095
  %544 = and i8 %538, 1, !dbg !2096
  %545 = icmp ne i8 %544, 0, !dbg !2096
  %546 = and i8 %541, 1, !dbg !2096
  %547 = icmp eq i8 %546, 0, !dbg !2096
  %548 = and i1 %545, %547, !dbg !2096
  br i1 %548, label %549, label %560, !dbg !2096

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2100
  br i1 %550, label %551, label %553, !dbg !2104

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2100
  store i8 39, i8* %552, align 1, !dbg !2100, !tbaa !856
  br label %553, !dbg !2100

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %554, metadata !1653, metadata !DIExpression()), !dbg !1713
  %555 = icmp ult i64 %554, %543, !dbg !2105
  br i1 %555, label %556, label %558, !dbg !2108

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2105
  store i8 39, i8* %557, align 1, !dbg !2105, !tbaa !856
  br label %558, !dbg !2105

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %559, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1660, metadata !DIExpression()), !dbg !1713
  br label %560, !dbg !2109

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1780
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1713
  call void @llvm.dbg.value(metadata i8 %569, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %568, metadata !1653, metadata !DIExpression()), !dbg !1713
  %570 = icmp ult i64 %568, %561, !dbg !2110
  br i1 %570, label %571, label %573, !dbg !2113

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2110
  store i8 %563, i8* %572, align 1, !dbg !2110, !tbaa !856
  br label %573, !dbg !2110

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %574, metadata !1653, metadata !DIExpression()), !dbg !1713
  %575 = icmp eq i8 %562, 0, !dbg !2114
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2116
  call void @llvm.dbg.value(metadata i8 %576, metadata !1662, metadata !DIExpression()), !dbg !1713
  br label %577, !dbg !2117

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2071
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1713
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1718
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2062
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1722
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1713
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1724
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %584, metadata !1662, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %583, metadata !1661, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %582, metadata !1660, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %581, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %580, metadata !1654, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %579, metadata !1653, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %578, metadata !1652, metadata !DIExpression()), !dbg !1713
  %586 = add i64 %578, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %586, metadata !1652, metadata !DIExpression()), !dbg !1713
  br label %121, !dbg !2119, !llvm.loop !2120

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2122
  %590 = and i1 %110, %589, !dbg !2124
  %591 = xor i1 %590, true, !dbg !2124
  %592 = or i1 %109, %591, !dbg !2124
  br i1 %592, label %593, label %635, !dbg !2124

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2125
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2125
  br i1 %597, label %598, label %607, !dbg !2125

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2127
  %600 = icmp eq i8 %599, 0, !dbg !2127
  br i1 %600, label %603, label %601, !dbg !2130

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2131
  br label %652, !dbg !2132

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2133
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2135
  br i1 %606, label %26, label %607, !dbg !2135

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2136
  %610 = and i1 %609, %608, !dbg !2138
  br i1 %610, label %611, label %626, !dbg !2138

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1655, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %123, metadata !1653, metadata !DIExpression()), !dbg !1713
  %612 = load i8, i8* %97, align 1, !dbg !2139, !tbaa !856
  %613 = icmp eq i8 %612, 0, !dbg !2142
  br i1 %613, label %626, label %614, !dbg !2142

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1655, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %617, metadata !1653, metadata !DIExpression()), !dbg !1713
  %618 = icmp ult i64 %617, %129, !dbg !2143
  br i1 %618, label %619, label %621, !dbg !2146

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2143
  store i8 %615, i8* %620, align 1, !dbg !2143, !tbaa !856
  br label %621, !dbg !2143

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %622, metadata !1653, metadata !DIExpression()), !dbg !1713
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2147
  call void @llvm.dbg.value(metadata i8* %623, metadata !1655, metadata !DIExpression()), !dbg !1713
  %624 = load i8, i8* %623, align 1, !dbg !2139, !tbaa !856
  %625 = icmp eq i8 %624, 0, !dbg !2142
  br i1 %625, label %626, label %614, !dbg !2142, !llvm.loop !2148

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1755
  call void @llvm.dbg.value(metadata i64 %627, metadata !1653, metadata !DIExpression()), !dbg !1713
  %628 = icmp ult i64 %627, %129, !dbg !2150
  br i1 %628, label %629, label %652, !dbg !2152

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2153
  store i8 0, i8* %630, align 1, !dbg !2154, !tbaa !856
  br label %652, !dbg !2153

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %637, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.label(metadata !1712), !dbg !2155
  %633 = icmp eq i8 %101, 0, !dbg !2156
  %634 = select i1 %633, i32 2, i32 4, !dbg !2156
  br label %642, !dbg !2156

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1644, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %637, metadata !1646, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.label(metadata !1712), !dbg !2155
  %639 = icmp eq i32 %93, 2, !dbg !2158
  %640 = icmp eq i8 %636, 0, !dbg !2156
  %641 = select i1 %640, i32 2, i32 4, !dbg !2156
  br i1 %639, label %642, label %646, !dbg !2156

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2156

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1647, metadata !DIExpression()), !dbg !1713
  %650 = and i32 %5, -3, !dbg !2159
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2160
  br label %652, !dbg !2161

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2162
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2163 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2167, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i32 %1, metadata !2168, metadata !DIExpression()), !dbg !2171
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #28, !dbg !2172
  call void @llvm.dbg.value(metadata i8* %3, metadata !2169, metadata !DIExpression()), !dbg !2171
  %4 = icmp eq i8* %3, %0, !dbg !2173
  br i1 %4, label %5, label %72, !dbg !2175

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #28, !dbg !2176
  call void @llvm.dbg.value(metadata i8* %6, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8* %6, metadata !2177, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* undef, metadata !2183, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 85, metadata !2184, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 84, metadata !2185, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 70, metadata !2186, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 45, metadata !2187, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 56, metadata !2188, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2191, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2192, metadata !DIExpression()), !dbg !2193
  %7 = load i8, i8* %6, align 1, !dbg !2196, !tbaa !856
  %8 = and i8 %7, -33, !dbg !2196
  %9 = sext i8 %8 to i32, !dbg !2196
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2196

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2198, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8* undef, metadata !2203, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 84, metadata !2204, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 70, metadata !2205, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 45, metadata !2206, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 56, metadata !2207, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 0, metadata !2209, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 0, metadata !2210, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 0, metadata !2211, metadata !DIExpression()), !dbg !2212
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2216
  %12 = load i8, i8* %11, align 1, !dbg !2216, !tbaa !856
  %13 = and i8 %12, -33, !dbg !2216
  %14 = icmp eq i8 %13, 84, !dbg !2216
  br i1 %14, label %15, label %69, !dbg !2216

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2218, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8* undef, metadata !2223, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 70, metadata !2224, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 45, metadata !2225, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 56, metadata !2226, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 0, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 0, metadata !2229, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 0, metadata !2230, metadata !DIExpression()), !dbg !2231
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2235
  %17 = load i8, i8* %16, align 1, !dbg !2235, !tbaa !856
  %18 = and i8 %17, -33, !dbg !2235
  %19 = icmp eq i8 %18, 70, !dbg !2235
  br i1 %19, label %20, label %69, !dbg !2235

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2237, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8* undef, metadata !2242, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 45, metadata !2243, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 56, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 0, metadata !2245, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 0, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 0, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 0, metadata !2248, metadata !DIExpression()), !dbg !2249
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2253
  %22 = load i8, i8* %21, align 1, !dbg !2253, !tbaa !856
  %23 = icmp eq i8 %22, 45, !dbg !2253
  br i1 %23, label %24, label %69, !dbg !2255

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2256, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* undef, metadata !2261, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 56, metadata !2262, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 0, metadata !2263, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 0, metadata !2264, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 0, metadata !2266, metadata !DIExpression()), !dbg !2267
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2271
  %26 = load i8, i8* %25, align 1, !dbg !2271, !tbaa !856
  %27 = icmp eq i8 %26, 56, !dbg !2271
  br i1 %27, label %28, label %69, !dbg !2273

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2274, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8* undef, metadata !2279, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 0, metadata !2280, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 0, metadata !2281, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 0, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 0, metadata !2283, metadata !DIExpression()), !dbg !2284
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2288
  %30 = load i8, i8* %29, align 1, !dbg !2288, !tbaa !856
  %31 = icmp eq i8 %30, 0, !dbg !2288
  br i1 %31, label %32, label %69, !dbg !2290

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2291, !tbaa !856
  %34 = icmp eq i8 %33, 96, !dbg !2292
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.97, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.98, i64 0, i64 0), !dbg !2291
  br label %72, !dbg !2293

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2198, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* undef, metadata !2203, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 66, metadata !2204, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 49, metadata !2205, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 56, metadata !2206, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 48, metadata !2207, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 51, metadata !2208, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 48, metadata !2209, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 0, metadata !2210, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 0, metadata !2211, metadata !DIExpression()), !dbg !2294
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2298
  %38 = load i8, i8* %37, align 1, !dbg !2298, !tbaa !856
  %39 = and i8 %38, -33, !dbg !2298
  %40 = icmp eq i8 %39, 66, !dbg !2298
  br i1 %40, label %41, label %69, !dbg !2298

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2218, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8* undef, metadata !2223, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 49, metadata !2224, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 56, metadata !2225, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 48, metadata !2226, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 51, metadata !2227, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 48, metadata !2228, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 0, metadata !2229, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 0, metadata !2230, metadata !DIExpression()), !dbg !2299
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2301
  %43 = load i8, i8* %42, align 1, !dbg !2301, !tbaa !856
  %44 = icmp eq i8 %43, 49, !dbg !2301
  br i1 %44, label %45, label %69, !dbg !2302

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2237, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8* undef, metadata !2242, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8 56, metadata !2243, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8 48, metadata !2244, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8 51, metadata !2245, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8 48, metadata !2246, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8 0, metadata !2247, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8 0, metadata !2248, metadata !DIExpression()), !dbg !2303
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2305
  %47 = load i8, i8* %46, align 1, !dbg !2305, !tbaa !856
  %48 = icmp eq i8 %47, 56, !dbg !2305
  br i1 %48, label %49, label %69, !dbg !2306

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2256, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* undef, metadata !2261, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 48, metadata !2262, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 51, metadata !2263, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 48, metadata !2264, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 0, metadata !2266, metadata !DIExpression()), !dbg !2307
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2309
  %51 = load i8, i8* %50, align 1, !dbg !2309, !tbaa !856
  %52 = icmp eq i8 %51, 48, !dbg !2309
  br i1 %52, label %53, label %69, !dbg !2310

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2274, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* undef, metadata !2279, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 51, metadata !2280, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 48, metadata !2281, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2282, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2283, metadata !DIExpression()), !dbg !2311
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2313
  %55 = load i8, i8* %54, align 1, !dbg !2313, !tbaa !856
  %56 = icmp eq i8 %55, 51, !dbg !2313
  br i1 %56, label %57, label %69, !dbg !2314

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2315, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* undef, metadata !2320, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 48, metadata !2321, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2324
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2328
  %59 = load i8, i8* %58, align 1, !dbg !2328, !tbaa !856
  %60 = icmp eq i8 %59, 48, !dbg !2328
  br i1 %60, label %61, label %69, !dbg !2330

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2331, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8* undef, metadata !2336, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8 0, metadata !2337, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8 0, metadata !2338, metadata !DIExpression()), !dbg !2339
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2343
  %63 = load i8, i8* %62, align 1, !dbg !2343, !tbaa !856
  %64 = icmp eq i8 %63, 0, !dbg !2343
  br i1 %64, label %65, label %69, !dbg !2345

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2346, !tbaa !856
  %67 = icmp eq i8 %66, 96, !dbg !2347
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.100, i64 0, i64 0), !dbg !2346
  br label %72, !dbg !2348

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2349
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !2350
  br label %72, !dbg !2351

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2171
  ret i8* %73, !dbg !2352
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2353 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2357 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2367, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i64 %1, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2369, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8* %0, metadata !2371, metadata !DIExpression()) #28, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %1, metadata !2376, metadata !DIExpression()) #28, !dbg !2384
  call void @llvm.dbg.value(metadata i64* null, metadata !2377, metadata !DIExpression()) #28, !dbg !2384
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2378, metadata !DIExpression()) #28, !dbg !2384
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2386
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2386
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2379, metadata !DIExpression()) #28, !dbg !2384
  %6 = tail call i32* @__errno_location() #32, !dbg !2387
  %7 = load i32, i32* %6, align 4, !dbg !2387, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %7, metadata !2380, metadata !DIExpression()) #28, !dbg !2384
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2388
  %9 = load i32, i32* %8, align 4, !dbg !2388, !tbaa !1587
  %10 = or i32 %9, 1, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %10, metadata !2381, metadata !DIExpression()) #28, !dbg !2384
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2390
  %12 = load i32, i32* %11, align 8, !dbg !2390, !tbaa !1535
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2391
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2392
  %15 = load i8*, i8** %14, align 8, !dbg !2392, !tbaa !1609
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2393
  %17 = load i8*, i8** %16, align 8, !dbg !2393, !tbaa !1612
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #28, !dbg !2394
  %19 = add i64 %18, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %19, metadata !2382, metadata !DIExpression()) #28, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %19, metadata !2396, metadata !DIExpression()) #28, !dbg !2401
  %20 = tail call noalias i8* @xmalloc(i64 %19) #28, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %20, metadata !2383, metadata !DIExpression()) #28, !dbg !2384
  %21 = load i32, i32* %11, align 8, !dbg !2404, !tbaa !1535
  %22 = load i8*, i8** %14, align 8, !dbg !2405, !tbaa !1609
  %23 = load i8*, i8** %16, align 8, !dbg !2406, !tbaa !1612
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #28, !dbg !2407
  store i32 %7, i32* %6, align 4, !dbg !2408, !tbaa !830
  ret i8* %20, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2372 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2371, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i64 %1, metadata !2376, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i64* %2, metadata !2377, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2378, metadata !DIExpression()), !dbg !2410
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2411
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2411
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2379, metadata !DIExpression()), !dbg !2410
  %7 = tail call i32* @__errno_location() #32, !dbg !2412
  %8 = load i32, i32* %7, align 4, !dbg !2412, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %8, metadata !2380, metadata !DIExpression()), !dbg !2410
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2413
  %10 = load i32, i32* %9, align 4, !dbg !2413, !tbaa !1587
  %11 = icmp eq i64* %2, null, !dbg !2414
  %12 = zext i1 %11 to i32, !dbg !2414
  %13 = or i32 %10, %12, !dbg !2415
  call void @llvm.dbg.value(metadata i32 %13, metadata !2381, metadata !DIExpression()), !dbg !2410
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2416
  %15 = load i32, i32* %14, align 8, !dbg !2416, !tbaa !1535
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2417
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2418
  %18 = load i8*, i8** %17, align 8, !dbg !2418, !tbaa !1609
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2419
  %20 = load i8*, i8** %19, align 8, !dbg !2419, !tbaa !1612
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2420
  %22 = add i64 %21, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %22, metadata !2382, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i64 %22, metadata !2396, metadata !DIExpression()) #28, !dbg !2422
  %23 = tail call noalias i8* @xmalloc(i64 %22) #28, !dbg !2424
  call void @llvm.dbg.value(metadata i8* %23, metadata !2383, metadata !DIExpression()), !dbg !2410
  %24 = load i32, i32* %14, align 8, !dbg !2425, !tbaa !1535
  %25 = load i8*, i8** %17, align 8, !dbg !2426, !tbaa !1609
  %26 = load i8*, i8** %19, align 8, !dbg !2427, !tbaa !1612
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2428
  store i32 %8, i32* %7, align 4, !dbg !2429, !tbaa !830
  br i1 %11, label %29, label %28, !dbg !2430

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2431, !tbaa !906
  br label %29, !dbg !2433

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2435 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2439, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 1, metadata !2438, metadata !DIExpression()), !dbg !2440
  %2 = load i32, i32* @nslots, align 4, !dbg !2441, !tbaa !830
  %3 = icmp sgt i32 %2, 1, !dbg !2444
  br i1 %3, label %4, label %12, !dbg !2445

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2444
  br label %6, !dbg !2445

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2438, metadata !DIExpression()), !dbg !2440
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2446
  %9 = load i8*, i8** %8, align 8, !dbg !2446, !tbaa !2447
  tail call void @free(i8* %9) #28, !dbg !2449
  %10 = add nuw nsw i64 %7, 1, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %10, metadata !2438, metadata !DIExpression()), !dbg !2440
  %11 = icmp eq i64 %10, %5, !dbg !2444
  br i1 %11, label %12, label %6, !dbg !2445, !llvm.loop !2451

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2453
  %14 = load i8*, i8** %13, align 8, !dbg !2453, !tbaa !2447
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2455
  br i1 %15, label %17, label %16, !dbg !2456

16:                                               ; preds = %12
  tail call void @free(i8* %14) #28, !dbg !2457
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2459, !tbaa !2460
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2461, !tbaa !2447
  br label %17, !dbg !2462

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2463
  br i1 %18, label %21, label %19, !dbg !2465

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2466
  tail call void @free(i8* %20) #28, !dbg !2468
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2469, !tbaa !672
  br label %21, !dbg !2470

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2471, !tbaa !830
  ret void, !dbg !2472
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2473 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %1, metadata !2476, metadata !DIExpression()), !dbg !2477
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2478
  ret i8* %3, !dbg !2479
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8* %1, metadata !2485, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i64 %2, metadata !2486, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2487, metadata !DIExpression()), !dbg !2499
  %5 = tail call i32* @__errno_location() #32, !dbg !2500
  %6 = load i32, i32* %5, align 4, !dbg !2500, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %6, metadata !2488, metadata !DIExpression()), !dbg !2499
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2501, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2489, metadata !DIExpression()), !dbg !2499
  %8 = icmp slt i32 %0, 0, !dbg !2502
  br i1 %8, label %9, label %10, !dbg !2504

9:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2505
  unreachable, !dbg !2505

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2506, !tbaa !830
  %12 = icmp sgt i32 %11, %0, !dbg !2507
  br i1 %12, label %34, label %13, !dbg !2508

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2509
  call void @llvm.dbg.value(metadata i1 %14, metadata !2490, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2510
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2493, metadata !DIExpression()), !dbg !2510
  %15 = icmp eq i32 %0, 2147483647, !dbg !2511
  br i1 %15, label %16, label %17, !dbg !2513

16:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !2514
  unreachable, !dbg !2514

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2515
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2515
  %20 = add nuw nsw i32 %0, 1, !dbg !2516
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2517
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #28, !dbg !2518
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2518
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2489, metadata !DIExpression()), !dbg !2499
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2519, !tbaa !672
  br i1 %14, label %25, label %26, !dbg !2520

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2521, !tbaa.struct !2523
  br label %26, !dbg !2524

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2525, !tbaa !830
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2526
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2527
  %31 = sub nsw i32 %20, %27, !dbg !2528
  %32 = sext i32 %31 to i64, !dbg !2529
  %33 = shl nsw i64 %32, 4, !dbg !2530
  call void @llvm.dbg.value(metadata i8* %30, metadata !1924, metadata !DIExpression()) #28, !dbg !2531
  call void @llvm.dbg.value(metadata i32 0, metadata !1929, metadata !DIExpression()) #28, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %33, metadata !1930, metadata !DIExpression()) #28, !dbg !2531
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #28, !dbg !2533
  store i32 %20, i32* @nslots, align 4, !dbg !2534, !tbaa !830
  br label %34, !dbg !2535

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2499
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2489, metadata !DIExpression()), !dbg !2499
  %36 = zext i32 %0 to i64, !dbg !2536
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2537
  %38 = load i64, i64* %37, align 8, !dbg !2537, !tbaa !2460
  call void @llvm.dbg.value(metadata i64 %38, metadata !2494, metadata !DIExpression()), !dbg !2538
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2539
  %40 = load i8*, i8** %39, align 8, !dbg !2539, !tbaa !2447
  call void @llvm.dbg.value(metadata i8* %40, metadata !2496, metadata !DIExpression()), !dbg !2538
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2540
  %42 = load i32, i32* %41, align 4, !dbg !2540, !tbaa !1587
  %43 = or i32 %42, 1, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %43, metadata !2497, metadata !DIExpression()), !dbg !2538
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2542
  %45 = load i32, i32* %44, align 8, !dbg !2542, !tbaa !1535
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2543
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2544
  %48 = load i8*, i8** %47, align 8, !dbg !2544, !tbaa !1609
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2545
  %50 = load i8*, i8** %49, align 8, !dbg !2545, !tbaa !1612
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %51, metadata !2498, metadata !DIExpression()), !dbg !2538
  %52 = icmp ugt i64 %38, %51, !dbg !2547
  br i1 %52, label %63, label %53, !dbg !2549

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %54, metadata !2494, metadata !DIExpression()), !dbg !2538
  store i64 %54, i64* %37, align 8, !dbg !2552, !tbaa !2460
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2553
  br i1 %55, label %57, label %56, !dbg !2555

56:                                               ; preds = %53
  tail call void @free(i8* %40) #28, !dbg !2556
  br label %57, !dbg !2556

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2396, metadata !DIExpression()) #28, !dbg !2557
  %58 = tail call noalias i8* @xmalloc(i64 %54) #28, !dbg !2559
  call void @llvm.dbg.value(metadata i8* %58, metadata !2496, metadata !DIExpression()), !dbg !2538
  store i8* %58, i8** %39, align 8, !dbg !2560, !tbaa !2447
  %59 = load i32, i32* %44, align 8, !dbg !2561, !tbaa !1535
  %60 = load i8*, i8** %47, align 8, !dbg !2562, !tbaa !1609
  %61 = load i8*, i8** %49, align 8, !dbg !2563, !tbaa !1612
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2564
  br label %63, !dbg !2565

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2538
  call void @llvm.dbg.value(metadata i8* %64, metadata !2496, metadata !DIExpression()), !dbg !2538
  store i32 %6, i32* %5, align 4, !dbg !2566, !tbaa !830
  ret i8* %64, !dbg !2567
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2568 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2572, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %1, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i64 %2, metadata !2574, metadata !DIExpression()), !dbg !2575
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2576
  ret i8* %4, !dbg !2577
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2578 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 0, metadata !2475, metadata !DIExpression()) #28, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %0, metadata !2476, metadata !DIExpression()) #28, !dbg !2582
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2584
  ret i8* %2, !dbg !2585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2586 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()) #28, !dbg !2593
  call void @llvm.dbg.value(metadata i8* %0, metadata !2573, metadata !DIExpression()) #28, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %1, metadata !2574, metadata !DIExpression()) #28, !dbg !2593
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2595
  ret i8* %3, !dbg !2596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2597 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2601, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 %1, metadata !2602, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %2, metadata !2603, metadata !DIExpression()), !dbg !2605
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2606
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2606
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2604, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %1, metadata !2612, metadata !DIExpression()) #28, !dbg !2618
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2617, metadata !DIExpression()) #28, !dbg !2620
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2620, !alias.scope !2608
  %6 = icmp eq i32 %1, 10, !dbg !2621
  br i1 %6, label %7, label %8, !dbg !2623

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2624, !noalias !2608
  unreachable, !dbg !2624

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2625
  store i32 %1, i32* %9, align 8, !dbg !2626, !tbaa !1535, !alias.scope !2608
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2628
  ret i8* %10, !dbg !2629
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2630 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2634, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i32 %1, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8* %2, metadata !2636, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %3, metadata !2637, metadata !DIExpression()), !dbg !2639
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2640
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2638, metadata !DIExpression()), !dbg !2641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1, metadata !2612, metadata !DIExpression()) #28, !dbg !2646
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2617, metadata !DIExpression()) #28, !dbg !2648
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #28, !dbg !2648, !alias.scope !2642
  %7 = icmp eq i32 %1, 10, !dbg !2649
  br i1 %7, label %8, label %9, !dbg !2650

8:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2651, !noalias !2642
  unreachable, !dbg !2651

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2652
  store i32 %1, i32* %10, align 8, !dbg !2653, !tbaa !1535, !alias.scope !2642
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2654
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2655
  ret i8* %11, !dbg !2656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2657 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8* %1, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2601, metadata !DIExpression()) #28, !dbg !2664
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()) #28, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %1, metadata !2603, metadata !DIExpression()) #28, !dbg !2664
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2666
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2666
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2604, metadata !DIExpression()) #28, !dbg !2667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668) #28, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %0, metadata !2612, metadata !DIExpression()) #28, !dbg !2672
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2617, metadata !DIExpression()) #28, !dbg !2674
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28, !dbg !2674, !alias.scope !2668
  %5 = icmp eq i32 %0, 10, !dbg !2675
  br i1 %5, label %6, label %7, !dbg !2676

6:                                                ; preds = %2
  tail call void @abort() #30, !dbg !2677, !noalias !2668
  unreachable, !dbg !2677

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2678
  store i32 %0, i32* %8, align 8, !dbg !2679, !tbaa !1535, !alias.scope !2668
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !2680
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2681
  ret i8* %9, !dbg !2682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2683 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2687, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8* %1, metadata !2688, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %2, metadata !2689, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 0, metadata !2634, metadata !DIExpression()) #28, !dbg !2691
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()) #28, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !2636, metadata !DIExpression()) #28, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %2, metadata !2637, metadata !DIExpression()) #28, !dbg !2691
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2693
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2693
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2638, metadata !DIExpression()) #28, !dbg !2694
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2695) #28, !dbg !2698
  call void @llvm.dbg.value(metadata i32 %0, metadata !2612, metadata !DIExpression()) #28, !dbg !2699
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2617, metadata !DIExpression()) #28, !dbg !2701
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2701, !alias.scope !2695
  %6 = icmp eq i32 %0, 10, !dbg !2702
  br i1 %6, label %7, label %8, !dbg !2703

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2704, !noalias !2695
  unreachable, !dbg !2704

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2705
  store i32 %0, i32* %9, align 8, !dbg !2706, !tbaa !1535, !alias.scope !2695
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #28, !dbg !2707
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2708
  ret i8* %10, !dbg !2709
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2710 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 %2, metadata !2716, metadata !DIExpression()), !dbg !2718
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2719
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2717, metadata !DIExpression()), !dbg !2720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2721, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1553, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 %2, metadata !1554, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 %2, metadata !1556, metadata !DIExpression()), !dbg !2723
  %6 = lshr i8 %2, 5, !dbg !2725
  %7 = zext i8 %6 to i64, !dbg !2725
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2726
  call void @llvm.dbg.value(metadata i32* %8, metadata !1558, metadata !DIExpression()), !dbg !2723
  %9 = and i8 %2, 31, !dbg !2727
  %10 = zext i8 %9 to i32, !dbg !2727
  call void @llvm.dbg.value(metadata i32 %10, metadata !1560, metadata !DIExpression()), !dbg !2723
  %11 = load i32, i32* %8, align 4, !dbg !2728, !tbaa !830
  %12 = lshr i32 %11, %10, !dbg !2729
  %13 = and i32 %12, 1, !dbg !2730
  call void @llvm.dbg.value(metadata i32 %13, metadata !1561, metadata !DIExpression()), !dbg !2723
  %14 = xor i32 %13, 1, !dbg !2731
  %15 = shl i32 %14, %10, !dbg !2732
  %16 = xor i32 %15, %11, !dbg !2733
  store i32 %16, i32* %8, align 4, !dbg !2733, !tbaa !830
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2735
  ret i8* %17, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2737 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 %1, metadata !2742, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()) #28, !dbg !2744
  call void @llvm.dbg.value(metadata i64 -1, metadata !2715, metadata !DIExpression()) #28, !dbg !2744
  call void @llvm.dbg.value(metadata i8 %1, metadata !2716, metadata !DIExpression()) #28, !dbg !2744
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2746
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2746
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2717, metadata !DIExpression()) #28, !dbg !2747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !2748, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1553, metadata !DIExpression()) #28, !dbg !2749
  call void @llvm.dbg.value(metadata i8 %1, metadata !1554, metadata !DIExpression()) #28, !dbg !2749
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()) #28, !dbg !2749
  call void @llvm.dbg.value(metadata i8 %1, metadata !1556, metadata !DIExpression()) #28, !dbg !2749
  %5 = lshr i8 %1, 5, !dbg !2751
  %6 = zext i8 %5 to i64, !dbg !2751
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2752
  call void @llvm.dbg.value(metadata i32* %7, metadata !1558, metadata !DIExpression()) #28, !dbg !2749
  %8 = and i8 %1, 31, !dbg !2753
  %9 = zext i8 %8 to i32, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %9, metadata !1560, metadata !DIExpression()) #28, !dbg !2749
  %10 = load i32, i32* %7, align 4, !dbg !2754, !tbaa !830
  %11 = lshr i32 %10, %9, !dbg !2755
  %12 = and i32 %11, 1, !dbg !2756
  call void @llvm.dbg.value(metadata i32 %12, metadata !1561, metadata !DIExpression()) #28, !dbg !2749
  %13 = xor i32 %12, 1, !dbg !2757
  %14 = shl i32 %13, %9, !dbg !2758
  %15 = xor i32 %14, %10, !dbg !2759
  store i32 %15, i32* %7, align 4, !dbg !2759, !tbaa !830
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !2760
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2761
  ret i8* %16, !dbg !2762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2763 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()) #28, !dbg !2767
  call void @llvm.dbg.value(metadata i8 58, metadata !2742, metadata !DIExpression()) #28, !dbg !2767
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()) #28, !dbg !2769
  call void @llvm.dbg.value(metadata i64 -1, metadata !2715, metadata !DIExpression()) #28, !dbg !2769
  call void @llvm.dbg.value(metadata i8 58, metadata !2716, metadata !DIExpression()) #28, !dbg !2769
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2771
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #28, !dbg !2771
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2717, metadata !DIExpression()) #28, !dbg !2772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !2773, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1553, metadata !DIExpression()) #28, !dbg !2774
  call void @llvm.dbg.value(metadata i8 58, metadata !1554, metadata !DIExpression()) #28, !dbg !2774
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()) #28, !dbg !2774
  call void @llvm.dbg.value(metadata i8 58, metadata !1556, metadata !DIExpression()) #28, !dbg !2774
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2776
  call void @llvm.dbg.value(metadata i32* %4, metadata !1558, metadata !DIExpression()) #28, !dbg !2774
  call void @llvm.dbg.value(metadata i32 26, metadata !1560, metadata !DIExpression()) #28, !dbg !2774
  %5 = load i32, i32* %4, align 4, !dbg !2777, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %5, metadata !1561, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !2774
  %6 = or i32 %5, 67108864, !dbg !2778
  store i32 %6, i32* %4, align 4, !dbg !2778, !tbaa !830
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #28, !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #28, !dbg !2780
  ret i8* %7, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2782 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %1, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()) #28, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()) #28, !dbg !2787
  call void @llvm.dbg.value(metadata i8 58, metadata !2716, metadata !DIExpression()) #28, !dbg !2787
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2789
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2717, metadata !DIExpression()) #28, !dbg !2790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !2791, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1553, metadata !DIExpression()) #28, !dbg !2792
  call void @llvm.dbg.value(metadata i8 58, metadata !1554, metadata !DIExpression()) #28, !dbg !2792
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()) #28, !dbg !2792
  call void @llvm.dbg.value(metadata i8 58, metadata !1556, metadata !DIExpression()) #28, !dbg !2792
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2794
  call void @llvm.dbg.value(metadata i32* %5, metadata !1558, metadata !DIExpression()) #28, !dbg !2792
  call void @llvm.dbg.value(metadata i32 26, metadata !1560, metadata !DIExpression()) #28, !dbg !2792
  %6 = load i32, i32* %5, align 4, !dbg !2795, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %6, metadata !1561, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !2792
  %7 = or i32 %6, 67108864, !dbg !2796
  store i32 %7, i32* %5, align 4, !dbg !2796, !tbaa !830
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #28, !dbg !2797
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2798
  ret i8* %8, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2800 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2617, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %0, metadata !2802, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i32 %1, metadata !2803, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %2, metadata !2804, metadata !DIExpression()), !dbg !2808
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2809
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2809
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2805, metadata !DIExpression()), !dbg !2810
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2811
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2811
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2812), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %1, metadata !2612, metadata !DIExpression()) #28, !dbg !2815
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2815
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2806, !alias.scope !2812
  %8 = icmp eq i32 %1, 10, !dbg !2816
  br i1 %8, label %9, label %10, !dbg !2817

9:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2818, !noalias !2812
  unreachable, !dbg !2818

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2617, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2815
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2811
  store i32 %1, i32* %11, align 8, !dbg !2811, !tbaa.struct !2722
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2811
  %13 = bitcast i32* %12 to i8*, !dbg !2811
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2811, !tbaa.struct !2819
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2811
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1553, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8 58, metadata !1554, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8 58, metadata !1556, metadata !DIExpression()), !dbg !2820
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2822
  call void @llvm.dbg.value(metadata i32* %14, metadata !1558, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i32 26, metadata !1560, metadata !DIExpression()), !dbg !2820
  %15 = load i32, i32* %14, align 4, !dbg !2823, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %15, metadata !1561, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2820
  %16 = or i32 %15, 67108864, !dbg !2824
  store i32 %16, i32* %14, align 4, !dbg !2824, !tbaa !830
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2825
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2826
  ret i8* %17, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2828 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2832, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %1, metadata !2833, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %2, metadata !2834, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %3, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression()) #28, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %1, metadata !2842, metadata !DIExpression()) #28, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %2, metadata !2843, metadata !DIExpression()) #28, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %3, metadata !2844, metadata !DIExpression()) #28, !dbg !2847
  call void @llvm.dbg.value(metadata i64 -1, metadata !2845, metadata !DIExpression()) #28, !dbg !2847
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2849
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2849
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2846, metadata !DIExpression()) #28, !dbg !2850
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !2851, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1594, metadata !DIExpression()) #28, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %1, metadata !1595, metadata !DIExpression()) #28, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %2, metadata !1596, metadata !DIExpression()) #28, !dbg !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1594, metadata !DIExpression()) #28, !dbg !2852
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2854
  store i32 10, i32* %7, align 8, !dbg !2855, !tbaa !1535
  %8 = icmp ne i8* %1, null, !dbg !2856
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2857
  br i1 %10, label %12, label %11, !dbg !2857

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !2858
  unreachable, !dbg !2858

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2859
  store i8* %1, i8** %13, align 8, !dbg !2860, !tbaa !1609
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2861
  store i8* %2, i8** %14, align 8, !dbg !2862, !tbaa !1612
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #28, !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2864
  ret i8* %15, !dbg !2865
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2838 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %1, metadata !2842, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %2, metadata !2843, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %3, metadata !2844, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %4, metadata !2845, metadata !DIExpression()), !dbg !2866
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2867
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #28, !dbg !2867
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2846, metadata !DIExpression()), !dbg !2868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2869, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1594, metadata !DIExpression()) #28, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %1, metadata !1595, metadata !DIExpression()) #28, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %2, metadata !1596, metadata !DIExpression()) #28, !dbg !2870
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1594, metadata !DIExpression()) #28, !dbg !2870
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2872
  store i32 10, i32* %8, align 8, !dbg !2873, !tbaa !1535
  %9 = icmp ne i8* %1, null, !dbg !2874
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2875
  br i1 %11, label %13, label %12, !dbg !2875

12:                                               ; preds = %5
  tail call void @abort() #30, !dbg !2876
  unreachable, !dbg !2876

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2877
  store i8* %1, i8** %14, align 8, !dbg !2878, !tbaa !1609
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2879
  store i8* %2, i8** %15, align 8, !dbg !2880, !tbaa !1612
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2881
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #28, !dbg !2882
  ret i8* %16, !dbg !2883
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2884 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8* %1, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8* %2, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 0, metadata !2832, metadata !DIExpression()) #28, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %0, metadata !2833, metadata !DIExpression()) #28, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %1, metadata !2834, metadata !DIExpression()) #28, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %2, metadata !2835, metadata !DIExpression()) #28, !dbg !2892
  call void @llvm.dbg.value(metadata i32 0, metadata !2837, metadata !DIExpression()) #28, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %0, metadata !2842, metadata !DIExpression()) #28, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %1, metadata !2843, metadata !DIExpression()) #28, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %2, metadata !2844, metadata !DIExpression()) #28, !dbg !2894
  call void @llvm.dbg.value(metadata i64 -1, metadata !2845, metadata !DIExpression()) #28, !dbg !2894
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2896
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2896
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2846, metadata !DIExpression()) #28, !dbg !2897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !2898, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1594, metadata !DIExpression()) #28, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %0, metadata !1595, metadata !DIExpression()) #28, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %1, metadata !1596, metadata !DIExpression()) #28, !dbg !2899
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1594, metadata !DIExpression()) #28, !dbg !2899
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2901
  store i32 10, i32* %6, align 8, !dbg !2902, !tbaa !1535
  %7 = icmp ne i8* %0, null, !dbg !2903
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2904
  br i1 %9, label %11, label %10, !dbg !2904

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !2905
  unreachable, !dbg !2905

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2906
  store i8* %0, i8** %12, align 8, !dbg !2907, !tbaa !1609
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2908
  store i8* %1, i8** %13, align 8, !dbg !2909, !tbaa !1612
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #28, !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2911
  ret i8* %14, !dbg !2912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2913 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2917, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %1, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %2, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %3, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 0, metadata !2837, metadata !DIExpression()) #28, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %0, metadata !2842, metadata !DIExpression()) #28, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %1, metadata !2843, metadata !DIExpression()) #28, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %2, metadata !2844, metadata !DIExpression()) #28, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %3, metadata !2845, metadata !DIExpression()) #28, !dbg !2922
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2924
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2846, metadata !DIExpression()) #28, !dbg !2925
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !2926, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1594, metadata !DIExpression()) #28, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %0, metadata !1595, metadata !DIExpression()) #28, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %1, metadata !1596, metadata !DIExpression()) #28, !dbg !2927
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1594, metadata !DIExpression()) #28, !dbg !2927
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2929
  store i32 10, i32* %7, align 8, !dbg !2930, !tbaa !1535
  %8 = icmp ne i8* %0, null, !dbg !2931
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2932
  br i1 %10, label %12, label %11, !dbg !2932

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !2933
  unreachable, !dbg !2933

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2934
  store i8* %0, i8** %13, align 8, !dbg !2935, !tbaa !1609
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2936
  store i8* %1, i8** %14, align 8, !dbg !2937, !tbaa !1612
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #28, !dbg !2938
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2939
  ret i8* %15, !dbg !2940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2941 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2945, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* %1, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %2, metadata !2947, metadata !DIExpression()), !dbg !2948
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2949
  ret i8* %4, !dbg !2950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2951 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2955, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i64 %1, metadata !2956, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 0, metadata !2945, metadata !DIExpression()) #28, !dbg !2958
  call void @llvm.dbg.value(metadata i8* %0, metadata !2946, metadata !DIExpression()) #28, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()) #28, !dbg !2958
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !2960
  ret i8* %3, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2962 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %1, metadata !2967, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 %0, metadata !2945, metadata !DIExpression()) #28, !dbg !2969
  call void @llvm.dbg.value(metadata i8* %1, metadata !2946, metadata !DIExpression()) #28, !dbg !2969
  call void @llvm.dbg.value(metadata i64 -1, metadata !2947, metadata !DIExpression()) #28, !dbg !2969
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !2971
  ret i8* %3, !dbg !2972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2973 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2977, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i32 0, metadata !2966, metadata !DIExpression()) #28, !dbg !2979
  call void @llvm.dbg.value(metadata i8* %0, metadata !2967, metadata !DIExpression()) #28, !dbg !2979
  call void @llvm.dbg.value(metadata i32 0, metadata !2945, metadata !DIExpression()) #28, !dbg !2981
  call void @llvm.dbg.value(metadata i8* %0, metadata !2946, metadata !DIExpression()) #28, !dbg !2981
  call void @llvm.dbg.value(metadata i64 -1, metadata !2947, metadata !DIExpression()) #28, !dbg !2981
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !2983
  ret i8* %2, !dbg !2984
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2985 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3024, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %1, metadata !3025, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %2, metadata !3026, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %3, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8** %4, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %5, metadata !3029, metadata !DIExpression()), !dbg !3030
  %7 = icmp eq i8* %1, null, !dbg !3031
  br i1 %7, label %10, label %8, !dbg !3033

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #28, !dbg !3034
  br label %12, !dbg !3034

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.106, i64 0, i64 0), i8* %2, i8* %3) #28, !dbg !3035
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.107, i64 0, i64 0), i32 5) #28, !dbg !3036
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #28, !dbg !3036
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.108, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3037
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.109, i64 0, i64 0), i32 5) #28, !dbg !3038
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.110, i64 0, i64 0)) #28, !dbg !3038
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.108, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3039
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
  ], !dbg !3040

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.111, i64 0, i64 0), i32 5) #28, !dbg !3041
  %21 = load i8*, i8** %4, align 8, !dbg !3041, !tbaa !672
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #28, !dbg !3041
  br label %147, !dbg !3043

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.112, i64 0, i64 0), i32 5) #28, !dbg !3044
  %25 = load i8*, i8** %4, align 8, !dbg !3044, !tbaa !672
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3044
  %27 = load i8*, i8** %26, align 8, !dbg !3044, !tbaa !672
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #28, !dbg !3044
  br label %147, !dbg !3045

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.113, i64 0, i64 0), i32 5) #28, !dbg !3046
  %31 = load i8*, i8** %4, align 8, !dbg !3046, !tbaa !672
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3046
  %33 = load i8*, i8** %32, align 8, !dbg !3046, !tbaa !672
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3046
  %35 = load i8*, i8** %34, align 8, !dbg !3046, !tbaa !672
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #28, !dbg !3046
  br label %147, !dbg !3047

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.114, i64 0, i64 0), i32 5) #28, !dbg !3048
  %39 = load i8*, i8** %4, align 8, !dbg !3048, !tbaa !672
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3048
  %41 = load i8*, i8** %40, align 8, !dbg !3048, !tbaa !672
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3048
  %43 = load i8*, i8** %42, align 8, !dbg !3048, !tbaa !672
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3048
  %45 = load i8*, i8** %44, align 8, !dbg !3048, !tbaa !672
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #28, !dbg !3048
  br label %147, !dbg !3049

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.115, i64 0, i64 0), i32 5) #28, !dbg !3050
  %49 = load i8*, i8** %4, align 8, !dbg !3050, !tbaa !672
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3050
  %51 = load i8*, i8** %50, align 8, !dbg !3050, !tbaa !672
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3050
  %53 = load i8*, i8** %52, align 8, !dbg !3050, !tbaa !672
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3050
  %55 = load i8*, i8** %54, align 8, !dbg !3050, !tbaa !672
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3050
  %57 = load i8*, i8** %56, align 8, !dbg !3050, !tbaa !672
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #28, !dbg !3050
  br label %147, !dbg !3051

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.116, i64 0, i64 0), i32 5) #28, !dbg !3052
  %61 = load i8*, i8** %4, align 8, !dbg !3052, !tbaa !672
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3052
  %63 = load i8*, i8** %62, align 8, !dbg !3052, !tbaa !672
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3052
  %65 = load i8*, i8** %64, align 8, !dbg !3052, !tbaa !672
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3052
  %67 = load i8*, i8** %66, align 8, !dbg !3052, !tbaa !672
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3052
  %69 = load i8*, i8** %68, align 8, !dbg !3052, !tbaa !672
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3052
  %71 = load i8*, i8** %70, align 8, !dbg !3052, !tbaa !672
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #28, !dbg !3052
  br label %147, !dbg !3053

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.117, i64 0, i64 0), i32 5) #28, !dbg !3054
  %75 = load i8*, i8** %4, align 8, !dbg !3054, !tbaa !672
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3054
  %77 = load i8*, i8** %76, align 8, !dbg !3054, !tbaa !672
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3054
  %79 = load i8*, i8** %78, align 8, !dbg !3054, !tbaa !672
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3054
  %81 = load i8*, i8** %80, align 8, !dbg !3054, !tbaa !672
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3054
  %83 = load i8*, i8** %82, align 8, !dbg !3054, !tbaa !672
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3054
  %85 = load i8*, i8** %84, align 8, !dbg !3054, !tbaa !672
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3054
  %87 = load i8*, i8** %86, align 8, !dbg !3054, !tbaa !672
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #28, !dbg !3054
  br label %147, !dbg !3055

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.118, i64 0, i64 0), i32 5) #28, !dbg !3056
  %91 = load i8*, i8** %4, align 8, !dbg !3056, !tbaa !672
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3056
  %93 = load i8*, i8** %92, align 8, !dbg !3056, !tbaa !672
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3056
  %95 = load i8*, i8** %94, align 8, !dbg !3056, !tbaa !672
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3056
  %97 = load i8*, i8** %96, align 8, !dbg !3056, !tbaa !672
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3056
  %99 = load i8*, i8** %98, align 8, !dbg !3056, !tbaa !672
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3056
  %101 = load i8*, i8** %100, align 8, !dbg !3056, !tbaa !672
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3056
  %103 = load i8*, i8** %102, align 8, !dbg !3056, !tbaa !672
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3056
  %105 = load i8*, i8** %104, align 8, !dbg !3056, !tbaa !672
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #28, !dbg !3056
  br label %147, !dbg !3057

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.119, i64 0, i64 0), i32 5) #28, !dbg !3058
  %109 = load i8*, i8** %4, align 8, !dbg !3058, !tbaa !672
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3058
  %111 = load i8*, i8** %110, align 8, !dbg !3058, !tbaa !672
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3058
  %113 = load i8*, i8** %112, align 8, !dbg !3058, !tbaa !672
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3058
  %115 = load i8*, i8** %114, align 8, !dbg !3058, !tbaa !672
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3058
  %117 = load i8*, i8** %116, align 8, !dbg !3058, !tbaa !672
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3058
  %119 = load i8*, i8** %118, align 8, !dbg !3058, !tbaa !672
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3058
  %121 = load i8*, i8** %120, align 8, !dbg !3058, !tbaa !672
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3058
  %123 = load i8*, i8** %122, align 8, !dbg !3058, !tbaa !672
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3058
  %125 = load i8*, i8** %124, align 8, !dbg !3058, !tbaa !672
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #28, !dbg !3058
  br label %147, !dbg !3059

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.120, i64 0, i64 0), i32 5) #28, !dbg !3060
  %129 = load i8*, i8** %4, align 8, !dbg !3060, !tbaa !672
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3060
  %131 = load i8*, i8** %130, align 8, !dbg !3060, !tbaa !672
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3060
  %133 = load i8*, i8** %132, align 8, !dbg !3060, !tbaa !672
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3060
  %135 = load i8*, i8** %134, align 8, !dbg !3060, !tbaa !672
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3060
  %137 = load i8*, i8** %136, align 8, !dbg !3060, !tbaa !672
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3060
  %139 = load i8*, i8** %138, align 8, !dbg !3060, !tbaa !672
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3060
  %141 = load i8*, i8** %140, align 8, !dbg !3060, !tbaa !672
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3060
  %143 = load i8*, i8** %142, align 8, !dbg !3060, !tbaa !672
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3060
  %145 = load i8*, i8** %144, align 8, !dbg !3060, !tbaa !672
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #28, !dbg !3060
  br label %147, !dbg !3061

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3063 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8* %1, metadata !3068, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8* %2, metadata !3069, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8* %3, metadata !3070, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8** %4, metadata !3071, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 0, metadata !3072, metadata !DIExpression()), !dbg !3073
  br label %6, !dbg !3074

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3076
  call void @llvm.dbg.value(metadata i64 %7, metadata !3072, metadata !DIExpression()), !dbg !3073
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3077
  %9 = load i8*, i8** %8, align 8, !dbg !3077, !tbaa !672
  %10 = icmp eq i8* %9, null, !dbg !3079
  %11 = add i64 %7, 1, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %11, metadata !3072, metadata !DIExpression()), !dbg !3073
  br i1 %10, label %12, label %6, !dbg !3079, !llvm.loop !3081

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3083
  ret void, !dbg !3084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3085 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3096, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* %1, metadata !3097, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* %2, metadata !3098, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* %3, metadata !3099, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3100, metadata !DIExpression()), !dbg !3104
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3105
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3105
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3102, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 0, metadata !3101, metadata !DIExpression()), !dbg !3104
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3101, metadata !DIExpression()), !dbg !3104
  %11 = load i32, i32* %8, align 8, !dbg !3107
  %12 = icmp ult i32 %11, 41, !dbg !3107
  br i1 %12, label %13, label %18, !dbg !3107

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3107
  %15 = zext i32 %11 to i64, !dbg !3107
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3107
  %17 = add nuw nsw i32 %11, 8, !dbg !3107
  store i32 %17, i32* %8, align 8, !dbg !3107
  br label %21, !dbg !3107

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3107
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3107
  store i8* %20, i8** %9, align 8, !dbg !3107
  br label %21, !dbg !3107

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3107
  %25 = load i8*, i8** %24, align 8, !dbg !3107
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3110
  store i8* %25, i8** %26, align 16, !dbg !3111, !tbaa !672
  %27 = icmp eq i8* %25, null, !dbg !3112
  br i1 %27, label %30, label %28, !dbg !3113

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3101, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 1, metadata !3101, metadata !DIExpression()), !dbg !3104
  %29 = icmp ult i32 %22, 41, !dbg !3107
  br i1 %29, label %35, label %32, !dbg !3107

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3114
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3115
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3116
  ret void, !dbg !3116

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3107
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3107
  store i8* %34, i8** %9, align 8, !dbg !3107
  br label %40, !dbg !3107

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3107
  %37 = zext i32 %22 to i64, !dbg !3107
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3107
  %39 = add nuw nsw i32 %22, 8, !dbg !3107
  store i32 %39, i32* %8, align 8, !dbg !3107
  br label %40, !dbg !3107

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3107
  %44 = load i8*, i8** %43, align 8, !dbg !3107
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3110
  store i8* %44, i8** %45, align 8, !dbg !3111, !tbaa !672
  %46 = icmp eq i8* %44, null, !dbg !3112
  br i1 %46, label %30, label %47, !dbg !3113

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3101, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 2, metadata !3101, metadata !DIExpression()), !dbg !3104
  %48 = icmp ult i32 %41, 41, !dbg !3107
  br i1 %48, label %52, label %49, !dbg !3107

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3107
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3107
  store i8* %51, i8** %9, align 8, !dbg !3107
  br label %57, !dbg !3107

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3107
  %54 = zext i32 %41 to i64, !dbg !3107
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3107
  %56 = add nuw nsw i32 %41, 8, !dbg !3107
  store i32 %56, i32* %8, align 8, !dbg !3107
  br label %57, !dbg !3107

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3107
  %61 = load i8*, i8** %60, align 8, !dbg !3107
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3110
  store i8* %61, i8** %62, align 16, !dbg !3111, !tbaa !672
  %63 = icmp eq i8* %61, null, !dbg !3112
  br i1 %63, label %30, label %64, !dbg !3113

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3101, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 3, metadata !3101, metadata !DIExpression()), !dbg !3104
  %65 = icmp ult i32 %58, 41, !dbg !3107
  br i1 %65, label %69, label %66, !dbg !3107

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3107
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3107
  store i8* %68, i8** %9, align 8, !dbg !3107
  br label %74, !dbg !3107

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3107
  %71 = zext i32 %58 to i64, !dbg !3107
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3107
  %73 = add nuw nsw i32 %58, 8, !dbg !3107
  store i32 %73, i32* %8, align 8, !dbg !3107
  br label %74, !dbg !3107

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3107
  %78 = load i8*, i8** %77, align 8, !dbg !3107
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3110
  store i8* %78, i8** %79, align 8, !dbg !3111, !tbaa !672
  %80 = icmp eq i8* %78, null, !dbg !3112
  br i1 %80, label %30, label %81, !dbg !3113

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3101, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 4, metadata !3101, metadata !DIExpression()), !dbg !3104
  %82 = icmp ult i32 %75, 41, !dbg !3107
  br i1 %82, label %86, label %83, !dbg !3107

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3107
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3107
  store i8* %85, i8** %9, align 8, !dbg !3107
  br label %91, !dbg !3107

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3107
  %88 = zext i32 %75 to i64, !dbg !3107
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3107
  %90 = add nuw nsw i32 %75, 8, !dbg !3107
  store i32 %90, i32* %8, align 8, !dbg !3107
  br label %91, !dbg !3107

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3107
  %95 = load i8*, i8** %94, align 8, !dbg !3107
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3110
  store i8* %95, i8** %96, align 16, !dbg !3111, !tbaa !672
  %97 = icmp eq i8* %95, null, !dbg !3112
  br i1 %97, label %30, label %98, !dbg !3113

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3101, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 5, metadata !3101, metadata !DIExpression()), !dbg !3104
  %99 = icmp ult i32 %92, 41, !dbg !3107
  br i1 %99, label %103, label %100, !dbg !3107

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3107
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3107
  store i8* %102, i8** %9, align 8, !dbg !3107
  br label %108, !dbg !3107

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3107
  %105 = zext i32 %92 to i64, !dbg !3107
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3107
  %107 = add nuw nsw i32 %92, 8, !dbg !3107
  store i32 %107, i32* %8, align 8, !dbg !3107
  br label %108, !dbg !3107

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3107
  %111 = load i8*, i8** %110, align 8, !dbg !3107
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3110
  store i8* %111, i8** %112, align 8, !dbg !3111, !tbaa !672
  %113 = icmp eq i8* %111, null, !dbg !3112
  br i1 %113, label %30, label %114, !dbg !3113

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3101, metadata !DIExpression()), !dbg !3104
  %115 = load i8*, i8** %9, align 8, !dbg !3107
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3107
  store i8* %116, i8** %9, align 8, !dbg !3107
  %117 = bitcast i8* %115 to i8**, !dbg !3107
  %118 = load i8*, i8** %117, align 8, !dbg !3107
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3110
  store i8* %118, i8** %119, align 16, !dbg !3111, !tbaa !672
  %120 = icmp eq i8* %118, null, !dbg !3112
  br i1 %120, label %30, label %121, !dbg !3113

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3101, metadata !DIExpression()), !dbg !3104
  %122 = load i8*, i8** %9, align 8, !dbg !3107
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3107
  store i8* %123, i8** %9, align 8, !dbg !3107
  %124 = bitcast i8* %122 to i8**, !dbg !3107
  %125 = load i8*, i8** %124, align 8, !dbg !3107
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3110
  store i8* %125, i8** %126, align 8, !dbg !3111, !tbaa !672
  %127 = icmp eq i8* %125, null, !dbg !3112
  br i1 %127, label %30, label %128, !dbg !3113

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3101, metadata !DIExpression()), !dbg !3104
  %129 = load i8*, i8** %9, align 8, !dbg !3107
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3107
  store i8* %130, i8** %9, align 8, !dbg !3107
  %131 = bitcast i8* %129 to i8**, !dbg !3107
  %132 = load i8*, i8** %131, align 8, !dbg !3107
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3110
  store i8* %132, i8** %133, align 16, !dbg !3111, !tbaa !672
  %134 = icmp eq i8* %132, null, !dbg !3112
  br i1 %134, label %30, label %135, !dbg !3113

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3101, metadata !DIExpression()), !dbg !3104
  %136 = load i8*, i8** %9, align 8, !dbg !3107
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3107
  store i8* %137, i8** %9, align 8, !dbg !3107
  %138 = bitcast i8* %136 to i8**, !dbg !3107
  %139 = load i8*, i8** %138, align 8, !dbg !3107
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3110
  store i8* %139, i8** %140, align 8, !dbg !3111, !tbaa !672
  %141 = icmp eq i8* %139, null, !dbg !3112
  %142 = select i1 %141, i64 9, i64 10, !dbg !3113
  br label %30, !dbg !3113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3117 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3121, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %1, metadata !3122, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %2, metadata !3123, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %3, metadata !3124, metadata !DIExpression()), !dbg !3131
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3132
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3132
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3125, metadata !DIExpression()), !dbg !3133
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3134
  call void @llvm.va_start(i8* nonnull %6), !dbg !3134
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3135
  call void @llvm.va_end(i8* nonnull %6), !dbg !3136
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3137
  ret void, !dbg !3137
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #25

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3138 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3139, !tbaa !672
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.108, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3139
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #28, !dbg !3140
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.123, i64 0, i64 0)) #28, !dbg !3140
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.124, i64 0, i64 0), i32 5) #28, !dbg !3141
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.125, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.126, i64 0, i64 0)) #28, !dbg !3141
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.127, i64 0, i64 0), i32 5) #28, !dbg !3142
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.128, i64 0, i64 0)) #28, !dbg !3142
  ret void, !dbg !3143
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3144 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3148, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %1, metadata !3149, metadata !DIExpression()), !dbg !3150
  %3 = udiv i64 9223372036854775807, %1, !dbg !3151
  %4 = icmp ult i64 %3, %0, !dbg !3151
  br i1 %4, label %5, label %6, !dbg !3153

5:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3154
  unreachable, !dbg !3154

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %7, metadata !3156, metadata !DIExpression()) #28, !dbg !3160
  %8 = tail call noalias i8* @malloc(i64 %7) #28, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %8, metadata !3159, metadata !DIExpression()) #28, !dbg !3160
  %9 = icmp eq i8* %8, null, !dbg !3163
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3165
  br i1 %11, label %12, label %13, !dbg !3165

12:                                               ; preds = %6
  tail call void @xalloc_die() #30, !dbg !3166
  unreachable, !dbg !3166

13:                                               ; preds = %6
  ret i8* %8, !dbg !3167
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3157 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3156, metadata !DIExpression()), !dbg !3168
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %2, metadata !3159, metadata !DIExpression()), !dbg !3168
  %3 = icmp eq i8* %2, null, !dbg !3170
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3171
  br i1 %5, label %6, label %7, !dbg !3171

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3172
  unreachable, !dbg !3172

7:                                                ; preds = %1
  ret i8* %2, !dbg !3173
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #26 !dbg !3174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3178, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %1, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %2, metadata !3180, metadata !DIExpression()), !dbg !3181
  %4 = udiv i64 9223372036854775807, %2, !dbg !3182
  %5 = icmp ult i64 %4, %1, !dbg !3182
  br i1 %5, label %6, label %7, !dbg !3184

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !3185
  unreachable, !dbg !3185

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()) #28, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %8, metadata !3190, metadata !DIExpression()) #28, !dbg !3191
  %9 = icmp eq i64 %8, 0, !dbg !3193
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3195
  br i1 %11, label %12, label %13, !dbg !3195

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #28, !dbg !3196
  br label %19, !dbg !3198

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #28, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %14, metadata !3187, metadata !DIExpression()) #28, !dbg !3191
  %15 = icmp eq i8* %14, null, !dbg !3200
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3202
  br i1 %17, label %18, label %19, !dbg !3202

18:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3203
  unreachable, !dbg !3203

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3191
  ret i8* %20, !dbg !3204
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3188 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %1, metadata !3190, metadata !DIExpression()), !dbg !3205
  %3 = icmp eq i64 %1, 0, !dbg !3206
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3207
  br i1 %5, label %6, label %7, !dbg !3207

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #28, !dbg !3208
  br label %13, !dbg !3209

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #28, !dbg !3210
  call void @llvm.dbg.value(metadata i8* %8, metadata !3187, metadata !DIExpression()), !dbg !3205
  %9 = icmp eq i8* %8, null, !dbg !3211
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3212
  br i1 %11, label %12, label %13, !dbg !3212

12:                                               ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3213
  unreachable, !dbg !3213

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3205
  ret i8* %14, !dbg !3214
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #26 !dbg !224 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !229, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64* %1, metadata !230, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %2, metadata !231, metadata !DIExpression()), !dbg !3215
  %4 = load i64, i64* %1, align 8, !dbg !3216, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %4, metadata !232, metadata !DIExpression()), !dbg !3215
  %5 = icmp eq i8* %0, null, !dbg !3217
  br i1 %5, label %6, label %20, !dbg !3219

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3220
  br i1 %7, label %8, label %13, !dbg !3223

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %9, metadata !232, metadata !DIExpression()), !dbg !3215
  %10 = icmp ugt i64 %2, 128, !dbg !3226
  %11 = zext i1 %10 to i64, !dbg !3226
  %12 = add nuw nsw i64 %9, %11, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %12, metadata !232, metadata !DIExpression()), !dbg !3215
  br label %13, !dbg !3228

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3215
  call void @llvm.dbg.value(metadata i64 %14, metadata !232, metadata !DIExpression()), !dbg !3215
  %15 = udiv i64 9223372036854775807, %2, !dbg !3229
  %16 = icmp ult i64 %15, %14, !dbg !3229
  br i1 %16, label %19, label %17, !dbg !3231

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !232, metadata !DIExpression()), !dbg !3215
  store i64 %14, i64* %1, align 8, !dbg !3232, !tbaa !906
  %18 = mul i64 %14, %2, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()) #28, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %28, metadata !3190, metadata !DIExpression()) #28, !dbg !3234
  br label %31, !dbg !3236

19:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3237
  unreachable, !dbg !3237

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3238
  %22 = icmp ugt i64 %21, %4, !dbg !3241
  br i1 %22, label %24, label %23, !dbg !3242

23:                                               ; preds = %20
  tail call void @xalloc_die() #30, !dbg !3243
  unreachable, !dbg !3243

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3244
  %26 = add nuw i64 %4, 1, !dbg !3245
  %27 = add i64 %26, %25, !dbg !3246
  call void @llvm.dbg.value(metadata i64 %27, metadata !232, metadata !DIExpression()), !dbg !3215
  store i64 %27, i64* %1, align 8, !dbg !3232, !tbaa !906
  %28 = mul i64 %27, %2, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()) #28, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %28, metadata !3190, metadata !DIExpression()) #28, !dbg !3234
  %29 = icmp eq i64 %28, 0, !dbg !3247
  br i1 %29, label %30, label %31, !dbg !3236

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #28, !dbg !3248
  br label %38, !dbg !3249

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #28, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %33, metadata !3187, metadata !DIExpression()) #28, !dbg !3234
  %34 = icmp eq i8* %33, null, !dbg !3251
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3252
  br i1 %36, label %37, label %38, !dbg !3252

37:                                               ; preds = %31
  tail call void @xalloc_die() #30, !dbg !3253
  unreachable, !dbg !3253

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3234
  ret i8* %39, !dbg !3254
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #26 !dbg !3255 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3257, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %0, metadata !3156, metadata !DIExpression()) #28, !dbg !3259
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %2, metadata !3159, metadata !DIExpression()) #28, !dbg !3259
  %3 = icmp eq i8* %2, null, !dbg !3262
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3263
  br i1 %5, label %6, label %7, !dbg !3263

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3264
  unreachable, !dbg !3264

7:                                                ; preds = %1
  ret i8* %2, !dbg !3265
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3266 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3270, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64* %1, metadata !3271, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8* %0, metadata !229, metadata !DIExpression()) #28, !dbg !3273
  call void @llvm.dbg.value(metadata i64* %1, metadata !230, metadata !DIExpression()) #28, !dbg !3273
  call void @llvm.dbg.value(metadata i64 1, metadata !231, metadata !DIExpression()) #28, !dbg !3273
  %3 = load i64, i64* %1, align 8, !dbg !3275, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %3, metadata !232, metadata !DIExpression()) #28, !dbg !3273
  %4 = icmp eq i8* %0, null, !dbg !3276
  br i1 %4, label %5, label %10, !dbg !3277

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3278
  br i1 %6, label %17, label %7, !dbg !3279

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !232, metadata !DIExpression()) #28, !dbg !3273
  %8 = icmp slt i64 %3, 0, !dbg !3280
  br i1 %8, label %9, label %17, !dbg !3281

9:                                                ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3282
  unreachable, !dbg !3282

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3283
  br i1 %11, label %13, label %12, !dbg !3284

12:                                               ; preds = %10
  tail call void @xalloc_die() #30, !dbg !3285
  unreachable, !dbg !3285

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3286
  %15 = add nuw nsw i64 %3, 1, !dbg !3287
  %16 = add nuw nsw i64 %15, %14, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %16, metadata !232, metadata !DIExpression()) #28, !dbg !3273
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()) #28, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %16, metadata !3190, metadata !DIExpression()) #28, !dbg !3289
  br label %17, !dbg !3291

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3292
  store i64 %18, i64* %1, align 8, !dbg !3292, !tbaa !906
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #28, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %19, metadata !3187, metadata !DIExpression()) #28, !dbg !3289
  %20 = icmp eq i8* %19, null, !dbg !3294
  br i1 %20, label %21, label %22, !dbg !3295

21:                                               ; preds = %17
  tail call void @xalloc_die() #30, !dbg !3296
  unreachable, !dbg !3296

22:                                               ; preds = %17
  ret i8* %19, !dbg !3297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3298 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3300, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %0, metadata !3302, metadata !DIExpression()) #28, !dbg !3307
  call void @llvm.dbg.value(metadata i64 1, metadata !3305, metadata !DIExpression()) #28, !dbg !3307
  %2 = icmp slt i64 %0, 0, !dbg !3309
  br i1 %2, label %6, label %3, !dbg !3311

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #28, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %4, metadata !3306, metadata !DIExpression()) #28, !dbg !3307
  %5 = icmp eq i8* %4, null, !dbg !3313
  br i1 %5, label %6, label %7, !dbg !3314

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #30, !dbg !3315
  unreachable, !dbg !3315

7:                                                ; preds = %3
  ret i8* %4, !dbg !3316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3303 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3302, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %1, metadata !3305, metadata !DIExpression()), !dbg !3317
  %3 = udiv i64 9223372036854775807, %1, !dbg !3318
  %4 = icmp ult i64 %3, %0, !dbg !3318
  br i1 %4, label %8, label %5, !dbg !3319

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #28, !dbg !3320
  call void @llvm.dbg.value(metadata i8* %6, metadata !3306, metadata !DIExpression()), !dbg !3317
  %7 = icmp eq i8* %6, null, !dbg !3321
  br i1 %7, label %8, label %9, !dbg !3322

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #30, !dbg !3323
  unreachable, !dbg !3323

9:                                                ; preds = %5
  ret i8* %6, !dbg !3324
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3325 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3329, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64 %1, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64 %1, metadata !3156, metadata !DIExpression()) #28, !dbg !3332
  %3 = tail call noalias i8* @malloc(i64 %1) #28, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %3, metadata !3159, metadata !DIExpression()) #28, !dbg !3332
  %4 = icmp eq i8* %3, null, !dbg !3335
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3336
  br i1 %6, label %7, label %8, !dbg !3336

7:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3337
  unreachable, !dbg !3337

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3338, metadata !DIExpression()) #28, !dbg !3343
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()) #28, !dbg !3343
  call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()) #28, !dbg !3343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #28, !dbg !3345
  ret i8* %3, !dbg !3346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()), !dbg !3350
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !3351
  %3 = add i64 %2, 1, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %0, metadata !3329, metadata !DIExpression()) #28, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %3, metadata !3330, metadata !DIExpression()) #28, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %3, metadata !3156, metadata !DIExpression()) #28, !dbg !3355
  %4 = tail call noalias i8* @malloc(i64 %3) #28, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %4, metadata !3159, metadata !DIExpression()) #28, !dbg !3355
  %5 = icmp eq i8* %4, null, !dbg !3358
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3359
  br i1 %7, label %8, label %9, !dbg !3359

8:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3360
  unreachable, !dbg !3360

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3338, metadata !DIExpression()) #28, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()) #28, !dbg !3361
  call void @llvm.dbg.value(metadata i64 %3, metadata !3342, metadata !DIExpression()) #28, !dbg !3361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #28, !dbg !3363
  ret i8* %4, !dbg !3364
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3365 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3366, !tbaa !830
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.141, i64 0, i64 0), i32 5) #28, !dbg !3367
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i64 0, i64 0), i8* %2) #28, !dbg !3368
  tail call void @abort() #30, !dbg !3369
  unreachable, !dbg !3369
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xreadlink(i8* %0) local_unnamed_addr #8 !dbg !3370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3372, metadata !DIExpression()), !dbg !3374
  %2 = tail call i8* @areadlink(i8* %0) #28, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %2, metadata !3373, metadata !DIExpression()), !dbg !3374
  %3 = icmp eq i8* %2, null, !dbg !3376
  br i1 %3, label %4, label %9, !dbg !3378

4:                                                ; preds = %1
  %5 = tail call i32* @__errno_location() #32, !dbg !3379
  %6 = load i32, i32* %5, align 4, !dbg !3379, !tbaa !830
  %7 = icmp eq i32 %6, 12, !dbg !3380
  br i1 %7, label %8, label %9, !dbg !3381

8:                                                ; preds = %4
  tail call void @xalloc_die() #30, !dbg !3382
  unreachable, !dbg !3382

9:                                                ; preds = %4, %1
  ret i8* %2, !dbg !3383
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3384 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3391, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8** %1, metadata !3392, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %2, metadata !3393, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64* %3, metadata !3394, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8* %4, metadata !3395, metadata !DIExpression()), !dbg !3409
  %7 = bitcast i8** %6 to i8*, !dbg !3410
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #28, !dbg !3410
  call void @llvm.dbg.value(metadata i32 0, metadata !3399, metadata !DIExpression()), !dbg !3409
  %8 = icmp ult i32 %2, 37, !dbg !3411
  br i1 %8, label %10, label %9, !dbg !3411

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.147, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.148, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #30, !dbg !3411
  unreachable, !dbg !3411

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3414
  call void @llvm.dbg.value(metadata i8** %25, metadata !3397, metadata !DIExpression()), !dbg !3409
  %12 = tail call i32* @__errno_location() #32, !dbg !3415
  store i32 0, i32* %12, align 4, !dbg !3416, !tbaa !830
  call void @llvm.dbg.value(metadata i8* %0, metadata !3400, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8 undef, metadata !3403, metadata !DIExpression()), !dbg !3417
  %13 = tail call i16** @__ctype_b_loc() #32, !dbg !3409
  %14 = load i16*, i16** %13, align 8, !tbaa !672
  br label %15, !dbg !3418

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3417
  %17 = load i8, i8* %16, align 1, !dbg !3417, !tbaa !856
  call void @llvm.dbg.value(metadata i8 %17, metadata !3403, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8* %16, metadata !3400, metadata !DIExpression()), !dbg !3417
  %18 = zext i8 %17 to i64, !dbg !3419
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3419
  %20 = load i16, i16* %19, align 2, !dbg !3419, !tbaa !1917
  %21 = and i16 %20, 8192, !dbg !3419
  %22 = icmp eq i16 %21, 0, !dbg !3418
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %23, metadata !3400, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8 undef, metadata !3403, metadata !DIExpression()), !dbg !3417
  br i1 %22, label %24, label %15, !dbg !3418, !llvm.loop !3421

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3414
  %26 = icmp eq i8 %17, 45, !dbg !3423
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #28, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %28, metadata !3398, metadata !DIExpression()), !dbg !3409
  %29 = load i8*, i8** %25, align 8, !dbg !3426, !tbaa !672
  %30 = icmp eq i8* %29, %0, !dbg !3428
  br i1 %30, label %31, label %40, !dbg !3429

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3430
  br i1 %32, label %285, label %33, !dbg !3433

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3434, !tbaa !856
  %35 = icmp eq i8 %34, 0, !dbg !3434
  br i1 %35, label %285, label %36, !dbg !3435

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3434
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #29, !dbg !3436
  %39 = icmp eq i8* %38, null, !dbg !3436
  br i1 %39, label %285, label %47, !dbg !3437

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3438, !tbaa !830
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3440

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3399, metadata !DIExpression()), !dbg !3409
  br label %43, !dbg !3441

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3409
  call void @llvm.dbg.value(metadata i32 %44, metadata !3399, metadata !DIExpression()), !dbg !3409
  %45 = icmp eq i8* %4, null, !dbg !3443
  br i1 %45, label %46, label %47, !dbg !3445

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3398, metadata !DIExpression()), !dbg !3409
  store i64 %28, i64* %3, align 8, !dbg !3446, !tbaa !906
  br label %285, !dbg !3448

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3449, !tbaa !856
  %51 = sext i8 %50 to i32, !dbg !3449
  %52 = icmp eq i8 %50, 0, !dbg !3450
  br i1 %52, label %282, label %53, !dbg !3451

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3404, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 1, metadata !3407, metadata !DIExpression()), !dbg !3452
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #29, !dbg !3453
  %55 = icmp eq i8* %54, null, !dbg !3453
  br i1 %55, label %56, label %58, !dbg !3455

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3398, metadata !DIExpression()), !dbg !3409
  store i64 %49, i64* %3, align 8, !dbg !3456, !tbaa !906
  %57 = or i32 %48, 2, !dbg !3458
  br label %285, !dbg !3459

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
  ], !dbg !3460

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #29, !dbg !3461
  %61 = icmp eq i8* %60, null, !dbg !3461
  br i1 %61, label %72, label %62, !dbg !3464

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3465
  %64 = load i8, i8* %63, align 1, !dbg !3465, !tbaa !856
  %65 = sext i8 %64 to i32, !dbg !3465
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3466

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3467
  %68 = load i8, i8* %67, align 1, !dbg !3467, !tbaa !856
  %69 = icmp eq i8 %68, 66, !dbg !3470
  %70 = select i1 %69, i64 3, i64 1, !dbg !3471
  br label %72, !dbg !3471

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3404, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 2, metadata !3407, metadata !DIExpression()), !dbg !3452
  br label %72, !dbg !3472

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3407, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 undef, metadata !3404, metadata !DIExpression()), !dbg !3452
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
  ], !dbg !3473

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 7, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 6, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3491
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #28, !dbg !3493
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3493
  %78 = mul i64 %49, %73, !dbg !3495
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3495
  call void @llvm.dbg.value(metadata i1 %77, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 6, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i1 %77, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 6, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3491
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #28, !dbg !3493
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3493
  %82 = mul i64 %79, %73, !dbg !3495
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3495
  %84 = or i1 %77, %81, !dbg !3496
  call void @llvm.dbg.value(metadata i1 %84, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i1 %84, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3491
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #28, !dbg !3493
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3493
  %87 = mul i64 %83, %73, !dbg !3495
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3495
  %89 = or i1 %84, %86, !dbg !3496
  call void @llvm.dbg.value(metadata i1 %89, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i1 %89, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3491
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #28, !dbg !3493
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3493
  %92 = mul i64 %88, %73, !dbg !3495
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3495
  %94 = or i1 %89, %91, !dbg !3496
  call void @llvm.dbg.value(metadata i1 %94, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i1 %94, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3491
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #28, !dbg !3493
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3493
  %97 = mul i64 %93, %73, !dbg !3495
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3495
  %99 = or i1 %94, %96, !dbg !3496
  call void @llvm.dbg.value(metadata i1 %99, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i1 %99, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3491
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #28, !dbg !3493
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3493
  %102 = mul i64 %98, %73, !dbg !3495
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3495
  %104 = or i1 %99, %101, !dbg !3496
  call void @llvm.dbg.value(metadata i1 %104, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i1 %104, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3491
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #28, !dbg !3493
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3493
  %107 = mul i64 %103, %73, !dbg !3495
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3495
  %109 = or i1 %104, %106, !dbg !3496
  call void @llvm.dbg.value(metadata i1 %109, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3482
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3482
  br label %272, !dbg !3497

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 8, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 7, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3500
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #28, !dbg !3502
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3502
  %113 = mul i64 %49, %73, !dbg !3503
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3503
  call void @llvm.dbg.value(metadata i1 %112, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 7, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i1 %112, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 7, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 6, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3500
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #28, !dbg !3502
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3502
  %117 = mul i64 %114, %73, !dbg !3503
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3503
  %119 = or i1 %112, %116, !dbg !3504
  call void @llvm.dbg.value(metadata i1 %119, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 6, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i1 %119, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 6, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3500
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #28, !dbg !3502
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3502
  %122 = mul i64 %118, %73, !dbg !3503
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3503
  %124 = or i1 %119, %121, !dbg !3504
  call void @llvm.dbg.value(metadata i1 %124, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i1 %124, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3500
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #28, !dbg !3502
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3502
  %127 = mul i64 %123, %73, !dbg !3503
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3503
  %129 = or i1 %124, %126, !dbg !3504
  call void @llvm.dbg.value(metadata i1 %129, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i1 %129, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3500
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #28, !dbg !3502
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3502
  %132 = mul i64 %128, %73, !dbg !3503
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3503
  %134 = or i1 %129, %131, !dbg !3504
  call void @llvm.dbg.value(metadata i1 %134, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i1 %134, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3500
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #28, !dbg !3502
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3502
  %137 = mul i64 %133, %73, !dbg !3503
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3503
  %139 = or i1 %134, %136, !dbg !3504
  call void @llvm.dbg.value(metadata i1 %139, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i1 %139, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3500
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #28, !dbg !3502
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3502
  %142 = mul i64 %138, %73, !dbg !3503
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3503
  %144 = or i1 %139, %141, !dbg !3504
  call void @llvm.dbg.value(metadata i1 %144, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i1 %144, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3500
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #28, !dbg !3502
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3502
  %147 = mul i64 %143, %73, !dbg !3503
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3503
  %149 = or i1 %144, %146, !dbg !3504
  call void @llvm.dbg.value(metadata i1 %149, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3498
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3498
  br label %272, !dbg !3497

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3507
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3507
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #28, !dbg !3509
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3509
  %153 = mul i64 %49, %73, !dbg !3510
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3510
  call void @llvm.dbg.value(metadata i1 %152, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i1 %152, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3507
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3507
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #28, !dbg !3509
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3509
  %157 = mul i64 %154, %73, !dbg !3510
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3510
  %159 = or i1 %152, %156, !dbg !3511
  call void @llvm.dbg.value(metadata i1 %159, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i1 %159, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3507
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3507
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #28, !dbg !3509
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3509
  %162 = mul i64 %158, %73, !dbg !3510
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3510
  %164 = or i1 %159, %161, !dbg !3511
  call void @llvm.dbg.value(metadata i1 %164, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i1 %164, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3507
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3507
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #28, !dbg !3509
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3509
  %167 = mul i64 %163, %73, !dbg !3510
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3510
  %169 = or i1 %164, %166, !dbg !3511
  call void @llvm.dbg.value(metadata i1 %169, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i1 %169, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3507
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3507
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #28, !dbg !3509
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3509
  %172 = mul i64 %168, %73, !dbg !3510
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3510
  %174 = or i1 %169, %171, !dbg !3511
  call void @llvm.dbg.value(metadata i1 %174, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3505
  br label %272, !dbg !3497

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 6, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3514
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3514
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #28, !dbg !3516
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3516
  %178 = mul i64 %49, %73, !dbg !3517
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3517
  call void @llvm.dbg.value(metadata i1 %177, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i1 %177, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 5, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3514
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3514
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #28, !dbg !3516
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3516
  %182 = mul i64 %179, %73, !dbg !3517
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3517
  %184 = or i1 %177, %181, !dbg !3518
  call void @llvm.dbg.value(metadata i1 %184, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i1 %184, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 4, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3514
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3514
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #28, !dbg !3516
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3516
  %187 = mul i64 %183, %73, !dbg !3517
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3517
  %189 = or i1 %184, %186, !dbg !3518
  call void @llvm.dbg.value(metadata i1 %189, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i1 %189, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3514
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3514
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #28, !dbg !3516
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3516
  %192 = mul i64 %188, %73, !dbg !3517
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3517
  %194 = or i1 %189, %191, !dbg !3518
  call void @llvm.dbg.value(metadata i1 %194, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i1 %194, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3514
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3514
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #28, !dbg !3516
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3516
  %197 = mul i64 %193, %73, !dbg !3517
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3517
  %199 = or i1 %194, %196, !dbg !3518
  call void @llvm.dbg.value(metadata i1 %199, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i1 %199, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3514
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3514
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #28, !dbg !3516
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3516
  %202 = mul i64 %198, %73, !dbg !3517
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3517
  %204 = or i1 %199, %201, !dbg !3518
  call void @llvm.dbg.value(metadata i1 %204, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3512
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3512
  br label %272, !dbg !3497

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3519
  call void @llvm.dbg.value(metadata i32 512, metadata !3490, metadata !DIExpression()) #28, !dbg !3519
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #28, !dbg !3521
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3521
  %208 = shl i64 %49, 9, !dbg !3522
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3522
  call void @llvm.dbg.value(metadata i1 %207, metadata !3408, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3452
  br label %272, !dbg !3523

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3524
  call void @llvm.dbg.value(metadata i32 1024, metadata !3490, metadata !DIExpression()) #28, !dbg !3524
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #28, !dbg !3526
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3526
  %213 = shl i64 %49, 10, !dbg !3527
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3527
  call void @llvm.dbg.value(metadata i1 %212, metadata !3408, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3452
  br label %272, !dbg !3528

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3479, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 undef, metadata !3480, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3531
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3531
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #28, !dbg !3533
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3533
  %218 = mul i64 %49, %73, !dbg !3534
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3534
  call void @llvm.dbg.value(metadata i1 %217, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i1 %217, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3531
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3531
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #28, !dbg !3533
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3533
  %222 = mul i64 %219, %73, !dbg !3534
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3534
  %224 = or i1 %217, %221, !dbg !3535
  call void @llvm.dbg.value(metadata i1 %224, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i1 %224, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3531
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3531
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #28, !dbg !3533
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3533
  %227 = mul i64 %223, %73, !dbg !3534
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3534
  %229 = or i1 %224, %226, !dbg !3535
  call void @llvm.dbg.value(metadata i1 %229, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3529
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3529
  br label %272, !dbg !3497

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3479, metadata !DIExpression()) #28, !dbg !3536
  call void @llvm.dbg.value(metadata i32 undef, metadata !3480, metadata !DIExpression()) #28, !dbg !3536
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()) #28, !dbg !3536
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3536
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3538
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3538
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #28, !dbg !3540
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3540
  %233 = mul i64 %49, %73, !dbg !3541
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3541
  call void @llvm.dbg.value(metadata i1 %232, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3536
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()) #28, !dbg !3536
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #28, !dbg !3540
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3540
  %237 = mul i64 %234, %73, !dbg !3541
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3541
  %239 = or i1 %232, %236, !dbg !3542
  call void @llvm.dbg.value(metadata i1 %239, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3536
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3536
  br label %272, !dbg !3497

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3479, metadata !DIExpression()) #28, !dbg !3543
  call void @llvm.dbg.value(metadata i32 undef, metadata !3480, metadata !DIExpression()) #28, !dbg !3543
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()) #28, !dbg !3543
  call void @llvm.dbg.value(metadata i32 3, metadata !3481, metadata !DIExpression()) #28, !dbg !3543
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3545
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3545
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #28, !dbg !3547
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3547
  %243 = mul i64 %49, %73, !dbg !3548
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3548
  call void @llvm.dbg.value(metadata i1 %242, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3543
  call void @llvm.dbg.value(metadata i32 2, metadata !3481, metadata !DIExpression()) #28, !dbg !3543
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #28, !dbg !3547
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3547
  %247 = mul i64 %244, %73, !dbg !3548
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3548
  %249 = or i1 %242, %246, !dbg !3549
  call void @llvm.dbg.value(metadata i1 %249, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3543
  call void @llvm.dbg.value(metadata i32 1, metadata !3481, metadata !DIExpression()) #28, !dbg !3543
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #28, !dbg !3547
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3547
  %252 = mul i64 %248, %73, !dbg !3548
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3548
  %254 = or i1 %249, %251, !dbg !3549
  call void @llvm.dbg.value(metadata i1 %254, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3543
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()) #28, !dbg !3543
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #28, !dbg !3547
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3547
  %257 = mul i64 %253, %73, !dbg !3548
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3548
  %259 = or i1 %254, %256, !dbg !3549
  call void @llvm.dbg.value(metadata i1 %259, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3543
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3543
  br label %272, !dbg !3497

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3550
  call void @llvm.dbg.value(metadata i32 2, metadata !3490, metadata !DIExpression()) #28, !dbg !3550
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #28, !dbg !3552
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3552
  %263 = shl i64 %49, 1, !dbg !3553
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3553
  call void @llvm.dbg.value(metadata i1 %262, metadata !3408, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3452
  br label %272, !dbg !3554

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3398, metadata !DIExpression()), !dbg !3409
  store i64 %49, i64* %3, align 8, !dbg !3555, !tbaa !906
  %266 = or i32 %48, 2, !dbg !3556
  br label %285, !dbg !3557

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3479, metadata !DIExpression()) #28, !dbg !3558
  call void @llvm.dbg.value(metadata i32 undef, metadata !3480, metadata !DIExpression()) #28, !dbg !3558
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()) #28, !dbg !3558
  call void @llvm.dbg.value(metadata i32 undef, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3558
  call void @llvm.dbg.value(metadata i64* undef, metadata !3485, metadata !DIExpression()) #28, !dbg !3560
  call void @llvm.dbg.value(metadata i32 undef, metadata !3490, metadata !DIExpression()) #28, !dbg !3560
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #28, !dbg !3562
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3562
  call void @llvm.dbg.value(metadata i32 undef, metadata !3481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !3558
  call void @llvm.dbg.value(metadata i1 %269, metadata !3474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !3558
  %270 = mul i64 %49, %73, !dbg !3563
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3563
  br label %272, !dbg !3497

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3409
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %275, metadata !3408, metadata !DIExpression()), !dbg !3452
  %276 = or i32 %48, %275, !dbg !3497
  call void @llvm.dbg.value(metadata i32 %276, metadata !3399, metadata !DIExpression()), !dbg !3409
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3565
  store i8* %277, i8** %25, align 8, !dbg !3565, !tbaa !672
  %278 = load i8, i8* %277, align 1, !dbg !3566, !tbaa !856
  %279 = icmp eq i8 %278, 0, !dbg !3566
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3568
  call void @llvm.dbg.value(metadata i32 %281, metadata !3399, metadata !DIExpression()), !dbg !3409
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3569
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3570
  call void @llvm.dbg.value(metadata i32 %284, metadata !3399, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %283, metadata !3398, metadata !DIExpression()), !dbg !3409
  store i64 %283, i64* %3, align 8, !dbg !3571, !tbaa !906
  br label %285, !dbg !3572

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3409
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #28, !dbg !3573
  ret i32 %286, !dbg !3573
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3574 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !3578 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3580, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %1, metadata !3581, metadata !DIExpression()), !dbg !3586
  %3 = icmp eq i64 %0, 0, !dbg !3587
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3588
  br i1 %5, label %11, label %6, !dbg !3588

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3583, metadata !DIExpression()), !dbg !3589
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3590
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3590
  br i1 %8, label %9, label %11, !dbg !3592

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #32, !dbg !3593
  store i32 12, i32* %10, align 4, !dbg !3595, !tbaa !830
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3580, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %12, metadata !3581, metadata !DIExpression()), !dbg !3586
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #28, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %14, metadata !3582, metadata !DIExpression()), !dbg !3586
  br label %15, !dbg !3597

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3586
  ret i8* %16, !dbg !3598
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3599 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3615, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8* %1, metadata !3616, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %2, metadata !3617, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3618, metadata !DIExpression()), !dbg !3624
  %6 = bitcast i32* %5 to i8*, !dbg !3625
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #28, !dbg !3625
  %7 = icmp eq i32* %0, null, !dbg !3626
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3628
  call void @llvm.dbg.value(metadata i32* %8, metadata !3615, metadata !DIExpression()), !dbg !3624
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #28, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %9, metadata !3619, metadata !DIExpression()), !dbg !3624
  %10 = icmp ugt i64 %9, -3, !dbg !3630
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3631
  br i1 %12, label %13, label %18, !dbg !3631

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #28, !dbg !3632
  br i1 %14, label %18, label %15, !dbg !3633

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3634, !tbaa !856
  call void @llvm.dbg.value(metadata i8 %16, metadata !3621, metadata !DIExpression()), !dbg !3635
  %17 = zext i8 %16 to i32, !dbg !3636
  store i32 %17, i32* %8, align 4, !dbg !3637, !tbaa !830
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3624
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #28, !dbg !3638
  ret i64 %19, !dbg !3638
}

; Function Attrs: nounwind
declare !dbg !3639 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @areadlink(i8* %0) local_unnamed_addr #8 !dbg !3643 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3645, metadata !DIExpression()), !dbg !3646
  %2 = tail call i8* @careadlinkat(i32 -100, i8* %0, i8* null, i64 0, %struct.allocator* null, i64 (i32, i8*, i8*, i64)* nonnull @careadlinkatcwd) #28, !dbg !3647
  ret i8* %2, !dbg !3648
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @careadlinkatcwd(i32 %0, i8* nocapture readonly %1, i8* nocapture %2, i64 %3) #8 !dbg !3649 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %1, metadata !3657, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %2, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %3, metadata !3659, metadata !DIExpression()), !dbg !3660
  %5 = icmp eq i32 %0, -100, !dbg !3661
  br i1 %5, label %7, label %6, !dbg !3663

6:                                                ; preds = %4
  tail call void @abort() #30, !dbg !3664
  unreachable, !dbg !3664

7:                                                ; preds = %4
  %8 = tail call i64 @readlink(i8* %1, i8* %2, i64 %3) #28, !dbg !3665
  ret i64 %8, !dbg !3666
}

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(i8* nocapture noundef readonly, i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @careadlinkat(i32 %0, i8* %1, i8* %2, i64 %3, %struct.allocator* readonly %4, i64 (i32, i8*, i8*, i64)* nocapture %5) local_unnamed_addr #8 !dbg !3667 {
  %7 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3680, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8* %1, metadata !3681, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8* %2, metadata !3682, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %3, metadata !3683, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata %struct.allocator* %4, metadata !3684, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*, i64)* %5, metadata !3685, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !3688, metadata !DIExpression()), !dbg !3707
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !3708
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %8) #28, !dbg !3708
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !3689, metadata !DIExpression()), !dbg !3709
  %9 = icmp eq %struct.allocator* %4, null, !dbg !3710
  %10 = select i1 %9, %struct.allocator* @stdlib_allocator, %struct.allocator* %4, !dbg !3712
  call void @llvm.dbg.value(metadata %struct.allocator* %10, metadata !3684, metadata !DIExpression()), !dbg !3707
  %11 = icmp eq i64 %3, 0, !dbg !3713
  %12 = select i1 %11, i64 1024, i64 %3, !dbg !3715
  %13 = select i1 %11, i8* %8, i8* %2, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %13, metadata !3682, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %12, metadata !3683, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8* %13, metadata !3686, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %12, metadata !3687, metadata !DIExpression()), !dbg !3707
  %14 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 2
  %15 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 0
  br label %16, !dbg !3716

16:                                               ; preds = %64, %6
  %17 = phi i64 [ %12, %6 ], [ %65, %64 ], !dbg !3707
  %18 = phi i8* [ %13, %6 ], [ %67, %64 ], !dbg !3707
  call void @llvm.dbg.value(metadata i8* %18, metadata !3686, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %17, metadata !3687, metadata !DIExpression()), !dbg !3707
  %19 = call i64 %5(i32 %0, i8* %1, i8* %18, i64 %17) #28, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %19, metadata !3693, metadata !DIExpression()), !dbg !3718
  %20 = icmp slt i64 %19, 0, !dbg !3719
  br i1 %20, label %21, label %29, !dbg !3720

21:                                               ; preds = %16
  %22 = tail call i32* @__errno_location() #32, !dbg !3721
  %23 = load i32, i32* %22, align 4, !dbg !3721, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %23, metadata !3696, metadata !DIExpression()), !dbg !3722
  %24 = icmp eq i32 %23, 34, !dbg !3723
  br i1 %24, label %29, label %25, !dbg !3725

25:                                               ; preds = %21
  %26 = icmp eq i8* %18, %13, !dbg !3726
  br i1 %26, label %77, label %27, !dbg !3729

27:                                               ; preds = %25
  %28 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !3730, !tbaa !3732
  call void %28(i8* %18) #28, !dbg !3734
  store i32 %23, i32* %22, align 4, !dbg !3735, !tbaa !830
  br label %77, !dbg !3736

29:                                               ; preds = %21, %16
  call void @llvm.dbg.value(metadata i64 %19, metadata !3695, metadata !DIExpression()), !dbg !3718
  %30 = icmp ult i64 %19, %17, !dbg !3737
  br i1 %30, label %31, label %52, !dbg !3738

31:                                               ; preds = %29
  %32 = add nuw i64 %19, 1, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %32, metadata !3695, metadata !DIExpression()), !dbg !3718
  %33 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !3740
  store i8 0, i8* %33, align 1, !dbg !3741, !tbaa !856
  %34 = icmp eq i8* %18, %8, !dbg !3742
  br i1 %34, label %35, label %40, !dbg !3743

35:                                               ; preds = %31
  %36 = load i8* (i64)*, i8* (i64)** %15, align 8, !dbg !3744, !tbaa !3745
  %37 = call i8* %36(i64 %32) #28, !dbg !3746
  call void @llvm.dbg.value(metadata i8* %37, metadata !3699, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %32, metadata !3687, metadata !DIExpression()), !dbg !3707
  %38 = icmp eq i8* %37, null, !dbg !3748
  br i1 %38, label %69, label %39, !dbg !3750

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %37, metadata !3751, metadata !DIExpression()) #28, !dbg !3756
  call void @llvm.dbg.value(metadata i8* %18, metadata !3754, metadata !DIExpression()) #28, !dbg !3756
  call void @llvm.dbg.value(metadata i64 %32, metadata !3755, metadata !DIExpression()) #28, !dbg !3756
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %37, i8* nonnull align 16 %8, i64 %32, i1 false) #28, !dbg !3758
  call void @llvm.dbg.value(metadata i8* %37, metadata !3686, metadata !DIExpression()), !dbg !3707
  br label %77

40:                                               ; preds = %31
  %41 = icmp uge i64 %32, %17, !dbg !3759
  %42 = icmp eq i8* %18, %13
  %43 = or i1 %42, %41, !dbg !3760
  br i1 %43, label %77, label %44, !dbg !3760

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 1, !dbg !3761
  %46 = load i8* (i8*, i64)*, i8* (i8*, i64)** %45, align 8, !dbg !3761, !tbaa !3762
  %47 = icmp eq i8* (i8*, i64)* %46, null, !dbg !3763
  br i1 %47, label %77, label %48, !dbg !3764

48:                                               ; preds = %44
  %49 = call i8* %46(i8* nonnull %18, i64 %32) #28, !dbg !3765
  call void @llvm.dbg.value(metadata i8* %49, metadata !3704, metadata !DIExpression()), !dbg !3766
  %50 = icmp eq i8* %49, null, !dbg !3767
  %51 = select i1 %50, i8* %18, i8* %49, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %51, metadata !3686, metadata !DIExpression()), !dbg !3707
  br label %77, !dbg !3770

52:                                               ; preds = %29
  %53 = icmp eq i8* %18, %13, !dbg !3771
  br i1 %53, label %56, label %54, !dbg !3773

54:                                               ; preds = %52
  %55 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !3774, !tbaa !3732
  call void %55(i8* %18) #28, !dbg !3775
  br label %56, !dbg !3775

56:                                               ; preds = %54, %52
  %57 = icmp ult i64 %17, 4611686018427387905, !dbg !3776
  br i1 %57, label %58, label %60, !dbg !3778

58:                                               ; preds = %56
  %59 = shl nuw i64 %17, 1, !dbg !3779
  call void @llvm.dbg.value(metadata i64 %59, metadata !3687, metadata !DIExpression()), !dbg !3707
  br label %64, !dbg !3780

60:                                               ; preds = %56
  %61 = icmp sgt i64 %17, -1, !dbg !3781
  br i1 %61, label %64, label %62, !dbg !3783

62:                                               ; preds = %60
  %63 = tail call i32* @__errno_location() #32, !dbg !3784
  store i32 36, i32* %63, align 4, !dbg !3787, !tbaa !830
  br label %77, !dbg !3788

64:                                               ; preds = %58, %60
  %65 = phi i64 [ %59, %58 ], [ -9223372036854775808, %60 ], !dbg !3789
  call void @llvm.dbg.value(metadata i64 %65, metadata !3687, metadata !DIExpression()), !dbg !3707
  %66 = load i8* (i64)*, i8* (i64)** %15, align 8, !dbg !3790, !tbaa !3745
  %67 = call i8* %66(i64 %65) #28, !dbg !3791
  call void @llvm.dbg.value(metadata i8* %18, metadata !3686, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %32, metadata !3687, metadata !DIExpression()), !dbg !3707
  %68 = icmp eq i8* %67, null, !dbg !3792
  br i1 %68, label %69, label %16, !dbg !3792, !llvm.loop !3793

69:                                               ; preds = %64, %35
  %70 = phi i64 [ %32, %35 ], [ %65, %64 ]
  %71 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 3, !dbg !3795
  %72 = load void (i64)*, void (i64)** %71, align 8, !dbg !3795, !tbaa !3797
  %73 = icmp eq void (i64)* %72, null, !dbg !3798
  br i1 %73, label %75, label %74, !dbg !3799

74:                                               ; preds = %69
  call void %72(i64 %70) #28, !dbg !3800
  br label %75, !dbg !3800

75:                                               ; preds = %74, %69
  %76 = tail call i32* @__errno_location() #32, !dbg !3801
  store i32 12, i32* %76, align 4, !dbg !3802, !tbaa !830
  br label %77, !dbg !3803

77:                                               ; preds = %27, %25, %48, %44, %40, %39, %62, %75
  %78 = phi i8* [ null, %75 ], [ %18, %40 ], [ %18, %44 ], [ %51, %48 ], [ %37, %39 ], [ null, %62 ], [ null, %25 ], [ null, %27 ], !dbg !3707
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %8) #28, !dbg !3804
  ret i8* %78, !dbg !3804
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3805 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3843, metadata !DIExpression()), !dbg !3848
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #28, !dbg !3849
  call void @llvm.dbg.value(metadata i1 undef, metadata !3844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3848
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3850, metadata !DIExpression()), !dbg !3854
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3856
  %4 = load i32, i32* %3, align 8, !dbg !3856, !tbaa !3857
  %5 = and i32 %4, 32, !dbg !3859
  %6 = icmp eq i32 %5, 0, !dbg !3859
  call void @llvm.dbg.value(metadata i1 %6, metadata !3846, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3848
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #28, !dbg !3860
  %8 = icmp eq i32 %7, 0, !dbg !3861
  call void @llvm.dbg.value(metadata i1 %8, metadata !3847, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3848
  br i1 %6, label %9, label %19, !dbg !3862

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3864
  call void @llvm.dbg.value(metadata i1 %10, metadata !3844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3848
  %11 = or i1 %10, %8, !dbg !3865
  %12 = xor i1 %8, true, !dbg !3865
  %13 = sext i1 %12 to i32, !dbg !3865
  br i1 %11, label %22, label %14, !dbg !3865

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #32, !dbg !3866
  %16 = load i32, i32* %15, align 4, !dbg !3866, !tbaa !830
  %17 = icmp ne i32 %16, 9, !dbg !3867
  %18 = sext i1 %17 to i32, !dbg !3868
  br label %22, !dbg !3868

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3869

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !3871
  store i32 0, i32* %21, align 4, !dbg !3873, !tbaa !830
  br label %22, !dbg !3871

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3848
  ret i32 %23, !dbg !3874
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3875 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3877, metadata !DIExpression()), !dbg !3882
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3883
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #28, !dbg !3883
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3878, metadata !DIExpression()), !dbg !3884
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #28, !dbg !3885
  %5 = icmp eq i32 %4, 0, !dbg !3885
  br i1 %5, label %6, label %13, !dbg !3887

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3888
  %8 = load i16, i16* %7, align 16, !dbg !3888
  %9 = icmp eq i16 %8, 67, !dbg !3888
  br i1 %9, label %13, label %10, !dbg !3889

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i64 6), !dbg !3890
  %12 = icmp ne i32 %11, 0, !dbg !3891
  br label %13, !dbg !3889

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3882
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #28, !dbg !3892
  ret i1 %14, !dbg !3892
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3893 {
  %1 = tail call i8* @nl_langinfo(i32 14) #28, !dbg !3898
  call void @llvm.dbg.value(metadata i8* %1, metadata !3897, metadata !DIExpression()), !dbg !3899
  %2 = icmp eq i8* %1, null, !dbg !3900
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), i8* %1, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %3, metadata !3897, metadata !DIExpression()), !dbg !3899
  %4 = load i8, i8* %3, align 1, !dbg !3903, !tbaa !856
  %5 = icmp eq i8 %4, 0, !dbg !3907
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.165, i64 0, i64 0), i8* %3, !dbg !3908
  call void @llvm.dbg.value(metadata i8* %6, metadata !3897, metadata !DIExpression()), !dbg !3899
  ret i8* %6, !dbg !3909
}

; Function Attrs: nounwind
declare !dbg !3910 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3913 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3917, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i8* %1, metadata !3918, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %2, metadata !3919, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 %0, metadata !3921, metadata !DIExpression()) #28, !dbg !3930
  call void @llvm.dbg.value(metadata i8* %1, metadata !3924, metadata !DIExpression()) #28, !dbg !3930
  call void @llvm.dbg.value(metadata i64 %2, metadata !3925, metadata !DIExpression()) #28, !dbg !3930
  call void @llvm.dbg.value(metadata i32 %0, metadata !3932, metadata !DIExpression()) #28, !dbg !3938
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !3940
  call void @llvm.dbg.value(metadata i8* %4, metadata !3937, metadata !DIExpression()) #28, !dbg !3938
  call void @llvm.dbg.value(metadata i8* %4, metadata !3926, metadata !DIExpression()) #28, !dbg !3930
  %5 = icmp eq i8* %4, null, !dbg !3941
  br i1 %5, label %6, label %9, !dbg !3942

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3943
  br i1 %7, label %19, label %8, !dbg !3946

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3947, !tbaa !856
  br label %19, !dbg !3948

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #29, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %10, metadata !3927, metadata !DIExpression()) #28, !dbg !3950
  %11 = icmp ult i64 %10, %2, !dbg !3951
  br i1 %11, label %12, label %14, !dbg !3953

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3954
  call void @llvm.dbg.value(metadata i8* %1, metadata !3956, metadata !DIExpression()) #28, !dbg !3961
  call void @llvm.dbg.value(metadata i8* %4, metadata !3959, metadata !DIExpression()) #28, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %13, metadata !3960, metadata !DIExpression()) #28, !dbg !3961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #28, !dbg !3963
  br label %19, !dbg !3964

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3965
  br i1 %15, label %19, label %16, !dbg !3968

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3969
  call void @llvm.dbg.value(metadata i8* %1, metadata !3956, metadata !DIExpression()) #28, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %4, metadata !3959, metadata !DIExpression()) #28, !dbg !3971
  call void @llvm.dbg.value(metadata i64 %17, metadata !3960, metadata !DIExpression()) #28, !dbg !3971
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #28, !dbg !3973
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3974
  store i8 0, i8* %18, align 1, !dbg !3975, !tbaa !856
  br label %19, !dbg !3976

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3977
  ret i32 %20, !dbg !3978
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3979 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 %0, metadata !3932, metadata !DIExpression()) #28, !dbg !3983
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !3985
  call void @llvm.dbg.value(metadata i8* %2, metadata !3937, metadata !DIExpression()) #28, !dbg !3983
  ret i8* %2, !dbg !3986
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3987 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4025, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i32 0, metadata !4026, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i32 0, metadata !4028, metadata !DIExpression()), !dbg !4029
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4030
  call void @llvm.dbg.value(metadata i32 %2, metadata !4027, metadata !DIExpression()), !dbg !4029
  %3 = icmp slt i32 %2, 0, !dbg !4031
  br i1 %3, label %4, label %6, !dbg !4033

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4034
  br label %24, !dbg !4035

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4036
  %8 = icmp eq i32 %7, 0, !dbg !4036
  br i1 %8, label %13, label %9, !dbg !4038

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4039
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #28, !dbg !4040
  %12 = icmp eq i64 %11, -1, !dbg !4041
  br i1 %12, label %16, label %13, !dbg !4042

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #28, !dbg !4043
  %15 = icmp eq i32 %14, 0, !dbg !4043
  br i1 %15, label %16, label %18, !dbg !4044

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4026, metadata !DIExpression()), !dbg !4029
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %21, metadata !4028, metadata !DIExpression()), !dbg !4029
  br label %24, !dbg !4046

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #32, !dbg !4047
  %20 = load i32, i32* %19, align 4, !dbg !4047, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %20, metadata !4026, metadata !DIExpression()), !dbg !4029
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %21, metadata !4028, metadata !DIExpression()), !dbg !4029
  %22 = icmp eq i32 %20, 0, !dbg !4048
  br i1 %22, label %24, label %23, !dbg !4046

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4050, !tbaa !830
  call void @llvm.dbg.value(metadata i32 -1, metadata !4028, metadata !DIExpression()), !dbg !4029
  br label %24, !dbg !4052

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4029
  ret i32 %25, !dbg !4053
}

; Function Attrs: nofree nounwind
declare !dbg !4054 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4057 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4058 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4061 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4099, metadata !DIExpression()), !dbg !4100
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4101
  br i1 %2, label %6, label %3, !dbg !4103

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4104
  %5 = icmp eq i32 %4, 0, !dbg !4104
  br i1 %5, label %6, label %8, !dbg !4105

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4106
  br label %17, !dbg !4107

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4108, metadata !DIExpression()) #28, !dbg !4113
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4115
  %10 = load i32, i32* %9, align 8, !dbg !4115, !tbaa !3857
  %11 = and i32 %10, 256, !dbg !4117
  %12 = icmp eq i32 %11, 0, !dbg !4117
  br i1 %12, label %15, label %13, !dbg !4118

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #28, !dbg !4119
  br label %15, !dbg !4119

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4120
  br label %17, !dbg !4121

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4100
  ret i32 %18, !dbg !4122
}

; Function Attrs: nofree nounwind
declare !dbg !4123 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4126 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4165, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i64 %1, metadata !4166, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i32 %2, metadata !4167, metadata !DIExpression()), !dbg !4171
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4172
  %5 = load i8*, i8** %4, align 8, !dbg !4172, !tbaa !4173
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4174
  %7 = load i8*, i8** %6, align 8, !dbg !4174, !tbaa !4175
  %8 = icmp eq i8* %5, %7, !dbg !4176
  br i1 %8, label %9, label %28, !dbg !4177

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4178
  %11 = load i8*, i8** %10, align 8, !dbg !4178, !tbaa !4179
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4180
  %13 = load i8*, i8** %12, align 8, !dbg !4180, !tbaa !4181
  %14 = icmp eq i8* %11, %13, !dbg !4182
  br i1 %14, label %15, label %28, !dbg !4183

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4184
  %17 = load i8*, i8** %16, align 8, !dbg !4184, !tbaa !4185
  %18 = icmp eq i8* %17, null, !dbg !4186
  br i1 %18, label %19, label %28, !dbg !4187

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4188
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #28, !dbg !4189
  call void @llvm.dbg.value(metadata i64 %21, metadata !4168, metadata !DIExpression()), !dbg !4190
  %22 = icmp eq i64 %21, -1, !dbg !4191
  br i1 %22, label %30, label %23, !dbg !4193

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4194
  %25 = load i32, i32* %24, align 8, !dbg !4195, !tbaa !3857
  %26 = and i32 %25, -17, !dbg !4195
  store i32 %26, i32* %24, align 8, !dbg !4195, !tbaa !3857
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4196
  store i64 %21, i64* %27, align 8, !dbg !4197, !tbaa !4198
  br label %30, !dbg !4199

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4200
  br label %30, !dbg !4201

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4171
  ret i32 %31, !dbg !4202
}

; Function Attrs: nofree nounwind
declare !dbg !4203 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #10 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind }
attributes #20 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #25 = { nofree nosync nounwind willreturn }
attributes #26 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nounwind }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { cold }

!llvm.dbg.cu = !{!2, !62, !68, !201, !203, !205, !76, !208, !211, !82, !88, !213, !170, !219, !236, !238, !240, !244, !246, !249, !251, !254, !256, !258, !647, !649, !651, !653, !178}
!llvm.ident = !{!655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655}
!llvm.module.flags = !{!656, !657, !658, !659, !660}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !46, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/stdbuf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !14, line: 25, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!21 = !{!22, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !26, line: 102, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !28, line: 73, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !{!31, !33, !0}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "program_path", scope: !2, file: !3, line: 40, type: !22, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "stdbuf", scope: !2, file: !3, line: 47, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 576, elements: !44)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 42, size: 192, elements: !37)
!37 = !{!38, !41, !43}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !36, file: !3, line: 44, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 46, baseType: !29)
!40 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!41 = !DIDerivedType(tag: DW_TAG_member, name: "optc", scope: !36, file: !3, line: 45, baseType: !42, size: 32, offset: 64)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "optarg", scope: !36, file: !3, line: 46, baseType: !22, size: 64, offset: 128)
!44 = !{!45}
!45 = !DISubrange(count: 3)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1536, elements: !58)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !49, line: 50, size: 256, elements: !50)
!49 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!50 = !{!51, !54, !55, !57}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !48, file: !49, line: 52, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !48, file: !49, line: 55, baseType: !42, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !48, file: !49, line: 56, baseType: !56, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !48, file: !49, line: 57, baseType: !42, size: 32, offset: 192)
!58 = !{!59}
!59 = !DISubrange(count: 6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "Version", scope: !62, file: !63, line: 2, type: !52, isLocal: false, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !65, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!64 = !{}
!65 = !{!60}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "file_name", scope: !68, file: !69, line: 46, type: !52, isLocal: true, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !70, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!70 = !{!66, !71}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !68, file: !69, line: 56, type: !73, isLocal: true, isDefinition: true)
!73 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "exit_failure", scope: !76, file: !77, line: 24, type: !79, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !78, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !{!74}
!79 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "program_name", scope: !82, file: !83, line: 33, type: !52, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !84, globals: !85, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!84 = !{!24, !22}
!85 = !{!80}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !88, file: !89, line: 85, type: !164, isLocal: false, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !125, globals: !127, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!90 = !{!91, !105, !110}
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !92, line: 32, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!94 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!100 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!101 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!102 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!103 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!104 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !92, line: 242, baseType: !7, size: 32, elements: !106)
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!109 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 46, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!113 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!117 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!120 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!121 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!123 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!124 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!125 = !{!42, !126, !39, !22}
!126 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!127 = !{!86, !128, !134, !146, !148, !153, !160, !162}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !88, file: !89, line: 101, type: !130, isLocal: false, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 320, elements: !132)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!132 = !{!133}
!133 = !DISubrange(count: 10)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !88, file: !89, line: 1052, type: !136, isLocal: false, isDefinition: true)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !89, line: 65, size: 448, elements: !137)
!137 = !{!138, !139, !140, !144, !145}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !136, file: !89, line: 68, baseType: !91, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !89, line: 71, baseType: !42, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !136, file: !89, line: 75, baseType: !141, size: 256, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !136, file: !89, line: 78, baseType: !52, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !136, file: !89, line: 81, baseType: !52, size: 64, offset: 384)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !88, file: !89, line: 116, type: !136, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "slot0", scope: !88, file: !89, line: 842, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 256)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "slotvec", scope: !88, file: !89, line: 845, type: !155, isLocal: true, isDefinition: true)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !89, line: 834, size: 128, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !156, file: !89, line: 836, baseType: !39, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !156, file: !89, line: 837, baseType: !22, size: 64, offset: 64)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "nslots", scope: !88, file: !89, line: 843, type: !42, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "slotvec0", scope: !88, file: !89, line: 844, type: !156, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 704, elements: !166)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!166 = !{!167}
!167 = !DISubrange(count: 11)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !170, file: !171, line: 26, type: !173, isLocal: false, isDefinition: true)
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !172, splitDebugInlining: false, nameTableKind: None)
!171 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!172 = !{!168}
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 376, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 47)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "stdlib_allocator", scope: !178, file: !179, line: 5, type: !181, isLocal: false, isDefinition: true)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !180, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/allocator.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !{!176}
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !183, line: 27, size: 256, elements: !184)
!183 = !DIFile(filename: "./lib/allocator.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !{!185, !189, !193, !197}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !182, file: !183, line: 37, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!24, !39}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !182, file: !183, line: 43, baseType: !190, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!24, !24, !39}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !182, file: !183, line: 46, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !24}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !182, file: !183, line: 52, baseType: !198, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !39}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "lib/dirname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !207, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = !{!22}
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!210 = !{!24}
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = !{!216}
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !214, line: 40, baseType: !7, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !235, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!221 = !{!222}
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !224, file: !223, line: 186, baseType: !7, size: 32, elements: !233)
!223 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!224 = distinct !DISubprogram(name: "x2nrealloc", scope: !223, file: !223, line: 174, type: !225, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !228)
!225 = !DISubroutineType(types: !226)
!226 = !{!24, !24, !227, !39}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!228 = !{!229, !230, !231, !232}
!229 = !DILocalVariable(name: "p", arg: 1, scope: !224, file: !223, line: 174, type: !24)
!230 = !DILocalVariable(name: "pn", arg: 2, scope: !224, file: !223, line: 174, type: !227)
!231 = !DILocalVariable(name: "s", arg: 3, scope: !224, file: !223, line: 174, type: !39)
!232 = !DILocalVariable(name: "n", scope: !224, file: !223, line: 176, type: !39)
!233 = !{!234}
!234 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!235 = !{!39, !22, !24}
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/xreadlink.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !243, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!242 = !{!13, !110}
!243 = !{!42, !126}
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !248, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!248 = !{!39}
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/areadlink.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !253, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "lib/careadlinkat.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!253 = !{!39, !22}
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !260, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!260 = !{!261}
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !262, line: 41, baseType: !7, size: 32, elements: !263)
!262 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!264 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!265 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!266 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!267 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!268 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!269 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!270 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!271 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!272 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!273 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!274 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!275 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!276 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!277 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!278 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!279 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!280 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!281 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!282 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!283 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!284 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!285 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!286 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!287 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!288 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!289 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!290 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!291 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!292 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!293 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!294 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!295 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!296 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!297 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!298 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!299 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!300 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!301 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!302 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!303 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!304 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!305 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!306 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!307 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!308 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!309 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!310 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!311 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!312 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!313 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!372 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!375 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!376 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!377 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!378 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!379 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!380 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!381 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!382 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!383 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!384 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!385 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!386 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!459 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!532 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!533 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!534 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!535 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!536 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!537 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!538 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!539 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!540 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!541 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!542 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!543 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!544 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!545 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!546 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!548 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!549 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!550 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!551 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!552 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!553 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!579 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!580 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!581 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!582 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!583 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!588 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!589 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!590 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!591 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!647 = distinct !DICompileUnit(language: DW_LANG_C99, file: !648, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!648 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!650 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!654 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!655 = !{!"clang version 12.0.1"}
!656 = !{i32 7, !"Dwarf Version", i32 4}
!657 = !{i32 2, !"Debug Info Version", i32 3}
!658 = !{i32 1, !"wchar_size", i32 4}
!659 = !{i32 7, !"PIC Level", i32 2}
!660 = !{i32 7, !"PIE Level", i32 2}
!661 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 85, type: !662, scopeLine: 86, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !42}
!664 = !{!665}
!665 = !DILocalVariable(name: "status", arg: 1, scope: !661, file: !3, line: 85, type: !42)
!666 = !DILocation(line: 0, scope: !661)
!667 = !DILocation(line: 87, column: 14, scope: !668)
!668 = distinct !DILexicalBlock(scope: !661, file: !3, line: 87, column: 7)
!669 = !DILocation(line: 87, column: 7, scope: !661)
!670 = !DILocation(line: 88, column: 5, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !3, line: 88, column: 5)
!672 = !{!673, !673, i64 0}
!673 = !{!"any pointer", !674, i64 0}
!674 = !{!"omnipotent char", !675, i64 0}
!675 = !{!"Simple C/C++ TBAA"}
!676 = !DILocation(line: 91, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !668, file: !3, line: 90, column: 5)
!678 = !DILocation(line: 92, column: 7, scope: !677)
!679 = !DILocation(line: 590, column: 3, scope: !680, inlinedAt: !683)
!680 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 588, type: !681, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !64)
!681 = !DISubroutineType(types: !682)
!682 = !{null}
!683 = distinct !DILocation(line: 96, column: 7, scope: !677)
!684 = !DILocation(line: 98, column: 7, scope: !677)
!685 = !DILocation(line: 103, column: 7, scope: !677)
!686 = !DILocation(line: 104, column: 7, scope: !677)
!687 = !DILocation(line: 105, column: 7, scope: !677)
!688 = !DILocation(line: 108, column: 7, scope: !677)
!689 = !DILocation(line: 111, column: 7, scope: !677)
!690 = !DILocation(line: 118, column: 7, scope: !677)
!691 = !DILocalVariable(name: "program", arg: 1, scope: !692, file: !6, line: 634, type: !52)
!692 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 634, type: !693, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !52}
!695 = !{!691, !696, !705, !706, !708}
!696 = !DILocalVariable(name: "infomap", scope: !692, file: !6, line: 636, type: !697)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 896, elements: !703)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !692, file: !6, line: 636, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !699, file: !6, line: 636, baseType: !52, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !6, line: 636, baseType: !52, size: 64, offset: 64)
!703 = !{!704}
!704 = !DISubrange(count: 7)
!705 = !DILocalVariable(name: "node", scope: !692, file: !6, line: 646, type: !52)
!706 = !DILocalVariable(name: "map_prog", scope: !692, file: !6, line: 647, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!708 = !DILocalVariable(name: "lc_messages", scope: !692, file: !6, line: 659, type: !52)
!709 = !DILocation(line: 0, scope: !692, inlinedAt: !710)
!710 = distinct !DILocation(line: 124, column: 7, scope: !677)
!711 = !DILocation(line: 636, column: 3, scope: !692, inlinedAt: !710)
!712 = !DILocation(line: 636, column: 67, scope: !692, inlinedAt: !710)
!713 = !DILocation(line: 647, column: 36, scope: !692, inlinedAt: !710)
!714 = !DILocation(line: 649, column: 3, scope: !692, inlinedAt: !710)
!715 = !DILocation(line: 649, column: 33, scope: !692, inlinedAt: !710)
!716 = !DILocation(line: 650, column: 13, scope: !692, inlinedAt: !710)
!717 = !DILocation(line: 649, column: 20, scope: !692, inlinedAt: !710)
!718 = !{!719, !673, i64 0}
!719 = !{!"infomap", !673, i64 0, !673, i64 8}
!720 = !DILocation(line: 649, column: 10, scope: !692, inlinedAt: !710)
!721 = !DILocation(line: 649, column: 28, scope: !692, inlinedAt: !710)
!722 = distinct !{!722, !714, !716, !723}
!723 = !{!"llvm.loop.mustprogress"}
!724 = !DILocation(line: 652, column: 17, scope: !725, inlinedAt: !710)
!725 = distinct !DILexicalBlock(scope: !692, file: !6, line: 652, column: 7)
!726 = !{!719, !673, i64 8}
!727 = !DILocation(line: 652, column: 7, scope: !725, inlinedAt: !710)
!728 = !DILocation(line: 652, column: 7, scope: !692, inlinedAt: !710)
!729 = !DILocation(line: 655, column: 3, scope: !692, inlinedAt: !710)
!730 = !DILocation(line: 659, column: 29, scope: !692, inlinedAt: !710)
!731 = !DILocation(line: 660, column: 7, scope: !732, inlinedAt: !710)
!732 = distinct !DILexicalBlock(scope: !692, file: !6, line: 660, column: 7)
!733 = !DILocation(line: 660, column: 19, scope: !732, inlinedAt: !710)
!734 = !DILocation(line: 660, column: 22, scope: !732, inlinedAt: !710)
!735 = !DILocation(line: 660, column: 7, scope: !692, inlinedAt: !710)
!736 = !DILocation(line: 666, column: 7, scope: !737, inlinedAt: !710)
!737 = distinct !DILexicalBlock(scope: !732, file: !6, line: 661, column: 5)
!738 = !DILocation(line: 668, column: 5, scope: !737, inlinedAt: !710)
!739 = !DILocation(line: 669, column: 3, scope: !692, inlinedAt: !710)
!740 = !DILocation(line: 671, column: 3, scope: !692, inlinedAt: !710)
!741 = !DILocation(line: 673, column: 1, scope: !692, inlinedAt: !710)
!742 = !DILocation(line: 126, column: 3, scope: !661)
!743 = !DISubprogram(name: "dcgettext", scope: !744, file: !744, line: 51, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!744 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!745 = !DISubroutineType(types: !746)
!746 = !{!22, !52, !52, !42}
!747 = !DISubprogram(name: "fputs_unlocked", scope: !748, file: !748, line: 667, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!748 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!749 = !DISubroutineType(types: !750)
!750 = !{!42, !52, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !753, line: 49, size: 1728, elements: !754)
!753 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !770, !771, !772, !773, !776, !777, !779, !783, !786, !788, !791, !794, !795, !796, !797, !798}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !752, file: !753, line: 51, baseType: !42, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !752, file: !753, line: 54, baseType: !22, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !752, file: !753, line: 55, baseType: !22, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !752, file: !753, line: 56, baseType: !22, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !752, file: !753, line: 57, baseType: !22, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !752, file: !753, line: 58, baseType: !22, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !752, file: !753, line: 59, baseType: !22, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !752, file: !753, line: 60, baseType: !22, size: 64, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !752, file: !753, line: 61, baseType: !22, size: 64, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !752, file: !753, line: 64, baseType: !22, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !752, file: !753, line: 65, baseType: !22, size: 64, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !752, file: !753, line: 66, baseType: !22, size: 64, offset: 704)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !752, file: !753, line: 68, baseType: !768, size: 64, offset: 768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !753, line: 36, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !752, file: !753, line: 70, baseType: !751, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !752, file: !753, line: 72, baseType: !42, size: 32, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !752, file: !753, line: 73, baseType: !42, size: 32, offset: 928)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !752, file: !753, line: 74, baseType: !774, size: 64, offset: 960)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !28, line: 152, baseType: !775)
!775 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !752, file: !753, line: 77, baseType: !126, size: 16, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !752, file: !753, line: 78, baseType: !778, size: 8, offset: 1040)
!778 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !752, file: !753, line: 79, baseType: !780, size: 8, offset: 1048)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !781)
!781 = !{!782}
!782 = !DISubrange(count: 1)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !752, file: !753, line: 81, baseType: !784, size: 64, offset: 1088)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !753, line: 43, baseType: null)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !752, file: !753, line: 89, baseType: !787, size: 64, offset: 1152)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !28, line: 153, baseType: !775)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !752, file: !753, line: 91, baseType: !789, size: 64, offset: 1216)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !753, line: 37, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !752, file: !753, line: 92, baseType: !792, size: 64, offset: 1280)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !753, line: 38, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !752, file: !753, line: 93, baseType: !751, size: 64, offset: 1344)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !752, file: !753, line: 94, baseType: !24, size: 64, offset: 1408)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !752, file: !753, line: 95, baseType: !39, size: 64, offset: 1472)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !752, file: !753, line: 96, baseType: !42, size: 32, offset: 1536)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !752, file: !753, line: 98, baseType: !799, size: 160, offset: 1568)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 20)
!802 = !DISubprogram(name: "setlocale", scope: !803, file: !803, line: 122, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!803 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!804 = !DISubroutineType(types: !805)
!805 = !{!22, !42, !52}
!806 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 312, type: !807, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !810)
!807 = !DISubroutineType(types: !808)
!808 = !{!42, !42, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!810 = !{!811, !812, !813, !814, !816}
!811 = !DILocalVariable(name: "argc", arg: 1, scope: !806, file: !3, line: 312, type: !42)
!812 = !DILocalVariable(name: "argv", arg: 2, scope: !806, file: !3, line: 312, type: !809)
!813 = !DILocalVariable(name: "c", scope: !806, file: !3, line: 314, type: !42)
!814 = !DILocalVariable(name: "opt_fileno", scope: !815, file: !3, line: 327, type: !42)
!815 = distinct !DILexicalBlock(scope: !806, file: !3, line: 326, column: 5)
!816 = !DILocalVariable(name: "exit_status", scope: !806, file: !3, line: 391, type: !42)
!817 = !DILocation(line: 0, scope: !806)
!818 = !DILocation(line: 317, column: 21, scope: !806)
!819 = !DILocation(line: 317, column: 3, scope: !806)
!820 = !DILocation(line: 318, column: 3, scope: !806)
!821 = !DILocation(line: 319, column: 3, scope: !806)
!822 = !DILocation(line: 320, column: 3, scope: !806)
!823 = !DILocalVariable(name: "status", arg: 1, scope: !824, file: !6, line: 99, type: !42)
!824 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !662, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!825 = !{!823}
!826 = !DILocation(line: 0, scope: !824, inlinedAt: !827)
!827 = distinct !DILocation(line: 322, column: 3, scope: !806)
!828 = !DILocation(line: 102, column: 18, scope: !829, inlinedAt: !827)
!829 = distinct !DILexicalBlock(scope: !824, file: !6, line: 101, column: 7)
!830 = !{!831, !831, i64 0}
!831 = !{!"int", !674, i64 0}
!832 = !DILocation(line: 323, column: 3, scope: !806)
!833 = !DILocation(line: 325, column: 3, scope: !806)
!834 = !DILocation(line: 325, column: 15, scope: !806)
!835 = !DILocalVariable(name: "ret", scope: !836, file: !3, line: 170, type: !42)
!836 = distinct !DISubprogram(name: "optc_to_fileno", scope: !3, file: !3, line: 168, type: !837, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{!42, !42}
!839 = !{!840, !835}
!840 = !DILocalVariable(name: "c", arg: 1, scope: !836, file: !3, line: 168, type: !42)
!841 = !DILocation(line: 0, scope: !836, inlinedAt: !842)
!842 = distinct !DILocation(line: 335, column: 24, scope: !843)
!843 = distinct !DILexicalBlock(scope: !815, file: !3, line: 330, column: 9)
!844 = !DILocation(line: 179, column: 7, scope: !845, inlinedAt: !842)
!845 = distinct !DILexicalBlock(scope: !836, file: !3, line: 173, column: 5)
!846 = !DILocation(line: 182, column: 7, scope: !845, inlinedAt: !842)
!847 = !DILocation(line: 0, scope: !815)
!848 = !DILocation(line: 337, column: 30, scope: !843)
!849 = !DILocation(line: 337, column: 35, scope: !843)
!850 = !{!851, !831, i64 8}
!851 = !{!"", !852, i64 0, !831, i64 8, !673, i64 16}
!852 = !{!"long", !674, i64 0}
!853 = !DILocation(line: 338, column: 30, scope: !843)
!854 = !DILocation(line: 338, column: 11, scope: !843)
!855 = !DILocation(line: 338, column: 29, scope: !843)
!856 = !{!674, !674, i64 0}
!857 = !DILocalVariable(name: "c", arg: 1, scope: !858, file: !859, line: 300, type: !42)
!858 = distinct !DISubprogram(name: "c_isspace", scope: !859, file: !859, line: 300, type: !860, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !862)
!859 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!860 = !DISubroutineType(types: !861)
!861 = !{!73, !42}
!862 = !{!857}
!863 = !DILocation(line: 0, scope: !858, inlinedAt: !864)
!864 = distinct !DILocation(line: 338, column: 18, scope: !843)
!865 = !DILocation(line: 302, column: 3, scope: !858, inlinedAt: !864)
!866 = !DILocation(line: 339, column: 19, scope: !843)
!867 = distinct !{!867, !854, !866, !723}
!868 = !DILocation(line: 340, column: 30, scope: !843)
!869 = !DILocation(line: 340, column: 37, scope: !843)
!870 = !{!851, !673, i64 16}
!871 = !DILocation(line: 341, column: 17, scope: !872)
!872 = distinct !DILexicalBlock(scope: !843, file: !3, line: 341, column: 15)
!873 = !DILocation(line: 341, column: 24, scope: !872)
!874 = !DILocation(line: 341, column: 27, scope: !872)
!875 = !DILocation(line: 341, column: 35, scope: !872)
!876 = !DILocation(line: 341, column: 15, scope: !843)
!877 = !DILocation(line: 346, column: 28, scope: !878)
!878 = distinct !DILexicalBlock(scope: !872, file: !3, line: 342, column: 13)
!879 = !DILocation(line: 346, column: 15, scope: !878)
!880 = !DILocation(line: 347, column: 15, scope: !878)
!881 = !DILocation(line: 350, column: 16, scope: !882)
!882 = distinct !DILexicalBlock(scope: !843, file: !3, line: 350, column: 15)
!883 = !DILocation(line: 351, column: 15, scope: !882)
!884 = !DILocalVariable(name: "str", arg: 1, scope: !885, file: !3, line: 66, type: !52)
!885 = distinct !DISubprogram(name: "parse_size", scope: !3, file: !3, line: 66, type: !886, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{!42, !52, !227}
!888 = !{!884, !889, !890, !891}
!889 = !DILocalVariable(name: "size", arg: 2, scope: !885, file: !3, line: 66, type: !227)
!890 = !DILocalVariable(name: "tmp_size", scope: !885, file: !3, line: 68, type: !25)
!891 = !DILocalVariable(name: "e", scope: !885, file: !3, line: 69, type: !13)
!892 = !DILocation(line: 0, scope: !885, inlinedAt: !893)
!893 = distinct !DILocation(line: 351, column: 18, scope: !882)
!894 = !DILocation(line: 68, column: 3, scope: !885, inlinedAt: !893)
!895 = !DILocation(line: 69, column: 25, scope: !885, inlinedAt: !893)
!896 = !DILocation(line: 73, column: 7, scope: !885, inlinedAt: !893)
!897 = !DILocation(line: 80, column: 3, scope: !885, inlinedAt: !893)
!898 = !DILocation(line: 80, column: 48, scope: !885, inlinedAt: !893)
!899 = !DILocation(line: 80, column: 12, scope: !885, inlinedAt: !893)
!900 = !DILocation(line: 351, column: 58, scope: !882)
!901 = !DILocation(line: 75, column: 7, scope: !902, inlinedAt: !893)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 74, column: 5)
!903 = distinct !DILexicalBlock(scope: !885, file: !3, line: 73, column: 7)
!904 = !DILocation(line: 75, column: 13, scope: !902, inlinedAt: !893)
!905 = !DILocation(line: 76, column: 15, scope: !902, inlinedAt: !893)
!906 = !{!852, !852, i64 0}
!907 = !DILocation(line: 76, column: 13, scope: !902, inlinedAt: !893)
!908 = !DILocation(line: 82, column: 1, scope: !885, inlinedAt: !893)
!909 = !DILocation(line: 350, column: 15, scope: !843)
!910 = distinct !{!910, !833, !911, !723}
!911 = !DILocation(line: 363, column: 5, scope: !806)
!912 = !DILocation(line: 80, column: 9, scope: !885, inlinedAt: !893)
!913 = !DILocation(line: 352, column: 13, scope: !882)
!914 = !DILocation(line: 356, column: 9, scope: !843)
!915 = !DILocation(line: 358, column: 9, scope: !843)
!916 = !DILocation(line: 361, column: 11, scope: !843)
!917 = !DILocation(line: 365, column: 11, scope: !806)
!918 = !DILocation(line: 365, column: 8, scope: !806)
!919 = !DILocation(line: 369, column: 12, scope: !920)
!920 = distinct !DILexicalBlock(scope: !806, file: !3, line: 369, column: 7)
!921 = !DILocation(line: 369, column: 7, scope: !806)
!922 = !DILocation(line: 371, column: 20, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 370, column: 5)
!924 = !DILocation(line: 371, column: 7, scope: !923)
!925 = !DILocation(line: 372, column: 7, scope: !923)
!926 = !DILocalVariable(name: "env_set", scope: !927, file: !3, line: 278, type: !73)
!927 = distinct !DISubprogram(name: "set_libstdbuf_options", scope: !3, file: !3, line: 276, type: !928, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!73}
!930 = !{!926, !931, !933, !938, !939, !942, !947, !949}
!931 = !DILocalVariable(name: "i", scope: !932, file: !3, line: 280, type: !39)
!932 = distinct !DILexicalBlock(scope: !927, file: !3, line: 280, column: 3)
!933 = !DILocalVariable(name: "var", scope: !934, file: !3, line: 284, type: !22)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 283, column: 9)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 282, column: 11)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 281, column: 5)
!937 = distinct !DILexicalBlock(scope: !932, file: !3, line: 280, column: 3)
!938 = !DILocalVariable(name: "ret", scope: !934, file: !3, line: 285, type: !42)
!939 = !DILocalVariable(name: "__res", scope: !940, file: !3, line: 288, type: !42)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 288, column: 19)
!941 = distinct !DILexicalBlock(scope: !934, file: !3, line: 287, column: 15)
!942 = !DILocalVariable(name: "__c", scope: !943, file: !3, line: 288, type: !42)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 288, column: 19)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 288, column: 19)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 288, column: 19)
!946 = distinct !DILexicalBlock(scope: !940, file: !3, line: 288, column: 19)
!947 = !DILocalVariable(name: "__res", scope: !948, file: !3, line: 291, type: !42)
!948 = distinct !DILexicalBlock(scope: !941, file: !3, line: 291, column: 19)
!949 = !DILocalVariable(name: "__c", scope: !950, file: !3, line: 291, type: !42)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 291, column: 19)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 291, column: 19)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 291, column: 19)
!953 = distinct !DILexicalBlock(scope: !948, file: !3, line: 291, column: 19)
!954 = !DILocation(line: 0, scope: !927, inlinedAt: !955)
!955 = distinct !DILocation(line: 375, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !806, file: !3, line: 375, column: 7)
!957 = !DILocation(line: 0, scope: !932, inlinedAt: !955)
!958 = !DILocation(line: 282, column: 21, scope: !935, inlinedAt: !955)
!959 = !DILocation(line: 282, column: 11, scope: !935, inlinedAt: !955)
!960 = !DILocation(line: 282, column: 11, scope: !936, inlinedAt: !955)
!961 = !DILocation(line: 284, column: 11, scope: !934, inlinedAt: !955)
!962 = !DILocation(line: 287, column: 15, scope: !941, inlinedAt: !955)
!963 = !DILocation(line: 287, column: 33, scope: !941, inlinedAt: !955)
!964 = !DILocation(line: 0, scope: !941, inlinedAt: !955)
!965 = !DILocalVariable(name: "__c", arg: 1, scope: !966, file: !111, line: 213, type: !42)
!966 = distinct !DISubprogram(name: "toupper", scope: !111, file: !111, line: 213, type: !837, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !967)
!967 = !{!965}
!968 = !DILocation(line: 0, scope: !966, inlinedAt: !969)
!969 = distinct !DILocation(line: 288, column: 19, scope: !944, inlinedAt: !955)
!970 = !DILocation(line: 0, scope: !966, inlinedAt: !971)
!971 = distinct !DILocation(line: 291, column: 19, scope: !951, inlinedAt: !955)
!972 = !DILocation(line: 287, column: 15, scope: !934, inlinedAt: !955)
!973 = !DILocation(line: 215, column: 22, scope: !966, inlinedAt: !969)
!974 = !DILocation(line: 215, column: 39, scope: !966, inlinedAt: !969)
!975 = !DILocation(line: 215, column: 38, scope: !966, inlinedAt: !969)
!976 = !DILocation(line: 215, column: 37, scope: !966, inlinedAt: !969)
!977 = !DILocation(line: 215, column: 10, scope: !966, inlinedAt: !969)
!978 = !DILocation(line: 0, scope: !944, inlinedAt: !955)
!979 = !DILocation(line: 0, scope: !940, inlinedAt: !955)
!980 = !DILocation(line: 0, scope: !934, inlinedAt: !955)
!981 = !DILocation(line: 288, column: 19, scope: !941, inlinedAt: !955)
!982 = !DILocation(line: 288, column: 13, scope: !941, inlinedAt: !955)
!983 = !DILocation(line: 215, column: 22, scope: !966, inlinedAt: !971)
!984 = !DILocation(line: 215, column: 39, scope: !966, inlinedAt: !971)
!985 = !DILocation(line: 215, column: 38, scope: !966, inlinedAt: !971)
!986 = !DILocation(line: 215, column: 37, scope: !966, inlinedAt: !971)
!987 = !DILocation(line: 215, column: 10, scope: !966, inlinedAt: !971)
!988 = !DILocation(line: 0, scope: !951, inlinedAt: !955)
!989 = !DILocation(line: 0, scope: !948, inlinedAt: !955)
!990 = !DILocation(line: 291, column: 19, scope: !941, inlinedAt: !955)
!991 = !{!851, !852, i64 0}
!992 = !DILocation(line: 294, column: 19, scope: !993, inlinedAt: !955)
!993 = distinct !DILexicalBlock(scope: !934, file: !3, line: 294, column: 15)
!994 = !DILocation(line: 294, column: 15, scope: !934, inlinedAt: !955)
!995 = !DILocation(line: 295, column: 13, scope: !993, inlinedAt: !955)
!996 = !DILocation(line: 297, column: 23, scope: !997, inlinedAt: !955)
!997 = distinct !DILexicalBlock(scope: !934, file: !3, line: 297, column: 15)
!998 = !DILocation(line: 297, column: 15, scope: !997, inlinedAt: !955)
!999 = !DILocation(line: 297, column: 28, scope: !997, inlinedAt: !955)
!1000 = !DILocation(line: 297, column: 15, scope: !934, inlinedAt: !955)
!1001 = !DILocation(line: 299, column: 15, scope: !1002, inlinedAt: !955)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 298, column: 13)
!1003 = !DILocation(line: 305, column: 9, scope: !935, inlinedAt: !955)
!1004 = !DILocation(line: 305, column: 9, scope: !934, inlinedAt: !955)
!1005 = !DILocation(line: 377, column: 20, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !956, file: !3, line: 376, column: 5)
!1007 = !DILocation(line: 377, column: 7, scope: !1006)
!1008 = !DILocation(line: 378, column: 7, scope: !1006)
!1009 = !DILocation(line: 383, column: 21, scope: !806)
!1010 = !DILocalVariable(name: "arg", arg: 1, scope: !1011, file: !3, line: 136, type: !52)
!1011 = distinct !DISubprogram(name: "set_program_path", scope: !3, file: !3, line: 136, type: !693, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1012)
!1012 = !{!1010, !1013, !1016, !1020}
!1013 = !DILocalVariable(name: "path", scope: !1014, file: !3, line: 144, type: !22)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 143, column: 5)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 138, column: 7)
!1016 = !DILocalVariable(name: "dir", scope: !1017, file: !3, line: 149, type: !22)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 148, column: 9)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 147, column: 16)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 145, column: 11)
!1020 = !DILocalVariable(name: "candidate", scope: !1021, file: !3, line: 153, type: !22)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 152, column: 13)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 151, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 151, column: 11)
!1024 = !DILocation(line: 0, scope: !1011, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 383, column: 3, scope: !806)
!1026 = !DILocation(line: 138, column: 7, scope: !1015, inlinedAt: !1025)
!1027 = !DILocation(line: 138, column: 7, scope: !1011, inlinedAt: !1025)
!1028 = !DILocation(line: 140, column: 22, scope: !1029, inlinedAt: !1025)
!1029 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 139, column: 5)
!1030 = !DILocation(line: 140, column: 20, scope: !1029, inlinedAt: !1025)
!1031 = !DILocation(line: 141, column: 5, scope: !1029, inlinedAt: !1025)
!1032 = !DILocation(line: 144, column: 20, scope: !1014, inlinedAt: !1025)
!1033 = !DILocation(line: 0, scope: !1014, inlinedAt: !1025)
!1034 = !DILocation(line: 145, column: 11, scope: !1019, inlinedAt: !1025)
!1035 = !DILocation(line: 145, column: 11, scope: !1014, inlinedAt: !1025)
!1036 = !DILocation(line: 146, column: 24, scope: !1019, inlinedAt: !1025)
!1037 = !DILocation(line: 146, column: 22, scope: !1019, inlinedAt: !1025)
!1038 = !DILocation(line: 146, column: 9, scope: !1019, inlinedAt: !1025)
!1039 = !DILocation(line: 147, column: 24, scope: !1018, inlinedAt: !1025)
!1040 = !DILocation(line: 147, column: 22, scope: !1018, inlinedAt: !1025)
!1041 = !DILocation(line: 147, column: 16, scope: !1019, inlinedAt: !1025)
!1042 = !DILocation(line: 150, column: 18, scope: !1017, inlinedAt: !1025)
!1043 = !DILocation(line: 151, column: 22, scope: !1023, inlinedAt: !1025)
!1044 = !DILocation(line: 0, scope: !1017, inlinedAt: !1025)
!1045 = !DILocation(line: 151, column: 46, scope: !1022, inlinedAt: !1025)
!1046 = !DILocation(line: 151, column: 11, scope: !1023, inlinedAt: !1025)
!1047 = !DILocation(line: 153, column: 33, scope: !1021, inlinedAt: !1025)
!1048 = !DILocation(line: 0, scope: !1021, inlinedAt: !1025)
!1049 = !DILocation(line: 154, column: 19, scope: !1050, inlinedAt: !1025)
!1050 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 154, column: 19)
!1051 = !DILocation(line: 154, column: 44, scope: !1050, inlinedAt: !1025)
!1052 = !DILocation(line: 154, column: 19, scope: !1021, inlinedAt: !1025)
!1053 = !DILocation(line: 156, column: 34, scope: !1054, inlinedAt: !1025)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 155, column: 17)
!1055 = !DILocation(line: 156, column: 32, scope: !1054, inlinedAt: !1025)
!1056 = !DILocation(line: 157, column: 19, scope: !1054, inlinedAt: !1025)
!1057 = !DILocation(line: 160, column: 15, scope: !1021, inlinedAt: !1025)
!1058 = !DILocation(line: 151, column: 61, scope: !1022, inlinedAt: !1025)
!1059 = distinct !{!1059, !1046, !1060, !723}
!1060 = !DILocation(line: 161, column: 13, scope: !1023, inlinedAt: !1025)
!1061 = !DILocation(line: 163, column: 7, scope: !1014, inlinedAt: !1025)
!1062 = !DILocation(line: 384, column: 8, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !806, file: !3, line: 384, column: 7)
!1064 = !DILocation(line: 384, column: 7, scope: !806)
!1065 = !DILocation(line: 385, column: 20, scope: !1063)
!1066 = !DILocation(line: 385, column: 18, scope: !1063)
!1067 = !DILocation(line: 385, column: 5, scope: !1063)
!1068 = !DILocation(line: 217, column: 5, scope: !1069, inlinedAt: !1116)
!1069 = distinct !DISubprogram(name: "set_LD_PRELOAD", scope: !3, file: !3, line: 189, type: !681, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1077, !1079, !1080}
!1071 = !DILocalVariable(name: "ret", scope: !1069, file: !3, line: 191, type: !42)
!1072 = !DILocalVariable(name: "preload_env", scope: !1069, file: !3, line: 195, type: !52)
!1073 = !DILocalVariable(name: "old_libs", scope: !1069, file: !3, line: 197, type: !22)
!1074 = !DILocalVariable(name: "LD_PRELOAD", scope: !1069, file: !3, line: 198, type: !22)
!1075 = !DILocalVariable(name: "search_path", scope: !1069, file: !3, line: 216, type: !1076)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 192, elements: !44)
!1077 = !DILocalVariable(name: "path", scope: !1069, file: !3, line: 222, type: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!1079 = !DILocalVariable(name: "libstdbuf", scope: !1069, file: !3, line: 223, type: !22)
!1080 = !DILocalVariable(name: "sb", scope: !1081, file: !3, line: 227, type: !1082)
!1081 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 226, column: 5)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1083, line: 26, size: 1152, elements: !1084)
!1083 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!1084 = !{!1085, !1087, !1089, !1091, !1093, !1095, !1097, !1098, !1099, !1100, !1102, !1104, !1112, !1113, !1114}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1082, file: !1083, line: 28, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !28, line: 145, baseType: !29)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1082, file: !1083, line: 33, baseType: !1088, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !28, line: 148, baseType: !29)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1082, file: !1083, line: 41, baseType: !1090, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !28, line: 151, baseType: !29)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1082, file: !1083, line: 42, baseType: !1092, size: 32, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !28, line: 150, baseType: !7)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1082, file: !1083, line: 44, baseType: !1094, size: 32, offset: 224)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !28, line: 146, baseType: !7)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1082, file: !1083, line: 45, baseType: !1096, size: 32, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !28, line: 147, baseType: !7)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1082, file: !1083, line: 47, baseType: !42, size: 32, offset: 288)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1082, file: !1083, line: 49, baseType: !1086, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1082, file: !1083, line: 54, baseType: !774, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1082, file: !1083, line: 58, baseType: !1101, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !28, line: 175, baseType: !775)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1082, file: !1083, line: 60, baseType: !1103, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !28, line: 180, baseType: !775)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1082, file: !1083, line: 71, baseType: !1105, size: 128, offset: 576)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1106, line: 10, size: 128, elements: !1107)
!1106 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1107 = !{!1108, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1105, file: !1106, line: 12, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !28, line: 160, baseType: !775)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1105, file: !1106, line: 16, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !28, line: 197, baseType: !775)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1082, file: !1083, line: 72, baseType: !1105, size: 128, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1082, file: !1083, line: 73, baseType: !1105, size: 128, offset: 832)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1082, file: !1083, line: 86, baseType: !1115, size: 192, offset: 960)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 192, elements: !44)
!1116 = distinct !DILocation(line: 386, column: 3, scope: !806)
!1117 = !DILocation(line: 0, scope: !1069, inlinedAt: !1116)
!1118 = !DILocation(line: 197, column: 20, scope: !1069, inlinedAt: !1116)
!1119 = !DILocation(line: 198, column: 3, scope: !1069, inlinedAt: !1116)
!1120 = !DILocation(line: 216, column: 3, scope: !1069, inlinedAt: !1116)
!1121 = !DILocation(line: 216, column: 21, scope: !1069, inlinedAt: !1116)
!1122 = !DILocation(line: 216, column: 37, scope: !1069, inlinedAt: !1116)
!1123 = !DILocation(line: 223, column: 3, scope: !1069, inlinedAt: !1116)
!1124 = !DILocation(line: 227, column: 7, scope: !1081, inlinedAt: !1116)
!1125 = !DILocation(line: 227, column: 19, scope: !1081, inlinedAt: !1116)
!1126 = !DILocation(line: 229, column: 12, scope: !1127, inlinedAt: !1116)
!1127 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 229, column: 11)
!1128 = !DILocation(line: 229, column: 11, scope: !1081, inlinedAt: !1116)
!1129 = !DILocation(line: 231, column: 23, scope: !1130, inlinedAt: !1116)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 230, column: 9)
!1131 = !DILocation(line: 231, column: 21, scope: !1130, inlinedAt: !1116)
!1132 = !DILocation(line: 232, column: 11, scope: !1130, inlinedAt: !1116)
!1133 = !DILocation(line: 234, column: 13, scope: !1081, inlinedAt: !1116)
!1134 = !DILocation(line: 235, column: 15, scope: !1135, inlinedAt: !1116)
!1135 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 235, column: 11)
!1136 = !DILocation(line: 235, column: 11, scope: !1081, inlinedAt: !1116)
!1137 = !DILocation(line: 236, column: 9, scope: !1135, inlinedAt: !1116)
!1138 = !DILocation(line: 237, column: 17, scope: !1139, inlinedAt: !1116)
!1139 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 237, column: 11)
!1140 = !DILocation(line: 237, column: 11, scope: !1139, inlinedAt: !1116)
!1141 = !DILocation(line: 237, column: 33, scope: !1139, inlinedAt: !1116)
!1142 = !DILocation(line: 237, column: 11, scope: !1081, inlinedAt: !1116)
!1143 = !DILocation(line: 239, column: 13, scope: !1081, inlinedAt: !1116)
!1144 = !DILocation(line: 239, column: 7, scope: !1081, inlinedAt: !1116)
!1145 = !DILocation(line: 241, column: 7, scope: !1081, inlinedAt: !1116)
!1146 = !DILocation(line: 242, column: 14, scope: !1147, inlinedAt: !1116)
!1147 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 242, column: 12)
!1148 = !DILocation(line: 242, column: 12, scope: !1081, inlinedAt: !1116)
!1149 = !DILocation(line: 243, column: 9, scope: !1147, inlinedAt: !1116)
!1150 = !DILocation(line: 244, column: 5, scope: !1069, inlinedAt: !1116)
!1151 = !DILocation(line: 248, column: 7, scope: !1152, inlinedAt: !1116)
!1152 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 248, column: 7)
!1153 = !DILocation(line: 0, scope: !1152, inlinedAt: !1116)
!1154 = !DILocation(line: 248, column: 7, scope: !1069, inlinedAt: !1116)
!1155 = !DILocation(line: 249, column: 11, scope: !1152, inlinedAt: !1116)
!1156 = !DILocation(line: 249, column: 5, scope: !1152, inlinedAt: !1116)
!1157 = !DILocation(line: 251, column: 11, scope: !1152, inlinedAt: !1116)
!1158 = !DILocation(line: 253, column: 11, scope: !1159, inlinedAt: !1116)
!1159 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 253, column: 7)
!1160 = !DILocation(line: 253, column: 7, scope: !1069, inlinedAt: !1116)
!1161 = !DILocation(line: 254, column: 5, scope: !1159, inlinedAt: !1116)
!1162 = !DILocation(line: 256, column: 9, scope: !1069, inlinedAt: !1116)
!1163 = !DILocation(line: 256, column: 3, scope: !1069, inlinedAt: !1116)
!1164 = !DILocation(line: 258, column: 17, scope: !1069, inlinedAt: !1116)
!1165 = !DILocation(line: 258, column: 9, scope: !1069, inlinedAt: !1116)
!1166 = !DILocation(line: 264, column: 11, scope: !1167, inlinedAt: !1116)
!1167 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 264, column: 7)
!1168 = !DILocation(line: 264, column: 7, scope: !1069, inlinedAt: !1116)
!1169 = !DILocation(line: 266, column: 7, scope: !1170, inlinedAt: !1116)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 265, column: 5)
!1171 = !DILocation(line: 270, column: 1, scope: !1069, inlinedAt: !1116)
!1172 = !DILocation(line: 387, column: 9, scope: !806)
!1173 = !DILocation(line: 387, column: 3, scope: !806)
!1174 = !DILocation(line: 389, column: 11, scope: !806)
!1175 = !DILocation(line: 389, column: 3, scope: !806)
!1176 = !DILocation(line: 391, column: 21, scope: !806)
!1177 = !DILocation(line: 391, column: 27, scope: !806)
!1178 = !DILocation(line: 392, column: 20, scope: !806)
!1179 = !DILocation(line: 392, column: 58, scope: !806)
!1180 = !DILocation(line: 392, column: 51, scope: !806)
!1181 = !DILocation(line: 392, column: 3, scope: !806)
!1182 = !DILocation(line: 393, column: 3, scope: !806)
!1183 = !DILocation(line: 308, column: 10, scope: !927, inlinedAt: !955)
!1184 = !DILocation(line: 375, column: 7, scope: !806)
!1185 = !DISubprogram(name: "bindtextdomain", scope: !744, file: !744, line: 86, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!22, !52, !52}
!1188 = !DISubprogram(name: "textdomain", scope: !744, file: !744, line: 82, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!22, !52}
!1191 = !DISubprogram(name: "atexit", scope: !1192, file: !1192, line: 595, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1192 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!42, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!1196 = !DISubprogram(name: "getopt_long", scope: !49, file: !49, line: 66, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!42, !42, !1199, !52, !1201, !56}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!1202 = !DISubprogram(name: "error", scope: !1203, file: !1203, line: 52, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1203 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !42, !42, !52, null}
!1206 = !DISubprogram(name: "putenv", scope: !1192, file: !1192, line: 647, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!42, !22}
!1209 = !DISubprogram(name: "getenv", scope: !1192, file: !1192, line: 634, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1210 = !DISubprogram(name: "access", scope: !1211, file: !1211, line: 287, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1211 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!42, !52, !42}
!1214 = !DISubprogram(name: "stat", scope: !1215, file: !1215, line: 205, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1215 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!42, !52, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1219 = !DISubprogram(name: "execvp", scope: !1211, file: !1211, line: 589, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!42, !52, !1199}
!1222 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !69, file: !69, line: 51, type: !693, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1223)
!1223 = !{!1224}
!1224 = !DILocalVariable(name: "file", arg: 1, scope: !1222, file: !69, line: 51, type: !52)
!1225 = !DILocation(line: 0, scope: !1222)
!1226 = !DILocation(line: 53, column: 13, scope: !1222)
!1227 = !DILocation(line: 54, column: 1, scope: !1222)
!1228 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !69, file: !69, line: 88, type: !1229, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !73}
!1231 = !{!1232}
!1232 = !DILocalVariable(name: "ignore", arg: 1, scope: !1228, file: !69, line: 88, type: !73)
!1233 = !DILocation(line: 0, scope: !1228)
!1234 = !DILocation(line: 90, column: 16, scope: !1228)
!1235 = !{!1236, !1236, i64 0}
!1236 = !{!"_Bool", !674, i64 0}
!1237 = !DILocation(line: 91, column: 1, scope: !1228)
!1238 = distinct !DISubprogram(name: "close_stdout", scope: !69, file: !69, line: 117, type: !681, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1239)
!1239 = !{!1240}
!1240 = !DILocalVariable(name: "write_error", scope: !1241, file: !69, line: 122, type: !52)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !69, line: 121, column: 5)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !69, line: 119, column: 7)
!1243 = !DILocation(line: 119, column: 21, scope: !1242)
!1244 = !DILocation(line: 119, column: 7, scope: !1242)
!1245 = !DILocation(line: 119, column: 29, scope: !1242)
!1246 = !DILocation(line: 120, column: 7, scope: !1242)
!1247 = !DILocation(line: 120, column: 12, scope: !1242)
!1248 = !{i8 0, i8 2}
!1249 = !DILocation(line: 120, column: 25, scope: !1242)
!1250 = !DILocation(line: 120, column: 28, scope: !1242)
!1251 = !DILocation(line: 120, column: 34, scope: !1242)
!1252 = !DILocation(line: 119, column: 7, scope: !1238)
!1253 = !DILocation(line: 122, column: 33, scope: !1241)
!1254 = !DILocation(line: 0, scope: !1241)
!1255 = !DILocation(line: 123, column: 11, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1241, file: !69, line: 123, column: 11)
!1257 = !DILocation(line: 0, scope: !1256)
!1258 = !DILocation(line: 123, column: 11, scope: !1241)
!1259 = !DILocation(line: 124, column: 36, scope: !1256)
!1260 = !DILocation(line: 124, column: 9, scope: !1256)
!1261 = !DILocation(line: 127, column: 9, scope: !1256)
!1262 = !DILocation(line: 129, column: 14, scope: !1241)
!1263 = !DILocation(line: 129, column: 7, scope: !1241)
!1264 = !DILocation(line: 134, column: 42, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1238, file: !69, line: 134, column: 7)
!1266 = !DILocation(line: 134, column: 28, scope: !1265)
!1267 = !DILocation(line: 134, column: 50, scope: !1265)
!1268 = !DILocation(line: 134, column: 7, scope: !1238)
!1269 = !DILocation(line: 135, column: 12, scope: !1265)
!1270 = !DILocation(line: 135, column: 5, scope: !1265)
!1271 = !DILocation(line: 136, column: 1, scope: !1238)
!1272 = distinct !DISubprogram(name: "dir_name", scope: !202, file: !202, line: 32, type: !1189, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1273)
!1273 = !{!1274, !1275}
!1274 = !DILocalVariable(name: "file", arg: 1, scope: !1272, file: !202, line: 32, type: !52)
!1275 = !DILocalVariable(name: "result", scope: !1272, file: !202, line: 34, type: !22)
!1276 = !DILocation(line: 0, scope: !1272)
!1277 = !DILocation(line: 34, column: 18, scope: !1272)
!1278 = !DILocation(line: 35, column: 8, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1272, file: !202, line: 35, column: 7)
!1280 = !DILocation(line: 35, column: 7, scope: !1272)
!1281 = !DILocation(line: 36, column: 5, scope: !1279)
!1282 = !DILocation(line: 37, column: 3, scope: !1272)
!1283 = distinct !DISubprogram(name: "dir_len", scope: !204, file: !204, line: 32, type: !1284, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!39, !52}
!1286 = !{!1287, !1288, !1289}
!1287 = !DILocalVariable(name: "file", arg: 1, scope: !1283, file: !204, line: 32, type: !52)
!1288 = !DILocalVariable(name: "prefix_length", scope: !1283, file: !204, line: 34, type: !39)
!1289 = !DILocalVariable(name: "length", scope: !1283, file: !204, line: 35, type: !39)
!1290 = !DILocation(line: 0, scope: !1283)
!1291 = !DILocation(line: 41, column: 24, scope: !1283)
!1292 = !DILocation(line: 48, column: 17, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1283, file: !204, line: 48, column: 3)
!1294 = !DILocation(line: 48, column: 39, scope: !1293)
!1295 = !DILocation(line: 48, column: 8, scope: !1293)
!1296 = !DILocation(line: 0, scope: !1293)
!1297 = !DILocation(line: 49, column: 22, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !204, line: 48, column: 3)
!1299 = !DILocation(line: 48, column: 3, scope: !1293)
!1300 = !DILocation(line: 50, column: 11, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !204, line: 50, column: 9)
!1302 = !DILocation(line: 50, column: 9, scope: !1298)
!1303 = distinct !{!1303, !1299, !1304, !723}
!1304 = !DILocation(line: 51, column: 7, scope: !1293)
!1305 = !DILocation(line: 52, column: 3, scope: !1283)
!1306 = distinct !DISubprogram(name: "mdir_name", scope: !204, file: !204, line: 71, type: !1189, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1307)
!1307 = !{!1308, !1309, !1310, !1311}
!1308 = !DILocalVariable(name: "file", arg: 1, scope: !1306, file: !204, line: 71, type: !52)
!1309 = !DILocalVariable(name: "length", scope: !1306, file: !204, line: 73, type: !39)
!1310 = !DILocalVariable(name: "append_dot", scope: !1306, file: !204, line: 74, type: !73)
!1311 = !DILocalVariable(name: "dir", scope: !1306, file: !204, line: 78, type: !22)
!1312 = !DILocation(line: 0, scope: !1306)
!1313 = !DILocation(line: 0, scope: !1283, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 73, column: 19, scope: !1306)
!1315 = !DILocation(line: 41, column: 24, scope: !1283, inlinedAt: !1314)
!1316 = !DILocation(line: 48, column: 17, scope: !1293, inlinedAt: !1314)
!1317 = !DILocation(line: 48, column: 39, scope: !1293, inlinedAt: !1314)
!1318 = !DILocation(line: 48, column: 8, scope: !1293, inlinedAt: !1314)
!1319 = !DILocation(line: 0, scope: !1293, inlinedAt: !1314)
!1320 = !DILocation(line: 49, column: 22, scope: !1298, inlinedAt: !1314)
!1321 = !DILocation(line: 48, column: 3, scope: !1293, inlinedAt: !1314)
!1322 = !DILocation(line: 50, column: 11, scope: !1301, inlinedAt: !1314)
!1323 = !DILocation(line: 50, column: 9, scope: !1298, inlinedAt: !1314)
!1324 = distinct !{!1324, !1321, !1325, !723}
!1325 = !DILocation(line: 51, column: 7, scope: !1293, inlinedAt: !1314)
!1326 = !DILocation(line: 74, column: 29, scope: !1306)
!1327 = !DILocation(line: 78, column: 32, scope: !1306)
!1328 = !DILocation(line: 78, column: 30, scope: !1306)
!1329 = !DILocation(line: 78, column: 43, scope: !1306)
!1330 = !DILocation(line: 78, column: 15, scope: !1306)
!1331 = !DILocation(line: 79, column: 8, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1306, file: !204, line: 79, column: 7)
!1333 = !DILocation(line: 79, column: 7, scope: !1306)
!1334 = !DILocalVariable(name: "__dest", arg: 1, scope: !1335, file: !1336, line: 26, type: !1339)
!1335 = distinct !DISubprogram(name: "memcpy", scope: !1336, file: !1336, line: 26, type: !1337, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1343)
!1336 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!24, !1339, !1340, !39}
!1339 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!1340 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1343 = !{!1334, !1344, !1345}
!1344 = !DILocalVariable(name: "__src", arg: 2, scope: !1335, file: !1336, line: 26, type: !1340)
!1345 = !DILocalVariable(name: "__len", arg: 3, scope: !1335, file: !1336, line: 26, type: !39)
!1346 = !DILocation(line: 0, scope: !1335, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 81, column: 3, scope: !1306)
!1348 = !DILocation(line: 29, column: 10, scope: !1335, inlinedAt: !1347)
!1349 = !DILocation(line: 82, column: 7, scope: !1306)
!1350 = !DILocation(line: 83, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1306, file: !204, line: 82, column: 7)
!1352 = !DILocation(line: 83, column: 5, scope: !1351)
!1353 = !DILocation(line: 84, column: 3, scope: !1306)
!1354 = !DILocation(line: 84, column: 15, scope: !1306)
!1355 = !DILocation(line: 85, column: 3, scope: !1306)
!1356 = !DILocation(line: 86, column: 1, scope: !1306)
!1357 = distinct !DISubprogram(name: "last_component", scope: !206, file: !206, line: 30, type: !1189, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1358)
!1358 = !{!1359, !1360, !1361, !1362}
!1359 = !DILocalVariable(name: "name", arg: 1, scope: !1357, file: !206, line: 30, type: !52)
!1360 = !DILocalVariable(name: "base", scope: !1357, file: !206, line: 32, type: !52)
!1361 = !DILocalVariable(name: "p", scope: !1357, file: !206, line: 33, type: !52)
!1362 = !DILocalVariable(name: "saw_slash", scope: !1357, file: !206, line: 34, type: !73)
!1363 = !DILocation(line: 0, scope: !1357)
!1364 = !DILocation(line: 36, column: 3, scope: !1357)
!1365 = !DILocation(line: 36, column: 10, scope: !1357)
!1366 = !DILocation(line: 37, column: 9, scope: !1357)
!1367 = distinct !{!1367, !1364, !1366, !723}
!1368 = !DILocation(line: 39, column: 18, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !206, line: 39, column: 3)
!1370 = distinct !DILexicalBlock(scope: !1357, file: !206, line: 39, column: 3)
!1371 = !DILocation(line: 32, column: 15, scope: !1357)
!1372 = !DILocation(line: 0, scope: !1370)
!1373 = !DILocation(line: 39, column: 3, scope: !1370)
!1374 = !DILocation(line: 43, column: 16, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !206, line: 43, column: 16)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !206, line: 41, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1369, file: !206, line: 40, column: 5)
!1378 = !DILocation(line: 43, column: 16, scope: !1376)
!1379 = !DILocation(line: 39, column: 23, scope: !1369)
!1380 = !DILocation(line: 39, column: 3, scope: !1369)
!1381 = distinct !{!1381, !1373, !1382, !723}
!1382 = !DILocation(line: 48, column: 5, scope: !1370)
!1383 = !DILocation(line: 50, column: 3, scope: !1357)
!1384 = distinct !DISubprogram(name: "base_len", scope: !206, file: !206, line: 58, type: !1284, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DILocalVariable(name: "name", arg: 1, scope: !1384, file: !206, line: 58, type: !52)
!1387 = !DILocalVariable(name: "len", scope: !1384, file: !206, line: 60, type: !39)
!1388 = !DILocalVariable(name: "prefix_len", scope: !1384, file: !206, line: 61, type: !39)
!1389 = !DILocation(line: 0, scope: !1384)
!1390 = !DILocation(line: 63, column: 14, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1384, file: !206, line: 63, column: 3)
!1392 = !DILocation(line: 63, column: 8, scope: !1391)
!1393 = !DILocation(line: 0, scope: !1391)
!1394 = !DILocation(line: 63, column: 32, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !206, line: 63, column: 3)
!1396 = !DILocation(line: 63, column: 38, scope: !1395)
!1397 = !DILocation(line: 63, column: 41, scope: !1395)
!1398 = !DILocation(line: 63, column: 3, scope: !1391)
!1399 = distinct !{!1399, !1398, !1400, !723}
!1400 = !DILocation(line: 64, column: 5, scope: !1391)
!1401 = !DILocation(line: 74, column: 3, scope: !1384)
!1402 = distinct !DISubprogram(name: "file_name_concat", scope: !209, file: !209, line: 35, type: !1403, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !208, retainedNodes: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!22, !52, !52, !809}
!1405 = !{!1406, !1407, !1408, !1409}
!1406 = !DILocalVariable(name: "dir", arg: 1, scope: !1402, file: !209, line: 35, type: !52)
!1407 = !DILocalVariable(name: "base", arg: 2, scope: !1402, file: !209, line: 35, type: !52)
!1408 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1402, file: !209, line: 35, type: !809)
!1409 = !DILocalVariable(name: "p", scope: !1402, file: !209, line: 37, type: !22)
!1410 = !DILocation(line: 0, scope: !1402)
!1411 = !DILocation(line: 37, column: 13, scope: !1402)
!1412 = !DILocation(line: 38, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1402, file: !209, line: 38, column: 7)
!1414 = !DILocation(line: 38, column: 7, scope: !1402)
!1415 = !DILocation(line: 39, column: 5, scope: !1413)
!1416 = !DILocation(line: 40, column: 3, scope: !1402)
!1417 = distinct !DISubprogram(name: "mfile_name_concat", scope: !212, file: !212, line: 47, type: !1403, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428}
!1419 = !DILocalVariable(name: "dir", arg: 1, scope: !1417, file: !212, line: 47, type: !52)
!1420 = !DILocalVariable(name: "base", arg: 2, scope: !1417, file: !212, line: 47, type: !52)
!1421 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1417, file: !212, line: 47, type: !809)
!1422 = !DILocalVariable(name: "dirbase", scope: !1417, file: !212, line: 49, type: !52)
!1423 = !DILocalVariable(name: "dirbaselen", scope: !1417, file: !212, line: 50, type: !39)
!1424 = !DILocalVariable(name: "dirlen", scope: !1417, file: !212, line: 51, type: !39)
!1425 = !DILocalVariable(name: "baselen", scope: !1417, file: !212, line: 52, type: !39)
!1426 = !DILocalVariable(name: "sep", scope: !1417, file: !212, line: 53, type: !23)
!1427 = !DILocalVariable(name: "p_concat", scope: !1417, file: !212, line: 70, type: !22)
!1428 = !DILocalVariable(name: "p", scope: !1417, file: !212, line: 71, type: !22)
!1429 = !DILocation(line: 0, scope: !1417)
!1430 = !DILocation(line: 49, column: 25, scope: !1417)
!1431 = !DILocation(line: 50, column: 23, scope: !1417)
!1432 = !DILocation(line: 51, column: 27, scope: !1417)
!1433 = !DILocation(line: 51, column: 33, scope: !1417)
!1434 = !DILocation(line: 52, column: 20, scope: !1417)
!1435 = !DILocation(line: 54, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1417, file: !212, line: 54, column: 7)
!1437 = !DILocation(line: 54, column: 7, scope: !1417)
!1438 = !DILocation(line: 57, column: 13, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !212, line: 57, column: 11)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !212, line: 55, column: 5)
!1441 = !DILocation(line: 57, column: 39, scope: !1439)
!1442 = !DILocation(line: 57, column: 44, scope: !1439)
!1443 = !DILocation(line: 57, column: 11, scope: !1440)
!1444 = !DILocation(line: 60, column: 12, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1436, file: !212, line: 60, column: 12)
!1446 = !DILocation(line: 60, column: 12, scope: !1436)
!1447 = !DILocation(line: 70, column: 35, scope: !1417)
!1448 = !DILocation(line: 70, column: 52, scope: !1417)
!1449 = !DILocation(line: 70, column: 62, scope: !1417)
!1450 = !DILocation(line: 70, column: 20, scope: !1417)
!1451 = !DILocation(line: 73, column: 16, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1417, file: !212, line: 73, column: 7)
!1453 = !DILocation(line: 73, column: 7, scope: !1417)
!1454 = !DILocalVariable(name: "__dest", arg: 1, scope: !1455, file: !1336, line: 42, type: !1339)
!1455 = distinct !DISubprogram(name: "mempcpy", scope: !1336, file: !1336, line: 42, type: !1337, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1456)
!1456 = !{!1454, !1457, !1458}
!1457 = !DILocalVariable(name: "__src", arg: 2, scope: !1455, file: !1336, line: 42, type: !1340)
!1458 = !DILocalVariable(name: "__len", arg: 3, scope: !1455, file: !1336, line: 42, type: !39)
!1459 = !DILocation(line: 0, scope: !1455, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 76, column: 7, scope: !1417)
!1461 = !DILocation(line: 45, column: 10, scope: !1455, inlinedAt: !1460)
!1462 = !DILocation(line: 77, column: 6, scope: !1417)
!1463 = !DILocation(line: 78, column: 5, scope: !1417)
!1464 = !DILocation(line: 80, column: 7, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1417, file: !212, line: 80, column: 7)
!1466 = !DILocation(line: 80, column: 7, scope: !1417)
!1467 = !DILocation(line: 81, column: 21, scope: !1465)
!1468 = !DILocation(line: 81, column: 5, scope: !1465)
!1469 = !DILocation(line: 0, scope: !1455, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 83, column: 7, scope: !1417)
!1471 = !DILocation(line: 45, column: 10, scope: !1455, inlinedAt: !1470)
!1472 = !DILocation(line: 84, column: 6, scope: !1417)
!1473 = !DILocation(line: 86, column: 3, scope: !1417)
!1474 = !DILocation(line: 87, column: 1, scope: !1417)
!1475 = distinct !DISubprogram(name: "set_program_name", scope: !83, file: !83, line: 39, type: !693, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !1476)
!1476 = !{!1477, !1478, !1479}
!1477 = !DILocalVariable(name: "argv0", arg: 1, scope: !1475, file: !83, line: 39, type: !52)
!1478 = !DILocalVariable(name: "slash", scope: !1475, file: !83, line: 46, type: !52)
!1479 = !DILocalVariable(name: "base", scope: !1475, file: !83, line: 47, type: !52)
!1480 = !DILocation(line: 0, scope: !1475)
!1481 = !DILocation(line: 51, column: 13, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1475, file: !83, line: 51, column: 7)
!1483 = !DILocation(line: 51, column: 7, scope: !1475)
!1484 = !DILocation(line: 55, column: 14, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !83, line: 52, column: 5)
!1486 = !DILocation(line: 54, column: 7, scope: !1485)
!1487 = !DILocation(line: 56, column: 7, scope: !1485)
!1488 = !DILocation(line: 59, column: 11, scope: !1475)
!1489 = !DILocation(line: 60, column: 17, scope: !1475)
!1490 = !DILocation(line: 60, column: 11, scope: !1475)
!1491 = !DILocation(line: 61, column: 12, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1475, file: !83, line: 61, column: 7)
!1493 = !DILocation(line: 61, column: 20, scope: !1492)
!1494 = !DILocation(line: 61, column: 25, scope: !1492)
!1495 = !DILocation(line: 61, column: 42, scope: !1492)
!1496 = !DILocation(line: 61, column: 28, scope: !1492)
!1497 = !DILocation(line: 61, column: 61, scope: !1492)
!1498 = !DILocation(line: 61, column: 7, scope: !1475)
!1499 = !DILocation(line: 64, column: 11, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !83, line: 64, column: 11)
!1501 = distinct !DILexicalBlock(scope: !1492, file: !83, line: 62, column: 5)
!1502 = !DILocation(line: 64, column: 36, scope: !1500)
!1503 = !DILocation(line: 64, column: 11, scope: !1501)
!1504 = !DILocation(line: 66, column: 24, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !83, line: 65, column: 9)
!1506 = !DILocation(line: 70, column: 41, scope: !1505)
!1507 = !DILocation(line: 72, column: 9, scope: !1505)
!1508 = !DILocation(line: 84, column: 16, scope: !1475)
!1509 = !DILocation(line: 90, column: 27, scope: !1475)
!1510 = !DILocation(line: 92, column: 1, scope: !1475)
!1511 = distinct !DISubprogram(name: "clone_quoting_options", scope: !89, file: !89, line: 122, type: !1512, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1515)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1514, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1515 = !{!1516, !1517, !1518}
!1516 = !DILocalVariable(name: "o", arg: 1, scope: !1511, file: !89, line: 122, type: !1514)
!1517 = !DILocalVariable(name: "e", scope: !1511, file: !89, line: 124, type: !42)
!1518 = !DILocalVariable(name: "p", scope: !1511, file: !89, line: 125, type: !1514)
!1519 = !DILocation(line: 0, scope: !1511)
!1520 = !DILocation(line: 124, column: 11, scope: !1511)
!1521 = !DILocation(line: 125, column: 40, scope: !1511)
!1522 = !DILocation(line: 125, column: 31, scope: !1511)
!1523 = !DILocation(line: 127, column: 9, scope: !1511)
!1524 = !DILocation(line: 128, column: 3, scope: !1511)
!1525 = distinct !DISubprogram(name: "get_quoting_style", scope: !89, file: !89, line: 133, type: !1526, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1530)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!91, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!1530 = !{!1531}
!1531 = !DILocalVariable(name: "o", arg: 1, scope: !1525, file: !89, line: 133, type: !1528)
!1532 = !DILocation(line: 0, scope: !1525)
!1533 = !DILocation(line: 135, column: 11, scope: !1525)
!1534 = !DILocation(line: 135, column: 46, scope: !1525)
!1535 = !{!1536, !674, i64 0}
!1536 = !{!"quoting_options", !674, i64 0, !831, i64 4, !674, i64 8, !673, i64 40, !673, i64 48}
!1537 = !DILocation(line: 135, column: 3, scope: !1525)
!1538 = distinct !DISubprogram(name: "set_quoting_style", scope: !89, file: !89, line: 141, type: !1539, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1514, !91}
!1541 = !{!1542, !1543}
!1542 = !DILocalVariable(name: "o", arg: 1, scope: !1538, file: !89, line: 141, type: !1514)
!1543 = !DILocalVariable(name: "s", arg: 2, scope: !1538, file: !89, line: 141, type: !91)
!1544 = !DILocation(line: 0, scope: !1538)
!1545 = !DILocation(line: 143, column: 4, scope: !1538)
!1546 = !DILocation(line: 143, column: 39, scope: !1538)
!1547 = !DILocation(line: 143, column: 45, scope: !1538)
!1548 = !DILocation(line: 144, column: 1, scope: !1538)
!1549 = distinct !DISubprogram(name: "set_char_quoting", scope: !89, file: !89, line: 152, type: !1550, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1552)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!42, !1514, !23, !42}
!1552 = !{!1553, !1554, !1555, !1556, !1558, !1560, !1561}
!1553 = !DILocalVariable(name: "o", arg: 1, scope: !1549, file: !89, line: 152, type: !1514)
!1554 = !DILocalVariable(name: "c", arg: 2, scope: !1549, file: !89, line: 152, type: !23)
!1555 = !DILocalVariable(name: "i", arg: 3, scope: !1549, file: !89, line: 152, type: !42)
!1556 = !DILocalVariable(name: "uc", scope: !1549, file: !89, line: 154, type: !1557)
!1557 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1558 = !DILocalVariable(name: "p", scope: !1549, file: !89, line: 155, type: !1559)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1560 = !DILocalVariable(name: "shift", scope: !1549, file: !89, line: 157, type: !42)
!1561 = !DILocalVariable(name: "r", scope: !1549, file: !89, line: 158, type: !42)
!1562 = !DILocation(line: 0, scope: !1549)
!1563 = !DILocation(line: 156, column: 6, scope: !1549)
!1564 = !DILocation(line: 156, column: 62, scope: !1549)
!1565 = !DILocation(line: 156, column: 57, scope: !1549)
!1566 = !DILocation(line: 157, column: 15, scope: !1549)
!1567 = !DILocation(line: 158, column: 12, scope: !1549)
!1568 = !DILocation(line: 158, column: 15, scope: !1549)
!1569 = !DILocation(line: 158, column: 25, scope: !1549)
!1570 = !DILocation(line: 159, column: 13, scope: !1549)
!1571 = !DILocation(line: 159, column: 18, scope: !1549)
!1572 = !DILocation(line: 159, column: 23, scope: !1549)
!1573 = !DILocation(line: 159, column: 6, scope: !1549)
!1574 = !DILocation(line: 160, column: 3, scope: !1549)
!1575 = distinct !DISubprogram(name: "set_quoting_flags", scope: !89, file: !89, line: 168, type: !1576, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!42, !1514, !42}
!1578 = !{!1579, !1580, !1581}
!1579 = !DILocalVariable(name: "o", arg: 1, scope: !1575, file: !89, line: 168, type: !1514)
!1580 = !DILocalVariable(name: "i", arg: 2, scope: !1575, file: !89, line: 168, type: !42)
!1581 = !DILocalVariable(name: "r", scope: !1575, file: !89, line: 170, type: !42)
!1582 = !DILocation(line: 0, scope: !1575)
!1583 = !DILocation(line: 171, column: 8, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1575, file: !89, line: 171, column: 7)
!1585 = !DILocation(line: 171, column: 7, scope: !1575)
!1586 = !DILocation(line: 173, column: 10, scope: !1575)
!1587 = !{!1536, !831, i64 4}
!1588 = !DILocation(line: 174, column: 12, scope: !1575)
!1589 = !DILocation(line: 175, column: 3, scope: !1575)
!1590 = distinct !DISubprogram(name: "set_custom_quoting", scope: !89, file: !89, line: 179, type: !1591, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1514, !52, !52}
!1593 = !{!1594, !1595, !1596}
!1594 = !DILocalVariable(name: "o", arg: 1, scope: !1590, file: !89, line: 179, type: !1514)
!1595 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1590, file: !89, line: 180, type: !52)
!1596 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1590, file: !89, line: 180, type: !52)
!1597 = !DILocation(line: 0, scope: !1590)
!1598 = !DILocation(line: 182, column: 8, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1590, file: !89, line: 182, column: 7)
!1600 = !DILocation(line: 182, column: 7, scope: !1590)
!1601 = !DILocation(line: 184, column: 6, scope: !1590)
!1602 = !DILocation(line: 184, column: 12, scope: !1590)
!1603 = !DILocation(line: 185, column: 8, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1590, file: !89, line: 185, column: 7)
!1605 = !DILocation(line: 185, column: 19, scope: !1604)
!1606 = !DILocation(line: 186, column: 5, scope: !1604)
!1607 = !DILocation(line: 187, column: 6, scope: !1590)
!1608 = !DILocation(line: 187, column: 17, scope: !1590)
!1609 = !{!1536, !673, i64 40}
!1610 = !DILocation(line: 188, column: 6, scope: !1590)
!1611 = !DILocation(line: 188, column: 18, scope: !1590)
!1612 = !{!1536, !673, i64 48}
!1613 = !DILocation(line: 189, column: 1, scope: !1590)
!1614 = distinct !DISubprogram(name: "quotearg_buffer", scope: !89, file: !89, line: 784, type: !1615, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!39, !22, !39, !52, !39, !1528}
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1618 = !DILocalVariable(name: "buffer", arg: 1, scope: !1614, file: !89, line: 784, type: !22)
!1619 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1614, file: !89, line: 784, type: !39)
!1620 = !DILocalVariable(name: "arg", arg: 3, scope: !1614, file: !89, line: 785, type: !52)
!1621 = !DILocalVariable(name: "argsize", arg: 4, scope: !1614, file: !89, line: 785, type: !39)
!1622 = !DILocalVariable(name: "o", arg: 5, scope: !1614, file: !89, line: 786, type: !1528)
!1623 = !DILocalVariable(name: "p", scope: !1614, file: !89, line: 788, type: !1528)
!1624 = !DILocalVariable(name: "e", scope: !1614, file: !89, line: 789, type: !42)
!1625 = !DILocalVariable(name: "r", scope: !1614, file: !89, line: 790, type: !39)
!1626 = !DILocation(line: 0, scope: !1614)
!1627 = !DILocation(line: 788, column: 37, scope: !1614)
!1628 = !DILocation(line: 789, column: 11, scope: !1614)
!1629 = !DILocation(line: 791, column: 43, scope: !1614)
!1630 = !DILocation(line: 791, column: 53, scope: !1614)
!1631 = !DILocation(line: 791, column: 60, scope: !1614)
!1632 = !DILocation(line: 792, column: 43, scope: !1614)
!1633 = !DILocation(line: 792, column: 58, scope: !1614)
!1634 = !DILocation(line: 790, column: 14, scope: !1614)
!1635 = !DILocation(line: 793, column: 9, scope: !1614)
!1636 = !DILocation(line: 794, column: 3, scope: !1614)
!1637 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !89, file: !89, line: 256, type: !1638, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1642)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!39, !22, !39, !52, !39, !91, !42, !1640, !52, !52}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1667, !1668, !1669, !1670, !1671, !1674, !1675, !1693, !1696, !1697, !1704, !1707, !1708, !1709, !1710, !1711, !1712}
!1643 = !DILocalVariable(name: "buffer", arg: 1, scope: !1637, file: !89, line: 256, type: !22)
!1644 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1637, file: !89, line: 256, type: !39)
!1645 = !DILocalVariable(name: "arg", arg: 3, scope: !1637, file: !89, line: 257, type: !52)
!1646 = !DILocalVariable(name: "argsize", arg: 4, scope: !1637, file: !89, line: 257, type: !39)
!1647 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1637, file: !89, line: 258, type: !91)
!1648 = !DILocalVariable(name: "flags", arg: 6, scope: !1637, file: !89, line: 258, type: !42)
!1649 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1637, file: !89, line: 259, type: !1640)
!1650 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1637, file: !89, line: 260, type: !52)
!1651 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1637, file: !89, line: 261, type: !52)
!1652 = !DILocalVariable(name: "i", scope: !1637, file: !89, line: 263, type: !39)
!1653 = !DILocalVariable(name: "len", scope: !1637, file: !89, line: 264, type: !39)
!1654 = !DILocalVariable(name: "orig_buffersize", scope: !1637, file: !89, line: 265, type: !39)
!1655 = !DILocalVariable(name: "quote_string", scope: !1637, file: !89, line: 266, type: !52)
!1656 = !DILocalVariable(name: "quote_string_len", scope: !1637, file: !89, line: 267, type: !39)
!1657 = !DILocalVariable(name: "backslash_escapes", scope: !1637, file: !89, line: 268, type: !73)
!1658 = !DILocalVariable(name: "unibyte_locale", scope: !1637, file: !89, line: 269, type: !73)
!1659 = !DILocalVariable(name: "elide_outer_quotes", scope: !1637, file: !89, line: 270, type: !73)
!1660 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1637, file: !89, line: 271, type: !73)
!1661 = !DILocalVariable(name: "encountered_single_quote", scope: !1637, file: !89, line: 272, type: !73)
!1662 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1637, file: !89, line: 273, type: !73)
!1663 = !DILocalVariable(name: "c", scope: !1664, file: !89, line: 402, type: !1557)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !89, line: 401, column: 5)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !89, line: 400, column: 3)
!1666 = distinct !DILexicalBlock(scope: !1637, file: !89, line: 400, column: 3)
!1667 = !DILocalVariable(name: "esc", scope: !1664, file: !89, line: 403, type: !1557)
!1668 = !DILocalVariable(name: "is_right_quote", scope: !1664, file: !89, line: 404, type: !73)
!1669 = !DILocalVariable(name: "escaping", scope: !1664, file: !89, line: 405, type: !73)
!1670 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1664, file: !89, line: 406, type: !73)
!1671 = !DILocalVariable(name: "m", scope: !1672, file: !89, line: 610, type: !39)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 608, column: 11)
!1673 = distinct !DILexicalBlock(scope: !1664, file: !89, line: 426, column: 9)
!1674 = !DILocalVariable(name: "printable", scope: !1672, file: !89, line: 612, type: !73)
!1675 = !DILocalVariable(name: "mbstate", scope: !1676, file: !89, line: 621, type: !1678)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !89, line: 620, column: 15)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !89, line: 614, column: 17)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1679, line: 6, baseType: !1680)
!1679 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1681, line: 21, baseType: !1682)
!1681 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1681, line: 13, size: 64, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1682, file: !1681, line: 15, baseType: !42, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1682, file: !1681, line: 20, baseType: !1686, size: 32, offset: 32)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1681, line: 16, size: 32, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1686, file: !1681, line: 18, baseType: !7, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1686, file: !1681, line: 19, baseType: !1690, size: 32)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1691)
!1691 = !{!1692}
!1692 = !DISubrange(count: 4)
!1693 = !DILocalVariable(name: "w", scope: !1694, file: !89, line: 631, type: !1695)
!1694 = distinct !DILexicalBlock(scope: !1676, file: !89, line: 630, column: 19)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !40, line: 74, baseType: !42)
!1696 = !DILocalVariable(name: "bytes", scope: !1694, file: !89, line: 632, type: !39)
!1697 = !DILocalVariable(name: "j", scope: !1698, file: !89, line: 657, type: !39)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !89, line: 656, column: 27)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !89, line: 654, column: 29)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !89, line: 649, column: 23)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !89, line: 641, column: 30)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !89, line: 636, column: 30)
!1703 = distinct !DILexicalBlock(scope: !1694, file: !89, line: 634, column: 25)
!1704 = !DILocalVariable(name: "ilim", scope: !1705, file: !89, line: 684, type: !39)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !89, line: 681, column: 15)
!1706 = distinct !DILexicalBlock(scope: !1672, file: !89, line: 680, column: 17)
!1707 = !DILabel(scope: !1637, name: "process_input", file: !89, line: 314)
!1708 = !DILabel(scope: !1673, name: "c_and_shell_escape", file: !89, line: 512)
!1709 = !DILabel(scope: !1673, name: "c_escape", file: !89, line: 517)
!1710 = !DILabel(scope: !1664, name: "store_escape", file: !89, line: 719)
!1711 = !DILabel(scope: !1664, name: "store_c", file: !89, line: 722)
!1712 = !DILabel(scope: !1637, name: "force_outer_quoting_style", file: !89, line: 763)
!1713 = !DILocation(line: 0, scope: !1637)
!1714 = !DILocation(line: 269, column: 25, scope: !1637)
!1715 = !DILocation(line: 269, column: 36, scope: !1637)
!1716 = !DILocation(line: 270, column: 8, scope: !1637)
!1717 = !DILocation(line: 273, column: 3, scope: !1637)
!1718 = !DILocation(line: 265, column: 10, scope: !1637)
!1719 = !DILocation(line: 266, column: 15, scope: !1637)
!1720 = !DILocation(line: 267, column: 10, scope: !1637)
!1721 = !DILocation(line: 268, column: 8, scope: !1637)
!1722 = !DILocation(line: 271, column: 8, scope: !1637)
!1723 = !DILocation(line: 272, column: 8, scope: !1637)
!1724 = !DILocation(line: 273, column: 8, scope: !1637)
!1725 = !DILocation(line: 314, column: 2, scope: !1637)
!1726 = !DILocation(line: 316, column: 3, scope: !1637)
!1727 = !DILocation(line: 323, column: 11, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1637, file: !89, line: 317, column: 5)
!1729 = !DILocation(line: 323, column: 12, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1728, file: !89, line: 323, column: 11)
!1731 = !DILocation(line: 324, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !89, line: 324, column: 9)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !89, line: 324, column: 9)
!1734 = !DILocation(line: 324, column: 9, scope: !1733)
!1735 = !DILocation(line: 362, column: 26, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !89, line: 340, column: 11)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !89, line: 339, column: 13)
!1738 = distinct !DILexicalBlock(scope: !1728, file: !89, line: 338, column: 7)
!1739 = !DILocation(line: 363, column: 27, scope: !1736)
!1740 = !DILocation(line: 364, column: 11, scope: !1736)
!1741 = !DILocation(line: 365, column: 14, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !89, line: 365, column: 13)
!1743 = !DILocation(line: 365, column: 13, scope: !1738)
!1744 = !DILocation(line: 366, column: 43, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !89, line: 366, column: 11)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !89, line: 366, column: 11)
!1747 = !DILocation(line: 366, column: 11, scope: !1746)
!1748 = !DILocation(line: 367, column: 13, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !89, line: 367, column: 13)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !89, line: 367, column: 13)
!1751 = !DILocation(line: 367, column: 13, scope: !1750)
!1752 = !DILocation(line: 366, column: 70, scope: !1745)
!1753 = distinct !{!1753, !1747, !1754, !723}
!1754 = !DILocation(line: 367, column: 13, scope: !1746)
!1755 = !DILocation(line: 264, column: 10, scope: !1637)
!1756 = !DILocation(line: 370, column: 28, scope: !1738)
!1757 = !DILocation(line: 372, column: 7, scope: !1728)
!1758 = !DILocation(line: 376, column: 7, scope: !1728)
!1759 = !DILocation(line: 379, column: 7, scope: !1728)
!1760 = !DILocation(line: 381, column: 12, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1728, file: !89, line: 381, column: 11)
!1762 = !DILocation(line: 381, column: 11, scope: !1728)
!1763 = !DILocation(line: 386, column: 12, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1728, file: !89, line: 386, column: 11)
!1765 = !DILocation(line: 386, column: 11, scope: !1728)
!1766 = !DILocation(line: 387, column: 9, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !89, line: 387, column: 9)
!1768 = distinct !DILexicalBlock(scope: !1764, file: !89, line: 387, column: 9)
!1769 = !DILocation(line: 387, column: 9, scope: !1768)
!1770 = !DILocation(line: 394, column: 7, scope: !1728)
!1771 = !DILocation(line: 397, column: 7, scope: !1728)
!1772 = !DILocation(line: 400, column: 8, scope: !1666)
!1773 = !DILocation(line: 0, scope: !1666)
!1774 = !DILocation(line: 400, column: 27, scope: !1665)
!1775 = !DILocation(line: 400, column: 19, scope: !1665)
!1776 = !DILocation(line: 400, column: 41, scope: !1665)
!1777 = !DILocation(line: 400, column: 48, scope: !1665)
!1778 = !DILocation(line: 400, column: 3, scope: !1666)
!1779 = !DILocation(line: 400, column: 60, scope: !1665)
!1780 = !DILocation(line: 0, scope: !1664)
!1781 = !DILocation(line: 409, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1664, file: !89, line: 408, column: 11)
!1783 = !DILocation(line: 411, column: 17, scope: !1782)
!1784 = !DILocation(line: 412, column: 39, scope: !1782)
!1785 = !DILocation(line: 416, column: 32, scope: !1782)
!1786 = !DILocation(line: 412, column: 19, scope: !1782)
!1787 = !DILocation(line: 412, column: 15, scope: !1782)
!1788 = !DILocation(line: 417, column: 11, scope: !1782)
!1789 = !DILocation(line: 417, column: 26, scope: !1782)
!1790 = !DILocation(line: 417, column: 14, scope: !1782)
!1791 = !DILocation(line: 417, column: 63, scope: !1782)
!1792 = !DILocation(line: 408, column: 11, scope: !1664)
!1793 = !DILocation(line: 424, column: 11, scope: !1664)
!1794 = !DILocation(line: 425, column: 7, scope: !1664)
!1795 = !DILocation(line: 428, column: 15, scope: !1673)
!1796 = !DILocation(line: 430, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !89, line: 430, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !89, line: 429, column: 13)
!1799 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 428, column: 15)
!1800 = !DILocation(line: 430, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !89, line: 430, column: 15)
!1802 = !DILocation(line: 430, column: 15, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !89, line: 430, column: 15)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !89, line: 430, column: 15)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !89, line: 430, column: 15)
!1806 = !DILocation(line: 430, column: 15, scope: !1804)
!1807 = !DILocation(line: 430, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !89, line: 430, column: 15)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !89, line: 430, column: 15)
!1810 = !DILocation(line: 430, column: 15, scope: !1809)
!1811 = !DILocation(line: 430, column: 15, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !89, line: 430, column: 15)
!1813 = distinct !DILexicalBlock(scope: !1805, file: !89, line: 430, column: 15)
!1814 = !DILocation(line: 430, column: 15, scope: !1813)
!1815 = !DILocation(line: 430, column: 15, scope: !1805)
!1816 = !DILocation(line: 430, column: 15, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !89, line: 430, column: 15)
!1818 = distinct !DILexicalBlock(scope: !1797, file: !89, line: 430, column: 15)
!1819 = !DILocation(line: 430, column: 15, scope: !1818)
!1820 = !DILocation(line: 438, column: 19, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1798, file: !89, line: 437, column: 19)
!1822 = !DILocation(line: 438, column: 48, scope: !1821)
!1823 = !DILocation(line: 438, column: 59, scope: !1821)
!1824 = !DILocation(line: 440, column: 19, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !89, line: 440, column: 19)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !89, line: 440, column: 19)
!1827 = distinct !DILexicalBlock(scope: !1821, file: !89, line: 439, column: 17)
!1828 = !DILocation(line: 440, column: 19, scope: !1826)
!1829 = !DILocation(line: 441, column: 19, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !89, line: 441, column: 19)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !89, line: 441, column: 19)
!1832 = !DILocation(line: 441, column: 19, scope: !1831)
!1833 = !DILocation(line: 442, column: 17, scope: !1827)
!1834 = !DILocation(line: 449, column: 20, scope: !1799)
!1835 = !DILocation(line: 454, column: 11, scope: !1673)
!1836 = !DILocation(line: 457, column: 19, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 455, column: 13)
!1838 = !DILocation(line: 463, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1837, file: !89, line: 462, column: 19)
!1840 = !DILocation(line: 463, column: 47, scope: !1839)
!1841 = !DILocation(line: 463, column: 41, scope: !1839)
!1842 = !DILocation(line: 463, column: 52, scope: !1839)
!1843 = !DILocation(line: 462, column: 19, scope: !1837)
!1844 = !DILocation(line: 464, column: 25, scope: !1839)
!1845 = !DILocation(line: 464, column: 17, scope: !1839)
!1846 = !DILocation(line: 471, column: 25, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1839, file: !89, line: 465, column: 19)
!1848 = !DILocation(line: 475, column: 21, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !89, line: 475, column: 21)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !89, line: 475, column: 21)
!1851 = !DILocation(line: 475, column: 21, scope: !1850)
!1852 = !DILocation(line: 476, column: 21, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !89, line: 476, column: 21)
!1854 = distinct !DILexicalBlock(scope: !1847, file: !89, line: 476, column: 21)
!1855 = !DILocation(line: 476, column: 21, scope: !1854)
!1856 = !DILocation(line: 477, column: 21, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !89, line: 477, column: 21)
!1858 = distinct !DILexicalBlock(scope: !1847, file: !89, line: 477, column: 21)
!1859 = !DILocation(line: 477, column: 21, scope: !1858)
!1860 = !DILocation(line: 478, column: 21, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !89, line: 478, column: 21)
!1862 = distinct !DILexicalBlock(scope: !1847, file: !89, line: 478, column: 21)
!1863 = !DILocation(line: 478, column: 21, scope: !1862)
!1864 = !DILocation(line: 479, column: 21, scope: !1847)
!1865 = !DILocation(line: 492, column: 31, scope: !1673)
!1866 = !DILocation(line: 493, column: 31, scope: !1673)
!1867 = !DILocation(line: 495, column: 31, scope: !1673)
!1868 = !DILocation(line: 496, column: 31, scope: !1673)
!1869 = !DILocation(line: 497, column: 31, scope: !1673)
!1870 = !DILocation(line: 500, column: 15, scope: !1673)
!1871 = !DILocation(line: 502, column: 19, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !89, line: 501, column: 13)
!1873 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 500, column: 15)
!1874 = !DILocation(line: 509, column: 33, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 509, column: 15)
!1876 = !DILocation(line: 0, scope: !1673)
!1877 = !DILocation(line: 512, column: 9, scope: !1673)
!1878 = !DILocation(line: 514, column: 15, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 513, column: 15)
!1880 = !DILocation(line: 517, column: 9, scope: !1673)
!1881 = !DILocation(line: 518, column: 15, scope: !1673)
!1882 = !DILocation(line: 526, column: 15, scope: !1673)
!1883 = !DILocation(line: 526, column: 40, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 526, column: 15)
!1885 = !DILocation(line: 526, column: 47, scope: !1884)
!1886 = !DILocation(line: 526, column: 18, scope: !1884)
!1887 = !DILocation(line: 530, column: 17, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 530, column: 15)
!1889 = !DILocation(line: 530, column: 15, scope: !1673)
!1890 = !DILocation(line: 535, column: 11, scope: !1673)
!1891 = !DILocation(line: 549, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 548, column: 15)
!1893 = !DILocation(line: 556, column: 15, scope: !1673)
!1894 = !DILocation(line: 558, column: 19, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !89, line: 557, column: 13)
!1896 = distinct !DILexicalBlock(scope: !1673, file: !89, line: 556, column: 15)
!1897 = !DILocation(line: 561, column: 19, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !89, line: 561, column: 19)
!1899 = !DILocation(line: 561, column: 30, scope: !1898)
!1900 = !DILocation(line: 570, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !89, line: 570, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1895, file: !89, line: 570, column: 15)
!1903 = !DILocation(line: 570, column: 15, scope: !1902)
!1904 = !DILocation(line: 571, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !89, line: 571, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1895, file: !89, line: 571, column: 15)
!1907 = !DILocation(line: 571, column: 15, scope: !1906)
!1908 = !DILocation(line: 572, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !89, line: 572, column: 15)
!1910 = distinct !DILexicalBlock(scope: !1895, file: !89, line: 572, column: 15)
!1911 = !DILocation(line: 572, column: 15, scope: !1910)
!1912 = !DILocation(line: 574, column: 13, scope: !1895)
!1913 = !DILocation(line: 614, column: 17, scope: !1672)
!1914 = !DILocation(line: 0, scope: !1672)
!1915 = !DILocation(line: 617, column: 29, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1677, file: !89, line: 615, column: 15)
!1917 = !{!1918, !1918, i64 0}
!1918 = !{!"short", !674, i64 0}
!1919 = !DILocation(line: 617, column: 27, scope: !1916)
!1920 = !DILocation(line: 678, column: 40, scope: !1672)
!1921 = !DILocation(line: 680, column: 23, scope: !1706)
!1922 = !DILocation(line: 621, column: 17, scope: !1676)
!1923 = !DILocation(line: 621, column: 27, scope: !1676)
!1924 = !DILocalVariable(name: "__dest", arg: 1, scope: !1925, file: !1336, line: 57, type: !24)
!1925 = distinct !DISubprogram(name: "memset", scope: !1336, file: !1336, line: 57, type: !1926, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!24, !24, !42, !39}
!1928 = !{!1924, !1929, !1930}
!1929 = !DILocalVariable(name: "__ch", arg: 2, scope: !1925, file: !1336, line: 57, type: !42)
!1930 = !DILocalVariable(name: "__len", arg: 3, scope: !1925, file: !1336, line: 57, type: !39)
!1931 = !DILocation(line: 0, scope: !1925, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 622, column: 17, scope: !1676)
!1933 = !DILocation(line: 59, column: 10, scope: !1925, inlinedAt: !1932)
!1934 = !DILocation(line: 626, column: 29, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1676, file: !89, line: 626, column: 21)
!1936 = !DILocation(line: 626, column: 21, scope: !1676)
!1937 = !DILocation(line: 627, column: 29, scope: !1935)
!1938 = !DILocation(line: 627, column: 19, scope: !1935)
!1939 = !DILocation(line: 629, column: 17, scope: !1676)
!1940 = !DILocation(line: 624, column: 19, scope: !1676)
!1941 = !DILocation(line: 625, column: 27, scope: !1676)
!1942 = !DILocation(line: 631, column: 21, scope: !1694)
!1943 = !DILocation(line: 632, column: 56, scope: !1694)
!1944 = !DILocation(line: 632, column: 50, scope: !1694)
!1945 = !DILocation(line: 633, column: 53, scope: !1694)
!1946 = !DILocation(line: 0, scope: !1694)
!1947 = !DILocation(line: 632, column: 36, scope: !1694)
!1948 = !DILocation(line: 634, column: 25, scope: !1694)
!1949 = !DILocation(line: 644, column: 38, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1701, file: !89, line: 642, column: 23)
!1951 = !DILocation(line: 644, column: 48, scope: !1950)
!1952 = !DILocation(line: 644, column: 25, scope: !1950)
!1953 = !DILocation(line: 644, column: 51, scope: !1950)
!1954 = !DILocation(line: 645, column: 28, scope: !1950)
!1955 = !DILocation(line: 644, column: 34, scope: !1950)
!1956 = distinct !{!1956, !1952, !1954, !723}
!1957 = !DILocation(line: 655, column: 29, scope: !1699)
!1958 = !DILocation(line: 0, scope: !1698)
!1959 = !DILocation(line: 659, column: 49, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !89, line: 658, column: 29)
!1961 = distinct !DILexicalBlock(scope: !1698, file: !89, line: 658, column: 29)
!1962 = !DILocation(line: 659, column: 39, scope: !1960)
!1963 = !DILocation(line: 659, column: 31, scope: !1960)
!1964 = !DILocation(line: 658, column: 53, scope: !1960)
!1965 = !DILocation(line: 658, column: 43, scope: !1960)
!1966 = !DILocation(line: 658, column: 29, scope: !1961)
!1967 = distinct !{!1967, !1966, !1968, !723}
!1968 = !DILocation(line: 667, column: 33, scope: !1961)
!1969 = !DILocation(line: 674, column: 19, scope: !1676)
!1970 = !DILocation(line: 670, column: 41, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1700, file: !89, line: 670, column: 29)
!1972 = !DILocation(line: 670, column: 31, scope: !1971)
!1973 = !DILocation(line: 670, column: 29, scope: !1700)
!1974 = !DILocation(line: 672, column: 27, scope: !1700)
!1975 = !DILocation(line: 675, column: 26, scope: !1676)
!1976 = !DILocation(line: 675, column: 24, scope: !1676)
!1977 = !DILocation(line: 674, column: 19, scope: !1694)
!1978 = distinct !{!1978, !1939, !1979, !723}
!1979 = !DILocation(line: 675, column: 44, scope: !1676)
!1980 = !DILocation(line: 676, column: 15, scope: !1677)
!1981 = !DILocation(line: 680, column: 19, scope: !1706)
!1982 = !DILocation(line: 680, column: 45, scope: !1706)
!1983 = !DILocation(line: 684, column: 33, scope: !1705)
!1984 = !DILocation(line: 0, scope: !1705)
!1985 = !DILocation(line: 686, column: 17, scope: !1705)
!1986 = !DILocation(line: 405, column: 12, scope: !1664)
!1987 = !DILocation(line: 688, column: 43, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !89, line: 688, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !89, line: 687, column: 19)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !89, line: 686, column: 17)
!1991 = distinct !DILexicalBlock(scope: !1705, file: !89, line: 686, column: 17)
!1992 = !DILocation(line: 690, column: 25, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !89, line: 690, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1988, file: !89, line: 689, column: 23)
!1995 = !DILocation(line: 690, column: 25, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !89, line: 690, column: 25)
!1997 = !DILocation(line: 690, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !89, line: 690, column: 25)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !89, line: 690, column: 25)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !89, line: 690, column: 25)
!2001 = !DILocation(line: 690, column: 25, scope: !1999)
!2002 = !DILocation(line: 690, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !89, line: 690, column: 25)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !89, line: 690, column: 25)
!2005 = !DILocation(line: 690, column: 25, scope: !2004)
!2006 = !DILocation(line: 690, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !89, line: 690, column: 25)
!2008 = distinct !DILexicalBlock(scope: !2000, file: !89, line: 690, column: 25)
!2009 = !DILocation(line: 690, column: 25, scope: !2008)
!2010 = !DILocation(line: 690, column: 25, scope: !2000)
!2011 = !DILocation(line: 690, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !89, line: 690, column: 25)
!2013 = distinct !DILexicalBlock(scope: !1993, file: !89, line: 690, column: 25)
!2014 = !DILocation(line: 690, column: 25, scope: !2013)
!2015 = !DILocation(line: 691, column: 25, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !89, line: 691, column: 25)
!2017 = distinct !DILexicalBlock(scope: !1994, file: !89, line: 691, column: 25)
!2018 = !DILocation(line: 691, column: 25, scope: !2017)
!2019 = !DILocation(line: 692, column: 25, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !89, line: 692, column: 25)
!2021 = distinct !DILexicalBlock(scope: !1994, file: !89, line: 692, column: 25)
!2022 = !DILocation(line: 692, column: 25, scope: !2021)
!2023 = !DILocation(line: 693, column: 38, scope: !1994)
!2024 = !DILocation(line: 693, column: 33, scope: !1994)
!2025 = !DILocation(line: 694, column: 23, scope: !1994)
!2026 = !DILocation(line: 695, column: 30, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1988, file: !89, line: 695, column: 30)
!2028 = !DILocation(line: 695, column: 30, scope: !1988)
!2029 = !DILocation(line: 697, column: 25, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !89, line: 697, column: 25)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !89, line: 697, column: 25)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !89, line: 696, column: 23)
!2033 = !DILocation(line: 697, column: 25, scope: !2031)
!2034 = !DILocation(line: 699, column: 23, scope: !2032)
!2035 = !DILocation(line: 700, column: 35, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1989, file: !89, line: 700, column: 25)
!2037 = !DILocation(line: 700, column: 30, scope: !2036)
!2038 = !DILocation(line: 700, column: 25, scope: !1989)
!2039 = !DILocation(line: 702, column: 21, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !89, line: 702, column: 21)
!2041 = distinct !DILexicalBlock(scope: !1989, file: !89, line: 702, column: 21)
!2042 = !DILocation(line: 702, column: 21, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !89, line: 702, column: 21)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !89, line: 702, column: 21)
!2045 = distinct !DILexicalBlock(scope: !2040, file: !89, line: 702, column: 21)
!2046 = !DILocation(line: 702, column: 21, scope: !2044)
!2047 = !DILocation(line: 702, column: 21, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !89, line: 702, column: 21)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !89, line: 702, column: 21)
!2050 = !DILocation(line: 702, column: 21, scope: !2049)
!2051 = !DILocation(line: 702, column: 21, scope: !2045)
!2052 = !DILocation(line: 0, scope: !1989)
!2053 = !DILocation(line: 703, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !89, line: 703, column: 21)
!2055 = distinct !DILexicalBlock(scope: !1989, file: !89, line: 703, column: 21)
!2056 = !DILocation(line: 703, column: 21, scope: !2055)
!2057 = !DILocation(line: 704, column: 25, scope: !1989)
!2058 = !DILocation(line: 686, column: 17, scope: !1990)
!2059 = distinct !{!2059, !2060, !2061}
!2060 = !DILocation(line: 686, column: 17, scope: !1991)
!2061 = !DILocation(line: 705, column: 19, scope: !1991)
!2062 = !DILocation(line: 416, column: 30, scope: !1782)
!2063 = !DILocation(line: 712, column: 34, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1664, file: !89, line: 712, column: 11)
!2065 = !DILocation(line: 715, column: 35, scope: !2064)
!2066 = !DILocation(line: 715, column: 17, scope: !2064)
!2067 = !DILocation(line: 715, column: 47, scope: !2064)
!2068 = !DILocation(line: 715, column: 65, scope: !2064)
!2069 = !DILocation(line: 716, column: 11, scope: !2064)
!2070 = !DILocation(line: 712, column: 11, scope: !1664)
!2071 = !DILocation(line: 400, column: 10, scope: !1666)
!2072 = !DILocation(line: 719, column: 5, scope: !1664)
!2073 = !DILocation(line: 720, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1664, file: !89, line: 720, column: 7)
!2075 = !DILocation(line: 720, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2074, file: !89, line: 720, column: 7)
!2077 = !DILocation(line: 720, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !89, line: 720, column: 7)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !89, line: 720, column: 7)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !89, line: 720, column: 7)
!2081 = !DILocation(line: 720, column: 7, scope: !2079)
!2082 = !DILocation(line: 720, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !89, line: 720, column: 7)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !89, line: 720, column: 7)
!2085 = !DILocation(line: 720, column: 7, scope: !2084)
!2086 = !DILocation(line: 720, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !89, line: 720, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2080, file: !89, line: 720, column: 7)
!2089 = !DILocation(line: 720, column: 7, scope: !2088)
!2090 = !DILocation(line: 720, column: 7, scope: !2080)
!2091 = !DILocation(line: 720, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !89, line: 720, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2074, file: !89, line: 720, column: 7)
!2094 = !DILocation(line: 720, column: 7, scope: !2093)
!2095 = !DILocation(line: 722, column: 5, scope: !1664)
!2096 = !DILocation(line: 723, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !89, line: 723, column: 7)
!2098 = distinct !DILexicalBlock(scope: !1664, file: !89, line: 723, column: 7)
!2099 = !DILocation(line: 424, column: 9, scope: !1664)
!2100 = !DILocation(line: 723, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !89, line: 723, column: 7)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !89, line: 723, column: 7)
!2103 = distinct !DILexicalBlock(scope: !2097, file: !89, line: 723, column: 7)
!2104 = !DILocation(line: 723, column: 7, scope: !2102)
!2105 = !DILocation(line: 723, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !89, line: 723, column: 7)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !89, line: 723, column: 7)
!2108 = !DILocation(line: 723, column: 7, scope: !2107)
!2109 = !DILocation(line: 723, column: 7, scope: !2103)
!2110 = !DILocation(line: 724, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !89, line: 724, column: 7)
!2112 = distinct !DILexicalBlock(scope: !1664, file: !89, line: 724, column: 7)
!2113 = !DILocation(line: 724, column: 7, scope: !2112)
!2114 = !DILocation(line: 726, column: 13, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1664, file: !89, line: 726, column: 11)
!2116 = !DILocation(line: 726, column: 11, scope: !1664)
!2117 = !DILocation(line: 728, column: 5, scope: !1665)
!2118 = !DILocation(line: 400, column: 75, scope: !1665)
!2119 = !DILocation(line: 400, column: 3, scope: !1665)
!2120 = distinct !{!2120, !1778, !2121, !723}
!2121 = !DILocation(line: 728, column: 5, scope: !1666)
!2122 = !DILocation(line: 730, column: 11, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1637, file: !89, line: 730, column: 7)
!2124 = !DILocation(line: 730, column: 16, scope: !2123)
!2125 = !DILocation(line: 738, column: 51, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1637, file: !89, line: 738, column: 7)
!2127 = !DILocation(line: 741, column: 11, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !89, line: 741, column: 11)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !89, line: 740, column: 5)
!2130 = !DILocation(line: 741, column: 11, scope: !2129)
!2131 = !DILocation(line: 742, column: 16, scope: !2128)
!2132 = !DILocation(line: 742, column: 9, scope: !2128)
!2133 = !DILocation(line: 746, column: 18, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2128, file: !89, line: 746, column: 16)
!2135 = !DILocation(line: 746, column: 29, scope: !2134)
!2136 = !DILocation(line: 755, column: 7, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !1637, file: !89, line: 755, column: 7)
!2138 = !DILocation(line: 755, column: 20, scope: !2137)
!2139 = !DILocation(line: 756, column: 12, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !89, line: 756, column: 5)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !89, line: 756, column: 5)
!2142 = !DILocation(line: 756, column: 5, scope: !2141)
!2143 = !DILocation(line: 757, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !89, line: 757, column: 7)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !89, line: 757, column: 7)
!2146 = !DILocation(line: 757, column: 7, scope: !2145)
!2147 = !DILocation(line: 756, column: 39, scope: !2140)
!2148 = distinct !{!2148, !2142, !2149, !723}
!2149 = !DILocation(line: 757, column: 7, scope: !2141)
!2150 = !DILocation(line: 759, column: 11, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1637, file: !89, line: 759, column: 7)
!2152 = !DILocation(line: 759, column: 7, scope: !1637)
!2153 = !DILocation(line: 760, column: 5, scope: !2151)
!2154 = !DILocation(line: 760, column: 17, scope: !2151)
!2155 = !DILocation(line: 763, column: 2, scope: !1637)
!2156 = !DILocation(line: 766, column: 51, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !1637, file: !89, line: 766, column: 7)
!2158 = !DILocation(line: 766, column: 21, scope: !2157)
!2159 = !DILocation(line: 770, column: 42, scope: !1637)
!2160 = !DILocation(line: 768, column: 10, scope: !1637)
!2161 = !DILocation(line: 768, column: 3, scope: !1637)
!2162 = !DILocation(line: 772, column: 1, scope: !1637)
!2163 = distinct !DISubprogram(name: "gettext_quote", scope: !89, file: !89, line: 207, type: !2164, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!52, !52, !91}
!2166 = !{!2167, !2168, !2169, !2170}
!2167 = !DILocalVariable(name: "msgid", arg: 1, scope: !2163, file: !89, line: 207, type: !52)
!2168 = !DILocalVariable(name: "s", arg: 2, scope: !2163, file: !89, line: 207, type: !91)
!2169 = !DILocalVariable(name: "translation", scope: !2163, file: !89, line: 209, type: !52)
!2170 = !DILocalVariable(name: "locale_code", scope: !2163, file: !89, line: 210, type: !52)
!2171 = !DILocation(line: 0, scope: !2163)
!2172 = !DILocation(line: 209, column: 29, scope: !2163)
!2173 = !DILocation(line: 212, column: 19, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2163, file: !89, line: 212, column: 7)
!2175 = !DILocation(line: 212, column: 7, scope: !2163)
!2176 = !DILocation(line: 233, column: 17, scope: !2163)
!2177 = !DILocalVariable(name: "s1", arg: 1, scope: !2178, file: !2179, line: 160, type: !52)
!2178 = distinct !DISubprogram(name: "strcaseeq0", scope: !2179, file: !2179, line: 160, type: !2180, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2182)
!2179 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!42, !52, !52, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2182 = !{!2177, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192}
!2183 = !DILocalVariable(name: "s2", arg: 2, scope: !2178, file: !2179, line: 160, type: !52)
!2184 = !DILocalVariable(name: "s20", arg: 3, scope: !2178, file: !2179, line: 160, type: !23)
!2185 = !DILocalVariable(name: "s21", arg: 4, scope: !2178, file: !2179, line: 160, type: !23)
!2186 = !DILocalVariable(name: "s22", arg: 5, scope: !2178, file: !2179, line: 160, type: !23)
!2187 = !DILocalVariable(name: "s23", arg: 6, scope: !2178, file: !2179, line: 160, type: !23)
!2188 = !DILocalVariable(name: "s24", arg: 7, scope: !2178, file: !2179, line: 160, type: !23)
!2189 = !DILocalVariable(name: "s25", arg: 8, scope: !2178, file: !2179, line: 160, type: !23)
!2190 = !DILocalVariable(name: "s26", arg: 9, scope: !2178, file: !2179, line: 160, type: !23)
!2191 = !DILocalVariable(name: "s27", arg: 10, scope: !2178, file: !2179, line: 160, type: !23)
!2192 = !DILocalVariable(name: "s28", arg: 11, scope: !2178, file: !2179, line: 160, type: !23)
!2193 = !DILocation(line: 0, scope: !2178, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 234, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2163, file: !89, line: 234, column: 7)
!2196 = !DILocation(line: 162, column: 7, scope: !2197, inlinedAt: !2194)
!2197 = distinct !DILexicalBlock(scope: !2178, file: !2179, line: 162, column: 7)
!2198 = !DILocalVariable(name: "s1", arg: 1, scope: !2199, file: !2179, line: 146, type: !52)
!2199 = distinct !DISubprogram(name: "strcaseeq1", scope: !2179, file: !2179, line: 146, type: !2200, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!42, !52, !52, !23, !23, !23, !23, !23, !23, !23, !23}
!2202 = !{!2198, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211}
!2203 = !DILocalVariable(name: "s2", arg: 2, scope: !2199, file: !2179, line: 146, type: !52)
!2204 = !DILocalVariable(name: "s21", arg: 3, scope: !2199, file: !2179, line: 146, type: !23)
!2205 = !DILocalVariable(name: "s22", arg: 4, scope: !2199, file: !2179, line: 146, type: !23)
!2206 = !DILocalVariable(name: "s23", arg: 5, scope: !2199, file: !2179, line: 146, type: !23)
!2207 = !DILocalVariable(name: "s24", arg: 6, scope: !2199, file: !2179, line: 146, type: !23)
!2208 = !DILocalVariable(name: "s25", arg: 7, scope: !2199, file: !2179, line: 146, type: !23)
!2209 = !DILocalVariable(name: "s26", arg: 8, scope: !2199, file: !2179, line: 146, type: !23)
!2210 = !DILocalVariable(name: "s27", arg: 9, scope: !2199, file: !2179, line: 146, type: !23)
!2211 = !DILocalVariable(name: "s28", arg: 10, scope: !2199, file: !2179, line: 146, type: !23)
!2212 = !DILocation(line: 0, scope: !2199, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 167, column: 16, scope: !2214, inlinedAt: !2194)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !2179, line: 164, column: 11)
!2215 = distinct !DILexicalBlock(scope: !2197, file: !2179, line: 163, column: 5)
!2216 = !DILocation(line: 148, column: 7, scope: !2217, inlinedAt: !2213)
!2217 = distinct !DILexicalBlock(scope: !2199, file: !2179, line: 148, column: 7)
!2218 = !DILocalVariable(name: "s1", arg: 1, scope: !2219, file: !2179, line: 132, type: !52)
!2219 = distinct !DISubprogram(name: "strcaseeq2", scope: !2179, file: !2179, line: 132, type: !2220, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!42, !52, !52, !23, !23, !23, !23, !23, !23, !23}
!2222 = !{!2218, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2223 = !DILocalVariable(name: "s2", arg: 2, scope: !2219, file: !2179, line: 132, type: !52)
!2224 = !DILocalVariable(name: "s22", arg: 3, scope: !2219, file: !2179, line: 132, type: !23)
!2225 = !DILocalVariable(name: "s23", arg: 4, scope: !2219, file: !2179, line: 132, type: !23)
!2226 = !DILocalVariable(name: "s24", arg: 5, scope: !2219, file: !2179, line: 132, type: !23)
!2227 = !DILocalVariable(name: "s25", arg: 6, scope: !2219, file: !2179, line: 132, type: !23)
!2228 = !DILocalVariable(name: "s26", arg: 7, scope: !2219, file: !2179, line: 132, type: !23)
!2229 = !DILocalVariable(name: "s27", arg: 8, scope: !2219, file: !2179, line: 132, type: !23)
!2230 = !DILocalVariable(name: "s28", arg: 9, scope: !2219, file: !2179, line: 132, type: !23)
!2231 = !DILocation(line: 0, scope: !2219, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 153, column: 16, scope: !2233, inlinedAt: !2213)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !2179, line: 150, column: 11)
!2234 = distinct !DILexicalBlock(scope: !2217, file: !2179, line: 149, column: 5)
!2235 = !DILocation(line: 134, column: 7, scope: !2236, inlinedAt: !2232)
!2236 = distinct !DILexicalBlock(scope: !2219, file: !2179, line: 134, column: 7)
!2237 = !DILocalVariable(name: "s1", arg: 1, scope: !2238, file: !2179, line: 118, type: !52)
!2238 = distinct !DISubprogram(name: "strcaseeq3", scope: !2179, file: !2179, line: 118, type: !2239, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!42, !52, !52, !23, !23, !23, !23, !23, !23}
!2241 = !{!2237, !2242, !2243, !2244, !2245, !2246, !2247, !2248}
!2242 = !DILocalVariable(name: "s2", arg: 2, scope: !2238, file: !2179, line: 118, type: !52)
!2243 = !DILocalVariable(name: "s23", arg: 3, scope: !2238, file: !2179, line: 118, type: !23)
!2244 = !DILocalVariable(name: "s24", arg: 4, scope: !2238, file: !2179, line: 118, type: !23)
!2245 = !DILocalVariable(name: "s25", arg: 5, scope: !2238, file: !2179, line: 118, type: !23)
!2246 = !DILocalVariable(name: "s26", arg: 6, scope: !2238, file: !2179, line: 118, type: !23)
!2247 = !DILocalVariable(name: "s27", arg: 7, scope: !2238, file: !2179, line: 118, type: !23)
!2248 = !DILocalVariable(name: "s28", arg: 8, scope: !2238, file: !2179, line: 118, type: !23)
!2249 = !DILocation(line: 0, scope: !2238, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 139, column: 16, scope: !2251, inlinedAt: !2232)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !2179, line: 136, column: 11)
!2252 = distinct !DILexicalBlock(scope: !2236, file: !2179, line: 135, column: 5)
!2253 = !DILocation(line: 120, column: 7, scope: !2254, inlinedAt: !2250)
!2254 = distinct !DILexicalBlock(scope: !2238, file: !2179, line: 120, column: 7)
!2255 = !DILocation(line: 120, column: 7, scope: !2238, inlinedAt: !2250)
!2256 = !DILocalVariable(name: "s1", arg: 1, scope: !2257, file: !2179, line: 104, type: !52)
!2257 = distinct !DISubprogram(name: "strcaseeq4", scope: !2179, file: !2179, line: 104, type: !2258, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!42, !52, !52, !23, !23, !23, !23, !23}
!2260 = !{!2256, !2261, !2262, !2263, !2264, !2265, !2266}
!2261 = !DILocalVariable(name: "s2", arg: 2, scope: !2257, file: !2179, line: 104, type: !52)
!2262 = !DILocalVariable(name: "s24", arg: 3, scope: !2257, file: !2179, line: 104, type: !23)
!2263 = !DILocalVariable(name: "s25", arg: 4, scope: !2257, file: !2179, line: 104, type: !23)
!2264 = !DILocalVariable(name: "s26", arg: 5, scope: !2257, file: !2179, line: 104, type: !23)
!2265 = !DILocalVariable(name: "s27", arg: 6, scope: !2257, file: !2179, line: 104, type: !23)
!2266 = !DILocalVariable(name: "s28", arg: 7, scope: !2257, file: !2179, line: 104, type: !23)
!2267 = !DILocation(line: 0, scope: !2257, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 125, column: 16, scope: !2269, inlinedAt: !2250)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !2179, line: 122, column: 11)
!2270 = distinct !DILexicalBlock(scope: !2254, file: !2179, line: 121, column: 5)
!2271 = !DILocation(line: 106, column: 7, scope: !2272, inlinedAt: !2268)
!2272 = distinct !DILexicalBlock(scope: !2257, file: !2179, line: 106, column: 7)
!2273 = !DILocation(line: 106, column: 7, scope: !2257, inlinedAt: !2268)
!2274 = !DILocalVariable(name: "s1", arg: 1, scope: !2275, file: !2179, line: 90, type: !52)
!2275 = distinct !DISubprogram(name: "strcaseeq5", scope: !2179, file: !2179, line: 90, type: !2276, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!42, !52, !52, !23, !23, !23, !23}
!2278 = !{!2274, !2279, !2280, !2281, !2282, !2283}
!2279 = !DILocalVariable(name: "s2", arg: 2, scope: !2275, file: !2179, line: 90, type: !52)
!2280 = !DILocalVariable(name: "s25", arg: 3, scope: !2275, file: !2179, line: 90, type: !23)
!2281 = !DILocalVariable(name: "s26", arg: 4, scope: !2275, file: !2179, line: 90, type: !23)
!2282 = !DILocalVariable(name: "s27", arg: 5, scope: !2275, file: !2179, line: 90, type: !23)
!2283 = !DILocalVariable(name: "s28", arg: 6, scope: !2275, file: !2179, line: 90, type: !23)
!2284 = !DILocation(line: 0, scope: !2275, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 111, column: 16, scope: !2286, inlinedAt: !2268)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !2179, line: 108, column: 11)
!2287 = distinct !DILexicalBlock(scope: !2272, file: !2179, line: 107, column: 5)
!2288 = !DILocation(line: 92, column: 7, scope: !2289, inlinedAt: !2285)
!2289 = distinct !DILexicalBlock(scope: !2275, file: !2179, line: 92, column: 7)
!2290 = !DILocation(line: 92, column: 7, scope: !2275, inlinedAt: !2285)
!2291 = !DILocation(line: 235, column: 12, scope: !2195)
!2292 = !DILocation(line: 235, column: 21, scope: !2195)
!2293 = !DILocation(line: 235, column: 5, scope: !2195)
!2294 = !DILocation(line: 0, scope: !2199, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 167, column: 16, scope: !2214, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 236, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2163, file: !89, line: 236, column: 7)
!2298 = !DILocation(line: 148, column: 7, scope: !2217, inlinedAt: !2295)
!2299 = !DILocation(line: 0, scope: !2219, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 153, column: 16, scope: !2233, inlinedAt: !2295)
!2301 = !DILocation(line: 134, column: 7, scope: !2236, inlinedAt: !2300)
!2302 = !DILocation(line: 134, column: 7, scope: !2219, inlinedAt: !2300)
!2303 = !DILocation(line: 0, scope: !2238, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 139, column: 16, scope: !2251, inlinedAt: !2300)
!2305 = !DILocation(line: 120, column: 7, scope: !2254, inlinedAt: !2304)
!2306 = !DILocation(line: 120, column: 7, scope: !2238, inlinedAt: !2304)
!2307 = !DILocation(line: 0, scope: !2257, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 125, column: 16, scope: !2269, inlinedAt: !2304)
!2309 = !DILocation(line: 106, column: 7, scope: !2272, inlinedAt: !2308)
!2310 = !DILocation(line: 106, column: 7, scope: !2257, inlinedAt: !2308)
!2311 = !DILocation(line: 0, scope: !2275, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 111, column: 16, scope: !2286, inlinedAt: !2308)
!2313 = !DILocation(line: 92, column: 7, scope: !2289, inlinedAt: !2312)
!2314 = !DILocation(line: 92, column: 7, scope: !2275, inlinedAt: !2312)
!2315 = !DILocalVariable(name: "s1", arg: 1, scope: !2316, file: !2179, line: 76, type: !52)
!2316 = distinct !DISubprogram(name: "strcaseeq6", scope: !2179, file: !2179, line: 76, type: !2317, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!42, !52, !52, !23, !23, !23}
!2319 = !{!2315, !2320, !2321, !2322, !2323}
!2320 = !DILocalVariable(name: "s2", arg: 2, scope: !2316, file: !2179, line: 76, type: !52)
!2321 = !DILocalVariable(name: "s26", arg: 3, scope: !2316, file: !2179, line: 76, type: !23)
!2322 = !DILocalVariable(name: "s27", arg: 4, scope: !2316, file: !2179, line: 76, type: !23)
!2323 = !DILocalVariable(name: "s28", arg: 5, scope: !2316, file: !2179, line: 76, type: !23)
!2324 = !DILocation(line: 0, scope: !2316, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 97, column: 16, scope: !2326, inlinedAt: !2312)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !2179, line: 94, column: 11)
!2327 = distinct !DILexicalBlock(scope: !2289, file: !2179, line: 93, column: 5)
!2328 = !DILocation(line: 78, column: 7, scope: !2329, inlinedAt: !2325)
!2329 = distinct !DILexicalBlock(scope: !2316, file: !2179, line: 78, column: 7)
!2330 = !DILocation(line: 78, column: 7, scope: !2316, inlinedAt: !2325)
!2331 = !DILocalVariable(name: "s1", arg: 1, scope: !2332, file: !2179, line: 62, type: !52)
!2332 = distinct !DISubprogram(name: "strcaseeq7", scope: !2179, file: !2179, line: 62, type: !2333, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!42, !52, !52, !23, !23}
!2335 = !{!2331, !2336, !2337, !2338}
!2336 = !DILocalVariable(name: "s2", arg: 2, scope: !2332, file: !2179, line: 62, type: !52)
!2337 = !DILocalVariable(name: "s27", arg: 3, scope: !2332, file: !2179, line: 62, type: !23)
!2338 = !DILocalVariable(name: "s28", arg: 4, scope: !2332, file: !2179, line: 62, type: !23)
!2339 = !DILocation(line: 0, scope: !2332, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 83, column: 16, scope: !2341, inlinedAt: !2325)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !2179, line: 80, column: 11)
!2342 = distinct !DILexicalBlock(scope: !2329, file: !2179, line: 79, column: 5)
!2343 = !DILocation(line: 64, column: 7, scope: !2344, inlinedAt: !2340)
!2344 = distinct !DILexicalBlock(scope: !2332, file: !2179, line: 64, column: 7)
!2345 = !DILocation(line: 236, column: 7, scope: !2163)
!2346 = !DILocation(line: 237, column: 12, scope: !2297)
!2347 = !DILocation(line: 237, column: 21, scope: !2297)
!2348 = !DILocation(line: 237, column: 5, scope: !2297)
!2349 = !DILocation(line: 239, column: 13, scope: !2163)
!2350 = !DILocation(line: 239, column: 11, scope: !2163)
!2351 = !DILocation(line: 239, column: 3, scope: !2163)
!2352 = !DILocation(line: 240, column: 1, scope: !2163)
!2353 = !DISubprogram(name: "iswprint", scope: !2354, file: !2354, line: 120, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!2354 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!42, !7}
!2357 = !DISubprogram(name: "mbsinit", scope: !2358, file: !2358, line: 292, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!2358 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!42, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!2363 = distinct !DISubprogram(name: "quotearg_alloc", scope: !89, file: !89, line: 799, type: !2364, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!22, !52, !39, !1528}
!2366 = !{!2367, !2368, !2369}
!2367 = !DILocalVariable(name: "arg", arg: 1, scope: !2363, file: !89, line: 799, type: !52)
!2368 = !DILocalVariable(name: "argsize", arg: 2, scope: !2363, file: !89, line: 799, type: !39)
!2369 = !DILocalVariable(name: "o", arg: 3, scope: !2363, file: !89, line: 800, type: !1528)
!2370 = !DILocation(line: 0, scope: !2363)
!2371 = !DILocalVariable(name: "arg", arg: 1, scope: !2372, file: !89, line: 812, type: !52)
!2372 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !89, file: !89, line: 812, type: !2373, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!22, !52, !39, !227, !1528}
!2375 = !{!2371, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383}
!2376 = !DILocalVariable(name: "argsize", arg: 2, scope: !2372, file: !89, line: 812, type: !39)
!2377 = !DILocalVariable(name: "size", arg: 3, scope: !2372, file: !89, line: 812, type: !227)
!2378 = !DILocalVariable(name: "o", arg: 4, scope: !2372, file: !89, line: 813, type: !1528)
!2379 = !DILocalVariable(name: "p", scope: !2372, file: !89, line: 815, type: !1528)
!2380 = !DILocalVariable(name: "e", scope: !2372, file: !89, line: 816, type: !42)
!2381 = !DILocalVariable(name: "flags", scope: !2372, file: !89, line: 818, type: !42)
!2382 = !DILocalVariable(name: "bufsize", scope: !2372, file: !89, line: 819, type: !39)
!2383 = !DILocalVariable(name: "buf", scope: !2372, file: !89, line: 823, type: !22)
!2384 = !DILocation(line: 0, scope: !2372, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 802, column: 10, scope: !2363)
!2386 = !DILocation(line: 815, column: 37, scope: !2372, inlinedAt: !2385)
!2387 = !DILocation(line: 816, column: 11, scope: !2372, inlinedAt: !2385)
!2388 = !DILocation(line: 818, column: 18, scope: !2372, inlinedAt: !2385)
!2389 = !DILocation(line: 818, column: 24, scope: !2372, inlinedAt: !2385)
!2390 = !DILocation(line: 819, column: 69, scope: !2372, inlinedAt: !2385)
!2391 = !DILocation(line: 820, column: 53, scope: !2372, inlinedAt: !2385)
!2392 = !DILocation(line: 821, column: 49, scope: !2372, inlinedAt: !2385)
!2393 = !DILocation(line: 822, column: 49, scope: !2372, inlinedAt: !2385)
!2394 = !DILocation(line: 819, column: 20, scope: !2372, inlinedAt: !2385)
!2395 = !DILocation(line: 822, column: 62, scope: !2372, inlinedAt: !2385)
!2396 = !DILocalVariable(name: "n", arg: 1, scope: !2397, file: !223, line: 216, type: !39)
!2397 = distinct !DISubprogram(name: "xcharalloc", scope: !223, file: !223, line: 216, type: !2398, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!22, !39}
!2400 = !{!2396}
!2401 = !DILocation(line: 0, scope: !2397, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 823, column: 15, scope: !2372, inlinedAt: !2385)
!2403 = !DILocation(line: 218, column: 10, scope: !2397, inlinedAt: !2402)
!2404 = !DILocation(line: 824, column: 60, scope: !2372, inlinedAt: !2385)
!2405 = !DILocation(line: 826, column: 32, scope: !2372, inlinedAt: !2385)
!2406 = !DILocation(line: 826, column: 47, scope: !2372, inlinedAt: !2385)
!2407 = !DILocation(line: 824, column: 3, scope: !2372, inlinedAt: !2385)
!2408 = !DILocation(line: 827, column: 9, scope: !2372, inlinedAt: !2385)
!2409 = !DILocation(line: 802, column: 3, scope: !2363)
!2410 = !DILocation(line: 0, scope: !2372)
!2411 = !DILocation(line: 815, column: 37, scope: !2372)
!2412 = !DILocation(line: 816, column: 11, scope: !2372)
!2413 = !DILocation(line: 818, column: 18, scope: !2372)
!2414 = !DILocation(line: 818, column: 27, scope: !2372)
!2415 = !DILocation(line: 818, column: 24, scope: !2372)
!2416 = !DILocation(line: 819, column: 69, scope: !2372)
!2417 = !DILocation(line: 820, column: 53, scope: !2372)
!2418 = !DILocation(line: 821, column: 49, scope: !2372)
!2419 = !DILocation(line: 822, column: 49, scope: !2372)
!2420 = !DILocation(line: 819, column: 20, scope: !2372)
!2421 = !DILocation(line: 822, column: 62, scope: !2372)
!2422 = !DILocation(line: 0, scope: !2397, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 823, column: 15, scope: !2372)
!2424 = !DILocation(line: 218, column: 10, scope: !2397, inlinedAt: !2423)
!2425 = !DILocation(line: 824, column: 60, scope: !2372)
!2426 = !DILocation(line: 826, column: 32, scope: !2372)
!2427 = !DILocation(line: 826, column: 47, scope: !2372)
!2428 = !DILocation(line: 824, column: 3, scope: !2372)
!2429 = !DILocation(line: 827, column: 9, scope: !2372)
!2430 = !DILocation(line: 828, column: 7, scope: !2372)
!2431 = !DILocation(line: 829, column: 11, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2372, file: !89, line: 828, column: 7)
!2433 = !DILocation(line: 829, column: 5, scope: !2432)
!2434 = !DILocation(line: 830, column: 3, scope: !2372)
!2435 = distinct !DISubprogram(name: "quotearg_free", scope: !89, file: !89, line: 848, type: !681, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2436)
!2436 = !{!2437, !2438}
!2437 = !DILocalVariable(name: "sv", scope: !2435, file: !89, line: 850, type: !155)
!2438 = !DILocalVariable(name: "i", scope: !2435, file: !89, line: 851, type: !42)
!2439 = !DILocation(line: 850, column: 24, scope: !2435)
!2440 = !DILocation(line: 0, scope: !2435)
!2441 = !DILocation(line: 852, column: 19, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !89, line: 852, column: 3)
!2443 = distinct !DILexicalBlock(scope: !2435, file: !89, line: 852, column: 3)
!2444 = !DILocation(line: 852, column: 17, scope: !2442)
!2445 = !DILocation(line: 852, column: 3, scope: !2443)
!2446 = !DILocation(line: 853, column: 17, scope: !2442)
!2447 = !{!2448, !673, i64 8}
!2448 = !{!"slotvec", !852, i64 0, !673, i64 8}
!2449 = !DILocation(line: 853, column: 5, scope: !2442)
!2450 = !DILocation(line: 852, column: 28, scope: !2442)
!2451 = distinct !{!2451, !2445, !2452, !723}
!2452 = !DILocation(line: 853, column: 20, scope: !2443)
!2453 = !DILocation(line: 854, column: 13, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2435, file: !89, line: 854, column: 7)
!2455 = !DILocation(line: 854, column: 17, scope: !2454)
!2456 = !DILocation(line: 854, column: 7, scope: !2435)
!2457 = !DILocation(line: 856, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !89, line: 855, column: 5)
!2459 = !DILocation(line: 857, column: 21, scope: !2458)
!2460 = !{!2448, !852, i64 0}
!2461 = !DILocation(line: 858, column: 20, scope: !2458)
!2462 = !DILocation(line: 859, column: 5, scope: !2458)
!2463 = !DILocation(line: 860, column: 10, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2435, file: !89, line: 860, column: 7)
!2465 = !DILocation(line: 860, column: 7, scope: !2435)
!2466 = !DILocation(line: 862, column: 13, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2464, file: !89, line: 861, column: 5)
!2468 = !DILocation(line: 862, column: 7, scope: !2467)
!2469 = !DILocation(line: 863, column: 15, scope: !2467)
!2470 = !DILocation(line: 864, column: 5, scope: !2467)
!2471 = !DILocation(line: 865, column: 10, scope: !2435)
!2472 = !DILocation(line: 866, column: 1, scope: !2435)
!2473 = distinct !DISubprogram(name: "quotearg_n", scope: !89, file: !89, line: 931, type: !804, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2474)
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "n", arg: 1, scope: !2473, file: !89, line: 931, type: !42)
!2476 = !DILocalVariable(name: "arg", arg: 2, scope: !2473, file: !89, line: 931, type: !52)
!2477 = !DILocation(line: 0, scope: !2473)
!2478 = !DILocation(line: 933, column: 10, scope: !2473)
!2479 = !DILocation(line: 933, column: 3, scope: !2473)
!2480 = distinct !DISubprogram(name: "quotearg_n_options", scope: !89, file: !89, line: 877, type: !2481, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!22, !42, !52, !39, !1528}
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2493, !2494, !2496, !2497, !2498}
!2484 = !DILocalVariable(name: "n", arg: 1, scope: !2480, file: !89, line: 877, type: !42)
!2485 = !DILocalVariable(name: "arg", arg: 2, scope: !2480, file: !89, line: 877, type: !52)
!2486 = !DILocalVariable(name: "argsize", arg: 3, scope: !2480, file: !89, line: 877, type: !39)
!2487 = !DILocalVariable(name: "options", arg: 4, scope: !2480, file: !89, line: 878, type: !1528)
!2488 = !DILocalVariable(name: "e", scope: !2480, file: !89, line: 880, type: !42)
!2489 = !DILocalVariable(name: "sv", scope: !2480, file: !89, line: 882, type: !155)
!2490 = !DILocalVariable(name: "preallocated", scope: !2491, file: !89, line: 889, type: !73)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !89, line: 888, column: 5)
!2492 = distinct !DILexicalBlock(scope: !2480, file: !89, line: 887, column: 7)
!2493 = !DILocalVariable(name: "nmax", scope: !2491, file: !89, line: 890, type: !42)
!2494 = !DILocalVariable(name: "size", scope: !2495, file: !89, line: 903, type: !39)
!2495 = distinct !DILexicalBlock(scope: !2480, file: !89, line: 902, column: 3)
!2496 = !DILocalVariable(name: "val", scope: !2495, file: !89, line: 904, type: !22)
!2497 = !DILocalVariable(name: "flags", scope: !2495, file: !89, line: 906, type: !42)
!2498 = !DILocalVariable(name: "qsize", scope: !2495, file: !89, line: 907, type: !39)
!2499 = !DILocation(line: 0, scope: !2480)
!2500 = !DILocation(line: 880, column: 11, scope: !2480)
!2501 = !DILocation(line: 882, column: 24, scope: !2480)
!2502 = !DILocation(line: 884, column: 9, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2480, file: !89, line: 884, column: 7)
!2504 = !DILocation(line: 884, column: 7, scope: !2480)
!2505 = !DILocation(line: 885, column: 5, scope: !2503)
!2506 = !DILocation(line: 887, column: 7, scope: !2492)
!2507 = !DILocation(line: 887, column: 14, scope: !2492)
!2508 = !DILocation(line: 887, column: 7, scope: !2480)
!2509 = !DILocation(line: 889, column: 31, scope: !2491)
!2510 = !DILocation(line: 0, scope: !2491)
!2511 = !DILocation(line: 892, column: 16, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2491, file: !89, line: 892, column: 11)
!2513 = !DILocation(line: 892, column: 11, scope: !2491)
!2514 = !DILocation(line: 893, column: 9, scope: !2512)
!2515 = !DILocation(line: 895, column: 32, scope: !2491)
!2516 = !DILocation(line: 895, column: 61, scope: !2491)
!2517 = !DILocation(line: 895, column: 66, scope: !2491)
!2518 = !DILocation(line: 895, column: 22, scope: !2491)
!2519 = !DILocation(line: 895, column: 15, scope: !2491)
!2520 = !DILocation(line: 896, column: 11, scope: !2491)
!2521 = !DILocation(line: 897, column: 15, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2491, file: !89, line: 896, column: 11)
!2523 = !{i64 0, i64 8, !906, i64 8, i64 8, !672}
!2524 = !DILocation(line: 897, column: 9, scope: !2522)
!2525 = !DILocation(line: 898, column: 20, scope: !2491)
!2526 = !DILocation(line: 898, column: 18, scope: !2491)
!2527 = !DILocation(line: 898, column: 15, scope: !2491)
!2528 = !DILocation(line: 898, column: 38, scope: !2491)
!2529 = !DILocation(line: 898, column: 31, scope: !2491)
!2530 = !DILocation(line: 898, column: 48, scope: !2491)
!2531 = !DILocation(line: 0, scope: !1925, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 898, column: 7, scope: !2491)
!2533 = !DILocation(line: 59, column: 10, scope: !1925, inlinedAt: !2532)
!2534 = !DILocation(line: 899, column: 14, scope: !2491)
!2535 = !DILocation(line: 900, column: 5, scope: !2491)
!2536 = !DILocation(line: 903, column: 19, scope: !2495)
!2537 = !DILocation(line: 903, column: 25, scope: !2495)
!2538 = !DILocation(line: 0, scope: !2495)
!2539 = !DILocation(line: 904, column: 23, scope: !2495)
!2540 = !DILocation(line: 906, column: 26, scope: !2495)
!2541 = !DILocation(line: 906, column: 32, scope: !2495)
!2542 = !DILocation(line: 908, column: 55, scope: !2495)
!2543 = !DILocation(line: 909, column: 46, scope: !2495)
!2544 = !DILocation(line: 910, column: 55, scope: !2495)
!2545 = !DILocation(line: 911, column: 55, scope: !2495)
!2546 = !DILocation(line: 907, column: 20, scope: !2495)
!2547 = !DILocation(line: 913, column: 14, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2495, file: !89, line: 913, column: 9)
!2549 = !DILocation(line: 913, column: 9, scope: !2495)
!2550 = !DILocation(line: 915, column: 35, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !89, line: 914, column: 7)
!2552 = !DILocation(line: 915, column: 20, scope: !2551)
!2553 = !DILocation(line: 916, column: 17, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !89, line: 916, column: 13)
!2555 = !DILocation(line: 916, column: 13, scope: !2551)
!2556 = !DILocation(line: 917, column: 11, scope: !2554)
!2557 = !DILocation(line: 0, scope: !2397, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 918, column: 27, scope: !2551)
!2559 = !DILocation(line: 218, column: 10, scope: !2397, inlinedAt: !2558)
!2560 = !DILocation(line: 918, column: 19, scope: !2551)
!2561 = !DILocation(line: 919, column: 69, scope: !2551)
!2562 = !DILocation(line: 921, column: 44, scope: !2551)
!2563 = !DILocation(line: 922, column: 44, scope: !2551)
!2564 = !DILocation(line: 919, column: 9, scope: !2551)
!2565 = !DILocation(line: 923, column: 7, scope: !2551)
!2566 = !DILocation(line: 925, column: 11, scope: !2495)
!2567 = !DILocation(line: 926, column: 5, scope: !2495)
!2568 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !89, file: !89, line: 937, type: !2569, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!22, !42, !52, !39}
!2571 = !{!2572, !2573, !2574}
!2572 = !DILocalVariable(name: "n", arg: 1, scope: !2568, file: !89, line: 937, type: !42)
!2573 = !DILocalVariable(name: "arg", arg: 2, scope: !2568, file: !89, line: 937, type: !52)
!2574 = !DILocalVariable(name: "argsize", arg: 3, scope: !2568, file: !89, line: 937, type: !39)
!2575 = !DILocation(line: 0, scope: !2568)
!2576 = !DILocation(line: 939, column: 10, scope: !2568)
!2577 = !DILocation(line: 939, column: 3, scope: !2568)
!2578 = distinct !DISubprogram(name: "quotearg", scope: !89, file: !89, line: 943, type: !1189, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2579)
!2579 = !{!2580}
!2580 = !DILocalVariable(name: "arg", arg: 1, scope: !2578, file: !89, line: 943, type: !52)
!2581 = !DILocation(line: 0, scope: !2578)
!2582 = !DILocation(line: 0, scope: !2473, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 945, column: 10, scope: !2578)
!2584 = !DILocation(line: 933, column: 10, scope: !2473, inlinedAt: !2583)
!2585 = !DILocation(line: 945, column: 3, scope: !2578)
!2586 = distinct !DISubprogram(name: "quotearg_mem", scope: !89, file: !89, line: 949, type: !2587, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!22, !52, !39}
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "arg", arg: 1, scope: !2586, file: !89, line: 949, type: !52)
!2591 = !DILocalVariable(name: "argsize", arg: 2, scope: !2586, file: !89, line: 949, type: !39)
!2592 = !DILocation(line: 0, scope: !2586)
!2593 = !DILocation(line: 0, scope: !2568, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 951, column: 10, scope: !2586)
!2595 = !DILocation(line: 939, column: 10, scope: !2568, inlinedAt: !2594)
!2596 = !DILocation(line: 951, column: 3, scope: !2586)
!2597 = distinct !DISubprogram(name: "quotearg_n_style", scope: !89, file: !89, line: 955, type: !2598, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!22, !42, !91, !52}
!2600 = !{!2601, !2602, !2603, !2604}
!2601 = !DILocalVariable(name: "n", arg: 1, scope: !2597, file: !89, line: 955, type: !42)
!2602 = !DILocalVariable(name: "s", arg: 2, scope: !2597, file: !89, line: 955, type: !91)
!2603 = !DILocalVariable(name: "arg", arg: 3, scope: !2597, file: !89, line: 955, type: !52)
!2604 = !DILocalVariable(name: "o", scope: !2597, file: !89, line: 957, type: !1529)
!2605 = !DILocation(line: 0, scope: !2597)
!2606 = !DILocation(line: 957, column: 3, scope: !2597)
!2607 = !DILocation(line: 957, column: 32, scope: !2597)
!2608 = !{!2609}
!2609 = distinct !{!2609, !2610, !"quoting_options_from_style: argument 0"}
!2610 = distinct !{!2610, !"quoting_options_from_style"}
!2611 = !DILocation(line: 957, column: 36, scope: !2597)
!2612 = !DILocalVariable(name: "style", arg: 1, scope: !2613, file: !89, line: 193, type: !91)
!2613 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !89, file: !89, line: 193, type: !2614, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!136, !91}
!2616 = !{!2612, !2617}
!2617 = !DILocalVariable(name: "o", scope: !2613, file: !89, line: 195, type: !136)
!2618 = !DILocation(line: 0, scope: !2613, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 957, column: 36, scope: !2597)
!2620 = !DILocation(line: 195, column: 26, scope: !2613, inlinedAt: !2619)
!2621 = !DILocation(line: 196, column: 13, scope: !2622, inlinedAt: !2619)
!2622 = distinct !DILexicalBlock(scope: !2613, file: !89, line: 196, column: 7)
!2623 = !DILocation(line: 196, column: 7, scope: !2613, inlinedAt: !2619)
!2624 = !DILocation(line: 197, column: 5, scope: !2622, inlinedAt: !2619)
!2625 = !DILocation(line: 198, column: 5, scope: !2613, inlinedAt: !2619)
!2626 = !DILocation(line: 198, column: 11, scope: !2613, inlinedAt: !2619)
!2627 = !DILocation(line: 958, column: 10, scope: !2597)
!2628 = !DILocation(line: 959, column: 1, scope: !2597)
!2629 = !DILocation(line: 958, column: 3, scope: !2597)
!2630 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !89, file: !89, line: 962, type: !2631, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!22, !42, !91, !52, !39}
!2633 = !{!2634, !2635, !2636, !2637, !2638}
!2634 = !DILocalVariable(name: "n", arg: 1, scope: !2630, file: !89, line: 962, type: !42)
!2635 = !DILocalVariable(name: "s", arg: 2, scope: !2630, file: !89, line: 962, type: !91)
!2636 = !DILocalVariable(name: "arg", arg: 3, scope: !2630, file: !89, line: 963, type: !52)
!2637 = !DILocalVariable(name: "argsize", arg: 4, scope: !2630, file: !89, line: 963, type: !39)
!2638 = !DILocalVariable(name: "o", scope: !2630, file: !89, line: 965, type: !1529)
!2639 = !DILocation(line: 0, scope: !2630)
!2640 = !DILocation(line: 965, column: 3, scope: !2630)
!2641 = !DILocation(line: 965, column: 32, scope: !2630)
!2642 = !{!2643}
!2643 = distinct !{!2643, !2644, !"quoting_options_from_style: argument 0"}
!2644 = distinct !{!2644, !"quoting_options_from_style"}
!2645 = !DILocation(line: 965, column: 36, scope: !2630)
!2646 = !DILocation(line: 0, scope: !2613, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 965, column: 36, scope: !2630)
!2648 = !DILocation(line: 195, column: 26, scope: !2613, inlinedAt: !2647)
!2649 = !DILocation(line: 196, column: 13, scope: !2622, inlinedAt: !2647)
!2650 = !DILocation(line: 196, column: 7, scope: !2613, inlinedAt: !2647)
!2651 = !DILocation(line: 197, column: 5, scope: !2622, inlinedAt: !2647)
!2652 = !DILocation(line: 198, column: 5, scope: !2613, inlinedAt: !2647)
!2653 = !DILocation(line: 198, column: 11, scope: !2613, inlinedAt: !2647)
!2654 = !DILocation(line: 966, column: 10, scope: !2630)
!2655 = !DILocation(line: 967, column: 1, scope: !2630)
!2656 = !DILocation(line: 966, column: 3, scope: !2630)
!2657 = distinct !DISubprogram(name: "quotearg_style", scope: !89, file: !89, line: 970, type: !2658, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!22, !91, !52}
!2660 = !{!2661, !2662}
!2661 = !DILocalVariable(name: "s", arg: 1, scope: !2657, file: !89, line: 970, type: !91)
!2662 = !DILocalVariable(name: "arg", arg: 2, scope: !2657, file: !89, line: 970, type: !52)
!2663 = !DILocation(line: 0, scope: !2657)
!2664 = !DILocation(line: 0, scope: !2597, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 972, column: 10, scope: !2657)
!2666 = !DILocation(line: 957, column: 3, scope: !2597, inlinedAt: !2665)
!2667 = !DILocation(line: 957, column: 32, scope: !2597, inlinedAt: !2665)
!2668 = !{!2669}
!2669 = distinct !{!2669, !2670, !"quoting_options_from_style: argument 0"}
!2670 = distinct !{!2670, !"quoting_options_from_style"}
!2671 = !DILocation(line: 957, column: 36, scope: !2597, inlinedAt: !2665)
!2672 = !DILocation(line: 0, scope: !2613, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 957, column: 36, scope: !2597, inlinedAt: !2665)
!2674 = !DILocation(line: 195, column: 26, scope: !2613, inlinedAt: !2673)
!2675 = !DILocation(line: 196, column: 13, scope: !2622, inlinedAt: !2673)
!2676 = !DILocation(line: 196, column: 7, scope: !2613, inlinedAt: !2673)
!2677 = !DILocation(line: 197, column: 5, scope: !2622, inlinedAt: !2673)
!2678 = !DILocation(line: 198, column: 5, scope: !2613, inlinedAt: !2673)
!2679 = !DILocation(line: 198, column: 11, scope: !2613, inlinedAt: !2673)
!2680 = !DILocation(line: 958, column: 10, scope: !2597, inlinedAt: !2665)
!2681 = !DILocation(line: 959, column: 1, scope: !2597, inlinedAt: !2665)
!2682 = !DILocation(line: 972, column: 3, scope: !2657)
!2683 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !89, file: !89, line: 976, type: !2684, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!22, !91, !52, !39}
!2686 = !{!2687, !2688, !2689}
!2687 = !DILocalVariable(name: "s", arg: 1, scope: !2683, file: !89, line: 976, type: !91)
!2688 = !DILocalVariable(name: "arg", arg: 2, scope: !2683, file: !89, line: 976, type: !52)
!2689 = !DILocalVariable(name: "argsize", arg: 3, scope: !2683, file: !89, line: 976, type: !39)
!2690 = !DILocation(line: 0, scope: !2683)
!2691 = !DILocation(line: 0, scope: !2630, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 978, column: 10, scope: !2683)
!2693 = !DILocation(line: 965, column: 3, scope: !2630, inlinedAt: !2692)
!2694 = !DILocation(line: 965, column: 32, scope: !2630, inlinedAt: !2692)
!2695 = !{!2696}
!2696 = distinct !{!2696, !2697, !"quoting_options_from_style: argument 0"}
!2697 = distinct !{!2697, !"quoting_options_from_style"}
!2698 = !DILocation(line: 965, column: 36, scope: !2630, inlinedAt: !2692)
!2699 = !DILocation(line: 0, scope: !2613, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 965, column: 36, scope: !2630, inlinedAt: !2692)
!2701 = !DILocation(line: 195, column: 26, scope: !2613, inlinedAt: !2700)
!2702 = !DILocation(line: 196, column: 13, scope: !2622, inlinedAt: !2700)
!2703 = !DILocation(line: 196, column: 7, scope: !2613, inlinedAt: !2700)
!2704 = !DILocation(line: 197, column: 5, scope: !2622, inlinedAt: !2700)
!2705 = !DILocation(line: 198, column: 5, scope: !2613, inlinedAt: !2700)
!2706 = !DILocation(line: 198, column: 11, scope: !2613, inlinedAt: !2700)
!2707 = !DILocation(line: 966, column: 10, scope: !2630, inlinedAt: !2692)
!2708 = !DILocation(line: 967, column: 1, scope: !2630, inlinedAt: !2692)
!2709 = !DILocation(line: 978, column: 3, scope: !2683)
!2710 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !89, file: !89, line: 982, type: !2711, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!22, !52, !39, !23}
!2713 = !{!2714, !2715, !2716, !2717}
!2714 = !DILocalVariable(name: "arg", arg: 1, scope: !2710, file: !89, line: 982, type: !52)
!2715 = !DILocalVariable(name: "argsize", arg: 2, scope: !2710, file: !89, line: 982, type: !39)
!2716 = !DILocalVariable(name: "ch", arg: 3, scope: !2710, file: !89, line: 982, type: !23)
!2717 = !DILocalVariable(name: "options", scope: !2710, file: !89, line: 984, type: !136)
!2718 = !DILocation(line: 0, scope: !2710)
!2719 = !DILocation(line: 984, column: 3, scope: !2710)
!2720 = !DILocation(line: 984, column: 26, scope: !2710)
!2721 = !DILocation(line: 985, column: 13, scope: !2710)
!2722 = !{i64 0, i64 4, !856, i64 4, i64 4, !830, i64 8, i64 32, !856, i64 40, i64 8, !672, i64 48, i64 8, !672}
!2723 = !DILocation(line: 0, scope: !1549, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 986, column: 3, scope: !2710)
!2725 = !DILocation(line: 156, column: 62, scope: !1549, inlinedAt: !2724)
!2726 = !DILocation(line: 156, column: 57, scope: !1549, inlinedAt: !2724)
!2727 = !DILocation(line: 157, column: 15, scope: !1549, inlinedAt: !2724)
!2728 = !DILocation(line: 158, column: 12, scope: !1549, inlinedAt: !2724)
!2729 = !DILocation(line: 158, column: 15, scope: !1549, inlinedAt: !2724)
!2730 = !DILocation(line: 158, column: 25, scope: !1549, inlinedAt: !2724)
!2731 = !DILocation(line: 159, column: 18, scope: !1549, inlinedAt: !2724)
!2732 = !DILocation(line: 159, column: 23, scope: !1549, inlinedAt: !2724)
!2733 = !DILocation(line: 159, column: 6, scope: !1549, inlinedAt: !2724)
!2734 = !DILocation(line: 987, column: 10, scope: !2710)
!2735 = !DILocation(line: 988, column: 1, scope: !2710)
!2736 = !DILocation(line: 987, column: 3, scope: !2710)
!2737 = distinct !DISubprogram(name: "quotearg_char", scope: !89, file: !89, line: 991, type: !2738, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!22, !52, !23}
!2740 = !{!2741, !2742}
!2741 = !DILocalVariable(name: "arg", arg: 1, scope: !2737, file: !89, line: 991, type: !52)
!2742 = !DILocalVariable(name: "ch", arg: 2, scope: !2737, file: !89, line: 991, type: !23)
!2743 = !DILocation(line: 0, scope: !2737)
!2744 = !DILocation(line: 0, scope: !2710, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 993, column: 10, scope: !2737)
!2746 = !DILocation(line: 984, column: 3, scope: !2710, inlinedAt: !2745)
!2747 = !DILocation(line: 984, column: 26, scope: !2710, inlinedAt: !2745)
!2748 = !DILocation(line: 985, column: 13, scope: !2710, inlinedAt: !2745)
!2749 = !DILocation(line: 0, scope: !1549, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 986, column: 3, scope: !2710, inlinedAt: !2745)
!2751 = !DILocation(line: 156, column: 62, scope: !1549, inlinedAt: !2750)
!2752 = !DILocation(line: 156, column: 57, scope: !1549, inlinedAt: !2750)
!2753 = !DILocation(line: 157, column: 15, scope: !1549, inlinedAt: !2750)
!2754 = !DILocation(line: 158, column: 12, scope: !1549, inlinedAt: !2750)
!2755 = !DILocation(line: 158, column: 15, scope: !1549, inlinedAt: !2750)
!2756 = !DILocation(line: 158, column: 25, scope: !1549, inlinedAt: !2750)
!2757 = !DILocation(line: 159, column: 18, scope: !1549, inlinedAt: !2750)
!2758 = !DILocation(line: 159, column: 23, scope: !1549, inlinedAt: !2750)
!2759 = !DILocation(line: 159, column: 6, scope: !1549, inlinedAt: !2750)
!2760 = !DILocation(line: 987, column: 10, scope: !2710, inlinedAt: !2745)
!2761 = !DILocation(line: 988, column: 1, scope: !2710, inlinedAt: !2745)
!2762 = !DILocation(line: 993, column: 3, scope: !2737)
!2763 = distinct !DISubprogram(name: "quotearg_colon", scope: !89, file: !89, line: 997, type: !1189, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2764)
!2764 = !{!2765}
!2765 = !DILocalVariable(name: "arg", arg: 1, scope: !2763, file: !89, line: 997, type: !52)
!2766 = !DILocation(line: 0, scope: !2763)
!2767 = !DILocation(line: 0, scope: !2737, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 999, column: 10, scope: !2763)
!2769 = !DILocation(line: 0, scope: !2710, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 993, column: 10, scope: !2737, inlinedAt: !2768)
!2771 = !DILocation(line: 984, column: 3, scope: !2710, inlinedAt: !2770)
!2772 = !DILocation(line: 984, column: 26, scope: !2710, inlinedAt: !2770)
!2773 = !DILocation(line: 985, column: 13, scope: !2710, inlinedAt: !2770)
!2774 = !DILocation(line: 0, scope: !1549, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 986, column: 3, scope: !2710, inlinedAt: !2770)
!2776 = !DILocation(line: 156, column: 57, scope: !1549, inlinedAt: !2775)
!2777 = !DILocation(line: 158, column: 12, scope: !1549, inlinedAt: !2775)
!2778 = !DILocation(line: 159, column: 6, scope: !1549, inlinedAt: !2775)
!2779 = !DILocation(line: 987, column: 10, scope: !2710, inlinedAt: !2770)
!2780 = !DILocation(line: 988, column: 1, scope: !2710, inlinedAt: !2770)
!2781 = !DILocation(line: 999, column: 3, scope: !2763)
!2782 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !89, file: !89, line: 1003, type: !2587, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2783)
!2783 = !{!2784, !2785}
!2784 = !DILocalVariable(name: "arg", arg: 1, scope: !2782, file: !89, line: 1003, type: !52)
!2785 = !DILocalVariable(name: "argsize", arg: 2, scope: !2782, file: !89, line: 1003, type: !39)
!2786 = !DILocation(line: 0, scope: !2782)
!2787 = !DILocation(line: 0, scope: !2710, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 1005, column: 10, scope: !2782)
!2789 = !DILocation(line: 984, column: 3, scope: !2710, inlinedAt: !2788)
!2790 = !DILocation(line: 984, column: 26, scope: !2710, inlinedAt: !2788)
!2791 = !DILocation(line: 985, column: 13, scope: !2710, inlinedAt: !2788)
!2792 = !DILocation(line: 0, scope: !1549, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 986, column: 3, scope: !2710, inlinedAt: !2788)
!2794 = !DILocation(line: 156, column: 57, scope: !1549, inlinedAt: !2793)
!2795 = !DILocation(line: 158, column: 12, scope: !1549, inlinedAt: !2793)
!2796 = !DILocation(line: 159, column: 6, scope: !1549, inlinedAt: !2793)
!2797 = !DILocation(line: 987, column: 10, scope: !2710, inlinedAt: !2788)
!2798 = !DILocation(line: 988, column: 1, scope: !2710, inlinedAt: !2788)
!2799 = !DILocation(line: 1005, column: 3, scope: !2782)
!2800 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !89, file: !89, line: 1009, type: !2598, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2801)
!2801 = !{!2802, !2803, !2804, !2805}
!2802 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !89, line: 1009, type: !42)
!2803 = !DILocalVariable(name: "s", arg: 2, scope: !2800, file: !89, line: 1009, type: !91)
!2804 = !DILocalVariable(name: "arg", arg: 3, scope: !2800, file: !89, line: 1009, type: !52)
!2805 = !DILocalVariable(name: "options", scope: !2800, file: !89, line: 1011, type: !136)
!2806 = !DILocation(line: 195, column: 26, scope: !2613, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 1012, column: 13, scope: !2800)
!2808 = !DILocation(line: 0, scope: !2800)
!2809 = !DILocation(line: 1011, column: 3, scope: !2800)
!2810 = !DILocation(line: 1011, column: 26, scope: !2800)
!2811 = !DILocation(line: 1012, column: 13, scope: !2800)
!2812 = !{!2813}
!2813 = distinct !{!2813, !2814, !"quoting_options_from_style: argument 0"}
!2814 = distinct !{!2814, !"quoting_options_from_style"}
!2815 = !DILocation(line: 0, scope: !2613, inlinedAt: !2807)
!2816 = !DILocation(line: 196, column: 13, scope: !2622, inlinedAt: !2807)
!2817 = !DILocation(line: 196, column: 7, scope: !2613, inlinedAt: !2807)
!2818 = !DILocation(line: 197, column: 5, scope: !2622, inlinedAt: !2807)
!2819 = !{i64 0, i64 4, !830, i64 4, i64 32, !856, i64 36, i64 8, !672, i64 44, i64 8, !672}
!2820 = !DILocation(line: 0, scope: !1549, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 1013, column: 3, scope: !2800)
!2822 = !DILocation(line: 156, column: 57, scope: !1549, inlinedAt: !2821)
!2823 = !DILocation(line: 158, column: 12, scope: !1549, inlinedAt: !2821)
!2824 = !DILocation(line: 159, column: 6, scope: !1549, inlinedAt: !2821)
!2825 = !DILocation(line: 1014, column: 10, scope: !2800)
!2826 = !DILocation(line: 1015, column: 1, scope: !2800)
!2827 = !DILocation(line: 1014, column: 3, scope: !2800)
!2828 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !89, file: !89, line: 1018, type: !2829, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!22, !42, !52, !52, !52}
!2831 = !{!2832, !2833, !2834, !2835}
!2832 = !DILocalVariable(name: "n", arg: 1, scope: !2828, file: !89, line: 1018, type: !42)
!2833 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2828, file: !89, line: 1018, type: !52)
!2834 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2828, file: !89, line: 1019, type: !52)
!2835 = !DILocalVariable(name: "arg", arg: 4, scope: !2828, file: !89, line: 1019, type: !52)
!2836 = !DILocation(line: 0, scope: !2828)
!2837 = !DILocalVariable(name: "n", arg: 1, scope: !2838, file: !89, line: 1026, type: !42)
!2838 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !89, file: !89, line: 1026, type: !2839, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!22, !42, !52, !52, !52, !39}
!2841 = !{!2837, !2842, !2843, !2844, !2845, !2846}
!2842 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2838, file: !89, line: 1026, type: !52)
!2843 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2838, file: !89, line: 1027, type: !52)
!2844 = !DILocalVariable(name: "arg", arg: 4, scope: !2838, file: !89, line: 1028, type: !52)
!2845 = !DILocalVariable(name: "argsize", arg: 5, scope: !2838, file: !89, line: 1028, type: !39)
!2846 = !DILocalVariable(name: "o", scope: !2838, file: !89, line: 1030, type: !136)
!2847 = !DILocation(line: 0, scope: !2838, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1021, column: 10, scope: !2828)
!2849 = !DILocation(line: 1030, column: 3, scope: !2838, inlinedAt: !2848)
!2850 = !DILocation(line: 1030, column: 26, scope: !2838, inlinedAt: !2848)
!2851 = !DILocation(line: 1030, column: 30, scope: !2838, inlinedAt: !2848)
!2852 = !DILocation(line: 0, scope: !1590, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 1031, column: 3, scope: !2838, inlinedAt: !2848)
!2854 = !DILocation(line: 184, column: 6, scope: !1590, inlinedAt: !2853)
!2855 = !DILocation(line: 184, column: 12, scope: !1590, inlinedAt: !2853)
!2856 = !DILocation(line: 185, column: 8, scope: !1604, inlinedAt: !2853)
!2857 = !DILocation(line: 185, column: 19, scope: !1604, inlinedAt: !2853)
!2858 = !DILocation(line: 186, column: 5, scope: !1604, inlinedAt: !2853)
!2859 = !DILocation(line: 187, column: 6, scope: !1590, inlinedAt: !2853)
!2860 = !DILocation(line: 187, column: 17, scope: !1590, inlinedAt: !2853)
!2861 = !DILocation(line: 188, column: 6, scope: !1590, inlinedAt: !2853)
!2862 = !DILocation(line: 188, column: 18, scope: !1590, inlinedAt: !2853)
!2863 = !DILocation(line: 1032, column: 10, scope: !2838, inlinedAt: !2848)
!2864 = !DILocation(line: 1033, column: 1, scope: !2838, inlinedAt: !2848)
!2865 = !DILocation(line: 1021, column: 3, scope: !2828)
!2866 = !DILocation(line: 0, scope: !2838)
!2867 = !DILocation(line: 1030, column: 3, scope: !2838)
!2868 = !DILocation(line: 1030, column: 26, scope: !2838)
!2869 = !DILocation(line: 1030, column: 30, scope: !2838)
!2870 = !DILocation(line: 0, scope: !1590, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 1031, column: 3, scope: !2838)
!2872 = !DILocation(line: 184, column: 6, scope: !1590, inlinedAt: !2871)
!2873 = !DILocation(line: 184, column: 12, scope: !1590, inlinedAt: !2871)
!2874 = !DILocation(line: 185, column: 8, scope: !1604, inlinedAt: !2871)
!2875 = !DILocation(line: 185, column: 19, scope: !1604, inlinedAt: !2871)
!2876 = !DILocation(line: 186, column: 5, scope: !1604, inlinedAt: !2871)
!2877 = !DILocation(line: 187, column: 6, scope: !1590, inlinedAt: !2871)
!2878 = !DILocation(line: 187, column: 17, scope: !1590, inlinedAt: !2871)
!2879 = !DILocation(line: 188, column: 6, scope: !1590, inlinedAt: !2871)
!2880 = !DILocation(line: 188, column: 18, scope: !1590, inlinedAt: !2871)
!2881 = !DILocation(line: 1032, column: 10, scope: !2838)
!2882 = !DILocation(line: 1033, column: 1, scope: !2838)
!2883 = !DILocation(line: 1032, column: 3, scope: !2838)
!2884 = distinct !DISubprogram(name: "quotearg_custom", scope: !89, file: !89, line: 1036, type: !2885, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!22, !52, !52, !52}
!2887 = !{!2888, !2889, !2890}
!2888 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2884, file: !89, line: 1036, type: !52)
!2889 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2884, file: !89, line: 1036, type: !52)
!2890 = !DILocalVariable(name: "arg", arg: 3, scope: !2884, file: !89, line: 1037, type: !52)
!2891 = !DILocation(line: 0, scope: !2884)
!2892 = !DILocation(line: 0, scope: !2828, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1039, column: 10, scope: !2884)
!2894 = !DILocation(line: 0, scope: !2838, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 1021, column: 10, scope: !2828, inlinedAt: !2893)
!2896 = !DILocation(line: 1030, column: 3, scope: !2838, inlinedAt: !2895)
!2897 = !DILocation(line: 1030, column: 26, scope: !2838, inlinedAt: !2895)
!2898 = !DILocation(line: 1030, column: 30, scope: !2838, inlinedAt: !2895)
!2899 = !DILocation(line: 0, scope: !1590, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 1031, column: 3, scope: !2838, inlinedAt: !2895)
!2901 = !DILocation(line: 184, column: 6, scope: !1590, inlinedAt: !2900)
!2902 = !DILocation(line: 184, column: 12, scope: !1590, inlinedAt: !2900)
!2903 = !DILocation(line: 185, column: 8, scope: !1604, inlinedAt: !2900)
!2904 = !DILocation(line: 185, column: 19, scope: !1604, inlinedAt: !2900)
!2905 = !DILocation(line: 186, column: 5, scope: !1604, inlinedAt: !2900)
!2906 = !DILocation(line: 187, column: 6, scope: !1590, inlinedAt: !2900)
!2907 = !DILocation(line: 187, column: 17, scope: !1590, inlinedAt: !2900)
!2908 = !DILocation(line: 188, column: 6, scope: !1590, inlinedAt: !2900)
!2909 = !DILocation(line: 188, column: 18, scope: !1590, inlinedAt: !2900)
!2910 = !DILocation(line: 1032, column: 10, scope: !2838, inlinedAt: !2895)
!2911 = !DILocation(line: 1033, column: 1, scope: !2838, inlinedAt: !2895)
!2912 = !DILocation(line: 1039, column: 3, scope: !2884)
!2913 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !89, file: !89, line: 1043, type: !2914, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!22, !52, !52, !52, !39}
!2916 = !{!2917, !2918, !2919, !2920}
!2917 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2913, file: !89, line: 1043, type: !52)
!2918 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2913, file: !89, line: 1043, type: !52)
!2919 = !DILocalVariable(name: "arg", arg: 3, scope: !2913, file: !89, line: 1044, type: !52)
!2920 = !DILocalVariable(name: "argsize", arg: 4, scope: !2913, file: !89, line: 1044, type: !39)
!2921 = !DILocation(line: 0, scope: !2913)
!2922 = !DILocation(line: 0, scope: !2838, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 1046, column: 10, scope: !2913)
!2924 = !DILocation(line: 1030, column: 3, scope: !2838, inlinedAt: !2923)
!2925 = !DILocation(line: 1030, column: 26, scope: !2838, inlinedAt: !2923)
!2926 = !DILocation(line: 1030, column: 30, scope: !2838, inlinedAt: !2923)
!2927 = !DILocation(line: 0, scope: !1590, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 1031, column: 3, scope: !2838, inlinedAt: !2923)
!2929 = !DILocation(line: 184, column: 6, scope: !1590, inlinedAt: !2928)
!2930 = !DILocation(line: 184, column: 12, scope: !1590, inlinedAt: !2928)
!2931 = !DILocation(line: 185, column: 8, scope: !1604, inlinedAt: !2928)
!2932 = !DILocation(line: 185, column: 19, scope: !1604, inlinedAt: !2928)
!2933 = !DILocation(line: 186, column: 5, scope: !1604, inlinedAt: !2928)
!2934 = !DILocation(line: 187, column: 6, scope: !1590, inlinedAt: !2928)
!2935 = !DILocation(line: 187, column: 17, scope: !1590, inlinedAt: !2928)
!2936 = !DILocation(line: 188, column: 6, scope: !1590, inlinedAt: !2928)
!2937 = !DILocation(line: 188, column: 18, scope: !1590, inlinedAt: !2928)
!2938 = !DILocation(line: 1032, column: 10, scope: !2838, inlinedAt: !2923)
!2939 = !DILocation(line: 1033, column: 1, scope: !2838, inlinedAt: !2923)
!2940 = !DILocation(line: 1046, column: 3, scope: !2913)
!2941 = distinct !DISubprogram(name: "quote_n_mem", scope: !89, file: !89, line: 1061, type: !2942, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!52, !42, !52, !39}
!2944 = !{!2945, !2946, !2947}
!2945 = !DILocalVariable(name: "n", arg: 1, scope: !2941, file: !89, line: 1061, type: !42)
!2946 = !DILocalVariable(name: "arg", arg: 2, scope: !2941, file: !89, line: 1061, type: !52)
!2947 = !DILocalVariable(name: "argsize", arg: 3, scope: !2941, file: !89, line: 1061, type: !39)
!2948 = !DILocation(line: 0, scope: !2941)
!2949 = !DILocation(line: 1063, column: 10, scope: !2941)
!2950 = !DILocation(line: 1063, column: 3, scope: !2941)
!2951 = distinct !DISubprogram(name: "quote_mem", scope: !89, file: !89, line: 1067, type: !2952, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!52, !52, !39}
!2954 = !{!2955, !2956}
!2955 = !DILocalVariable(name: "arg", arg: 1, scope: !2951, file: !89, line: 1067, type: !52)
!2956 = !DILocalVariable(name: "argsize", arg: 2, scope: !2951, file: !89, line: 1067, type: !39)
!2957 = !DILocation(line: 0, scope: !2951)
!2958 = !DILocation(line: 0, scope: !2941, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 1069, column: 10, scope: !2951)
!2960 = !DILocation(line: 1063, column: 10, scope: !2941, inlinedAt: !2959)
!2961 = !DILocation(line: 1069, column: 3, scope: !2951)
!2962 = distinct !DISubprogram(name: "quote_n", scope: !89, file: !89, line: 1073, type: !2963, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!52, !42, !52}
!2965 = !{!2966, !2967}
!2966 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !89, line: 1073, type: !42)
!2967 = !DILocalVariable(name: "arg", arg: 2, scope: !2962, file: !89, line: 1073, type: !52)
!2968 = !DILocation(line: 0, scope: !2962)
!2969 = !DILocation(line: 0, scope: !2941, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 1075, column: 10, scope: !2962)
!2971 = !DILocation(line: 1063, column: 10, scope: !2941, inlinedAt: !2970)
!2972 = !DILocation(line: 1075, column: 3, scope: !2962)
!2973 = distinct !DISubprogram(name: "quote", scope: !89, file: !89, line: 1079, type: !2974, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!52, !52}
!2976 = !{!2977}
!2977 = !DILocalVariable(name: "arg", arg: 1, scope: !2973, file: !89, line: 1079, type: !52)
!2978 = !DILocation(line: 0, scope: !2973)
!2979 = !DILocation(line: 0, scope: !2962, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 1081, column: 10, scope: !2973)
!2981 = !DILocation(line: 0, scope: !2941, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 1075, column: 10, scope: !2962, inlinedAt: !2980)
!2983 = !DILocation(line: 1063, column: 10, scope: !2941, inlinedAt: !2982)
!2984 = !DILocation(line: 1081, column: 3, scope: !2973)
!2985 = distinct !DISubprogram(name: "version_etc_arn", scope: !214, file: !214, line: 61, type: !2986, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3023)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !2988, !52, !52, !52, !1078, !39}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2990, line: 7, baseType: !2991)
!2990 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !753, line: 49, size: 1728, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2991, file: !753, line: 51, baseType: !42, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2991, file: !753, line: 54, baseType: !22, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2991, file: !753, line: 55, baseType: !22, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2991, file: !753, line: 56, baseType: !22, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2991, file: !753, line: 57, baseType: !22, size: 64, offset: 256)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2991, file: !753, line: 58, baseType: !22, size: 64, offset: 320)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2991, file: !753, line: 59, baseType: !22, size: 64, offset: 384)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2991, file: !753, line: 60, baseType: !22, size: 64, offset: 448)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2991, file: !753, line: 61, baseType: !22, size: 64, offset: 512)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2991, file: !753, line: 64, baseType: !22, size: 64, offset: 576)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2991, file: !753, line: 65, baseType: !22, size: 64, offset: 640)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2991, file: !753, line: 66, baseType: !22, size: 64, offset: 704)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2991, file: !753, line: 68, baseType: !768, size: 64, offset: 768)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2991, file: !753, line: 70, baseType: !3007, size: 64, offset: 832)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2991, file: !753, line: 72, baseType: !42, size: 32, offset: 896)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2991, file: !753, line: 73, baseType: !42, size: 32, offset: 928)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2991, file: !753, line: 74, baseType: !774, size: 64, offset: 960)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2991, file: !753, line: 77, baseType: !126, size: 16, offset: 1024)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2991, file: !753, line: 78, baseType: !778, size: 8, offset: 1040)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2991, file: !753, line: 79, baseType: !780, size: 8, offset: 1048)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2991, file: !753, line: 81, baseType: !784, size: 64, offset: 1088)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2991, file: !753, line: 89, baseType: !787, size: 64, offset: 1152)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2991, file: !753, line: 91, baseType: !789, size: 64, offset: 1216)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2991, file: !753, line: 92, baseType: !792, size: 64, offset: 1280)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2991, file: !753, line: 93, baseType: !3007, size: 64, offset: 1344)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2991, file: !753, line: 94, baseType: !24, size: 64, offset: 1408)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2991, file: !753, line: 95, baseType: !39, size: 64, offset: 1472)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2991, file: !753, line: 96, baseType: !42, size: 32, offset: 1536)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2991, file: !753, line: 98, baseType: !799, size: 160, offset: 1568)
!3023 = !{!3024, !3025, !3026, !3027, !3028, !3029}
!3024 = !DILocalVariable(name: "stream", arg: 1, scope: !2985, file: !214, line: 61, type: !2988)
!3025 = !DILocalVariable(name: "command_name", arg: 2, scope: !2985, file: !214, line: 62, type: !52)
!3026 = !DILocalVariable(name: "package", arg: 3, scope: !2985, file: !214, line: 62, type: !52)
!3027 = !DILocalVariable(name: "version", arg: 4, scope: !2985, file: !214, line: 63, type: !52)
!3028 = !DILocalVariable(name: "authors", arg: 5, scope: !2985, file: !214, line: 64, type: !1078)
!3029 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2985, file: !214, line: 64, type: !39)
!3030 = !DILocation(line: 0, scope: !2985)
!3031 = !DILocation(line: 66, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2985, file: !214, line: 66, column: 7)
!3033 = !DILocation(line: 66, column: 7, scope: !2985)
!3034 = !DILocation(line: 67, column: 5, scope: !3032)
!3035 = !DILocation(line: 69, column: 5, scope: !3032)
!3036 = !DILocation(line: 83, column: 3, scope: !2985)
!3037 = !DILocation(line: 85, column: 3, scope: !2985)
!3038 = !DILocation(line: 88, column: 3, scope: !2985)
!3039 = !DILocation(line: 95, column: 3, scope: !2985)
!3040 = !DILocation(line: 97, column: 3, scope: !2985)
!3041 = !DILocation(line: 105, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2985, file: !214, line: 98, column: 5)
!3043 = !DILocation(line: 106, column: 7, scope: !3042)
!3044 = !DILocation(line: 109, column: 7, scope: !3042)
!3045 = !DILocation(line: 110, column: 7, scope: !3042)
!3046 = !DILocation(line: 113, column: 7, scope: !3042)
!3047 = !DILocation(line: 115, column: 7, scope: !3042)
!3048 = !DILocation(line: 120, column: 7, scope: !3042)
!3049 = !DILocation(line: 122, column: 7, scope: !3042)
!3050 = !DILocation(line: 127, column: 7, scope: !3042)
!3051 = !DILocation(line: 129, column: 7, scope: !3042)
!3052 = !DILocation(line: 134, column: 7, scope: !3042)
!3053 = !DILocation(line: 137, column: 7, scope: !3042)
!3054 = !DILocation(line: 142, column: 7, scope: !3042)
!3055 = !DILocation(line: 145, column: 7, scope: !3042)
!3056 = !DILocation(line: 150, column: 7, scope: !3042)
!3057 = !DILocation(line: 154, column: 7, scope: !3042)
!3058 = !DILocation(line: 159, column: 7, scope: !3042)
!3059 = !DILocation(line: 163, column: 7, scope: !3042)
!3060 = !DILocation(line: 170, column: 7, scope: !3042)
!3061 = !DILocation(line: 174, column: 7, scope: !3042)
!3062 = !DILocation(line: 176, column: 1, scope: !2985)
!3063 = distinct !DISubprogram(name: "version_etc_ar", scope: !214, file: !214, line: 183, type: !3064, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !2988, !52, !52, !52, !1078}
!3066 = !{!3067, !3068, !3069, !3070, !3071, !3072}
!3067 = !DILocalVariable(name: "stream", arg: 1, scope: !3063, file: !214, line: 183, type: !2988)
!3068 = !DILocalVariable(name: "command_name", arg: 2, scope: !3063, file: !214, line: 184, type: !52)
!3069 = !DILocalVariable(name: "package", arg: 3, scope: !3063, file: !214, line: 184, type: !52)
!3070 = !DILocalVariable(name: "version", arg: 4, scope: !3063, file: !214, line: 185, type: !52)
!3071 = !DILocalVariable(name: "authors", arg: 5, scope: !3063, file: !214, line: 185, type: !1078)
!3072 = !DILocalVariable(name: "n_authors", scope: !3063, file: !214, line: 187, type: !39)
!3073 = !DILocation(line: 0, scope: !3063)
!3074 = !DILocation(line: 189, column: 8, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3063, file: !214, line: 189, column: 3)
!3076 = !DILocation(line: 0, scope: !3075)
!3077 = !DILocation(line: 189, column: 23, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3075, file: !214, line: 189, column: 3)
!3079 = !DILocation(line: 189, column: 3, scope: !3075)
!3080 = !DILocation(line: 189, column: 52, scope: !3078)
!3081 = distinct !{!3081, !3079, !3082, !723}
!3082 = !DILocation(line: 190, column: 5, scope: !3075)
!3083 = !DILocation(line: 191, column: 3, scope: !3063)
!3084 = !DILocation(line: 192, column: 1, scope: !3063)
!3085 = distinct !DISubprogram(name: "version_etc_va", scope: !214, file: !214, line: 199, type: !3086, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3095)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !2988, !52, !52, !52, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3089, file: !214, line: 192, baseType: !7, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3089, file: !214, line: 192, baseType: !7, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3089, file: !214, line: 192, baseType: !24, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3089, file: !214, line: 192, baseType: !24, size: 64, offset: 128)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3102}
!3096 = !DILocalVariable(name: "stream", arg: 1, scope: !3085, file: !214, line: 199, type: !2988)
!3097 = !DILocalVariable(name: "command_name", arg: 2, scope: !3085, file: !214, line: 200, type: !52)
!3098 = !DILocalVariable(name: "package", arg: 3, scope: !3085, file: !214, line: 200, type: !52)
!3099 = !DILocalVariable(name: "version", arg: 4, scope: !3085, file: !214, line: 201, type: !52)
!3100 = !DILocalVariable(name: "authors", arg: 5, scope: !3085, file: !214, line: 201, type: !3088)
!3101 = !DILocalVariable(name: "n_authors", scope: !3085, file: !214, line: 203, type: !39)
!3102 = !DILocalVariable(name: "authtab", scope: !3085, file: !214, line: 204, type: !3103)
!3103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 640, elements: !132)
!3104 = !DILocation(line: 0, scope: !3085)
!3105 = !DILocation(line: 204, column: 3, scope: !3085)
!3106 = !DILocation(line: 204, column: 15, scope: !3085)
!3107 = !DILocation(line: 208, column: 35, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !214, line: 206, column: 3)
!3109 = distinct !DILexicalBlock(scope: !3085, file: !214, line: 206, column: 3)
!3110 = !DILocation(line: 208, column: 14, scope: !3108)
!3111 = !DILocation(line: 208, column: 33, scope: !3108)
!3112 = !DILocation(line: 208, column: 67, scope: !3108)
!3113 = !DILocation(line: 206, column: 3, scope: !3109)
!3114 = !DILocation(line: 0, scope: !3109)
!3115 = !DILocation(line: 211, column: 3, scope: !3085)
!3116 = !DILocation(line: 213, column: 1, scope: !3085)
!3117 = distinct !DISubprogram(name: "version_etc", scope: !214, file: !214, line: 230, type: !3118, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !2988, !52, !52, !52, null}
!3120 = !{!3121, !3122, !3123, !3124, !3125}
!3121 = !DILocalVariable(name: "stream", arg: 1, scope: !3117, file: !214, line: 230, type: !2988)
!3122 = !DILocalVariable(name: "command_name", arg: 2, scope: !3117, file: !214, line: 231, type: !52)
!3123 = !DILocalVariable(name: "package", arg: 3, scope: !3117, file: !214, line: 231, type: !52)
!3124 = !DILocalVariable(name: "version", arg: 4, scope: !3117, file: !214, line: 232, type: !52)
!3125 = !DILocalVariable(name: "authors", scope: !3117, file: !214, line: 234, type: !3126)
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !748, line: 52, baseType: !3127)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3128, line: 32, baseType: !3129)
!3128 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !214, baseType: !3130)
!3130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3089, size: 192, elements: !781)
!3131 = !DILocation(line: 0, scope: !3117)
!3132 = !DILocation(line: 234, column: 3, scope: !3117)
!3133 = !DILocation(line: 234, column: 11, scope: !3117)
!3134 = !DILocation(line: 236, column: 3, scope: !3117)
!3135 = !DILocation(line: 237, column: 3, scope: !3117)
!3136 = !DILocation(line: 238, column: 3, scope: !3117)
!3137 = !DILocation(line: 239, column: 1, scope: !3117)
!3138 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !214, file: !214, line: 242, type: !681, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !64)
!3139 = !DILocation(line: 244, column: 3, scope: !3138)
!3140 = !DILocation(line: 249, column: 3, scope: !3138)
!3141 = !DILocation(line: 255, column: 3, scope: !3138)
!3142 = !DILocation(line: 260, column: 3, scope: !3138)
!3143 = !DILocation(line: 262, column: 1, scope: !3138)
!3144 = distinct !DISubprogram(name: "xnmalloc", scope: !223, file: !223, line: 99, type: !3145, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!24, !39, !39}
!3147 = !{!3148, !3149}
!3148 = !DILocalVariable(name: "n", arg: 1, scope: !3144, file: !223, line: 99, type: !39)
!3149 = !DILocalVariable(name: "s", arg: 2, scope: !3144, file: !223, line: 99, type: !39)
!3150 = !DILocation(line: 0, scope: !3144)
!3151 = !DILocation(line: 101, column: 7, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3144, file: !223, line: 101, column: 7)
!3153 = !DILocation(line: 101, column: 7, scope: !3144)
!3154 = !DILocation(line: 102, column: 5, scope: !3152)
!3155 = !DILocation(line: 103, column: 21, scope: !3144)
!3156 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !220, line: 39, type: !39)
!3157 = distinct !DISubprogram(name: "xmalloc", scope: !220, file: !220, line: 39, type: !187, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3158)
!3158 = !{!3156, !3159}
!3159 = !DILocalVariable(name: "p", scope: !3157, file: !220, line: 41, type: !24)
!3160 = !DILocation(line: 0, scope: !3157, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 103, column: 10, scope: !3144)
!3162 = !DILocation(line: 41, column: 13, scope: !3157, inlinedAt: !3161)
!3163 = !DILocation(line: 42, column: 8, scope: !3164, inlinedAt: !3161)
!3164 = distinct !DILexicalBlock(scope: !3157, file: !220, line: 42, column: 7)
!3165 = !DILocation(line: 42, column: 10, scope: !3164, inlinedAt: !3161)
!3166 = !DILocation(line: 43, column: 5, scope: !3164, inlinedAt: !3161)
!3167 = !DILocation(line: 103, column: 3, scope: !3144)
!3168 = !DILocation(line: 0, scope: !3157)
!3169 = !DILocation(line: 41, column: 13, scope: !3157)
!3170 = !DILocation(line: 42, column: 8, scope: !3164)
!3171 = !DILocation(line: 42, column: 10, scope: !3164)
!3172 = !DILocation(line: 43, column: 5, scope: !3164)
!3173 = !DILocation(line: 44, column: 3, scope: !3157)
!3174 = distinct !DISubprogram(name: "xnrealloc", scope: !223, file: !223, line: 112, type: !3175, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!24, !24, !39, !39}
!3177 = !{!3178, !3179, !3180}
!3178 = !DILocalVariable(name: "p", arg: 1, scope: !3174, file: !223, line: 112, type: !24)
!3179 = !DILocalVariable(name: "n", arg: 2, scope: !3174, file: !223, line: 112, type: !39)
!3180 = !DILocalVariable(name: "s", arg: 3, scope: !3174, file: !223, line: 112, type: !39)
!3181 = !DILocation(line: 0, scope: !3174)
!3182 = !DILocation(line: 114, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3174, file: !223, line: 114, column: 7)
!3184 = !DILocation(line: 114, column: 7, scope: !3174)
!3185 = !DILocation(line: 115, column: 5, scope: !3183)
!3186 = !DILocation(line: 116, column: 25, scope: !3174)
!3187 = !DILocalVariable(name: "p", arg: 1, scope: !3188, file: !220, line: 51, type: !24)
!3188 = distinct !DISubprogram(name: "xrealloc", scope: !220, file: !220, line: 51, type: !191, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3189)
!3189 = !{!3187, !3190}
!3190 = !DILocalVariable(name: "n", arg: 2, scope: !3188, file: !220, line: 51, type: !39)
!3191 = !DILocation(line: 0, scope: !3188, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 116, column: 10, scope: !3174)
!3193 = !DILocation(line: 53, column: 8, scope: !3194, inlinedAt: !3192)
!3194 = distinct !DILexicalBlock(scope: !3188, file: !220, line: 53, column: 7)
!3195 = !DILocation(line: 53, column: 10, scope: !3194, inlinedAt: !3192)
!3196 = !DILocation(line: 57, column: 7, scope: !3197, inlinedAt: !3192)
!3197 = distinct !DILexicalBlock(scope: !3194, file: !220, line: 54, column: 5)
!3198 = !DILocation(line: 58, column: 7, scope: !3197, inlinedAt: !3192)
!3199 = !DILocation(line: 61, column: 7, scope: !3188, inlinedAt: !3192)
!3200 = !DILocation(line: 62, column: 8, scope: !3201, inlinedAt: !3192)
!3201 = distinct !DILexicalBlock(scope: !3188, file: !220, line: 62, column: 7)
!3202 = !DILocation(line: 62, column: 10, scope: !3201, inlinedAt: !3192)
!3203 = !DILocation(line: 63, column: 5, scope: !3201, inlinedAt: !3192)
!3204 = !DILocation(line: 116, column: 3, scope: !3174)
!3205 = !DILocation(line: 0, scope: !3188)
!3206 = !DILocation(line: 53, column: 8, scope: !3194)
!3207 = !DILocation(line: 53, column: 10, scope: !3194)
!3208 = !DILocation(line: 57, column: 7, scope: !3197)
!3209 = !DILocation(line: 58, column: 7, scope: !3197)
!3210 = !DILocation(line: 61, column: 7, scope: !3188)
!3211 = !DILocation(line: 62, column: 8, scope: !3201)
!3212 = !DILocation(line: 62, column: 10, scope: !3201)
!3213 = !DILocation(line: 63, column: 5, scope: !3201)
!3214 = !DILocation(line: 65, column: 1, scope: !3188)
!3215 = !DILocation(line: 0, scope: !224)
!3216 = !DILocation(line: 176, column: 14, scope: !224)
!3217 = !DILocation(line: 178, column: 9, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !224, file: !223, line: 178, column: 7)
!3219 = !DILocation(line: 178, column: 7, scope: !224)
!3220 = !DILocation(line: 180, column: 13, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !223, line: 180, column: 11)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !223, line: 179, column: 5)
!3223 = !DILocation(line: 180, column: 11, scope: !3222)
!3224 = !DILocation(line: 188, column: 30, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3221, file: !223, line: 181, column: 9)
!3226 = !DILocation(line: 189, column: 16, scope: !3225)
!3227 = !DILocation(line: 189, column: 13, scope: !3225)
!3228 = !DILocation(line: 190, column: 9, scope: !3225)
!3229 = !DILocation(line: 191, column: 11, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3222, file: !223, line: 191, column: 11)
!3231 = !DILocation(line: 191, column: 11, scope: !3222)
!3232 = !DILocation(line: 206, column: 7, scope: !224)
!3233 = !DILocation(line: 207, column: 25, scope: !224)
!3234 = !DILocation(line: 0, scope: !3188, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 207, column: 10, scope: !224)
!3236 = !DILocation(line: 53, column: 10, scope: !3194, inlinedAt: !3235)
!3237 = !DILocation(line: 192, column: 9, scope: !3230)
!3238 = !DILocation(line: 200, column: 69, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !223, line: 200, column: 11)
!3240 = distinct !DILexicalBlock(scope: !3218, file: !223, line: 195, column: 5)
!3241 = !DILocation(line: 201, column: 11, scope: !3239)
!3242 = !DILocation(line: 200, column: 11, scope: !3240)
!3243 = !DILocation(line: 202, column: 9, scope: !3239)
!3244 = !DILocation(line: 203, column: 14, scope: !3240)
!3245 = !DILocation(line: 203, column: 18, scope: !3240)
!3246 = !DILocation(line: 203, column: 9, scope: !3240)
!3247 = !DILocation(line: 53, column: 8, scope: !3194, inlinedAt: !3235)
!3248 = !DILocation(line: 57, column: 7, scope: !3197, inlinedAt: !3235)
!3249 = !DILocation(line: 58, column: 7, scope: !3197, inlinedAt: !3235)
!3250 = !DILocation(line: 61, column: 7, scope: !3188, inlinedAt: !3235)
!3251 = !DILocation(line: 62, column: 8, scope: !3201, inlinedAt: !3235)
!3252 = !DILocation(line: 62, column: 10, scope: !3201, inlinedAt: !3235)
!3253 = !DILocation(line: 63, column: 5, scope: !3201, inlinedAt: !3235)
!3254 = !DILocation(line: 207, column: 3, scope: !224)
!3255 = distinct !DISubprogram(name: "xcharalloc", scope: !223, file: !223, line: 216, type: !2398, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3256)
!3256 = !{!3257}
!3257 = !DILocalVariable(name: "n", arg: 1, scope: !3255, file: !223, line: 216, type: !39)
!3258 = !DILocation(line: 0, scope: !3255)
!3259 = !DILocation(line: 0, scope: !3157, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 218, column: 10, scope: !3255)
!3261 = !DILocation(line: 41, column: 13, scope: !3157, inlinedAt: !3260)
!3262 = !DILocation(line: 42, column: 8, scope: !3164, inlinedAt: !3260)
!3263 = !DILocation(line: 42, column: 10, scope: !3164, inlinedAt: !3260)
!3264 = !DILocation(line: 43, column: 5, scope: !3164, inlinedAt: !3260)
!3265 = !DILocation(line: 218, column: 3, scope: !3255)
!3266 = distinct !DISubprogram(name: "x2realloc", scope: !220, file: !220, line: 74, type: !3267, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!24, !24, !227}
!3269 = !{!3270, !3271}
!3270 = !DILocalVariable(name: "p", arg: 1, scope: !3266, file: !220, line: 74, type: !24)
!3271 = !DILocalVariable(name: "pn", arg: 2, scope: !3266, file: !220, line: 74, type: !227)
!3272 = !DILocation(line: 0, scope: !3266)
!3273 = !DILocation(line: 0, scope: !224, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 76, column: 10, scope: !3266)
!3275 = !DILocation(line: 176, column: 14, scope: !224, inlinedAt: !3274)
!3276 = !DILocation(line: 178, column: 9, scope: !3218, inlinedAt: !3274)
!3277 = !DILocation(line: 178, column: 7, scope: !224, inlinedAt: !3274)
!3278 = !DILocation(line: 180, column: 13, scope: !3221, inlinedAt: !3274)
!3279 = !DILocation(line: 180, column: 11, scope: !3222, inlinedAt: !3274)
!3280 = !DILocation(line: 191, column: 11, scope: !3230, inlinedAt: !3274)
!3281 = !DILocation(line: 191, column: 11, scope: !3222, inlinedAt: !3274)
!3282 = !DILocation(line: 192, column: 9, scope: !3230, inlinedAt: !3274)
!3283 = !DILocation(line: 201, column: 11, scope: !3239, inlinedAt: !3274)
!3284 = !DILocation(line: 200, column: 11, scope: !3240, inlinedAt: !3274)
!3285 = !DILocation(line: 202, column: 9, scope: !3239, inlinedAt: !3274)
!3286 = !DILocation(line: 203, column: 14, scope: !3240, inlinedAt: !3274)
!3287 = !DILocation(line: 203, column: 18, scope: !3240, inlinedAt: !3274)
!3288 = !DILocation(line: 203, column: 9, scope: !3240, inlinedAt: !3274)
!3289 = !DILocation(line: 0, scope: !3188, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 207, column: 10, scope: !224, inlinedAt: !3274)
!3291 = !DILocation(line: 53, column: 10, scope: !3194, inlinedAt: !3290)
!3292 = !DILocation(line: 206, column: 7, scope: !224, inlinedAt: !3274)
!3293 = !DILocation(line: 61, column: 7, scope: !3188, inlinedAt: !3290)
!3294 = !DILocation(line: 62, column: 8, scope: !3201, inlinedAt: !3290)
!3295 = !DILocation(line: 62, column: 10, scope: !3201, inlinedAt: !3290)
!3296 = !DILocation(line: 63, column: 5, scope: !3201, inlinedAt: !3290)
!3297 = !DILocation(line: 76, column: 3, scope: !3266)
!3298 = distinct !DISubprogram(name: "xzalloc", scope: !220, file: !220, line: 84, type: !187, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3299)
!3299 = !{!3300}
!3300 = !DILocalVariable(name: "n", arg: 1, scope: !3298, file: !220, line: 84, type: !39)
!3301 = !DILocation(line: 0, scope: !3298)
!3302 = !DILocalVariable(name: "n", arg: 1, scope: !3303, file: !220, line: 93, type: !39)
!3303 = distinct !DISubprogram(name: "xcalloc", scope: !220, file: !220, line: 93, type: !3145, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3304)
!3304 = !{!3302, !3305, !3306}
!3305 = !DILocalVariable(name: "s", arg: 2, scope: !3303, file: !220, line: 93, type: !39)
!3306 = !DILocalVariable(name: "p", scope: !3303, file: !220, line: 95, type: !24)
!3307 = !DILocation(line: 0, scope: !3303, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 86, column: 10, scope: !3298)
!3309 = !DILocation(line: 100, column: 7, scope: !3310, inlinedAt: !3308)
!3310 = distinct !DILexicalBlock(scope: !3303, file: !220, line: 100, column: 7)
!3311 = !DILocation(line: 101, column: 7, scope: !3310, inlinedAt: !3308)
!3312 = !DILocation(line: 101, column: 18, scope: !3310, inlinedAt: !3308)
!3313 = !DILocation(line: 101, column: 16, scope: !3310, inlinedAt: !3308)
!3314 = !DILocation(line: 100, column: 7, scope: !3303, inlinedAt: !3308)
!3315 = !DILocation(line: 102, column: 5, scope: !3310, inlinedAt: !3308)
!3316 = !DILocation(line: 86, column: 3, scope: !3298)
!3317 = !DILocation(line: 0, scope: !3303)
!3318 = !DILocation(line: 100, column: 7, scope: !3310)
!3319 = !DILocation(line: 101, column: 7, scope: !3310)
!3320 = !DILocation(line: 101, column: 18, scope: !3310)
!3321 = !DILocation(line: 101, column: 16, scope: !3310)
!3322 = !DILocation(line: 100, column: 7, scope: !3303)
!3323 = !DILocation(line: 102, column: 5, scope: !3310)
!3324 = !DILocation(line: 103, column: 3, scope: !3303)
!3325 = distinct !DISubprogram(name: "xmemdup", scope: !220, file: !220, line: 111, type: !3326, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!24, !1341, !39}
!3328 = !{!3329, !3330}
!3329 = !DILocalVariable(name: "p", arg: 1, scope: !3325, file: !220, line: 111, type: !1341)
!3330 = !DILocalVariable(name: "s", arg: 2, scope: !3325, file: !220, line: 111, type: !39)
!3331 = !DILocation(line: 0, scope: !3325)
!3332 = !DILocation(line: 0, scope: !3157, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 113, column: 18, scope: !3325)
!3334 = !DILocation(line: 41, column: 13, scope: !3157, inlinedAt: !3333)
!3335 = !DILocation(line: 42, column: 8, scope: !3164, inlinedAt: !3333)
!3336 = !DILocation(line: 42, column: 10, scope: !3164, inlinedAt: !3333)
!3337 = !DILocation(line: 43, column: 5, scope: !3164, inlinedAt: !3333)
!3338 = !DILocalVariable(name: "__dest", arg: 1, scope: !3339, file: !1336, line: 26, type: !1339)
!3339 = distinct !DISubprogram(name: "memcpy", scope: !1336, file: !1336, line: 26, type: !1337, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3340)
!3340 = !{!3338, !3341, !3342}
!3341 = !DILocalVariable(name: "__src", arg: 2, scope: !3339, file: !1336, line: 26, type: !1340)
!3342 = !DILocalVariable(name: "__len", arg: 3, scope: !3339, file: !1336, line: 26, type: !39)
!3343 = !DILocation(line: 0, scope: !3339, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 113, column: 10, scope: !3325)
!3345 = !DILocation(line: 29, column: 10, scope: !3339, inlinedAt: !3344)
!3346 = !DILocation(line: 113, column: 3, scope: !3325)
!3347 = distinct !DISubprogram(name: "xstrdup", scope: !220, file: !220, line: 119, type: !1189, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3348)
!3348 = !{!3349}
!3349 = !DILocalVariable(name: "string", arg: 1, scope: !3347, file: !220, line: 119, type: !52)
!3350 = !DILocation(line: 0, scope: !3347)
!3351 = !DILocation(line: 121, column: 27, scope: !3347)
!3352 = !DILocation(line: 121, column: 43, scope: !3347)
!3353 = !DILocation(line: 0, scope: !3325, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 121, column: 10, scope: !3347)
!3355 = !DILocation(line: 0, scope: !3157, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 113, column: 18, scope: !3325, inlinedAt: !3354)
!3357 = !DILocation(line: 41, column: 13, scope: !3157, inlinedAt: !3356)
!3358 = !DILocation(line: 42, column: 8, scope: !3164, inlinedAt: !3356)
!3359 = !DILocation(line: 42, column: 10, scope: !3164, inlinedAt: !3356)
!3360 = !DILocation(line: 43, column: 5, scope: !3164, inlinedAt: !3356)
!3361 = !DILocation(line: 0, scope: !3339, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 113, column: 10, scope: !3325, inlinedAt: !3354)
!3363 = !DILocation(line: 29, column: 10, scope: !3339, inlinedAt: !3362)
!3364 = !DILocation(line: 121, column: 3, scope: !3347)
!3365 = distinct !DISubprogram(name: "xalloc_die", scope: !237, file: !237, line: 32, type: !681, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !64)
!3366 = !DILocation(line: 34, column: 10, scope: !3365)
!3367 = !DILocation(line: 34, column: 33, scope: !3365)
!3368 = !DILocation(line: 34, column: 3, scope: !3365)
!3369 = !DILocation(line: 40, column: 3, scope: !3365)
!3370 = distinct !DISubprogram(name: "xreadlink", scope: !239, file: !239, line: 38, type: !1189, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !3371)
!3371 = !{!3372, !3373}
!3372 = !DILocalVariable(name: "filename", arg: 1, scope: !3370, file: !239, line: 38, type: !52)
!3373 = !DILocalVariable(name: "result", scope: !3370, file: !239, line: 40, type: !22)
!3374 = !DILocation(line: 0, scope: !3370)
!3375 = !DILocation(line: 40, column: 18, scope: !3370)
!3376 = !DILocation(line: 41, column: 14, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3370, file: !239, line: 41, column: 7)
!3378 = !DILocation(line: 41, column: 22, scope: !3377)
!3379 = !DILocation(line: 41, column: 25, scope: !3377)
!3380 = !DILocation(line: 41, column: 31, scope: !3377)
!3381 = !DILocation(line: 41, column: 7, scope: !3370)
!3382 = !DILocation(line: 42, column: 5, scope: !3377)
!3383 = !DILocation(line: 43, column: 3, scope: !3370)
!3384 = distinct !DISubprogram(name: "xstrtoumax", scope: !3385, file: !3385, line: 76, type: !3386, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3390)
!3385 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!3388, !52, !809, !42, !3389, !52}
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !14, line: 38, baseType: !13)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3403, !3404, !3407, !3408}
!3391 = !DILocalVariable(name: "s", arg: 1, scope: !3384, file: !3385, line: 76, type: !52)
!3392 = !DILocalVariable(name: "ptr", arg: 2, scope: !3384, file: !3385, line: 76, type: !809)
!3393 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3384, file: !3385, line: 76, type: !42)
!3394 = !DILocalVariable(name: "val", arg: 4, scope: !3384, file: !3385, line: 77, type: !3389)
!3395 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3384, file: !3385, line: 77, type: !52)
!3396 = !DILocalVariable(name: "t_ptr", scope: !3384, file: !3385, line: 79, type: !22)
!3397 = !DILocalVariable(name: "p", scope: !3384, file: !3385, line: 80, type: !809)
!3398 = !DILocalVariable(name: "tmp", scope: !3384, file: !3385, line: 81, type: !25)
!3399 = !DILocalVariable(name: "err", scope: !3384, file: !3385, line: 82, type: !3388)
!3400 = !DILocalVariable(name: "q", scope: !3401, file: !3385, line: 92, type: !52)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3385, line: 91, column: 5)
!3402 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 90, column: 7)
!3403 = !DILocalVariable(name: "ch", scope: !3401, file: !3385, line: 93, type: !1557)
!3404 = !DILocalVariable(name: "base", scope: !3405, file: !3385, line: 129, type: !42)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3385, line: 128, column: 5)
!3406 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 127, column: 7)
!3407 = !DILocalVariable(name: "suffixes", scope: !3405, file: !3385, line: 130, type: !42)
!3408 = !DILocalVariable(name: "overflow", scope: !3405, file: !3385, line: 131, type: !3388)
!3409 = !DILocation(line: 0, scope: !3384)
!3410 = !DILocation(line: 79, column: 3, scope: !3384)
!3411 = !DILocation(line: 84, column: 3, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !3385, line: 84, column: 3)
!3413 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 84, column: 3)
!3414 = !DILocation(line: 86, column: 8, scope: !3384)
!3415 = !DILocation(line: 88, column: 3, scope: !3384)
!3416 = !DILocation(line: 88, column: 9, scope: !3384)
!3417 = !DILocation(line: 0, scope: !3401)
!3418 = !DILocation(line: 94, column: 7, scope: !3401)
!3419 = !DILocation(line: 94, column: 14, scope: !3401)
!3420 = !DILocation(line: 95, column: 15, scope: !3401)
!3421 = distinct !{!3421, !3418, !3422, !723}
!3422 = !DILocation(line: 95, column: 17, scope: !3401)
!3423 = !DILocation(line: 96, column: 14, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3401, file: !3385, line: 96, column: 11)
!3425 = !DILocation(line: 100, column: 9, scope: !3384)
!3426 = !DILocation(line: 102, column: 7, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 102, column: 7)
!3428 = !DILocation(line: 102, column: 10, scope: !3427)
!3429 = !DILocation(line: 102, column: 7, scope: !3384)
!3430 = !DILocation(line: 106, column: 11, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !3385, line: 106, column: 11)
!3432 = distinct !DILexicalBlock(scope: !3427, file: !3385, line: 103, column: 5)
!3433 = !DILocation(line: 106, column: 26, scope: !3431)
!3434 = !DILocation(line: 106, column: 29, scope: !3431)
!3435 = !DILocation(line: 106, column: 33, scope: !3431)
!3436 = !DILocation(line: 106, column: 36, scope: !3431)
!3437 = !DILocation(line: 106, column: 11, scope: !3432)
!3438 = !DILocation(line: 111, column: 12, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3427, file: !3385, line: 111, column: 12)
!3440 = !DILocation(line: 111, column: 12, scope: !3427)
!3441 = !DILocation(line: 116, column: 5, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3439, file: !3385, line: 112, column: 5)
!3443 = !DILocation(line: 121, column: 8, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 121, column: 7)
!3445 = !DILocation(line: 121, column: 7, scope: !3384)
!3446 = !DILocation(line: 123, column: 12, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3444, file: !3385, line: 122, column: 5)
!3448 = !DILocation(line: 124, column: 7, scope: !3447)
!3449 = !DILocation(line: 127, column: 7, scope: !3406)
!3450 = !DILocation(line: 127, column: 11, scope: !3406)
!3451 = !DILocation(line: 127, column: 7, scope: !3384)
!3452 = !DILocation(line: 0, scope: !3405)
!3453 = !DILocation(line: 133, column: 12, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3405, file: !3385, line: 133, column: 11)
!3455 = !DILocation(line: 133, column: 11, scope: !3405)
!3456 = !DILocation(line: 135, column: 16, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !3385, line: 134, column: 9)
!3458 = !DILocation(line: 136, column: 22, scope: !3457)
!3459 = !DILocation(line: 136, column: 11, scope: !3457)
!3460 = !DILocation(line: 139, column: 7, scope: !3405)
!3461 = !DILocation(line: 151, column: 15, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !3385, line: 151, column: 15)
!3463 = distinct !DILexicalBlock(scope: !3405, file: !3385, line: 140, column: 9)
!3464 = !DILocation(line: 151, column: 15, scope: !3463)
!3465 = !DILocation(line: 152, column: 21, scope: !3462)
!3466 = !DILocation(line: 152, column: 13, scope: !3462)
!3467 = !DILocation(line: 155, column: 21, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !3385, line: 155, column: 21)
!3469 = distinct !DILexicalBlock(scope: !3462, file: !3385, line: 153, column: 15)
!3470 = !DILocation(line: 155, column: 29, scope: !3468)
!3471 = !DILocation(line: 155, column: 21, scope: !3469)
!3472 = !DILocation(line: 163, column: 17, scope: !3469)
!3473 = !DILocation(line: 167, column: 7, scope: !3405)
!3474 = !DILocalVariable(name: "err", scope: !3475, file: !3385, line: 67, type: !3388)
!3475 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3385, file: !3385, line: 65, type: !3476, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!3388, !3389, !42, !42}
!3478 = !{!3479, !3480, !3481, !3474}
!3479 = !DILocalVariable(name: "x", arg: 1, scope: !3475, file: !3385, line: 65, type: !3389)
!3480 = !DILocalVariable(name: "base", arg: 2, scope: !3475, file: !3385, line: 65, type: !42)
!3481 = !DILocalVariable(name: "power", arg: 3, scope: !3475, file: !3385, line: 65, type: !42)
!3482 = !DILocation(line: 0, scope: !3475, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 221, column: 22, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3405, file: !3385, line: 168, column: 9)
!3485 = !DILocalVariable(name: "x", arg: 1, scope: !3486, file: !3385, line: 48, type: !3389)
!3486 = distinct !DISubprogram(name: "bkm_scale", scope: !3385, file: !3385, line: 48, type: !3487, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!3388, !3389, !42}
!3489 = !{!3485, !3490}
!3490 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3486, file: !3385, line: 48, type: !42)
!3491 = !DILocation(line: 0, scope: !3486, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 69, column: 12, scope: !3475, inlinedAt: !3483)
!3493 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3492)
!3494 = distinct !DILexicalBlock(scope: !3486, file: !3385, line: 55, column: 7)
!3495 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3492)
!3496 = !DILocation(line: 69, column: 9, scope: !3475, inlinedAt: !3483)
!3497 = !DILocation(line: 229, column: 11, scope: !3405)
!3498 = !DILocation(line: 0, scope: !3475, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 217, column: 22, scope: !3484)
!3500 = !DILocation(line: 0, scope: !3486, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 69, column: 12, scope: !3475, inlinedAt: !3499)
!3502 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3501)
!3503 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3501)
!3504 = !DILocation(line: 69, column: 9, scope: !3475, inlinedAt: !3499)
!3505 = !DILocation(line: 0, scope: !3475, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 204, column: 22, scope: !3484)
!3507 = !DILocation(line: 0, scope: !3486, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 69, column: 12, scope: !3475, inlinedAt: !3506)
!3509 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3508)
!3510 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3508)
!3511 = !DILocation(line: 69, column: 9, scope: !3475, inlinedAt: !3506)
!3512 = !DILocation(line: 0, scope: !3475, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 185, column: 22, scope: !3484)
!3514 = !DILocation(line: 0, scope: !3486, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 69, column: 12, scope: !3475, inlinedAt: !3513)
!3516 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3515)
!3517 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3515)
!3518 = !DILocation(line: 69, column: 9, scope: !3475, inlinedAt: !3513)
!3519 = !DILocation(line: 0, scope: !3486, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 170, column: 22, scope: !3484)
!3521 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3520)
!3522 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3520)
!3523 = !DILocation(line: 171, column: 11, scope: !3484)
!3524 = !DILocation(line: 0, scope: !3486, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 177, column: 22, scope: !3484)
!3526 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3525)
!3527 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3525)
!3528 = !DILocation(line: 178, column: 11, scope: !3484)
!3529 = !DILocation(line: 0, scope: !3475, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 190, column: 22, scope: !3484)
!3531 = !DILocation(line: 0, scope: !3486, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 69, column: 12, scope: !3475, inlinedAt: !3530)
!3533 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3532)
!3534 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3532)
!3535 = !DILocation(line: 69, column: 9, scope: !3475, inlinedAt: !3530)
!3536 = !DILocation(line: 0, scope: !3475, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 200, column: 22, scope: !3484)
!3538 = !DILocation(line: 0, scope: !3486, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 69, column: 12, scope: !3475, inlinedAt: !3537)
!3540 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3539)
!3541 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3539)
!3542 = !DILocation(line: 69, column: 9, scope: !3475, inlinedAt: !3537)
!3543 = !DILocation(line: 0, scope: !3475, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 209, column: 22, scope: !3484)
!3545 = !DILocation(line: 0, scope: !3486, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 69, column: 12, scope: !3475, inlinedAt: !3544)
!3547 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3546)
!3548 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3546)
!3549 = !DILocation(line: 69, column: 9, scope: !3475, inlinedAt: !3544)
!3550 = !DILocation(line: 0, scope: !3486, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 213, column: 22, scope: !3484)
!3552 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3551)
!3553 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3551)
!3554 = !DILocation(line: 214, column: 11, scope: !3484)
!3555 = !DILocation(line: 225, column: 16, scope: !3484)
!3556 = !DILocation(line: 226, column: 22, scope: !3484)
!3557 = !DILocation(line: 226, column: 11, scope: !3484)
!3558 = !DILocation(line: 0, scope: !3475, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 195, column: 22, scope: !3484)
!3560 = !DILocation(line: 0, scope: !3486, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 69, column: 12, scope: !3475, inlinedAt: !3559)
!3562 = !DILocation(line: 55, column: 39, scope: !3494, inlinedAt: !3561)
!3563 = !DILocation(line: 55, column: 7, scope: !3486, inlinedAt: !3561)
!3564 = !DILocation(line: 0, scope: !3484)
!3565 = !DILocation(line: 230, column: 10, scope: !3405)
!3566 = !DILocation(line: 231, column: 11, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3405, file: !3385, line: 231, column: 11)
!3568 = !DILocation(line: 231, column: 11, scope: !3405)
!3569 = !DILocation(line: 107, column: 13, scope: !3431)
!3570 = !DILocation(line: 82, column: 16, scope: !3384)
!3571 = !DILocation(line: 235, column: 8, scope: !3384)
!3572 = !DILocation(line: 236, column: 3, scope: !3384)
!3573 = !DILocation(line: 237, column: 1, scope: !3384)
!3574 = !DISubprogram(name: "strtoumax", scope: !3575, file: !3575, line: 301, type: !3576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!3575 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!29, !52, !809, !42}
!3578 = distinct !DISubprogram(name: "rpl_calloc", scope: !245, file: !245, line: 42, type: !3145, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3579)
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DILocalVariable(name: "n", arg: 1, scope: !3578, file: !245, line: 42, type: !39)
!3581 = !DILocalVariable(name: "s", arg: 2, scope: !3578, file: !245, line: 42, type: !39)
!3582 = !DILocalVariable(name: "result", scope: !3578, file: !245, line: 44, type: !24)
!3583 = !DILocalVariable(name: "bytes", scope: !3584, file: !245, line: 56, type: !39)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !245, line: 53, column: 5)
!3585 = distinct !DILexicalBlock(scope: !3578, file: !245, line: 47, column: 7)
!3586 = !DILocation(line: 0, scope: !3578)
!3587 = !DILocation(line: 47, column: 9, scope: !3585)
!3588 = !DILocation(line: 47, column: 14, scope: !3585)
!3589 = !DILocation(line: 0, scope: !3584)
!3590 = !DILocation(line: 57, column: 21, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3584, file: !245, line: 57, column: 11)
!3592 = !DILocation(line: 57, column: 11, scope: !3584)
!3593 = !DILocation(line: 59, column: 11, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !245, line: 58, column: 9)
!3595 = !DILocation(line: 59, column: 17, scope: !3594)
!3596 = !DILocation(line: 65, column: 12, scope: !3578)
!3597 = !DILocation(line: 72, column: 3, scope: !3578)
!3598 = !DILocation(line: 73, column: 1, scope: !3578)
!3599 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !247, file: !247, line: 86, type: !3600, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !3614)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!39, !3602, !52, !39, !3603}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1679, line: 6, baseType: !3605)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1681, line: 21, baseType: !3606)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1681, line: 13, size: 64, elements: !3607)
!3607 = !{!3608, !3609}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3606, file: !1681, line: 15, baseType: !42, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3606, file: !1681, line: 20, baseType: !3610, size: 32, offset: 32)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3606, file: !1681, line: 16, size: 32, elements: !3611)
!3611 = !{!3612, !3613}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3610, file: !1681, line: 18, baseType: !7, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3610, file: !1681, line: 19, baseType: !1690, size: 32)
!3614 = !{!3615, !3616, !3617, !3618, !3619, !3620, !3621}
!3615 = !DILocalVariable(name: "pwc", arg: 1, scope: !3599, file: !247, line: 86, type: !3602)
!3616 = !DILocalVariable(name: "s", arg: 2, scope: !3599, file: !247, line: 86, type: !52)
!3617 = !DILocalVariable(name: "n", arg: 3, scope: !3599, file: !247, line: 86, type: !39)
!3618 = !DILocalVariable(name: "ps", arg: 4, scope: !3599, file: !247, line: 86, type: !3603)
!3619 = !DILocalVariable(name: "ret", scope: !3599, file: !247, line: 88, type: !39)
!3620 = !DILocalVariable(name: "wc", scope: !3599, file: !247, line: 89, type: !1695)
!3621 = !DILocalVariable(name: "uc", scope: !3622, file: !247, line: 156, type: !1557)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !247, line: 155, column: 5)
!3623 = distinct !DILexicalBlock(scope: !3599, file: !247, line: 154, column: 7)
!3624 = !DILocation(line: 0, scope: !3599)
!3625 = !DILocation(line: 89, column: 3, scope: !3599)
!3626 = !DILocation(line: 105, column: 9, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3599, file: !247, line: 105, column: 7)
!3628 = !DILocation(line: 105, column: 7, scope: !3599)
!3629 = !DILocation(line: 145, column: 9, scope: !3599)
!3630 = !DILocation(line: 154, column: 19, scope: !3623)
!3631 = !DILocation(line: 154, column: 26, scope: !3623)
!3632 = !DILocation(line: 154, column: 41, scope: !3623)
!3633 = !DILocation(line: 154, column: 7, scope: !3599)
!3634 = !DILocation(line: 156, column: 26, scope: !3622)
!3635 = !DILocation(line: 0, scope: !3622)
!3636 = !DILocation(line: 157, column: 14, scope: !3622)
!3637 = !DILocation(line: 157, column: 12, scope: !3622)
!3638 = !DILocation(line: 163, column: 1, scope: !3599)
!3639 = !DISubprogram(name: "mbrtowc", scope: !2358, file: !2358, line: 296, type: !3640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!29, !56, !52, !29, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3643 = distinct !DISubprogram(name: "areadlink", scope: !250, file: !250, line: 53, type: !1189, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !3644)
!3644 = !{!3645}
!3645 = !DILocalVariable(name: "filename", arg: 1, scope: !3643, file: !250, line: 53, type: !52)
!3646 = !DILocation(line: 0, scope: !3643)
!3647 = !DILocation(line: 55, column: 10, scope: !3643)
!3648 = !DILocation(line: 55, column: 3, scope: !3643)
!3649 = distinct !DISubprogram(name: "careadlinkatcwd", scope: !250, file: !250, line: 36, type: !3650, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !3655)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!3652, !42, !52, !22, !39}
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3653, line: 108, baseType: !3654)
!3653 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!3654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !28, line: 194, baseType: !775)
!3655 = !{!3656, !3657, !3658, !3659}
!3656 = !DILocalVariable(name: "fd", arg: 1, scope: !3649, file: !250, line: 36, type: !42)
!3657 = !DILocalVariable(name: "filename", arg: 2, scope: !3649, file: !250, line: 36, type: !52)
!3658 = !DILocalVariable(name: "buffer", arg: 3, scope: !3649, file: !250, line: 36, type: !22)
!3659 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !3649, file: !250, line: 37, type: !39)
!3660 = !DILocation(line: 0, scope: !3649)
!3661 = !DILocation(line: 41, column: 10, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3649, file: !250, line: 41, column: 7)
!3663 = !DILocation(line: 41, column: 7, scope: !3649)
!3664 = !DILocation(line: 42, column: 5, scope: !3662)
!3665 = !DILocation(line: 43, column: 10, scope: !3649)
!3666 = !DILocation(line: 43, column: 3, scope: !3649)
!3667 = distinct !DISubprogram(name: "careadlinkat", scope: !252, file: !252, line: 64, type: !3668, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !3679)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!22, !42, !52, !22, !39, !3670, !3678}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !183, line: 27, size: 256, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !3672, file: !183, line: 37, baseType: !186, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !3672, file: !183, line: 43, baseType: !190, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3672, file: !183, line: 46, baseType: !194, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !3672, file: !183, line: 52, baseType: !198, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3693, !3695, !3696, !3699, !3704}
!3680 = !DILocalVariable(name: "fd", arg: 1, scope: !3667, file: !252, line: 64, type: !42)
!3681 = !DILocalVariable(name: "filename", arg: 2, scope: !3667, file: !252, line: 64, type: !52)
!3682 = !DILocalVariable(name: "buffer", arg: 3, scope: !3667, file: !252, line: 65, type: !22)
!3683 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !3667, file: !252, line: 65, type: !39)
!3684 = !DILocalVariable(name: "alloc", arg: 5, scope: !3667, file: !252, line: 66, type: !3670)
!3685 = !DILocalVariable(name: "preadlinkat", arg: 6, scope: !3667, file: !252, line: 67, type: !3678)
!3686 = !DILocalVariable(name: "buf", scope: !3667, file: !252, line: 69, type: !22)
!3687 = !DILocalVariable(name: "buf_size", scope: !3667, file: !252, line: 70, type: !39)
!3688 = !DILocalVariable(name: "buf_size_max", scope: !3667, file: !252, line: 71, type: !39)
!3689 = !DILocalVariable(name: "stack_buf", scope: !3667, file: !252, line: 73, type: !3690)
!3690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !3691)
!3691 = !{!3692}
!3692 = !DISubrange(count: 1024)
!3693 = !DILocalVariable(name: "link_length", scope: !3694, file: !252, line: 94, type: !3652)
!3694 = distinct !DILexicalBlock(scope: !3667, file: !252, line: 92, column: 5)
!3695 = !DILocalVariable(name: "link_size", scope: !3694, file: !252, line: 95, type: !39)
!3696 = !DILocalVariable(name: "readlinkat_errno", scope: !3697, file: !252, line: 100, type: !42)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !252, line: 97, column: 9)
!3698 = distinct !DILexicalBlock(scope: !3694, file: !252, line: 96, column: 11)
!3699 = !DILocalVariable(name: "b", scope: !3700, file: !252, line: 120, type: !22)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !252, line: 119, column: 13)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !252, line: 118, column: 15)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !252, line: 115, column: 9)
!3703 = distinct !DILexicalBlock(scope: !3694, file: !252, line: 114, column: 11)
!3704 = !DILocalVariable(name: "b", scope: !3705, file: !252, line: 130, type: !22)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !252, line: 128, column: 13)
!3706 = distinct !DILexicalBlock(scope: !3701, file: !252, line: 127, column: 20)
!3707 = !DILocation(line: 0, scope: !3667)
!3708 = !DILocation(line: 73, column: 3, scope: !3667)
!3709 = !DILocation(line: 73, column: 8, scope: !3667)
!3710 = !DILocation(line: 75, column: 9, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3667, file: !252, line: 75, column: 7)
!3712 = !DILocation(line: 75, column: 7, scope: !3667)
!3713 = !DILocation(line: 78, column: 9, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3667, file: !252, line: 78, column: 7)
!3715 = !DILocation(line: 78, column: 7, scope: !3667)
!3716 = !DILocation(line: 91, column: 3, scope: !3667)
!3717 = !DILocation(line: 94, column: 29, scope: !3694)
!3718 = !DILocation(line: 0, scope: !3694)
!3719 = !DILocation(line: 96, column: 23, scope: !3698)
!3720 = !DILocation(line: 96, column: 11, scope: !3694)
!3721 = !DILocation(line: 100, column: 34, scope: !3697)
!3722 = !DILocation(line: 0, scope: !3697)
!3723 = !DILocation(line: 101, column: 32, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3697, file: !252, line: 101, column: 15)
!3725 = !DILocation(line: 101, column: 15, scope: !3697)
!3726 = !DILocation(line: 103, column: 23, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !252, line: 103, column: 19)
!3728 = distinct !DILexicalBlock(scope: !3724, file: !252, line: 102, column: 13)
!3729 = !DILocation(line: 103, column: 19, scope: !3728)
!3730 = !DILocation(line: 105, column: 26, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3727, file: !252, line: 104, column: 17)
!3732 = !{!3733, !673, i64 16}
!3733 = !{!"allocator", !673, i64 0, !673, i64 8, !673, i64 16, !673, i64 24}
!3734 = !DILocation(line: 105, column: 19, scope: !3731)
!3735 = !DILocation(line: 106, column: 25, scope: !3731)
!3736 = !DILocation(line: 107, column: 17, scope: !3731)
!3737 = !DILocation(line: 114, column: 21, scope: !3703)
!3738 = !DILocation(line: 114, column: 11, scope: !3694)
!3739 = !DILocation(line: 116, column: 24, scope: !3702)
!3740 = !DILocation(line: 116, column: 11, scope: !3702)
!3741 = !DILocation(line: 116, column: 28, scope: !3702)
!3742 = !DILocation(line: 118, column: 19, scope: !3701)
!3743 = !DILocation(line: 118, column: 15, scope: !3702)
!3744 = !DILocation(line: 120, column: 41, scope: !3700)
!3745 = !{!3733, !673, i64 0}
!3746 = !DILocation(line: 120, column: 34, scope: !3700)
!3747 = !DILocation(line: 0, scope: !3700)
!3748 = !DILocation(line: 122, column: 21, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3700, file: !252, line: 122, column: 19)
!3750 = !DILocation(line: 122, column: 19, scope: !3700)
!3751 = !DILocalVariable(name: "__dest", arg: 1, scope: !3752, file: !1336, line: 26, type: !1339)
!3752 = distinct !DISubprogram(name: "memcpy", scope: !1336, file: !1336, line: 26, type: !1337, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !3753)
!3753 = !{!3751, !3754, !3755}
!3754 = !DILocalVariable(name: "__src", arg: 2, scope: !3752, file: !1336, line: 26, type: !1340)
!3755 = !DILocalVariable(name: "__len", arg: 3, scope: !3752, file: !1336, line: 26, type: !39)
!3756 = !DILocation(line: 0, scope: !3752, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 124, column: 15, scope: !3700)
!3758 = !DILocation(line: 29, column: 10, scope: !3752, inlinedAt: !3757)
!3759 = !DILocation(line: 127, column: 30, scope: !3706)
!3760 = !DILocation(line: 127, column: 41, scope: !3706)
!3761 = !DILocation(line: 127, column: 68, scope: !3706)
!3762 = !{!3733, !673, i64 8}
!3763 = !DILocation(line: 127, column: 61, scope: !3706)
!3764 = !DILocation(line: 127, column: 20, scope: !3701)
!3765 = !DILocation(line: 130, column: 34, scope: !3705)
!3766 = !DILocation(line: 0, scope: !3705)
!3767 = !DILocation(line: 131, column: 19, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3705, file: !252, line: 131, column: 19)
!3769 = !DILocation(line: 131, column: 19, scope: !3705)
!3770 = !DILocation(line: 133, column: 13, scope: !3705)
!3771 = !DILocation(line: 138, column: 15, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3694, file: !252, line: 138, column: 11)
!3773 = !DILocation(line: 138, column: 11, scope: !3694)
!3774 = !DILocation(line: 139, column: 16, scope: !3772)
!3775 = !DILocation(line: 139, column: 9, scope: !3772)
!3776 = !DILocation(line: 141, column: 20, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3694, file: !252, line: 141, column: 11)
!3778 = !DILocation(line: 141, column: 11, scope: !3694)
!3779 = !DILocation(line: 142, column: 18, scope: !3777)
!3780 = !DILocation(line: 142, column: 9, scope: !3777)
!3781 = !DILocation(line: 143, column: 25, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3777, file: !252, line: 143, column: 16)
!3783 = !DILocation(line: 143, column: 16, scope: !3777)
!3784 = !DILocation(line: 147, column: 11, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !252, line: 146, column: 9)
!3786 = distinct !DILexicalBlock(scope: !3782, file: !252, line: 145, column: 16)
!3787 = !DILocation(line: 147, column: 17, scope: !3785)
!3788 = !DILocation(line: 148, column: 11, scope: !3785)
!3789 = !DILocation(line: 0, scope: !3777)
!3790 = !DILocation(line: 152, column: 29, scope: !3694)
!3791 = !DILocation(line: 152, column: 22, scope: !3694)
!3792 = !DILocation(line: 153, column: 5, scope: !3694)
!3793 = distinct !{!3793, !3716, !3794, !723}
!3794 = !DILocation(line: 154, column: 13, scope: !3667)
!3795 = !DILocation(line: 156, column: 14, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3667, file: !252, line: 156, column: 7)
!3797 = !{!3733, !673, i64 24}
!3798 = !DILocation(line: 156, column: 7, scope: !3796)
!3799 = !DILocation(line: 156, column: 7, scope: !3667)
!3800 = !DILocation(line: 157, column: 5, scope: !3796)
!3801 = !DILocation(line: 158, column: 3, scope: !3667)
!3802 = !DILocation(line: 158, column: 9, scope: !3667)
!3803 = !DILocation(line: 159, column: 3, scope: !3667)
!3804 = !DILocation(line: 160, column: 1, scope: !3667)
!3805 = distinct !DISubprogram(name: "close_stream", scope: !255, file: !255, line: 56, type: !3806, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !3842)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!42, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2990, line: 7, baseType: !3810)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !753, line: 49, size: 1728, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3810, file: !753, line: 51, baseType: !42, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3810, file: !753, line: 54, baseType: !22, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3810, file: !753, line: 55, baseType: !22, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3810, file: !753, line: 56, baseType: !22, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3810, file: !753, line: 57, baseType: !22, size: 64, offset: 256)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3810, file: !753, line: 58, baseType: !22, size: 64, offset: 320)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3810, file: !753, line: 59, baseType: !22, size: 64, offset: 384)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3810, file: !753, line: 60, baseType: !22, size: 64, offset: 448)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3810, file: !753, line: 61, baseType: !22, size: 64, offset: 512)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3810, file: !753, line: 64, baseType: !22, size: 64, offset: 576)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3810, file: !753, line: 65, baseType: !22, size: 64, offset: 640)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3810, file: !753, line: 66, baseType: !22, size: 64, offset: 704)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3810, file: !753, line: 68, baseType: !768, size: 64, offset: 768)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3810, file: !753, line: 70, baseType: !3826, size: 64, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3810, file: !753, line: 72, baseType: !42, size: 32, offset: 896)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3810, file: !753, line: 73, baseType: !42, size: 32, offset: 928)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3810, file: !753, line: 74, baseType: !774, size: 64, offset: 960)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3810, file: !753, line: 77, baseType: !126, size: 16, offset: 1024)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3810, file: !753, line: 78, baseType: !778, size: 8, offset: 1040)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3810, file: !753, line: 79, baseType: !780, size: 8, offset: 1048)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3810, file: !753, line: 81, baseType: !784, size: 64, offset: 1088)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3810, file: !753, line: 89, baseType: !787, size: 64, offset: 1152)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3810, file: !753, line: 91, baseType: !789, size: 64, offset: 1216)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3810, file: !753, line: 92, baseType: !792, size: 64, offset: 1280)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3810, file: !753, line: 93, baseType: !3826, size: 64, offset: 1344)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3810, file: !753, line: 94, baseType: !24, size: 64, offset: 1408)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3810, file: !753, line: 95, baseType: !39, size: 64, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3810, file: !753, line: 96, baseType: !42, size: 32, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3810, file: !753, line: 98, baseType: !799, size: 160, offset: 1568)
!3842 = !{!3843, !3844, !3846, !3847}
!3843 = !DILocalVariable(name: "stream", arg: 1, scope: !3805, file: !255, line: 56, type: !3808)
!3844 = !DILocalVariable(name: "some_pending", scope: !3805, file: !255, line: 58, type: !3845)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!3846 = !DILocalVariable(name: "prev_fail", scope: !3805, file: !255, line: 59, type: !3845)
!3847 = !DILocalVariable(name: "fclose_fail", scope: !3805, file: !255, line: 60, type: !3845)
!3848 = !DILocation(line: 0, scope: !3805)
!3849 = !DILocation(line: 58, column: 30, scope: !3805)
!3850 = !DILocalVariable(name: "__stream", arg: 1, scope: !3851, file: !3852, line: 135, type: !3808)
!3851 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3852, file: !3852, line: 135, type: !3806, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !3853)
!3852 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3853 = !{!3850}
!3854 = !DILocation(line: 0, scope: !3851, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 59, column: 27, scope: !3805)
!3856 = !DILocation(line: 137, column: 10, scope: !3851, inlinedAt: !3855)
!3857 = !{!3858, !831, i64 0}
!3858 = !{!"_IO_FILE", !831, i64 0, !673, i64 8, !673, i64 16, !673, i64 24, !673, i64 32, !673, i64 40, !673, i64 48, !673, i64 56, !673, i64 64, !673, i64 72, !673, i64 80, !673, i64 88, !673, i64 96, !673, i64 104, !831, i64 112, !831, i64 116, !852, i64 120, !1918, i64 128, !674, i64 130, !674, i64 131, !673, i64 136, !852, i64 144, !673, i64 152, !673, i64 160, !673, i64 168, !673, i64 176, !852, i64 184, !831, i64 192, !674, i64 196}
!3859 = !DILocation(line: 59, column: 43, scope: !3805)
!3860 = !DILocation(line: 60, column: 29, scope: !3805)
!3861 = !DILocation(line: 60, column: 45, scope: !3805)
!3862 = !DILocation(line: 70, column: 17, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3805, file: !255, line: 70, column: 7)
!3864 = !DILocation(line: 58, column: 50, scope: !3805)
!3865 = !DILocation(line: 70, column: 33, scope: !3863)
!3866 = !DILocation(line: 70, column: 53, scope: !3863)
!3867 = !DILocation(line: 70, column: 59, scope: !3863)
!3868 = !DILocation(line: 70, column: 7, scope: !3805)
!3869 = !DILocation(line: 72, column: 11, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3863, file: !255, line: 71, column: 5)
!3871 = !DILocation(line: 73, column: 9, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3870, file: !255, line: 72, column: 11)
!3873 = !DILocation(line: 73, column: 15, scope: !3872)
!3874 = !DILocation(line: 78, column: 1, scope: !3805)
!3875 = distinct !DISubprogram(name: "hard_locale", scope: !257, file: !257, line: 27, type: !860, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !256, retainedNodes: !3876)
!3876 = !{!3877, !3878}
!3877 = !DILocalVariable(name: "category", arg: 1, scope: !3875, file: !257, line: 27, type: !42)
!3878 = !DILocalVariable(name: "locale", scope: !3875, file: !257, line: 29, type: !3879)
!3879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !3880)
!3880 = !{!3881}
!3881 = !DISubrange(count: 257)
!3882 = !DILocation(line: 0, scope: !3875)
!3883 = !DILocation(line: 29, column: 3, scope: !3875)
!3884 = !DILocation(line: 29, column: 8, scope: !3875)
!3885 = !DILocation(line: 31, column: 7, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3875, file: !257, line: 31, column: 7)
!3887 = !DILocation(line: 31, column: 7, scope: !3875)
!3888 = !DILocation(line: 34, column: 12, scope: !3875)
!3889 = !DILocation(line: 34, column: 38, scope: !3875)
!3890 = !DILocation(line: 34, column: 41, scope: !3875)
!3891 = !DILocation(line: 34, column: 66, scope: !3875)
!3892 = !DILocation(line: 35, column: 1, scope: !3875)
!3893 = distinct !DISubprogram(name: "locale_charset", scope: !259, file: !259, line: 831, type: !3894, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!52}
!3896 = !{!3897}
!3897 = !DILocalVariable(name: "codeset", scope: !3893, file: !259, line: 833, type: !52)
!3898 = !DILocation(line: 847, column: 13, scope: !3893)
!3899 = !DILocation(line: 0, scope: !3893)
!3900 = !DILocation(line: 911, column: 15, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3893, file: !259, line: 911, column: 7)
!3902 = !DILocation(line: 911, column: 7, scope: !3893)
!3903 = !DILocation(line: 1070, column: 13, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !259, line: 1070, column: 13)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !259, line: 1060, column: 7)
!3906 = distinct !DILexicalBlock(scope: !3893, file: !259, line: 1019, column: 3)
!3907 = !DILocation(line: 1070, column: 24, scope: !3904)
!3908 = !DILocation(line: 1070, column: 13, scope: !3905)
!3909 = !DILocation(line: 1158, column: 3, scope: !3893)
!3910 = !DISubprogram(name: "nl_langinfo", scope: !262, file: !262, line: 661, type: !3911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!22, !42}
!3913 = distinct !DISubprogram(name: "setlocale_null_r", scope: !648, file: !648, line: 269, type: !3914, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!42, !42, !22, !39}
!3916 = !{!3917, !3918, !3919}
!3917 = !DILocalVariable(name: "category", arg: 1, scope: !3913, file: !648, line: 269, type: !42)
!3918 = !DILocalVariable(name: "buf", arg: 2, scope: !3913, file: !648, line: 269, type: !22)
!3919 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3913, file: !648, line: 269, type: !39)
!3920 = !DILocation(line: 0, scope: !3913)
!3921 = !DILocalVariable(name: "category", arg: 1, scope: !3922, file: !648, line: 91, type: !42)
!3922 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !648, file: !648, line: 91, type: !3914, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3923)
!3923 = !{!3921, !3924, !3925, !3926, !3927}
!3924 = !DILocalVariable(name: "buf", arg: 2, scope: !3922, file: !648, line: 91, type: !22)
!3925 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3922, file: !648, line: 91, type: !39)
!3926 = !DILocalVariable(name: "result", scope: !3922, file: !648, line: 140, type: !52)
!3927 = !DILocalVariable(name: "length", scope: !3928, file: !648, line: 154, type: !39)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !648, line: 153, column: 5)
!3929 = distinct !DILexicalBlock(scope: !3922, file: !648, line: 142, column: 7)
!3930 = !DILocation(line: 0, scope: !3922, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 274, column: 10, scope: !3913)
!3932 = !DILocalVariable(name: "category", arg: 1, scope: !3933, file: !648, line: 60, type: !42)
!3933 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !648, file: !648, line: 60, type: !3934, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!52, !42}
!3936 = !{!3932, !3937}
!3937 = !DILocalVariable(name: "result", scope: !3933, file: !648, line: 62, type: !52)
!3938 = !DILocation(line: 0, scope: !3933, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 140, column: 24, scope: !3922, inlinedAt: !3931)
!3940 = !DILocation(line: 62, column: 24, scope: !3933, inlinedAt: !3939)
!3941 = !DILocation(line: 142, column: 14, scope: !3929, inlinedAt: !3931)
!3942 = !DILocation(line: 142, column: 7, scope: !3922, inlinedAt: !3931)
!3943 = !DILocation(line: 145, column: 19, scope: !3944, inlinedAt: !3931)
!3944 = distinct !DILexicalBlock(scope: !3945, file: !648, line: 145, column: 11)
!3945 = distinct !DILexicalBlock(scope: !3929, file: !648, line: 143, column: 5)
!3946 = !DILocation(line: 145, column: 11, scope: !3945, inlinedAt: !3931)
!3947 = !DILocation(line: 149, column: 16, scope: !3944, inlinedAt: !3931)
!3948 = !DILocation(line: 149, column: 9, scope: !3944, inlinedAt: !3931)
!3949 = !DILocation(line: 154, column: 23, scope: !3928, inlinedAt: !3931)
!3950 = !DILocation(line: 0, scope: !3928, inlinedAt: !3931)
!3951 = !DILocation(line: 155, column: 18, scope: !3952, inlinedAt: !3931)
!3952 = distinct !DILexicalBlock(scope: !3928, file: !648, line: 155, column: 11)
!3953 = !DILocation(line: 155, column: 11, scope: !3928, inlinedAt: !3931)
!3954 = !DILocation(line: 157, column: 39, scope: !3955, inlinedAt: !3931)
!3955 = distinct !DILexicalBlock(scope: !3952, file: !648, line: 156, column: 9)
!3956 = !DILocalVariable(name: "__dest", arg: 1, scope: !3957, file: !1336, line: 26, type: !1339)
!3957 = distinct !DISubprogram(name: "memcpy", scope: !1336, file: !1336, line: 26, type: !1337, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3958)
!3958 = !{!3956, !3959, !3960}
!3959 = !DILocalVariable(name: "__src", arg: 2, scope: !3957, file: !1336, line: 26, type: !1340)
!3960 = !DILocalVariable(name: "__len", arg: 3, scope: !3957, file: !1336, line: 26, type: !39)
!3961 = !DILocation(line: 0, scope: !3957, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 157, column: 11, scope: !3955, inlinedAt: !3931)
!3963 = !DILocation(line: 29, column: 10, scope: !3957, inlinedAt: !3962)
!3964 = !DILocation(line: 158, column: 11, scope: !3955, inlinedAt: !3931)
!3965 = !DILocation(line: 162, column: 23, scope: !3966, inlinedAt: !3931)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !648, line: 162, column: 15)
!3967 = distinct !DILexicalBlock(scope: !3952, file: !648, line: 161, column: 9)
!3968 = !DILocation(line: 162, column: 15, scope: !3967, inlinedAt: !3931)
!3969 = !DILocation(line: 167, column: 44, scope: !3970, inlinedAt: !3931)
!3970 = distinct !DILexicalBlock(scope: !3966, file: !648, line: 163, column: 13)
!3971 = !DILocation(line: 0, scope: !3957, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 167, column: 15, scope: !3970, inlinedAt: !3931)
!3973 = !DILocation(line: 29, column: 10, scope: !3957, inlinedAt: !3972)
!3974 = !DILocation(line: 168, column: 15, scope: !3970, inlinedAt: !3931)
!3975 = !DILocation(line: 168, column: 32, scope: !3970, inlinedAt: !3931)
!3976 = !DILocation(line: 169, column: 13, scope: !3970, inlinedAt: !3931)
!3977 = !DILocation(line: 0, scope: !3929, inlinedAt: !3931)
!3978 = !DILocation(line: 274, column: 3, scope: !3913)
!3979 = distinct !DISubprogram(name: "setlocale_null", scope: !648, file: !648, line: 301, type: !3934, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3980)
!3980 = !{!3981}
!3981 = !DILocalVariable(name: "category", arg: 1, scope: !3979, file: !648, line: 301, type: !42)
!3982 = !DILocation(line: 0, scope: !3979)
!3983 = !DILocation(line: 0, scope: !3933, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 304, column: 10, scope: !3979)
!3985 = !DILocation(line: 62, column: 24, scope: !3933, inlinedAt: !3984)
!3986 = !DILocation(line: 304, column: 3, scope: !3979)
!3987 = distinct !DISubprogram(name: "rpl_fclose", scope: !650, file: !650, line: 58, type: !3988, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !4024)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!42, !3990}
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2990, line: 7, baseType: !3992)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !753, line: 49, size: 1728, elements: !3993)
!3993 = !{!3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3992, file: !753, line: 51, baseType: !42, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3992, file: !753, line: 54, baseType: !22, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3992, file: !753, line: 55, baseType: !22, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3992, file: !753, line: 56, baseType: !22, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3992, file: !753, line: 57, baseType: !22, size: 64, offset: 256)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3992, file: !753, line: 58, baseType: !22, size: 64, offset: 320)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3992, file: !753, line: 59, baseType: !22, size: 64, offset: 384)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3992, file: !753, line: 60, baseType: !22, size: 64, offset: 448)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3992, file: !753, line: 61, baseType: !22, size: 64, offset: 512)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3992, file: !753, line: 64, baseType: !22, size: 64, offset: 576)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3992, file: !753, line: 65, baseType: !22, size: 64, offset: 640)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3992, file: !753, line: 66, baseType: !22, size: 64, offset: 704)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3992, file: !753, line: 68, baseType: !768, size: 64, offset: 768)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3992, file: !753, line: 70, baseType: !4008, size: 64, offset: 832)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3992, file: !753, line: 72, baseType: !42, size: 32, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3992, file: !753, line: 73, baseType: !42, size: 32, offset: 928)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3992, file: !753, line: 74, baseType: !774, size: 64, offset: 960)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3992, file: !753, line: 77, baseType: !126, size: 16, offset: 1024)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3992, file: !753, line: 78, baseType: !778, size: 8, offset: 1040)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3992, file: !753, line: 79, baseType: !780, size: 8, offset: 1048)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3992, file: !753, line: 81, baseType: !784, size: 64, offset: 1088)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3992, file: !753, line: 89, baseType: !787, size: 64, offset: 1152)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3992, file: !753, line: 91, baseType: !789, size: 64, offset: 1216)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3992, file: !753, line: 92, baseType: !792, size: 64, offset: 1280)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3992, file: !753, line: 93, baseType: !4008, size: 64, offset: 1344)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3992, file: !753, line: 94, baseType: !24, size: 64, offset: 1408)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3992, file: !753, line: 95, baseType: !39, size: 64, offset: 1472)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3992, file: !753, line: 96, baseType: !42, size: 32, offset: 1536)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3992, file: !753, line: 98, baseType: !799, size: 160, offset: 1568)
!4024 = !{!4025, !4026, !4027, !4028}
!4025 = !DILocalVariable(name: "fp", arg: 1, scope: !3987, file: !650, line: 58, type: !3990)
!4026 = !DILocalVariable(name: "saved_errno", scope: !3987, file: !650, line: 60, type: !42)
!4027 = !DILocalVariable(name: "fd", scope: !3987, file: !650, line: 61, type: !42)
!4028 = !DILocalVariable(name: "result", scope: !3987, file: !650, line: 62, type: !42)
!4029 = !DILocation(line: 0, scope: !3987)
!4030 = !DILocation(line: 65, column: 8, scope: !3987)
!4031 = !DILocation(line: 66, column: 10, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3987, file: !650, line: 66, column: 7)
!4033 = !DILocation(line: 66, column: 7, scope: !3987)
!4034 = !DILocation(line: 67, column: 12, scope: !4032)
!4035 = !DILocation(line: 67, column: 5, scope: !4032)
!4036 = !DILocation(line: 72, column: 9, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3987, file: !650, line: 72, column: 7)
!4038 = !DILocation(line: 72, column: 23, scope: !4037)
!4039 = !DILocation(line: 72, column: 33, scope: !4037)
!4040 = !DILocation(line: 72, column: 26, scope: !4037)
!4041 = !DILocation(line: 72, column: 59, scope: !4037)
!4042 = !DILocation(line: 73, column: 7, scope: !4037)
!4043 = !DILocation(line: 73, column: 10, scope: !4037)
!4044 = !DILocation(line: 72, column: 7, scope: !3987)
!4045 = !DILocation(line: 100, column: 12, scope: !3987)
!4046 = !DILocation(line: 105, column: 7, scope: !3987)
!4047 = !DILocation(line: 74, column: 19, scope: !4037)
!4048 = !DILocation(line: 105, column: 19, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !3987, file: !650, line: 105, column: 7)
!4050 = !DILocation(line: 107, column: 13, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4049, file: !650, line: 106, column: 5)
!4052 = !DILocation(line: 109, column: 5, scope: !4051)
!4053 = !DILocation(line: 112, column: 1, scope: !3987)
!4054 = !DISubprogram(name: "fileno", scope: !748, file: !748, line: 785, type: !4055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!42, !4008}
!4057 = !DISubprogram(name: "fclose", scope: !748, file: !748, line: 213, type: !4055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!4058 = !DISubprogram(name: "lseek", scope: !1211, file: !1211, line: 334, type: !4059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!775, !42, !775, !42}
!4061 = distinct !DISubprogram(name: "rpl_fflush", scope: !652, file: !652, line: 129, type: !4062, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !4098)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!42, !4064}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2990, line: 7, baseType: !4066)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !753, line: 49, size: 1728, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4066, file: !753, line: 51, baseType: !42, size: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4066, file: !753, line: 54, baseType: !22, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4066, file: !753, line: 55, baseType: !22, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4066, file: !753, line: 56, baseType: !22, size: 64, offset: 192)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4066, file: !753, line: 57, baseType: !22, size: 64, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4066, file: !753, line: 58, baseType: !22, size: 64, offset: 320)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4066, file: !753, line: 59, baseType: !22, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4066, file: !753, line: 60, baseType: !22, size: 64, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4066, file: !753, line: 61, baseType: !22, size: 64, offset: 512)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4066, file: !753, line: 64, baseType: !22, size: 64, offset: 576)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4066, file: !753, line: 65, baseType: !22, size: 64, offset: 640)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4066, file: !753, line: 66, baseType: !22, size: 64, offset: 704)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4066, file: !753, line: 68, baseType: !768, size: 64, offset: 768)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4066, file: !753, line: 70, baseType: !4082, size: 64, offset: 832)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4066, file: !753, line: 72, baseType: !42, size: 32, offset: 896)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4066, file: !753, line: 73, baseType: !42, size: 32, offset: 928)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4066, file: !753, line: 74, baseType: !774, size: 64, offset: 960)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4066, file: !753, line: 77, baseType: !126, size: 16, offset: 1024)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4066, file: !753, line: 78, baseType: !778, size: 8, offset: 1040)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4066, file: !753, line: 79, baseType: !780, size: 8, offset: 1048)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4066, file: !753, line: 81, baseType: !784, size: 64, offset: 1088)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4066, file: !753, line: 89, baseType: !787, size: 64, offset: 1152)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4066, file: !753, line: 91, baseType: !789, size: 64, offset: 1216)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4066, file: !753, line: 92, baseType: !792, size: 64, offset: 1280)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4066, file: !753, line: 93, baseType: !4082, size: 64, offset: 1344)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4066, file: !753, line: 94, baseType: !24, size: 64, offset: 1408)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4066, file: !753, line: 95, baseType: !39, size: 64, offset: 1472)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4066, file: !753, line: 96, baseType: !42, size: 32, offset: 1536)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4066, file: !753, line: 98, baseType: !799, size: 160, offset: 1568)
!4098 = !{!4099}
!4099 = !DILocalVariable(name: "stream", arg: 1, scope: !4061, file: !652, line: 129, type: !4064)
!4100 = !DILocation(line: 0, scope: !4061)
!4101 = !DILocation(line: 150, column: 14, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4061, file: !652, line: 150, column: 7)
!4103 = !DILocation(line: 150, column: 22, scope: !4102)
!4104 = !DILocation(line: 150, column: 27, scope: !4102)
!4105 = !DILocation(line: 150, column: 7, scope: !4061)
!4106 = !DILocation(line: 151, column: 12, scope: !4102)
!4107 = !DILocation(line: 151, column: 5, scope: !4102)
!4108 = !DILocalVariable(name: "fp", arg: 1, scope: !4109, file: !652, line: 41, type: !4064)
!4109 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !652, file: !652, line: 41, type: !4110, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !4112)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !4064}
!4112 = !{!4108}
!4113 = !DILocation(line: 0, scope: !4109, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 156, column: 3, scope: !4061)
!4115 = !DILocation(line: 43, column: 11, scope: !4116, inlinedAt: !4114)
!4116 = distinct !DILexicalBlock(scope: !4109, file: !652, line: 43, column: 7)
!4117 = !DILocation(line: 43, column: 18, scope: !4116, inlinedAt: !4114)
!4118 = !DILocation(line: 43, column: 7, scope: !4109, inlinedAt: !4114)
!4119 = !DILocation(line: 45, column: 5, scope: !4116, inlinedAt: !4114)
!4120 = !DILocation(line: 158, column: 10, scope: !4061)
!4121 = !DILocation(line: 158, column: 3, scope: !4061)
!4122 = !DILocation(line: 235, column: 1, scope: !4061)
!4123 = !DISubprogram(name: "fflush", scope: !748, file: !748, line: 218, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!42, !4082}
!4126 = distinct !DISubprogram(name: "rpl_fseeko", scope: !654, file: !654, line: 28, type: !4127, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !653, retainedNodes: !4164)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!42, !4129, !4163, !42}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2990, line: 7, baseType: !4131)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !753, line: 49, size: 1728, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4131, file: !753, line: 51, baseType: !42, size: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4131, file: !753, line: 54, baseType: !22, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4131, file: !753, line: 55, baseType: !22, size: 64, offset: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4131, file: !753, line: 56, baseType: !22, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4131, file: !753, line: 57, baseType: !22, size: 64, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4131, file: !753, line: 58, baseType: !22, size: 64, offset: 320)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4131, file: !753, line: 59, baseType: !22, size: 64, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4131, file: !753, line: 60, baseType: !22, size: 64, offset: 448)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4131, file: !753, line: 61, baseType: !22, size: 64, offset: 512)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4131, file: !753, line: 64, baseType: !22, size: 64, offset: 576)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4131, file: !753, line: 65, baseType: !22, size: 64, offset: 640)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4131, file: !753, line: 66, baseType: !22, size: 64, offset: 704)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4131, file: !753, line: 68, baseType: !768, size: 64, offset: 768)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4131, file: !753, line: 70, baseType: !4147, size: 64, offset: 832)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4131, file: !753, line: 72, baseType: !42, size: 32, offset: 896)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4131, file: !753, line: 73, baseType: !42, size: 32, offset: 928)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4131, file: !753, line: 74, baseType: !774, size: 64, offset: 960)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4131, file: !753, line: 77, baseType: !126, size: 16, offset: 1024)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4131, file: !753, line: 78, baseType: !778, size: 8, offset: 1040)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4131, file: !753, line: 79, baseType: !780, size: 8, offset: 1048)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4131, file: !753, line: 81, baseType: !784, size: 64, offset: 1088)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4131, file: !753, line: 89, baseType: !787, size: 64, offset: 1152)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4131, file: !753, line: 91, baseType: !789, size: 64, offset: 1216)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4131, file: !753, line: 92, baseType: !792, size: 64, offset: 1280)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4131, file: !753, line: 93, baseType: !4147, size: 64, offset: 1344)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4131, file: !753, line: 94, baseType: !24, size: 64, offset: 1408)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4131, file: !753, line: 95, baseType: !39, size: 64, offset: 1472)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4131, file: !753, line: 96, baseType: !42, size: 32, offset: 1536)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4131, file: !753, line: 98, baseType: !799, size: 160, offset: 1568)
!4163 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !748, line: 63, baseType: !774)
!4164 = !{!4165, !4166, !4167, !4168}
!4165 = !DILocalVariable(name: "fp", arg: 1, scope: !4126, file: !654, line: 28, type: !4129)
!4166 = !DILocalVariable(name: "offset", arg: 2, scope: !4126, file: !654, line: 28, type: !4163)
!4167 = !DILocalVariable(name: "whence", arg: 3, scope: !4126, file: !654, line: 28, type: !42)
!4168 = !DILocalVariable(name: "pos", scope: !4169, file: !654, line: 117, type: !4163)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !654, line: 113, column: 5)
!4170 = distinct !DILexicalBlock(scope: !4126, file: !654, line: 52, column: 7)
!4171 = !DILocation(line: 0, scope: !4126)
!4172 = !DILocation(line: 52, column: 11, scope: !4170)
!4173 = !{!3858, !673, i64 16}
!4174 = !DILocation(line: 52, column: 31, scope: !4170)
!4175 = !{!3858, !673, i64 8}
!4176 = !DILocation(line: 52, column: 24, scope: !4170)
!4177 = !DILocation(line: 53, column: 7, scope: !4170)
!4178 = !DILocation(line: 53, column: 14, scope: !4170)
!4179 = !{!3858, !673, i64 40}
!4180 = !DILocation(line: 53, column: 35, scope: !4170)
!4181 = !{!3858, !673, i64 32}
!4182 = !DILocation(line: 53, column: 28, scope: !4170)
!4183 = !DILocation(line: 54, column: 7, scope: !4170)
!4184 = !DILocation(line: 54, column: 14, scope: !4170)
!4185 = !{!3858, !673, i64 72}
!4186 = !DILocation(line: 54, column: 28, scope: !4170)
!4187 = !DILocation(line: 52, column: 7, scope: !4126)
!4188 = !DILocation(line: 117, column: 26, scope: !4169)
!4189 = !DILocation(line: 117, column: 19, scope: !4169)
!4190 = !DILocation(line: 0, scope: !4169)
!4191 = !DILocation(line: 118, column: 15, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4169, file: !654, line: 118, column: 11)
!4193 = !DILocation(line: 118, column: 11, scope: !4169)
!4194 = !DILocation(line: 129, column: 11, scope: !4169)
!4195 = !DILocation(line: 129, column: 18, scope: !4169)
!4196 = !DILocation(line: 130, column: 11, scope: !4169)
!4197 = !DILocation(line: 130, column: 19, scope: !4169)
!4198 = !{!3858, !852, i64 144}
!4199 = !DILocation(line: 161, column: 7, scope: !4169)
!4200 = !DILocation(line: 163, column: 10, scope: !4126)
!4201 = !DILocation(line: 163, column: 3, scope: !4126)
!4202 = !DILocation(line: 164, column: 1, scope: !4126)
!4203 = !DISubprogram(name: "fseeko", scope: !748, file: !748, line: 712, type: !4204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!42, !4147, !775, !42}
