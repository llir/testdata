; ModuleID = 'coreutils-8.30/src/stdbuf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@.str.8 = private unnamed_addr constant [253 x i8] c"\0AOtherwise MODE is a number which may be followed by one of the following:\0AKB 1000, K 1024, MB 1000*1000, M 1024*1024, and so on for G, T, P, E, Z, Y.\0AIn this case the corresponding stream will be fully buffered with the buffer\0Asize set to MODE bytes.\0A\00", align 1
@.str.9 = private unnamed_addr constant [267 x i8] c"\0ANOTE: If COMMAND adjusts the buffering of its standard streams ('tee' does\0Afor example) then that will override corresponding changes by 'stdbuf'.\0AAlso some filters (like 'dd' and 'cat' etc.) don't use streams for I/O,\0Aand are thus unaffected by 'stdbuf' settings.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"stdbuf\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.38 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
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
@.str.15 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !66
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !71
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.63 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.64 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !75
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !82
@.str.81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 16, !dbg !89
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !131
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !138
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !150
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.96 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.97 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.98 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.99 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.100 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !157
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !164
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !152
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !166
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.107 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.108 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.121 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.125 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !172
@.str.1.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.145 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.163 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@stdlib_allocator = dso_local local_unnamed_addr constant %struct.allocator { i8* (i64)* @malloc, i8* (i8*, i64)* @realloc, void (i8*)* @free, void (i64)* null }, align 8, !dbg !181

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !666 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !671, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i32 %0, metadata !670, metadata !DIExpression()), !dbg !693
  %3 = icmp eq i32 %0, 0, !dbg !694
  br i1 %3, label %9, label %4, !dbg !695

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !696, !tbaa !698
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !696
  %7 = load i8*, i8** @program_name, align 8, !dbg !696, !tbaa !698
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !696
  br label %75, !dbg !696

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !702
  %11 = load i8*, i8** @program_name, align 8, !dbg !702, !tbaa !698
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !702
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !703
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !698
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !703
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !704
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !698
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #12, !dbg !704
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !709
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !698
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !709
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !710
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !698
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !710
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !711
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !698
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !711
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !712
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !698
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !712
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !713
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !698
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !713
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !714
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !698
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !714
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !715
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !698
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !715
  %40 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !716
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %40) #12, !dbg !716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %40, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !689
  %41 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !717
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !678, metadata !DIExpression()) #12, !dbg !718
  br label %42, !dbg !719

; <label>:42:                                     ; preds = %47, %9
  %43 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %44 = phi %struct.infomap* [ %48, %47 ], [ %41, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !678, metadata !DIExpression()) #12, !dbg !718
  %45 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %43) #14, !dbg !719
  %46 = icmp eq i32 %45, 0, !dbg !719
  br i1 %46, label %52, label %47, !dbg !720

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 1, !dbg !721
  call void @llvm.dbg.value(metadata %struct.infomap* %48, metadata !678, metadata !DIExpression()) #12, !dbg !718
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 0, i32 0, !dbg !722
  %50 = load i8*, i8** %49, align 8, !dbg !722, !tbaa !723
  %51 = icmp eq i8* %50, null, !dbg !725
  br i1 %51, label %52, label %42, !dbg !726, !llvm.loop !727

; <label>:52:                                     ; preds = %47, %42
  %53 = phi %struct.infomap* [ %48, %47 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !678, metadata !DIExpression()) #12, !dbg !718
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !678, metadata !DIExpression()) #12, !dbg !718
  %54 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 0, i32 1, !dbg !730
  %55 = load i8*, i8** %54, align 8, !dbg !730, !tbaa !732
  %56 = icmp eq i8* %55, null, !dbg !733
  %57 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %55, !dbg !734
  call void @llvm.dbg.value(metadata i8* %57, metadata !677, metadata !DIExpression()) #12, !dbg !735
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !736
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0)) #12, !dbg !736
  %60 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !737
  call void @llvm.dbg.value(metadata i8* %60, metadata !685, metadata !DIExpression()) #12, !dbg !738
  %61 = icmp eq i8* %60, null, !dbg !739
  br i1 %61, label %68, label %62, !dbg !741

; <label>:62:                                     ; preds = %52
  %63 = tail call i32 @strncmp(i8* nonnull %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #14, !dbg !742
  %64 = icmp eq i32 %63, 0, !dbg !742
  br i1 %64, label %68, label %65, !dbg !743

; <label>:65:                                     ; preds = %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.38, i64 0, i64 0), i32 5) #12, !dbg !744
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !744
  br label %68, !dbg !746

; <label>:68:                                     ; preds = %52, %62, %65
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 5) #12, !dbg !747
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !747
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #12, !dbg !748
  %72 = icmp eq i8* %57, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), !dbg !748
  %73 = select i1 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !748
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* %57, i8* %73) #12, !dbg !748
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %40) #12, !dbg !749
  br label %75

; <label>:75:                                     ; preds = %68, %4
  tail call void @exit(i32 %0) #15, !dbg !750
  unreachable, !dbg !750
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !751 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8*], align 16
  call void @llvm.dbg.declare(metadata [3 x i8*]* %6, metadata !762, metadata !DIExpression()), !dbg !811
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !756, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i8** %1, metadata !757, metadata !DIExpression()), !dbg !814
  %9 = load i8*, i8** %1, align 8, !dbg !815, !tbaa !698
  tail call void @set_program_name(i8* %9) #12, !dbg !816
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !817
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !818
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !819
  call void @llvm.dbg.value(metadata i32 125, metadata !820, metadata !DIExpression()), !dbg !823
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !825, !tbaa !827
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !829
  %14 = bitcast i64* %4 to i8*
  br label %15, !dbg !830

; <label>:15:                                     ; preds = %51, %2
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !831
  call void @llvm.dbg.value(metadata i32 %16, metadata !758, metadata !DIExpression()), !dbg !832
  switch i32 %16, label %63 [
    i32 -1, label %64
    i32 -131, label %60
    i32 -130, label %59
    i32 101, label %19
    i32 105, label %17
    i32 111, label %18
  ], !dbg !830

; <label>:17:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !833, metadata !DIExpression()), !dbg !839
  br label %19, !dbg !842

; <label>:18:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i32 1, metadata !833, metadata !DIExpression()), !dbg !839
  br label %19, !dbg !844

; <label>:19:                                     ; preds = %15, %18, %17
  %20 = phi i64 [ 0, %17 ], [ 1, %18 ], [ 2, %15 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !833, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i32 -1, metadata !759, metadata !DIExpression()), !dbg !845
  %21 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 1, !dbg !846
  store i32 %16, i32* %21, align 8, !dbg !847, !tbaa !848
  %22 = load i8*, i8** @optarg, align 8, !dbg !851, !tbaa !698
  br label %23, !dbg !852

; <label>:23:                                     ; preds = %27, %19
  %24 = phi i8* [ %28, %27 ], [ %22, %19 ], !dbg !851
  %25 = load i8, i8* %24, align 1, !dbg !853, !tbaa !854
  %26 = sext i8 %25 to i32, !dbg !853
  call void @llvm.dbg.value(metadata i32 %26, metadata !855, metadata !DIExpression()), !dbg !861
  switch i32 %26, label %29 [
    i32 32, label %27
    i32 9, label %27
    i32 10, label %27
    i32 11, label %27
    i32 12, label %27
    i32 13, label %27
  ], !dbg !863

; <label>:27:                                     ; preds = %23, %23, %23, %23, %23, %23
  %28 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !864
  store i8* %28, i8** @optarg, align 8, !dbg !864, !tbaa !698
  br label %23, !dbg !852, !llvm.loop !865

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 2, !dbg !866
  store i8* %24, i8** %30, align 8, !dbg !867, !tbaa !868
  %31 = icmp eq i32 %16, 105, !dbg !869
  br i1 %31, label %32, label %37, !dbg !871

; <label>:32:                                     ; preds = %29
  %33 = load i8, i8* %24, align 1, !dbg !872, !tbaa !854
  %34 = icmp eq i8 %33, 76, !dbg !873
  br i1 %34, label %35, label %37, !dbg !874

; <label>:35:                                     ; preds = %32
  %36 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !875
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36) #12, !dbg !877
  call void @usage(i32 125) #16, !dbg !878
  unreachable, !dbg !878

; <label>:37:                                     ; preds = %32, %29
  %38 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #14, !dbg !879
  %39 = icmp eq i32 %38, 0, !dbg !879
  br i1 %39, label %51, label %40, !dbg !881

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.value(metadata i8* %24, metadata !882, metadata !DIExpression()) #12, !dbg !890
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #12, !dbg !892
  call void @llvm.dbg.value(metadata i64* %4, metadata !888, metadata !DIExpression(DW_OP_deref)) #12, !dbg !893
  %41 = call i32 @xstrtoumax(i8* %24, i8** null, i32 10, i64* nonnull %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0)) #12, !dbg !894
  call void @llvm.dbg.value(metadata i32 %41, metadata !889, metadata !DIExpression()) #12, !dbg !895
  call void @llvm.dbg.value(metadata i64* %4, metadata !888, metadata !DIExpression(DW_OP_deref)) #12, !dbg !893
  call void @llvm.dbg.value(metadata i32 %41, metadata !889, metadata !DIExpression()) #12, !dbg !895
  switch i32 %41, label %44 [
    i32 0, label %47
    i32 1, label %42
  ], !dbg !896

; <label>:42:                                     ; preds = %40
  %43 = tail call i32* @__errno_location() #17, !dbg !897
  br label %52, !dbg !896

; <label>:44:                                     ; preds = %40
  %45 = tail call i32* @__errno_location() #17, !dbg !898
  %46 = load i32, i32* %45, align 4, !dbg !898, !tbaa !827
  br label %52, !dbg !899

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 0, !dbg !900
  call void @llvm.dbg.value(metadata i64* %48, metadata !887, metadata !DIExpression()) #12, !dbg !901
  %49 = tail call i32* @__errno_location() #17, !dbg !902
  store i32 0, i32* %49, align 4, !dbg !905, !tbaa !827
  %50 = load i64, i64* %4, align 8, !dbg !906, !tbaa !907
  call void @llvm.dbg.value(metadata i64 %50, metadata !888, metadata !DIExpression()) #12, !dbg !893
  store i64 %50, i64* %48, align 8, !dbg !908, !tbaa !907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #12, !dbg !909
  br label %51, !dbg !910

; <label>:51:                                     ; preds = %47, %37
  br label %15, !dbg !831, !llvm.loop !911

; <label>:52:                                     ; preds = %42, %44
  %53 = phi i32* [ %43, %42 ], [ %45, %44 ], !dbg !913
  %54 = phi i32 [ 75, %42 ], [ %46, %44 ], !dbg !899
  store i32 %54, i32* %53, align 4, !dbg !914, !tbaa !827
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #12, !dbg !909
  %55 = load i32, i32* %53, align 4, !dbg !913, !tbaa !827
  %56 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !913
  %57 = load i8*, i8** @optarg, align 8, !dbg !913, !tbaa !698
  %58 = call i8* @quote(i8* %57) #12, !dbg !913
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %55, i8* %56, i8* %58) #12, !dbg !913
  unreachable, !dbg !913

; <label>:59:                                     ; preds = %15
  call void @usage(i32 0) #16, !dbg !915
  unreachable, !dbg !915

; <label>:60:                                     ; preds = %15
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !916, !tbaa !698
  %62 = load i8*, i8** @Version, align 8, !dbg !916, !tbaa !698
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #12, !dbg !916
  call void @exit(i32 0) #15, !dbg !916
  unreachable, !dbg !916

; <label>:63:                                     ; preds = %15
  call void @usage(i32 125) #16, !dbg !917
  unreachable, !dbg !917

; <label>:64:                                     ; preds = %15
  %65 = load i32, i32* @optind, align 4, !dbg !918, !tbaa !827
  %66 = sext i32 %65 to i64, !dbg !919
  %67 = getelementptr inbounds i8*, i8** %1, i64 %66, !dbg !919
  call void @llvm.dbg.value(metadata i8** %67, metadata !757, metadata !DIExpression()), !dbg !814
  %68 = icmp slt i32 %65, %0, !dbg !920
  br i1 %68, label %71, label %69, !dbg !922

; <label>:69:                                     ; preds = %64
  %70 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 5) #12, !dbg !923
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %70) #12, !dbg !925
  call void @usage(i32 125) #16, !dbg !926
  unreachable, !dbg !926

; <label>:71:                                     ; preds = %64
  call void @llvm.dbg.value(metadata i8 0, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 0, metadata !932, metadata !DIExpression()) #12, !dbg !948
  %72 = bitcast i8** %3 to i8*
  call void @llvm.dbg.value(metadata i8 0, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 0, metadata !932, metadata !DIExpression()) #12, !dbg !948
  %73 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 2), align 16, !dbg !949, !tbaa !868
  %74 = icmp eq i8* %73, null, !dbg !950
  br i1 %74, label %109, label %75, !dbg !951

; <label>:75:                                     ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #12, !dbg !952
  %76 = load i8, i8* %73, align 1, !dbg !953, !tbaa !854
  %77 = icmp eq i8 %76, 76, !dbg !954
  %78 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 1), align 8, !dbg !955, !tbaa !848
  call void @llvm.dbg.value(metadata i32 %78, metadata !959, metadata !DIExpression()) #12, !dbg !962
  %79 = add i32 %78, 128, !dbg !964
  %80 = icmp ult i32 %79, 384, !dbg !964
  br i1 %80, label %81, label %87, !dbg !964

; <label>:81:                                     ; preds = %75
  %82 = tail call i32** @__ctype_toupper_loc() #17, !dbg !965
  %83 = load i32*, i32** %82, align 8, !dbg !966, !tbaa !698
  %84 = sext i32 %78 to i64, !dbg !967
  %85 = getelementptr inbounds i32, i32* %83, i64 %84, !dbg !967
  %86 = load i32, i32* %85, align 4, !dbg !967, !tbaa !827
  br label %87, !dbg !968

; <label>:87:                                     ; preds = %81, %75
  %88 = phi i32 [ %86, %81 ], [ %78, %75 ], !dbg !968
  br i1 %77, label %89, label %91, !dbg !969

; <label>:89:                                     ; preds = %87
  call void @llvm.dbg.value(metadata i8** %3, metadata !934, metadata !DIExpression(DW_OP_deref)) #12, !dbg !970
  %90 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %88) #12, !dbg !971
  call void @llvm.dbg.value(metadata i32 %90, metadata !939, metadata !DIExpression()) #12, !dbg !972
  br label %94, !dbg !973

; <label>:91:                                     ; preds = %87
  call void @llvm.dbg.value(metadata i32 %88, metadata !943, metadata !DIExpression()) #12, !dbg !974
  %92 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 0), align 16, !dbg !975, !tbaa !976
  call void @llvm.dbg.value(metadata i8** %3, metadata !934, metadata !DIExpression(DW_OP_deref)) #12, !dbg !970
  %93 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %88, i64 %92) #12, !dbg !975
  call void @llvm.dbg.value(metadata i32 %93, metadata !939, metadata !DIExpression()) #12, !dbg !972
  br label %94

; <label>:94:                                     ; preds = %91, %89
  %95 = phi i32 [ %90, %89 ], [ %93, %91 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %95, metadata !939, metadata !DIExpression()) #12, !dbg !972
  %96 = icmp slt i32 %95, 0, !dbg !978
  br i1 %96, label %97, label %98, !dbg !980

; <label>:97:                                     ; preds = %163, %132, %94
  call void @xalloc_die() #15, !dbg !981
  unreachable, !dbg !981

; <label>:98:                                     ; preds = %94
  %99 = load i8*, i8** %3, align 8, !dbg !982, !tbaa !698
  call void @llvm.dbg.value(metadata i8* %99, metadata !934, metadata !DIExpression()) #12, !dbg !970
  %100 = call i32 @putenv(i8* %99) #12, !dbg !984
  %101 = icmp eq i32 %100, 0, !dbg !985
  br i1 %101, label %108, label %102, !dbg !986

; <label>:102:                                    ; preds = %166, %135, %98
  %103 = tail call i32* @__errno_location() #17, !dbg !987
  %104 = load i32, i32* %103, align 4, !dbg !987, !tbaa !827
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #12, !dbg !987
  %106 = load i8*, i8** %3, align 8, !dbg !987, !tbaa !698
  call void @llvm.dbg.value(metadata i8* %106, metadata !934, metadata !DIExpression()) #12, !dbg !970
  %107 = call i8* @quote(i8* %106) #12, !dbg !987
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %104, i8* %105, i8* %107) #12, !dbg !987
  unreachable, !dbg !987

; <label>:108:                                    ; preds = %98
  call void @llvm.dbg.value(metadata i8 1, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #12, !dbg !989
  br label %109, !dbg !990

; <label>:109:                                    ; preds = %108, %71
  %110 = phi i8 [ 1, %108 ], [ 0, %71 ], !dbg !991
  call void @llvm.dbg.value(metadata i8 %110, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 1, metadata !932, metadata !DIExpression()) #12, !dbg !948
  call void @llvm.dbg.value(metadata i8 %110, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 1, metadata !932, metadata !DIExpression()) #12, !dbg !948
  %111 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 2), align 8, !dbg !949, !tbaa !868
  %112 = icmp eq i8* %111, null, !dbg !950
  br i1 %112, label %140, label %113, !dbg !951

; <label>:113:                                    ; preds = %109
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #12, !dbg !952
  %114 = load i8, i8* %111, align 1, !dbg !953, !tbaa !854
  %115 = icmp eq i8 %114, 76, !dbg !954
  %116 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 1), align 8, !dbg !955, !tbaa !848
  call void @llvm.dbg.value(metadata i32 %116, metadata !959, metadata !DIExpression()) #12, !dbg !962
  %117 = add i32 %116, 128, !dbg !964
  %118 = icmp ult i32 %117, 384, !dbg !964
  br i1 %118, label %119, label %125, !dbg !964

; <label>:119:                                    ; preds = %113
  %120 = tail call i32** @__ctype_toupper_loc() #17, !dbg !965
  %121 = load i32*, i32** %120, align 8, !dbg !966, !tbaa !698
  %122 = sext i32 %116 to i64, !dbg !967
  %123 = getelementptr inbounds i32, i32* %121, i64 %122, !dbg !967
  %124 = load i32, i32* %123, align 4, !dbg !967, !tbaa !827
  br label %125, !dbg !968

; <label>:125:                                    ; preds = %119, %113
  %126 = phi i32 [ %124, %119 ], [ %116, %113 ], !dbg !968
  br i1 %115, label %130, label %127, !dbg !969

; <label>:127:                                    ; preds = %125
  call void @llvm.dbg.value(metadata i32 %126, metadata !943, metadata !DIExpression()) #12, !dbg !974
  %128 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 0), align 8, !dbg !975, !tbaa !976
  call void @llvm.dbg.value(metadata i8** %3, metadata !934, metadata !DIExpression(DW_OP_deref)) #12, !dbg !970
  %129 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %126, i64 %128) #12, !dbg !975
  call void @llvm.dbg.value(metadata i32 %129, metadata !939, metadata !DIExpression()) #12, !dbg !972
  br label %132

; <label>:130:                                    ; preds = %125
  call void @llvm.dbg.value(metadata i8** %3, metadata !934, metadata !DIExpression(DW_OP_deref)) #12, !dbg !970
  %131 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %126) #12, !dbg !971
  call void @llvm.dbg.value(metadata i32 %131, metadata !939, metadata !DIExpression()) #12, !dbg !972
  br label %132, !dbg !973

; <label>:132:                                    ; preds = %130, %127
  %133 = phi i32 [ %131, %130 ], [ %129, %127 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %133, metadata !939, metadata !DIExpression()) #12, !dbg !972
  %134 = icmp slt i32 %133, 0, !dbg !978
  br i1 %134, label %97, label %135, !dbg !980

; <label>:135:                                    ; preds = %132
  %136 = load i8*, i8** %3, align 8, !dbg !982, !tbaa !698
  call void @llvm.dbg.value(metadata i8* %136, metadata !934, metadata !DIExpression()) #12, !dbg !970
  %137 = call i32 @putenv(i8* %136) #12, !dbg !984
  %138 = icmp eq i32 %137, 0, !dbg !985
  br i1 %138, label %139, label %102, !dbg !986

; <label>:139:                                    ; preds = %135
  call void @llvm.dbg.value(metadata i8 1, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #12, !dbg !989
  br label %140, !dbg !990

; <label>:140:                                    ; preds = %139, %109
  %141 = phi i8 [ 1, %139 ], [ %110, %109 ], !dbg !991
  call void @llvm.dbg.value(metadata i8 %141, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 2, metadata !932, metadata !DIExpression()) #12, !dbg !948
  call void @llvm.dbg.value(metadata i8 %141, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 2, metadata !932, metadata !DIExpression()) #12, !dbg !948
  %142 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 2), align 16, !dbg !949, !tbaa !868
  %143 = icmp eq i8* %142, null, !dbg !950
  br i1 %143, label %171, label %144, !dbg !951

; <label>:144:                                    ; preds = %140
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #12, !dbg !952
  %145 = load i8, i8* %142, align 1, !dbg !953, !tbaa !854
  %146 = icmp eq i8 %145, 76, !dbg !954
  %147 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 1), align 8, !dbg !955, !tbaa !848
  call void @llvm.dbg.value(metadata i32 %147, metadata !959, metadata !DIExpression()) #12, !dbg !962
  %148 = add i32 %147, 128, !dbg !964
  %149 = icmp ult i32 %148, 384, !dbg !964
  br i1 %149, label %150, label %156, !dbg !964

; <label>:150:                                    ; preds = %144
  %151 = tail call i32** @__ctype_toupper_loc() #17, !dbg !965
  %152 = load i32*, i32** %151, align 8, !dbg !966, !tbaa !698
  %153 = sext i32 %147 to i64, !dbg !967
  %154 = getelementptr inbounds i32, i32* %152, i64 %153, !dbg !967
  %155 = load i32, i32* %154, align 4, !dbg !967, !tbaa !827
  br label %156, !dbg !968

; <label>:156:                                    ; preds = %150, %144
  %157 = phi i32 [ %155, %150 ], [ %147, %144 ], !dbg !968
  br i1 %146, label %161, label %158, !dbg !969

; <label>:158:                                    ; preds = %156
  call void @llvm.dbg.value(metadata i32 %157, metadata !943, metadata !DIExpression()) #12, !dbg !974
  %159 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 0), align 16, !dbg !975, !tbaa !976
  call void @llvm.dbg.value(metadata i8** %3, metadata !934, metadata !DIExpression(DW_OP_deref)) #12, !dbg !970
  %160 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %157, i64 %159) #12, !dbg !975
  call void @llvm.dbg.value(metadata i32 %160, metadata !939, metadata !DIExpression()) #12, !dbg !972
  br label %163

; <label>:161:                                    ; preds = %156
  call void @llvm.dbg.value(metadata i8** %3, metadata !934, metadata !DIExpression(DW_OP_deref)) #12, !dbg !970
  %162 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %157) #12, !dbg !971
  call void @llvm.dbg.value(metadata i32 %162, metadata !939, metadata !DIExpression()) #12, !dbg !972
  br label %163, !dbg !973

; <label>:163:                                    ; preds = %161, %158
  %164 = phi i32 [ %162, %161 ], [ %160, %158 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %164, metadata !939, metadata !DIExpression()) #12, !dbg !972
  %165 = icmp slt i32 %164, 0, !dbg !978
  br i1 %165, label %97, label %166, !dbg !980

; <label>:166:                                    ; preds = %163
  %167 = load i8*, i8** %3, align 8, !dbg !982, !tbaa !698
  call void @llvm.dbg.value(metadata i8* %167, metadata !934, metadata !DIExpression()) #12, !dbg !970
  %168 = call i32 @putenv(i8* %167) #12, !dbg !984
  %169 = icmp eq i32 %168, 0, !dbg !985
  br i1 %169, label %170, label %102, !dbg !986

; <label>:170:                                    ; preds = %166
  call void @llvm.dbg.value(metadata i8 1, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #12, !dbg !989
  call void @llvm.dbg.value(metadata i8 %141, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 3, metadata !932, metadata !DIExpression()) #12, !dbg !948
  call void @llvm.dbg.value(metadata i8 %141, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i8 %110, metadata !927, metadata !DIExpression()) #12, !dbg !945
  br label %176, !dbg !992

; <label>:171:                                    ; preds = %140
  call void @llvm.dbg.value(metadata i8 %141, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 3, metadata !932, metadata !DIExpression()) #12, !dbg !948
  call void @llvm.dbg.value(metadata i8 %141, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i8 %110, metadata !927, metadata !DIExpression()) #12, !dbg !945
  %172 = and i8 %141, 1, !dbg !993
  %173 = icmp eq i8 %172, 0, !dbg !993
  br i1 %173, label %174, label %176, !dbg !992

; <label>:174:                                    ; preds = %171
  %175 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !994
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %175) #12, !dbg !996
  call void @usage(i32 125) #16, !dbg !997
  unreachable, !dbg !997

; <label>:176:                                    ; preds = %171, %170
  %177 = load i8*, i8** @program_name, align 8, !dbg !998, !tbaa !698
  call void @llvm.dbg.value(metadata i8* %177, metadata !999, metadata !DIExpression()) #12, !dbg !1013
  %178 = call i8* @strchr(i8* %177, i32 47) #14, !dbg !1015
  %179 = icmp eq i8* %178, null, !dbg !1015
  br i1 %179, label %182, label %180, !dbg !1016

; <label>:180:                                    ; preds = %176
  %181 = call i8* @dir_name(i8* %177) #12, !dbg !1017
  store i8* %181, i8** @program_path, align 8, !dbg !1019, !tbaa !698
  br label %207, !dbg !1020

; <label>:182:                                    ; preds = %176
  %183 = call i8* @xreadlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0)) #12, !dbg !1021
  call void @llvm.dbg.value(metadata i8* %183, metadata !1002, metadata !DIExpression()) #12, !dbg !1022
  %184 = icmp eq i8* %183, null, !dbg !1023
  br i1 %184, label %187, label %185, !dbg !1024

; <label>:185:                                    ; preds = %182
  %186 = call i8* @dir_name(i8* nonnull %183) #12, !dbg !1025
  store i8* %186, i8** @program_path, align 8, !dbg !1026, !tbaa !698
  br label %204, !dbg !1027

; <label>:187:                                    ; preds = %182
  %188 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #12, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %188, metadata !1002, metadata !DIExpression()) #12, !dbg !1022
  %189 = icmp eq i8* %188, null, !dbg !1029
  br i1 %189, label %204, label %190, !dbg !1030

; <label>:190:                                    ; preds = %187
  %191 = call noalias i8* @xstrdup(i8* nonnull %188) #12, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %191, metadata !1002, metadata !DIExpression()) #12, !dbg !1022
  %192 = call i8* @strtok(i8* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #12, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %192, metadata !1005, metadata !DIExpression()) #12, !dbg !1033
  %193 = icmp eq i8* %192, null, !dbg !1034
  br i1 %193, label %204, label %194, !dbg !1035

; <label>:194:                                    ; preds = %190, %201
  %195 = phi i8* [ %202, %201 ], [ %192, %190 ]
  call void @llvm.dbg.value(metadata i8* %195, metadata !1005, metadata !DIExpression()) #12, !dbg !1033
  %196 = call i8* @file_name_concat(i8* nonnull %195, i8* %177, i8** null) #12, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %196, metadata !1009, metadata !DIExpression()) #12, !dbg !1037
  %197 = call i32 @access(i8* %196, i32 1) #12, !dbg !1038
  %198 = icmp eq i32 %197, 0, !dbg !1040
  br i1 %198, label %199, label %201, !dbg !1041

; <label>:199:                                    ; preds = %194
  %200 = call i8* @dir_name(i8* %196) #12, !dbg !1042
  store i8* %200, i8** @program_path, align 8, !dbg !1044, !tbaa !698
  call void @free(i8* %196) #12, !dbg !1045
  br label %204

; <label>:201:                                    ; preds = %194
  call void @free(i8* %196) #12, !dbg !1046
  %202 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #12, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %202, metadata !1005, metadata !DIExpression()) #12, !dbg !1033
  %203 = icmp eq i8* %202, null, !dbg !1034
  br i1 %203, label %204, label %194, !dbg !1035, !llvm.loop !1048

; <label>:204:                                    ; preds = %201, %199, %190, %187, %185
  %205 = phi i8* [ %183, %185 ], [ null, %187 ], [ %191, %199 ], [ %191, %190 ], [ %191, %201 ], !dbg !1051
  call void @llvm.dbg.value(metadata i8* %205, metadata !1002, metadata !DIExpression()) #12, !dbg !1022
  call void @free(i8* %205) #12, !dbg !1052
  %206 = load i8*, i8** @program_path, align 8, !dbg !1053, !tbaa !698
  br label %207

; <label>:207:                                    ; preds = %180, %204
  %208 = phi i8* [ %181, %180 ], [ %206, %204 ]
  %209 = icmp eq i8* %208, null, !dbg !1053
  br i1 %209, label %210, label %212, !dbg !1055

; <label>:210:                                    ; preds = %207
  %211 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #12, !dbg !1056
  store i8* %211, i8** @program_path, align 8, !dbg !1057, !tbaa !698
  br label %212, !dbg !1058

; <label>:212:                                    ; preds = %207, %210
  %213 = phi i8* [ %208, %207 ], [ %211, %210 ]
  %214 = ptrtoint i8* %213 to i64, !dbg !1059
  %215 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)) #12, !dbg !1060
  call void @llvm.dbg.value(metadata i8* %215, metadata !767, metadata !DIExpression()) #12, !dbg !1061
  %216 = bitcast i8** %5 to i8*, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %216) #12, !dbg !1062
  %217 = bitcast [3 x i8*]* %6 to i8*, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %217) #12, !dbg !1063
  %218 = bitcast [3 x i8*]* %6 to i64*, !dbg !1064
  store i64 %214, i64* %218, align 16, !dbg !1064, !tbaa !698
  %219 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1, !dbg !1064
  %220 = bitcast i8** %219 to <2 x i8*>*, !dbg !1064
  store <2 x i8*> <i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i8* null>, <2 x i8*>* %220, align 8, !dbg !1064, !tbaa !698
  %221 = bitcast i8** %7 to i8*, !dbg !1065
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %221) #12, !dbg !1065
  %222 = bitcast %struct.stat* %8 to i8*, !dbg !1066
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %222) #12, !dbg !1066
  %223 = load i8, i8* %213, align 1, !dbg !1067, !tbaa !854
  %224 = icmp eq i8 %223, 0, !dbg !1067
  br i1 %224, label %227, label %225, !dbg !1069

; <label>:225:                                    ; preds = %212
  %226 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0, !dbg !1070
  call void @llvm.dbg.value(metadata i8** %226, metadata !769, metadata !DIExpression()) #12, !dbg !1071
  call void @llvm.dbg.value(metadata i8** %226, metadata !769, metadata !DIExpression()) #12, !dbg !1071
  br label %229, !dbg !1072

; <label>:227:                                    ; preds = %247, %212
  %228 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #12, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %228, metadata !771, metadata !DIExpression()) #12, !dbg !1075
  store i8* %228, i8** %7, align 8, !dbg !1076, !tbaa !698
  br label %251, !dbg !1077

; <label>:229:                                    ; preds = %247, %225
  %230 = phi i8* [ %248, %247 ], [ %213, %225 ]
  %231 = phi i8** [ %241, %247 ], [ %226, %225 ]
  call void @llvm.dbg.value(metadata i8** %231, metadata !769, metadata !DIExpression()) #12, !dbg !1071
  call void @llvm.dbg.value(metadata i8** %7, metadata !771, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1075
  %232 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %7, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* %230, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #12, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %232, metadata !765, metadata !DIExpression()) #12, !dbg !1078
  %233 = icmp slt i32 %232, 0, !dbg !1079
  br i1 %233, label %234, label %235, !dbg !1081

; <label>:234:                                    ; preds = %229
  call void @xalloc_die() #15, !dbg !1082
  unreachable, !dbg !1082

; <label>:235:                                    ; preds = %229
  %236 = load i8*, i8** %7, align 8, !dbg !1083, !tbaa !698
  call void @llvm.dbg.value(metadata i8* %236, metadata !771, metadata !DIExpression()) #12, !dbg !1075
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !772, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %236, metadata !1086, metadata !DIExpression()) #12, !dbg !1094
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !1093, metadata !DIExpression()) #12, !dbg !1094
  %237 = call i32 @__xstat(i32 1, i8* nonnull %236, %struct.stat* nonnull %8) #12, !dbg !1096
  %238 = icmp eq i32 %237, 0, !dbg !1097
  %239 = load i8*, i8** %7, align 8, !dbg !1098, !tbaa !698
  br i1 %238, label %251, label %240, !dbg !1099

; <label>:240:                                    ; preds = %235
  call void @llvm.dbg.value(metadata i8* %239, metadata !771, metadata !DIExpression()) #12, !dbg !1075
  call void @free(i8* %239) #12, !dbg !1100
  %241 = getelementptr inbounds i8*, i8** %231, i64 1, !dbg !1101
  %242 = load i8*, i8** %241, align 8, !dbg !1102, !tbaa !698
  %243 = icmp eq i8* %242, null, !dbg !1102
  br i1 %243, label %244, label %247, !dbg !1104

; <label>:244:                                    ; preds = %240
  %245 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i32 5) #12, !dbg !1105
  %246 = call i8* @quote(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #12, !dbg !1105
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %245, i8* %246) #12, !dbg !1105
  unreachable, !dbg !1105

; <label>:247:                                    ; preds = %240
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %222) #12, !dbg !1106
  call void @llvm.dbg.value(metadata i8** %241, metadata !769, metadata !DIExpression()) #12, !dbg !1071
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %222) #12, !dbg !1066
  %248 = load i8*, i8** %241, align 8, !dbg !1107, !tbaa !698
  %249 = load i8, i8* %248, align 1, !dbg !1067, !tbaa !854
  %250 = icmp eq i8 %249, 0, !dbg !1067
  br i1 %250, label %227, label %229, !dbg !1069

; <label>:251:                                    ; preds = %235, %227
  %252 = phi i8* [ %228, %227 ], [ %239, %235 ], !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %222) #12, !dbg !1106
  %253 = icmp eq i8* %215, null, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %252, metadata !771, metadata !DIExpression()) #12, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %252, metadata !771, metadata !DIExpression()) #12, !dbg !1075
  call void @llvm.dbg.value(metadata i8** %5, metadata !768, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1111
  call void @llvm.dbg.value(metadata i8** %5, metadata !768, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1111
  br i1 %253, label %256, label %254, !dbg !1112

; <label>:254:                                    ; preds = %251
  %255 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %215, i8* %252) #12, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %255, metadata !765, metadata !DIExpression()) #12, !dbg !1078
  br label %258, !dbg !1114

; <label>:256:                                    ; preds = %251
  %257 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* %252) #12, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %257, metadata !765, metadata !DIExpression()) #12, !dbg !1078
  br label %258

; <label>:258:                                    ; preds = %256, %254
  %259 = phi i32 [ %255, %254 ], [ %257, %256 ], !dbg !1108
  call void @llvm.dbg.value(metadata i32 %259, metadata !765, metadata !DIExpression()) #12, !dbg !1078
  %260 = icmp slt i32 %259, 0, !dbg !1116
  br i1 %260, label %261, label %262, !dbg !1118

; <label>:261:                                    ; preds = %258
  call void @xalloc_die() #15, !dbg !1119
  unreachable, !dbg !1119

; <label>:262:                                    ; preds = %258
  %263 = load i8*, i8** %7, align 8, !dbg !1120, !tbaa !698
  call void @llvm.dbg.value(metadata i8* %263, metadata !771, metadata !DIExpression()) #12, !dbg !1075
  call void @free(i8* %263) #12, !dbg !1121
  %264 = load i8*, i8** %5, align 8, !dbg !1122, !tbaa !698
  call void @llvm.dbg.value(metadata i8* %264, metadata !768, metadata !DIExpression()) #12, !dbg !1111
  %265 = call i32 @putenv(i8* %264) #12, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %265, metadata !765, metadata !DIExpression()) #12, !dbg !1078
  %266 = icmp eq i32 %265, 0, !dbg !1124
  br i1 %266, label %273, label %267, !dbg !1126

; <label>:267:                                    ; preds = %262
  %268 = tail call i32* @__errno_location() #17, !dbg !1127
  %269 = load i32, i32* %268, align 4, !dbg !1127, !tbaa !827
  %270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #12, !dbg !1127
  %271 = load i8*, i8** %5, align 8, !dbg !1127, !tbaa !698
  call void @llvm.dbg.value(metadata i8* %271, metadata !768, metadata !DIExpression()) #12, !dbg !1111
  %272 = call i8* @quote(i8* %271) #12, !dbg !1127
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %269, i8* %270, i8* %272) #12, !dbg !1127
  unreachable, !dbg !1127

; <label>:273:                                    ; preds = %262
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %221) #12, !dbg !1129
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %217) #12, !dbg !1129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %216) #12, !dbg !1129
  %274 = load i8*, i8** @program_path, align 8, !dbg !1130, !tbaa !698
  call void @free(i8* %274) #12, !dbg !1131
  %275 = load i8*, i8** %67, align 8, !dbg !1132, !tbaa !698
  %276 = call i32 @execvp(i8* %275, i8** %67) #12, !dbg !1133
  %277 = tail call i32* @__errno_location() #17, !dbg !1134
  %278 = load i32, i32* %277, align 4, !dbg !1134, !tbaa !827
  %279 = icmp eq i32 %278, 2, !dbg !1135
  %280 = select i1 %279, i32 127, i32 126, !dbg !1134
  call void @llvm.dbg.value(metadata i32 %280, metadata !761, metadata !DIExpression()), !dbg !1136
  %281 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !1137
  %282 = load i8*, i8** %67, align 8, !dbg !1138, !tbaa !698
  %283 = call i8* @quote(i8* %282) #12, !dbg !1139
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %278, i8* %281, i8* %283) #12, !dbg !1140
  ret i32 %280, !dbg !1141
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @access(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1142 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1144, metadata !DIExpression()), !dbg !1145
  store i8* %0, i8** @file_name, align 8, !dbg !1146, !tbaa !698
  ret void, !dbg !1147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1148 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1152, metadata !DIExpression()), !dbg !1153
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1154, !tbaa !1155
  ret void, !dbg !1157
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1158 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1163, !tbaa !698
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1164
  %3 = icmp eq i32 %2, 0, !dbg !1165
  br i1 %3, label %22, label %4, !dbg !1166

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1167, !tbaa !1155, !range !1168
  %6 = icmp eq i8 %5, 0, !dbg !1167
  br i1 %6, label %11, label %7, !dbg !1169

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1170
  %9 = load i32, i32* %8, align 4, !dbg !1170, !tbaa !827
  %10 = icmp eq i32 %9, 32, !dbg !1171
  br i1 %10, label %22, label %11, !dbg !1172

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 5) #12, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %12, metadata !1160, metadata !DIExpression()), !dbg !1174
  %13 = load i8*, i8** @file_name, align 8, !dbg !1175, !tbaa !698
  %14 = icmp eq i8* %13, null, !dbg !1175
  %15 = tail call i32* @__errno_location() #17, !dbg !1177
  %16 = load i32, i32* %15, align 4, !dbg !1177, !tbaa !827
  br i1 %14, label %19, label %17, !dbg !1178

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1179
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.63, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1180
  br label %20, !dbg !1180

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.64, i64 0, i64 0), i8* %12) #12, !dbg !1181
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1182, !tbaa !827
  tail call void @_exit(i32 %21) #15, !dbg !1183
  unreachable, !dbg !1183

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1184, !tbaa !698
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1186
  %25 = icmp eq i32 %24, 0, !dbg !1187
  br i1 %25, label %28, label %26, !dbg !1188

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1189, !tbaa !827
  tail call void @_exit(i32 %27) #15, !dbg !1190
  unreachable, !dbg !1190

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1191
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @dir_name(i8*) local_unnamed_addr #7 !dbg !1192 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1197, metadata !DIExpression()), !dbg !1199
  %2 = tail call i8* @mdir_name(i8* %0) #12, !dbg !1200
  call void @llvm.dbg.value(metadata i8* %2, metadata !1198, metadata !DIExpression()), !dbg !1201
  %3 = icmp eq i8* %2, null, !dbg !1202
  br i1 %3, label %4, label %5, !dbg !1204

; <label>:4:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !1205
  unreachable, !dbg !1205

; <label>:5:                                      ; preds = %1
  ret i8* %2, !dbg !1206
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @dir_len(i8*) local_unnamed_addr #10 !dbg !1207 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1212, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 0, metadata !1213, metadata !DIExpression()), !dbg !1216
  %2 = load i8, i8* %0, align 1, !dbg !1217, !tbaa !854
  %3 = icmp eq i8 %2, 47, !dbg !1217
  %4 = zext i1 %3 to i64, !dbg !1218
  call void @llvm.dbg.value(metadata i64 %4, metadata !1213, metadata !DIExpression()), !dbg !1216
  %5 = tail call i8* @last_component(i8* %0) #14, !dbg !1219
  %6 = ptrtoint i8* %5 to i64, !dbg !1221
  %7 = ptrtoint i8* %0 to i64, !dbg !1221
  %8 = sub i64 %6, %7, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %8, metadata !1214, metadata !DIExpression()), !dbg !1222
  br label %9, !dbg !1223

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ], !dbg !1224
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  %11 = icmp ugt i64 %10, %4, !dbg !1226
  br i1 %11, label %12, label %17, !dbg !1227

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1, !dbg !1228
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1228
  %15 = load i8, i8* %14, align 1, !dbg !1228, !tbaa !854
  %16 = icmp eq i8 %15, 47, !dbg !1228
  br i1 %16, label %9, label %17, !dbg !1230, !llvm.loop !1231

; <label>:17:                                     ; preds = %12, %9
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()), !dbg !1222
  ret i64 %10, !dbg !1233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @mdir_name(i8*) local_unnamed_addr #7 !dbg !1234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1236, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %0, metadata !1212, metadata !DIExpression()) #12, !dbg !1241
  call void @llvm.dbg.value(metadata i64 0, metadata !1213, metadata !DIExpression()) #12, !dbg !1243
  %2 = load i8, i8* %0, align 1, !dbg !1244, !tbaa !854
  %3 = icmp eq i8 %2, 47, !dbg !1244
  %4 = zext i1 %3 to i64, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %4, metadata !1213, metadata !DIExpression()) #12, !dbg !1243
  %5 = tail call i8* @last_component(i8* %0) #14, !dbg !1246
  %6 = ptrtoint i8* %5 to i64, !dbg !1247
  %7 = ptrtoint i8* %0 to i64, !dbg !1247
  %8 = sub i64 %6, %7, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %8, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  br label %9, !dbg !1249

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ], !dbg !1250
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  %11 = icmp ugt i64 %10, %4, !dbg !1251
  br i1 %11, label %12, label %17, !dbg !1252

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1, !dbg !1253
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1253
  %15 = load i8, i8* %14, align 1, !dbg !1253, !tbaa !854
  %16 = icmp eq i8 %15, 47, !dbg !1253
  br i1 %16, label %9, label %17, !dbg !1254, !llvm.loop !1231

; <label>:17:                                     ; preds = %9, %12
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1214, metadata !DIExpression()) #12, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %10, metadata !1237, metadata !DIExpression()), !dbg !1255
  %18 = icmp eq i64 %10, 0, !dbg !1256
  %19 = zext i1 %18 to i64, !dbg !1257
  %20 = add i64 %10, 1, !dbg !1258
  %21 = add i64 %20, %19, !dbg !1259
  %22 = tail call noalias i8* @malloc(i64 %21) #12, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %22, metadata !1239, metadata !DIExpression()), !dbg !1261
  %23 = icmp eq i8* %22, null, !dbg !1262
  br i1 %23, label %29, label %24, !dbg !1264

; <label>:24:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %22, i8* nonnull align 1 %0, i64 %10, i1 false), !dbg !1265
  br i1 %18, label %25, label %26, !dbg !1266

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i64 %10, metadata !1237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1255
  store i8 46, i8* %22, align 1, !dbg !1267, !tbaa !854
  br label %26, !dbg !1269

; <label>:26:                                     ; preds = %25, %24
  %27 = phi i64 [ 1, %25 ], [ %10, %24 ], !dbg !1270
  call void @llvm.dbg.value(metadata i64 %27, metadata !1237, metadata !DIExpression()), !dbg !1255
  %28 = getelementptr inbounds i8, i8* %22, i64 %27, !dbg !1271
  store i8 0, i8* %28, align 1, !dbg !1272, !tbaa !854
  br label %29, !dbg !1273

; <label>:29:                                     ; preds = %17, %26
  ret i8* %22, !dbg !1274
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly) local_unnamed_addr #10 !dbg !1275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1278, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8* %0, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8 0, metadata !1281, metadata !DIExpression()), !dbg !1284
  br label %2, !dbg !1285

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1286
  call void @llvm.dbg.value(metadata i8* %3, metadata !1279, metadata !DIExpression()), !dbg !1283
  %4 = load i8, i8* %3, align 1, !dbg !1287, !tbaa !854
  %5 = icmp eq i8 %4, 47, !dbg !1287
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %6, metadata !1279, metadata !DIExpression()), !dbg !1283
  br i1 %5, label %2, label %7, !dbg !1285, !llvm.loop !1289

; <label>:7:                                      ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1290
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1283
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1293
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1294
  call void @llvm.dbg.value(metadata i8 %11, metadata !1281, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %10, metadata !1280, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %9, metadata !1279, metadata !DIExpression()), !dbg !1283
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1298

; <label>:12:                                     ; preds = %7
  %13 = and i8 %11, 1, !dbg !1299
  %14 = icmp eq i8 %13, 0, !dbg !1299
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1301
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1301
  br label %17, !dbg !1301

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1286
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1286
  call void @llvm.dbg.value(metadata i8 %19, metadata !1281, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %18, metadata !1279, metadata !DIExpression()), !dbg !1283
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1302
  call void @llvm.dbg.value(metadata i8* %20, metadata !1280, metadata !DIExpression()), !dbg !1297
  %21 = load i8, i8* %20, align 1, !dbg !1290, !tbaa !854
  br label %7, !dbg !1303, !llvm.loop !1304

; <label>:22:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %9, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %9, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %9, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %9, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %9, metadata !1279, metadata !DIExpression()), !dbg !1283
  ret i8* %9, !dbg !1306
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 !dbg !1307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 0, metadata !1311, metadata !DIExpression()), !dbg !1313
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %2, metadata !1310, metadata !DIExpression()), !dbg !1316
  br label %3, !dbg !1317

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !1318
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  %5 = icmp ugt i64 %4, 1, !dbg !1320
  br i1 %5, label %6, label %11, !dbg !1321

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !1322
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1322
  %9 = load i8, i8* %8, align 1, !dbg !1322, !tbaa !854
  %10 = icmp eq i8 %9, 47, !dbg !1322
  br i1 %10, label %3, label %11, !dbg !1323, !llvm.loop !1324

; <label>:11:                                     ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %4, metadata !1310, metadata !DIExpression()), !dbg !1316
  ret i64 %4, !dbg !1326
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #7 !dbg !1327 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1332, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8* %1, metadata !1333, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8** %2, metadata !1334, metadata !DIExpression()), !dbg !1338
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #12, !dbg !1339
  call void @llvm.dbg.value(metadata i8* %4, metadata !1335, metadata !DIExpression()), !dbg !1340
  %5 = icmp eq i8* %4, null, !dbg !1341
  br i1 %5, label %6, label %7, !dbg !1343

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !1344
  unreachable, !dbg !1344

; <label>:7:                                      ; preds = %3
  ret i8* %4, !dbg !1345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #7 !dbg !1346 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1349, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %1, metadata !1350, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8** %2, metadata !1351, metadata !DIExpression()), !dbg !1361
  %4 = tail call i8* @last_component(i8* %0) #14, !dbg !1362
  call void @llvm.dbg.value(metadata i8* %4, metadata !1352, metadata !DIExpression()), !dbg !1363
  %5 = tail call i64 @base_len(i8* %4) #14, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %5, metadata !1353, metadata !DIExpression()), !dbg !1365
  %6 = ptrtoint i8* %4 to i64, !dbg !1366
  %7 = ptrtoint i8* %0 to i64, !dbg !1366
  %8 = sub i64 %6, %7, !dbg !1366
  %9 = add i64 %8, %5, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %9, metadata !1354, metadata !DIExpression()), !dbg !1368
  %10 = tail call i64 @strlen(i8* %1) #14, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %10, metadata !1355, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8 0, metadata !1356, metadata !DIExpression()), !dbg !1371
  %11 = icmp eq i64 %5, 0, !dbg !1372
  br i1 %11, label %21, label %12, !dbg !1374

; <label>:12:                                     ; preds = %3
  %13 = add i64 %9, -1, !dbg !1375
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1375
  %15 = load i8, i8* %14, align 1, !dbg !1375, !tbaa !854
  %16 = icmp eq i8 %15, 47, !dbg !1375
  br i1 %16, label %25, label %17, !dbg !1378

; <label>:17:                                     ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1379, !tbaa !854
  %19 = icmp eq i8 %18, 47, !dbg !1379
  %20 = select i1 %19, i8 0, i8 47, !dbg !1380
  br label %25, !dbg !1380

; <label>:21:                                     ; preds = %3
  %22 = load i8, i8* %1, align 1, !dbg !1381, !tbaa !854
  %23 = icmp eq i8 %22, 47, !dbg !1381
  %24 = select i1 %23, i8 46, i8 0, !dbg !1383
  br label %25, !dbg !1383

; <label>:25:                                     ; preds = %21, %17, %12
  %26 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1384
  call void @llvm.dbg.value(metadata i8 %26, metadata !1356, metadata !DIExpression()), !dbg !1371
  %27 = icmp ne i8 %26, 0, !dbg !1385
  %28 = zext i1 %27 to i64, !dbg !1386
  %29 = add i64 %10, 1, !dbg !1387
  %30 = add i64 %29, %9, !dbg !1388
  %31 = add i64 %30, %28, !dbg !1389
  %32 = tail call noalias i8* @malloc(i64 %31) #12, !dbg !1390
  call void @llvm.dbg.value(metadata i8* %32, metadata !1357, metadata !DIExpression()), !dbg !1391
  %33 = icmp eq i8* %32, null, !dbg !1392
  br i1 %33, label %43, label %34, !dbg !1394

; <label>:34:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i8* %32, metadata !1395, metadata !DIExpression()) #12, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %0, metadata !1405, metadata !DIExpression()) #12, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %9, metadata !1406, metadata !DIExpression()) #12, !dbg !1407
  %35 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %32, i1 false, i1 true) #12, !dbg !1409
  %36 = tail call i8* @__mempcpy_chk(i8* nonnull %32, i8* nonnull %0, i64 %9, i64 %35) #12, !dbg !1410
  call void @llvm.dbg.value(metadata i8* %36, metadata !1358, metadata !DIExpression()), !dbg !1411
  store i8 %26, i8* %36, align 1, !dbg !1412, !tbaa !854
  %37 = getelementptr inbounds i8, i8* %36, i64 %28, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %37, metadata !1358, metadata !DIExpression()), !dbg !1411
  %38 = icmp eq i8** %2, null, !dbg !1414
  br i1 %38, label %40, label %39, !dbg !1416

; <label>:39:                                     ; preds = %34
  store i8* %37, i8** %2, align 8, !dbg !1417, !tbaa !698
  br label %40, !dbg !1418

; <label>:40:                                     ; preds = %34, %39
  call void @llvm.dbg.value(metadata i8* %37, metadata !1395, metadata !DIExpression()) #12, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %1, metadata !1405, metadata !DIExpression()) #12, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %10, metadata !1406, metadata !DIExpression()) #12, !dbg !1419
  %41 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %37, i1 false, i1 true) #12, !dbg !1421
  %42 = tail call i8* @__mempcpy_chk(i8* nonnull %37, i8* nonnull %1, i64 %10, i64 %41) #12, !dbg !1422
  call void @llvm.dbg.value(metadata i8* %42, metadata !1358, metadata !DIExpression()), !dbg !1411
  store i8 0, i8* %42, align 1, !dbg !1423, !tbaa !854
  br label %43, !dbg !1424

; <label>:43:                                     ; preds = %25, %40
  ret i8* %32, !dbg !1425
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1426 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1428, metadata !DIExpression()), !dbg !1431
  %2 = icmp eq i8* %0, null, !dbg !1432
  br i1 %2, label %3, label %6, !dbg !1434

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1435, !tbaa !698
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1437
  tail call void @abort() #15, !dbg !1438
  unreachable, !dbg !1438

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %7, metadata !1429, metadata !DIExpression()), !dbg !1440
  %8 = icmp eq i8* %7, null, !dbg !1441
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1442
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1443
  call void @llvm.dbg.value(metadata i8* %10, metadata !1430, metadata !DIExpression()), !dbg !1444
  %11 = ptrtoint i8* %10 to i64, !dbg !1445
  %12 = ptrtoint i8* %0 to i64, !dbg !1445
  %13 = sub i64 %11, %12, !dbg !1445
  %14 = icmp sgt i64 %13, 6, !dbg !1447
  br i1 %14, label %15, label %24, !dbg !1448

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1449
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.82, i64 0, i64 0), i64 7) #14, !dbg !1450
  %18 = icmp eq i32 %17, 0, !dbg !1451
  br i1 %18, label %19, label %24, !dbg !1452

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1428, metadata !DIExpression()), !dbg !1431
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i64 3) #14, !dbg !1453
  %21 = icmp eq i32 %20, 0, !dbg !1456
  br i1 %21, label %22, label %24, !dbg !1457

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1458
  call void @llvm.dbg.value(metadata i8* %23, metadata !1428, metadata !DIExpression()), !dbg !1431
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1460, !tbaa !698
  br label %24, !dbg !1461

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1428, metadata !DIExpression()), !dbg !1431
  store i8* %25, i8** @program_name, align 8, !dbg !1462, !tbaa !698
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1463, !tbaa !698
  ret void, !dbg !1464
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1465 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1470, metadata !DIExpression()), !dbg !1473
  %2 = tail call i32* @__errno_location() #17, !dbg !1474
  %3 = load i32, i32* %2, align 4, !dbg !1474, !tbaa !827
  call void @llvm.dbg.value(metadata i32 %3, metadata !1471, metadata !DIExpression()), !dbg !1475
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1476
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1476
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1476
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1477
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1472, metadata !DIExpression()), !dbg !1478
  store i32 %3, i32* %2, align 4, !dbg !1479, !tbaa !827
  ret %struct.quoting_options* %8, !dbg !1480
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1481 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1487, metadata !DIExpression()), !dbg !1488
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1489
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1489
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1490
  %5 = load i32, i32* %4, align 8, !dbg !1490, !tbaa !1491
  ret i32 %5, !dbg !1493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1494 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1498, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32 %1, metadata !1499, metadata !DIExpression()), !dbg !1501
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1502
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1502
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1503
  store i32 %1, i32* %5, align 8, !dbg !1504, !tbaa !1491
  ret void, !dbg !1505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1506 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1510, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %1, metadata !1511, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %2, metadata !1512, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %1, metadata !1513, metadata !DIExpression()), !dbg !1522
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1523
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1523
  %6 = lshr i8 %1, 5, !dbg !1524
  %7 = zext i8 %6 to i64, !dbg !1524
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1525
  call void @llvm.dbg.value(metadata i32* %8, metadata !1515, metadata !DIExpression()), !dbg !1526
  %9 = and i8 %1, 31, !dbg !1527
  %10 = zext i8 %9 to i32, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %10, metadata !1517, metadata !DIExpression()), !dbg !1528
  %11 = load i32, i32* %8, align 4, !dbg !1529, !tbaa !827
  %12 = lshr i32 %11, %10, !dbg !1530
  %13 = and i32 %12, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i32 %13, metadata !1518, metadata !DIExpression()), !dbg !1532
  %14 = and i32 %2, 1, !dbg !1533
  %15 = xor i32 %13, %14, !dbg !1534
  %16 = shl i32 %15, %10, !dbg !1535
  %17 = xor i32 %16, %11, !dbg !1536
  store i32 %17, i32* %8, align 4, !dbg !1536, !tbaa !827
  ret i32 %13, !dbg !1537
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1538 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1542, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 %1, metadata !1543, metadata !DIExpression()), !dbg !1546
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1547
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1549
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1542, metadata !DIExpression()), !dbg !1545
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1550
  %6 = load i32, i32* %5, align 4, !dbg !1550, !tbaa !1551
  call void @llvm.dbg.value(metadata i32 %6, metadata !1544, metadata !DIExpression()), !dbg !1552
  store i32 %1, i32* %5, align 4, !dbg !1553, !tbaa !1551
  ret i32 %6, !dbg !1554
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1555 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1559, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8* %1, metadata !1560, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %2, metadata !1561, metadata !DIExpression()), !dbg !1564
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1565
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1567
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1559, metadata !DIExpression()), !dbg !1562
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1568
  store i32 10, i32* %6, align 8, !dbg !1569, !tbaa !1491
  %7 = icmp ne i8* %1, null, !dbg !1570
  %8 = icmp ne i8* %2, null, !dbg !1572
  %9 = and i1 %7, %8, !dbg !1573
  br i1 %9, label %11, label %10, !dbg !1573

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1574
  unreachable, !dbg !1574

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1575
  store i8* %1, i8** %12, align 8, !dbg !1576, !tbaa !1577
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1578
  store i8* %2, i8** %13, align 8, !dbg !1579, !tbaa !1580
  ret void, !dbg !1581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1582 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1586, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i64 %1, metadata !1587, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i8* %2, metadata !1588, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %3, metadata !1589, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1590, metadata !DIExpression()), !dbg !1598
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1599
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1599
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1591, metadata !DIExpression()), !dbg !1600
  %8 = tail call i32* @__errno_location() #17, !dbg !1601
  %9 = load i32, i32* %8, align 4, !dbg !1601, !tbaa !827
  call void @llvm.dbg.value(metadata i32 %9, metadata !1592, metadata !DIExpression()), !dbg !1602
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1603
  %11 = load i32, i32* %10, align 8, !dbg !1603, !tbaa !1491
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1604
  %13 = load i32, i32* %12, align 4, !dbg !1604, !tbaa !1551
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1605
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1606
  %16 = load i8*, i8** %15, align 8, !dbg !1606, !tbaa !1577
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1607
  %18 = load i8*, i8** %17, align 8, !dbg !1607, !tbaa !1580
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %19, metadata !1593, metadata !DIExpression()), !dbg !1609
  store i32 %9, i32* %8, align 4, !dbg !1610, !tbaa !827
  ret i64 %19, !dbg !1611
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1612 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1618, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %1, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8* %2, metadata !1620, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %3, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %4, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %5, metadata !1623, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32* %6, metadata !1624, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i8* %7, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %8, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 0, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8* null, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1695
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1696
  %14 = icmp eq i64 %13, 1, !dbg !1697
  %15 = lshr i32 %5, 1, !dbg !1698
  %16 = trunc i32 %15 to i8, !dbg !1698
  %17 = and i8 %16, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i8 %17, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 1, metadata !1637, metadata !DIExpression()), !dbg !1701
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1702

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1692
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1693
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1694
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1695
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1703
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1699
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1700
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1701
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 %39, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %38, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %37, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %36, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %35, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 %34, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %33, metadata !1631, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %32, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %31, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* %30, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %29, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 %28, metadata !1622, metadata !DIExpression()), !dbg !1686
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1705

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %36, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 5, metadata !1622, metadata !DIExpression()), !dbg !1686
  br label %93, !dbg !1706

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 5, metadata !1622, metadata !DIExpression()), !dbg !1686
  %43 = and i8 %36, 1, !dbg !1707
  %44 = icmp eq i8 %43, 0, !dbg !1707
  br i1 %44, label %45, label %93, !dbg !1706

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1709
  br i1 %46, label %93, label %47, !dbg !1712

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1709, !tbaa !854
  br label %93, !dbg !1709

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 %28), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %49, metadata !1625, metadata !DIExpression()), !dbg !1689
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 %28), !dbg !1717
  call void @llvm.dbg.value(metadata i8* %50, metadata !1626, metadata !DIExpression()), !dbg !1690
  br label %51, !dbg !1718

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %52, metadata !1625, metadata !DIExpression()), !dbg !1689
  %54 = and i8 %36, 1, !dbg !1719
  %55 = icmp eq i8 %54, 0, !dbg !1719
  br i1 %55, label %56, label %71, !dbg !1721

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1691
  %57 = load i8, i8* %52, align 1, !dbg !1722, !tbaa !854
  %58 = icmp eq i8 %57, 0, !dbg !1725
  br i1 %58, label %71, label %59, !dbg !1725

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %62, metadata !1628, metadata !DIExpression()), !dbg !1691
  %63 = icmp ult i64 %62, %40, !dbg !1726
  br i1 %63, label %64, label %66, !dbg !1729

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1726
  store i8 %60, i8* %65, align 1, !dbg !1726, !tbaa !854
  br label %66, !dbg !1726

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1729
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1730
  call void @llvm.dbg.value(metadata i8* %68, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %67, metadata !1628, metadata !DIExpression()), !dbg !1691
  %69 = load i8, i8* %68, align 1, !dbg !1722, !tbaa !854
  %70 = icmp eq i8 %69, 0, !dbg !1725
  br i1 %70, label %71, label %59, !dbg !1725, !llvm.loop !1731

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1691
  call void @llvm.dbg.value(metadata i64 %72, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %53, metadata !1630, metadata !DIExpression()), !dbg !1693
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %73, metadata !1631, metadata !DIExpression()), !dbg !1694
  br label %93, !dbg !1734

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1695
  br label %75, !dbg !1735

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1703
  call void @llvm.dbg.value(metadata i8 %76, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1698
  br label %77, !dbg !1736

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1695
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1703
  call void @llvm.dbg.value(metadata i8 %79, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %78, metadata !1632, metadata !DIExpression()), !dbg !1695
  %80 = and i8 %79, 1, !dbg !1737
  %81 = icmp eq i8 %80, 0, !dbg !1737
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1739
  br label %83, !dbg !1739

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1740
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1698
  call void @llvm.dbg.value(metadata i8 %85, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %84, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i32 2, metadata !1622, metadata !DIExpression()), !dbg !1686
  %86 = and i8 %85, 1, !dbg !1741
  %87 = icmp eq i8 %86, 0, !dbg !1741
  br i1 %87, label %88, label %93, !dbg !1743

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1744
  br i1 %89, label %93, label %90, !dbg !1747

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1744, !tbaa !854
  br label %93, !dbg !1744

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1698
  br label %93, !dbg !1748

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1749
  unreachable, !dbg !1749

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1691
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %41 ], !dbg !1703
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1703
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1703
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %101, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %99, metadata !1631, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %97, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 %94, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i64 0, metadata !1627, metadata !DIExpression()), !dbg !1751
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !1752

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1753
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1691
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1692
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1699
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1700
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1701
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %125, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %122, metadata !1627, metadata !DIExpression()), !dbg !1751
  %130 = icmp eq i64 %125, -1, !dbg !1754
  br i1 %130, label %131, label %135, !dbg !1755

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1756
  %133 = load i8, i8* %132, align 1, !dbg !1756, !tbaa !854
  %134 = icmp eq i8 %133, 0, !dbg !1757
  br i1 %134, label %617, label %137, !dbg !1758

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1759
  br i1 %136, label %617, label %137, !dbg !1758

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 0, metadata !1644, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1762
  br i1 %107, label %138, label %153, !dbg !1763

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1765
  %140 = and i1 %108, %130, !dbg !1766
  br i1 %140, label %141, label %143, !dbg !1766

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %142, metadata !1621, metadata !DIExpression()), !dbg !1685
  br label %143, !dbg !1768

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1621, metadata !DIExpression()), !dbg !1685
  %145 = icmp ugt i64 %139, %144, !dbg !1769
  br i1 %145, label %153, label %146, !dbg !1770

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1771
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1772
  %149 = icmp ne i32 %148, 0, !dbg !1773
  %150 = or i1 %149, %110, !dbg !1774
  %151 = xor i1 %149, true, !dbg !1774
  %152 = zext i1 %151 to i8, !dbg !1774
  br i1 %150, label %153, label %661, !dbg !1774

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1775
  call void @llvm.dbg.value(metadata i8 %155, metadata !1643, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %154, metadata !1621, metadata !DIExpression()), !dbg !1685
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1776
  %157 = load i8, i8* %156, align 1, !dbg !1776, !tbaa !854
  call void @llvm.dbg.value(metadata i8 %157, metadata !1638, metadata !DIExpression()), !dbg !1777
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !1778

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1779

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1780

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1761
  %161 = and i8 %126, 1, !dbg !1784
  %162 = icmp eq i8 %161, 0, !dbg !1784
  %163 = and i1 %114, %162, !dbg !1784
  br i1 %163, label %164, label %180, !dbg !1784

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1786
  br i1 %165, label %166, label %168, !dbg !1790

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1786
  store i8 39, i8* %167, align 1, !dbg !1786, !tbaa !854
  br label %168, !dbg !1786

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %169, metadata !1628, metadata !DIExpression()), !dbg !1691
  %170 = icmp ult i64 %169, %129, !dbg !1791
  br i1 %170, label %171, label %173, !dbg !1794

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1791
  store i8 36, i8* %172, align 1, !dbg !1791, !tbaa !854
  br label %173, !dbg !1791

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %174, metadata !1628, metadata !DIExpression()), !dbg !1691
  %175 = icmp ult i64 %174, %129, !dbg !1795
  br i1 %175, label %176, label %178, !dbg !1798

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1795
  store i8 39, i8* %177, align 1, !dbg !1795, !tbaa !854
  br label %178, !dbg !1795

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %179, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 1, metadata !1635, metadata !DIExpression()), !dbg !1699
  br label %180, !dbg !1799

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1750
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %182, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %181, metadata !1628, metadata !DIExpression()), !dbg !1691
  %183 = icmp ult i64 %181, %129, !dbg !1800
  br i1 %183, label %184, label %186, !dbg !1803

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1800
  store i8 92, i8* %185, align 1, !dbg !1800, !tbaa !854
  br label %186, !dbg !1800

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %187, metadata !1628, metadata !DIExpression()), !dbg !1691
  br i1 %104, label %188, label %478, !dbg !1804

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1806
  %190 = icmp ult i64 %189, %154, !dbg !1807
  br i1 %190, label %191, label %467, !dbg !1808

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1809
  %193 = load i8, i8* %192, align 1, !dbg !1809, !tbaa !854
  %194 = add i8 %193, -48, !dbg !1810
  %195 = icmp ult i8 %194, 10, !dbg !1810
  br i1 %195, label %196, label %467, !dbg !1810

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1811
  br i1 %197, label %198, label %200, !dbg !1815

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1811
  store i8 48, i8* %199, align 1, !dbg !1811, !tbaa !854
  br label %200, !dbg !1811

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %201, metadata !1628, metadata !DIExpression()), !dbg !1691
  %202 = icmp ult i64 %201, %129, !dbg !1816
  br i1 %202, label %203, label %205, !dbg !1819

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1816
  store i8 48, i8* %204, align 1, !dbg !1816, !tbaa !854
  br label %205, !dbg !1816

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %206, metadata !1628, metadata !DIExpression()), !dbg !1691
  br label %467, !dbg !1820

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1821

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1822

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1823

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1825

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1827
  %213 = icmp ult i64 %212, %154, !dbg !1828
  br i1 %213, label %214, label %467, !dbg !1829

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1830
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1831
  %217 = load i8, i8* %216, align 1, !dbg !1831, !tbaa !854
  %218 = icmp eq i8 %217, 63, !dbg !1832
  br i1 %218, label %219, label %467, !dbg !1833

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1834
  %221 = load i8, i8* %220, align 1, !dbg !1834, !tbaa !854
  %222 = sext i8 %221 to i32, !dbg !1834
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !1835

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1836

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1638, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %212, metadata !1627, metadata !DIExpression()), !dbg !1751
  %225 = icmp ult i64 %123, %129, !dbg !1838
  br i1 %225, label %226, label %228, !dbg !1841

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1838
  store i8 63, i8* %227, align 1, !dbg !1838, !tbaa !854
  br label %228, !dbg !1838

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %229, metadata !1628, metadata !DIExpression()), !dbg !1691
  %230 = icmp ult i64 %229, %129, !dbg !1842
  br i1 %230, label %231, label %233, !dbg !1845

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1842
  store i8 34, i8* %232, align 1, !dbg !1842, !tbaa !854
  br label %233, !dbg !1842

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %234, metadata !1628, metadata !DIExpression()), !dbg !1691
  %235 = icmp ult i64 %234, %129, !dbg !1846
  br i1 %235, label %236, label %238, !dbg !1849

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1846
  store i8 34, i8* %237, align 1, !dbg !1846, !tbaa !854
  br label %238, !dbg !1846

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %239, metadata !1628, metadata !DIExpression()), !dbg !1691
  %240 = icmp ult i64 %239, %129, !dbg !1850
  br i1 %240, label %241, label %243, !dbg !1853

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1850
  store i8 63, i8* %242, align 1, !dbg !1850, !tbaa !854
  br label %243, !dbg !1850

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %244, metadata !1628, metadata !DIExpression()), !dbg !1691
  br label %467, !dbg !1854

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1642, metadata !DIExpression()), !dbg !1855
  br label %255, !dbg !1856

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1642, metadata !DIExpression()), !dbg !1855
  br label %255, !dbg !1857

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1642, metadata !DIExpression()), !dbg !1855
  br label %253, !dbg !1858

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1642, metadata !DIExpression()), !dbg !1855
  br label %253, !dbg !1859

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1642, metadata !DIExpression()), !dbg !1855
  br label %255, !dbg !1860

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1642, metadata !DIExpression()), !dbg !1855
  br i1 %114, label %251, label %252, !dbg !1861

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1862

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1865

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1867
  call void @llvm.dbg.value(metadata i8 %254, metadata !1642, metadata !DIExpression()), !dbg !1855
  br i1 %113, label %255, label %661, !dbg !1868

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1867
  call void @llvm.dbg.value(metadata i8 %256, metadata !1642, metadata !DIExpression()), !dbg !1855
  br i1 %103, label %524, label %478, !dbg !1870

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1871
  br i1 %258, label %259, label %264, !dbg !1873

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1874, !tbaa !854
  %261 = icmp ne i8 %260, 0, !dbg !1875
  %262 = icmp ne i64 %122, 0, !dbg !1876
  %263 = or i1 %262, %261, !dbg !1878
  br i1 %263, label %467, label %270, !dbg !1878

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1879
  %266 = icmp ne i64 %122, 0, !dbg !1876
  %267 = or i1 %266, %265, !dbg !1873
  br i1 %267, label %467, label %270, !dbg !1873

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1876
  br i1 %269, label %270, label %467, !dbg !1880

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1762
  br label %271, !dbg !1881

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1867
  call void @llvm.dbg.value(metadata i8 %272, metadata !1645, metadata !DIExpression()), !dbg !1762
  br i1 %113, label %467, label %661, !dbg !1882

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1762
  br i1 %114, label %274, label %467, !dbg !1884

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1885

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1888
  %277 = icmp ne i64 %124, 0, !dbg !1890
  %278 = or i1 %277, %276, !dbg !1891
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1891
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %280, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %279, metadata !1629, metadata !DIExpression()), !dbg !1692
  %281 = icmp ult i64 %123, %280, !dbg !1892
  br i1 %281, label %282, label %284, !dbg !1895

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1892
  store i8 39, i8* %283, align 1, !dbg !1892, !tbaa !854
  br label %284, !dbg !1892

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %285, metadata !1628, metadata !DIExpression()), !dbg !1691
  %286 = icmp ult i64 %285, %280, !dbg !1896
  br i1 %286, label %287, label %289, !dbg !1899

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1896
  store i8 92, i8* %288, align 1, !dbg !1896, !tbaa !854
  br label %289, !dbg !1896

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %290, metadata !1628, metadata !DIExpression()), !dbg !1691
  %291 = icmp ult i64 %290, %280, !dbg !1900
  br i1 %291, label %292, label %294, !dbg !1903

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1900
  store i8 39, i8* %293, align 1, !dbg !1900, !tbaa !854
  br label %294, !dbg !1900

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %295, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, metadata !1635, metadata !DIExpression()), !dbg !1699
  br label %467, !dbg !1904

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1905

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1646, metadata !DIExpression()), !dbg !1906
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1907
  %299 = load i16*, i16** %298, align 8, !dbg !1907, !tbaa !698
  %300 = zext i8 %157 to i64, !dbg !1907
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1907
  %302 = load i16, i16* %301, align 2, !dbg !1907, !tbaa !1909
  %303 = lshr i16 %302, 14, !dbg !1911
  %304 = trunc i16 %303 to i8, !dbg !1911
  %305 = and i8 %304, 1, !dbg !1911
  call void @llvm.dbg.value(metadata i8 %305, metadata !1649, metadata !DIExpression()), !dbg !1912
  br label %359, !dbg !1913

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1914
  store i64 0, i64* %10, align 8, !dbg !1915
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1912
  %307 = icmp eq i64 %154, -1, !dbg !1916
  br i1 %307, label %308, label %310, !dbg !1918

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %309, metadata !1621, metadata !DIExpression()), !dbg !1685
  br label %310, !dbg !1920

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1921
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  br label %312, !dbg !1922

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1923
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1924
  call void @llvm.dbg.value(metadata i8 %314, metadata !1649, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %313, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1925
  %315 = add i64 %313, %122, !dbg !1926
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1927
  %317 = sub i64 %311, %315, !dbg !1928
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1650, metadata !DIExpression(DW_OP_deref)), !dbg !1929
  call void @llvm.dbg.value(metadata i32* %12, metadata !1668, metadata !DIExpression(DW_OP_deref)), !dbg !1930
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %318, metadata !1671, metadata !DIExpression()), !dbg !1932
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1933

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %313, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %313, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %313, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %313, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %313, metadata !1646, metadata !DIExpression()), !dbg !1906
  %320 = icmp ugt i64 %311, %315, !dbg !1934
  br i1 %320, label %321, label %344, !dbg !1936

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1646, metadata !DIExpression()), !dbg !1906
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1937
  %325 = load i8, i8* %324, align 1, !dbg !1937, !tbaa !854
  %326 = icmp eq i8 %325, 0, !dbg !1936
  br i1 %326, label %344, label %327, !dbg !1938

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %328, metadata !1646, metadata !DIExpression()), !dbg !1906
  %329 = add i64 %328, %122, !dbg !1940
  %330 = icmp ult i64 %329, %311, !dbg !1934
  br i1 %330, label %321, label %344, !dbg !1936, !llvm.loop !1941

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1942
  %333 = and i1 %116, %332, !dbg !1945
  call void @llvm.dbg.value(metadata i64 1, metadata !1672, metadata !DIExpression()), !dbg !1946
  br i1 %333, label %334, label %347, !dbg !1945

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1672, metadata !DIExpression()), !dbg !1946
  %336 = add i64 %335, %315, !dbg !1947
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1948
  %338 = load i8, i8* %337, align 1, !dbg !1948, !tbaa !854
  %339 = sext i8 %338 to i32, !dbg !1948
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1949

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %341, metadata !1672, metadata !DIExpression()), !dbg !1946
  %342 = icmp ult i64 %341, %318, !dbg !1942
  br i1 %342, label %334, label %347, !dbg !1951, !llvm.loop !1952

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %314, metadata !1649, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %313, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %314, metadata !1649, metadata !DIExpression()), !dbg !1912
  br label %344, !dbg !1954

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1649, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %352, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1954
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1955, !tbaa !827
  call void @llvm.dbg.value(metadata i32 %348, metadata !1668, metadata !DIExpression()), !dbg !1930
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !1957
  %350 = icmp eq i32 %349, 0, !dbg !1957
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1958
  call void @llvm.dbg.value(metadata i8 %351, metadata !1649, metadata !DIExpression()), !dbg !1912
  %352 = add i64 %318, %313, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %352, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %351, metadata !1649, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %352, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1954
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1650, metadata !DIExpression(DW_OP_deref)), !dbg !1929
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1960
  %354 = icmp eq i32 %353, 0, !dbg !1961
  br i1 %354, label %312, label %355, !dbg !1962, !llvm.loop !1963

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1965
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 2, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 2, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 2, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 2, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 2, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %94, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %94, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %94, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %94, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %94, metadata !1622, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %100, metadata !1632, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %311, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 %351, metadata !1649, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %352, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1954
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1965
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1966
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1967
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1967
  call void @llvm.dbg.value(metadata i8 %362, metadata !1649, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %361, metadata !1646, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %360, metadata !1621, metadata !DIExpression()), !dbg !1685
  %363 = and i8 %362, 1, !dbg !1968
  %364 = icmp ne i8 %363, 0, !dbg !1968
  call void @llvm.dbg.value(metadata i8 %363, metadata !1645, metadata !DIExpression()), !dbg !1762
  %365 = icmp ult i64 %361, 2, !dbg !1969
  %366 = or i1 %364, %115, !dbg !1970
  %367 = and i1 %365, %366, !dbg !1971
  br i1 %367, label %467, label %368, !dbg !1971

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %369, metadata !1679, metadata !DIExpression()), !dbg !1973
  br label %370, !dbg !1974

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1975
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1979
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1699
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1975
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1981
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1761
  call void @llvm.dbg.value(metadata i8 %376, metadata !1644, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 %375, metadata !1643, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %374, metadata !1638, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 %373, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %372, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %371, metadata !1627, metadata !DIExpression()), !dbg !1751
  br i1 %366, label %423, label %377, !dbg !1985

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1986

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1761
  %379 = and i8 %373, 1, !dbg !1989
  %380 = icmp eq i8 %379, 0, !dbg !1989
  %381 = and i1 %114, %380, !dbg !1989
  br i1 %381, label %382, label %398, !dbg !1989

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1991
  br i1 %383, label %384, label %386, !dbg !1995

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1991
  store i8 39, i8* %385, align 1, !dbg !1991, !tbaa !854
  br label %386, !dbg !1991

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %387, metadata !1628, metadata !DIExpression()), !dbg !1691
  %388 = icmp ult i64 %387, %129, !dbg !1996
  br i1 %388, label %389, label %391, !dbg !1999

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1996
  store i8 36, i8* %390, align 1, !dbg !1996, !tbaa !854
  br label %391, !dbg !1996

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %392, metadata !1628, metadata !DIExpression()), !dbg !1691
  %393 = icmp ult i64 %392, %129, !dbg !2000
  br i1 %393, label %394, label %396, !dbg !2003

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2000
  store i8 39, i8* %395, align 1, !dbg !2000, !tbaa !854
  br label %396, !dbg !2000

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %397, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 1, metadata !1635, metadata !DIExpression()), !dbg !1699
  br label %398, !dbg !2004

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1750
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %400, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %399, metadata !1628, metadata !DIExpression()), !dbg !1691
  %401 = icmp ult i64 %399, %129, !dbg !2005
  br i1 %401, label %402, label %404, !dbg !2008

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2005
  store i8 92, i8* %403, align 1, !dbg !2005, !tbaa !854
  br label %404, !dbg !2005

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %405, metadata !1628, metadata !DIExpression()), !dbg !1691
  %406 = icmp ult i64 %405, %129, !dbg !2009
  br i1 %406, label %407, label %411, !dbg !2012

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2009
  %409 = or i8 %408, 48, !dbg !2009
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2009
  store i8 %409, i8* %410, align 1, !dbg !2009, !tbaa !854
  br label %411, !dbg !2009

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %412, metadata !1628, metadata !DIExpression()), !dbg !1691
  %413 = icmp ult i64 %412, %129, !dbg !2013
  br i1 %413, label %414, label %419, !dbg !2016

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2013
  %416 = and i8 %415, 7, !dbg !2013
  %417 = or i8 %416, 48, !dbg !2013
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2013
  store i8 %417, i8* %418, align 1, !dbg !2013, !tbaa !854
  br label %419, !dbg !2013

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %420, metadata !1628, metadata !DIExpression()), !dbg !1691
  %421 = and i8 %374, 7, !dbg !2017
  %422 = or i8 %421, 48, !dbg !2018
  call void @llvm.dbg.value(metadata i8 %422, metadata !1638, metadata !DIExpression()), !dbg !1777
  br label %432, !dbg !2019

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2020
  %425 = icmp eq i8 %424, 0, !dbg !2020
  br i1 %425, label %432, label %426, !dbg !2021

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2022
  br i1 %427, label %428, label %430, !dbg !2025

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2022
  store i8 92, i8* %429, align 1, !dbg !2022, !tbaa !854
  br label %430, !dbg !2022

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %431, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1760
  br label %432, !dbg !2026

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2027
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1699
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2028
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2029
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2031
  call void @llvm.dbg.value(metadata i8 %437, metadata !1644, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 %436, metadata !1643, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %435, metadata !1638, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 %434, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %433, metadata !1628, metadata !DIExpression()), !dbg !1691
  %438 = add i64 %371, 1, !dbg !2032
  %439 = icmp ugt i64 %369, %438, !dbg !2034
  br i1 %439, label %440, label %562, !dbg !2035

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2036
  %442 = icmp ne i8 %441, 0, !dbg !2036
  %443 = and i8 %437, 1, !dbg !2036
  %444 = icmp eq i8 %443, 0, !dbg !2036
  %445 = and i1 %442, %444, !dbg !2036
  br i1 %445, label %446, label %457, !dbg !2036

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2039
  br i1 %447, label %448, label %450, !dbg !2043

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2039
  store i8 39, i8* %449, align 1, !dbg !2039, !tbaa !854
  br label %450, !dbg !2039

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %451, metadata !1628, metadata !DIExpression()), !dbg !1691
  %452 = icmp ult i64 %451, %129, !dbg !2044
  br i1 %452, label %453, label %455, !dbg !2047

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2044
  store i8 39, i8* %454, align 1, !dbg !2044, !tbaa !854
  br label %455, !dbg !2044

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %456, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, metadata !1635, metadata !DIExpression()), !dbg !1699
  br label %457, !dbg !2048

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2049
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %459, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %458, metadata !1628, metadata !DIExpression()), !dbg !1691
  %460 = icmp ult i64 %458, %129, !dbg !2050
  br i1 %460, label %461, label %463, !dbg !2052

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2050
  store i8 %435, i8* %462, align 1, !dbg !2050, !tbaa !854
  br label %463, !dbg !2050

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %464, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %438, metadata !1627, metadata !DIExpression()), !dbg !1751
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2053
  %466 = load i8, i8* %465, align 1, !dbg !2053, !tbaa !854
  call void @llvm.dbg.value(metadata i8 %466, metadata !1638, metadata !DIExpression()), !dbg !1777
  br label %370, !dbg !2054, !llvm.loop !2055

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2058
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1750
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1692
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2059
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1750
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1750
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1775
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1775
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1775
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 %476, metadata !1645, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %475, metadata !1644, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 %155, metadata !1643, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 %474, metadata !1638, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 %473, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %472, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %471, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %470, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %469, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %468, metadata !1627, metadata !DIExpression()), !dbg !1751
  br i1 %105, label %489, label %478, !dbg !2060

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !2062

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2063

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !2064
  %502 = zext i8 %501 to i64, !dbg !2064
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2065
  %504 = load i32, i32* %503, align 4, !dbg !2065, !tbaa !827
  %505 = and i8 %494, 31, !dbg !2066
  %506 = zext i8 %505 to i32, !dbg !2066
  %507 = shl i32 1, %506, !dbg !2067
  %508 = and i32 %504, %507, !dbg !2067
  %509 = icmp eq i32 %508, 0, !dbg !2067
  %510 = icmp eq i8 %155, 0, !dbg !2068
  %511 = and i1 %510, %509, !dbg !2069
  br i1 %511, label %562, label %524, !dbg !2069

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !2068
  br i1 %523, label %562, label %524, !dbg !2070

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2071
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1750
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1692
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2059
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1699
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1700
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2072
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1775
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 %532, metadata !1645, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %531, metadata !1638, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 %530, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %529, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %528, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %527, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %526, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %525, metadata !1627, metadata !DIExpression()), !dbg !1751
  br i1 %110, label %534, label %661, !dbg !2075

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1761
  %535 = and i8 %529, 1, !dbg !2077
  %536 = icmp eq i8 %535, 0, !dbg !2077
  %537 = and i1 %114, %536, !dbg !2077
  br i1 %537, label %538, label %554, !dbg !2077

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2079
  br i1 %539, label %540, label %542, !dbg !2083

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2079
  store i8 39, i8* %541, align 1, !dbg !2079, !tbaa !854
  br label %542, !dbg !2079

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %543, metadata !1628, metadata !DIExpression()), !dbg !1691
  %544 = icmp ult i64 %543, %533, !dbg !2084
  br i1 %544, label %545, label %547, !dbg !2087

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2084
  store i8 36, i8* %546, align 1, !dbg !2084, !tbaa !854
  br label %547, !dbg !2084

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %548, metadata !1628, metadata !DIExpression()), !dbg !1691
  %549 = icmp ult i64 %548, %533, !dbg !2088
  br i1 %549, label %550, label %552, !dbg !2091

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2088
  store i8 39, i8* %551, align 1, !dbg !2088, !tbaa !854
  br label %552, !dbg !2088

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %553, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 1, metadata !1635, metadata !DIExpression()), !dbg !1699
  br label %554, !dbg !2092

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2049
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %556, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %555, metadata !1628, metadata !DIExpression()), !dbg !1691
  %557 = icmp ult i64 %555, %533, !dbg !2093
  br i1 %557, label %558, label %560, !dbg !2096

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2093
  store i8 92, i8* %559, align 1, !dbg !2093, !tbaa !854
  br label %560, !dbg !2093

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %561, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %572, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 %571, metadata !1645, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %570, metadata !1644, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 %569, metadata !1638, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 %568, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %567, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %566, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %565, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %564, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %563, metadata !1627, metadata !DIExpression()), !dbg !1751
  br label %589, !dbg !2097

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2071
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1750
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1692
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2059
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1699
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1700
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2100
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1775
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1775
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 %571, metadata !1645, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 %570, metadata !1644, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 %569, metadata !1638, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 %568, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %567, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %566, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %565, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %564, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %563, metadata !1627, metadata !DIExpression()), !dbg !1751
  %573 = and i8 %567, 1, !dbg !2097
  %574 = icmp ne i8 %573, 0, !dbg !2097
  %575 = and i8 %570, 1, !dbg !2097
  %576 = icmp eq i8 %575, 0, !dbg !2097
  %577 = and i1 %574, %576, !dbg !2097
  br i1 %577, label %578, label %589, !dbg !2097

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2101
  br i1 %579, label %580, label %582, !dbg !2105

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2101
  store i8 39, i8* %581, align 1, !dbg !2101, !tbaa !854
  br label %582, !dbg !2101

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %583, metadata !1628, metadata !DIExpression()), !dbg !1691
  %584 = icmp ult i64 %583, %572, !dbg !2106
  br i1 %584, label %585, label %587, !dbg !2109

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2106
  store i8 39, i8* %586, align 1, !dbg !2106, !tbaa !854
  br label %587, !dbg !2106

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %588, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 0, metadata !1635, metadata !DIExpression()), !dbg !1699
  br label %589, !dbg !2110

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2049
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %598, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %597, metadata !1628, metadata !DIExpression()), !dbg !1691
  %599 = icmp ult i64 %597, %590, !dbg !2111
  br i1 %599, label %600, label %602, !dbg !2114

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2111
  store i8 %592, i8* %601, align 1, !dbg !2111, !tbaa !854
  br label %602, !dbg !2111

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %603, metadata !1628, metadata !DIExpression()), !dbg !1691
  %604 = and i8 %591, 1, !dbg !2115
  %605 = icmp eq i8 %604, 0, !dbg !2115
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2117
  call void @llvm.dbg.value(metadata i8 %606, metadata !1637, metadata !DIExpression()), !dbg !1701
  br label %607, !dbg !2118

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2071
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1750
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1692
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2059
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1699
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1750
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1701
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 %614, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %613, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %612, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %611, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %610, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %609, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %608, metadata !1627, metadata !DIExpression()), !dbg !1751
  %616 = add i64 %608, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %616, metadata !1627, metadata !DIExpression()), !dbg !1751
  br label %121, !dbg !2120, !llvm.loop !2121

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %618, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %618, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %125, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %125, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %126, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %127, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %128, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  %619 = icmp eq i64 %123, 0, !dbg !2123
  %620 = and i1 %114, %619, !dbg !2125
  %621 = xor i1 %620, true, !dbg !2125
  %622 = or i1 %110, %621, !dbg !2125
  br i1 %622, label %623, label %661, !dbg !2125

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2126
  %625 = xor i1 %624, true, !dbg !2126
  %626 = and i8 %127, 1, !dbg !2128
  %627 = icmp eq i8 %626, 0, !dbg !2128
  %628 = or i1 %627, %625, !dbg !2126
  br i1 %628, label %638, label %629, !dbg !2126

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2129
  %631 = icmp eq i8 %630, 0, !dbg !2129
  br i1 %631, label %634, label %632, !dbg !2132

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %618, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %618, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %618, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %618, metadata !1621, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8* %95, metadata !1625, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8* %96, metadata !1626, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %125, metadata !1621, metadata !DIExpression()), !dbg !1685
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2133
  br label %671, !dbg !2134

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2135
  %636 = icmp ne i64 %124, 0, !dbg !2137
  %637 = and i1 %636, %635, !dbg !2138
  br i1 %637, label %27, label %638, !dbg !2138

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1683
  %639 = icmp ne i8* %98, null, !dbg !2139
  %640 = and i1 %639, %110, !dbg !2141
  br i1 %640, label %641, label %656, !dbg !2141

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1691
  %642 = load i8, i8* %98, align 1, !dbg !2142, !tbaa !854
  %643 = icmp eq i8 %642, 0, !dbg !2145
  br i1 %643, label %656, label %644, !dbg !2145

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %647, metadata !1628, metadata !DIExpression()), !dbg !1691
  %648 = icmp ult i64 %647, %129, !dbg !2146
  br i1 %648, label %649, label %651, !dbg !2149

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2146
  store i8 %645, i8* %650, align 1, !dbg !2146, !tbaa !854
  br label %651, !dbg !2146

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2149
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2150
  call void @llvm.dbg.value(metadata i8* %653, metadata !1630, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %652, metadata !1628, metadata !DIExpression()), !dbg !1691
  %654 = load i8, i8* %653, align 1, !dbg !2142, !tbaa !854
  %655 = icmp eq i8 %654, 0, !dbg !2145
  br i1 %655, label %656, label %644, !dbg !2145, !llvm.loop !2151

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1691
  call void @llvm.dbg.value(metadata i64 %657, metadata !1628, metadata !DIExpression()), !dbg !1691
  %658 = icmp ult i64 %657, %129, !dbg !2153
  br i1 %658, label %659, label %671, !dbg !2155

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2156
  store i8 0, i8* %660, align 1, !dbg !2157, !tbaa !854
  br label %671, !dbg !2156

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1619, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %663, metadata !1621, metadata !DIExpression()), !dbg !1685
  %665 = icmp ne i32 %662, 2, !dbg !2158
  %666 = icmp eq i8 %102, 0, !dbg !2160
  %667 = or i1 %665, %666, !dbg !2161
  call void @llvm.dbg.value(metadata i32 4, metadata !1622, metadata !DIExpression()), !dbg !1686
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %668, metadata !1622, metadata !DIExpression()), !dbg !1686
  %669 = and i32 %5, -3, !dbg !2162
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2163
  br label %671, !dbg !2164

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2165
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2166 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2170, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32 %1, metadata !2171, metadata !DIExpression()), !dbg !2175
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2176
  call void @llvm.dbg.value(metadata i8* %3, metadata !2172, metadata !DIExpression()), !dbg !2177
  %4 = icmp eq i8* %3, %0, !dbg !2178
  br i1 %4, label %5, label %71, !dbg !2180

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2181
  call void @llvm.dbg.value(metadata i8* %6, metadata !2173, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* %6, metadata !2183, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* null, metadata !2189, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 85, metadata !2190, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 84, metadata !2191, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 70, metadata !2192, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i8 45, metadata !2193, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 56, metadata !2194, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 0, metadata !2198, metadata !DIExpression()), !dbg !2211
  %7 = load i8, i8* %6, align 1, !dbg !2212, !tbaa !854
  %8 = and i8 %7, -33, !dbg !2212
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2212

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2214, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i8* null, metadata !2219, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8 84, metadata !2220, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8 70, metadata !2221, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 45, metadata !2222, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8 56, metadata !2223, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2224, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8 0, metadata !2225, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8 0, metadata !2226, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2240
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2241
  %11 = load i8, i8* %10, align 1, !dbg !2241, !tbaa !854
  %12 = and i8 %11, -33, !dbg !2241
  %13 = icmp eq i8 %12, 84, !dbg !2241
  br i1 %13, label %14, label %68, !dbg !2241

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2243, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8* null, metadata !2248, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 70, metadata !2249, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 45, metadata !2250, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8 56, metadata !2251, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 0, metadata !2252, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 0, metadata !2254, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 0, metadata !2255, metadata !DIExpression()), !dbg !2267
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2268
  %16 = load i8, i8* %15, align 1, !dbg !2268, !tbaa !854
  %17 = and i8 %16, -33, !dbg !2268
  %18 = icmp eq i8 %17, 70, !dbg !2268
  br i1 %18, label %19, label %68, !dbg !2268

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2270, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8* null, metadata !2275, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 45, metadata !2276, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 56, metadata !2277, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 0, metadata !2278, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 0, metadata !2279, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 0, metadata !2280, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2281, metadata !DIExpression()), !dbg !2292
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2293
  %21 = load i8, i8* %20, align 1, !dbg !2293, !tbaa !854
  %22 = icmp eq i8 %21, 45, !dbg !2293
  br i1 %22, label %23, label %68, !dbg !2295

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2296, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* null, metadata !2301, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 56, metadata !2302, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8 0, metadata !2303, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i8 0, metadata !2304, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2316
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2317
  %25 = load i8, i8* %24, align 1, !dbg !2317, !tbaa !854
  %26 = icmp eq i8 %25, 56, !dbg !2317
  br i1 %26, label %27, label %68, !dbg !2319

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2320, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* null, metadata !2325, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8 0, metadata !2327, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8 0, metadata !2328, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8 0, metadata !2329, metadata !DIExpression()), !dbg !2338
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2339
  %29 = load i8, i8* %28, align 1, !dbg !2339, !tbaa !854
  %30 = icmp eq i8 %29, 0, !dbg !2339
  br i1 %30, label %31, label %68, !dbg !2341

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2342, !tbaa !854
  %33 = icmp eq i8 %32, 96, !dbg !2343
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.97, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.98, i64 0, i64 0), !dbg !2342
  br label %71, !dbg !2344

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2214, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* null, metadata !2219, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 66, metadata !2220, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8 49, metadata !2221, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8 56, metadata !2222, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8 48, metadata !2223, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 51, metadata !2224, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8 48, metadata !2225, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8 0, metadata !2226, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2357
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2358
  %37 = load i8, i8* %36, align 1, !dbg !2358, !tbaa !854
  %38 = and i8 %37, -33, !dbg !2358
  %39 = icmp eq i8 %38, 66, !dbg !2358
  br i1 %39, label %40, label %68, !dbg !2358

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2243, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8* null, metadata !2248, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 49, metadata !2249, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 56, metadata !2250, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 48, metadata !2251, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 51, metadata !2252, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 48, metadata !2253, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8 0, metadata !2254, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 0, metadata !2255, metadata !DIExpression()), !dbg !2368
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2369
  %42 = load i8, i8* %41, align 1, !dbg !2369, !tbaa !854
  %43 = icmp eq i8 %42, 49, !dbg !2369
  br i1 %43, label %44, label %68, !dbg !2370

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2270, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* null, metadata !2275, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 56, metadata !2276, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 48, metadata !2277, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8 51, metadata !2278, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 48, metadata !2279, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 0, metadata !2280, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 0, metadata !2281, metadata !DIExpression()), !dbg !2379
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2380
  %46 = load i8, i8* %45, align 1, !dbg !2380, !tbaa !854
  %47 = icmp eq i8 %46, 56, !dbg !2380
  br i1 %47, label %48, label %68, !dbg !2381

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2296, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8* null, metadata !2301, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8 48, metadata !2302, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 51, metadata !2303, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 48, metadata !2304, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2389
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2390
  %50 = load i8, i8* %49, align 1, !dbg !2390, !tbaa !854
  %51 = icmp eq i8 %50, 48, !dbg !2390
  br i1 %51, label %52, label %68, !dbg !2391

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2320, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8* null, metadata !2325, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 51, metadata !2326, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 48, metadata !2327, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i8 0, metadata !2328, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 0, metadata !2329, metadata !DIExpression()), !dbg !2398
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2399
  %54 = load i8, i8* %53, align 1, !dbg !2399, !tbaa !854
  %55 = icmp eq i8 %54, 51, !dbg !2399
  br i1 %55, label %56, label %68, !dbg !2400

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2401, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* null, metadata !2406, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 48, metadata !2407, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2417
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2418
  %58 = load i8, i8* %57, align 1, !dbg !2418, !tbaa !854
  %59 = icmp eq i8 %58, 48, !dbg !2418
  br i1 %59, label %60, label %68, !dbg !2420

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2421, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* null, metadata !2426, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2435
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2436
  %62 = load i8, i8* %61, align 1, !dbg !2436, !tbaa !854
  %63 = icmp eq i8 %62, 0, !dbg !2436
  br i1 %63, label %64, label %68, !dbg !2438

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2439, !tbaa !854
  %66 = icmp eq i8 %65, 96, !dbg !2440
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.100, i64 0, i64 0), !dbg !2439
  br label %71, !dbg !2441

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2442
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !2443
  br label %71, !dbg !2444

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2445
  ret i8* %72, !dbg !2446
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2447 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2451, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i64 %1, metadata !2452, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2453, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %0, metadata !2457, metadata !DIExpression()) #12, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %1, metadata !2462, metadata !DIExpression()) #12, !dbg !2472
  call void @llvm.dbg.value(metadata i64* null, metadata !2463, metadata !DIExpression()) #12, !dbg !2473
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2464, metadata !DIExpression()) #12, !dbg !2474
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2475
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2465, metadata !DIExpression()) #12, !dbg !2476
  %6 = tail call i32* @__errno_location() #17, !dbg !2477
  %7 = load i32, i32* %6, align 4, !dbg !2477, !tbaa !827
  call void @llvm.dbg.value(metadata i32 %7, metadata !2466, metadata !DIExpression()) #12, !dbg !2478
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2479
  %9 = load i32, i32* %8, align 4, !dbg !2479, !tbaa !1551
  %10 = or i32 %9, 1, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %10, metadata !2467, metadata !DIExpression()) #12, !dbg !2481
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2482
  %12 = load i32, i32* %11, align 8, !dbg !2482, !tbaa !1491
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2483
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2484
  %15 = load i8*, i8** %14, align 8, !dbg !2484, !tbaa !1577
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2485
  %17 = load i8*, i8** %16, align 8, !dbg !2485, !tbaa !1580
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2486
  %19 = add i64 %18, 1, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %19, metadata !2468, metadata !DIExpression()) #12, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %19, metadata !2489, metadata !DIExpression()) #12, !dbg !2494
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2496
  call void @llvm.dbg.value(metadata i8* %20, metadata !2469, metadata !DIExpression()) #12, !dbg !2497
  %21 = load i32, i32* %11, align 8, !dbg !2498, !tbaa !1491
  %22 = load i8*, i8** %14, align 8, !dbg !2499, !tbaa !1577
  %23 = load i8*, i8** %16, align 8, !dbg !2500, !tbaa !1580
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2501
  store i32 %7, i32* %6, align 4, !dbg !2502, !tbaa !827
  ret i8* %20, !dbg !2503
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2458 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2457, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i64 %1, metadata !2462, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i64* %2, metadata !2463, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2464, metadata !DIExpression()), !dbg !2507
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2508
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2508
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2465, metadata !DIExpression()), !dbg !2509
  %7 = tail call i32* @__errno_location() #17, !dbg !2510
  %8 = load i32, i32* %7, align 4, !dbg !2510, !tbaa !827
  call void @llvm.dbg.value(metadata i32 %8, metadata !2466, metadata !DIExpression()), !dbg !2511
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2512
  %10 = load i32, i32* %9, align 4, !dbg !2512, !tbaa !1551
  %11 = icmp ne i64* %2, null, !dbg !2513
  %12 = xor i1 %11, true, !dbg !2513
  %13 = zext i1 %12 to i32, !dbg !2513
  %14 = or i32 %10, %13, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %14, metadata !2467, metadata !DIExpression()), !dbg !2515
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2516
  %16 = load i32, i32* %15, align 8, !dbg !2516, !tbaa !1491
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2517
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2518
  %19 = load i8*, i8** %18, align 8, !dbg !2518, !tbaa !1577
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2519
  %21 = load i8*, i8** %20, align 8, !dbg !2519, !tbaa !1580
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2520
  %23 = add i64 %22, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %23, metadata !2468, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i64 %23, metadata !2489, metadata !DIExpression()) #12, !dbg !2523
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2525
  call void @llvm.dbg.value(metadata i8* %24, metadata !2469, metadata !DIExpression()), !dbg !2526
  %25 = load i32, i32* %15, align 8, !dbg !2527, !tbaa !1491
  %26 = load i8*, i8** %18, align 8, !dbg !2528, !tbaa !1577
  %27 = load i8*, i8** %20, align 8, !dbg !2529, !tbaa !1580
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2530
  store i32 %8, i32* %7, align 4, !dbg !2531, !tbaa !827
  br i1 %11, label %29, label %30, !dbg !2532

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2533, !tbaa !907
  br label %30, !dbg !2535

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2536
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2537 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2541, !tbaa !698
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 1, metadata !2540, metadata !DIExpression()), !dbg !2543
  %2 = load i32, i32* @nslots, align 4, !dbg !2544, !tbaa !827
  %3 = icmp sgt i32 %2, 1, !dbg !2547
  br i1 %3, label %4, label %12, !dbg !2548

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2540, metadata !DIExpression()), !dbg !2543
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2549
  %7 = load i8*, i8** %6, align 8, !dbg !2549, !tbaa !2550
  tail call void @free(i8* %7) #12, !dbg !2552
  %8 = add nuw nsw i64 %5, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i32 undef, metadata !2540, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2543
  %9 = load i32, i32* @nslots, align 4, !dbg !2544, !tbaa !827
  %10 = sext i32 %9 to i64, !dbg !2547
  %11 = icmp slt i64 %8, %10, !dbg !2547
  br i1 %11, label %4, label %12, !dbg !2548, !llvm.loop !2554

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2556
  %14 = load i8*, i8** %13, align 8, !dbg !2556, !tbaa !2550
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2558
  br i1 %15, label %17, label %16, !dbg !2559

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2560
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2562, !tbaa !2563
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2564, !tbaa !2550
  br label %17, !dbg !2565

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2566
  br i1 %18, label %21, label %19, !dbg !2568

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2569
  tail call void @free(i8* %20) #12, !dbg !2571
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2572, !tbaa !698
  br label %21, !dbg !2573

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2574, !tbaa !827
  ret void, !dbg !2575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2576 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2580, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %1, metadata !2581, metadata !DIExpression()), !dbg !2583
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2584
  ret i8* %3, !dbg !2585
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2586 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2590, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %1, metadata !2591, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %2, metadata !2592, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2593, metadata !DIExpression()), !dbg !2608
  %5 = tail call i32* @__errno_location() #17, !dbg !2609
  %6 = load i32, i32* %5, align 4, !dbg !2609, !tbaa !827
  call void @llvm.dbg.value(metadata i32 %6, metadata !2594, metadata !DIExpression()), !dbg !2610
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2611, !tbaa !698
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2595, metadata !DIExpression()), !dbg !2612
  %8 = icmp slt i32 %0, 0, !dbg !2613
  br i1 %8, label %9, label %10, !dbg !2615

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2616
  unreachable, !dbg !2616

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2617, !tbaa !827
  %12 = icmp sgt i32 %11, %0, !dbg !2618
  br i1 %12, label %34, label %13, !dbg !2619

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2620
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2599, metadata !DIExpression()), !dbg !2621
  %15 = icmp eq i32 %0, 2147483647, !dbg !2622
  br i1 %15, label %16, label %17, !dbg !2624

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2625
  unreachable, !dbg !2625

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2626
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2626
  %20 = add nsw i32 %0, 1, !dbg !2627
  %21 = sext i32 %20 to i64, !dbg !2628
  %22 = shl nsw i64 %21, 4, !dbg !2629
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2630
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2595, metadata !DIExpression()), !dbg !2612
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2631, !tbaa !698
  br i1 %14, label %25, label %26, !dbg !2632

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2633, !tbaa.struct !2635
  br label %26, !dbg !2636

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2637, !tbaa !827
  %28 = sext i32 %27 to i64, !dbg !2638
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2638
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2639
  %31 = sub nsw i32 %20, %27, !dbg !2640
  %32 = sext i32 %31 to i64, !dbg !2641
  %33 = shl nsw i64 %32, 4, !dbg !2642
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2639
  store i32 %20, i32* @nslots, align 4, !dbg !2643, !tbaa !827
  br label %34, !dbg !2644

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2645
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2595, metadata !DIExpression()), !dbg !2612
  %36 = sext i32 %0 to i64, !dbg !2646
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2647
  %38 = load i64, i64* %37, align 8, !dbg !2647, !tbaa !2563
  call void @llvm.dbg.value(metadata i64 %38, metadata !2600, metadata !DIExpression()), !dbg !2648
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2649
  %40 = load i8*, i8** %39, align 8, !dbg !2649, !tbaa !2550
  call void @llvm.dbg.value(metadata i8* %40, metadata !2602, metadata !DIExpression()), !dbg !2650
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2651
  %42 = load i32, i32* %41, align 4, !dbg !2651, !tbaa !1551
  %43 = or i32 %42, 1, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %43, metadata !2603, metadata !DIExpression()), !dbg !2653
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2654
  %45 = load i32, i32* %44, align 8, !dbg !2654, !tbaa !1491
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2655
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2656
  %48 = load i8*, i8** %47, align 8, !dbg !2656, !tbaa !1577
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2657
  %50 = load i8*, i8** %49, align 8, !dbg !2657, !tbaa !1580
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %51, metadata !2604, metadata !DIExpression()), !dbg !2659
  %52 = icmp ugt i64 %38, %51, !dbg !2660
  br i1 %52, label %63, label %53, !dbg !2662

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %54, metadata !2600, metadata !DIExpression()), !dbg !2648
  store i64 %54, i64* %37, align 8, !dbg !2665, !tbaa !2563
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2666
  br i1 %55, label %57, label %56, !dbg !2668

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2669
  br label %57, !dbg !2669

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2489, metadata !DIExpression()) #12, !dbg !2670
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %58, metadata !2602, metadata !DIExpression()), !dbg !2650
  store i8* %58, i8** %39, align 8, !dbg !2673, !tbaa !2550
  %59 = load i32, i32* %44, align 8, !dbg !2674, !tbaa !1491
  %60 = load i8*, i8** %47, align 8, !dbg !2675, !tbaa !1577
  %61 = load i8*, i8** %49, align 8, !dbg !2676, !tbaa !1580
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2677
  br label %63, !dbg !2678

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2679
  call void @llvm.dbg.value(metadata i8* %64, metadata !2602, metadata !DIExpression()), !dbg !2650
  store i32 %6, i32* %5, align 4, !dbg !2680, !tbaa !827
  ret i8* %64, !dbg !2681
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2686, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %1, metadata !2687, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %2, metadata !2688, metadata !DIExpression()), !dbg !2691
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2692
  ret i8* %4, !dbg !2693
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2694 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2696, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 0, metadata !2580, metadata !DIExpression()) #12, !dbg !2698
  call void @llvm.dbg.value(metadata i8* %0, metadata !2581, metadata !DIExpression()) #12, !dbg !2700
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2701
  ret i8* %2, !dbg !2702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2703 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %1, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 0, metadata !2686, metadata !DIExpression()) #12, !dbg !2711
  call void @llvm.dbg.value(metadata i8* %0, metadata !2687, metadata !DIExpression()) #12, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %1, metadata !2688, metadata !DIExpression()) #12, !dbg !2714
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2715
  ret i8* %3, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2717 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2721, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i32 %1, metadata !2722, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()), !dbg !2727
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2728
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2728
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2724, metadata !DIExpression(DW_OP_deref)), !dbg !2729
  call void @llvm.dbg.value(metadata i32 %1, metadata !2730, metadata !DIExpression()) #12, !dbg !2736
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2738, !alias.scope !2739
  %6 = icmp eq i32 %1, 10, !dbg !2742
  br i1 %6, label %7, label %8, !dbg !2744

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2745, !noalias !2739
  unreachable, !dbg !2745

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2746
  store i32 %1, i32* %9, align 8, !dbg !2747, !tbaa !1491, !alias.scope !2739
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2724, metadata !DIExpression(DW_OP_deref)), !dbg !2729
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2735, metadata !DIExpression(DW_OP_deref)), !dbg !2738
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2748
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2749
  ret i8* %10, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2751 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %1, metadata !2756, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %2, metadata !2757, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %3, metadata !2758, metadata !DIExpression()), !dbg !2763
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2764
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2764
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %1, metadata !2730, metadata !DIExpression()) #12, !dbg !2766
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !2768, !alias.scope !2769
  %7 = icmp eq i32 %1, 10, !dbg !2772
  br i1 %7, label %8, label %9, !dbg !2773

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2774, !noalias !2769
  unreachable, !dbg !2774

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2775
  store i32 %1, i32* %10, align 8, !dbg !2776, !tbaa !1491, !alias.scope !2769
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2735, metadata !DIExpression(DW_OP_deref)), !dbg !2768
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2778
  ret i8* %11, !dbg !2779
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2780 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %1, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 0, metadata !2721, metadata !DIExpression()) #12, !dbg !2788
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()) #12, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %1, metadata !2723, metadata !DIExpression()) #12, !dbg !2791
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2724, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %0, metadata !2730, metadata !DIExpression()) #12, !dbg !2794
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !2796, !alias.scope !2797
  %5 = icmp eq i32 %0, 10, !dbg !2800
  br i1 %5, label %6, label %7, !dbg !2801

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2802, !noalias !2797
  unreachable, !dbg !2802

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2803
  store i32 %0, i32* %8, align 8, !dbg !2804, !tbaa !1491, !alias.scope !2797
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2724, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2793
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2735, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2796
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2805
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2806
  ret i8* %9, !dbg !2807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2808 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2812, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* %1, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %2, metadata !2814, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 0, metadata !2755, metadata !DIExpression()) #12, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()) #12, !dbg !2820
  call void @llvm.dbg.value(metadata i8* %1, metadata !2757, metadata !DIExpression()) #12, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %2, metadata !2758, metadata !DIExpression()) #12, !dbg !2822
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2823
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2823
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2759, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2824
  call void @llvm.dbg.value(metadata i32 %0, metadata !2730, metadata !DIExpression()) #12, !dbg !2825
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2827, !alias.scope !2828
  %6 = icmp eq i32 %0, 10, !dbg !2831
  br i1 %6, label %7, label %8, !dbg !2832

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2833, !noalias !2828
  unreachable, !dbg !2833

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2834
  store i32 %0, i32* %9, align 8, !dbg !2835, !tbaa !1491, !alias.scope !2828
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2759, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2735, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2827
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2836
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2837
  ret i8* %10, !dbg !2838
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2839 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2843, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %1, metadata !2844, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 %2, metadata !2845, metadata !DIExpression()), !dbg !2849
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2850
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2850
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2851, !tbaa.struct !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2846, metadata !DIExpression(DW_OP_deref)), !dbg !2853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1510, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 %2, metadata !1511, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 1, metadata !1512, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 %2, metadata !1513, metadata !DIExpression()), !dbg !2858
  %6 = lshr i8 %2, 5, !dbg !2859
  %7 = zext i8 %6 to i64, !dbg !2859
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2860
  call void @llvm.dbg.value(metadata i32* %8, metadata !1515, metadata !DIExpression()), !dbg !2861
  %9 = and i8 %2, 31, !dbg !2862
  %10 = zext i8 %9 to i32, !dbg !2862
  call void @llvm.dbg.value(metadata i32 %10, metadata !1517, metadata !DIExpression()), !dbg !2863
  %11 = load i32, i32* %8, align 4, !dbg !2864, !tbaa !827
  %12 = lshr i32 %11, %10, !dbg !2865
  %13 = and i32 %12, 1, !dbg !2866
  call void @llvm.dbg.value(metadata i32 %13, metadata !1518, metadata !DIExpression()), !dbg !2867
  %14 = xor i32 %13, 1, !dbg !2868
  %15 = shl i32 %14, %10, !dbg !2869
  %16 = xor i32 %15, %11, !dbg !2870
  store i32 %16, i32* %8, align 4, !dbg !2870, !tbaa !827
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2846, metadata !DIExpression(DW_OP_deref)), !dbg !2853
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2871
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2872
  ret i8* %17, !dbg !2873
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2874 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2878, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %1, metadata !2879, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %0, metadata !2843, metadata !DIExpression()) #12, !dbg !2882
  call void @llvm.dbg.value(metadata i64 -1, metadata !2844, metadata !DIExpression()) #12, !dbg !2884
  call void @llvm.dbg.value(metadata i8 %1, metadata !2845, metadata !DIExpression()) #12, !dbg !2885
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2886
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2887, !tbaa.struct !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2846, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1510, metadata !DIExpression()) #12, !dbg !2889
  call void @llvm.dbg.value(metadata i8 %1, metadata !1511, metadata !DIExpression()) #12, !dbg !2891
  call void @llvm.dbg.value(metadata i32 1, metadata !1512, metadata !DIExpression()) #12, !dbg !2892
  call void @llvm.dbg.value(metadata i8 %1, metadata !1513, metadata !DIExpression()) #12, !dbg !2893
  %5 = lshr i8 %1, 5, !dbg !2894
  %6 = zext i8 %5 to i64, !dbg !2894
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2895
  call void @llvm.dbg.value(metadata i32* %7, metadata !1515, metadata !DIExpression()) #12, !dbg !2896
  %8 = and i8 %1, 31, !dbg !2897
  %9 = zext i8 %8 to i32, !dbg !2897
  call void @llvm.dbg.value(metadata i32 %9, metadata !1517, metadata !DIExpression()) #12, !dbg !2898
  %10 = load i32, i32* %7, align 4, !dbg !2899, !tbaa !827
  %11 = lshr i32 %10, %9, !dbg !2900
  %12 = and i32 %11, 1, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %12, metadata !1518, metadata !DIExpression()) #12, !dbg !2902
  %13 = xor i32 %12, 1, !dbg !2903
  %14 = shl i32 %13, %9, !dbg !2904
  %15 = xor i32 %14, %10, !dbg !2905
  store i32 %15, i32* %7, align 4, !dbg !2905, !tbaa !827
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2846, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2888
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2907
  ret i8* %16, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2909 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2911, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %0, metadata !2878, metadata !DIExpression()) #12, !dbg !2913
  call void @llvm.dbg.value(metadata i8 58, metadata !2879, metadata !DIExpression()) #12, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %0, metadata !2843, metadata !DIExpression()) #12, !dbg !2916
  call void @llvm.dbg.value(metadata i64 -1, metadata !2844, metadata !DIExpression()) #12, !dbg !2918
  call void @llvm.dbg.value(metadata i8 58, metadata !2845, metadata !DIExpression()) #12, !dbg !2919
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2920
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2921, !tbaa.struct !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2846, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2922
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1510, metadata !DIExpression()) #12, !dbg !2923
  call void @llvm.dbg.value(metadata i8 58, metadata !1511, metadata !DIExpression()) #12, !dbg !2925
  call void @llvm.dbg.value(metadata i32 1, metadata !1512, metadata !DIExpression()) #12, !dbg !2926
  call void @llvm.dbg.value(metadata i8 58, metadata !1513, metadata !DIExpression()) #12, !dbg !2927
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2928
  call void @llvm.dbg.value(metadata i32* %4, metadata !1515, metadata !DIExpression()) #12, !dbg !2929
  call void @llvm.dbg.value(metadata i32 26, metadata !1517, metadata !DIExpression()) #12, !dbg !2930
  %5 = load i32, i32* %4, align 4, !dbg !2931, !tbaa !827
  %6 = or i32 %5, 67108864, !dbg !2932
  store i32 %6, i32* %4, align 4, !dbg !2932, !tbaa !827
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2846, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2922
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2933
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2934
  ret i8* %7, !dbg !2935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2936 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2938, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %1, metadata !2939, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* %0, metadata !2843, metadata !DIExpression()) #12, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %1, metadata !2844, metadata !DIExpression()) #12, !dbg !2944
  call void @llvm.dbg.value(metadata i8 58, metadata !2845, metadata !DIExpression()) #12, !dbg !2945
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2947, !tbaa.struct !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2846, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1510, metadata !DIExpression()) #12, !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !1511, metadata !DIExpression()) #12, !dbg !2951
  call void @llvm.dbg.value(metadata i32 1, metadata !1512, metadata !DIExpression()) #12, !dbg !2952
  call void @llvm.dbg.value(metadata i8 58, metadata !1513, metadata !DIExpression()) #12, !dbg !2953
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2954
  call void @llvm.dbg.value(metadata i32* %5, metadata !1515, metadata !DIExpression()) #12, !dbg !2955
  call void @llvm.dbg.value(metadata i32 26, metadata !1517, metadata !DIExpression()) #12, !dbg !2956
  %6 = load i32, i32* %5, align 4, !dbg !2957, !tbaa !827
  %7 = or i32 %6, 67108864, !dbg !2958
  store i32 %7, i32* %5, align 4, !dbg !2958, !tbaa !827
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2846, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2948
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2960
  ret i8* %8, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2962 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2735, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2968
  call void @llvm.dbg.value(metadata i32 %0, metadata !2964, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 %1, metadata !2965, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %2, metadata !2966, metadata !DIExpression()), !dbg !2972
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2973
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2973
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2974
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2974
  call void @llvm.dbg.value(metadata i32 %1, metadata !2730, metadata !DIExpression()) #12, !dbg !2975
  call void @llvm.dbg.value(metadata i32 0, metadata !2735, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2968
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2968, !alias.scope !2976
  %8 = icmp eq i32 %1, 10, !dbg !2979
  br i1 %8, label %9, label %10, !dbg !2980

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2981, !noalias !2976
  unreachable, !dbg !2981

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2735, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2968
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2974
  store i32 %1, i32* %11, align 8, !dbg !2974
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2974
  %13 = bitcast i32* %12 to i8*, !dbg !2974
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2974
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2974
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2967, metadata !DIExpression(DW_OP_deref)), !dbg !2982
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1510, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 58, metadata !1511, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 1, metadata !1512, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 58, metadata !1513, metadata !DIExpression()), !dbg !2987
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2988
  call void @llvm.dbg.value(metadata i32* %14, metadata !1515, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i32 26, metadata !1517, metadata !DIExpression()), !dbg !2990
  %15 = load i32, i32* %14, align 4, !dbg !2991, !tbaa !827
  %16 = or i32 %15, 67108864, !dbg !2992
  store i32 %16, i32* %14, align 4, !dbg !2992, !tbaa !827
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2967, metadata !DIExpression(DW_OP_deref)), !dbg !2982
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2993
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2994
  ret i8* %17, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2996 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3000, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %1, metadata !3001, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8* %2, metadata !3002, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* %3, metadata !3003, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %0, metadata !3008, metadata !DIExpression()) #12, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %1, metadata !3013, metadata !DIExpression()) #12, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %2, metadata !3014, metadata !DIExpression()) #12, !dbg !3021
  call void @llvm.dbg.value(metadata i8* %3, metadata !3015, metadata !DIExpression()) #12, !dbg !3022
  call void @llvm.dbg.value(metadata i64 -1, metadata !3016, metadata !DIExpression()) #12, !dbg !3023
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3024
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3024
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3025, !tbaa.struct !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3017, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3026
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1559, metadata !DIExpression()) #12, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %1, metadata !1560, metadata !DIExpression()) #12, !dbg !3029
  call void @llvm.dbg.value(metadata i8* %2, metadata !1561, metadata !DIExpression()) #12, !dbg !3030
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1559, metadata !DIExpression()) #12, !dbg !3027
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3031
  store i32 10, i32* %7, align 8, !dbg !3032, !tbaa !1491
  %8 = icmp ne i8* %1, null, !dbg !3033
  %9 = icmp ne i8* %2, null, !dbg !3034
  %10 = and i1 %8, %9, !dbg !3035
  br i1 %10, label %12, label %11, !dbg !3035

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3036
  unreachable, !dbg !3036

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3037
  store i8* %1, i8** %13, align 8, !dbg !3038, !tbaa !1577
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3039
  store i8* %2, i8** %14, align 8, !dbg !3040, !tbaa !1580
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3017, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3026
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3042
  ret i8* %15, !dbg !3043
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3009 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3008, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8* %1, metadata !3013, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %2, metadata !3014, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i8* %3, metadata !3015, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %4, metadata !3016, metadata !DIExpression()), !dbg !3048
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3049
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3050, !tbaa.struct !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3051
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1559, metadata !DIExpression()) #12, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %1, metadata !1560, metadata !DIExpression()) #12, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %2, metadata !1561, metadata !DIExpression()) #12, !dbg !3055
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1559, metadata !DIExpression()) #12, !dbg !3052
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3056
  store i32 10, i32* %8, align 8, !dbg !3057, !tbaa !1491
  %9 = icmp ne i8* %1, null, !dbg !3058
  %10 = icmp ne i8* %2, null, !dbg !3059
  %11 = and i1 %9, %10, !dbg !3060
  br i1 %11, label %13, label %12, !dbg !3060

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3061
  unreachable, !dbg !3061

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3062
  store i8* %1, i8** %14, align 8, !dbg !3063, !tbaa !1577
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3064
  store i8* %2, i8** %15, align 8, !dbg !3065, !tbaa !1580
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3051
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3066
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3067
  ret i8* %16, !dbg !3068
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3069 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3073, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8* %1, metadata !3074, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8* %2, metadata !3075, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 0, metadata !3000, metadata !DIExpression()) #12, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()) #12, !dbg !3081
  call void @llvm.dbg.value(metadata i8* %1, metadata !3002, metadata !DIExpression()) #12, !dbg !3082
  call void @llvm.dbg.value(metadata i8* %2, metadata !3003, metadata !DIExpression()) #12, !dbg !3083
  call void @llvm.dbg.value(metadata i32 0, metadata !3008, metadata !DIExpression()) #12, !dbg !3084
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()) #12, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()) #12, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %2, metadata !3015, metadata !DIExpression()) #12, !dbg !3088
  call void @llvm.dbg.value(metadata i64 -1, metadata !3016, metadata !DIExpression()) #12, !dbg !3089
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3090
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3090
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3091, !tbaa.struct !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3017, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3092
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1559, metadata !DIExpression()) #12, !dbg !3093
  call void @llvm.dbg.value(metadata i8* %0, metadata !1560, metadata !DIExpression()) #12, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %1, metadata !1561, metadata !DIExpression()) #12, !dbg !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1559, metadata !DIExpression()) #12, !dbg !3093
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3097
  store i32 10, i32* %6, align 8, !dbg !3098, !tbaa !1491
  %7 = icmp ne i8* %0, null, !dbg !3099
  %8 = icmp ne i8* %1, null, !dbg !3100
  %9 = and i1 %7, %8, !dbg !3101
  br i1 %9, label %11, label %10, !dbg !3101

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3102
  unreachable, !dbg !3102

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3103
  store i8* %0, i8** %12, align 8, !dbg !3104, !tbaa !1577
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3105
  store i8* %1, i8** %13, align 8, !dbg !3106, !tbaa !1580
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3017, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3092
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3107
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3108
  ret i8* %14, !dbg !3109
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3110 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3114, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8* %1, metadata !3115, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %2, metadata !3116, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %3, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 0, metadata !3008, metadata !DIExpression()) #12, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()) #12, !dbg !3124
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()) #12, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %2, metadata !3015, metadata !DIExpression()) #12, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %3, metadata !3016, metadata !DIExpression()) #12, !dbg !3127
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3128
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3129, !tbaa.struct !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3017, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3130
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1559, metadata !DIExpression()) #12, !dbg !3131
  call void @llvm.dbg.value(metadata i8* %0, metadata !1560, metadata !DIExpression()) #12, !dbg !3133
  call void @llvm.dbg.value(metadata i8* %1, metadata !1561, metadata !DIExpression()) #12, !dbg !3134
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1559, metadata !DIExpression()) #12, !dbg !3131
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3135
  store i32 10, i32* %7, align 8, !dbg !3136, !tbaa !1491
  %8 = icmp ne i8* %0, null, !dbg !3137
  %9 = icmp ne i8* %1, null, !dbg !3138
  %10 = and i1 %8, %9, !dbg !3139
  br i1 %10, label %12, label %11, !dbg !3139

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3140
  unreachable, !dbg !3140

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3141
  store i8* %0, i8** %13, align 8, !dbg !3142, !tbaa !1577
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3143
  store i8* %1, i8** %14, align 8, !dbg !3144, !tbaa !1580
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3017, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3130
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3145
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3146
  ret i8* %15, !dbg !3147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3148 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8* %1, metadata !3153, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %2, metadata !3154, metadata !DIExpression()), !dbg !3157
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3158
  ret i8* %4, !dbg !3159
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3160 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3164, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 0, metadata !3152, metadata !DIExpression()) #12, !dbg !3168
  call void @llvm.dbg.value(metadata i8* %0, metadata !3153, metadata !DIExpression()) #12, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3154, metadata !DIExpression()) #12, !dbg !3171
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3172
  ret i8* %3, !dbg !3173
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %1, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()) #12, !dbg !3182
  call void @llvm.dbg.value(metadata i8* %1, metadata !3153, metadata !DIExpression()) #12, !dbg !3184
  call void @llvm.dbg.value(metadata i64 -1, metadata !3154, metadata !DIExpression()) #12, !dbg !3185
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3186
  ret i8* %3, !dbg !3187
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3188 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3192, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 0, metadata !3178, metadata !DIExpression()) #12, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %0, metadata !3179, metadata !DIExpression()) #12, !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3152, metadata !DIExpression()) #12, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %0, metadata !3153, metadata !DIExpression()) #12, !dbg !3199
  call void @llvm.dbg.value(metadata i64 -1, metadata !3154, metadata !DIExpression()) #12, !dbg !3200
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3201
  ret i8* %2, !dbg !3202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3203 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3259, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8* %2, metadata !3261, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8* %3, metadata !3262, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8** %4, metadata !3263, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %5, metadata !3264, metadata !DIExpression()), !dbg !3270
  %7 = icmp eq i8* %1, null, !dbg !3271
  br i1 %7, label %10, label %8, !dbg !3273

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3274
  br label %12, !dbg !3274

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.106, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3275
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.107, i64 0, i64 0), i32 5) #12, !dbg !3276
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3276
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.108, i64 0, i64 0), i32 5) #12, !dbg !3277
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3277
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ], !dbg !3278

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3279
  unreachable, !dbg !3279

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.109, i64 0, i64 0), i32 5) #12, !dbg !3281
  %20 = load i8*, i8** %4, align 8, !dbg !3281, !tbaa !698
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3281
  br label %146, !dbg !3282

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.110, i64 0, i64 0), i32 5) #12, !dbg !3283
  %24 = load i8*, i8** %4, align 8, !dbg !3283, !tbaa !698
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3283
  %26 = load i8*, i8** %25, align 8, !dbg !3283, !tbaa !698
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3283
  br label %146, !dbg !3284

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.111, i64 0, i64 0), i32 5) #12, !dbg !3285
  %30 = load i8*, i8** %4, align 8, !dbg !3285, !tbaa !698
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3285
  %32 = load i8*, i8** %31, align 8, !dbg !3285, !tbaa !698
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3285
  %34 = load i8*, i8** %33, align 8, !dbg !3285, !tbaa !698
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3285
  br label %146, !dbg !3286

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.112, i64 0, i64 0), i32 5) #12, !dbg !3287
  %38 = load i8*, i8** %4, align 8, !dbg !3287, !tbaa !698
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3287
  %40 = load i8*, i8** %39, align 8, !dbg !3287, !tbaa !698
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3287
  %42 = load i8*, i8** %41, align 8, !dbg !3287, !tbaa !698
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3287
  %44 = load i8*, i8** %43, align 8, !dbg !3287, !tbaa !698
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3287
  br label %146, !dbg !3288

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.113, i64 0, i64 0), i32 5) #12, !dbg !3289
  %48 = load i8*, i8** %4, align 8, !dbg !3289, !tbaa !698
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3289
  %50 = load i8*, i8** %49, align 8, !dbg !3289, !tbaa !698
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3289
  %52 = load i8*, i8** %51, align 8, !dbg !3289, !tbaa !698
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3289
  %54 = load i8*, i8** %53, align 8, !dbg !3289, !tbaa !698
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3289
  %56 = load i8*, i8** %55, align 8, !dbg !3289, !tbaa !698
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3289
  br label %146, !dbg !3290

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.114, i64 0, i64 0), i32 5) #12, !dbg !3291
  %60 = load i8*, i8** %4, align 8, !dbg !3291, !tbaa !698
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3291
  %62 = load i8*, i8** %61, align 8, !dbg !3291, !tbaa !698
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3291
  %64 = load i8*, i8** %63, align 8, !dbg !3291, !tbaa !698
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3291
  %66 = load i8*, i8** %65, align 8, !dbg !3291, !tbaa !698
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3291
  %68 = load i8*, i8** %67, align 8, !dbg !3291, !tbaa !698
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3291
  %70 = load i8*, i8** %69, align 8, !dbg !3291, !tbaa !698
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3291
  br label %146, !dbg !3292

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.115, i64 0, i64 0), i32 5) #12, !dbg !3293
  %74 = load i8*, i8** %4, align 8, !dbg !3293, !tbaa !698
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3293
  %76 = load i8*, i8** %75, align 8, !dbg !3293, !tbaa !698
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3293
  %78 = load i8*, i8** %77, align 8, !dbg !3293, !tbaa !698
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3293
  %80 = load i8*, i8** %79, align 8, !dbg !3293, !tbaa !698
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3293
  %82 = load i8*, i8** %81, align 8, !dbg !3293, !tbaa !698
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3293
  %84 = load i8*, i8** %83, align 8, !dbg !3293, !tbaa !698
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3293
  %86 = load i8*, i8** %85, align 8, !dbg !3293, !tbaa !698
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3293
  br label %146, !dbg !3294

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.116, i64 0, i64 0), i32 5) #12, !dbg !3295
  %90 = load i8*, i8** %4, align 8, !dbg !3295, !tbaa !698
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3295
  %92 = load i8*, i8** %91, align 8, !dbg !3295, !tbaa !698
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3295
  %94 = load i8*, i8** %93, align 8, !dbg !3295, !tbaa !698
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3295
  %96 = load i8*, i8** %95, align 8, !dbg !3295, !tbaa !698
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3295
  %98 = load i8*, i8** %97, align 8, !dbg !3295, !tbaa !698
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3295
  %100 = load i8*, i8** %99, align 8, !dbg !3295, !tbaa !698
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3295
  %102 = load i8*, i8** %101, align 8, !dbg !3295, !tbaa !698
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3295
  %104 = load i8*, i8** %103, align 8, !dbg !3295, !tbaa !698
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3295
  br label %146, !dbg !3296

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.117, i64 0, i64 0), i32 5) #12, !dbg !3297
  %108 = load i8*, i8** %4, align 8, !dbg !3297, !tbaa !698
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3297
  %110 = load i8*, i8** %109, align 8, !dbg !3297, !tbaa !698
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3297
  %112 = load i8*, i8** %111, align 8, !dbg !3297, !tbaa !698
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3297
  %114 = load i8*, i8** %113, align 8, !dbg !3297, !tbaa !698
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3297
  %116 = load i8*, i8** %115, align 8, !dbg !3297, !tbaa !698
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3297
  %118 = load i8*, i8** %117, align 8, !dbg !3297, !tbaa !698
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3297
  %120 = load i8*, i8** %119, align 8, !dbg !3297, !tbaa !698
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3297
  %122 = load i8*, i8** %121, align 8, !dbg !3297, !tbaa !698
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3297
  %124 = load i8*, i8** %123, align 8, !dbg !3297, !tbaa !698
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3297
  br label %146, !dbg !3298

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.118, i64 0, i64 0), i32 5) #12, !dbg !3299
  %128 = load i8*, i8** %4, align 8, !dbg !3299, !tbaa !698
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3299
  %130 = load i8*, i8** %129, align 8, !dbg !3299, !tbaa !698
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3299
  %132 = load i8*, i8** %131, align 8, !dbg !3299, !tbaa !698
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3299
  %134 = load i8*, i8** %133, align 8, !dbg !3299, !tbaa !698
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3299
  %136 = load i8*, i8** %135, align 8, !dbg !3299, !tbaa !698
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3299
  %138 = load i8*, i8** %137, align 8, !dbg !3299, !tbaa !698
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3299
  %140 = load i8*, i8** %139, align 8, !dbg !3299, !tbaa !698
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3299
  %142 = load i8*, i8** %141, align 8, !dbg !3299, !tbaa !698
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3299
  %144 = load i8*, i8** %143, align 8, !dbg !3299, !tbaa !698
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3299
  br label %146, !dbg !3300

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3302 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3306, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8* %1, metadata !3307, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8* %2, metadata !3308, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* %3, metadata !3309, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8** %4, metadata !3310, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 0, metadata !3311, metadata !DIExpression()), !dbg !3317
  br label %6, !dbg !3318

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3320
  call void @llvm.dbg.value(metadata i64 %7, metadata !3311, metadata !DIExpression()), !dbg !3317
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3322
  %9 = load i8*, i8** %8, align 8, !dbg !3322, !tbaa !698
  %10 = icmp eq i8* %9, null, !dbg !3323
  %11 = add i64 %7, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %11, metadata !3311, metadata !DIExpression()), !dbg !3317
  br i1 %10, label %12, label %6, !dbg !3323, !llvm.loop !3325

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3311, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3311, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3311, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3311, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3311, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3311, metadata !DIExpression()), !dbg !3317
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3327
  ret void, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3329 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3340, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %1, metadata !3341, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* %2, metadata !3342, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %3, metadata !3343, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3344, metadata !DIExpression()), !dbg !3352
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3353
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3353
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3346, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 0, metadata !3345, metadata !DIExpression()), !dbg !3355
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3345, metadata !DIExpression()), !dbg !3355
  %11 = load i32, i32* %8, align 8, !dbg !3356
  %12 = icmp ult i32 %11, 41, !dbg !3356
  br i1 %12, label %13, label %18, !dbg !3356

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3356
  %15 = sext i32 %11 to i64, !dbg !3356
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3356
  %17 = add i32 %11, 8, !dbg !3356
  store i32 %17, i32* %8, align 8, !dbg !3356
  br label %21, !dbg !3356

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3356
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3356
  store i8* %20, i8** %10, align 8, !dbg !3356
  br label %21, !dbg !3356

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3356
  %25 = load i8*, i8** %24, align 8, !dbg !3356
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3359
  store i8* %25, i8** %26, align 16, !dbg !3360, !tbaa !698
  %27 = icmp eq i8* %25, null, !dbg !3361
  br i1 %27, label %30, label %28, !dbg !3362

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 1, metadata !3345, metadata !DIExpression()), !dbg !3355
  %29 = icmp ult i32 %22, 41, !dbg !3356
  br i1 %29, label %35, label %32, !dbg !3356

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3363
  call void @llvm.dbg.value(metadata i64 %31, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %31, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3364
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3365
  ret void, !dbg !3365

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3356
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3356
  store i8* %34, i8** %10, align 8, !dbg !3356
  br label %40, !dbg !3356

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3356
  %37 = sext i32 %22 to i64, !dbg !3356
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3356
  %39 = add i32 %22, 8, !dbg !3356
  store i32 %39, i32* %8, align 8, !dbg !3356
  br label %40, !dbg !3356

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3356
  %44 = load i8*, i8** %43, align 8, !dbg !3356
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3359
  store i8* %44, i8** %45, align 8, !dbg !3360, !tbaa !698
  %46 = icmp eq i8* %44, null, !dbg !3361
  br i1 %46, label %30, label %47, !dbg !3362

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 2, metadata !3345, metadata !DIExpression()), !dbg !3355
  %48 = icmp ult i32 %41, 41, !dbg !3356
  br i1 %48, label %52, label %49, !dbg !3356

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3356
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3356
  store i8* %51, i8** %10, align 8, !dbg !3356
  br label %57, !dbg !3356

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3356
  %54 = sext i32 %41 to i64, !dbg !3356
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3356
  %56 = add i32 %41, 8, !dbg !3356
  store i32 %56, i32* %8, align 8, !dbg !3356
  br label %57, !dbg !3356

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3356
  %61 = load i8*, i8** %60, align 8, !dbg !3356
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3359
  store i8* %61, i8** %62, align 16, !dbg !3360, !tbaa !698
  %63 = icmp eq i8* %61, null, !dbg !3361
  br i1 %63, label %30, label %64, !dbg !3362

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 3, metadata !3345, metadata !DIExpression()), !dbg !3355
  %65 = icmp ult i32 %58, 41, !dbg !3356
  br i1 %65, label %69, label %66, !dbg !3356

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3356
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3356
  store i8* %68, i8** %10, align 8, !dbg !3356
  br label %74, !dbg !3356

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3356
  %71 = sext i32 %58 to i64, !dbg !3356
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3356
  %73 = add i32 %58, 8, !dbg !3356
  store i32 %73, i32* %8, align 8, !dbg !3356
  br label %74, !dbg !3356

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3356
  %78 = load i8*, i8** %77, align 8, !dbg !3356
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3359
  store i8* %78, i8** %79, align 8, !dbg !3360, !tbaa !698
  %80 = icmp eq i8* %78, null, !dbg !3361
  br i1 %80, label %30, label %81, !dbg !3362

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 4, metadata !3345, metadata !DIExpression()), !dbg !3355
  %82 = icmp ult i32 %75, 41, !dbg !3356
  br i1 %82, label %86, label %83, !dbg !3356

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3356
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3356
  store i8* %85, i8** %10, align 8, !dbg !3356
  br label %91, !dbg !3356

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3356
  %88 = sext i32 %75 to i64, !dbg !3356
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3356
  %90 = add i32 %75, 8, !dbg !3356
  store i32 %90, i32* %8, align 8, !dbg !3356
  br label %91, !dbg !3356

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3356
  %95 = load i8*, i8** %94, align 8, !dbg !3356
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3359
  store i8* %95, i8** %96, align 16, !dbg !3360, !tbaa !698
  %97 = icmp eq i8* %95, null, !dbg !3361
  br i1 %97, label %30, label %98, !dbg !3362

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 5, metadata !3345, metadata !DIExpression()), !dbg !3355
  %99 = icmp ult i32 %92, 41, !dbg !3356
  br i1 %99, label %103, label %100, !dbg !3356

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3356
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3356
  store i8* %102, i8** %10, align 8, !dbg !3356
  br label %108, !dbg !3356

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3356
  %105 = sext i32 %92 to i64, !dbg !3356
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3356
  %107 = add i32 %92, 8, !dbg !3356
  store i32 %107, i32* %8, align 8, !dbg !3356
  br label %108, !dbg !3356

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3356
  %111 = load i8*, i8** %110, align 8, !dbg !3356
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3359
  store i8* %111, i8** %112, align 8, !dbg !3360, !tbaa !698
  %113 = icmp eq i8* %111, null, !dbg !3361
  br i1 %113, label %30, label %114, !dbg !3362

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 6, metadata !3345, metadata !DIExpression()), !dbg !3355
  %115 = load i8*, i8** %10, align 8, !dbg !3356
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3356
  store i8* %116, i8** %10, align 8, !dbg !3356
  %117 = bitcast i8* %115 to i8**, !dbg !3356
  %118 = load i8*, i8** %117, align 8, !dbg !3356
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3359
  store i8* %118, i8** %119, align 16, !dbg !3360, !tbaa !698
  %120 = icmp eq i8* %118, null, !dbg !3361
  br i1 %120, label %30, label %121, !dbg !3362

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 7, metadata !3345, metadata !DIExpression()), !dbg !3355
  %122 = load i8*, i8** %10, align 8, !dbg !3356
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3356
  store i8* %123, i8** %10, align 8, !dbg !3356
  %124 = bitcast i8* %122 to i8**, !dbg !3356
  %125 = load i8*, i8** %124, align 8, !dbg !3356
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3359
  store i8* %125, i8** %126, align 8, !dbg !3360, !tbaa !698
  %127 = icmp eq i8* %125, null, !dbg !3361
  br i1 %127, label %30, label %128, !dbg !3362

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 8, metadata !3345, metadata !DIExpression()), !dbg !3355
  %129 = load i8*, i8** %10, align 8, !dbg !3356
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3356
  store i8* %130, i8** %10, align 8, !dbg !3356
  %131 = bitcast i8* %129 to i8**, !dbg !3356
  %132 = load i8*, i8** %131, align 8, !dbg !3356
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3359
  store i8* %132, i8** %133, align 16, !dbg !3360, !tbaa !698
  %134 = icmp eq i8* %132, null, !dbg !3361
  br i1 %134, label %30, label %135, !dbg !3362

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3345, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 9, metadata !3345, metadata !DIExpression()), !dbg !3355
  %136 = load i8*, i8** %10, align 8, !dbg !3356
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3356
  store i8* %137, i8** %10, align 8, !dbg !3356
  %138 = bitcast i8* %136 to i8**, !dbg !3356
  %139 = load i8*, i8** %138, align 8, !dbg !3356
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3359
  store i8* %139, i8** %140, align 8, !dbg !3360, !tbaa !698
  %141 = icmp eq i8* %139, null, !dbg !3361
  %142 = select i1 %141, i64 9, i64 10, !dbg !3362
  br label %30, !dbg !3362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3366 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3370, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8* %1, metadata !3371, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %2, metadata !3372, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8* %3, metadata !3373, metadata !DIExpression()), !dbg !3384
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3385
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3385
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3374, metadata !DIExpression()), !dbg !3386
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3387
  call void @llvm.va_start(i8* nonnull %6), !dbg !3387
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3388
  call void @llvm.va_end(i8* nonnull %6), !dbg !3389
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3390
  ret void, !dbg !3390
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3391 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.121, i64 0, i64 0), i32 5) #12, !dbg !3392
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.122, i64 0, i64 0)) #12, !dbg !3392
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !3393
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.123, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.124, i64 0, i64 0)) #12, !dbg !3393
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.125, i64 0, i64 0), i32 5) #12, !dbg !3394
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3394, !tbaa !698
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3394
  ret void, !dbg !3395
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3396 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %1, metadata !3401, metadata !DIExpression()), !dbg !3403
  %3 = udiv i64 9223372036854775807, %1, !dbg !3404
  %4 = icmp ult i64 %3, %0, !dbg !3404
  br i1 %4, label %5, label %6, !dbg !3406

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3407
  unreachable, !dbg !3407

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %7, metadata !3409, metadata !DIExpression()) #12, !dbg !3414
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %8, metadata !3413, metadata !DIExpression()) #12, !dbg !3417
  %9 = icmp eq i8* %8, null, !dbg !3418
  %10 = icmp ne i64 %7, 0, !dbg !3420
  %11 = and i1 %10, %9, !dbg !3421
  br i1 %11, label %12, label %13, !dbg !3421

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3422
  unreachable, !dbg !3422

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3410 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3409, metadata !DIExpression()), !dbg !3424
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %2, metadata !3413, metadata !DIExpression()), !dbg !3426
  %3 = icmp eq i8* %2, null, !dbg !3427
  %4 = icmp ne i64 %0, 0, !dbg !3428
  %5 = and i1 %4, %3, !dbg !3429
  br i1 %5, label %6, label %7, !dbg !3429

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3430
  unreachable, !dbg !3430

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3431
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3432 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %1, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %2, metadata !3438, metadata !DIExpression()), !dbg !3441
  %4 = udiv i64 9223372036854775807, %2, !dbg !3442
  %5 = icmp ult i64 %4, %1, !dbg !3442
  br i1 %5, label %6, label %7, !dbg !3444

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3445
  unreachable, !dbg !3445

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3446
  call void @llvm.dbg.value(metadata i8* %0, metadata !3447, metadata !DIExpression()) #12, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %8, metadata !3450, metadata !DIExpression()) #12, !dbg !3453
  %9 = icmp eq i64 %8, 0, !dbg !3454
  %10 = icmp ne i8* %0, null, !dbg !3456
  %11 = and i1 %10, %9, !dbg !3457
  br i1 %11, label %12, label %13, !dbg !3457

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3458
  br label %19, !dbg !3460

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %14, metadata !3447, metadata !DIExpression()) #12, !dbg !3451
  %15 = icmp eq i8* %14, null, !dbg !3462
  %16 = icmp ne i64 %8, 0, !dbg !3464
  %17 = and i1 %16, %15, !dbg !3465
  br i1 %17, label %18, label %19, !dbg !3465

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3466
  unreachable, !dbg !3466

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3467
  ret i8* %20, !dbg !3468
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3448 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3447, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()), !dbg !3470
  %3 = icmp eq i64 %1, 0, !dbg !3471
  %4 = icmp ne i8* %0, null, !dbg !3472
  %5 = and i1 %4, %3, !dbg !3473
  br i1 %5, label %6, label %7, !dbg !3473

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3474
  br label %13, !dbg !3475

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3476
  call void @llvm.dbg.value(metadata i8* %8, metadata !3447, metadata !DIExpression()), !dbg !3469
  %9 = icmp eq i8* %8, null, !dbg !3477
  %10 = icmp ne i64 %1, 0, !dbg !3478
  %11 = and i1 %10, %9, !dbg !3479
  br i1 %11, label %12, label %13, !dbg !3479

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3480
  unreachable, !dbg !3480

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3481
  ret i8* %14, !dbg !3482
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !231 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !236, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64* %1, metadata !237, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %2, metadata !238, metadata !DIExpression()), !dbg !3485
  %4 = load i64, i64* %1, align 8, !dbg !3486, !tbaa !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !239, metadata !DIExpression()), !dbg !3487
  %5 = icmp eq i8* %0, null, !dbg !3488
  br i1 %5, label %6, label %20, !dbg !3490

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3491
  br i1 %7, label %8, label %13, !dbg !3494

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3495
  call void @llvm.dbg.value(metadata i64 %9, metadata !239, metadata !DIExpression()), !dbg !3487
  %10 = icmp ugt i64 %2, 128, !dbg !3497
  %11 = zext i1 %10 to i64, !dbg !3497
  %12 = add nuw nsw i64 %9, %11, !dbg !3498
  call void @llvm.dbg.value(metadata i64 %12, metadata !239, metadata !DIExpression()), !dbg !3487
  br label %13, !dbg !3499

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3500
  call void @llvm.dbg.value(metadata i64 %14, metadata !239, metadata !DIExpression()), !dbg !3487
  %15 = udiv i64 9223372036854775807, %2, !dbg !3501
  %16 = icmp ult i64 %15, %14, !dbg !3501
  br i1 %16, label %19, label %17, !dbg !3503

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !239, metadata !DIExpression()), !dbg !3487
  store i64 %14, i64* %1, align 8, !dbg !3504, !tbaa !907
  %18 = mul i64 %14, %2, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %0, metadata !3447, metadata !DIExpression()) #12, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %28, metadata !3450, metadata !DIExpression()) #12, !dbg !3508
  br label %31, !dbg !3509

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3510
  unreachable, !dbg !3510

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3511
  %22 = icmp ugt i64 %21, %4, !dbg !3514
  br i1 %22, label %24, label %23, !dbg !3515

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3516
  unreachable, !dbg !3516

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3517
  %26 = add i64 %4, 1, !dbg !3518
  %27 = add i64 %26, %25, !dbg !3519
  call void @llvm.dbg.value(metadata i64 %27, metadata !239, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %27, metadata !239, metadata !DIExpression()), !dbg !3487
  store i64 %27, i64* %1, align 8, !dbg !3504, !tbaa !907
  %28 = mul i64 %27, %2, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %0, metadata !3447, metadata !DIExpression()) #12, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %28, metadata !3450, metadata !DIExpression()) #12, !dbg !3508
  %29 = icmp eq i64 %28, 0, !dbg !3520
  br i1 %29, label %30, label %31, !dbg !3509

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3521
  br label %38, !dbg !3522

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %33, metadata !3447, metadata !DIExpression()) #12, !dbg !3506
  %34 = icmp eq i8* %33, null, !dbg !3524
  %35 = icmp ne i64 %32, 0, !dbg !3525
  %36 = and i1 %35, %34, !dbg !3526
  br i1 %36, label %37, label %38, !dbg !3526

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3527
  unreachable, !dbg !3527

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3528
  ret i8* %39, !dbg !3529
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3530 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %0, metadata !3409, metadata !DIExpression()) #12, !dbg !3534
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %2, metadata !3413, metadata !DIExpression()) #12, !dbg !3537
  %3 = icmp eq i8* %2, null, !dbg !3538
  %4 = icmp ne i64 %0, 0, !dbg !3539
  %5 = and i1 %4, %3, !dbg !3540
  br i1 %5, label %6, label %7, !dbg !3540

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3541
  unreachable, !dbg !3541

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3543 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3547, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64* %1, metadata !3548, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8* %0, metadata !236, metadata !DIExpression()) #12, !dbg !3551
  call void @llvm.dbg.value(metadata i64* %1, metadata !237, metadata !DIExpression()) #12, !dbg !3553
  call void @llvm.dbg.value(metadata i64 1, metadata !238, metadata !DIExpression()) #12, !dbg !3554
  %3 = load i64, i64* %1, align 8, !dbg !3555, !tbaa !907
  call void @llvm.dbg.value(metadata i64 %3, metadata !239, metadata !DIExpression()) #12, !dbg !3556
  %4 = icmp eq i8* %0, null, !dbg !3557
  br i1 %4, label %5, label %12, !dbg !3558

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3559
  br i1 %6, label %9, label %7, !dbg !3560

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !239, metadata !DIExpression()) #12, !dbg !3556
  %8 = icmp slt i64 %3, 0, !dbg !3561
  br i1 %8, label %11, label %9, !dbg !3562

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !239, metadata !DIExpression()) #12, !dbg !3556
  store i64 %10, i64* %1, align 8, !dbg !3563, !tbaa !907
  call void @llvm.dbg.value(metadata i8* %0, metadata !3447, metadata !DIExpression()) #12, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %18, metadata !3450, metadata !DIExpression()) #12, !dbg !3566
  br label %21, !dbg !3567

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3568
  unreachable, !dbg !3568

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3569
  br i1 %13, label %15, label %14, !dbg !3570

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3571
  unreachable, !dbg !3571

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3572
  %17 = add i64 %3, 1, !dbg !3573
  %18 = add i64 %17, %16, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %18, metadata !239, metadata !DIExpression()) #12, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %18, metadata !239, metadata !DIExpression()) #12, !dbg !3556
  store i64 %18, i64* %1, align 8, !dbg !3563, !tbaa !907
  call void @llvm.dbg.value(metadata i8* %0, metadata !3447, metadata !DIExpression()) #12, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %18, metadata !3450, metadata !DIExpression()) #12, !dbg !3566
  %19 = icmp eq i64 %18, 0, !dbg !3575
  br i1 %19, label %20, label %21, !dbg !3567

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3576
  br label %28, !dbg !3577

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %23, metadata !3447, metadata !DIExpression()) #12, !dbg !3564
  %24 = icmp eq i8* %23, null, !dbg !3579
  %25 = icmp ne i64 %22, 0, !dbg !3580
  %26 = and i1 %25, %24, !dbg !3581
  br i1 %26, label %27, label %28, !dbg !3581

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3582
  unreachable, !dbg !3582

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3583
  ret i8* %29, !dbg !3584
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3585 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %0, metadata !3409, metadata !DIExpression()) #12, !dbg !3589
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3591
  call void @llvm.dbg.value(metadata i8* %2, metadata !3413, metadata !DIExpression()) #12, !dbg !3592
  %3 = icmp eq i8* %2, null, !dbg !3593
  %4 = icmp ne i64 %0, 0, !dbg !3594
  %5 = and i1 %4, %3, !dbg !3595
  br i1 %5, label %6, label %7, !dbg !3595

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3596
  unreachable, !dbg !3596

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3597
  ret i8* %2, !dbg !3598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3599 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3601, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i64 %1, metadata !3602, metadata !DIExpression()), !dbg !3605
  %3 = udiv i64 9223372036854775807, %1, !dbg !3606
  %4 = icmp ult i64 %3, %0, !dbg !3606
  br i1 %4, label %8, label %5, !dbg !3608

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %6, metadata !3603, metadata !DIExpression()), !dbg !3610
  %7 = icmp eq i8* %6, null, !dbg !3611
  br i1 %7, label %8, label %9, !dbg !3612

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3613
  unreachable, !dbg !3613

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3614
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3615 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()) #12, !dbg !3623
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %3, metadata !3413, metadata !DIExpression()) #12, !dbg !3626
  %4 = icmp eq i8* %3, null, !dbg !3627
  %5 = icmp ne i64 %1, 0, !dbg !3628
  %6 = and i1 %5, %4, !dbg !3629
  br i1 %6, label %7, label %8, !dbg !3629

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3630
  unreachable, !dbg !3630

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3631
  ret i8* %3, !dbg !3632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3633 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3635, metadata !DIExpression()), !dbg !3636
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3637
  %3 = add i64 %2, 1, !dbg !3638
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #12, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %3, metadata !3620, metadata !DIExpression()) #12, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %3, metadata !3409, metadata !DIExpression()) #12, !dbg !3642
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %4, metadata !3413, metadata !DIExpression()) #12, !dbg !3645
  %5 = icmp eq i8* %4, null, !dbg !3646
  %6 = icmp ne i64 %3, 0, !dbg !3647
  %7 = and i1 %6, %5, !dbg !3648
  br i1 %7, label %8, label %9, !dbg !3648

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3649
  unreachable, !dbg !3649

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3650
  ret i8* %4, !dbg !3651
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3652 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3654, !tbaa !827
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.138, i64 0, i64 0), i32 5) #12, !dbg !3655
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* %2) #12, !dbg !3656
  tail call void @abort() #15, !dbg !3657
  unreachable, !dbg !3657
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xreadlink(i8*) local_unnamed_addr #7 !dbg !3658 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3661, metadata !DIExpression()), !dbg !3663
  %2 = tail call i8* @areadlink(i8* %0) #12, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %2, metadata !3662, metadata !DIExpression()), !dbg !3665
  %3 = icmp eq i8* %2, null, !dbg !3666
  br i1 %3, label %4, label %9, !dbg !3668

; <label>:4:                                      ; preds = %1
  %5 = tail call i32* @__errno_location() #17, !dbg !3669
  %6 = load i32, i32* %5, align 4, !dbg !3669, !tbaa !827
  %7 = icmp eq i32 %6, 12, !dbg !3670
  br i1 %7, label %8, label %9, !dbg !3671

; <label>:8:                                      ; preds = %4
  tail call void @xalloc_die() #15, !dbg !3672
  unreachable, !dbg !3672

; <label>:9:                                      ; preds = %4, %1
  ret i8* %2, !dbg !3673
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !3674 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3681, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i8** %1, metadata !3682, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 %2, metadata !3683, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64* %3, metadata !3684, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %4, metadata !3685, metadata !DIExpression()), !dbg !3703
  %7 = bitcast i8** %6 to i8*, !dbg !3704
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12, !dbg !3704
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()), !dbg !3705
  %8 = icmp ult i32 %2, 37, !dbg !3706
  br i1 %8, label %10, label %9, !dbg !3706

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.144, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.145, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !3706
  unreachable, !dbg !3706

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3709
  call void @llvm.dbg.value(metadata i8** %25, metadata !3687, metadata !DIExpression()), !dbg !3710
  %12 = tail call i32* @__errno_location() #17, !dbg !3711
  store i32 0, i32* %12, align 4, !dbg !3712, !tbaa !827
  call void @llvm.dbg.value(metadata i8* %0, metadata !3690, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i8* %0, metadata !3693, metadata !DIExpression(DW_OP_deref)), !dbg !3714
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3715
  %14 = load i16*, i16** %13, align 8, !tbaa !698
  br label %15, !dbg !3716

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3717
  %17 = load i8, i8* %16, align 1, !dbg !3717, !tbaa !854
  call void @llvm.dbg.value(metadata i8 %17, metadata !3693, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i8* %16, metadata !3690, metadata !DIExpression()), !dbg !3713
  %18 = zext i8 %17 to i64, !dbg !3715
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3715
  %20 = load i16, i16* %19, align 2, !dbg !3715, !tbaa !1909
  %21 = and i16 %20, 8192, !dbg !3715
  %22 = icmp eq i16 %21, 0, !dbg !3716
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %23, metadata !3690, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i8* %23, metadata !3693, metadata !DIExpression(DW_OP_deref)), !dbg !3714
  br i1 %22, label %24, label %15, !dbg !3716, !llvm.loop !3719

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3709
  %26 = icmp eq i8 %17, 45, !dbg !3721
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !3723, metadata !DIExpression()) #12, !dbg !3733
  call void @llvm.dbg.value(metadata i8** %25, metadata !3731, metadata !DIExpression()) #12, !dbg !3733
  call void @llvm.dbg.value(metadata i32 %2, metadata !3732, metadata !DIExpression()) #12, !dbg !3733
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #12, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %28, metadata !3688, metadata !DIExpression()), !dbg !3736
  %29 = load i8*, i8** %25, align 8, !dbg !3737, !tbaa !698
  %30 = icmp eq i8* %29, %0, !dbg !3739
  br i1 %30, label %31, label %40, !dbg !3740

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3741
  br i1 %32, label %265, label %33, !dbg !3744

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3745, !tbaa !854
  %35 = icmp eq i8 %34, 0, !dbg !3745
  br i1 %35, label %265, label %36, !dbg !3746

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3745
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3747
  %39 = icmp eq i8* %38, null, !dbg !3747
  br i1 %39, label %265, label %47, !dbg !3748

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3749, !tbaa !827
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3751

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3689, metadata !DIExpression()), !dbg !3705
  br label %43, !dbg !3752

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3754
  call void @llvm.dbg.value(metadata i32 %44, metadata !3689, metadata !DIExpression()), !dbg !3705
  %45 = icmp eq i8* %4, null, !dbg !3755
  br i1 %45, label %46, label %47, !dbg !3757

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3688, metadata !DIExpression()), !dbg !3736
  store i64 %28, i64* %3, align 8, !dbg !3758, !tbaa !907
  br label %265, !dbg !3760

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3761, !tbaa !854
  %51 = sext i8 %50 to i32, !dbg !3761
  %52 = icmp eq i8 %50, 0, !dbg !3762
  br i1 %52, label %262, label %53, !dbg !3763

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3694, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 1, metadata !3697, metadata !DIExpression()), !dbg !3765
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3766
  %55 = icmp eq i8* %54, null, !dbg !3766
  br i1 %55, label %56, label %58, !dbg !3768

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3688, metadata !DIExpression()), !dbg !3736
  store i64 %49, i64* %3, align 8, !dbg !3769, !tbaa !907
  %57 = or i32 %48, 2, !dbg !3771
  br label %265, !dbg !3772

; <label>:58:                                     ; preds = %53
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
  ], !dbg !3773

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3774
  %61 = icmp eq i8* %60, null, !dbg !3774
  br i1 %61, label %72, label %62, !dbg !3777

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3778
  %64 = load i8, i8* %63, align 1, !dbg !3778, !tbaa !854
  %65 = sext i8 %64 to i32, !dbg !3778
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3779

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3780
  %68 = load i8, i8* %67, align 1, !dbg !3780, !tbaa !854
  %69 = icmp eq i8 %68, 66, !dbg !3783
  %70 = select i1 %69, i64 3, i64 1, !dbg !3784
  br label %72, !dbg !3784

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3694, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 2, metadata !3697, metadata !DIExpression()), !dbg !3765
  br label %72, !dbg !3785

; <label>:72:                                     ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  switch i32 %51, label %251 [
    i32 98, label %75
    i32 66, label %80
    i32 99, label %253
    i32 69, label %85
    i32 71, label %111
    i32 103, label %111
    i32 107, label %125
    i32 75, label %125
    i32 77, label %131
    i32 109, label %131
    i32 80, label %141
    i32 84, label %163
    i32 116, label %163
    i32 119, label %181
    i32 89, label %187
    i32 90, label %221
  ], !dbg !3786

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !3787, metadata !DIExpression()), !dbg !3793
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3796
  %77 = shl i64 %49, 9, !dbg !3798
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3799
  %79 = zext i1 %76 to i32, !dbg !3799
  call void @llvm.dbg.value(metadata i32 %79, metadata !3698, metadata !DIExpression()), !dbg !3800
  br label %253, !dbg !3801

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !3787, metadata !DIExpression()), !dbg !3802
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3804
  %82 = shl i64 %49, 10, !dbg !3805
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3806
  %84 = zext i1 %81 to i32, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %84, metadata !3698, metadata !DIExpression()), !dbg !3800
  br label %253, !dbg !3807

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !3808, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3818
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 6, metadata !3808, metadata !DIExpression()), !dbg !3816
  %87 = icmp ult i64 %86, %49, !dbg !3819
  %88 = mul i64 %49, %73, !dbg !3821
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3822
  call void @llvm.dbg.value(metadata i32 5, metadata !3808, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 5, metadata !3808, metadata !DIExpression()), !dbg !3816
  %90 = icmp ult i64 %86, %89, !dbg !3819
  %91 = mul i64 %89, %73, !dbg !3821
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3822
  %93 = or i1 %87, %90, !dbg !3823
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3816
  %94 = icmp ult i64 %86, %92, !dbg !3819
  %95 = mul i64 %92, %73, !dbg !3821
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3822
  %97 = or i1 %93, %94, !dbg !3823
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3816
  %98 = icmp ult i64 %86, %96, !dbg !3819
  %99 = mul i64 %96, %73, !dbg !3821
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3822
  %101 = or i1 %97, %98, !dbg !3823
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3816
  %102 = icmp ult i64 %86, %100, !dbg !3819
  %103 = mul i64 %100, %73, !dbg !3821
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3822
  %105 = or i1 %101, %102, !dbg !3823
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3816
  %106 = icmp ult i64 %86, %104, !dbg !3819
  %107 = mul i64 %104, %73, !dbg !3821
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3822
  %109 = or i1 %105, %106, !dbg !3823
  %110 = zext i1 %109 to i32, !dbg !3823
  call void @llvm.dbg.value(metadata i32 %110, metadata !3815, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3816
  br label %253, !dbg !3824

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3827
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3825
  %113 = icmp ult i64 %112, %49, !dbg !3828
  %114 = mul i64 %49, %73, !dbg !3830
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3831
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3825
  %116 = icmp ult i64 %112, %115, !dbg !3828
  %117 = mul i64 %115, %73, !dbg !3830
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3831
  %119 = or i1 %113, %116, !dbg !3832
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3825
  %120 = icmp ult i64 %112, %118, !dbg !3828
  %121 = mul i64 %118, %73, !dbg !3830
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3831
  %123 = or i1 %119, %120, !dbg !3832
  %124 = zext i1 %123 to i32, !dbg !3832
  call void @llvm.dbg.value(metadata i32 %124, metadata !3815, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3825
  br label %253, !dbg !3824

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3835
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 undef, metadata !3808, metadata !DIExpression()), !dbg !3833
  %127 = icmp ult i64 %126, %49, !dbg !3836
  %128 = mul i64 %49, %73, !dbg !3838
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3839
  %130 = zext i1 %127 to i32, !dbg !3839
  call void @llvm.dbg.value(metadata i32 %130, metadata !3815, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 undef, metadata !3808, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3833
  br label %253, !dbg !3824

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3842
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3840
  %133 = icmp ult i64 %132, %49, !dbg !3843
  %134 = mul i64 %49, %73, !dbg !3845
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3846
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3840
  %136 = icmp ult i64 %132, %135, !dbg !3843
  %137 = mul i64 %135, %73, !dbg !3845
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3846
  %139 = or i1 %133, %136, !dbg !3847
  %140 = zext i1 %139 to i32, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %140, metadata !3815, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3840
  br label %253, !dbg !3824

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !3808, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3850
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i32 5, metadata !3808, metadata !DIExpression()), !dbg !3848
  %143 = icmp ult i64 %142, %49, !dbg !3851
  %144 = mul i64 %49, %73, !dbg !3853
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3854
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3848
  %146 = icmp ult i64 %142, %145, !dbg !3851
  %147 = mul i64 %145, %73, !dbg !3853
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3854
  %149 = or i1 %143, %146, !dbg !3855
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3848
  %150 = icmp ult i64 %142, %148, !dbg !3851
  %151 = mul i64 %148, %73, !dbg !3853
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3854
  %153 = or i1 %149, %150, !dbg !3855
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3848
  %154 = icmp ult i64 %142, %152, !dbg !3851
  %155 = mul i64 %152, %73, !dbg !3853
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3854
  %157 = or i1 %153, %154, !dbg !3855
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3848
  %158 = icmp ult i64 %142, %156, !dbg !3851
  %159 = mul i64 %156, %73, !dbg !3853
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3854
  %161 = or i1 %157, %158, !dbg !3855
  %162 = zext i1 %161 to i32, !dbg !3855
  call void @llvm.dbg.value(metadata i32 %162, metadata !3815, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3848
  br label %253, !dbg !3824

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3858
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3856
  %165 = icmp ult i64 %164, %49, !dbg !3859
  %166 = mul i64 %49, %73, !dbg !3861
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3862
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3856
  %168 = icmp ult i64 %164, %167, !dbg !3859
  %169 = mul i64 %167, %73, !dbg !3861
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3862
  %171 = or i1 %165, %168, !dbg !3863
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3856
  %172 = icmp ult i64 %164, %170, !dbg !3859
  %173 = mul i64 %170, %73, !dbg !3861
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3862
  %175 = or i1 %171, %172, !dbg !3863
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3856
  %176 = icmp ult i64 %164, %174, !dbg !3859
  %177 = mul i64 %174, %73, !dbg !3861
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3862
  %179 = or i1 %175, %176, !dbg !3863
  %180 = zext i1 %179 to i32, !dbg !3863
  call void @llvm.dbg.value(metadata i32 %180, metadata !3815, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3856
  br label %253, !dbg !3824

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3787, metadata !DIExpression()), !dbg !3864
  %182 = icmp slt i64 %49, 0, !dbg !3866
  %183 = shl i64 %49, 1, !dbg !3867
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3868
  %185 = lshr i64 %49, 63, !dbg !3868
  %186 = trunc i64 %185 to i32, !dbg !3868
  call void @llvm.dbg.value(metadata i32 %186, metadata !3698, metadata !DIExpression()), !dbg !3800
  br label %253, !dbg !3869

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !3808, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3872
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 8, metadata !3808, metadata !DIExpression()), !dbg !3870
  %189 = icmp ult i64 %188, %49, !dbg !3873
  %190 = mul i64 %49, %73, !dbg !3875
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3876
  call void @llvm.dbg.value(metadata i32 7, metadata !3808, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 7, metadata !3808, metadata !DIExpression()), !dbg !3870
  %192 = icmp ult i64 %188, %191, !dbg !3873
  %193 = mul i64 %191, %73, !dbg !3875
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3876
  %195 = or i1 %189, %192, !dbg !3877
  call void @llvm.dbg.value(metadata i32 6, metadata !3808, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 6, metadata !3808, metadata !DIExpression()), !dbg !3870
  %196 = icmp ult i64 %188, %194, !dbg !3873
  %197 = mul i64 %194, %73, !dbg !3875
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3876
  %199 = or i1 %195, %196, !dbg !3877
  call void @llvm.dbg.value(metadata i32 5, metadata !3808, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 5, metadata !3808, metadata !DIExpression()), !dbg !3870
  %200 = icmp ult i64 %188, %198, !dbg !3873
  %201 = mul i64 %198, %73, !dbg !3875
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3876
  %203 = or i1 %199, %200, !dbg !3877
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3870
  %204 = icmp ult i64 %188, %202, !dbg !3873
  %205 = mul i64 %202, %73, !dbg !3875
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3876
  %207 = or i1 %203, %204, !dbg !3877
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3870
  %208 = icmp ult i64 %188, %206, !dbg !3873
  %209 = mul i64 %206, %73, !dbg !3875
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3876
  %211 = or i1 %207, %208, !dbg !3877
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3870
  %212 = icmp ult i64 %188, %210, !dbg !3873
  %213 = mul i64 %210, %73, !dbg !3875
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3876
  %215 = or i1 %211, %212, !dbg !3877
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3870
  %216 = icmp ult i64 %188, %214, !dbg !3873
  %217 = mul i64 %214, %73, !dbg !3875
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3876
  %219 = or i1 %215, %216, !dbg !3877
  %220 = zext i1 %219 to i32, !dbg !3877
  call void @llvm.dbg.value(metadata i32 %220, metadata !3815, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3870
  br label %253, !dbg !3824

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !3808, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3880
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 7, metadata !3808, metadata !DIExpression()), !dbg !3878
  %223 = icmp ult i64 %222, %49, !dbg !3881
  %224 = mul i64 %49, %73, !dbg !3883
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3884
  call void @llvm.dbg.value(metadata i32 6, metadata !3808, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 6, metadata !3808, metadata !DIExpression()), !dbg !3878
  %226 = icmp ult i64 %222, %225, !dbg !3881
  %227 = mul i64 %225, %73, !dbg !3883
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3884
  %229 = or i1 %223, %226, !dbg !3885
  call void @llvm.dbg.value(metadata i32 5, metadata !3808, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 5, metadata !3808, metadata !DIExpression()), !dbg !3878
  %230 = icmp ult i64 %222, %228, !dbg !3881
  %231 = mul i64 %228, %73, !dbg !3883
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3884
  %233 = or i1 %229, %230, !dbg !3885
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 4, metadata !3808, metadata !DIExpression()), !dbg !3878
  %234 = icmp ult i64 %222, %232, !dbg !3881
  %235 = mul i64 %232, %73, !dbg !3883
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3884
  %237 = or i1 %233, %234, !dbg !3885
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 3, metadata !3808, metadata !DIExpression()), !dbg !3878
  %238 = icmp ult i64 %222, %236, !dbg !3881
  %239 = mul i64 %236, %73, !dbg !3883
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3884
  %241 = or i1 %237, %238, !dbg !3885
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 2, metadata !3808, metadata !DIExpression()), !dbg !3878
  %242 = icmp ult i64 %222, %240, !dbg !3881
  %243 = mul i64 %240, %73, !dbg !3883
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3884
  %245 = or i1 %241, %242, !dbg !3885
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3878
  %246 = icmp ult i64 %222, %244, !dbg !3881
  %247 = mul i64 %244, %73, !dbg !3883
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3884
  %249 = or i1 %245, %246, !dbg !3885
  %250 = zext i1 %249 to i32, !dbg !3885
  call void @llvm.dbg.value(metadata i32 %250, metadata !3815, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3878
  br label %253, !dbg !3824

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3688, metadata !DIExpression()), !dbg !3736
  store i64 %49, i64* %3, align 8, !dbg !3886, !tbaa !907
  %252 = or i32 %48, 2, !dbg !3887
  br label %265, !dbg !3888

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !3889
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !3890
  call void @llvm.dbg.value(metadata i32 %255, metadata !3698, metadata !DIExpression()), !dbg !3800
  %256 = or i32 %255, %48, !dbg !3824
  call void @llvm.dbg.value(metadata i32 %256, metadata !3689, metadata !DIExpression()), !dbg !3705
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3891
  store i8* %257, i8** %25, align 8, !dbg !3891, !tbaa !698
  %258 = load i8, i8* %257, align 1, !dbg !3892, !tbaa !854
  %259 = icmp eq i8 %258, 0, !dbg !3892
  %260 = or i32 %256, 2, !dbg !3894
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3895
  call void @llvm.dbg.value(metadata i32 %261, metadata !3689, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i32 %261, metadata !3689, metadata !DIExpression()), !dbg !3705
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !3896
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !3705
  call void @llvm.dbg.value(metadata i32 %264, metadata !3689, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %263, metadata !3688, metadata !DIExpression()), !dbg !3736
  store i64 %263, i64* %3, align 8, !dbg !3897, !tbaa !907
  br label %265, !dbg !3898

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !3899
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12, !dbg !3900
  ret i32 %266, !dbg !3900
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3901 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3904, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64 %1, metadata !3905, metadata !DIExpression()), !dbg !3911
  %3 = icmp eq i64 %0, 0, !dbg !3912
  %4 = icmp eq i64 %1, 0, !dbg !3913
  %5 = or i1 %3, %4, !dbg !3914
  br i1 %5, label %12, label %6, !dbg !3914

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %7, metadata !3907, metadata !DIExpression()), !dbg !3916
  %8 = udiv i64 %7, %1, !dbg !3917
  %9 = icmp eq i64 %8, %0, !dbg !3919
  br i1 %9, label %12, label %10, !dbg !3920

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3921
  store i32 12, i32* %11, align 4, !dbg !3923, !tbaa !827
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3904, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64 %13, metadata !3905, metadata !DIExpression()), !dbg !3911
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %15, metadata !3906, metadata !DIExpression()), !dbg !3925
  br label %16, !dbg !3926

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3927
  ret i8* %17, !dbg !3928
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3929 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3946, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i8* %1, metadata !3947, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %2, metadata !3948, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3949, metadata !DIExpression()), !dbg !3958
  %6 = bitcast i32* %5 to i8*, !dbg !3959
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3959
  %7 = icmp eq i32* %0, null, !dbg !3960
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3962
  call void @llvm.dbg.value(metadata i32* %8, metadata !3946, metadata !DIExpression()), !dbg !3955
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3963
  call void @llvm.dbg.value(metadata i64 %9, metadata !3950, metadata !DIExpression()), !dbg !3964
  %10 = icmp ugt i64 %9, -3, !dbg !3965
  %11 = icmp ne i64 %2, 0, !dbg !3966
  %12 = and i1 %11, %10, !dbg !3967
  br i1 %12, label %13, label %18, !dbg !3967

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3968
  br i1 %14, label %18, label %15, !dbg !3969

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3970, !tbaa !854
  call void @llvm.dbg.value(metadata i8 %16, metadata !3952, metadata !DIExpression()), !dbg !3971
  %17 = zext i8 %16 to i32, !dbg !3972
  store i32 %17, i32* %8, align 4, !dbg !3973, !tbaa !827
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3974
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3975
  ret i64 %19, !dbg !3975
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @areadlink(i8*) local_unnamed_addr #7 !dbg !3976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3979, metadata !DIExpression()), !dbg !3980
  %2 = tail call i8* @careadlinkat(i32 -100, i8* %0, i8* null, i64 0, %struct.allocator* null, i64 (i32, i8*, i8*, i64)* nonnull @careadlinkatcwd) #12, !dbg !3981
  ret i8* %2, !dbg !3982
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @careadlinkatcwd(i32, i8* nocapture readonly, i8* nocapture, i64) #7 !dbg !3983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3990, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* %1, metadata !3991, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i8* %2, metadata !3992, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %3, metadata !3993, metadata !DIExpression()), !dbg !3997
  %5 = icmp eq i32 %0, -100, !dbg !3998
  br i1 %5, label %7, label %6, !dbg !4000

; <label>:6:                                      ; preds = %4
  tail call void @abort() #15, !dbg !4001
  unreachable, !dbg !4001

; <label>:7:                                      ; preds = %4
  %8 = tail call i64 @readlink(i8* %1, i8* %2, i64 %3) #12, !dbg !4002
  ret i64 %8, !dbg !4003
}

; Function Attrs: nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @careadlinkat(i32, i8*, i8*, i64, %struct.allocator* readonly, i64 (i32, i8*, i8*, i64)* nocapture) local_unnamed_addr #7 !dbg !4004 {
  %7 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4018, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i8* %1, metadata !4019, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i8* %2, metadata !4020, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %3, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata %struct.allocator* %4, metadata !4022, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*, i64)* %5, metadata !4023, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !4026, metadata !DIExpression()), !dbg !4051
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !4052
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %8) #12, !dbg !4052
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !4027, metadata !DIExpression()), !dbg !4053
  %9 = icmp eq %struct.allocator* %4, null, !dbg !4054
  %10 = select i1 %9, %struct.allocator* @stdlib_allocator, %struct.allocator* %4, !dbg !4056
  call void @llvm.dbg.value(metadata %struct.allocator* %10, metadata !4022, metadata !DIExpression()), !dbg !4049
  %11 = icmp eq i64 %3, 0, !dbg !4057
  call void @llvm.dbg.value(metadata i8* %8, metadata !4020, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 1024, metadata !4021, metadata !DIExpression()), !dbg !4048
  %12 = select i1 %11, i64 1024, i64 %3, !dbg !4059
  %13 = select i1 %11, i8* %8, i8* %2, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %13, metadata !4020, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %12, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i8* %13, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %12, metadata !4025, metadata !DIExpression()), !dbg !4061
  %14 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 2
  %15 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 0
  br label %16, !dbg !4062

; <label>:16:                                     ; preds = %64, %6
  %17 = phi i64 [ %12, %6 ], [ %65, %64 ], !dbg !4063
  %18 = phi i8* [ %13, %6 ], [ %67, %64 ], !dbg !4063
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %17, metadata !4025, metadata !DIExpression()), !dbg !4061
  %19 = call i64 %5(i32 %0, i8* %1, i8* %18, i64 %17) #12, !dbg !4064
  call void @llvm.dbg.value(metadata i64 %19, metadata !4031, metadata !DIExpression()), !dbg !4065
  %20 = icmp slt i64 %19, 0, !dbg !4066
  br i1 %20, label %21, label %29, !dbg !4067

; <label>:21:                                     ; preds = %16
  %22 = tail call i32* @__errno_location() #17, !dbg !4068
  %23 = load i32, i32* %22, align 4, !dbg !4068, !tbaa !827
  call void @llvm.dbg.value(metadata i32 %23, metadata !4034, metadata !DIExpression()), !dbg !4069
  %24 = icmp eq i32 %23, 34, !dbg !4070
  br i1 %24, label %29, label %25, !dbg !4072

; <label>:25:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  %26 = icmp eq i8* %18, %13, !dbg !4073
  br i1 %26, label %77, label %27, !dbg !4076

; <label>:27:                                     ; preds = %25
  %28 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !4077, !tbaa !4079
  call void %28(i8* %18) #12, !dbg !4081
  store i32 %23, i32* %22, align 4, !dbg !4082, !tbaa !827
  br label %77, !dbg !4083

; <label>:29:                                     ; preds = %21, %16
  call void @llvm.dbg.value(metadata i64 %19, metadata !4033, metadata !DIExpression()), !dbg !4084
  %30 = icmp ult i64 %19, %17, !dbg !4085
  br i1 %30, label %31, label %52, !dbg !4086

; <label>:31:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i64 %17, metadata !4025, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %17, metadata !4025, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %17, metadata !4025, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %17, metadata !4025, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %17, metadata !4025, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %17, metadata !4025, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8* %18, metadata !4024, metadata !DIExpression()), !dbg !4060
  %32 = add i64 %19, 1, !dbg !4087
  call void @llvm.dbg.value(metadata i64 %32, metadata !4033, metadata !DIExpression()), !dbg !4084
  %33 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !4088
  store i8 0, i8* %33, align 1, !dbg !4089, !tbaa !854
  %34 = icmp eq i8* %18, %8, !dbg !4090
  br i1 %34, label %35, label %40, !dbg !4091

; <label>:35:                                     ; preds = %31
  %36 = load i8* (i64)*, i8* (i64)** %15, align 8, !dbg !4092, !tbaa !4093
  %37 = call i8* %36(i64 %32) #12, !dbg !4094
  call void @llvm.dbg.value(metadata i8* %37, metadata !4037, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %32, metadata !4025, metadata !DIExpression()), !dbg !4061
  %38 = icmp eq i8* %37, null, !dbg !4096
  br i1 %38, label %69, label %39, !dbg !4098

; <label>:39:                                     ; preds = %35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %37, i8* nonnull align 16 %8, i64 %32, i1 false), !dbg !4099
  call void @llvm.dbg.value(metadata i8* %37, metadata !4024, metadata !DIExpression()), !dbg !4060
  br label %77

; <label>:40:                                     ; preds = %31
  %41 = icmp uge i64 %32, %17, !dbg !4100
  %42 = icmp eq i8* %18, %13, !dbg !4101
  %43 = or i1 %42, %41, !dbg !4102
  br i1 %43, label %77, label %44, !dbg !4102

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 1, !dbg !4103
  %46 = load i8* (i8*, i64)*, i8* (i8*, i64)** %45, align 8, !dbg !4103, !tbaa !4104
  %47 = icmp eq i8* (i8*, i64)* %46, null, !dbg !4105
  br i1 %47, label %77, label %48, !dbg !4106

; <label>:48:                                     ; preds = %44
  %49 = call i8* %46(i8* nonnull %18, i64 %32) #12, !dbg !4107
  call void @llvm.dbg.value(metadata i8* %49, metadata !4042, metadata !DIExpression()), !dbg !4108
  %50 = icmp eq i8* %49, null, !dbg !4109
  %51 = select i1 %50, i8* %18, i8* %49, !dbg !4111
  call void @llvm.dbg.value(metadata i8* %51, metadata !4024, metadata !DIExpression()), !dbg !4060
  br label %77, !dbg !4112

; <label>:52:                                     ; preds = %29
  %53 = icmp eq i8* %18, %13, !dbg !4113
  br i1 %53, label %56, label %54, !dbg !4115

; <label>:54:                                     ; preds = %52
  %55 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !4116, !tbaa !4079
  call void %55(i8* %18) #12, !dbg !4117
  br label %56, !dbg !4117

; <label>:56:                                     ; preds = %52, %54
  %57 = icmp ult i64 %17, 4611686018427387905, !dbg !4118
  br i1 %57, label %58, label %60, !dbg !4120

; <label>:58:                                     ; preds = %56
  %59 = shl i64 %17, 1, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %59, metadata !4025, metadata !DIExpression()), !dbg !4061
  br label %64, !dbg !4122

; <label>:60:                                     ; preds = %56
  %61 = icmp sgt i64 %17, -1, !dbg !4123
  br i1 %61, label %64, label %62, !dbg !4125

; <label>:62:                                     ; preds = %60
  %63 = tail call i32* @__errno_location() #17, !dbg !4126
  store i32 36, i32* %63, align 4, !dbg !4129, !tbaa !827
  br label %77, !dbg !4130

; <label>:64:                                     ; preds = %58, %60
  %65 = phi i64 [ %59, %58 ], [ -9223372036854775808, %60 ], !dbg !4131
  call void @llvm.dbg.value(metadata i64 %65, metadata !4025, metadata !DIExpression()), !dbg !4061
  %66 = load i8* (i64)*, i8* (i64)** %15, align 8, !dbg !4132, !tbaa !4093
  %67 = call i8* %66(i64 %65) #12, !dbg !4133
  call void @llvm.dbg.value(metadata i8* %67, metadata !4024, metadata !DIExpression()), !dbg !4060
  %68 = icmp eq i8* %67, null, !dbg !4134
  br i1 %68, label %69, label %16, !dbg !4134, !llvm.loop !4135

; <label>:69:                                     ; preds = %64, %35
  %70 = phi i64 [ %32, %35 ], [ %65, %64 ]
  %71 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 3, !dbg !4137
  %72 = load void (i64)*, void (i64)** %71, align 8, !dbg !4137, !tbaa !4139
  %73 = icmp eq void (i64)* %72, null, !dbg !4140
  br i1 %73, label %75, label %74, !dbg !4141

; <label>:74:                                     ; preds = %69
  call void %72(i64 %70) #12, !dbg !4142
  br label %75, !dbg !4142

; <label>:75:                                     ; preds = %69, %74
  %76 = tail call i32* @__errno_location() #17, !dbg !4143
  store i32 12, i32* %76, align 4, !dbg !4144, !tbaa !827
  br label %77, !dbg !4145

; <label>:77:                                     ; preds = %27, %25, %48, %44, %40, %39, %62, %75
  %78 = phi i8* [ null, %75 ], [ %37, %39 ], [ %18, %40 ], [ %18, %44 ], [ %51, %48 ], [ null, %62 ], [ null, %25 ], [ null, %27 ], !dbg !4146
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %8) #12, !dbg !4147
  ret i8* %78, !dbg !4147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4148 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4187, metadata !DIExpression()), !dbg !4192
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4193
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4194, metadata !DIExpression()), !dbg !4198
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4200
  %4 = load i32, i32* %3, align 8, !dbg !4200, !tbaa !4201
  %5 = and i32 %4, 32, !dbg !4200
  %6 = icmp eq i32 %5, 0, !dbg !4203
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4204
  %8 = icmp ne i32 %7, 0, !dbg !4205
  br i1 %6, label %9, label %19, !dbg !4206

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4208
  %11 = xor i1 %8, true, !dbg !4209
  %12 = or i1 %10, %11, !dbg !4209
  %13 = sext i1 %8 to i32, !dbg !4209
  br i1 %12, label %22, label %14, !dbg !4209

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4210
  %16 = load i32, i32* %15, align 4, !dbg !4210, !tbaa !827
  %17 = icmp ne i32 %16, 9, !dbg !4211
  %18 = sext i1 %17 to i32, !dbg !4212
  br label %22, !dbg !4212

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4213

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4215
  store i32 0, i32* %21, align 4, !dbg !4217, !tbaa !827
  br label %22, !dbg !4215

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4218
  ret i32 %23, !dbg !4219
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4220 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4223, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i8 1, metadata !4224, metadata !DIExpression()), !dbg !4227
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4228
  call void @llvm.dbg.value(metadata i8* %2, metadata !4225, metadata !DIExpression()), !dbg !4229
  %3 = icmp eq i8* %2, null, !dbg !4230
  br i1 %3, label %11, label %4, !dbg !4232

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0)) #14, !dbg !4233
  %6 = icmp eq i32 %5, 0, !dbg !4238
  br i1 %6, label %10, label %7, !dbg !4239

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0)) #14, !dbg !4240
  %9 = icmp eq i32 %8, 0, !dbg !4241
  br i1 %9, label %10, label %11, !dbg !4242

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4224, metadata !DIExpression()), !dbg !4227
  br label %11, !dbg !4243

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4244
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4245 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4251
  call void @llvm.dbg.value(metadata i8* %1, metadata !4250, metadata !DIExpression()), !dbg !4252
  %2 = icmp eq i8* %1, null, !dbg !4253
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i64 0, i64 0), i8* %1, !dbg !4255
  call void @llvm.dbg.value(metadata i8* %3, metadata !4250, metadata !DIExpression()), !dbg !4252
  %4 = load i8, i8* %3, align 1, !dbg !4256, !tbaa !854
  %5 = icmp eq i8 %4, 0, !dbg !4260
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.163, i64 0, i64 0), i8* %3, !dbg !4261
  call void @llvm.dbg.value(metadata i8* %6, metadata !4250, metadata !DIExpression()), !dbg !4252
  ret i8* %6, !dbg !4262
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4263 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4302, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 0, metadata !4305, metadata !DIExpression()), !dbg !4308
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4309
  call void @llvm.dbg.value(metadata i32 %2, metadata !4304, metadata !DIExpression()), !dbg !4310
  %3 = icmp slt i32 %2, 0, !dbg !4311
  br i1 %3, label %4, label %6, !dbg !4313

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4314
  br label %24, !dbg !4315

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4316
  %8 = icmp eq i32 %7, 0, !dbg !4316
  br i1 %8, label %13, label %9, !dbg !4318

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4319
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4320
  %12 = icmp eq i64 %11, -1, !dbg !4321
  br i1 %12, label %16, label %13, !dbg !4322

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4323
  %15 = icmp eq i32 %14, 0, !dbg !4323
  br i1 %15, label %16, label %18, !dbg !4324

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4303, metadata !DIExpression()), !dbg !4307
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4325
  call void @llvm.dbg.value(metadata i32 %21, metadata !4305, metadata !DIExpression()), !dbg !4308
  br label %24, !dbg !4326

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4327
  %20 = load i32, i32* %19, align 4, !dbg !4327, !tbaa !827
  call void @llvm.dbg.value(metadata i32 %20, metadata !4303, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 %20, metadata !4303, metadata !DIExpression()), !dbg !4307
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4325
  call void @llvm.dbg.value(metadata i32 %21, metadata !4305, metadata !DIExpression()), !dbg !4308
  %22 = icmp eq i32 %20, 0, !dbg !4328
  br i1 %22, label %24, label %23, !dbg !4326

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4330, !tbaa !827
  call void @llvm.dbg.value(metadata i32 -1, metadata !4305, metadata !DIExpression()), !dbg !4308
  br label %24, !dbg !4332

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4333
  ret i32 %25, !dbg !4334
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4335 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4374, metadata !DIExpression()), !dbg !4375
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4376
  br i1 %2, label %6, label %3, !dbg !4378

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4379
  %5 = icmp eq i32 %4, 0, !dbg !4379
  br i1 %5, label %6, label %8, !dbg !4380

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4381
  br label %17, !dbg !4382

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4383, metadata !DIExpression()) #12, !dbg !4388
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4390
  %10 = load i32, i32* %9, align 8, !dbg !4390, !tbaa !4201
  %11 = and i32 %10, 256, !dbg !4392
  %12 = icmp eq i32 %11, 0, !dbg !4392
  br i1 %12, label %15, label %13, !dbg !4393

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4394
  br label %15, !dbg !4394

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4395
  br label %17, !dbg !4396

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4397
  ret i32 %18, !dbg !4398
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4399 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4439, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64 %1, metadata !4440, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata i32 %2, metadata !4441, metadata !DIExpression()), !dbg !4447
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4448
  %5 = load i8*, i8** %4, align 8, !dbg !4448, !tbaa !4449
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4450
  %7 = load i8*, i8** %6, align 8, !dbg !4450, !tbaa !4451
  %8 = icmp eq i8* %5, %7, !dbg !4452
  br i1 %8, label %9, label %28, !dbg !4453

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4454
  %11 = load i8*, i8** %10, align 8, !dbg !4454, !tbaa !4455
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4456
  %13 = load i8*, i8** %12, align 8, !dbg !4456, !tbaa !4457
  %14 = icmp eq i8* %11, %13, !dbg !4458
  br i1 %14, label %15, label %28, !dbg !4459

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4460
  %17 = load i8*, i8** %16, align 8, !dbg !4460, !tbaa !4461
  %18 = icmp eq i8* %17, null, !dbg !4462
  br i1 %18, label %19, label %28, !dbg !4463

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4464
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4465
  call void @llvm.dbg.value(metadata i64 %21, metadata !4442, metadata !DIExpression()), !dbg !4466
  %22 = icmp eq i64 %21, -1, !dbg !4467
  br i1 %22, label %30, label %23, !dbg !4469

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4470
  %25 = load i32, i32* %24, align 8, !dbg !4471, !tbaa !4201
  %26 = and i32 %25, -17, !dbg !4471
  store i32 %26, i32* %24, align 8, !dbg !4471, !tbaa !4201
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4472
  store i64 %21, i64* %27, align 8, !dbg !4473, !tbaa !4474
  br label %30, !dbg !4475

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4476
  br label %30, !dbg !4477

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4478
  ret i32 %31, !dbg !4479
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !62, !68, !207, !209, !211, !77, !214, !217, !84, !91, !219, !174, !226, !243, !245, !247, !251, !253, !256, !258, !261, !263, !265, !654, !656, !658, !183}
!llvm.ident = !{!660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660, !660}
!llvm.module.flags = !{!661, !662, !663, !664, !665}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !46, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !30)
!3 = !DIFile(filename: "src/stdbuf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!26 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !28, line: 72, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 62, baseType: !29)
!40 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!41 = !DIDerivedType(tag: DW_TAG_member, name: "optc", scope: !36, file: !3, line: 45, baseType: !42, size: 32, offset: 64)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "optarg", scope: !36, file: !3, line: 46, baseType: !22, size: 64, offset: 128)
!44 = !{!45}
!45 = !DISubrange(count: 3)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1536, elements: !58)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !49, line: 50, size: 256, elements: !50)
!49 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !65)
!63 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!64 = !{}
!65 = !{!60}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "file_name", scope: !68, file: !73, line: 46, type: !52, isLocal: true, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !70)
!69 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!70 = !{!66, !71}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !68, file: !73, line: 56, type: !74, isLocal: true, isDefinition: true)
!73 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "exit_failure", scope: !77, file: !80, line: 24, type: !81, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !79)
!78 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!79 = !{!75}
!80 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!81 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "program_name", scope: !84, file: !88, line: 33, type: !52, isLocal: false, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !86, globals: !87)
!85 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!86 = !{!24, !22}
!87 = !{!82}
!88 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !91, file: !133, line: 85, type: !168, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !128, globals: !130)
!92 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!93 = !{!94, !108, !113}
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !95, line: 32, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!97 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!101 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!102 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!103 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!104 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!105 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!106 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!107 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !95, line: 242, baseType: !7, size: 32, elements: !109)
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!111 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!112 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !114, line: 46, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!116 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!117 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!120 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!121 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!122 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!123 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!124 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!127 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!128 = !{!42, !129, !39, !22}
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !{!89, !131, !138, !150, !152, !157, !164, !166}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !91, file: !133, line: 101, type: !134, isLocal: false, isDefinition: true)
!133 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 320, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!136 = !{!137}
!137 = !DISubrange(count: 10)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !91, file: !133, line: 1052, type: !140, isLocal: false, isDefinition: true)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !133, line: 65, size: 448, elements: !141)
!141 = !{!142, !143, !144, !148, !149}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !140, file: !133, line: 68, baseType: !94, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !133, line: 71, baseType: !42, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !140, file: !133, line: 75, baseType: !145, size: 256, offset: 64)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !140, file: !133, line: 78, baseType: !52, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !140, file: !133, line: 81, baseType: !52, size: 64, offset: 384)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !91, file: !133, line: 116, type: !140, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "slot0", scope: !91, file: !133, line: 842, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 256)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "slotvec", scope: !91, file: !133, line: 845, type: !159, isLocal: true, isDefinition: true)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !133, line: 834, size: 128, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !160, file: !133, line: 836, baseType: !39, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !160, file: !133, line: 837, baseType: !22, size: 64, offset: 64)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "nslots", scope: !91, file: !133, line: 843, type: !42, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "slotvec0", scope: !91, file: !133, line: 844, type: !160, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 704, elements: !170)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!170 = !{!171}
!171 = !DISubrange(count: 11)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !174, file: !177, line: 26, type: !178, isLocal: false, isDefinition: true)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !176)
!175 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!176 = !{!172}
!177 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 376, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 47)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "stdlib_allocator", scope: !183, file: !186, line: 5, type: !187, isLocal: false, isDefinition: true)
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !185)
!184 = !DIFile(filename: "./lib/allocator.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!185 = !{!181}
!186 = !DIFile(filename: "lib/allocator.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !189, line: 27, size: 256, elements: !190)
!189 = !DIFile(filename: "./lib/allocator.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!190 = !{!191, !195, !199, !203}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !188, file: !189, line: 37, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!24, !39}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !188, file: !189, line: 43, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!24, !24, !39}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !188, file: !189, line: 46, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !24}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !188, file: !189, line: 52, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !39}
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!208 = !DIFile(filename: "./lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!210 = !DIFile(filename: "./lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !213)
!212 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!213 = !{!22}
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !216)
!215 = !DIFile(filename: "./lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!216 = !{!24}
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !216)
!218 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !216)
!220 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!221 = !{!222}
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !223, line: 41, baseType: !7, size: 32, elements: !224)
!223 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!224 = !{!225}
!225 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !242)
!227 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!228 = !{!229}
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !231, file: !230, line: 186, baseType: !7, size: 32, elements: !240)
!230 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!231 = distinct !DISubprogram(name: "x2nrealloc", scope: !230, file: !230, line: 174, type: !232, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !235)
!232 = !DISubroutineType(types: !233)
!233 = !{!24, !24, !234, !39}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!235 = !{!236, !237, !238, !239}
!236 = !DILocalVariable(name: "p", arg: 1, scope: !231, file: !230, line: 174, type: !24)
!237 = !DILocalVariable(name: "pn", arg: 2, scope: !231, file: !230, line: 174, type: !234)
!238 = !DILocalVariable(name: "s", arg: 3, scope: !231, file: !230, line: 174, type: !39)
!239 = !DILocalVariable(name: "n", scope: !231, file: !230, line: 176, type: !39)
!240 = !{!241}
!241 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!242 = !{!39, !22, !24}
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!244 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !216)
!246 = !DIFile(filename: "./lib/xreadlink.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !250)
!248 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!249 = !{!13, !113}
!250 = !{!42, !129}
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !216)
!252 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !255)
!254 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!255 = !{!39}
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!257 = !DIFile(filename: "./lib/areadlink.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !260)
!259 = !DIFile(filename: "./lib/careadlinkat.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!260 = !{!39, !22}
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!262 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!264 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !267, retainedTypes: !216)
!266 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!267 = !{!268}
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !269, line: 41, baseType: !7, size: 32, elements: !270)
!269 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!271 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!272 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!273 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!274 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!275 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!276 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!277 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!278 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!279 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!280 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!281 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!282 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!283 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!284 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!285 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!286 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!287 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!288 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!289 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!290 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!291 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!292 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!293 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!294 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!295 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!296 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!297 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!298 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!299 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!300 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!301 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!302 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!303 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!304 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!305 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!306 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!307 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!308 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!309 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!310 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!311 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!312 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!313 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!314 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!315 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!316 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!317 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!318 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!319 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!320 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!379 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!382 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!383 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!384 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!385 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!386 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!387 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!388 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!389 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!390 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!391 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!392 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!393 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!466 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!539 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!540 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!541 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!542 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!543 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!544 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!545 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!546 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!547 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!548 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!549 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!550 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!551 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!552 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!553 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!555 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!556 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!557 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!558 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!559 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!560 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!586 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!587 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!588 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!589 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!590 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!595 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!596 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!597 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!598 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64)
!655 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !216)
!657 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!658 = distinct !DICompileUnit(language: DW_LANG_C99, file: !659, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !216)
!659 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!660 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!661 = !{i32 2, !"Dwarf Version", i32 4}
!662 = !{i32 2, !"Debug Info Version", i32 3}
!663 = !{i32 1, !"wchar_size", i32 4}
!664 = !{i32 7, !"PIC Level", i32 2}
!665 = !{i32 7, !"PIE Level", i32 2}
!666 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 85, type: !667, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !42}
!669 = !{!670}
!670 = !DILocalVariable(name: "status", arg: 1, scope: !666, file: !3, line: 85, type: !42)
!671 = !DILocalVariable(name: "infomap", scope: !672, file: !6, line: 632, type: !686)
!672 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !673, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !675)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !52}
!675 = !{!676, !671, !677, !678, !685}
!676 = !DILocalVariable(name: "program", arg: 1, scope: !672, file: !6, line: 630, type: !52)
!677 = !DILocalVariable(name: "node", scope: !672, file: !6, line: 642, type: !52)
!678 = !DILocalVariable(name: "map_prog", scope: !672, file: !6, line: 643, type: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !672, file: !6, line: 632, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !681, file: !6, line: 632, baseType: !52, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !681, file: !6, line: 632, baseType: !52, size: 64, offset: 64)
!685 = !DILocalVariable(name: "lc_messages", scope: !672, file: !6, line: 655, type: !52)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 896, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 7)
!689 = !DILocation(line: 632, column: 67, scope: !672, inlinedAt: !690)
!690 = distinct !DILocation(line: 123, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 90, column: 5)
!692 = distinct !DILexicalBlock(scope: !666, file: !3, line: 87, column: 7)
!693 = !DILocation(line: 85, column: 12, scope: !666)
!694 = !DILocation(line: 87, column: 14, scope: !692)
!695 = !DILocation(line: 87, column: 7, scope: !666)
!696 = !DILocation(line: 88, column: 5, scope: !697)
!697 = distinct !DILexicalBlock(scope: !692, file: !3, line: 88, column: 5)
!698 = !{!699, !699, i64 0}
!699 = !{!"any pointer", !700, i64 0}
!700 = !{!"omnipotent char", !701, i64 0}
!701 = !{!"Simple C/C++ TBAA"}
!702 = !DILocation(line: 91, column: 7, scope: !691)
!703 = !DILocation(line: 92, column: 7, scope: !691)
!704 = !DILocation(line: 587, column: 3, scope: !705, inlinedAt: !708)
!705 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !706, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !64)
!706 = !DISubroutineType(types: !707)
!707 = !{null}
!708 = distinct !DILocation(line: 96, column: 7, scope: !691)
!709 = !DILocation(line: 98, column: 7, scope: !691)
!710 = !DILocation(line: 103, column: 7, scope: !691)
!711 = !DILocation(line: 104, column: 7, scope: !691)
!712 = !DILocation(line: 105, column: 7, scope: !691)
!713 = !DILocation(line: 108, column: 7, scope: !691)
!714 = !DILocation(line: 111, column: 7, scope: !691)
!715 = !DILocation(line: 117, column: 7, scope: !691)
!716 = !DILocation(line: 632, column: 3, scope: !672, inlinedAt: !690)
!717 = !DILocation(line: 643, column: 36, scope: !672, inlinedAt: !690)
!718 = !DILocation(line: 643, column: 25, scope: !672, inlinedAt: !690)
!719 = !DILocation(line: 645, column: 33, scope: !672, inlinedAt: !690)
!720 = !DILocation(line: 645, column: 3, scope: !672, inlinedAt: !690)
!721 = !DILocation(line: 646, column: 13, scope: !672, inlinedAt: !690)
!722 = !DILocation(line: 645, column: 20, scope: !672, inlinedAt: !690)
!723 = !{!724, !699, i64 0}
!724 = !{!"infomap", !699, i64 0, !699, i64 8}
!725 = !DILocation(line: 645, column: 10, scope: !672, inlinedAt: !690)
!726 = !DILocation(line: 645, column: 28, scope: !672, inlinedAt: !690)
!727 = distinct !{!727, !728, !729}
!728 = !DILocation(line: 645, column: 3, scope: !672)
!729 = !DILocation(line: 646, column: 13, scope: !672)
!730 = !DILocation(line: 648, column: 17, scope: !731, inlinedAt: !690)
!731 = distinct !DILexicalBlock(scope: !672, file: !6, line: 648, column: 7)
!732 = !{!724, !699, i64 8}
!733 = !DILocation(line: 648, column: 7, scope: !731, inlinedAt: !690)
!734 = !DILocation(line: 648, column: 7, scope: !672, inlinedAt: !690)
!735 = !DILocation(line: 642, column: 15, scope: !672, inlinedAt: !690)
!736 = !DILocation(line: 651, column: 3, scope: !672, inlinedAt: !690)
!737 = !DILocation(line: 655, column: 29, scope: !672, inlinedAt: !690)
!738 = !DILocation(line: 655, column: 15, scope: !672, inlinedAt: !690)
!739 = !DILocation(line: 656, column: 7, scope: !740, inlinedAt: !690)
!740 = distinct !DILexicalBlock(scope: !672, file: !6, line: 656, column: 7)
!741 = !DILocation(line: 656, column: 19, scope: !740, inlinedAt: !690)
!742 = !DILocation(line: 656, column: 22, scope: !740, inlinedAt: !690)
!743 = !DILocation(line: 656, column: 7, scope: !672, inlinedAt: !690)
!744 = !DILocation(line: 662, column: 7, scope: !745, inlinedAt: !690)
!745 = distinct !DILexicalBlock(scope: !740, file: !6, line: 657, column: 5)
!746 = !DILocation(line: 664, column: 5, scope: !745, inlinedAt: !690)
!747 = !DILocation(line: 665, column: 3, scope: !672, inlinedAt: !690)
!748 = !DILocation(line: 667, column: 3, scope: !672, inlinedAt: !690)
!749 = !DILocation(line: 669, column: 1, scope: !672, inlinedAt: !690)
!750 = !DILocation(line: 125, column: 3, scope: !666)
!751 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 311, type: !752, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !755)
!752 = !DISubroutineType(types: !753)
!753 = !{!42, !42, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!755 = !{!756, !757, !758, !759, !761}
!756 = !DILocalVariable(name: "argc", arg: 1, scope: !751, file: !3, line: 311, type: !42)
!757 = !DILocalVariable(name: "argv", arg: 2, scope: !751, file: !3, line: 311, type: !754)
!758 = !DILocalVariable(name: "c", scope: !751, file: !3, line: 313, type: !42)
!759 = !DILocalVariable(name: "opt_fileno", scope: !760, file: !3, line: 326, type: !42)
!760 = distinct !DILexicalBlock(scope: !751, file: !3, line: 325, column: 5)
!761 = !DILocalVariable(name: "exit_status", scope: !751, file: !3, line: 390, type: !42)
!762 = !DILocalVariable(name: "search_path", scope: !763, file: !3, line: 215, type: !810)
!763 = distinct !DISubprogram(name: "set_LD_PRELOAD", scope: !3, file: !3, line: 188, type: !706, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !764)
!764 = !{!765, !766, !767, !768, !762, !769, !771, !772}
!765 = !DILocalVariable(name: "ret", scope: !763, file: !3, line: 190, type: !42)
!766 = !DILocalVariable(name: "preload_env", scope: !763, file: !3, line: 194, type: !52)
!767 = !DILocalVariable(name: "old_libs", scope: !763, file: !3, line: 196, type: !22)
!768 = !DILocalVariable(name: "LD_PRELOAD", scope: !763, file: !3, line: 197, type: !22)
!769 = !DILocalVariable(name: "path", scope: !763, file: !3, line: 221, type: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!771 = !DILocalVariable(name: "libstdbuf", scope: !763, file: !3, line: 222, type: !22)
!772 = !DILocalVariable(name: "sb", scope: !773, file: !3, line: 226, type: !774)
!773 = distinct !DILexicalBlock(scope: !763, file: !3, line: 225, column: 5)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !775, line: 46, size: 1152, elements: !776)
!775 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!776 = !{!777, !779, !781, !783, !785, !787, !789, !790, !791, !794, !796, !798, !806, !807, !808}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !774, file: !775, line: 48, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !28, line: 143, baseType: !29)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !774, file: !775, line: 53, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !28, line: 146, baseType: !29)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !774, file: !775, line: 61, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !28, line: 149, baseType: !29)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !774, file: !775, line: 62, baseType: !784, size: 32, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !28, line: 148, baseType: !7)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !774, file: !775, line: 64, baseType: !786, size: 32, offset: 224)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !28, line: 144, baseType: !7)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !774, file: !775, line: 65, baseType: !788, size: 32, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !28, line: 145, baseType: !7)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !774, file: !775, line: 67, baseType: !42, size: 32, offset: 288)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !774, file: !775, line: 69, baseType: !778, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !774, file: !775, line: 74, baseType: !792, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !28, line: 150, baseType: !793)
!793 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !774, file: !775, line: 78, baseType: !795, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !28, line: 172, baseType: !793)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !774, file: !775, line: 80, baseType: !797, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !28, line: 177, baseType: !793)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !774, file: !775, line: 91, baseType: !799, size: 128, offset: 576)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !800, line: 9, size: 128, elements: !801)
!800 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!801 = !{!802, !804}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !799, file: !800, line: 11, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !28, line: 158, baseType: !793)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !799, file: !800, line: 12, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !28, line: 194, baseType: !793)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !774, file: !775, line: 92, baseType: !799, size: 128, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !774, file: !775, line: 93, baseType: !799, size: 128, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !774, file: !775, line: 106, baseType: !809, size: 192, offset: 960)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 192, elements: !44)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 192, elements: !44)
!811 = !DILocation(line: 215, column: 21, scope: !763, inlinedAt: !812)
!812 = distinct !DILocation(line: 385, column: 3, scope: !751)
!813 = !DILocation(line: 311, column: 11, scope: !751)
!814 = !DILocation(line: 311, column: 24, scope: !751)
!815 = !DILocation(line: 316, column: 21, scope: !751)
!816 = !DILocation(line: 316, column: 3, scope: !751)
!817 = !DILocation(line: 317, column: 3, scope: !751)
!818 = !DILocation(line: 318, column: 3, scope: !751)
!819 = !DILocation(line: 319, column: 3, scope: !751)
!820 = !DILocalVariable(name: "status", arg: 1, scope: !821, file: !6, line: 99, type: !42)
!821 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !667, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !822)
!822 = !{!820}
!823 = !DILocation(line: 99, column: 30, scope: !821, inlinedAt: !824)
!824 = distinct !DILocation(line: 321, column: 3, scope: !751)
!825 = !DILocation(line: 102, column: 18, scope: !826, inlinedAt: !824)
!826 = distinct !DILexicalBlock(scope: !821, file: !6, line: 101, column: 7)
!827 = !{!828, !828, i64 0}
!828 = !{!"int", !700, i64 0}
!829 = !DILocation(line: 322, column: 3, scope: !751)
!830 = !DILocation(line: 324, column: 3, scope: !751)
!831 = !DILocation(line: 324, column: 15, scope: !751)
!832 = !DILocation(line: 313, column: 7, scope: !751)
!833 = !DILocalVariable(name: "ret", scope: !834, file: !3, line: 169, type: !42)
!834 = distinct !DISubprogram(name: "optc_to_fileno", scope: !3, file: !3, line: 167, type: !835, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!42, !42}
!837 = !{!838, !833}
!838 = !DILocalVariable(name: "c", arg: 1, scope: !834, file: !3, line: 167, type: !42)
!839 = !DILocation(line: 169, column: 7, scope: !834, inlinedAt: !840)
!840 = distinct !DILocation(line: 334, column: 24, scope: !841)
!841 = distinct !DILexicalBlock(scope: !760, file: !3, line: 329, column: 9)
!842 = !DILocation(line: 178, column: 7, scope: !843, inlinedAt: !840)
!843 = distinct !DILexicalBlock(scope: !834, file: !3, line: 172, column: 5)
!844 = !DILocation(line: 181, column: 7, scope: !843, inlinedAt: !840)
!845 = !DILocation(line: 326, column: 11, scope: !760)
!846 = !DILocation(line: 336, column: 30, scope: !841)
!847 = !DILocation(line: 336, column: 35, scope: !841)
!848 = !{!849, !828, i64 8}
!849 = !{!"", !850, i64 0, !828, i64 8, !699, i64 16}
!850 = !{!"long", !700, i64 0}
!851 = !DILocation(line: 337, column: 30, scope: !841)
!852 = !DILocation(line: 337, column: 11, scope: !841)
!853 = !DILocation(line: 337, column: 29, scope: !841)
!854 = !{!700, !700, i64 0}
!855 = !DILocalVariable(name: "c", arg: 1, scope: !856, file: !857, line: 300, type: !42)
!856 = distinct !DISubprogram(name: "c_isspace", scope: !857, file: !857, line: 300, type: !858, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !860)
!857 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!858 = !DISubroutineType(types: !859)
!859 = !{!74, !42}
!860 = !{!855}
!861 = !DILocation(line: 300, column: 16, scope: !856, inlinedAt: !862)
!862 = distinct !DILocation(line: 337, column: 18, scope: !841)
!863 = !DILocation(line: 302, column: 3, scope: !856, inlinedAt: !862)
!864 = !DILocation(line: 338, column: 19, scope: !841)
!865 = distinct !{!865, !852, !864}
!866 = !DILocation(line: 339, column: 30, scope: !841)
!867 = !DILocation(line: 339, column: 37, scope: !841)
!868 = !{!849, !699, i64 16}
!869 = !DILocation(line: 340, column: 17, scope: !870)
!870 = distinct !DILexicalBlock(scope: !841, file: !3, line: 340, column: 15)
!871 = !DILocation(line: 340, column: 24, scope: !870)
!872 = !DILocation(line: 340, column: 27, scope: !870)
!873 = !DILocation(line: 340, column: 35, scope: !870)
!874 = !DILocation(line: 340, column: 15, scope: !841)
!875 = !DILocation(line: 345, column: 28, scope: !876)
!876 = distinct !DILexicalBlock(scope: !870, file: !3, line: 341, column: 13)
!877 = !DILocation(line: 345, column: 15, scope: !876)
!878 = !DILocation(line: 346, column: 15, scope: !876)
!879 = !DILocation(line: 349, column: 16, scope: !880)
!880 = distinct !DILexicalBlock(scope: !841, file: !3, line: 349, column: 15)
!881 = !DILocation(line: 350, column: 15, scope: !880)
!882 = !DILocalVariable(name: "str", arg: 1, scope: !883, file: !3, line: 66, type: !52)
!883 = distinct !DISubprogram(name: "parse_size", scope: !3, file: !3, line: 66, type: !884, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{!42, !52, !234}
!886 = !{!882, !887, !888, !889}
!887 = !DILocalVariable(name: "size", arg: 2, scope: !883, file: !3, line: 66, type: !234)
!888 = !DILocalVariable(name: "tmp_size", scope: !883, file: !3, line: 68, type: !25)
!889 = !DILocalVariable(name: "e", scope: !883, file: !3, line: 69, type: !13)
!890 = !DILocation(line: 66, column: 25, scope: !883, inlinedAt: !891)
!891 = distinct !DILocation(line: 350, column: 18, scope: !880)
!892 = !DILocation(line: 68, column: 3, scope: !883, inlinedAt: !891)
!893 = !DILocation(line: 68, column: 13, scope: !883, inlinedAt: !891)
!894 = !DILocation(line: 69, column: 25, scope: !883, inlinedAt: !891)
!895 = !DILocation(line: 69, column: 21, scope: !883, inlinedAt: !891)
!896 = !DILocation(line: 73, column: 7, scope: !883, inlinedAt: !891)
!897 = !DILocation(line: 80, column: 3, scope: !883, inlinedAt: !891)
!898 = !DILocation(line: 80, column: 48, scope: !883, inlinedAt: !891)
!899 = !DILocation(line: 80, column: 12, scope: !883, inlinedAt: !891)
!900 = !DILocation(line: 350, column: 58, scope: !880)
!901 = !DILocation(line: 66, column: 38, scope: !883, inlinedAt: !891)
!902 = !DILocation(line: 75, column: 7, scope: !903, inlinedAt: !891)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 74, column: 5)
!904 = distinct !DILexicalBlock(scope: !883, file: !3, line: 73, column: 7)
!905 = !DILocation(line: 75, column: 13, scope: !903, inlinedAt: !891)
!906 = !DILocation(line: 76, column: 15, scope: !903, inlinedAt: !891)
!907 = !{!850, !850, i64 0}
!908 = !DILocation(line: 76, column: 13, scope: !903, inlinedAt: !891)
!909 = !DILocation(line: 82, column: 1, scope: !883, inlinedAt: !891)
!910 = !DILocation(line: 349, column: 15, scope: !841)
!911 = distinct !{!911, !830, !912}
!912 = !DILocation(line: 362, column: 5, scope: !751)
!913 = !DILocation(line: 351, column: 13, scope: !880)
!914 = !DILocation(line: 80, column: 9, scope: !883, inlinedAt: !891)
!915 = !DILocation(line: 355, column: 9, scope: !841)
!916 = !DILocation(line: 357, column: 9, scope: !841)
!917 = !DILocation(line: 360, column: 11, scope: !841)
!918 = !DILocation(line: 364, column: 11, scope: !751)
!919 = !DILocation(line: 364, column: 8, scope: !751)
!920 = !DILocation(line: 368, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !751, file: !3, line: 368, column: 7)
!922 = !DILocation(line: 368, column: 7, scope: !751)
!923 = !DILocation(line: 370, column: 20, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !3, line: 369, column: 5)
!925 = !DILocation(line: 370, column: 7, scope: !924)
!926 = !DILocation(line: 371, column: 7, scope: !924)
!927 = !DILocalVariable(name: "env_set", scope: !928, file: !3, line: 277, type: !74)
!928 = distinct !DISubprogram(name: "set_libstdbuf_options", scope: !3, file: !3, line: 275, type: !929, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{!74}
!931 = !{!927, !932, !934, !939, !940, !943}
!932 = !DILocalVariable(name: "i", scope: !933, file: !3, line: 279, type: !39)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 279, column: 3)
!934 = !DILocalVariable(name: "var", scope: !935, file: !3, line: 283, type: !22)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 282, column: 9)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 281, column: 11)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 280, column: 5)
!938 = distinct !DILexicalBlock(scope: !933, file: !3, line: 279, column: 3)
!939 = !DILocalVariable(name: "ret", scope: !935, file: !3, line: 284, type: !42)
!940 = !DILocalVariable(name: "__res", scope: !941, file: !3, line: 287, type: !42)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 287, column: 19)
!942 = distinct !DILexicalBlock(scope: !935, file: !3, line: 286, column: 15)
!943 = !DILocalVariable(name: "__res", scope: !944, file: !3, line: 290, type: !42)
!944 = distinct !DILexicalBlock(scope: !942, file: !3, line: 290, column: 19)
!945 = !DILocation(line: 277, column: 8, scope: !928, inlinedAt: !946)
!946 = distinct !DILocation(line: 374, column: 9, scope: !947)
!947 = distinct !DILexicalBlock(scope: !751, file: !3, line: 374, column: 7)
!948 = !DILocation(line: 279, column: 15, scope: !933, inlinedAt: !946)
!949 = !DILocation(line: 281, column: 21, scope: !936, inlinedAt: !946)
!950 = !DILocation(line: 281, column: 11, scope: !936, inlinedAt: !946)
!951 = !DILocation(line: 281, column: 11, scope: !937, inlinedAt: !946)
!952 = !DILocation(line: 283, column: 11, scope: !935, inlinedAt: !946)
!953 = !DILocation(line: 286, column: 15, scope: !942, inlinedAt: !946)
!954 = !DILocation(line: 286, column: 33, scope: !942, inlinedAt: !946)
!955 = !DILocation(line: 0, scope: !956, inlinedAt: !946)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 290, column: 19)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 290, column: 19)
!958 = distinct !DILexicalBlock(scope: !944, file: !3, line: 290, column: 19)
!959 = !DILocalVariable(name: "__c", arg: 1, scope: !960, file: !114, line: 213, type: !42)
!960 = distinct !DISubprogram(name: "toupper", scope: !114, file: !114, line: 213, type: !835, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !961)
!961 = !{!959}
!962 = !DILocation(line: 213, column: 1, scope: !960, inlinedAt: !963)
!963 = distinct !DILocation(line: 0, scope: !956, inlinedAt: !946)
!964 = !DILocation(line: 215, column: 22, scope: !960, inlinedAt: !963)
!965 = !DILocation(line: 215, column: 39, scope: !960, inlinedAt: !963)
!966 = !DILocation(line: 215, column: 38, scope: !960, inlinedAt: !963)
!967 = !DILocation(line: 215, column: 37, scope: !960, inlinedAt: !963)
!968 = !DILocation(line: 215, column: 10, scope: !960, inlinedAt: !963)
!969 = !DILocation(line: 286, column: 15, scope: !935, inlinedAt: !946)
!970 = !DILocation(line: 283, column: 17, scope: !935, inlinedAt: !946)
!971 = !DILocation(line: 287, column: 19, scope: !942, inlinedAt: !946)
!972 = !DILocation(line: 284, column: 15, scope: !935, inlinedAt: !946)
!973 = !DILocation(line: 287, column: 13, scope: !942, inlinedAt: !946)
!974 = !DILocation(line: 290, column: 19, scope: !944, inlinedAt: !946)
!975 = !DILocation(line: 290, column: 19, scope: !942, inlinedAt: !946)
!976 = !{!849, !850, i64 0}
!977 = !DILocation(line: 0, scope: !942, inlinedAt: !946)
!978 = !DILocation(line: 293, column: 19, scope: !979, inlinedAt: !946)
!979 = distinct !DILexicalBlock(scope: !935, file: !3, line: 293, column: 15)
!980 = !DILocation(line: 293, column: 15, scope: !935, inlinedAt: !946)
!981 = !DILocation(line: 294, column: 13, scope: !979, inlinedAt: !946)
!982 = !DILocation(line: 296, column: 23, scope: !983, inlinedAt: !946)
!983 = distinct !DILexicalBlock(scope: !935, file: !3, line: 296, column: 15)
!984 = !DILocation(line: 296, column: 15, scope: !983, inlinedAt: !946)
!985 = !DILocation(line: 296, column: 28, scope: !983, inlinedAt: !946)
!986 = !DILocation(line: 296, column: 15, scope: !935, inlinedAt: !946)
!987 = !DILocation(line: 298, column: 15, scope: !988, inlinedAt: !946)
!988 = distinct !DILexicalBlock(scope: !983, file: !3, line: 297, column: 13)
!989 = !DILocation(line: 304, column: 9, scope: !936, inlinedAt: !946)
!990 = !DILocation(line: 304, column: 9, scope: !935, inlinedAt: !946)
!991 = !DILocation(line: 0, scope: !928, inlinedAt: !946)
!992 = !DILocation(line: 374, column: 7, scope: !751)
!993 = !DILocation(line: 307, column: 10, scope: !928, inlinedAt: !946)
!994 = !DILocation(line: 376, column: 20, scope: !995)
!995 = distinct !DILexicalBlock(scope: !947, file: !3, line: 375, column: 5)
!996 = !DILocation(line: 376, column: 7, scope: !995)
!997 = !DILocation(line: 377, column: 7, scope: !995)
!998 = !DILocation(line: 382, column: 21, scope: !751)
!999 = !DILocalVariable(name: "arg", arg: 1, scope: !1000, file: !3, line: 135, type: !52)
!1000 = distinct !DISubprogram(name: "set_program_path", scope: !3, file: !3, line: 135, type: !673, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1001)
!1001 = !{!999, !1002, !1005, !1009}
!1002 = !DILocalVariable(name: "path", scope: !1003, file: !3, line: 143, type: !22)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 142, column: 5)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 137, column: 7)
!1005 = !DILocalVariable(name: "dir", scope: !1006, file: !3, line: 148, type: !22)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 147, column: 9)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 146, column: 16)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 144, column: 11)
!1009 = !DILocalVariable(name: "candidate", scope: !1010, file: !3, line: 152, type: !22)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 151, column: 13)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 150, column: 11)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 150, column: 11)
!1013 = !DILocation(line: 135, column: 31, scope: !1000, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 382, column: 3, scope: !751)
!1015 = !DILocation(line: 137, column: 7, scope: !1004, inlinedAt: !1014)
!1016 = !DILocation(line: 137, column: 7, scope: !1000, inlinedAt: !1014)
!1017 = !DILocation(line: 139, column: 22, scope: !1018, inlinedAt: !1014)
!1018 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 138, column: 5)
!1019 = !DILocation(line: 139, column: 20, scope: !1018, inlinedAt: !1014)
!1020 = !DILocation(line: 140, column: 5, scope: !1018, inlinedAt: !1014)
!1021 = !DILocation(line: 143, column: 20, scope: !1003, inlinedAt: !1014)
!1022 = !DILocation(line: 143, column: 13, scope: !1003, inlinedAt: !1014)
!1023 = !DILocation(line: 144, column: 11, scope: !1008, inlinedAt: !1014)
!1024 = !DILocation(line: 144, column: 11, scope: !1003, inlinedAt: !1014)
!1025 = !DILocation(line: 145, column: 24, scope: !1008, inlinedAt: !1014)
!1026 = !DILocation(line: 145, column: 22, scope: !1008, inlinedAt: !1014)
!1027 = !DILocation(line: 145, column: 9, scope: !1008, inlinedAt: !1014)
!1028 = !DILocation(line: 146, column: 24, scope: !1007, inlinedAt: !1014)
!1029 = !DILocation(line: 146, column: 22, scope: !1007, inlinedAt: !1014)
!1030 = !DILocation(line: 146, column: 16, scope: !1008, inlinedAt: !1014)
!1031 = !DILocation(line: 149, column: 18, scope: !1006, inlinedAt: !1014)
!1032 = !DILocation(line: 150, column: 22, scope: !1012, inlinedAt: !1014)
!1033 = !DILocation(line: 148, column: 17, scope: !1006, inlinedAt: !1014)
!1034 = !DILocation(line: 150, column: 46, scope: !1011, inlinedAt: !1014)
!1035 = !DILocation(line: 150, column: 11, scope: !1012, inlinedAt: !1014)
!1036 = !DILocation(line: 152, column: 33, scope: !1010, inlinedAt: !1014)
!1037 = !DILocation(line: 152, column: 21, scope: !1010, inlinedAt: !1014)
!1038 = !DILocation(line: 153, column: 19, scope: !1039, inlinedAt: !1014)
!1039 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 153, column: 19)
!1040 = !DILocation(line: 153, column: 44, scope: !1039, inlinedAt: !1014)
!1041 = !DILocation(line: 153, column: 19, scope: !1010, inlinedAt: !1014)
!1042 = !DILocation(line: 155, column: 34, scope: !1043, inlinedAt: !1014)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 154, column: 17)
!1044 = !DILocation(line: 155, column: 32, scope: !1043, inlinedAt: !1014)
!1045 = !DILocation(line: 156, column: 19, scope: !1043, inlinedAt: !1014)
!1046 = !DILocation(line: 159, column: 15, scope: !1010, inlinedAt: !1014)
!1047 = !DILocation(line: 150, column: 61, scope: !1011, inlinedAt: !1014)
!1048 = distinct !{!1048, !1049, !1050}
!1049 = !DILocation(line: 150, column: 11, scope: !1012)
!1050 = !DILocation(line: 160, column: 13, scope: !1012)
!1051 = !DILocation(line: 0, scope: !1007, inlinedAt: !1014)
!1052 = !DILocation(line: 162, column: 7, scope: !1003, inlinedAt: !1014)
!1053 = !DILocation(line: 383, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !751, file: !3, line: 383, column: 7)
!1055 = !DILocation(line: 383, column: 7, scope: !751)
!1056 = !DILocation(line: 384, column: 20, scope: !1054)
!1057 = !DILocation(line: 384, column: 18, scope: !1054)
!1058 = !DILocation(line: 384, column: 5, scope: !1054)
!1059 = !DILocation(line: 216, column: 5, scope: !763, inlinedAt: !812)
!1060 = !DILocation(line: 196, column: 20, scope: !763, inlinedAt: !812)
!1061 = !DILocation(line: 196, column: 9, scope: !763, inlinedAt: !812)
!1062 = !DILocation(line: 197, column: 3, scope: !763, inlinedAt: !812)
!1063 = !DILocation(line: 215, column: 3, scope: !763, inlinedAt: !812)
!1064 = !DILocation(line: 215, column: 37, scope: !763, inlinedAt: !812)
!1065 = !DILocation(line: 222, column: 3, scope: !763, inlinedAt: !812)
!1066 = !DILocation(line: 226, column: 7, scope: !773, inlinedAt: !812)
!1067 = !DILocation(line: 228, column: 12, scope: !1068, inlinedAt: !812)
!1068 = distinct !DILexicalBlock(scope: !773, file: !3, line: 228, column: 11)
!1069 = !DILocation(line: 228, column: 11, scope: !773, inlinedAt: !812)
!1070 = !DILocation(line: 221, column: 29, scope: !763, inlinedAt: !812)
!1071 = !DILocation(line: 221, column: 22, scope: !763, inlinedAt: !812)
!1072 = !DILocation(line: 233, column: 13, scope: !773, inlinedAt: !812)
!1073 = !DILocation(line: 230, column: 23, scope: !1074, inlinedAt: !812)
!1074 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 229, column: 9)
!1075 = !DILocation(line: 222, column: 9, scope: !763, inlinedAt: !812)
!1076 = !DILocation(line: 230, column: 21, scope: !1074, inlinedAt: !812)
!1077 = !DILocation(line: 231, column: 11, scope: !1074, inlinedAt: !812)
!1078 = !DILocation(line: 190, column: 7, scope: !763, inlinedAt: !812)
!1079 = !DILocation(line: 234, column: 15, scope: !1080, inlinedAt: !812)
!1080 = distinct !DILexicalBlock(scope: !773, file: !3, line: 234, column: 11)
!1081 = !DILocation(line: 234, column: 11, scope: !773, inlinedAt: !812)
!1082 = !DILocation(line: 235, column: 9, scope: !1080, inlinedAt: !812)
!1083 = !DILocation(line: 236, column: 17, scope: !1084, inlinedAt: !812)
!1084 = distinct !DILexicalBlock(scope: !773, file: !3, line: 236, column: 11)
!1085 = !DILocation(line: 226, column: 19, scope: !773, inlinedAt: !812)
!1086 = !DILocalVariable(name: "__path", arg: 1, scope: !1087, file: !1088, line: 453, type: !52)
!1087 = distinct !DISubprogram(name: "stat", scope: !1088, file: !1088, line: 453, type: !1089, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1092)
!1088 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!42, !52, !1091}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!1092 = !{!1086, !1093}
!1093 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1087, file: !1088, line: 453, type: !1091)
!1094 = !DILocation(line: 453, column: 1, scope: !1087, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 236, column: 11, scope: !1084, inlinedAt: !812)
!1096 = !DILocation(line: 455, column: 10, scope: !1087, inlinedAt: !1095)
!1097 = !DILocation(line: 236, column: 33, scope: !1084, inlinedAt: !812)
!1098 = !DILocation(line: 0, scope: !773, inlinedAt: !812)
!1099 = !DILocation(line: 236, column: 11, scope: !773, inlinedAt: !812)
!1100 = !DILocation(line: 238, column: 7, scope: !773, inlinedAt: !812)
!1101 = !DILocation(line: 240, column: 7, scope: !773, inlinedAt: !812)
!1102 = !DILocation(line: 241, column: 14, scope: !1103, inlinedAt: !812)
!1103 = distinct !DILexicalBlock(scope: !773, file: !3, line: 241, column: 12)
!1104 = !DILocation(line: 241, column: 12, scope: !773, inlinedAt: !812)
!1105 = !DILocation(line: 242, column: 9, scope: !1103, inlinedAt: !812)
!1106 = !DILocation(line: 243, column: 5, scope: !763, inlinedAt: !812)
!1107 = !DILocation(line: 228, column: 13, scope: !1068, inlinedAt: !812)
!1108 = !DILocation(line: 0, scope: !1109, inlinedAt: !812)
!1109 = distinct !DILexicalBlock(scope: !763, file: !3, line: 247, column: 7)
!1110 = !DILocation(line: 247, column: 7, scope: !1109, inlinedAt: !812)
!1111 = !DILocation(line: 197, column: 9, scope: !763, inlinedAt: !812)
!1112 = !DILocation(line: 247, column: 7, scope: !763, inlinedAt: !812)
!1113 = !DILocation(line: 248, column: 11, scope: !1109, inlinedAt: !812)
!1114 = !DILocation(line: 248, column: 5, scope: !1109, inlinedAt: !812)
!1115 = !DILocation(line: 250, column: 11, scope: !1109, inlinedAt: !812)
!1116 = !DILocation(line: 252, column: 11, scope: !1117, inlinedAt: !812)
!1117 = distinct !DILexicalBlock(scope: !763, file: !3, line: 252, column: 7)
!1118 = !DILocation(line: 252, column: 7, scope: !763, inlinedAt: !812)
!1119 = !DILocation(line: 253, column: 5, scope: !1117, inlinedAt: !812)
!1120 = !DILocation(line: 255, column: 9, scope: !763, inlinedAt: !812)
!1121 = !DILocation(line: 255, column: 3, scope: !763, inlinedAt: !812)
!1122 = !DILocation(line: 257, column: 17, scope: !763, inlinedAt: !812)
!1123 = !DILocation(line: 257, column: 9, scope: !763, inlinedAt: !812)
!1124 = !DILocation(line: 263, column: 11, scope: !1125, inlinedAt: !812)
!1125 = distinct !DILexicalBlock(scope: !763, file: !3, line: 263, column: 7)
!1126 = !DILocation(line: 263, column: 7, scope: !763, inlinedAt: !812)
!1127 = !DILocation(line: 265, column: 7, scope: !1128, inlinedAt: !812)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 264, column: 5)
!1129 = !DILocation(line: 269, column: 1, scope: !763, inlinedAt: !812)
!1130 = !DILocation(line: 386, column: 9, scope: !751)
!1131 = !DILocation(line: 386, column: 3, scope: !751)
!1132 = !DILocation(line: 388, column: 11, scope: !751)
!1133 = !DILocation(line: 388, column: 3, scope: !751)
!1134 = !DILocation(line: 390, column: 21, scope: !751)
!1135 = !DILocation(line: 390, column: 27, scope: !751)
!1136 = !DILocation(line: 390, column: 7, scope: !751)
!1137 = !DILocation(line: 391, column: 20, scope: !751)
!1138 = !DILocation(line: 391, column: 58, scope: !751)
!1139 = !DILocation(line: 391, column: 51, scope: !751)
!1140 = !DILocation(line: 391, column: 3, scope: !751)
!1141 = !DILocation(line: 392, column: 3, scope: !751)
!1142 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !73, file: !73, line: 51, type: !673, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !68, retainedNodes: !1143)
!1143 = !{!1144}
!1144 = !DILocalVariable(name: "file", arg: 1, scope: !1142, file: !73, line: 51, type: !52)
!1145 = !DILocation(line: 51, column: 41, scope: !1142)
!1146 = !DILocation(line: 53, column: 13, scope: !1142)
!1147 = !DILocation(line: 54, column: 1, scope: !1142)
!1148 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !73, file: !73, line: 88, type: !1149, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !68, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !74}
!1151 = !{!1152}
!1152 = !DILocalVariable(name: "ignore", arg: 1, scope: !1148, file: !73, line: 88, type: !74)
!1153 = !DILocation(line: 88, column: 37, scope: !1148)
!1154 = !DILocation(line: 90, column: 16, scope: !1148)
!1155 = !{!1156, !1156, i64 0}
!1156 = !{!"_Bool", !700, i64 0}
!1157 = !DILocation(line: 91, column: 1, scope: !1148)
!1158 = distinct !DISubprogram(name: "close_stdout", scope: !73, file: !73, line: 117, type: !706, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !68, retainedNodes: !1159)
!1159 = !{!1160}
!1160 = !DILocalVariable(name: "write_error", scope: !1161, file: !73, line: 122, type: !52)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !73, line: 121, column: 5)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !73, line: 119, column: 7)
!1163 = !DILocation(line: 119, column: 21, scope: !1162)
!1164 = !DILocation(line: 119, column: 7, scope: !1162)
!1165 = !DILocation(line: 119, column: 29, scope: !1162)
!1166 = !DILocation(line: 120, column: 7, scope: !1162)
!1167 = !DILocation(line: 120, column: 12, scope: !1162)
!1168 = !{i8 0, i8 2}
!1169 = !DILocation(line: 120, column: 25, scope: !1162)
!1170 = !DILocation(line: 120, column: 28, scope: !1162)
!1171 = !DILocation(line: 120, column: 34, scope: !1162)
!1172 = !DILocation(line: 119, column: 7, scope: !1158)
!1173 = !DILocation(line: 122, column: 33, scope: !1161)
!1174 = !DILocation(line: 122, column: 19, scope: !1161)
!1175 = !DILocation(line: 123, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1161, file: !73, line: 123, column: 11)
!1177 = !DILocation(line: 0, scope: !1176)
!1178 = !DILocation(line: 123, column: 11, scope: !1161)
!1179 = !DILocation(line: 124, column: 36, scope: !1176)
!1180 = !DILocation(line: 124, column: 9, scope: !1176)
!1181 = !DILocation(line: 127, column: 9, scope: !1176)
!1182 = !DILocation(line: 129, column: 14, scope: !1161)
!1183 = !DILocation(line: 129, column: 7, scope: !1161)
!1184 = !DILocation(line: 134, column: 42, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1158, file: !73, line: 134, column: 7)
!1186 = !DILocation(line: 134, column: 28, scope: !1185)
!1187 = !DILocation(line: 134, column: 50, scope: !1185)
!1188 = !DILocation(line: 134, column: 7, scope: !1158)
!1189 = !DILocation(line: 135, column: 12, scope: !1185)
!1190 = !DILocation(line: 135, column: 5, scope: !1185)
!1191 = !DILocation(line: 136, column: 1, scope: !1158)
!1192 = distinct !DISubprogram(name: "dir_name", scope: !1193, file: !1193, line: 32, type: !1194, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !207, retainedNodes: !1196)
!1193 = !DIFile(filename: "lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!22, !52}
!1196 = !{!1197, !1198}
!1197 = !DILocalVariable(name: "file", arg: 1, scope: !1192, file: !1193, line: 32, type: !52)
!1198 = !DILocalVariable(name: "result", scope: !1192, file: !1193, line: 34, type: !22)
!1199 = !DILocation(line: 32, column: 23, scope: !1192)
!1200 = !DILocation(line: 34, column: 18, scope: !1192)
!1201 = !DILocation(line: 34, column: 9, scope: !1192)
!1202 = !DILocation(line: 35, column: 8, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1192, file: !1193, line: 35, column: 7)
!1204 = !DILocation(line: 35, column: 7, scope: !1192)
!1205 = !DILocation(line: 36, column: 5, scope: !1203)
!1206 = !DILocation(line: 37, column: 3, scope: !1192)
!1207 = distinct !DISubprogram(name: "dir_len", scope: !1208, file: !1208, line: 32, type: !1209, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1211)
!1208 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!39, !52}
!1211 = !{!1212, !1213, !1214}
!1212 = !DILocalVariable(name: "file", arg: 1, scope: !1207, file: !1208, line: 32, type: !52)
!1213 = !DILocalVariable(name: "prefix_length", scope: !1207, file: !1208, line: 34, type: !39)
!1214 = !DILocalVariable(name: "length", scope: !1207, file: !1208, line: 35, type: !39)
!1215 = !DILocation(line: 32, column: 22, scope: !1207)
!1216 = !DILocation(line: 34, column: 10, scope: !1207)
!1217 = !DILocation(line: 41, column: 24, scope: !1207)
!1218 = !DILocation(line: 38, column: 20, scope: !1207)
!1219 = !DILocation(line: 48, column: 17, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1207, file: !1208, line: 48, column: 3)
!1221 = !DILocation(line: 48, column: 39, scope: !1220)
!1222 = !DILocation(line: 35, column: 10, scope: !1207)
!1223 = !DILocation(line: 48, column: 8, scope: !1220)
!1224 = !DILocation(line: 0, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !1208, line: 48, column: 3)
!1226 = !DILocation(line: 49, column: 22, scope: !1225)
!1227 = !DILocation(line: 48, column: 3, scope: !1220)
!1228 = !DILocation(line: 50, column: 11, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !1208, line: 50, column: 9)
!1230 = !DILocation(line: 50, column: 9, scope: !1225)
!1231 = distinct !{!1231, !1227, !1232}
!1232 = !DILocation(line: 51, column: 7, scope: !1220)
!1233 = !DILocation(line: 52, column: 3, scope: !1207)
!1234 = distinct !DISubprogram(name: "mdir_name", scope: !1208, file: !1208, line: 71, type: !1194, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1235)
!1235 = !{!1236, !1237, !1238, !1239}
!1236 = !DILocalVariable(name: "file", arg: 1, scope: !1234, file: !1208, line: 71, type: !52)
!1237 = !DILocalVariable(name: "length", scope: !1234, file: !1208, line: 73, type: !39)
!1238 = !DILocalVariable(name: "append_dot", scope: !1234, file: !1208, line: 74, type: !74)
!1239 = !DILocalVariable(name: "dir", scope: !1234, file: !1208, line: 78, type: !22)
!1240 = !DILocation(line: 71, column: 24, scope: !1234)
!1241 = !DILocation(line: 32, column: 22, scope: !1207, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 73, column: 19, scope: !1234)
!1243 = !DILocation(line: 34, column: 10, scope: !1207, inlinedAt: !1242)
!1244 = !DILocation(line: 41, column: 24, scope: !1207, inlinedAt: !1242)
!1245 = !DILocation(line: 38, column: 20, scope: !1207, inlinedAt: !1242)
!1246 = !DILocation(line: 48, column: 17, scope: !1220, inlinedAt: !1242)
!1247 = !DILocation(line: 48, column: 39, scope: !1220, inlinedAt: !1242)
!1248 = !DILocation(line: 35, column: 10, scope: !1207, inlinedAt: !1242)
!1249 = !DILocation(line: 48, column: 8, scope: !1220, inlinedAt: !1242)
!1250 = !DILocation(line: 0, scope: !1225, inlinedAt: !1242)
!1251 = !DILocation(line: 49, column: 22, scope: !1225, inlinedAt: !1242)
!1252 = !DILocation(line: 48, column: 3, scope: !1220, inlinedAt: !1242)
!1253 = !DILocation(line: 50, column: 11, scope: !1229, inlinedAt: !1242)
!1254 = !DILocation(line: 50, column: 9, scope: !1225, inlinedAt: !1242)
!1255 = !DILocation(line: 73, column: 10, scope: !1234)
!1256 = !DILocation(line: 74, column: 29, scope: !1234)
!1257 = !DILocation(line: 78, column: 32, scope: !1234)
!1258 = !DILocation(line: 78, column: 30, scope: !1234)
!1259 = !DILocation(line: 78, column: 43, scope: !1234)
!1260 = !DILocation(line: 78, column: 15, scope: !1234)
!1261 = !DILocation(line: 78, column: 9, scope: !1234)
!1262 = !DILocation(line: 79, column: 8, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1234, file: !1208, line: 79, column: 7)
!1264 = !DILocation(line: 79, column: 7, scope: !1234)
!1265 = !DILocation(line: 81, column: 3, scope: !1234)
!1266 = !DILocation(line: 82, column: 7, scope: !1234)
!1267 = !DILocation(line: 83, column: 19, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1234, file: !1208, line: 82, column: 7)
!1269 = !DILocation(line: 83, column: 5, scope: !1268)
!1270 = !DILocation(line: 0, scope: !1234)
!1271 = !DILocation(line: 84, column: 3, scope: !1234)
!1272 = !DILocation(line: 84, column: 15, scope: !1234)
!1273 = !DILocation(line: 85, column: 3, scope: !1234)
!1274 = !DILocation(line: 86, column: 1, scope: !1234)
!1275 = distinct !DISubprogram(name: "last_component", scope: !1276, file: !1276, line: 30, type: !1194, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !211, retainedNodes: !1277)
!1276 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1277 = !{!1278, !1279, !1280, !1281}
!1278 = !DILocalVariable(name: "name", arg: 1, scope: !1275, file: !1276, line: 30, type: !52)
!1279 = !DILocalVariable(name: "base", scope: !1275, file: !1276, line: 32, type: !52)
!1280 = !DILocalVariable(name: "p", scope: !1275, file: !1276, line: 33, type: !52)
!1281 = !DILocalVariable(name: "saw_slash", scope: !1275, file: !1276, line: 34, type: !74)
!1282 = !DILocation(line: 30, column: 29, scope: !1275)
!1283 = !DILocation(line: 32, column: 15, scope: !1275)
!1284 = !DILocation(line: 34, column: 8, scope: !1275)
!1285 = !DILocation(line: 36, column: 3, scope: !1275)
!1286 = !DILocation(line: 0, scope: !1275)
!1287 = !DILocation(line: 36, column: 10, scope: !1275)
!1288 = !DILocation(line: 37, column: 9, scope: !1275)
!1289 = distinct !{!1289, !1285, !1288}
!1290 = !DILocation(line: 39, column: 18, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !1276, line: 39, column: 3)
!1292 = distinct !DILexicalBlock(scope: !1275, file: !1276, line: 39, column: 3)
!1293 = !DILocation(line: 0, scope: !1291)
!1294 = !DILocation(line: 0, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !1276, line: 41, column: 11)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !1276, line: 40, column: 5)
!1297 = !DILocation(line: 33, column: 15, scope: !1275)
!1298 = !DILocation(line: 39, column: 3, scope: !1292)
!1299 = !DILocation(line: 43, column: 16, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !1276, line: 43, column: 16)
!1301 = !DILocation(line: 43, column: 16, scope: !1295)
!1302 = !DILocation(line: 39, column: 23, scope: !1291)
!1303 = !DILocation(line: 39, column: 3, scope: !1291)
!1304 = distinct !{!1304, !1298, !1305}
!1305 = !DILocation(line: 48, column: 5, scope: !1292)
!1306 = !DILocation(line: 50, column: 3, scope: !1275)
!1307 = distinct !DISubprogram(name: "base_len", scope: !1276, file: !1276, line: 58, type: !1209, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !211, retainedNodes: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DILocalVariable(name: "name", arg: 1, scope: !1307, file: !1276, line: 58, type: !52)
!1310 = !DILocalVariable(name: "len", scope: !1307, file: !1276, line: 60, type: !39)
!1311 = !DILocalVariable(name: "prefix_len", scope: !1307, file: !1276, line: 61, type: !39)
!1312 = !DILocation(line: 58, column: 23, scope: !1307)
!1313 = !DILocation(line: 61, column: 10, scope: !1307)
!1314 = !DILocation(line: 63, column: 14, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1307, file: !1276, line: 63, column: 3)
!1316 = !DILocation(line: 60, column: 10, scope: !1307)
!1317 = !DILocation(line: 63, column: 8, scope: !1315)
!1318 = !DILocation(line: 0, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !1276, line: 63, column: 3)
!1320 = !DILocation(line: 63, column: 32, scope: !1319)
!1321 = !DILocation(line: 63, column: 38, scope: !1319)
!1322 = !DILocation(line: 63, column: 41, scope: !1319)
!1323 = !DILocation(line: 63, column: 3, scope: !1315)
!1324 = distinct !{!1324, !1323, !1325}
!1325 = !DILocation(line: 64, column: 5, scope: !1315)
!1326 = !DILocation(line: 74, column: 3, scope: !1307)
!1327 = distinct !DISubprogram(name: "file_name_concat", scope: !1328, file: !1328, line: 35, type: !1329, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !214, retainedNodes: !1331)
!1328 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!22, !52, !52, !754}
!1331 = !{!1332, !1333, !1334, !1335}
!1332 = !DILocalVariable(name: "dir", arg: 1, scope: !1327, file: !1328, line: 35, type: !52)
!1333 = !DILocalVariable(name: "base", arg: 2, scope: !1327, file: !1328, line: 35, type: !52)
!1334 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1327, file: !1328, line: 35, type: !754)
!1335 = !DILocalVariable(name: "p", scope: !1327, file: !1328, line: 37, type: !22)
!1336 = !DILocation(line: 35, column: 31, scope: !1327)
!1337 = !DILocation(line: 35, column: 48, scope: !1327)
!1338 = !DILocation(line: 35, column: 61, scope: !1327)
!1339 = !DILocation(line: 37, column: 13, scope: !1327)
!1340 = !DILocation(line: 37, column: 9, scope: !1327)
!1341 = !DILocation(line: 38, column: 9, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1327, file: !1328, line: 38, column: 7)
!1343 = !DILocation(line: 38, column: 7, scope: !1327)
!1344 = !DILocation(line: 39, column: 5, scope: !1342)
!1345 = !DILocation(line: 40, column: 3, scope: !1327)
!1346 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1347, file: !1347, line: 47, type: !1329, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1348)
!1347 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1349 = !DILocalVariable(name: "dir", arg: 1, scope: !1346, file: !1347, line: 47, type: !52)
!1350 = !DILocalVariable(name: "base", arg: 2, scope: !1346, file: !1347, line: 47, type: !52)
!1351 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1346, file: !1347, line: 47, type: !754)
!1352 = !DILocalVariable(name: "dirbase", scope: !1346, file: !1347, line: 49, type: !52)
!1353 = !DILocalVariable(name: "dirbaselen", scope: !1346, file: !1347, line: 50, type: !39)
!1354 = !DILocalVariable(name: "dirlen", scope: !1346, file: !1347, line: 51, type: !39)
!1355 = !DILocalVariable(name: "baselen", scope: !1346, file: !1347, line: 52, type: !39)
!1356 = !DILocalVariable(name: "sep", scope: !1346, file: !1347, line: 53, type: !23)
!1357 = !DILocalVariable(name: "p_concat", scope: !1346, file: !1347, line: 70, type: !22)
!1358 = !DILocalVariable(name: "p", scope: !1346, file: !1347, line: 71, type: !22)
!1359 = !DILocation(line: 47, column: 32, scope: !1346)
!1360 = !DILocation(line: 47, column: 49, scope: !1346)
!1361 = !DILocation(line: 47, column: 62, scope: !1346)
!1362 = !DILocation(line: 49, column: 25, scope: !1346)
!1363 = !DILocation(line: 49, column: 15, scope: !1346)
!1364 = !DILocation(line: 50, column: 23, scope: !1346)
!1365 = !DILocation(line: 50, column: 10, scope: !1346)
!1366 = !DILocation(line: 51, column: 27, scope: !1346)
!1367 = !DILocation(line: 51, column: 33, scope: !1346)
!1368 = !DILocation(line: 51, column: 10, scope: !1346)
!1369 = !DILocation(line: 52, column: 20, scope: !1346)
!1370 = !DILocation(line: 52, column: 10, scope: !1346)
!1371 = !DILocation(line: 53, column: 8, scope: !1346)
!1372 = !DILocation(line: 54, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1346, file: !1347, line: 54, column: 7)
!1374 = !DILocation(line: 54, column: 7, scope: !1346)
!1375 = !DILocation(line: 57, column: 13, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1347, line: 57, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !1347, line: 55, column: 5)
!1378 = !DILocation(line: 57, column: 39, scope: !1376)
!1379 = !DILocation(line: 57, column: 44, scope: !1376)
!1380 = !DILocation(line: 57, column: 11, scope: !1377)
!1381 = !DILocation(line: 60, column: 12, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1373, file: !1347, line: 60, column: 12)
!1383 = !DILocation(line: 60, column: 12, scope: !1373)
!1384 = !DILocation(line: 0, scope: !1346)
!1385 = !DILocation(line: 70, column: 42, scope: !1346)
!1386 = !DILocation(line: 70, column: 37, scope: !1346)
!1387 = !DILocation(line: 70, column: 35, scope: !1346)
!1388 = !DILocation(line: 70, column: 52, scope: !1346)
!1389 = !DILocation(line: 70, column: 62, scope: !1346)
!1390 = !DILocation(line: 70, column: 20, scope: !1346)
!1391 = !DILocation(line: 70, column: 9, scope: !1346)
!1392 = !DILocation(line: 73, column: 16, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1346, file: !1347, line: 73, column: 7)
!1394 = !DILocation(line: 73, column: 7, scope: !1346)
!1395 = !DILocalVariable(name: "__dest", arg: 1, scope: !1396, file: !1397, line: 45, type: !1400)
!1396 = distinct !DISubprogram(name: "mempcpy", scope: !1397, file: !1397, line: 45, type: !1398, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !1404)
!1397 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!24, !1400, !1401, !39}
!1400 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!1401 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1404 = !{!1395, !1405, !1406}
!1405 = !DILocalVariable(name: "__src", arg: 2, scope: !1396, file: !1397, line: 45, type: !1401)
!1406 = !DILocalVariable(name: "__len", arg: 3, scope: !1396, file: !1397, line: 45, type: !39)
!1407 = !DILocation(line: 45, column: 1, scope: !1396, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 76, column: 7, scope: !1346)
!1409 = !DILocation(line: 48, column: 57, scope: !1396, inlinedAt: !1408)
!1410 = !DILocation(line: 48, column: 10, scope: !1396, inlinedAt: !1408)
!1411 = !DILocation(line: 71, column: 9, scope: !1346)
!1412 = !DILocation(line: 77, column: 6, scope: !1346)
!1413 = !DILocation(line: 78, column: 5, scope: !1346)
!1414 = !DILocation(line: 80, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1346, file: !1347, line: 80, column: 7)
!1416 = !DILocation(line: 80, column: 7, scope: !1346)
!1417 = !DILocation(line: 81, column: 21, scope: !1415)
!1418 = !DILocation(line: 81, column: 5, scope: !1415)
!1419 = !DILocation(line: 45, column: 1, scope: !1396, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 83, column: 7, scope: !1346)
!1421 = !DILocation(line: 48, column: 57, scope: !1396, inlinedAt: !1420)
!1422 = !DILocation(line: 48, column: 10, scope: !1396, inlinedAt: !1420)
!1423 = !DILocation(line: 84, column: 6, scope: !1346)
!1424 = !DILocation(line: 86, column: 3, scope: !1346)
!1425 = !DILocation(line: 87, column: 1, scope: !1346)
!1426 = distinct !DISubprogram(name: "set_program_name", scope: !88, file: !88, line: 39, type: !673, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1427)
!1427 = !{!1428, !1429, !1430}
!1428 = !DILocalVariable(name: "argv0", arg: 1, scope: !1426, file: !88, line: 39, type: !52)
!1429 = !DILocalVariable(name: "slash", scope: !1426, file: !88, line: 46, type: !52)
!1430 = !DILocalVariable(name: "base", scope: !1426, file: !88, line: 47, type: !52)
!1431 = !DILocation(line: 39, column: 31, scope: !1426)
!1432 = !DILocation(line: 51, column: 13, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1426, file: !88, line: 51, column: 7)
!1434 = !DILocation(line: 51, column: 7, scope: !1426)
!1435 = !DILocation(line: 55, column: 14, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !88, line: 52, column: 5)
!1437 = !DILocation(line: 54, column: 7, scope: !1436)
!1438 = !DILocation(line: 56, column: 7, scope: !1436)
!1439 = !DILocation(line: 59, column: 11, scope: !1426)
!1440 = !DILocation(line: 46, column: 15, scope: !1426)
!1441 = !DILocation(line: 60, column: 17, scope: !1426)
!1442 = !DILocation(line: 60, column: 33, scope: !1426)
!1443 = !DILocation(line: 60, column: 11, scope: !1426)
!1444 = !DILocation(line: 47, column: 15, scope: !1426)
!1445 = !DILocation(line: 61, column: 12, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1426, file: !88, line: 61, column: 7)
!1447 = !DILocation(line: 61, column: 20, scope: !1446)
!1448 = !DILocation(line: 61, column: 25, scope: !1446)
!1449 = !DILocation(line: 61, column: 42, scope: !1446)
!1450 = !DILocation(line: 61, column: 28, scope: !1446)
!1451 = !DILocation(line: 61, column: 61, scope: !1446)
!1452 = !DILocation(line: 61, column: 7, scope: !1426)
!1453 = !DILocation(line: 64, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !88, line: 64, column: 11)
!1455 = distinct !DILexicalBlock(scope: !1446, file: !88, line: 62, column: 5)
!1456 = !DILocation(line: 64, column: 36, scope: !1454)
!1457 = !DILocation(line: 64, column: 11, scope: !1455)
!1458 = !DILocation(line: 66, column: 24, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !88, line: 65, column: 9)
!1460 = !DILocation(line: 70, column: 41, scope: !1459)
!1461 = !DILocation(line: 72, column: 9, scope: !1459)
!1462 = !DILocation(line: 84, column: 16, scope: !1426)
!1463 = !DILocation(line: 90, column: 27, scope: !1426)
!1464 = !DILocation(line: 92, column: 1, scope: !1426)
!1465 = distinct !DISubprogram(name: "clone_quoting_options", scope: !133, file: !133, line: 122, type: !1466, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1469)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1468, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1469 = !{!1470, !1471, !1472}
!1470 = !DILocalVariable(name: "o", arg: 1, scope: !1465, file: !133, line: 122, type: !1468)
!1471 = !DILocalVariable(name: "e", scope: !1465, file: !133, line: 124, type: !42)
!1472 = !DILocalVariable(name: "p", scope: !1465, file: !133, line: 125, type: !1468)
!1473 = !DILocation(line: 122, column: 48, scope: !1465)
!1474 = !DILocation(line: 124, column: 11, scope: !1465)
!1475 = !DILocation(line: 124, column: 7, scope: !1465)
!1476 = !DILocation(line: 125, column: 40, scope: !1465)
!1477 = !DILocation(line: 125, column: 31, scope: !1465)
!1478 = !DILocation(line: 125, column: 27, scope: !1465)
!1479 = !DILocation(line: 127, column: 9, scope: !1465)
!1480 = !DILocation(line: 128, column: 3, scope: !1465)
!1481 = distinct !DISubprogram(name: "get_quoting_style", scope: !133, file: !133, line: 133, type: !1482, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1486)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!94, !1484}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "o", arg: 1, scope: !1481, file: !133, line: 133, type: !1484)
!1488 = !DILocation(line: 133, column: 50, scope: !1481)
!1489 = !DILocation(line: 135, column: 11, scope: !1481)
!1490 = !DILocation(line: 135, column: 46, scope: !1481)
!1491 = !{!1492, !700, i64 0}
!1492 = !{!"quoting_options", !700, i64 0, !828, i64 4, !700, i64 8, !699, i64 40, !699, i64 48}
!1493 = !DILocation(line: 135, column: 3, scope: !1481)
!1494 = distinct !DISubprogram(name: "set_quoting_style", scope: !133, file: !133, line: 141, type: !1495, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !1468, !94}
!1497 = !{!1498, !1499}
!1498 = !DILocalVariable(name: "o", arg: 1, scope: !1494, file: !133, line: 141, type: !1468)
!1499 = !DILocalVariable(name: "s", arg: 2, scope: !1494, file: !133, line: 141, type: !94)
!1500 = !DILocation(line: 141, column: 44, scope: !1494)
!1501 = !DILocation(line: 141, column: 66, scope: !1494)
!1502 = !DILocation(line: 143, column: 4, scope: !1494)
!1503 = !DILocation(line: 143, column: 39, scope: !1494)
!1504 = !DILocation(line: 143, column: 45, scope: !1494)
!1505 = !DILocation(line: 144, column: 1, scope: !1494)
!1506 = distinct !DISubprogram(name: "set_char_quoting", scope: !133, file: !133, line: 152, type: !1507, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!42, !1468, !23, !42}
!1509 = !{!1510, !1511, !1512, !1513, !1515, !1517, !1518}
!1510 = !DILocalVariable(name: "o", arg: 1, scope: !1506, file: !133, line: 152, type: !1468)
!1511 = !DILocalVariable(name: "c", arg: 2, scope: !1506, file: !133, line: 152, type: !23)
!1512 = !DILocalVariable(name: "i", arg: 3, scope: !1506, file: !133, line: 152, type: !42)
!1513 = !DILocalVariable(name: "uc", scope: !1506, file: !133, line: 154, type: !1514)
!1514 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1515 = !DILocalVariable(name: "p", scope: !1506, file: !133, line: 155, type: !1516)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1517 = !DILocalVariable(name: "shift", scope: !1506, file: !133, line: 157, type: !42)
!1518 = !DILocalVariable(name: "r", scope: !1506, file: !133, line: 158, type: !42)
!1519 = !DILocation(line: 152, column: 43, scope: !1506)
!1520 = !DILocation(line: 152, column: 51, scope: !1506)
!1521 = !DILocation(line: 152, column: 58, scope: !1506)
!1522 = !DILocation(line: 154, column: 17, scope: !1506)
!1523 = !DILocation(line: 156, column: 6, scope: !1506)
!1524 = !DILocation(line: 156, column: 62, scope: !1506)
!1525 = !DILocation(line: 156, column: 57, scope: !1506)
!1526 = !DILocation(line: 155, column: 17, scope: !1506)
!1527 = !DILocation(line: 157, column: 15, scope: !1506)
!1528 = !DILocation(line: 157, column: 7, scope: !1506)
!1529 = !DILocation(line: 158, column: 12, scope: !1506)
!1530 = !DILocation(line: 158, column: 15, scope: !1506)
!1531 = !DILocation(line: 158, column: 25, scope: !1506)
!1532 = !DILocation(line: 158, column: 7, scope: !1506)
!1533 = !DILocation(line: 159, column: 13, scope: !1506)
!1534 = !DILocation(line: 159, column: 18, scope: !1506)
!1535 = !DILocation(line: 159, column: 23, scope: !1506)
!1536 = !DILocation(line: 159, column: 6, scope: !1506)
!1537 = !DILocation(line: 160, column: 3, scope: !1506)
!1538 = distinct !DISubprogram(name: "set_quoting_flags", scope: !133, file: !133, line: 168, type: !1539, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!42, !1468, !42}
!1541 = !{!1542, !1543, !1544}
!1542 = !DILocalVariable(name: "o", arg: 1, scope: !1538, file: !133, line: 168, type: !1468)
!1543 = !DILocalVariable(name: "i", arg: 2, scope: !1538, file: !133, line: 168, type: !42)
!1544 = !DILocalVariable(name: "r", scope: !1538, file: !133, line: 170, type: !42)
!1545 = !DILocation(line: 168, column: 44, scope: !1538)
!1546 = !DILocation(line: 168, column: 51, scope: !1538)
!1547 = !DILocation(line: 171, column: 8, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1538, file: !133, line: 171, column: 7)
!1549 = !DILocation(line: 171, column: 7, scope: !1538)
!1550 = !DILocation(line: 173, column: 10, scope: !1538)
!1551 = !{!1492, !828, i64 4}
!1552 = !DILocation(line: 170, column: 7, scope: !1538)
!1553 = !DILocation(line: 174, column: 12, scope: !1538)
!1554 = !DILocation(line: 175, column: 3, scope: !1538)
!1555 = distinct !DISubprogram(name: "set_custom_quoting", scope: !133, file: !133, line: 179, type: !1556, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1558)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !1468, !52, !52}
!1558 = !{!1559, !1560, !1561}
!1559 = !DILocalVariable(name: "o", arg: 1, scope: !1555, file: !133, line: 179, type: !1468)
!1560 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1555, file: !133, line: 180, type: !52)
!1561 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1555, file: !133, line: 180, type: !52)
!1562 = !DILocation(line: 179, column: 45, scope: !1555)
!1563 = !DILocation(line: 180, column: 33, scope: !1555)
!1564 = !DILocation(line: 180, column: 57, scope: !1555)
!1565 = !DILocation(line: 182, column: 8, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1555, file: !133, line: 182, column: 7)
!1567 = !DILocation(line: 182, column: 7, scope: !1555)
!1568 = !DILocation(line: 184, column: 6, scope: !1555)
!1569 = !DILocation(line: 184, column: 12, scope: !1555)
!1570 = !DILocation(line: 185, column: 8, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1555, file: !133, line: 185, column: 7)
!1572 = !DILocation(line: 185, column: 23, scope: !1571)
!1573 = !DILocation(line: 185, column: 19, scope: !1571)
!1574 = !DILocation(line: 186, column: 5, scope: !1571)
!1575 = !DILocation(line: 187, column: 6, scope: !1555)
!1576 = !DILocation(line: 187, column: 17, scope: !1555)
!1577 = !{!1492, !699, i64 40}
!1578 = !DILocation(line: 188, column: 6, scope: !1555)
!1579 = !DILocation(line: 188, column: 18, scope: !1555)
!1580 = !{!1492, !699, i64 48}
!1581 = !DILocation(line: 189, column: 1, scope: !1555)
!1582 = distinct !DISubprogram(name: "quotearg_buffer", scope: !133, file: !133, line: 784, type: !1583, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!39, !22, !39, !52, !39, !1484}
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1586 = !DILocalVariable(name: "buffer", arg: 1, scope: !1582, file: !133, line: 784, type: !22)
!1587 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1582, file: !133, line: 784, type: !39)
!1588 = !DILocalVariable(name: "arg", arg: 3, scope: !1582, file: !133, line: 785, type: !52)
!1589 = !DILocalVariable(name: "argsize", arg: 4, scope: !1582, file: !133, line: 785, type: !39)
!1590 = !DILocalVariable(name: "o", arg: 5, scope: !1582, file: !133, line: 786, type: !1484)
!1591 = !DILocalVariable(name: "p", scope: !1582, file: !133, line: 788, type: !1484)
!1592 = !DILocalVariable(name: "e", scope: !1582, file: !133, line: 789, type: !42)
!1593 = !DILocalVariable(name: "r", scope: !1582, file: !133, line: 790, type: !39)
!1594 = !DILocation(line: 784, column: 24, scope: !1582)
!1595 = !DILocation(line: 784, column: 39, scope: !1582)
!1596 = !DILocation(line: 785, column: 30, scope: !1582)
!1597 = !DILocation(line: 785, column: 42, scope: !1582)
!1598 = !DILocation(line: 786, column: 48, scope: !1582)
!1599 = !DILocation(line: 788, column: 37, scope: !1582)
!1600 = !DILocation(line: 788, column: 33, scope: !1582)
!1601 = !DILocation(line: 789, column: 11, scope: !1582)
!1602 = !DILocation(line: 789, column: 7, scope: !1582)
!1603 = !DILocation(line: 791, column: 43, scope: !1582)
!1604 = !DILocation(line: 791, column: 53, scope: !1582)
!1605 = !DILocation(line: 791, column: 60, scope: !1582)
!1606 = !DILocation(line: 792, column: 43, scope: !1582)
!1607 = !DILocation(line: 792, column: 58, scope: !1582)
!1608 = !DILocation(line: 790, column: 14, scope: !1582)
!1609 = !DILocation(line: 790, column: 10, scope: !1582)
!1610 = !DILocation(line: 793, column: 9, scope: !1582)
!1611 = !DILocation(line: 794, column: 3, scope: !1582)
!1612 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !133, file: !133, line: 256, type: !1613, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1617)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!39, !22, !39, !52, !39, !94, !42, !1615, !52, !52}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1642, !1643, !1644, !1645, !1646, !1649, !1650, !1668, !1671, !1672, !1679}
!1618 = !DILocalVariable(name: "buffer", arg: 1, scope: !1612, file: !133, line: 256, type: !22)
!1619 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1612, file: !133, line: 256, type: !39)
!1620 = !DILocalVariable(name: "arg", arg: 3, scope: !1612, file: !133, line: 257, type: !52)
!1621 = !DILocalVariable(name: "argsize", arg: 4, scope: !1612, file: !133, line: 257, type: !39)
!1622 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1612, file: !133, line: 258, type: !94)
!1623 = !DILocalVariable(name: "flags", arg: 6, scope: !1612, file: !133, line: 258, type: !42)
!1624 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1612, file: !133, line: 259, type: !1615)
!1625 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1612, file: !133, line: 260, type: !52)
!1626 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1612, file: !133, line: 261, type: !52)
!1627 = !DILocalVariable(name: "i", scope: !1612, file: !133, line: 263, type: !39)
!1628 = !DILocalVariable(name: "len", scope: !1612, file: !133, line: 264, type: !39)
!1629 = !DILocalVariable(name: "orig_buffersize", scope: !1612, file: !133, line: 265, type: !39)
!1630 = !DILocalVariable(name: "quote_string", scope: !1612, file: !133, line: 266, type: !52)
!1631 = !DILocalVariable(name: "quote_string_len", scope: !1612, file: !133, line: 267, type: !39)
!1632 = !DILocalVariable(name: "backslash_escapes", scope: !1612, file: !133, line: 268, type: !74)
!1633 = !DILocalVariable(name: "unibyte_locale", scope: !1612, file: !133, line: 269, type: !74)
!1634 = !DILocalVariable(name: "elide_outer_quotes", scope: !1612, file: !133, line: 270, type: !74)
!1635 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1612, file: !133, line: 271, type: !74)
!1636 = !DILocalVariable(name: "encountered_single_quote", scope: !1612, file: !133, line: 272, type: !74)
!1637 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1612, file: !133, line: 273, type: !74)
!1638 = !DILocalVariable(name: "c", scope: !1639, file: !133, line: 402, type: !1514)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !133, line: 401, column: 5)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !133, line: 400, column: 3)
!1641 = distinct !DILexicalBlock(scope: !1612, file: !133, line: 400, column: 3)
!1642 = !DILocalVariable(name: "esc", scope: !1639, file: !133, line: 403, type: !1514)
!1643 = !DILocalVariable(name: "is_right_quote", scope: !1639, file: !133, line: 404, type: !74)
!1644 = !DILocalVariable(name: "escaping", scope: !1639, file: !133, line: 405, type: !74)
!1645 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1639, file: !133, line: 406, type: !74)
!1646 = !DILocalVariable(name: "m", scope: !1647, file: !133, line: 610, type: !39)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 608, column: 11)
!1648 = distinct !DILexicalBlock(scope: !1639, file: !133, line: 426, column: 9)
!1649 = !DILocalVariable(name: "printable", scope: !1647, file: !133, line: 612, type: !74)
!1650 = !DILocalVariable(name: "mbstate", scope: !1651, file: !133, line: 621, type: !1653)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !133, line: 620, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !133, line: 614, column: 17)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1654, line: 6, baseType: !1655)
!1654 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1656, line: 21, baseType: !1657)
!1656 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1656, line: 13, size: 64, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1657, file: !1656, line: 15, baseType: !42, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1657, file: !1656, line: 20, baseType: !1661, size: 32, offset: 32)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1657, file: !1656, line: 16, size: 32, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1661, file: !1656, line: 18, baseType: !7, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1661, file: !1656, line: 19, baseType: !1665, size: 32)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 4)
!1668 = !DILocalVariable(name: "w", scope: !1669, file: !133, line: 631, type: !1670)
!1669 = distinct !DILexicalBlock(scope: !1651, file: !133, line: 630, column: 19)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !40, line: 90, baseType: !42)
!1671 = !DILocalVariable(name: "bytes", scope: !1669, file: !133, line: 632, type: !39)
!1672 = !DILocalVariable(name: "j", scope: !1673, file: !133, line: 657, type: !39)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !133, line: 656, column: 27)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !133, line: 654, column: 29)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !133, line: 649, column: 23)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !133, line: 641, column: 30)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !133, line: 636, column: 30)
!1678 = distinct !DILexicalBlock(scope: !1669, file: !133, line: 634, column: 25)
!1679 = !DILocalVariable(name: "ilim", scope: !1680, file: !133, line: 684, type: !39)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !133, line: 681, column: 15)
!1681 = distinct !DILexicalBlock(scope: !1647, file: !133, line: 680, column: 17)
!1682 = !DILocation(line: 256, column: 33, scope: !1612)
!1683 = !DILocation(line: 256, column: 48, scope: !1612)
!1684 = !DILocation(line: 257, column: 39, scope: !1612)
!1685 = !DILocation(line: 257, column: 51, scope: !1612)
!1686 = !DILocation(line: 258, column: 46, scope: !1612)
!1687 = !DILocation(line: 258, column: 65, scope: !1612)
!1688 = !DILocation(line: 259, column: 47, scope: !1612)
!1689 = !DILocation(line: 260, column: 39, scope: !1612)
!1690 = !DILocation(line: 261, column: 39, scope: !1612)
!1691 = !DILocation(line: 264, column: 10, scope: !1612)
!1692 = !DILocation(line: 265, column: 10, scope: !1612)
!1693 = !DILocation(line: 266, column: 15, scope: !1612)
!1694 = !DILocation(line: 267, column: 10, scope: !1612)
!1695 = !DILocation(line: 268, column: 8, scope: !1612)
!1696 = !DILocation(line: 269, column: 25, scope: !1612)
!1697 = !DILocation(line: 269, column: 36, scope: !1612)
!1698 = !DILocation(line: 270, column: 8, scope: !1612)
!1699 = !DILocation(line: 271, column: 8, scope: !1612)
!1700 = !DILocation(line: 272, column: 8, scope: !1612)
!1701 = !DILocation(line: 273, column: 8, scope: !1612)
!1702 = !DILocation(line: 273, column: 3, scope: !1612)
!1703 = !DILocation(line: 0, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1612, file: !133, line: 317, column: 5)
!1705 = !DILocation(line: 316, column: 3, scope: !1612)
!1706 = !DILocation(line: 323, column: 11, scope: !1704)
!1707 = !DILocation(line: 323, column: 12, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !133, line: 323, column: 11)
!1709 = !DILocation(line: 324, column: 9, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !133, line: 324, column: 9)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !133, line: 324, column: 9)
!1712 = !DILocation(line: 324, column: 9, scope: !1711)
!1713 = !DILocation(line: 362, column: 26, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !133, line: 340, column: 11)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !133, line: 339, column: 13)
!1716 = distinct !DILexicalBlock(scope: !1704, file: !133, line: 338, column: 7)
!1717 = !DILocation(line: 363, column: 27, scope: !1714)
!1718 = !DILocation(line: 364, column: 11, scope: !1714)
!1719 = !DILocation(line: 365, column: 14, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !133, line: 365, column: 13)
!1721 = !DILocation(line: 365, column: 13, scope: !1716)
!1722 = !DILocation(line: 366, column: 43, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !133, line: 366, column: 11)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !133, line: 366, column: 11)
!1725 = !DILocation(line: 366, column: 11, scope: !1724)
!1726 = !DILocation(line: 367, column: 13, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !133, line: 367, column: 13)
!1728 = distinct !DILexicalBlock(scope: !1723, file: !133, line: 367, column: 13)
!1729 = !DILocation(line: 367, column: 13, scope: !1728)
!1730 = !DILocation(line: 366, column: 70, scope: !1723)
!1731 = distinct !{!1731, !1725, !1732}
!1732 = !DILocation(line: 367, column: 13, scope: !1724)
!1733 = !DILocation(line: 370, column: 28, scope: !1716)
!1734 = !DILocation(line: 372, column: 7, scope: !1704)
!1735 = !DILocation(line: 376, column: 7, scope: !1704)
!1736 = !DILocation(line: 379, column: 7, scope: !1704)
!1737 = !DILocation(line: 381, column: 12, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1704, file: !133, line: 381, column: 11)
!1739 = !DILocation(line: 381, column: 11, scope: !1704)
!1740 = !DILocation(line: 0, scope: !1738)
!1741 = !DILocation(line: 386, column: 12, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1704, file: !133, line: 386, column: 11)
!1743 = !DILocation(line: 386, column: 11, scope: !1704)
!1744 = !DILocation(line: 387, column: 9, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !133, line: 387, column: 9)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !133, line: 387, column: 9)
!1747 = !DILocation(line: 387, column: 9, scope: !1746)
!1748 = !DILocation(line: 394, column: 7, scope: !1704)
!1749 = !DILocation(line: 397, column: 7, scope: !1704)
!1750 = !DILocation(line: 0, scope: !1612)
!1751 = !DILocation(line: 263, column: 10, scope: !1612)
!1752 = !DILocation(line: 400, column: 8, scope: !1641)
!1753 = !DILocation(line: 0, scope: !1640)
!1754 = !DILocation(line: 400, column: 27, scope: !1640)
!1755 = !DILocation(line: 400, column: 19, scope: !1640)
!1756 = !DILocation(line: 400, column: 41, scope: !1640)
!1757 = !DILocation(line: 400, column: 48, scope: !1640)
!1758 = !DILocation(line: 400, column: 3, scope: !1641)
!1759 = !DILocation(line: 400, column: 60, scope: !1640)
!1760 = !DILocation(line: 404, column: 12, scope: !1639)
!1761 = !DILocation(line: 405, column: 12, scope: !1639)
!1762 = !DILocation(line: 406, column: 12, scope: !1639)
!1763 = !DILocation(line: 409, column: 11, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1639, file: !133, line: 408, column: 11)
!1765 = !DILocation(line: 411, column: 17, scope: !1764)
!1766 = !DILocation(line: 412, column: 39, scope: !1764)
!1767 = !DILocation(line: 416, column: 32, scope: !1764)
!1768 = !DILocation(line: 412, column: 19, scope: !1764)
!1769 = !DILocation(line: 412, column: 15, scope: !1764)
!1770 = !DILocation(line: 417, column: 11, scope: !1764)
!1771 = !DILocation(line: 417, column: 26, scope: !1764)
!1772 = !DILocation(line: 417, column: 14, scope: !1764)
!1773 = !DILocation(line: 417, column: 63, scope: !1764)
!1774 = !DILocation(line: 408, column: 11, scope: !1639)
!1775 = !DILocation(line: 0, scope: !1639)
!1776 = !DILocation(line: 424, column: 11, scope: !1639)
!1777 = !DILocation(line: 402, column: 21, scope: !1639)
!1778 = !DILocation(line: 425, column: 7, scope: !1639)
!1779 = !DILocation(line: 428, column: 15, scope: !1648)
!1780 = !DILocation(line: 430, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !133, line: 430, column: 15)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !133, line: 429, column: 13)
!1783 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 428, column: 15)
!1784 = !DILocation(line: 430, column: 15, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !133, line: 430, column: 15)
!1786 = !DILocation(line: 430, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !133, line: 430, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !133, line: 430, column: 15)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !133, line: 430, column: 15)
!1790 = !DILocation(line: 430, column: 15, scope: !1788)
!1791 = !DILocation(line: 430, column: 15, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !133, line: 430, column: 15)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !133, line: 430, column: 15)
!1794 = !DILocation(line: 430, column: 15, scope: !1793)
!1795 = !DILocation(line: 430, column: 15, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !133, line: 430, column: 15)
!1797 = distinct !DILexicalBlock(scope: !1789, file: !133, line: 430, column: 15)
!1798 = !DILocation(line: 430, column: 15, scope: !1797)
!1799 = !DILocation(line: 430, column: 15, scope: !1789)
!1800 = !DILocation(line: 430, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !133, line: 430, column: 15)
!1802 = distinct !DILexicalBlock(scope: !1781, file: !133, line: 430, column: 15)
!1803 = !DILocation(line: 430, column: 15, scope: !1802)
!1804 = !DILocation(line: 438, column: 19, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1782, file: !133, line: 437, column: 19)
!1806 = !DILocation(line: 438, column: 24, scope: !1805)
!1807 = !DILocation(line: 438, column: 28, scope: !1805)
!1808 = !DILocation(line: 438, column: 38, scope: !1805)
!1809 = !DILocation(line: 438, column: 48, scope: !1805)
!1810 = !DILocation(line: 438, column: 59, scope: !1805)
!1811 = !DILocation(line: 440, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !133, line: 440, column: 19)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !133, line: 440, column: 19)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !133, line: 439, column: 17)
!1815 = !DILocation(line: 440, column: 19, scope: !1813)
!1816 = !DILocation(line: 441, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !133, line: 441, column: 19)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !133, line: 441, column: 19)
!1819 = !DILocation(line: 441, column: 19, scope: !1818)
!1820 = !DILocation(line: 442, column: 17, scope: !1814)
!1821 = !DILocation(line: 449, column: 20, scope: !1783)
!1822 = !DILocation(line: 454, column: 11, scope: !1648)
!1823 = !DILocation(line: 457, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 455, column: 13)
!1825 = !DILocation(line: 463, column: 19, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1824, file: !133, line: 462, column: 19)
!1827 = !DILocation(line: 463, column: 24, scope: !1826)
!1828 = !DILocation(line: 463, column: 28, scope: !1826)
!1829 = !DILocation(line: 463, column: 38, scope: !1826)
!1830 = !DILocation(line: 463, column: 47, scope: !1826)
!1831 = !DILocation(line: 463, column: 41, scope: !1826)
!1832 = !DILocation(line: 463, column: 52, scope: !1826)
!1833 = !DILocation(line: 462, column: 19, scope: !1824)
!1834 = !DILocation(line: 464, column: 25, scope: !1826)
!1835 = !DILocation(line: 464, column: 17, scope: !1826)
!1836 = !DILocation(line: 471, column: 25, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1826, file: !133, line: 465, column: 19)
!1838 = !DILocation(line: 475, column: 21, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !133, line: 475, column: 21)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !133, line: 475, column: 21)
!1841 = !DILocation(line: 475, column: 21, scope: !1840)
!1842 = !DILocation(line: 476, column: 21, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !133, line: 476, column: 21)
!1844 = distinct !DILexicalBlock(scope: !1837, file: !133, line: 476, column: 21)
!1845 = !DILocation(line: 476, column: 21, scope: !1844)
!1846 = !DILocation(line: 477, column: 21, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !133, line: 477, column: 21)
!1848 = distinct !DILexicalBlock(scope: !1837, file: !133, line: 477, column: 21)
!1849 = !DILocation(line: 477, column: 21, scope: !1848)
!1850 = !DILocation(line: 478, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !133, line: 478, column: 21)
!1852 = distinct !DILexicalBlock(scope: !1837, file: !133, line: 478, column: 21)
!1853 = !DILocation(line: 478, column: 21, scope: !1852)
!1854 = !DILocation(line: 479, column: 21, scope: !1837)
!1855 = !DILocation(line: 403, column: 21, scope: !1639)
!1856 = !DILocation(line: 492, column: 31, scope: !1648)
!1857 = !DILocation(line: 493, column: 31, scope: !1648)
!1858 = !DILocation(line: 495, column: 31, scope: !1648)
!1859 = !DILocation(line: 496, column: 31, scope: !1648)
!1860 = !DILocation(line: 497, column: 31, scope: !1648)
!1861 = !DILocation(line: 500, column: 15, scope: !1648)
!1862 = !DILocation(line: 502, column: 19, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !133, line: 501, column: 13)
!1864 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 500, column: 15)
!1865 = !DILocation(line: 509, column: 33, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 509, column: 15)
!1867 = !DILocation(line: 0, scope: !1648)
!1868 = !DILocation(line: 514, column: 15, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 513, column: 15)
!1870 = !DILocation(line: 518, column: 15, scope: !1648)
!1871 = !DILocation(line: 526, column: 26, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 526, column: 15)
!1873 = !DILocation(line: 526, column: 15, scope: !1648)
!1874 = !DILocation(line: 526, column: 40, scope: !1872)
!1875 = !DILocation(line: 526, column: 47, scope: !1872)
!1876 = !DILocation(line: 530, column: 17, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 530, column: 15)
!1878 = !DILocation(line: 526, column: 18, scope: !1872)
!1879 = !DILocation(line: 526, column: 65, scope: !1872)
!1880 = !DILocation(line: 530, column: 15, scope: !1648)
!1881 = !DILocation(line: 535, column: 11, scope: !1648)
!1882 = !DILocation(line: 549, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 548, column: 15)
!1884 = !DILocation(line: 556, column: 15, scope: !1648)
!1885 = !DILocation(line: 558, column: 19, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !133, line: 557, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 556, column: 15)
!1888 = !DILocation(line: 561, column: 19, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !133, line: 561, column: 19)
!1890 = !DILocation(line: 561, column: 35, scope: !1889)
!1891 = !DILocation(line: 561, column: 30, scope: !1889)
!1892 = !DILocation(line: 570, column: 15, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !133, line: 570, column: 15)
!1894 = distinct !DILexicalBlock(scope: !1886, file: !133, line: 570, column: 15)
!1895 = !DILocation(line: 570, column: 15, scope: !1894)
!1896 = !DILocation(line: 571, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !133, line: 571, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1886, file: !133, line: 571, column: 15)
!1899 = !DILocation(line: 571, column: 15, scope: !1898)
!1900 = !DILocation(line: 572, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !133, line: 572, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1886, file: !133, line: 572, column: 15)
!1903 = !DILocation(line: 572, column: 15, scope: !1902)
!1904 = !DILocation(line: 574, column: 13, scope: !1886)
!1905 = !DILocation(line: 614, column: 17, scope: !1647)
!1906 = !DILocation(line: 610, column: 20, scope: !1647)
!1907 = !DILocation(line: 617, column: 29, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1652, file: !133, line: 615, column: 15)
!1909 = !{!1910, !1910, i64 0}
!1910 = !{!"short", !700, i64 0}
!1911 = !DILocation(line: 617, column: 27, scope: !1908)
!1912 = !DILocation(line: 612, column: 18, scope: !1647)
!1913 = !DILocation(line: 618, column: 15, scope: !1908)
!1914 = !DILocation(line: 621, column: 17, scope: !1651)
!1915 = !DILocation(line: 622, column: 17, scope: !1651)
!1916 = !DILocation(line: 626, column: 29, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1651, file: !133, line: 626, column: 21)
!1918 = !DILocation(line: 626, column: 21, scope: !1651)
!1919 = !DILocation(line: 627, column: 29, scope: !1917)
!1920 = !DILocation(line: 627, column: 19, scope: !1917)
!1921 = !DILocation(line: 0, scope: !1764)
!1922 = !DILocation(line: 629, column: 17, scope: !1651)
!1923 = !DILocation(line: 624, column: 19, scope: !1651)
!1924 = !DILocation(line: 625, column: 27, scope: !1651)
!1925 = !DILocation(line: 631, column: 21, scope: !1669)
!1926 = !DILocation(line: 632, column: 56, scope: !1669)
!1927 = !DILocation(line: 632, column: 50, scope: !1669)
!1928 = !DILocation(line: 633, column: 53, scope: !1669)
!1929 = !DILocation(line: 621, column: 27, scope: !1651)
!1930 = !DILocation(line: 631, column: 29, scope: !1669)
!1931 = !DILocation(line: 632, column: 36, scope: !1669)
!1932 = !DILocation(line: 632, column: 28, scope: !1669)
!1933 = !DILocation(line: 634, column: 25, scope: !1669)
!1934 = !DILocation(line: 644, column: 38, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1676, file: !133, line: 642, column: 23)
!1936 = !DILocation(line: 644, column: 48, scope: !1935)
!1937 = !DILocation(line: 644, column: 51, scope: !1935)
!1938 = !DILocation(line: 644, column: 25, scope: !1935)
!1939 = !DILocation(line: 645, column: 28, scope: !1935)
!1940 = !DILocation(line: 644, column: 34, scope: !1935)
!1941 = distinct !{!1941, !1938, !1939}
!1942 = !DILocation(line: 658, column: 43, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !133, line: 658, column: 29)
!1944 = distinct !DILexicalBlock(scope: !1673, file: !133, line: 658, column: 29)
!1945 = !DILocation(line: 655, column: 29, scope: !1674)
!1946 = !DILocation(line: 657, column: 36, scope: !1673)
!1947 = !DILocation(line: 659, column: 49, scope: !1943)
!1948 = !DILocation(line: 659, column: 39, scope: !1943)
!1949 = !DILocation(line: 659, column: 31, scope: !1943)
!1950 = !DILocation(line: 658, column: 53, scope: !1943)
!1951 = !DILocation(line: 658, column: 29, scope: !1944)
!1952 = distinct !{!1952, !1951, !1953}
!1953 = !DILocation(line: 667, column: 33, scope: !1944)
!1954 = !DILocation(line: 674, column: 19, scope: !1651)
!1955 = !DILocation(line: 670, column: 41, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1675, file: !133, line: 670, column: 29)
!1957 = !DILocation(line: 670, column: 31, scope: !1956)
!1958 = !DILocation(line: 670, column: 29, scope: !1675)
!1959 = !DILocation(line: 672, column: 27, scope: !1675)
!1960 = !DILocation(line: 675, column: 26, scope: !1651)
!1961 = !DILocation(line: 675, column: 24, scope: !1651)
!1962 = !DILocation(line: 674, column: 19, scope: !1669)
!1963 = distinct !{!1963, !1922, !1964}
!1964 = !DILocation(line: 675, column: 44, scope: !1651)
!1965 = !DILocation(line: 676, column: 15, scope: !1652)
!1966 = !DILocation(line: 0, scope: !1917)
!1967 = !DILocation(line: 0, scope: !1651)
!1968 = !DILocation(line: 678, column: 40, scope: !1647)
!1969 = !DILocation(line: 680, column: 19, scope: !1681)
!1970 = !DILocation(line: 680, column: 45, scope: !1681)
!1971 = !DILocation(line: 680, column: 23, scope: !1681)
!1972 = !DILocation(line: 684, column: 33, scope: !1680)
!1973 = !DILocation(line: 684, column: 24, scope: !1680)
!1974 = !DILocation(line: 686, column: 17, scope: !1680)
!1975 = !DILocation(line: 0, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !133, line: 687, column: 19)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !133, line: 686, column: 17)
!1978 = distinct !DILexicalBlock(scope: !1680, file: !133, line: 686, column: 17)
!1979 = !DILocation(line: 0, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !133, line: 703, column: 21)
!1981 = !DILocation(line: 0, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !133, line: 696, column: 23)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !133, line: 695, column: 30)
!1984 = distinct !DILexicalBlock(scope: !1976, file: !133, line: 688, column: 25)
!1985 = !DILocation(line: 688, column: 43, scope: !1984)
!1986 = !DILocation(line: 690, column: 25, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !133, line: 690, column: 25)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !133, line: 689, column: 23)
!1989 = !DILocation(line: 690, column: 25, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !133, line: 690, column: 25)
!1991 = !DILocation(line: 690, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !133, line: 690, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !133, line: 690, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !133, line: 690, column: 25)
!1995 = !DILocation(line: 690, column: 25, scope: !1993)
!1996 = !DILocation(line: 690, column: 25, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !133, line: 690, column: 25)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !133, line: 690, column: 25)
!1999 = !DILocation(line: 690, column: 25, scope: !1998)
!2000 = !DILocation(line: 690, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !133, line: 690, column: 25)
!2002 = distinct !DILexicalBlock(scope: !1994, file: !133, line: 690, column: 25)
!2003 = !DILocation(line: 690, column: 25, scope: !2002)
!2004 = !DILocation(line: 690, column: 25, scope: !1994)
!2005 = !DILocation(line: 690, column: 25, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !133, line: 690, column: 25)
!2007 = distinct !DILexicalBlock(scope: !1987, file: !133, line: 690, column: 25)
!2008 = !DILocation(line: 690, column: 25, scope: !2007)
!2009 = !DILocation(line: 691, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !133, line: 691, column: 25)
!2011 = distinct !DILexicalBlock(scope: !1988, file: !133, line: 691, column: 25)
!2012 = !DILocation(line: 691, column: 25, scope: !2011)
!2013 = !DILocation(line: 692, column: 25, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !133, line: 692, column: 25)
!2015 = distinct !DILexicalBlock(scope: !1988, file: !133, line: 692, column: 25)
!2016 = !DILocation(line: 692, column: 25, scope: !2015)
!2017 = !DILocation(line: 693, column: 38, scope: !1988)
!2018 = !DILocation(line: 693, column: 33, scope: !1988)
!2019 = !DILocation(line: 694, column: 23, scope: !1988)
!2020 = !DILocation(line: 695, column: 30, scope: !1983)
!2021 = !DILocation(line: 695, column: 30, scope: !1984)
!2022 = !DILocation(line: 697, column: 25, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !133, line: 697, column: 25)
!2024 = distinct !DILexicalBlock(scope: !1982, file: !133, line: 697, column: 25)
!2025 = !DILocation(line: 697, column: 25, scope: !2024)
!2026 = !DILocation(line: 699, column: 23, scope: !1982)
!2027 = !DILocation(line: 0, scope: !2015)
!2028 = !DILocation(line: 0, scope: !1988)
!2029 = !DILocation(line: 0, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1764, file: !133, line: 418, column: 9)
!2031 = !DILocation(line: 0, scope: !1987)
!2032 = !DILocation(line: 700, column: 35, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1976, file: !133, line: 700, column: 25)
!2034 = !DILocation(line: 700, column: 30, scope: !2033)
!2035 = !DILocation(line: 700, column: 25, scope: !1976)
!2036 = !DILocation(line: 702, column: 21, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !133, line: 702, column: 21)
!2038 = distinct !DILexicalBlock(scope: !1976, file: !133, line: 702, column: 21)
!2039 = !DILocation(line: 702, column: 21, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !133, line: 702, column: 21)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !133, line: 702, column: 21)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !133, line: 702, column: 21)
!2043 = !DILocation(line: 702, column: 21, scope: !2041)
!2044 = !DILocation(line: 702, column: 21, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !133, line: 702, column: 21)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !133, line: 702, column: 21)
!2047 = !DILocation(line: 702, column: 21, scope: !2046)
!2048 = !DILocation(line: 702, column: 21, scope: !2042)
!2049 = !DILocation(line: 0, scope: !2024)
!2050 = !DILocation(line: 703, column: 21, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1980, file: !133, line: 703, column: 21)
!2052 = !DILocation(line: 703, column: 21, scope: !1980)
!2053 = !DILocation(line: 704, column: 25, scope: !1976)
!2054 = !DILocation(line: 686, column: 17, scope: !1977)
!2055 = distinct !{!2055, !2056, !2057}
!2056 = !DILocation(line: 686, column: 17, scope: !1978)
!2057 = !DILocation(line: 705, column: 19, scope: !1978)
!2058 = !DILocation(line: 0, scope: !1641)
!2059 = !DILocation(line: 416, column: 30, scope: !1764)
!2060 = !DILocation(line: 712, column: 34, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1639, file: !133, line: 712, column: 11)
!2062 = !DILocation(line: 714, column: 14, scope: !2061)
!2063 = !DILocation(line: 715, column: 14, scope: !2061)
!2064 = !DILocation(line: 715, column: 35, scope: !2061)
!2065 = !DILocation(line: 715, column: 17, scope: !2061)
!2066 = !DILocation(line: 715, column: 47, scope: !2061)
!2067 = !DILocation(line: 715, column: 65, scope: !2061)
!2068 = !DILocation(line: 716, column: 15, scope: !2061)
!2069 = !DILocation(line: 716, column: 11, scope: !2061)
!2070 = !DILocation(line: 712, column: 11, scope: !1639)
!2071 = !DILocation(line: 400, column: 10, scope: !1641)
!2072 = !DILocation(line: 0, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !133, line: 519, column: 13)
!2074 = distinct !DILexicalBlock(scope: !1648, file: !133, line: 518, column: 15)
!2075 = !DILocation(line: 720, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1639, file: !133, line: 720, column: 7)
!2077 = !DILocation(line: 720, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2076, file: !133, line: 720, column: 7)
!2079 = !DILocation(line: 720, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !133, line: 720, column: 7)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !133, line: 720, column: 7)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !133, line: 720, column: 7)
!2083 = !DILocation(line: 720, column: 7, scope: !2081)
!2084 = !DILocation(line: 720, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !133, line: 720, column: 7)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !133, line: 720, column: 7)
!2087 = !DILocation(line: 720, column: 7, scope: !2086)
!2088 = !DILocation(line: 720, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !133, line: 720, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2082, file: !133, line: 720, column: 7)
!2091 = !DILocation(line: 720, column: 7, scope: !2090)
!2092 = !DILocation(line: 720, column: 7, scope: !2082)
!2093 = !DILocation(line: 720, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !133, line: 720, column: 7)
!2095 = distinct !DILexicalBlock(scope: !2076, file: !133, line: 720, column: 7)
!2096 = !DILocation(line: 720, column: 7, scope: !2095)
!2097 = !DILocation(line: 723, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !133, line: 723, column: 7)
!2099 = distinct !DILexicalBlock(scope: !1639, file: !133, line: 723, column: 7)
!2100 = !DILocation(line: 424, column: 9, scope: !1639)
!2101 = !DILocation(line: 723, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !133, line: 723, column: 7)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !133, line: 723, column: 7)
!2104 = distinct !DILexicalBlock(scope: !2098, file: !133, line: 723, column: 7)
!2105 = !DILocation(line: 723, column: 7, scope: !2103)
!2106 = !DILocation(line: 723, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !133, line: 723, column: 7)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !133, line: 723, column: 7)
!2109 = !DILocation(line: 723, column: 7, scope: !2108)
!2110 = !DILocation(line: 723, column: 7, scope: !2104)
!2111 = !DILocation(line: 724, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !133, line: 724, column: 7)
!2113 = distinct !DILexicalBlock(scope: !1639, file: !133, line: 724, column: 7)
!2114 = !DILocation(line: 724, column: 7, scope: !2113)
!2115 = !DILocation(line: 726, column: 13, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1639, file: !133, line: 726, column: 11)
!2117 = !DILocation(line: 726, column: 11, scope: !1639)
!2118 = !DILocation(line: 728, column: 5, scope: !1640)
!2119 = !DILocation(line: 400, column: 75, scope: !1640)
!2120 = !DILocation(line: 400, column: 3, scope: !1640)
!2121 = distinct !{!2121, !1758, !2122}
!2122 = !DILocation(line: 728, column: 5, scope: !1641)
!2123 = !DILocation(line: 730, column: 11, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1612, file: !133, line: 730, column: 7)
!2125 = !DILocation(line: 730, column: 16, scope: !2124)
!2126 = !DILocation(line: 738, column: 51, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1612, file: !133, line: 738, column: 7)
!2128 = !DILocation(line: 739, column: 10, scope: !2127)
!2129 = !DILocation(line: 741, column: 11, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !133, line: 741, column: 11)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !133, line: 740, column: 5)
!2132 = !DILocation(line: 741, column: 11, scope: !2131)
!2133 = !DILocation(line: 742, column: 16, scope: !2130)
!2134 = !DILocation(line: 742, column: 9, scope: !2130)
!2135 = !DILocation(line: 746, column: 18, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2130, file: !133, line: 746, column: 16)
!2137 = !DILocation(line: 746, column: 32, scope: !2136)
!2138 = !DILocation(line: 746, column: 29, scope: !2136)
!2139 = !DILocation(line: 755, column: 7, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1612, file: !133, line: 755, column: 7)
!2141 = !DILocation(line: 755, column: 20, scope: !2140)
!2142 = !DILocation(line: 756, column: 12, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !133, line: 756, column: 5)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !133, line: 756, column: 5)
!2145 = !DILocation(line: 756, column: 5, scope: !2144)
!2146 = !DILocation(line: 757, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !133, line: 757, column: 7)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !133, line: 757, column: 7)
!2149 = !DILocation(line: 757, column: 7, scope: !2148)
!2150 = !DILocation(line: 756, column: 39, scope: !2143)
!2151 = distinct !{!2151, !2145, !2152}
!2152 = !DILocation(line: 757, column: 7, scope: !2144)
!2153 = !DILocation(line: 759, column: 11, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1612, file: !133, line: 759, column: 7)
!2155 = !DILocation(line: 759, column: 7, scope: !1612)
!2156 = !DILocation(line: 760, column: 5, scope: !2154)
!2157 = !DILocation(line: 760, column: 17, scope: !2154)
!2158 = !DILocation(line: 766, column: 21, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1612, file: !133, line: 766, column: 7)
!2160 = !DILocation(line: 766, column: 54, scope: !2159)
!2161 = !DILocation(line: 766, column: 51, scope: !2159)
!2162 = !DILocation(line: 770, column: 42, scope: !1612)
!2163 = !DILocation(line: 768, column: 10, scope: !1612)
!2164 = !DILocation(line: 768, column: 3, scope: !1612)
!2165 = !DILocation(line: 772, column: 1, scope: !1612)
!2166 = distinct !DISubprogram(name: "gettext_quote", scope: !133, file: !133, line: 207, type: !2167, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!52, !52, !94}
!2169 = !{!2170, !2171, !2172, !2173}
!2170 = !DILocalVariable(name: "msgid", arg: 1, scope: !2166, file: !133, line: 207, type: !52)
!2171 = !DILocalVariable(name: "s", arg: 2, scope: !2166, file: !133, line: 207, type: !94)
!2172 = !DILocalVariable(name: "translation", scope: !2166, file: !133, line: 209, type: !52)
!2173 = !DILocalVariable(name: "locale_code", scope: !2166, file: !133, line: 210, type: !52)
!2174 = !DILocation(line: 207, column: 28, scope: !2166)
!2175 = !DILocation(line: 207, column: 54, scope: !2166)
!2176 = !DILocation(line: 209, column: 29, scope: !2166)
!2177 = !DILocation(line: 209, column: 15, scope: !2166)
!2178 = !DILocation(line: 212, column: 19, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2166, file: !133, line: 212, column: 7)
!2180 = !DILocation(line: 212, column: 7, scope: !2166)
!2181 = !DILocation(line: 233, column: 17, scope: !2166)
!2182 = !DILocation(line: 210, column: 15, scope: !2166)
!2183 = !DILocalVariable(name: "s1", arg: 1, scope: !2184, file: !2185, line: 160, type: !52)
!2184 = distinct !DISubprogram(name: "strcaseeq0", scope: !2185, file: !2185, line: 160, type: !2186, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2188)
!2185 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!42, !52, !52, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2188 = !{!2183, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198}
!2189 = !DILocalVariable(name: "s2", arg: 2, scope: !2184, file: !2185, line: 160, type: !52)
!2190 = !DILocalVariable(name: "s20", arg: 3, scope: !2184, file: !2185, line: 160, type: !23)
!2191 = !DILocalVariable(name: "s21", arg: 4, scope: !2184, file: !2185, line: 160, type: !23)
!2192 = !DILocalVariable(name: "s22", arg: 5, scope: !2184, file: !2185, line: 160, type: !23)
!2193 = !DILocalVariable(name: "s23", arg: 6, scope: !2184, file: !2185, line: 160, type: !23)
!2194 = !DILocalVariable(name: "s24", arg: 7, scope: !2184, file: !2185, line: 160, type: !23)
!2195 = !DILocalVariable(name: "s25", arg: 8, scope: !2184, file: !2185, line: 160, type: !23)
!2196 = !DILocalVariable(name: "s26", arg: 9, scope: !2184, file: !2185, line: 160, type: !23)
!2197 = !DILocalVariable(name: "s27", arg: 10, scope: !2184, file: !2185, line: 160, type: !23)
!2198 = !DILocalVariable(name: "s28", arg: 11, scope: !2184, file: !2185, line: 160, type: !23)
!2199 = !DILocation(line: 160, column: 25, scope: !2184, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 234, column: 7, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2166, file: !133, line: 234, column: 7)
!2202 = !DILocation(line: 160, column: 41, scope: !2184, inlinedAt: !2200)
!2203 = !DILocation(line: 160, column: 50, scope: !2184, inlinedAt: !2200)
!2204 = !DILocation(line: 160, column: 60, scope: !2184, inlinedAt: !2200)
!2205 = !DILocation(line: 160, column: 70, scope: !2184, inlinedAt: !2200)
!2206 = !DILocation(line: 160, column: 80, scope: !2184, inlinedAt: !2200)
!2207 = !DILocation(line: 160, column: 90, scope: !2184, inlinedAt: !2200)
!2208 = !DILocation(line: 160, column: 100, scope: !2184, inlinedAt: !2200)
!2209 = !DILocation(line: 160, column: 110, scope: !2184, inlinedAt: !2200)
!2210 = !DILocation(line: 160, column: 120, scope: !2184, inlinedAt: !2200)
!2211 = !DILocation(line: 160, column: 130, scope: !2184, inlinedAt: !2200)
!2212 = !DILocation(line: 162, column: 7, scope: !2213, inlinedAt: !2200)
!2213 = distinct !DILexicalBlock(scope: !2184, file: !2185, line: 162, column: 7)
!2214 = !DILocalVariable(name: "s1", arg: 1, scope: !2215, file: !2185, line: 146, type: !52)
!2215 = distinct !DISubprogram(name: "strcaseeq1", scope: !2185, file: !2185, line: 146, type: !2216, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!42, !52, !52, !23, !23, !23, !23, !23, !23, !23, !23}
!2218 = !{!2214, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227}
!2219 = !DILocalVariable(name: "s2", arg: 2, scope: !2215, file: !2185, line: 146, type: !52)
!2220 = !DILocalVariable(name: "s21", arg: 3, scope: !2215, file: !2185, line: 146, type: !23)
!2221 = !DILocalVariable(name: "s22", arg: 4, scope: !2215, file: !2185, line: 146, type: !23)
!2222 = !DILocalVariable(name: "s23", arg: 5, scope: !2215, file: !2185, line: 146, type: !23)
!2223 = !DILocalVariable(name: "s24", arg: 6, scope: !2215, file: !2185, line: 146, type: !23)
!2224 = !DILocalVariable(name: "s25", arg: 7, scope: !2215, file: !2185, line: 146, type: !23)
!2225 = !DILocalVariable(name: "s26", arg: 8, scope: !2215, file: !2185, line: 146, type: !23)
!2226 = !DILocalVariable(name: "s27", arg: 9, scope: !2215, file: !2185, line: 146, type: !23)
!2227 = !DILocalVariable(name: "s28", arg: 10, scope: !2215, file: !2185, line: 146, type: !23)
!2228 = !DILocation(line: 146, column: 25, scope: !2215, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 167, column: 16, scope: !2230, inlinedAt: !2200)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !2185, line: 164, column: 11)
!2231 = distinct !DILexicalBlock(scope: !2213, file: !2185, line: 163, column: 5)
!2232 = !DILocation(line: 146, column: 41, scope: !2215, inlinedAt: !2229)
!2233 = !DILocation(line: 146, column: 50, scope: !2215, inlinedAt: !2229)
!2234 = !DILocation(line: 146, column: 60, scope: !2215, inlinedAt: !2229)
!2235 = !DILocation(line: 146, column: 70, scope: !2215, inlinedAt: !2229)
!2236 = !DILocation(line: 146, column: 80, scope: !2215, inlinedAt: !2229)
!2237 = !DILocation(line: 146, column: 90, scope: !2215, inlinedAt: !2229)
!2238 = !DILocation(line: 146, column: 100, scope: !2215, inlinedAt: !2229)
!2239 = !DILocation(line: 146, column: 110, scope: !2215, inlinedAt: !2229)
!2240 = !DILocation(line: 146, column: 120, scope: !2215, inlinedAt: !2229)
!2241 = !DILocation(line: 148, column: 7, scope: !2242, inlinedAt: !2229)
!2242 = distinct !DILexicalBlock(scope: !2215, file: !2185, line: 148, column: 7)
!2243 = !DILocalVariable(name: "s1", arg: 1, scope: !2244, file: !2185, line: 132, type: !52)
!2244 = distinct !DISubprogram(name: "strcaseeq2", scope: !2185, file: !2185, line: 132, type: !2245, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!42, !52, !52, !23, !23, !23, !23, !23, !23, !23}
!2247 = !{!2243, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255}
!2248 = !DILocalVariable(name: "s2", arg: 2, scope: !2244, file: !2185, line: 132, type: !52)
!2249 = !DILocalVariable(name: "s22", arg: 3, scope: !2244, file: !2185, line: 132, type: !23)
!2250 = !DILocalVariable(name: "s23", arg: 4, scope: !2244, file: !2185, line: 132, type: !23)
!2251 = !DILocalVariable(name: "s24", arg: 5, scope: !2244, file: !2185, line: 132, type: !23)
!2252 = !DILocalVariable(name: "s25", arg: 6, scope: !2244, file: !2185, line: 132, type: !23)
!2253 = !DILocalVariable(name: "s26", arg: 7, scope: !2244, file: !2185, line: 132, type: !23)
!2254 = !DILocalVariable(name: "s27", arg: 8, scope: !2244, file: !2185, line: 132, type: !23)
!2255 = !DILocalVariable(name: "s28", arg: 9, scope: !2244, file: !2185, line: 132, type: !23)
!2256 = !DILocation(line: 132, column: 25, scope: !2244, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 153, column: 16, scope: !2258, inlinedAt: !2229)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !2185, line: 150, column: 11)
!2259 = distinct !DILexicalBlock(scope: !2242, file: !2185, line: 149, column: 5)
!2260 = !DILocation(line: 132, column: 41, scope: !2244, inlinedAt: !2257)
!2261 = !DILocation(line: 132, column: 50, scope: !2244, inlinedAt: !2257)
!2262 = !DILocation(line: 132, column: 60, scope: !2244, inlinedAt: !2257)
!2263 = !DILocation(line: 132, column: 70, scope: !2244, inlinedAt: !2257)
!2264 = !DILocation(line: 132, column: 80, scope: !2244, inlinedAt: !2257)
!2265 = !DILocation(line: 132, column: 90, scope: !2244, inlinedAt: !2257)
!2266 = !DILocation(line: 132, column: 100, scope: !2244, inlinedAt: !2257)
!2267 = !DILocation(line: 132, column: 110, scope: !2244, inlinedAt: !2257)
!2268 = !DILocation(line: 134, column: 7, scope: !2269, inlinedAt: !2257)
!2269 = distinct !DILexicalBlock(scope: !2244, file: !2185, line: 134, column: 7)
!2270 = !DILocalVariable(name: "s1", arg: 1, scope: !2271, file: !2185, line: 118, type: !52)
!2271 = distinct !DISubprogram(name: "strcaseeq3", scope: !2185, file: !2185, line: 118, type: !2272, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!42, !52, !52, !23, !23, !23, !23, !23, !23}
!2274 = !{!2270, !2275, !2276, !2277, !2278, !2279, !2280, !2281}
!2275 = !DILocalVariable(name: "s2", arg: 2, scope: !2271, file: !2185, line: 118, type: !52)
!2276 = !DILocalVariable(name: "s23", arg: 3, scope: !2271, file: !2185, line: 118, type: !23)
!2277 = !DILocalVariable(name: "s24", arg: 4, scope: !2271, file: !2185, line: 118, type: !23)
!2278 = !DILocalVariable(name: "s25", arg: 5, scope: !2271, file: !2185, line: 118, type: !23)
!2279 = !DILocalVariable(name: "s26", arg: 6, scope: !2271, file: !2185, line: 118, type: !23)
!2280 = !DILocalVariable(name: "s27", arg: 7, scope: !2271, file: !2185, line: 118, type: !23)
!2281 = !DILocalVariable(name: "s28", arg: 8, scope: !2271, file: !2185, line: 118, type: !23)
!2282 = !DILocation(line: 118, column: 25, scope: !2271, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 139, column: 16, scope: !2284, inlinedAt: !2257)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !2185, line: 136, column: 11)
!2285 = distinct !DILexicalBlock(scope: !2269, file: !2185, line: 135, column: 5)
!2286 = !DILocation(line: 118, column: 41, scope: !2271, inlinedAt: !2283)
!2287 = !DILocation(line: 118, column: 50, scope: !2271, inlinedAt: !2283)
!2288 = !DILocation(line: 118, column: 60, scope: !2271, inlinedAt: !2283)
!2289 = !DILocation(line: 118, column: 70, scope: !2271, inlinedAt: !2283)
!2290 = !DILocation(line: 118, column: 80, scope: !2271, inlinedAt: !2283)
!2291 = !DILocation(line: 118, column: 90, scope: !2271, inlinedAt: !2283)
!2292 = !DILocation(line: 118, column: 100, scope: !2271, inlinedAt: !2283)
!2293 = !DILocation(line: 120, column: 7, scope: !2294, inlinedAt: !2283)
!2294 = distinct !DILexicalBlock(scope: !2271, file: !2185, line: 120, column: 7)
!2295 = !DILocation(line: 120, column: 7, scope: !2271, inlinedAt: !2283)
!2296 = !DILocalVariable(name: "s1", arg: 1, scope: !2297, file: !2185, line: 104, type: !52)
!2297 = distinct !DISubprogram(name: "strcaseeq4", scope: !2185, file: !2185, line: 104, type: !2298, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!42, !52, !52, !23, !23, !23, !23, !23}
!2300 = !{!2296, !2301, !2302, !2303, !2304, !2305, !2306}
!2301 = !DILocalVariable(name: "s2", arg: 2, scope: !2297, file: !2185, line: 104, type: !52)
!2302 = !DILocalVariable(name: "s24", arg: 3, scope: !2297, file: !2185, line: 104, type: !23)
!2303 = !DILocalVariable(name: "s25", arg: 4, scope: !2297, file: !2185, line: 104, type: !23)
!2304 = !DILocalVariable(name: "s26", arg: 5, scope: !2297, file: !2185, line: 104, type: !23)
!2305 = !DILocalVariable(name: "s27", arg: 6, scope: !2297, file: !2185, line: 104, type: !23)
!2306 = !DILocalVariable(name: "s28", arg: 7, scope: !2297, file: !2185, line: 104, type: !23)
!2307 = !DILocation(line: 104, column: 25, scope: !2297, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 125, column: 16, scope: !2309, inlinedAt: !2283)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !2185, line: 122, column: 11)
!2310 = distinct !DILexicalBlock(scope: !2294, file: !2185, line: 121, column: 5)
!2311 = !DILocation(line: 104, column: 41, scope: !2297, inlinedAt: !2308)
!2312 = !DILocation(line: 104, column: 50, scope: !2297, inlinedAt: !2308)
!2313 = !DILocation(line: 104, column: 60, scope: !2297, inlinedAt: !2308)
!2314 = !DILocation(line: 104, column: 70, scope: !2297, inlinedAt: !2308)
!2315 = !DILocation(line: 104, column: 80, scope: !2297, inlinedAt: !2308)
!2316 = !DILocation(line: 104, column: 90, scope: !2297, inlinedAt: !2308)
!2317 = !DILocation(line: 106, column: 7, scope: !2318, inlinedAt: !2308)
!2318 = distinct !DILexicalBlock(scope: !2297, file: !2185, line: 106, column: 7)
!2319 = !DILocation(line: 106, column: 7, scope: !2297, inlinedAt: !2308)
!2320 = !DILocalVariable(name: "s1", arg: 1, scope: !2321, file: !2185, line: 90, type: !52)
!2321 = distinct !DISubprogram(name: "strcaseeq5", scope: !2185, file: !2185, line: 90, type: !2322, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!42, !52, !52, !23, !23, !23, !23}
!2324 = !{!2320, !2325, !2326, !2327, !2328, !2329}
!2325 = !DILocalVariable(name: "s2", arg: 2, scope: !2321, file: !2185, line: 90, type: !52)
!2326 = !DILocalVariable(name: "s25", arg: 3, scope: !2321, file: !2185, line: 90, type: !23)
!2327 = !DILocalVariable(name: "s26", arg: 4, scope: !2321, file: !2185, line: 90, type: !23)
!2328 = !DILocalVariable(name: "s27", arg: 5, scope: !2321, file: !2185, line: 90, type: !23)
!2329 = !DILocalVariable(name: "s28", arg: 6, scope: !2321, file: !2185, line: 90, type: !23)
!2330 = !DILocation(line: 90, column: 25, scope: !2321, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 111, column: 16, scope: !2332, inlinedAt: !2308)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !2185, line: 108, column: 11)
!2333 = distinct !DILexicalBlock(scope: !2318, file: !2185, line: 107, column: 5)
!2334 = !DILocation(line: 90, column: 41, scope: !2321, inlinedAt: !2331)
!2335 = !DILocation(line: 90, column: 50, scope: !2321, inlinedAt: !2331)
!2336 = !DILocation(line: 90, column: 60, scope: !2321, inlinedAt: !2331)
!2337 = !DILocation(line: 90, column: 70, scope: !2321, inlinedAt: !2331)
!2338 = !DILocation(line: 90, column: 80, scope: !2321, inlinedAt: !2331)
!2339 = !DILocation(line: 92, column: 7, scope: !2340, inlinedAt: !2331)
!2340 = distinct !DILexicalBlock(scope: !2321, file: !2185, line: 92, column: 7)
!2341 = !DILocation(line: 92, column: 7, scope: !2321, inlinedAt: !2331)
!2342 = !DILocation(line: 235, column: 12, scope: !2201)
!2343 = !DILocation(line: 235, column: 21, scope: !2201)
!2344 = !DILocation(line: 235, column: 5, scope: !2201)
!2345 = !DILocation(line: 146, column: 25, scope: !2215, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 167, column: 16, scope: !2230, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 236, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2166, file: !133, line: 236, column: 7)
!2349 = !DILocation(line: 146, column: 41, scope: !2215, inlinedAt: !2346)
!2350 = !DILocation(line: 146, column: 50, scope: !2215, inlinedAt: !2346)
!2351 = !DILocation(line: 146, column: 60, scope: !2215, inlinedAt: !2346)
!2352 = !DILocation(line: 146, column: 70, scope: !2215, inlinedAt: !2346)
!2353 = !DILocation(line: 146, column: 80, scope: !2215, inlinedAt: !2346)
!2354 = !DILocation(line: 146, column: 90, scope: !2215, inlinedAt: !2346)
!2355 = !DILocation(line: 146, column: 100, scope: !2215, inlinedAt: !2346)
!2356 = !DILocation(line: 146, column: 110, scope: !2215, inlinedAt: !2346)
!2357 = !DILocation(line: 146, column: 120, scope: !2215, inlinedAt: !2346)
!2358 = !DILocation(line: 148, column: 7, scope: !2242, inlinedAt: !2346)
!2359 = !DILocation(line: 132, column: 25, scope: !2244, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 153, column: 16, scope: !2258, inlinedAt: !2346)
!2361 = !DILocation(line: 132, column: 41, scope: !2244, inlinedAt: !2360)
!2362 = !DILocation(line: 132, column: 50, scope: !2244, inlinedAt: !2360)
!2363 = !DILocation(line: 132, column: 60, scope: !2244, inlinedAt: !2360)
!2364 = !DILocation(line: 132, column: 70, scope: !2244, inlinedAt: !2360)
!2365 = !DILocation(line: 132, column: 80, scope: !2244, inlinedAt: !2360)
!2366 = !DILocation(line: 132, column: 90, scope: !2244, inlinedAt: !2360)
!2367 = !DILocation(line: 132, column: 100, scope: !2244, inlinedAt: !2360)
!2368 = !DILocation(line: 132, column: 110, scope: !2244, inlinedAt: !2360)
!2369 = !DILocation(line: 134, column: 7, scope: !2269, inlinedAt: !2360)
!2370 = !DILocation(line: 134, column: 7, scope: !2244, inlinedAt: !2360)
!2371 = !DILocation(line: 118, column: 25, scope: !2271, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 139, column: 16, scope: !2284, inlinedAt: !2360)
!2373 = !DILocation(line: 118, column: 41, scope: !2271, inlinedAt: !2372)
!2374 = !DILocation(line: 118, column: 50, scope: !2271, inlinedAt: !2372)
!2375 = !DILocation(line: 118, column: 60, scope: !2271, inlinedAt: !2372)
!2376 = !DILocation(line: 118, column: 70, scope: !2271, inlinedAt: !2372)
!2377 = !DILocation(line: 118, column: 80, scope: !2271, inlinedAt: !2372)
!2378 = !DILocation(line: 118, column: 90, scope: !2271, inlinedAt: !2372)
!2379 = !DILocation(line: 118, column: 100, scope: !2271, inlinedAt: !2372)
!2380 = !DILocation(line: 120, column: 7, scope: !2294, inlinedAt: !2372)
!2381 = !DILocation(line: 120, column: 7, scope: !2271, inlinedAt: !2372)
!2382 = !DILocation(line: 104, column: 25, scope: !2297, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 125, column: 16, scope: !2309, inlinedAt: !2372)
!2384 = !DILocation(line: 104, column: 41, scope: !2297, inlinedAt: !2383)
!2385 = !DILocation(line: 104, column: 50, scope: !2297, inlinedAt: !2383)
!2386 = !DILocation(line: 104, column: 60, scope: !2297, inlinedAt: !2383)
!2387 = !DILocation(line: 104, column: 70, scope: !2297, inlinedAt: !2383)
!2388 = !DILocation(line: 104, column: 80, scope: !2297, inlinedAt: !2383)
!2389 = !DILocation(line: 104, column: 90, scope: !2297, inlinedAt: !2383)
!2390 = !DILocation(line: 106, column: 7, scope: !2318, inlinedAt: !2383)
!2391 = !DILocation(line: 106, column: 7, scope: !2297, inlinedAt: !2383)
!2392 = !DILocation(line: 90, column: 25, scope: !2321, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 111, column: 16, scope: !2332, inlinedAt: !2383)
!2394 = !DILocation(line: 90, column: 41, scope: !2321, inlinedAt: !2393)
!2395 = !DILocation(line: 90, column: 50, scope: !2321, inlinedAt: !2393)
!2396 = !DILocation(line: 90, column: 60, scope: !2321, inlinedAt: !2393)
!2397 = !DILocation(line: 90, column: 70, scope: !2321, inlinedAt: !2393)
!2398 = !DILocation(line: 90, column: 80, scope: !2321, inlinedAt: !2393)
!2399 = !DILocation(line: 92, column: 7, scope: !2340, inlinedAt: !2393)
!2400 = !DILocation(line: 92, column: 7, scope: !2321, inlinedAt: !2393)
!2401 = !DILocalVariable(name: "s1", arg: 1, scope: !2402, file: !2185, line: 76, type: !52)
!2402 = distinct !DISubprogram(name: "strcaseeq6", scope: !2185, file: !2185, line: 76, type: !2403, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!42, !52, !52, !23, !23, !23}
!2405 = !{!2401, !2406, !2407, !2408, !2409}
!2406 = !DILocalVariable(name: "s2", arg: 2, scope: !2402, file: !2185, line: 76, type: !52)
!2407 = !DILocalVariable(name: "s26", arg: 3, scope: !2402, file: !2185, line: 76, type: !23)
!2408 = !DILocalVariable(name: "s27", arg: 4, scope: !2402, file: !2185, line: 76, type: !23)
!2409 = !DILocalVariable(name: "s28", arg: 5, scope: !2402, file: !2185, line: 76, type: !23)
!2410 = !DILocation(line: 76, column: 25, scope: !2402, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 97, column: 16, scope: !2412, inlinedAt: !2393)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !2185, line: 94, column: 11)
!2413 = distinct !DILexicalBlock(scope: !2340, file: !2185, line: 93, column: 5)
!2414 = !DILocation(line: 76, column: 41, scope: !2402, inlinedAt: !2411)
!2415 = !DILocation(line: 76, column: 50, scope: !2402, inlinedAt: !2411)
!2416 = !DILocation(line: 76, column: 60, scope: !2402, inlinedAt: !2411)
!2417 = !DILocation(line: 76, column: 70, scope: !2402, inlinedAt: !2411)
!2418 = !DILocation(line: 78, column: 7, scope: !2419, inlinedAt: !2411)
!2419 = distinct !DILexicalBlock(scope: !2402, file: !2185, line: 78, column: 7)
!2420 = !DILocation(line: 78, column: 7, scope: !2402, inlinedAt: !2411)
!2421 = !DILocalVariable(name: "s1", arg: 1, scope: !2422, file: !2185, line: 62, type: !52)
!2422 = distinct !DISubprogram(name: "strcaseeq7", scope: !2185, file: !2185, line: 62, type: !2423, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!42, !52, !52, !23, !23}
!2425 = !{!2421, !2426, !2427, !2428}
!2426 = !DILocalVariable(name: "s2", arg: 2, scope: !2422, file: !2185, line: 62, type: !52)
!2427 = !DILocalVariable(name: "s27", arg: 3, scope: !2422, file: !2185, line: 62, type: !23)
!2428 = !DILocalVariable(name: "s28", arg: 4, scope: !2422, file: !2185, line: 62, type: !23)
!2429 = !DILocation(line: 62, column: 25, scope: !2422, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 83, column: 16, scope: !2431, inlinedAt: !2411)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !2185, line: 80, column: 11)
!2432 = distinct !DILexicalBlock(scope: !2419, file: !2185, line: 79, column: 5)
!2433 = !DILocation(line: 62, column: 41, scope: !2422, inlinedAt: !2430)
!2434 = !DILocation(line: 62, column: 50, scope: !2422, inlinedAt: !2430)
!2435 = !DILocation(line: 62, column: 60, scope: !2422, inlinedAt: !2430)
!2436 = !DILocation(line: 64, column: 7, scope: !2437, inlinedAt: !2430)
!2437 = distinct !DILexicalBlock(scope: !2422, file: !2185, line: 64, column: 7)
!2438 = !DILocation(line: 236, column: 7, scope: !2166)
!2439 = !DILocation(line: 237, column: 12, scope: !2348)
!2440 = !DILocation(line: 237, column: 21, scope: !2348)
!2441 = !DILocation(line: 237, column: 5, scope: !2348)
!2442 = !DILocation(line: 239, column: 13, scope: !2166)
!2443 = !DILocation(line: 239, column: 11, scope: !2166)
!2444 = !DILocation(line: 239, column: 3, scope: !2166)
!2445 = !DILocation(line: 0, scope: !2166)
!2446 = !DILocation(line: 240, column: 1, scope: !2166)
!2447 = distinct !DISubprogram(name: "quotearg_alloc", scope: !133, file: !133, line: 799, type: !2448, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!22, !52, !39, !1484}
!2450 = !{!2451, !2452, !2453}
!2451 = !DILocalVariable(name: "arg", arg: 1, scope: !2447, file: !133, line: 799, type: !52)
!2452 = !DILocalVariable(name: "argsize", arg: 2, scope: !2447, file: !133, line: 799, type: !39)
!2453 = !DILocalVariable(name: "o", arg: 3, scope: !2447, file: !133, line: 800, type: !1484)
!2454 = !DILocation(line: 799, column: 29, scope: !2447)
!2455 = !DILocation(line: 799, column: 41, scope: !2447)
!2456 = !DILocation(line: 800, column: 47, scope: !2447)
!2457 = !DILocalVariable(name: "arg", arg: 1, scope: !2458, file: !133, line: 812, type: !52)
!2458 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !133, file: !133, line: 812, type: !2459, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!22, !52, !39, !234, !1484}
!2461 = !{!2457, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469}
!2462 = !DILocalVariable(name: "argsize", arg: 2, scope: !2458, file: !133, line: 812, type: !39)
!2463 = !DILocalVariable(name: "size", arg: 3, scope: !2458, file: !133, line: 812, type: !234)
!2464 = !DILocalVariable(name: "o", arg: 4, scope: !2458, file: !133, line: 813, type: !1484)
!2465 = !DILocalVariable(name: "p", scope: !2458, file: !133, line: 815, type: !1484)
!2466 = !DILocalVariable(name: "e", scope: !2458, file: !133, line: 816, type: !42)
!2467 = !DILocalVariable(name: "flags", scope: !2458, file: !133, line: 818, type: !42)
!2468 = !DILocalVariable(name: "bufsize", scope: !2458, file: !133, line: 819, type: !39)
!2469 = !DILocalVariable(name: "buf", scope: !2458, file: !133, line: 823, type: !22)
!2470 = !DILocation(line: 812, column: 33, scope: !2458, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 802, column: 10, scope: !2447)
!2472 = !DILocation(line: 812, column: 45, scope: !2458, inlinedAt: !2471)
!2473 = !DILocation(line: 812, column: 62, scope: !2458, inlinedAt: !2471)
!2474 = !DILocation(line: 813, column: 51, scope: !2458, inlinedAt: !2471)
!2475 = !DILocation(line: 815, column: 37, scope: !2458, inlinedAt: !2471)
!2476 = !DILocation(line: 815, column: 33, scope: !2458, inlinedAt: !2471)
!2477 = !DILocation(line: 816, column: 11, scope: !2458, inlinedAt: !2471)
!2478 = !DILocation(line: 816, column: 7, scope: !2458, inlinedAt: !2471)
!2479 = !DILocation(line: 818, column: 18, scope: !2458, inlinedAt: !2471)
!2480 = !DILocation(line: 818, column: 24, scope: !2458, inlinedAt: !2471)
!2481 = !DILocation(line: 818, column: 7, scope: !2458, inlinedAt: !2471)
!2482 = !DILocation(line: 819, column: 69, scope: !2458, inlinedAt: !2471)
!2483 = !DILocation(line: 820, column: 53, scope: !2458, inlinedAt: !2471)
!2484 = !DILocation(line: 821, column: 49, scope: !2458, inlinedAt: !2471)
!2485 = !DILocation(line: 822, column: 49, scope: !2458, inlinedAt: !2471)
!2486 = !DILocation(line: 819, column: 20, scope: !2458, inlinedAt: !2471)
!2487 = !DILocation(line: 822, column: 62, scope: !2458, inlinedAt: !2471)
!2488 = !DILocation(line: 819, column: 10, scope: !2458, inlinedAt: !2471)
!2489 = !DILocalVariable(name: "n", arg: 1, scope: !2490, file: !230, line: 216, type: !39)
!2490 = distinct !DISubprogram(name: "xcharalloc", scope: !230, file: !230, line: 216, type: !2491, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!22, !39}
!2493 = !{!2489}
!2494 = !DILocation(line: 216, column: 20, scope: !2490, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 823, column: 15, scope: !2458, inlinedAt: !2471)
!2496 = !DILocation(line: 218, column: 10, scope: !2490, inlinedAt: !2495)
!2497 = !DILocation(line: 823, column: 9, scope: !2458, inlinedAt: !2471)
!2498 = !DILocation(line: 824, column: 60, scope: !2458, inlinedAt: !2471)
!2499 = !DILocation(line: 826, column: 32, scope: !2458, inlinedAt: !2471)
!2500 = !DILocation(line: 826, column: 47, scope: !2458, inlinedAt: !2471)
!2501 = !DILocation(line: 824, column: 3, scope: !2458, inlinedAt: !2471)
!2502 = !DILocation(line: 827, column: 9, scope: !2458, inlinedAt: !2471)
!2503 = !DILocation(line: 802, column: 3, scope: !2447)
!2504 = !DILocation(line: 812, column: 33, scope: !2458)
!2505 = !DILocation(line: 812, column: 45, scope: !2458)
!2506 = !DILocation(line: 812, column: 62, scope: !2458)
!2507 = !DILocation(line: 813, column: 51, scope: !2458)
!2508 = !DILocation(line: 815, column: 37, scope: !2458)
!2509 = !DILocation(line: 815, column: 33, scope: !2458)
!2510 = !DILocation(line: 816, column: 11, scope: !2458)
!2511 = !DILocation(line: 816, column: 7, scope: !2458)
!2512 = !DILocation(line: 818, column: 18, scope: !2458)
!2513 = !DILocation(line: 818, column: 27, scope: !2458)
!2514 = !DILocation(line: 818, column: 24, scope: !2458)
!2515 = !DILocation(line: 818, column: 7, scope: !2458)
!2516 = !DILocation(line: 819, column: 69, scope: !2458)
!2517 = !DILocation(line: 820, column: 53, scope: !2458)
!2518 = !DILocation(line: 821, column: 49, scope: !2458)
!2519 = !DILocation(line: 822, column: 49, scope: !2458)
!2520 = !DILocation(line: 819, column: 20, scope: !2458)
!2521 = !DILocation(line: 822, column: 62, scope: !2458)
!2522 = !DILocation(line: 819, column: 10, scope: !2458)
!2523 = !DILocation(line: 216, column: 20, scope: !2490, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 823, column: 15, scope: !2458)
!2525 = !DILocation(line: 218, column: 10, scope: !2490, inlinedAt: !2524)
!2526 = !DILocation(line: 823, column: 9, scope: !2458)
!2527 = !DILocation(line: 824, column: 60, scope: !2458)
!2528 = !DILocation(line: 826, column: 32, scope: !2458)
!2529 = !DILocation(line: 826, column: 47, scope: !2458)
!2530 = !DILocation(line: 824, column: 3, scope: !2458)
!2531 = !DILocation(line: 827, column: 9, scope: !2458)
!2532 = !DILocation(line: 828, column: 7, scope: !2458)
!2533 = !DILocation(line: 829, column: 11, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2458, file: !133, line: 828, column: 7)
!2535 = !DILocation(line: 829, column: 5, scope: !2534)
!2536 = !DILocation(line: 830, column: 3, scope: !2458)
!2537 = distinct !DISubprogram(name: "quotearg_free", scope: !133, file: !133, line: 848, type: !706, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2538)
!2538 = !{!2539, !2540}
!2539 = !DILocalVariable(name: "sv", scope: !2537, file: !133, line: 850, type: !159)
!2540 = !DILocalVariable(name: "i", scope: !2537, file: !133, line: 851, type: !42)
!2541 = !DILocation(line: 850, column: 24, scope: !2537)
!2542 = !DILocation(line: 850, column: 19, scope: !2537)
!2543 = !DILocation(line: 851, column: 7, scope: !2537)
!2544 = !DILocation(line: 852, column: 19, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !133, line: 852, column: 3)
!2546 = distinct !DILexicalBlock(scope: !2537, file: !133, line: 852, column: 3)
!2547 = !DILocation(line: 852, column: 17, scope: !2545)
!2548 = !DILocation(line: 852, column: 3, scope: !2546)
!2549 = !DILocation(line: 853, column: 17, scope: !2545)
!2550 = !{!2551, !699, i64 8}
!2551 = !{!"slotvec", !850, i64 0, !699, i64 8}
!2552 = !DILocation(line: 853, column: 5, scope: !2545)
!2553 = !DILocation(line: 852, column: 28, scope: !2545)
!2554 = distinct !{!2554, !2548, !2555}
!2555 = !DILocation(line: 853, column: 20, scope: !2546)
!2556 = !DILocation(line: 854, column: 13, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2537, file: !133, line: 854, column: 7)
!2558 = !DILocation(line: 854, column: 17, scope: !2557)
!2559 = !DILocation(line: 854, column: 7, scope: !2537)
!2560 = !DILocation(line: 856, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !133, line: 855, column: 5)
!2562 = !DILocation(line: 857, column: 21, scope: !2561)
!2563 = !{!2551, !850, i64 0}
!2564 = !DILocation(line: 858, column: 20, scope: !2561)
!2565 = !DILocation(line: 859, column: 5, scope: !2561)
!2566 = !DILocation(line: 860, column: 10, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2537, file: !133, line: 860, column: 7)
!2568 = !DILocation(line: 860, column: 7, scope: !2537)
!2569 = !DILocation(line: 862, column: 13, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2567, file: !133, line: 861, column: 5)
!2571 = !DILocation(line: 862, column: 7, scope: !2570)
!2572 = !DILocation(line: 863, column: 15, scope: !2570)
!2573 = !DILocation(line: 864, column: 5, scope: !2570)
!2574 = !DILocation(line: 865, column: 10, scope: !2537)
!2575 = !DILocation(line: 866, column: 1, scope: !2537)
!2576 = distinct !DISubprogram(name: "quotearg_n", scope: !133, file: !133, line: 931, type: !2577, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!22, !42, !52}
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "n", arg: 1, scope: !2576, file: !133, line: 931, type: !42)
!2581 = !DILocalVariable(name: "arg", arg: 2, scope: !2576, file: !133, line: 931, type: !52)
!2582 = !DILocation(line: 931, column: 17, scope: !2576)
!2583 = !DILocation(line: 931, column: 32, scope: !2576)
!2584 = !DILocation(line: 933, column: 10, scope: !2576)
!2585 = !DILocation(line: 933, column: 3, scope: !2576)
!2586 = distinct !DISubprogram(name: "quotearg_n_options", scope: !133, file: !133, line: 877, type: !2587, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!22, !42, !52, !39, !1484}
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2595, !2596, !2599, !2600, !2602, !2603, !2604}
!2590 = !DILocalVariable(name: "n", arg: 1, scope: !2586, file: !133, line: 877, type: !42)
!2591 = !DILocalVariable(name: "arg", arg: 2, scope: !2586, file: !133, line: 877, type: !52)
!2592 = !DILocalVariable(name: "argsize", arg: 3, scope: !2586, file: !133, line: 877, type: !39)
!2593 = !DILocalVariable(name: "options", arg: 4, scope: !2586, file: !133, line: 878, type: !1484)
!2594 = !DILocalVariable(name: "e", scope: !2586, file: !133, line: 880, type: !42)
!2595 = !DILocalVariable(name: "sv", scope: !2586, file: !133, line: 882, type: !159)
!2596 = !DILocalVariable(name: "preallocated", scope: !2597, file: !133, line: 889, type: !74)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !133, line: 888, column: 5)
!2598 = distinct !DILexicalBlock(scope: !2586, file: !133, line: 887, column: 7)
!2599 = !DILocalVariable(name: "nmax", scope: !2597, file: !133, line: 890, type: !42)
!2600 = !DILocalVariable(name: "size", scope: !2601, file: !133, line: 903, type: !39)
!2601 = distinct !DILexicalBlock(scope: !2586, file: !133, line: 902, column: 3)
!2602 = !DILocalVariable(name: "val", scope: !2601, file: !133, line: 904, type: !22)
!2603 = !DILocalVariable(name: "flags", scope: !2601, file: !133, line: 906, type: !42)
!2604 = !DILocalVariable(name: "qsize", scope: !2601, file: !133, line: 907, type: !39)
!2605 = !DILocation(line: 877, column: 25, scope: !2586)
!2606 = !DILocation(line: 877, column: 40, scope: !2586)
!2607 = !DILocation(line: 877, column: 52, scope: !2586)
!2608 = !DILocation(line: 878, column: 51, scope: !2586)
!2609 = !DILocation(line: 880, column: 11, scope: !2586)
!2610 = !DILocation(line: 880, column: 7, scope: !2586)
!2611 = !DILocation(line: 882, column: 24, scope: !2586)
!2612 = !DILocation(line: 882, column: 19, scope: !2586)
!2613 = !DILocation(line: 884, column: 9, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2586, file: !133, line: 884, column: 7)
!2615 = !DILocation(line: 884, column: 7, scope: !2586)
!2616 = !DILocation(line: 885, column: 5, scope: !2614)
!2617 = !DILocation(line: 887, column: 7, scope: !2598)
!2618 = !DILocation(line: 887, column: 14, scope: !2598)
!2619 = !DILocation(line: 887, column: 7, scope: !2586)
!2620 = !DILocation(line: 889, column: 31, scope: !2597)
!2621 = !DILocation(line: 890, column: 11, scope: !2597)
!2622 = !DILocation(line: 892, column: 16, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2597, file: !133, line: 892, column: 11)
!2624 = !DILocation(line: 892, column: 11, scope: !2597)
!2625 = !DILocation(line: 893, column: 9, scope: !2623)
!2626 = !DILocation(line: 895, column: 32, scope: !2597)
!2627 = !DILocation(line: 895, column: 61, scope: !2597)
!2628 = !DILocation(line: 895, column: 58, scope: !2597)
!2629 = !DILocation(line: 895, column: 66, scope: !2597)
!2630 = !DILocation(line: 895, column: 22, scope: !2597)
!2631 = !DILocation(line: 895, column: 15, scope: !2597)
!2632 = !DILocation(line: 896, column: 11, scope: !2597)
!2633 = !DILocation(line: 897, column: 15, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2597, file: !133, line: 896, column: 11)
!2635 = !{i64 0, i64 8, !907, i64 8, i64 8, !698}
!2636 = !DILocation(line: 897, column: 9, scope: !2634)
!2637 = !DILocation(line: 898, column: 20, scope: !2597)
!2638 = !DILocation(line: 898, column: 18, scope: !2597)
!2639 = !DILocation(line: 898, column: 7, scope: !2597)
!2640 = !DILocation(line: 898, column: 38, scope: !2597)
!2641 = !DILocation(line: 898, column: 31, scope: !2597)
!2642 = !DILocation(line: 898, column: 48, scope: !2597)
!2643 = !DILocation(line: 899, column: 14, scope: !2597)
!2644 = !DILocation(line: 900, column: 5, scope: !2597)
!2645 = !DILocation(line: 0, scope: !2586)
!2646 = !DILocation(line: 903, column: 19, scope: !2601)
!2647 = !DILocation(line: 903, column: 25, scope: !2601)
!2648 = !DILocation(line: 903, column: 12, scope: !2601)
!2649 = !DILocation(line: 904, column: 23, scope: !2601)
!2650 = !DILocation(line: 904, column: 11, scope: !2601)
!2651 = !DILocation(line: 906, column: 26, scope: !2601)
!2652 = !DILocation(line: 906, column: 32, scope: !2601)
!2653 = !DILocation(line: 906, column: 9, scope: !2601)
!2654 = !DILocation(line: 908, column: 55, scope: !2601)
!2655 = !DILocation(line: 909, column: 46, scope: !2601)
!2656 = !DILocation(line: 910, column: 55, scope: !2601)
!2657 = !DILocation(line: 911, column: 55, scope: !2601)
!2658 = !DILocation(line: 907, column: 20, scope: !2601)
!2659 = !DILocation(line: 907, column: 12, scope: !2601)
!2660 = !DILocation(line: 913, column: 14, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2601, file: !133, line: 913, column: 9)
!2662 = !DILocation(line: 913, column: 9, scope: !2601)
!2663 = !DILocation(line: 915, column: 35, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !133, line: 914, column: 7)
!2665 = !DILocation(line: 915, column: 20, scope: !2664)
!2666 = !DILocation(line: 916, column: 17, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !133, line: 916, column: 13)
!2668 = !DILocation(line: 916, column: 13, scope: !2664)
!2669 = !DILocation(line: 917, column: 11, scope: !2667)
!2670 = !DILocation(line: 216, column: 20, scope: !2490, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 918, column: 27, scope: !2664)
!2672 = !DILocation(line: 218, column: 10, scope: !2490, inlinedAt: !2671)
!2673 = !DILocation(line: 918, column: 19, scope: !2664)
!2674 = !DILocation(line: 919, column: 69, scope: !2664)
!2675 = !DILocation(line: 921, column: 44, scope: !2664)
!2676 = !DILocation(line: 922, column: 44, scope: !2664)
!2677 = !DILocation(line: 919, column: 9, scope: !2664)
!2678 = !DILocation(line: 923, column: 7, scope: !2664)
!2679 = !DILocation(line: 0, scope: !2601)
!2680 = !DILocation(line: 925, column: 11, scope: !2601)
!2681 = !DILocation(line: 926, column: 5, scope: !2601)
!2682 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !133, file: !133, line: 937, type: !2683, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!22, !42, !52, !39}
!2685 = !{!2686, !2687, !2688}
!2686 = !DILocalVariable(name: "n", arg: 1, scope: !2682, file: !133, line: 937, type: !42)
!2687 = !DILocalVariable(name: "arg", arg: 2, scope: !2682, file: !133, line: 937, type: !52)
!2688 = !DILocalVariable(name: "argsize", arg: 3, scope: !2682, file: !133, line: 937, type: !39)
!2689 = !DILocation(line: 937, column: 21, scope: !2682)
!2690 = !DILocation(line: 937, column: 36, scope: !2682)
!2691 = !DILocation(line: 937, column: 48, scope: !2682)
!2692 = !DILocation(line: 939, column: 10, scope: !2682)
!2693 = !DILocation(line: 939, column: 3, scope: !2682)
!2694 = distinct !DISubprogram(name: "quotearg", scope: !133, file: !133, line: 943, type: !1194, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2695)
!2695 = !{!2696}
!2696 = !DILocalVariable(name: "arg", arg: 1, scope: !2694, file: !133, line: 943, type: !52)
!2697 = !DILocation(line: 943, column: 23, scope: !2694)
!2698 = !DILocation(line: 931, column: 17, scope: !2576, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 945, column: 10, scope: !2694)
!2700 = !DILocation(line: 931, column: 32, scope: !2576, inlinedAt: !2699)
!2701 = !DILocation(line: 933, column: 10, scope: !2576, inlinedAt: !2699)
!2702 = !DILocation(line: 945, column: 3, scope: !2694)
!2703 = distinct !DISubprogram(name: "quotearg_mem", scope: !133, file: !133, line: 949, type: !2704, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!22, !52, !39}
!2706 = !{!2707, !2708}
!2707 = !DILocalVariable(name: "arg", arg: 1, scope: !2703, file: !133, line: 949, type: !52)
!2708 = !DILocalVariable(name: "argsize", arg: 2, scope: !2703, file: !133, line: 949, type: !39)
!2709 = !DILocation(line: 949, column: 27, scope: !2703)
!2710 = !DILocation(line: 949, column: 39, scope: !2703)
!2711 = !DILocation(line: 937, column: 21, scope: !2682, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 951, column: 10, scope: !2703)
!2713 = !DILocation(line: 937, column: 36, scope: !2682, inlinedAt: !2712)
!2714 = !DILocation(line: 937, column: 48, scope: !2682, inlinedAt: !2712)
!2715 = !DILocation(line: 939, column: 10, scope: !2682, inlinedAt: !2712)
!2716 = !DILocation(line: 951, column: 3, scope: !2703)
!2717 = distinct !DISubprogram(name: "quotearg_n_style", scope: !133, file: !133, line: 955, type: !2718, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!22, !42, !94, !52}
!2720 = !{!2721, !2722, !2723, !2724}
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !133, line: 955, type: !42)
!2722 = !DILocalVariable(name: "s", arg: 2, scope: !2717, file: !133, line: 955, type: !94)
!2723 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !133, line: 955, type: !52)
!2724 = !DILocalVariable(name: "o", scope: !2717, file: !133, line: 957, type: !1485)
!2725 = !DILocation(line: 955, column: 23, scope: !2717)
!2726 = !DILocation(line: 955, column: 45, scope: !2717)
!2727 = !DILocation(line: 955, column: 60, scope: !2717)
!2728 = !DILocation(line: 957, column: 3, scope: !2717)
!2729 = !DILocation(line: 957, column: 32, scope: !2717)
!2730 = !DILocalVariable(name: "style", arg: 1, scope: !2731, file: !133, line: 193, type: !94)
!2731 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !133, file: !133, line: 193, type: !2732, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!140, !94}
!2734 = !{!2730, !2735}
!2735 = !DILocalVariable(name: "o", scope: !2731, file: !133, line: 195, type: !140)
!2736 = !DILocation(line: 193, column: 48, scope: !2731, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 957, column: 36, scope: !2717)
!2738 = !DILocation(line: 195, column: 26, scope: !2731, inlinedAt: !2737)
!2739 = !{!2740}
!2740 = distinct !{!2740, !2741, !"quoting_options_from_style: argument 0"}
!2741 = distinct !{!2741, !"quoting_options_from_style"}
!2742 = !DILocation(line: 196, column: 13, scope: !2743, inlinedAt: !2737)
!2743 = distinct !DILexicalBlock(scope: !2731, file: !133, line: 196, column: 7)
!2744 = !DILocation(line: 196, column: 7, scope: !2731, inlinedAt: !2737)
!2745 = !DILocation(line: 197, column: 5, scope: !2743, inlinedAt: !2737)
!2746 = !DILocation(line: 198, column: 5, scope: !2731, inlinedAt: !2737)
!2747 = !DILocation(line: 198, column: 11, scope: !2731, inlinedAt: !2737)
!2748 = !DILocation(line: 958, column: 10, scope: !2717)
!2749 = !DILocation(line: 959, column: 1, scope: !2717)
!2750 = !DILocation(line: 958, column: 3, scope: !2717)
!2751 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !133, file: !133, line: 962, type: !2752, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!22, !42, !94, !52, !39}
!2754 = !{!2755, !2756, !2757, !2758, !2759}
!2755 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !133, line: 962, type: !42)
!2756 = !DILocalVariable(name: "s", arg: 2, scope: !2751, file: !133, line: 962, type: !94)
!2757 = !DILocalVariable(name: "arg", arg: 3, scope: !2751, file: !133, line: 963, type: !52)
!2758 = !DILocalVariable(name: "argsize", arg: 4, scope: !2751, file: !133, line: 963, type: !39)
!2759 = !DILocalVariable(name: "o", scope: !2751, file: !133, line: 965, type: !1485)
!2760 = !DILocation(line: 962, column: 27, scope: !2751)
!2761 = !DILocation(line: 962, column: 49, scope: !2751)
!2762 = !DILocation(line: 963, column: 35, scope: !2751)
!2763 = !DILocation(line: 963, column: 47, scope: !2751)
!2764 = !DILocation(line: 965, column: 3, scope: !2751)
!2765 = !DILocation(line: 965, column: 32, scope: !2751)
!2766 = !DILocation(line: 193, column: 48, scope: !2731, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 965, column: 36, scope: !2751)
!2768 = !DILocation(line: 195, column: 26, scope: !2731, inlinedAt: !2767)
!2769 = !{!2770}
!2770 = distinct !{!2770, !2771, !"quoting_options_from_style: argument 0"}
!2771 = distinct !{!2771, !"quoting_options_from_style"}
!2772 = !DILocation(line: 196, column: 13, scope: !2743, inlinedAt: !2767)
!2773 = !DILocation(line: 196, column: 7, scope: !2731, inlinedAt: !2767)
!2774 = !DILocation(line: 197, column: 5, scope: !2743, inlinedAt: !2767)
!2775 = !DILocation(line: 198, column: 5, scope: !2731, inlinedAt: !2767)
!2776 = !DILocation(line: 198, column: 11, scope: !2731, inlinedAt: !2767)
!2777 = !DILocation(line: 966, column: 10, scope: !2751)
!2778 = !DILocation(line: 967, column: 1, scope: !2751)
!2779 = !DILocation(line: 966, column: 3, scope: !2751)
!2780 = distinct !DISubprogram(name: "quotearg_style", scope: !133, file: !133, line: 970, type: !2781, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!22, !94, !52}
!2783 = !{!2784, !2785}
!2784 = !DILocalVariable(name: "s", arg: 1, scope: !2780, file: !133, line: 970, type: !94)
!2785 = !DILocalVariable(name: "arg", arg: 2, scope: !2780, file: !133, line: 970, type: !52)
!2786 = !DILocation(line: 970, column: 36, scope: !2780)
!2787 = !DILocation(line: 970, column: 51, scope: !2780)
!2788 = !DILocation(line: 955, column: 23, scope: !2717, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 972, column: 10, scope: !2780)
!2790 = !DILocation(line: 955, column: 45, scope: !2717, inlinedAt: !2789)
!2791 = !DILocation(line: 955, column: 60, scope: !2717, inlinedAt: !2789)
!2792 = !DILocation(line: 957, column: 3, scope: !2717, inlinedAt: !2789)
!2793 = !DILocation(line: 957, column: 32, scope: !2717, inlinedAt: !2789)
!2794 = !DILocation(line: 193, column: 48, scope: !2731, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 957, column: 36, scope: !2717, inlinedAt: !2789)
!2796 = !DILocation(line: 195, column: 26, scope: !2731, inlinedAt: !2795)
!2797 = !{!2798}
!2798 = distinct !{!2798, !2799, !"quoting_options_from_style: argument 0"}
!2799 = distinct !{!2799, !"quoting_options_from_style"}
!2800 = !DILocation(line: 196, column: 13, scope: !2743, inlinedAt: !2795)
!2801 = !DILocation(line: 196, column: 7, scope: !2731, inlinedAt: !2795)
!2802 = !DILocation(line: 197, column: 5, scope: !2743, inlinedAt: !2795)
!2803 = !DILocation(line: 198, column: 5, scope: !2731, inlinedAt: !2795)
!2804 = !DILocation(line: 198, column: 11, scope: !2731, inlinedAt: !2795)
!2805 = !DILocation(line: 958, column: 10, scope: !2717, inlinedAt: !2789)
!2806 = !DILocation(line: 959, column: 1, scope: !2717, inlinedAt: !2789)
!2807 = !DILocation(line: 972, column: 3, scope: !2780)
!2808 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !133, file: !133, line: 976, type: !2809, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!22, !94, !52, !39}
!2811 = !{!2812, !2813, !2814}
!2812 = !DILocalVariable(name: "s", arg: 1, scope: !2808, file: !133, line: 976, type: !94)
!2813 = !DILocalVariable(name: "arg", arg: 2, scope: !2808, file: !133, line: 976, type: !52)
!2814 = !DILocalVariable(name: "argsize", arg: 3, scope: !2808, file: !133, line: 976, type: !39)
!2815 = !DILocation(line: 976, column: 40, scope: !2808)
!2816 = !DILocation(line: 976, column: 55, scope: !2808)
!2817 = !DILocation(line: 976, column: 67, scope: !2808)
!2818 = !DILocation(line: 962, column: 27, scope: !2751, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 978, column: 10, scope: !2808)
!2820 = !DILocation(line: 962, column: 49, scope: !2751, inlinedAt: !2819)
!2821 = !DILocation(line: 963, column: 35, scope: !2751, inlinedAt: !2819)
!2822 = !DILocation(line: 963, column: 47, scope: !2751, inlinedAt: !2819)
!2823 = !DILocation(line: 965, column: 3, scope: !2751, inlinedAt: !2819)
!2824 = !DILocation(line: 965, column: 32, scope: !2751, inlinedAt: !2819)
!2825 = !DILocation(line: 193, column: 48, scope: !2731, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 965, column: 36, scope: !2751, inlinedAt: !2819)
!2827 = !DILocation(line: 195, column: 26, scope: !2731, inlinedAt: !2826)
!2828 = !{!2829}
!2829 = distinct !{!2829, !2830, !"quoting_options_from_style: argument 0"}
!2830 = distinct !{!2830, !"quoting_options_from_style"}
!2831 = !DILocation(line: 196, column: 13, scope: !2743, inlinedAt: !2826)
!2832 = !DILocation(line: 196, column: 7, scope: !2731, inlinedAt: !2826)
!2833 = !DILocation(line: 197, column: 5, scope: !2743, inlinedAt: !2826)
!2834 = !DILocation(line: 198, column: 5, scope: !2731, inlinedAt: !2826)
!2835 = !DILocation(line: 198, column: 11, scope: !2731, inlinedAt: !2826)
!2836 = !DILocation(line: 966, column: 10, scope: !2751, inlinedAt: !2819)
!2837 = !DILocation(line: 967, column: 1, scope: !2751, inlinedAt: !2819)
!2838 = !DILocation(line: 978, column: 3, scope: !2808)
!2839 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !133, file: !133, line: 982, type: !2840, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!22, !52, !39, !23}
!2842 = !{!2843, !2844, !2845, !2846}
!2843 = !DILocalVariable(name: "arg", arg: 1, scope: !2839, file: !133, line: 982, type: !52)
!2844 = !DILocalVariable(name: "argsize", arg: 2, scope: !2839, file: !133, line: 982, type: !39)
!2845 = !DILocalVariable(name: "ch", arg: 3, scope: !2839, file: !133, line: 982, type: !23)
!2846 = !DILocalVariable(name: "options", scope: !2839, file: !133, line: 984, type: !140)
!2847 = !DILocation(line: 982, column: 32, scope: !2839)
!2848 = !DILocation(line: 982, column: 44, scope: !2839)
!2849 = !DILocation(line: 982, column: 58, scope: !2839)
!2850 = !DILocation(line: 984, column: 3, scope: !2839)
!2851 = !DILocation(line: 985, column: 13, scope: !2839)
!2852 = !{i64 0, i64 4, !854, i64 4, i64 4, !827, i64 8, i64 32, !854, i64 40, i64 8, !698, i64 48, i64 8, !698}
!2853 = !DILocation(line: 984, column: 26, scope: !2839)
!2854 = !DILocation(line: 152, column: 43, scope: !1506, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 986, column: 3, scope: !2839)
!2856 = !DILocation(line: 152, column: 51, scope: !1506, inlinedAt: !2855)
!2857 = !DILocation(line: 152, column: 58, scope: !1506, inlinedAt: !2855)
!2858 = !DILocation(line: 154, column: 17, scope: !1506, inlinedAt: !2855)
!2859 = !DILocation(line: 156, column: 62, scope: !1506, inlinedAt: !2855)
!2860 = !DILocation(line: 156, column: 57, scope: !1506, inlinedAt: !2855)
!2861 = !DILocation(line: 155, column: 17, scope: !1506, inlinedAt: !2855)
!2862 = !DILocation(line: 157, column: 15, scope: !1506, inlinedAt: !2855)
!2863 = !DILocation(line: 157, column: 7, scope: !1506, inlinedAt: !2855)
!2864 = !DILocation(line: 158, column: 12, scope: !1506, inlinedAt: !2855)
!2865 = !DILocation(line: 158, column: 15, scope: !1506, inlinedAt: !2855)
!2866 = !DILocation(line: 158, column: 25, scope: !1506, inlinedAt: !2855)
!2867 = !DILocation(line: 158, column: 7, scope: !1506, inlinedAt: !2855)
!2868 = !DILocation(line: 159, column: 18, scope: !1506, inlinedAt: !2855)
!2869 = !DILocation(line: 159, column: 23, scope: !1506, inlinedAt: !2855)
!2870 = !DILocation(line: 159, column: 6, scope: !1506, inlinedAt: !2855)
!2871 = !DILocation(line: 987, column: 10, scope: !2839)
!2872 = !DILocation(line: 988, column: 1, scope: !2839)
!2873 = !DILocation(line: 987, column: 3, scope: !2839)
!2874 = distinct !DISubprogram(name: "quotearg_char", scope: !133, file: !133, line: 991, type: !2875, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!22, !52, !23}
!2877 = !{!2878, !2879}
!2878 = !DILocalVariable(name: "arg", arg: 1, scope: !2874, file: !133, line: 991, type: !52)
!2879 = !DILocalVariable(name: "ch", arg: 2, scope: !2874, file: !133, line: 991, type: !23)
!2880 = !DILocation(line: 991, column: 28, scope: !2874)
!2881 = !DILocation(line: 991, column: 38, scope: !2874)
!2882 = !DILocation(line: 982, column: 32, scope: !2839, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 993, column: 10, scope: !2874)
!2884 = !DILocation(line: 982, column: 44, scope: !2839, inlinedAt: !2883)
!2885 = !DILocation(line: 982, column: 58, scope: !2839, inlinedAt: !2883)
!2886 = !DILocation(line: 984, column: 3, scope: !2839, inlinedAt: !2883)
!2887 = !DILocation(line: 985, column: 13, scope: !2839, inlinedAt: !2883)
!2888 = !DILocation(line: 984, column: 26, scope: !2839, inlinedAt: !2883)
!2889 = !DILocation(line: 152, column: 43, scope: !1506, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 986, column: 3, scope: !2839, inlinedAt: !2883)
!2891 = !DILocation(line: 152, column: 51, scope: !1506, inlinedAt: !2890)
!2892 = !DILocation(line: 152, column: 58, scope: !1506, inlinedAt: !2890)
!2893 = !DILocation(line: 154, column: 17, scope: !1506, inlinedAt: !2890)
!2894 = !DILocation(line: 156, column: 62, scope: !1506, inlinedAt: !2890)
!2895 = !DILocation(line: 156, column: 57, scope: !1506, inlinedAt: !2890)
!2896 = !DILocation(line: 155, column: 17, scope: !1506, inlinedAt: !2890)
!2897 = !DILocation(line: 157, column: 15, scope: !1506, inlinedAt: !2890)
!2898 = !DILocation(line: 157, column: 7, scope: !1506, inlinedAt: !2890)
!2899 = !DILocation(line: 158, column: 12, scope: !1506, inlinedAt: !2890)
!2900 = !DILocation(line: 158, column: 15, scope: !1506, inlinedAt: !2890)
!2901 = !DILocation(line: 158, column: 25, scope: !1506, inlinedAt: !2890)
!2902 = !DILocation(line: 158, column: 7, scope: !1506, inlinedAt: !2890)
!2903 = !DILocation(line: 159, column: 18, scope: !1506, inlinedAt: !2890)
!2904 = !DILocation(line: 159, column: 23, scope: !1506, inlinedAt: !2890)
!2905 = !DILocation(line: 159, column: 6, scope: !1506, inlinedAt: !2890)
!2906 = !DILocation(line: 987, column: 10, scope: !2839, inlinedAt: !2883)
!2907 = !DILocation(line: 988, column: 1, scope: !2839, inlinedAt: !2883)
!2908 = !DILocation(line: 993, column: 3, scope: !2874)
!2909 = distinct !DISubprogram(name: "quotearg_colon", scope: !133, file: !133, line: 997, type: !1194, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2910)
!2910 = !{!2911}
!2911 = !DILocalVariable(name: "arg", arg: 1, scope: !2909, file: !133, line: 997, type: !52)
!2912 = !DILocation(line: 997, column: 29, scope: !2909)
!2913 = !DILocation(line: 991, column: 28, scope: !2874, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 999, column: 10, scope: !2909)
!2915 = !DILocation(line: 991, column: 38, scope: !2874, inlinedAt: !2914)
!2916 = !DILocation(line: 982, column: 32, scope: !2839, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 993, column: 10, scope: !2874, inlinedAt: !2914)
!2918 = !DILocation(line: 982, column: 44, scope: !2839, inlinedAt: !2917)
!2919 = !DILocation(line: 982, column: 58, scope: !2839, inlinedAt: !2917)
!2920 = !DILocation(line: 984, column: 3, scope: !2839, inlinedAt: !2917)
!2921 = !DILocation(line: 985, column: 13, scope: !2839, inlinedAt: !2917)
!2922 = !DILocation(line: 984, column: 26, scope: !2839, inlinedAt: !2917)
!2923 = !DILocation(line: 152, column: 43, scope: !1506, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 986, column: 3, scope: !2839, inlinedAt: !2917)
!2925 = !DILocation(line: 152, column: 51, scope: !1506, inlinedAt: !2924)
!2926 = !DILocation(line: 152, column: 58, scope: !1506, inlinedAt: !2924)
!2927 = !DILocation(line: 154, column: 17, scope: !1506, inlinedAt: !2924)
!2928 = !DILocation(line: 156, column: 57, scope: !1506, inlinedAt: !2924)
!2929 = !DILocation(line: 155, column: 17, scope: !1506, inlinedAt: !2924)
!2930 = !DILocation(line: 157, column: 7, scope: !1506, inlinedAt: !2924)
!2931 = !DILocation(line: 158, column: 12, scope: !1506, inlinedAt: !2924)
!2932 = !DILocation(line: 159, column: 6, scope: !1506, inlinedAt: !2924)
!2933 = !DILocation(line: 987, column: 10, scope: !2839, inlinedAt: !2917)
!2934 = !DILocation(line: 988, column: 1, scope: !2839, inlinedAt: !2917)
!2935 = !DILocation(line: 999, column: 3, scope: !2909)
!2936 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !133, file: !133, line: 1003, type: !2704, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2937)
!2937 = !{!2938, !2939}
!2938 = !DILocalVariable(name: "arg", arg: 1, scope: !2936, file: !133, line: 1003, type: !52)
!2939 = !DILocalVariable(name: "argsize", arg: 2, scope: !2936, file: !133, line: 1003, type: !39)
!2940 = !DILocation(line: 1003, column: 33, scope: !2936)
!2941 = !DILocation(line: 1003, column: 45, scope: !2936)
!2942 = !DILocation(line: 982, column: 32, scope: !2839, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 1005, column: 10, scope: !2936)
!2944 = !DILocation(line: 982, column: 44, scope: !2839, inlinedAt: !2943)
!2945 = !DILocation(line: 982, column: 58, scope: !2839, inlinedAt: !2943)
!2946 = !DILocation(line: 984, column: 3, scope: !2839, inlinedAt: !2943)
!2947 = !DILocation(line: 985, column: 13, scope: !2839, inlinedAt: !2943)
!2948 = !DILocation(line: 984, column: 26, scope: !2839, inlinedAt: !2943)
!2949 = !DILocation(line: 152, column: 43, scope: !1506, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 986, column: 3, scope: !2839, inlinedAt: !2943)
!2951 = !DILocation(line: 152, column: 51, scope: !1506, inlinedAt: !2950)
!2952 = !DILocation(line: 152, column: 58, scope: !1506, inlinedAt: !2950)
!2953 = !DILocation(line: 154, column: 17, scope: !1506, inlinedAt: !2950)
!2954 = !DILocation(line: 156, column: 57, scope: !1506, inlinedAt: !2950)
!2955 = !DILocation(line: 155, column: 17, scope: !1506, inlinedAt: !2950)
!2956 = !DILocation(line: 157, column: 7, scope: !1506, inlinedAt: !2950)
!2957 = !DILocation(line: 158, column: 12, scope: !1506, inlinedAt: !2950)
!2958 = !DILocation(line: 159, column: 6, scope: !1506, inlinedAt: !2950)
!2959 = !DILocation(line: 987, column: 10, scope: !2839, inlinedAt: !2943)
!2960 = !DILocation(line: 988, column: 1, scope: !2839, inlinedAt: !2943)
!2961 = !DILocation(line: 1005, column: 3, scope: !2936)
!2962 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !133, file: !133, line: 1009, type: !2718, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2963)
!2963 = !{!2964, !2965, !2966, !2967}
!2964 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !133, line: 1009, type: !42)
!2965 = !DILocalVariable(name: "s", arg: 2, scope: !2962, file: !133, line: 1009, type: !94)
!2966 = !DILocalVariable(name: "arg", arg: 3, scope: !2962, file: !133, line: 1009, type: !52)
!2967 = !DILocalVariable(name: "options", scope: !2962, file: !133, line: 1011, type: !140)
!2968 = !DILocation(line: 195, column: 26, scope: !2731, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1012, column: 13, scope: !2962)
!2970 = !DILocation(line: 1009, column: 29, scope: !2962)
!2971 = !DILocation(line: 1009, column: 51, scope: !2962)
!2972 = !DILocation(line: 1009, column: 66, scope: !2962)
!2973 = !DILocation(line: 1011, column: 3, scope: !2962)
!2974 = !DILocation(line: 1012, column: 13, scope: !2962)
!2975 = !DILocation(line: 193, column: 48, scope: !2731, inlinedAt: !2969)
!2976 = !{!2977}
!2977 = distinct !{!2977, !2978, !"quoting_options_from_style: argument 0"}
!2978 = distinct !{!2978, !"quoting_options_from_style"}
!2979 = !DILocation(line: 196, column: 13, scope: !2743, inlinedAt: !2969)
!2980 = !DILocation(line: 196, column: 7, scope: !2731, inlinedAt: !2969)
!2981 = !DILocation(line: 197, column: 5, scope: !2743, inlinedAt: !2969)
!2982 = !DILocation(line: 1011, column: 26, scope: !2962)
!2983 = !DILocation(line: 152, column: 43, scope: !1506, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 1013, column: 3, scope: !2962)
!2985 = !DILocation(line: 152, column: 51, scope: !1506, inlinedAt: !2984)
!2986 = !DILocation(line: 152, column: 58, scope: !1506, inlinedAt: !2984)
!2987 = !DILocation(line: 154, column: 17, scope: !1506, inlinedAt: !2984)
!2988 = !DILocation(line: 156, column: 57, scope: !1506, inlinedAt: !2984)
!2989 = !DILocation(line: 155, column: 17, scope: !1506, inlinedAt: !2984)
!2990 = !DILocation(line: 157, column: 7, scope: !1506, inlinedAt: !2984)
!2991 = !DILocation(line: 158, column: 12, scope: !1506, inlinedAt: !2984)
!2992 = !DILocation(line: 159, column: 6, scope: !1506, inlinedAt: !2984)
!2993 = !DILocation(line: 1014, column: 10, scope: !2962)
!2994 = !DILocation(line: 1015, column: 1, scope: !2962)
!2995 = !DILocation(line: 1014, column: 3, scope: !2962)
!2996 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !133, file: !133, line: 1018, type: !2997, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!22, !42, !52, !52, !52}
!2999 = !{!3000, !3001, !3002, !3003}
!3000 = !DILocalVariable(name: "n", arg: 1, scope: !2996, file: !133, line: 1018, type: !42)
!3001 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2996, file: !133, line: 1018, type: !52)
!3002 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2996, file: !133, line: 1019, type: !52)
!3003 = !DILocalVariable(name: "arg", arg: 4, scope: !2996, file: !133, line: 1019, type: !52)
!3004 = !DILocation(line: 1018, column: 24, scope: !2996)
!3005 = !DILocation(line: 1018, column: 39, scope: !2996)
!3006 = !DILocation(line: 1019, column: 32, scope: !2996)
!3007 = !DILocation(line: 1019, column: 57, scope: !2996)
!3008 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !133, line: 1026, type: !42)
!3009 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !133, file: !133, line: 1026, type: !3010, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!22, !42, !52, !52, !52, !39}
!3012 = !{!3008, !3013, !3014, !3015, !3016, !3017}
!3013 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3009, file: !133, line: 1026, type: !52)
!3014 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3009, file: !133, line: 1027, type: !52)
!3015 = !DILocalVariable(name: "arg", arg: 4, scope: !3009, file: !133, line: 1028, type: !52)
!3016 = !DILocalVariable(name: "argsize", arg: 5, scope: !3009, file: !133, line: 1028, type: !39)
!3017 = !DILocalVariable(name: "o", scope: !3009, file: !133, line: 1030, type: !140)
!3018 = !DILocation(line: 1026, column: 28, scope: !3009, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 1021, column: 10, scope: !2996)
!3020 = !DILocation(line: 1026, column: 43, scope: !3009, inlinedAt: !3019)
!3021 = !DILocation(line: 1027, column: 36, scope: !3009, inlinedAt: !3019)
!3022 = !DILocation(line: 1028, column: 36, scope: !3009, inlinedAt: !3019)
!3023 = !DILocation(line: 1028, column: 48, scope: !3009, inlinedAt: !3019)
!3024 = !DILocation(line: 1030, column: 3, scope: !3009, inlinedAt: !3019)
!3025 = !DILocation(line: 1030, column: 30, scope: !3009, inlinedAt: !3019)
!3026 = !DILocation(line: 1030, column: 26, scope: !3009, inlinedAt: !3019)
!3027 = !DILocation(line: 179, column: 45, scope: !1555, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 1031, column: 3, scope: !3009, inlinedAt: !3019)
!3029 = !DILocation(line: 180, column: 33, scope: !1555, inlinedAt: !3028)
!3030 = !DILocation(line: 180, column: 57, scope: !1555, inlinedAt: !3028)
!3031 = !DILocation(line: 184, column: 6, scope: !1555, inlinedAt: !3028)
!3032 = !DILocation(line: 184, column: 12, scope: !1555, inlinedAt: !3028)
!3033 = !DILocation(line: 185, column: 8, scope: !1571, inlinedAt: !3028)
!3034 = !DILocation(line: 185, column: 23, scope: !1571, inlinedAt: !3028)
!3035 = !DILocation(line: 185, column: 19, scope: !1571, inlinedAt: !3028)
!3036 = !DILocation(line: 186, column: 5, scope: !1571, inlinedAt: !3028)
!3037 = !DILocation(line: 187, column: 6, scope: !1555, inlinedAt: !3028)
!3038 = !DILocation(line: 187, column: 17, scope: !1555, inlinedAt: !3028)
!3039 = !DILocation(line: 188, column: 6, scope: !1555, inlinedAt: !3028)
!3040 = !DILocation(line: 188, column: 18, scope: !1555, inlinedAt: !3028)
!3041 = !DILocation(line: 1032, column: 10, scope: !3009, inlinedAt: !3019)
!3042 = !DILocation(line: 1033, column: 1, scope: !3009, inlinedAt: !3019)
!3043 = !DILocation(line: 1021, column: 3, scope: !2996)
!3044 = !DILocation(line: 1026, column: 28, scope: !3009)
!3045 = !DILocation(line: 1026, column: 43, scope: !3009)
!3046 = !DILocation(line: 1027, column: 36, scope: !3009)
!3047 = !DILocation(line: 1028, column: 36, scope: !3009)
!3048 = !DILocation(line: 1028, column: 48, scope: !3009)
!3049 = !DILocation(line: 1030, column: 3, scope: !3009)
!3050 = !DILocation(line: 1030, column: 30, scope: !3009)
!3051 = !DILocation(line: 1030, column: 26, scope: !3009)
!3052 = !DILocation(line: 179, column: 45, scope: !1555, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 1031, column: 3, scope: !3009)
!3054 = !DILocation(line: 180, column: 33, scope: !1555, inlinedAt: !3053)
!3055 = !DILocation(line: 180, column: 57, scope: !1555, inlinedAt: !3053)
!3056 = !DILocation(line: 184, column: 6, scope: !1555, inlinedAt: !3053)
!3057 = !DILocation(line: 184, column: 12, scope: !1555, inlinedAt: !3053)
!3058 = !DILocation(line: 185, column: 8, scope: !1571, inlinedAt: !3053)
!3059 = !DILocation(line: 185, column: 23, scope: !1571, inlinedAt: !3053)
!3060 = !DILocation(line: 185, column: 19, scope: !1571, inlinedAt: !3053)
!3061 = !DILocation(line: 186, column: 5, scope: !1571, inlinedAt: !3053)
!3062 = !DILocation(line: 187, column: 6, scope: !1555, inlinedAt: !3053)
!3063 = !DILocation(line: 187, column: 17, scope: !1555, inlinedAt: !3053)
!3064 = !DILocation(line: 188, column: 6, scope: !1555, inlinedAt: !3053)
!3065 = !DILocation(line: 188, column: 18, scope: !1555, inlinedAt: !3053)
!3066 = !DILocation(line: 1032, column: 10, scope: !3009)
!3067 = !DILocation(line: 1033, column: 1, scope: !3009)
!3068 = !DILocation(line: 1032, column: 3, scope: !3009)
!3069 = distinct !DISubprogram(name: "quotearg_custom", scope: !133, file: !133, line: 1036, type: !3070, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!22, !52, !52, !52}
!3072 = !{!3073, !3074, !3075}
!3073 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3069, file: !133, line: 1036, type: !52)
!3074 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3069, file: !133, line: 1036, type: !52)
!3075 = !DILocalVariable(name: "arg", arg: 3, scope: !3069, file: !133, line: 1037, type: !52)
!3076 = !DILocation(line: 1036, column: 30, scope: !3069)
!3077 = !DILocation(line: 1036, column: 54, scope: !3069)
!3078 = !DILocation(line: 1037, column: 30, scope: !3069)
!3079 = !DILocation(line: 1018, column: 24, scope: !2996, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 1039, column: 10, scope: !3069)
!3081 = !DILocation(line: 1018, column: 39, scope: !2996, inlinedAt: !3080)
!3082 = !DILocation(line: 1019, column: 32, scope: !2996, inlinedAt: !3080)
!3083 = !DILocation(line: 1019, column: 57, scope: !2996, inlinedAt: !3080)
!3084 = !DILocation(line: 1026, column: 28, scope: !3009, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 1021, column: 10, scope: !2996, inlinedAt: !3080)
!3086 = !DILocation(line: 1026, column: 43, scope: !3009, inlinedAt: !3085)
!3087 = !DILocation(line: 1027, column: 36, scope: !3009, inlinedAt: !3085)
!3088 = !DILocation(line: 1028, column: 36, scope: !3009, inlinedAt: !3085)
!3089 = !DILocation(line: 1028, column: 48, scope: !3009, inlinedAt: !3085)
!3090 = !DILocation(line: 1030, column: 3, scope: !3009, inlinedAt: !3085)
!3091 = !DILocation(line: 1030, column: 30, scope: !3009, inlinedAt: !3085)
!3092 = !DILocation(line: 1030, column: 26, scope: !3009, inlinedAt: !3085)
!3093 = !DILocation(line: 179, column: 45, scope: !1555, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 1031, column: 3, scope: !3009, inlinedAt: !3085)
!3095 = !DILocation(line: 180, column: 33, scope: !1555, inlinedAt: !3094)
!3096 = !DILocation(line: 180, column: 57, scope: !1555, inlinedAt: !3094)
!3097 = !DILocation(line: 184, column: 6, scope: !1555, inlinedAt: !3094)
!3098 = !DILocation(line: 184, column: 12, scope: !1555, inlinedAt: !3094)
!3099 = !DILocation(line: 185, column: 8, scope: !1571, inlinedAt: !3094)
!3100 = !DILocation(line: 185, column: 23, scope: !1571, inlinedAt: !3094)
!3101 = !DILocation(line: 185, column: 19, scope: !1571, inlinedAt: !3094)
!3102 = !DILocation(line: 186, column: 5, scope: !1571, inlinedAt: !3094)
!3103 = !DILocation(line: 187, column: 6, scope: !1555, inlinedAt: !3094)
!3104 = !DILocation(line: 187, column: 17, scope: !1555, inlinedAt: !3094)
!3105 = !DILocation(line: 188, column: 6, scope: !1555, inlinedAt: !3094)
!3106 = !DILocation(line: 188, column: 18, scope: !1555, inlinedAt: !3094)
!3107 = !DILocation(line: 1032, column: 10, scope: !3009, inlinedAt: !3085)
!3108 = !DILocation(line: 1033, column: 1, scope: !3009, inlinedAt: !3085)
!3109 = !DILocation(line: 1039, column: 3, scope: !3069)
!3110 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !133, file: !133, line: 1043, type: !3111, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!22, !52, !52, !52, !39}
!3113 = !{!3114, !3115, !3116, !3117}
!3114 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3110, file: !133, line: 1043, type: !52)
!3115 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3110, file: !133, line: 1043, type: !52)
!3116 = !DILocalVariable(name: "arg", arg: 3, scope: !3110, file: !133, line: 1044, type: !52)
!3117 = !DILocalVariable(name: "argsize", arg: 4, scope: !3110, file: !133, line: 1044, type: !39)
!3118 = !DILocation(line: 1043, column: 34, scope: !3110)
!3119 = !DILocation(line: 1043, column: 58, scope: !3110)
!3120 = !DILocation(line: 1044, column: 34, scope: !3110)
!3121 = !DILocation(line: 1044, column: 46, scope: !3110)
!3122 = !DILocation(line: 1026, column: 28, scope: !3009, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 1046, column: 10, scope: !3110)
!3124 = !DILocation(line: 1026, column: 43, scope: !3009, inlinedAt: !3123)
!3125 = !DILocation(line: 1027, column: 36, scope: !3009, inlinedAt: !3123)
!3126 = !DILocation(line: 1028, column: 36, scope: !3009, inlinedAt: !3123)
!3127 = !DILocation(line: 1028, column: 48, scope: !3009, inlinedAt: !3123)
!3128 = !DILocation(line: 1030, column: 3, scope: !3009, inlinedAt: !3123)
!3129 = !DILocation(line: 1030, column: 30, scope: !3009, inlinedAt: !3123)
!3130 = !DILocation(line: 1030, column: 26, scope: !3009, inlinedAt: !3123)
!3131 = !DILocation(line: 179, column: 45, scope: !1555, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1031, column: 3, scope: !3009, inlinedAt: !3123)
!3133 = !DILocation(line: 180, column: 33, scope: !1555, inlinedAt: !3132)
!3134 = !DILocation(line: 180, column: 57, scope: !1555, inlinedAt: !3132)
!3135 = !DILocation(line: 184, column: 6, scope: !1555, inlinedAt: !3132)
!3136 = !DILocation(line: 184, column: 12, scope: !1555, inlinedAt: !3132)
!3137 = !DILocation(line: 185, column: 8, scope: !1571, inlinedAt: !3132)
!3138 = !DILocation(line: 185, column: 23, scope: !1571, inlinedAt: !3132)
!3139 = !DILocation(line: 185, column: 19, scope: !1571, inlinedAt: !3132)
!3140 = !DILocation(line: 186, column: 5, scope: !1571, inlinedAt: !3132)
!3141 = !DILocation(line: 187, column: 6, scope: !1555, inlinedAt: !3132)
!3142 = !DILocation(line: 187, column: 17, scope: !1555, inlinedAt: !3132)
!3143 = !DILocation(line: 188, column: 6, scope: !1555, inlinedAt: !3132)
!3144 = !DILocation(line: 188, column: 18, scope: !1555, inlinedAt: !3132)
!3145 = !DILocation(line: 1032, column: 10, scope: !3009, inlinedAt: !3123)
!3146 = !DILocation(line: 1033, column: 1, scope: !3009, inlinedAt: !3123)
!3147 = !DILocation(line: 1046, column: 3, scope: !3110)
!3148 = distinct !DISubprogram(name: "quote_n_mem", scope: !133, file: !133, line: 1061, type: !3149, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!52, !42, !52, !39}
!3151 = !{!3152, !3153, !3154}
!3152 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !133, line: 1061, type: !42)
!3153 = !DILocalVariable(name: "arg", arg: 2, scope: !3148, file: !133, line: 1061, type: !52)
!3154 = !DILocalVariable(name: "argsize", arg: 3, scope: !3148, file: !133, line: 1061, type: !39)
!3155 = !DILocation(line: 1061, column: 18, scope: !3148)
!3156 = !DILocation(line: 1061, column: 33, scope: !3148)
!3157 = !DILocation(line: 1061, column: 45, scope: !3148)
!3158 = !DILocation(line: 1063, column: 10, scope: !3148)
!3159 = !DILocation(line: 1063, column: 3, scope: !3148)
!3160 = distinct !DISubprogram(name: "quote_mem", scope: !133, file: !133, line: 1067, type: !3161, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!52, !52, !39}
!3163 = !{!3164, !3165}
!3164 = !DILocalVariable(name: "arg", arg: 1, scope: !3160, file: !133, line: 1067, type: !52)
!3165 = !DILocalVariable(name: "argsize", arg: 2, scope: !3160, file: !133, line: 1067, type: !39)
!3166 = !DILocation(line: 1067, column: 24, scope: !3160)
!3167 = !DILocation(line: 1067, column: 36, scope: !3160)
!3168 = !DILocation(line: 1061, column: 18, scope: !3148, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 1069, column: 10, scope: !3160)
!3170 = !DILocation(line: 1061, column: 33, scope: !3148, inlinedAt: !3169)
!3171 = !DILocation(line: 1061, column: 45, scope: !3148, inlinedAt: !3169)
!3172 = !DILocation(line: 1063, column: 10, scope: !3148, inlinedAt: !3169)
!3173 = !DILocation(line: 1069, column: 3, scope: !3160)
!3174 = distinct !DISubprogram(name: "quote_n", scope: !133, file: !133, line: 1073, type: !3175, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!52, !42, !52}
!3177 = !{!3178, !3179}
!3178 = !DILocalVariable(name: "n", arg: 1, scope: !3174, file: !133, line: 1073, type: !42)
!3179 = !DILocalVariable(name: "arg", arg: 2, scope: !3174, file: !133, line: 1073, type: !52)
!3180 = !DILocation(line: 1073, column: 14, scope: !3174)
!3181 = !DILocation(line: 1073, column: 29, scope: !3174)
!3182 = !DILocation(line: 1061, column: 18, scope: !3148, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1075, column: 10, scope: !3174)
!3184 = !DILocation(line: 1061, column: 33, scope: !3148, inlinedAt: !3183)
!3185 = !DILocation(line: 1061, column: 45, scope: !3148, inlinedAt: !3183)
!3186 = !DILocation(line: 1063, column: 10, scope: !3148, inlinedAt: !3183)
!3187 = !DILocation(line: 1075, column: 3, scope: !3174)
!3188 = distinct !DISubprogram(name: "quote", scope: !133, file: !133, line: 1079, type: !3189, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!52, !52}
!3191 = !{!3192}
!3192 = !DILocalVariable(name: "arg", arg: 1, scope: !3188, file: !133, line: 1079, type: !52)
!3193 = !DILocation(line: 1079, column: 20, scope: !3188)
!3194 = !DILocation(line: 1073, column: 14, scope: !3174, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 1081, column: 10, scope: !3188)
!3196 = !DILocation(line: 1073, column: 29, scope: !3174, inlinedAt: !3195)
!3197 = !DILocation(line: 1061, column: 18, scope: !3148, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 1075, column: 10, scope: !3174, inlinedAt: !3195)
!3199 = !DILocation(line: 1061, column: 33, scope: !3148, inlinedAt: !3198)
!3200 = !DILocation(line: 1061, column: 45, scope: !3148, inlinedAt: !3198)
!3201 = !DILocation(line: 1063, column: 10, scope: !3148, inlinedAt: !3198)
!3202 = !DILocation(line: 1081, column: 3, scope: !3188)
!3203 = distinct !DISubprogram(name: "version_etc_arn", scope: !223, file: !223, line: 62, type: !3204, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !3258)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !3206, !52, !52, !52, !770, !39}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3208, line: 7, baseType: !3209)
!3208 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3210, line: 49, size: 1728, elements: !3211)
!3210 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3227, !3229, !3230, !3231, !3232, !3233, !3235, !3239, !3242, !3244, !3247, !3250, !3251, !3252, !3253, !3254}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3209, file: !3210, line: 51, baseType: !42, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3209, file: !3210, line: 54, baseType: !22, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3209, file: !3210, line: 55, baseType: !22, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3209, file: !3210, line: 56, baseType: !22, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3209, file: !3210, line: 57, baseType: !22, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3209, file: !3210, line: 58, baseType: !22, size: 64, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3209, file: !3210, line: 59, baseType: !22, size: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3209, file: !3210, line: 60, baseType: !22, size: 64, offset: 448)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3209, file: !3210, line: 61, baseType: !22, size: 64, offset: 512)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3209, file: !3210, line: 64, baseType: !22, size: 64, offset: 576)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3209, file: !3210, line: 65, baseType: !22, size: 64, offset: 640)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3209, file: !3210, line: 66, baseType: !22, size: 64, offset: 704)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3209, file: !3210, line: 68, baseType: !3225, size: 64, offset: 768)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3210, line: 36, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3209, file: !3210, line: 70, baseType: !3228, size: 64, offset: 832)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3209, file: !3210, line: 72, baseType: !42, size: 32, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3209, file: !3210, line: 73, baseType: !42, size: 32, offset: 928)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3209, file: !3210, line: 74, baseType: !792, size: 64, offset: 960)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3209, file: !3210, line: 77, baseType: !129, size: 16, offset: 1024)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3209, file: !3210, line: 78, baseType: !3234, size: 8, offset: 1040)
!3234 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3209, file: !3210, line: 79, baseType: !3236, size: 8, offset: 1048)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !3237)
!3237 = !{!3238}
!3238 = !DISubrange(count: 1)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3209, file: !3210, line: 81, baseType: !3240, size: 64, offset: 1088)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3210, line: 43, baseType: null)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3209, file: !3210, line: 89, baseType: !3243, size: 64, offset: 1152)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !28, line: 151, baseType: !793)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3209, file: !3210, line: 91, baseType: !3245, size: 64, offset: 1216)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3210, line: 37, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3209, file: !3210, line: 92, baseType: !3248, size: 64, offset: 1280)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3210, line: 38, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3209, file: !3210, line: 93, baseType: !3228, size: 64, offset: 1344)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3209, file: !3210, line: 94, baseType: !24, size: 64, offset: 1408)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3209, file: !3210, line: 95, baseType: !39, size: 64, offset: 1472)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3209, file: !3210, line: 96, baseType: !42, size: 32, offset: 1536)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3209, file: !3210, line: 98, baseType: !3255, size: 160, offset: 1568)
!3255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !3256)
!3256 = !{!3257}
!3257 = !DISubrange(count: 20)
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3264}
!3259 = !DILocalVariable(name: "stream", arg: 1, scope: !3203, file: !223, line: 62, type: !3206)
!3260 = !DILocalVariable(name: "command_name", arg: 2, scope: !3203, file: !223, line: 63, type: !52)
!3261 = !DILocalVariable(name: "package", arg: 3, scope: !3203, file: !223, line: 63, type: !52)
!3262 = !DILocalVariable(name: "version", arg: 4, scope: !3203, file: !223, line: 64, type: !52)
!3263 = !DILocalVariable(name: "authors", arg: 5, scope: !3203, file: !223, line: 65, type: !770)
!3264 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3203, file: !223, line: 65, type: !39)
!3265 = !DILocation(line: 62, column: 24, scope: !3203)
!3266 = !DILocation(line: 63, column: 30, scope: !3203)
!3267 = !DILocation(line: 63, column: 56, scope: !3203)
!3268 = !DILocation(line: 64, column: 30, scope: !3203)
!3269 = !DILocation(line: 65, column: 39, scope: !3203)
!3270 = !DILocation(line: 65, column: 55, scope: !3203)
!3271 = !DILocation(line: 67, column: 7, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3203, file: !223, line: 67, column: 7)
!3273 = !DILocation(line: 67, column: 7, scope: !3203)
!3274 = !DILocation(line: 68, column: 5, scope: !3272)
!3275 = !DILocation(line: 70, column: 5, scope: !3272)
!3276 = !DILocation(line: 84, column: 3, scope: !3203)
!3277 = !DILocation(line: 86, column: 3, scope: !3203)
!3278 = !DILocation(line: 95, column: 3, scope: !3203)
!3279 = !DILocation(line: 99, column: 7, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3203, file: !223, line: 96, column: 5)
!3281 = !DILocation(line: 102, column: 7, scope: !3280)
!3282 = !DILocation(line: 103, column: 7, scope: !3280)
!3283 = !DILocation(line: 106, column: 7, scope: !3280)
!3284 = !DILocation(line: 107, column: 7, scope: !3280)
!3285 = !DILocation(line: 110, column: 7, scope: !3280)
!3286 = !DILocation(line: 112, column: 7, scope: !3280)
!3287 = !DILocation(line: 117, column: 7, scope: !3280)
!3288 = !DILocation(line: 119, column: 7, scope: !3280)
!3289 = !DILocation(line: 124, column: 7, scope: !3280)
!3290 = !DILocation(line: 126, column: 7, scope: !3280)
!3291 = !DILocation(line: 131, column: 7, scope: !3280)
!3292 = !DILocation(line: 134, column: 7, scope: !3280)
!3293 = !DILocation(line: 139, column: 7, scope: !3280)
!3294 = !DILocation(line: 142, column: 7, scope: !3280)
!3295 = !DILocation(line: 147, column: 7, scope: !3280)
!3296 = !DILocation(line: 151, column: 7, scope: !3280)
!3297 = !DILocation(line: 156, column: 7, scope: !3280)
!3298 = !DILocation(line: 160, column: 7, scope: !3280)
!3299 = !DILocation(line: 167, column: 7, scope: !3280)
!3300 = !DILocation(line: 171, column: 7, scope: !3280)
!3301 = !DILocation(line: 173, column: 1, scope: !3203)
!3302 = distinct !DISubprogram(name: "version_etc_ar", scope: !223, file: !223, line: 180, type: !3303, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{null, !3206, !52, !52, !52, !770}
!3305 = !{!3306, !3307, !3308, !3309, !3310, !3311}
!3306 = !DILocalVariable(name: "stream", arg: 1, scope: !3302, file: !223, line: 180, type: !3206)
!3307 = !DILocalVariable(name: "command_name", arg: 2, scope: !3302, file: !223, line: 181, type: !52)
!3308 = !DILocalVariable(name: "package", arg: 3, scope: !3302, file: !223, line: 181, type: !52)
!3309 = !DILocalVariable(name: "version", arg: 4, scope: !3302, file: !223, line: 182, type: !52)
!3310 = !DILocalVariable(name: "authors", arg: 5, scope: !3302, file: !223, line: 182, type: !770)
!3311 = !DILocalVariable(name: "n_authors", scope: !3302, file: !223, line: 184, type: !39)
!3312 = !DILocation(line: 180, column: 23, scope: !3302)
!3313 = !DILocation(line: 181, column: 29, scope: !3302)
!3314 = !DILocation(line: 181, column: 55, scope: !3302)
!3315 = !DILocation(line: 182, column: 29, scope: !3302)
!3316 = !DILocation(line: 182, column: 59, scope: !3302)
!3317 = !DILocation(line: 184, column: 10, scope: !3302)
!3318 = !DILocation(line: 186, column: 8, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3302, file: !223, line: 186, column: 3)
!3320 = !DILocation(line: 0, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3319, file: !223, line: 186, column: 3)
!3322 = !DILocation(line: 186, column: 23, scope: !3321)
!3323 = !DILocation(line: 186, column: 3, scope: !3319)
!3324 = !DILocation(line: 186, column: 52, scope: !3321)
!3325 = distinct !{!3325, !3323, !3326}
!3326 = !DILocation(line: 187, column: 5, scope: !3319)
!3327 = !DILocation(line: 188, column: 3, scope: !3302)
!3328 = !DILocation(line: 189, column: 1, scope: !3302)
!3329 = distinct !DISubprogram(name: "version_etc_va", scope: !223, file: !223, line: 196, type: !3330, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !3339)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3206, !52, !52, !52, !3332}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !220, line: 189, size: 192, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3333, file: !220, line: 189, baseType: !7, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3333, file: !220, line: 189, baseType: !7, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3333, file: !220, line: 189, baseType: !24, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3333, file: !220, line: 189, baseType: !24, size: 64, offset: 128)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346}
!3340 = !DILocalVariable(name: "stream", arg: 1, scope: !3329, file: !223, line: 196, type: !3206)
!3341 = !DILocalVariable(name: "command_name", arg: 2, scope: !3329, file: !223, line: 197, type: !52)
!3342 = !DILocalVariable(name: "package", arg: 3, scope: !3329, file: !223, line: 197, type: !52)
!3343 = !DILocalVariable(name: "version", arg: 4, scope: !3329, file: !223, line: 198, type: !52)
!3344 = !DILocalVariable(name: "authors", arg: 5, scope: !3329, file: !223, line: 198, type: !3332)
!3345 = !DILocalVariable(name: "n_authors", scope: !3329, file: !223, line: 200, type: !39)
!3346 = !DILocalVariable(name: "authtab", scope: !3329, file: !223, line: 201, type: !3347)
!3347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 640, elements: !136)
!3348 = !DILocation(line: 196, column: 23, scope: !3329)
!3349 = !DILocation(line: 197, column: 29, scope: !3329)
!3350 = !DILocation(line: 197, column: 55, scope: !3329)
!3351 = !DILocation(line: 198, column: 29, scope: !3329)
!3352 = !DILocation(line: 198, column: 46, scope: !3329)
!3353 = !DILocation(line: 201, column: 3, scope: !3329)
!3354 = !DILocation(line: 201, column: 15, scope: !3329)
!3355 = !DILocation(line: 200, column: 10, scope: !3329)
!3356 = !DILocation(line: 205, column: 35, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !223, line: 203, column: 3)
!3358 = distinct !DILexicalBlock(scope: !3329, file: !223, line: 203, column: 3)
!3359 = !DILocation(line: 205, column: 14, scope: !3357)
!3360 = !DILocation(line: 205, column: 33, scope: !3357)
!3361 = !DILocation(line: 205, column: 67, scope: !3357)
!3362 = !DILocation(line: 203, column: 3, scope: !3358)
!3363 = !DILocation(line: 0, scope: !3357)
!3364 = !DILocation(line: 208, column: 3, scope: !3329)
!3365 = !DILocation(line: 210, column: 1, scope: !3329)
!3366 = distinct !DISubprogram(name: "version_etc", scope: !223, file: !223, line: 227, type: !3367, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{null, !3206, !52, !52, !52, null}
!3369 = !{!3370, !3371, !3372, !3373, !3374}
!3370 = !DILocalVariable(name: "stream", arg: 1, scope: !3366, file: !223, line: 227, type: !3206)
!3371 = !DILocalVariable(name: "command_name", arg: 2, scope: !3366, file: !223, line: 228, type: !52)
!3372 = !DILocalVariable(name: "package", arg: 3, scope: !3366, file: !223, line: 228, type: !52)
!3373 = !DILocalVariable(name: "version", arg: 4, scope: !3366, file: !223, line: 229, type: !52)
!3374 = !DILocalVariable(name: "authors", scope: !3366, file: !223, line: 231, type: !3375)
!3375 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3376, line: 52, baseType: !3377)
!3376 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3378, line: 48, baseType: !3379)
!3378 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !220, line: 231, baseType: !3380)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3333, size: 192, elements: !3237)
!3381 = !DILocation(line: 227, column: 20, scope: !3366)
!3382 = !DILocation(line: 228, column: 26, scope: !3366)
!3383 = !DILocation(line: 228, column: 52, scope: !3366)
!3384 = !DILocation(line: 229, column: 26, scope: !3366)
!3385 = !DILocation(line: 231, column: 3, scope: !3366)
!3386 = !DILocation(line: 231, column: 11, scope: !3366)
!3387 = !DILocation(line: 233, column: 3, scope: !3366)
!3388 = !DILocation(line: 234, column: 3, scope: !3366)
!3389 = !DILocation(line: 235, column: 3, scope: !3366)
!3390 = !DILocation(line: 236, column: 1, scope: !3366)
!3391 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !223, file: !223, line: 239, type: !706, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !64)
!3392 = !DILocation(line: 245, column: 3, scope: !3391)
!3393 = !DILocation(line: 251, column: 3, scope: !3391)
!3394 = !DILocation(line: 256, column: 3, scope: !3391)
!3395 = !DILocation(line: 258, column: 1, scope: !3391)
!3396 = distinct !DISubprogram(name: "xnmalloc", scope: !230, file: !230, line: 99, type: !3397, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!24, !39, !39}
!3399 = !{!3400, !3401}
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3396, file: !230, line: 99, type: !39)
!3401 = !DILocalVariable(name: "s", arg: 2, scope: !3396, file: !230, line: 99, type: !39)
!3402 = !DILocation(line: 99, column: 18, scope: !3396)
!3403 = !DILocation(line: 99, column: 28, scope: !3396)
!3404 = !DILocation(line: 101, column: 7, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3396, file: !230, line: 101, column: 7)
!3406 = !DILocation(line: 101, column: 7, scope: !3396)
!3407 = !DILocation(line: 102, column: 5, scope: !3405)
!3408 = !DILocation(line: 103, column: 21, scope: !3396)
!3409 = !DILocalVariable(name: "n", arg: 1, scope: !3410, file: !3411, line: 39, type: !39)
!3410 = distinct !DISubprogram(name: "xmalloc", scope: !3411, file: !3411, line: 39, type: !193, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3412)
!3411 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3412 = !{!3409, !3413}
!3413 = !DILocalVariable(name: "p", scope: !3410, file: !3411, line: 41, type: !24)
!3414 = !DILocation(line: 39, column: 17, scope: !3410, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 103, column: 10, scope: !3396)
!3416 = !DILocation(line: 41, column: 13, scope: !3410, inlinedAt: !3415)
!3417 = !DILocation(line: 41, column: 9, scope: !3410, inlinedAt: !3415)
!3418 = !DILocation(line: 42, column: 8, scope: !3419, inlinedAt: !3415)
!3419 = distinct !DILexicalBlock(scope: !3410, file: !3411, line: 42, column: 7)
!3420 = !DILocation(line: 42, column: 15, scope: !3419, inlinedAt: !3415)
!3421 = !DILocation(line: 42, column: 10, scope: !3419, inlinedAt: !3415)
!3422 = !DILocation(line: 43, column: 5, scope: !3419, inlinedAt: !3415)
!3423 = !DILocation(line: 103, column: 3, scope: !3396)
!3424 = !DILocation(line: 39, column: 17, scope: !3410)
!3425 = !DILocation(line: 41, column: 13, scope: !3410)
!3426 = !DILocation(line: 41, column: 9, scope: !3410)
!3427 = !DILocation(line: 42, column: 8, scope: !3419)
!3428 = !DILocation(line: 42, column: 15, scope: !3419)
!3429 = !DILocation(line: 42, column: 10, scope: !3419)
!3430 = !DILocation(line: 43, column: 5, scope: !3419)
!3431 = !DILocation(line: 44, column: 3, scope: !3410)
!3432 = distinct !DISubprogram(name: "xnrealloc", scope: !230, file: !230, line: 112, type: !3433, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!24, !24, !39, !39}
!3435 = !{!3436, !3437, !3438}
!3436 = !DILocalVariable(name: "p", arg: 1, scope: !3432, file: !230, line: 112, type: !24)
!3437 = !DILocalVariable(name: "n", arg: 2, scope: !3432, file: !230, line: 112, type: !39)
!3438 = !DILocalVariable(name: "s", arg: 3, scope: !3432, file: !230, line: 112, type: !39)
!3439 = !DILocation(line: 112, column: 18, scope: !3432)
!3440 = !DILocation(line: 112, column: 28, scope: !3432)
!3441 = !DILocation(line: 112, column: 38, scope: !3432)
!3442 = !DILocation(line: 114, column: 7, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3432, file: !230, line: 114, column: 7)
!3444 = !DILocation(line: 114, column: 7, scope: !3432)
!3445 = !DILocation(line: 115, column: 5, scope: !3443)
!3446 = !DILocation(line: 116, column: 25, scope: !3432)
!3447 = !DILocalVariable(name: "p", arg: 1, scope: !3448, file: !3411, line: 51, type: !24)
!3448 = distinct !DISubprogram(name: "xrealloc", scope: !3411, file: !3411, line: 51, type: !197, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3449)
!3449 = !{!3447, !3450}
!3450 = !DILocalVariable(name: "n", arg: 2, scope: !3448, file: !3411, line: 51, type: !39)
!3451 = !DILocation(line: 51, column: 17, scope: !3448, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 116, column: 10, scope: !3432)
!3453 = !DILocation(line: 51, column: 27, scope: !3448, inlinedAt: !3452)
!3454 = !DILocation(line: 53, column: 8, scope: !3455, inlinedAt: !3452)
!3455 = distinct !DILexicalBlock(scope: !3448, file: !3411, line: 53, column: 7)
!3456 = !DILocation(line: 53, column: 13, scope: !3455, inlinedAt: !3452)
!3457 = !DILocation(line: 53, column: 10, scope: !3455, inlinedAt: !3452)
!3458 = !DILocation(line: 57, column: 7, scope: !3459, inlinedAt: !3452)
!3459 = distinct !DILexicalBlock(scope: !3455, file: !3411, line: 54, column: 5)
!3460 = !DILocation(line: 58, column: 7, scope: !3459, inlinedAt: !3452)
!3461 = !DILocation(line: 61, column: 7, scope: !3448, inlinedAt: !3452)
!3462 = !DILocation(line: 62, column: 8, scope: !3463, inlinedAt: !3452)
!3463 = distinct !DILexicalBlock(scope: !3448, file: !3411, line: 62, column: 7)
!3464 = !DILocation(line: 62, column: 13, scope: !3463, inlinedAt: !3452)
!3465 = !DILocation(line: 62, column: 10, scope: !3463, inlinedAt: !3452)
!3466 = !DILocation(line: 63, column: 5, scope: !3463, inlinedAt: !3452)
!3467 = !DILocation(line: 0, scope: !3448, inlinedAt: !3452)
!3468 = !DILocation(line: 116, column: 3, scope: !3432)
!3469 = !DILocation(line: 51, column: 17, scope: !3448)
!3470 = !DILocation(line: 51, column: 27, scope: !3448)
!3471 = !DILocation(line: 53, column: 8, scope: !3455)
!3472 = !DILocation(line: 53, column: 13, scope: !3455)
!3473 = !DILocation(line: 53, column: 10, scope: !3455)
!3474 = !DILocation(line: 57, column: 7, scope: !3459)
!3475 = !DILocation(line: 58, column: 7, scope: !3459)
!3476 = !DILocation(line: 61, column: 7, scope: !3448)
!3477 = !DILocation(line: 62, column: 8, scope: !3463)
!3478 = !DILocation(line: 62, column: 13, scope: !3463)
!3479 = !DILocation(line: 62, column: 10, scope: !3463)
!3480 = !DILocation(line: 63, column: 5, scope: !3463)
!3481 = !DILocation(line: 0, scope: !3448)
!3482 = !DILocation(line: 65, column: 1, scope: !3448)
!3483 = !DILocation(line: 174, column: 19, scope: !231)
!3484 = !DILocation(line: 174, column: 30, scope: !231)
!3485 = !DILocation(line: 174, column: 41, scope: !231)
!3486 = !DILocation(line: 176, column: 14, scope: !231)
!3487 = !DILocation(line: 176, column: 10, scope: !231)
!3488 = !DILocation(line: 178, column: 9, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !231, file: !230, line: 178, column: 7)
!3490 = !DILocation(line: 178, column: 7, scope: !231)
!3491 = !DILocation(line: 180, column: 13, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !230, line: 180, column: 11)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !230, line: 179, column: 5)
!3494 = !DILocation(line: 180, column: 11, scope: !3493)
!3495 = !DILocation(line: 188, column: 30, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !230, line: 181, column: 9)
!3497 = !DILocation(line: 189, column: 16, scope: !3496)
!3498 = !DILocation(line: 189, column: 13, scope: !3496)
!3499 = !DILocation(line: 190, column: 9, scope: !3496)
!3500 = !DILocation(line: 0, scope: !3496)
!3501 = !DILocation(line: 191, column: 11, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3493, file: !230, line: 191, column: 11)
!3503 = !DILocation(line: 191, column: 11, scope: !3493)
!3504 = !DILocation(line: 206, column: 7, scope: !231)
!3505 = !DILocation(line: 207, column: 25, scope: !231)
!3506 = !DILocation(line: 51, column: 17, scope: !3448, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 207, column: 10, scope: !231)
!3508 = !DILocation(line: 51, column: 27, scope: !3448, inlinedAt: !3507)
!3509 = !DILocation(line: 53, column: 10, scope: !3455, inlinedAt: !3507)
!3510 = !DILocation(line: 192, column: 9, scope: !3502)
!3511 = !DILocation(line: 200, column: 69, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !230, line: 200, column: 11)
!3513 = distinct !DILexicalBlock(scope: !3489, file: !230, line: 195, column: 5)
!3514 = !DILocation(line: 201, column: 11, scope: !3512)
!3515 = !DILocation(line: 200, column: 11, scope: !3513)
!3516 = !DILocation(line: 202, column: 9, scope: !3512)
!3517 = !DILocation(line: 203, column: 14, scope: !3513)
!3518 = !DILocation(line: 203, column: 18, scope: !3513)
!3519 = !DILocation(line: 203, column: 9, scope: !3513)
!3520 = !DILocation(line: 53, column: 8, scope: !3455, inlinedAt: !3507)
!3521 = !DILocation(line: 57, column: 7, scope: !3459, inlinedAt: !3507)
!3522 = !DILocation(line: 58, column: 7, scope: !3459, inlinedAt: !3507)
!3523 = !DILocation(line: 61, column: 7, scope: !3448, inlinedAt: !3507)
!3524 = !DILocation(line: 62, column: 8, scope: !3463, inlinedAt: !3507)
!3525 = !DILocation(line: 62, column: 13, scope: !3463, inlinedAt: !3507)
!3526 = !DILocation(line: 62, column: 10, scope: !3463, inlinedAt: !3507)
!3527 = !DILocation(line: 63, column: 5, scope: !3463, inlinedAt: !3507)
!3528 = !DILocation(line: 0, scope: !3448, inlinedAt: !3507)
!3529 = !DILocation(line: 207, column: 3, scope: !231)
!3530 = distinct !DISubprogram(name: "xcharalloc", scope: !230, file: !230, line: 216, type: !2491, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3531)
!3531 = !{!3532}
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3530, file: !230, line: 216, type: !39)
!3533 = !DILocation(line: 216, column: 20, scope: !3530)
!3534 = !DILocation(line: 39, column: 17, scope: !3410, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 218, column: 10, scope: !3530)
!3536 = !DILocation(line: 41, column: 13, scope: !3410, inlinedAt: !3535)
!3537 = !DILocation(line: 41, column: 9, scope: !3410, inlinedAt: !3535)
!3538 = !DILocation(line: 42, column: 8, scope: !3419, inlinedAt: !3535)
!3539 = !DILocation(line: 42, column: 15, scope: !3419, inlinedAt: !3535)
!3540 = !DILocation(line: 42, column: 10, scope: !3419, inlinedAt: !3535)
!3541 = !DILocation(line: 43, column: 5, scope: !3419, inlinedAt: !3535)
!3542 = !DILocation(line: 218, column: 3, scope: !3530)
!3543 = distinct !DISubprogram(name: "x2realloc", scope: !3411, file: !3411, line: 74, type: !3544, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!24, !24, !234}
!3546 = !{!3547, !3548}
!3547 = !DILocalVariable(name: "p", arg: 1, scope: !3543, file: !3411, line: 74, type: !24)
!3548 = !DILocalVariable(name: "pn", arg: 2, scope: !3543, file: !3411, line: 74, type: !234)
!3549 = !DILocation(line: 74, column: 18, scope: !3543)
!3550 = !DILocation(line: 74, column: 29, scope: !3543)
!3551 = !DILocation(line: 174, column: 19, scope: !231, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 76, column: 10, scope: !3543)
!3553 = !DILocation(line: 174, column: 30, scope: !231, inlinedAt: !3552)
!3554 = !DILocation(line: 174, column: 41, scope: !231, inlinedAt: !3552)
!3555 = !DILocation(line: 176, column: 14, scope: !231, inlinedAt: !3552)
!3556 = !DILocation(line: 176, column: 10, scope: !231, inlinedAt: !3552)
!3557 = !DILocation(line: 178, column: 9, scope: !3489, inlinedAt: !3552)
!3558 = !DILocation(line: 178, column: 7, scope: !231, inlinedAt: !3552)
!3559 = !DILocation(line: 180, column: 13, scope: !3492, inlinedAt: !3552)
!3560 = !DILocation(line: 180, column: 11, scope: !3493, inlinedAt: !3552)
!3561 = !DILocation(line: 191, column: 11, scope: !3502, inlinedAt: !3552)
!3562 = !DILocation(line: 191, column: 11, scope: !3493, inlinedAt: !3552)
!3563 = !DILocation(line: 206, column: 7, scope: !231, inlinedAt: !3552)
!3564 = !DILocation(line: 51, column: 17, scope: !3448, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 207, column: 10, scope: !231, inlinedAt: !3552)
!3566 = !DILocation(line: 51, column: 27, scope: !3448, inlinedAt: !3565)
!3567 = !DILocation(line: 53, column: 10, scope: !3455, inlinedAt: !3565)
!3568 = !DILocation(line: 192, column: 9, scope: !3502, inlinedAt: !3552)
!3569 = !DILocation(line: 201, column: 11, scope: !3512, inlinedAt: !3552)
!3570 = !DILocation(line: 200, column: 11, scope: !3513, inlinedAt: !3552)
!3571 = !DILocation(line: 202, column: 9, scope: !3512, inlinedAt: !3552)
!3572 = !DILocation(line: 203, column: 14, scope: !3513, inlinedAt: !3552)
!3573 = !DILocation(line: 203, column: 18, scope: !3513, inlinedAt: !3552)
!3574 = !DILocation(line: 203, column: 9, scope: !3513, inlinedAt: !3552)
!3575 = !DILocation(line: 53, column: 8, scope: !3455, inlinedAt: !3565)
!3576 = !DILocation(line: 57, column: 7, scope: !3459, inlinedAt: !3565)
!3577 = !DILocation(line: 58, column: 7, scope: !3459, inlinedAt: !3565)
!3578 = !DILocation(line: 61, column: 7, scope: !3448, inlinedAt: !3565)
!3579 = !DILocation(line: 62, column: 8, scope: !3463, inlinedAt: !3565)
!3580 = !DILocation(line: 62, column: 13, scope: !3463, inlinedAt: !3565)
!3581 = !DILocation(line: 62, column: 10, scope: !3463, inlinedAt: !3565)
!3582 = !DILocation(line: 63, column: 5, scope: !3463, inlinedAt: !3565)
!3583 = !DILocation(line: 0, scope: !3448, inlinedAt: !3565)
!3584 = !DILocation(line: 76, column: 3, scope: !3543)
!3585 = distinct !DISubprogram(name: "xzalloc", scope: !3411, file: !3411, line: 84, type: !193, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3586)
!3586 = !{!3587}
!3587 = !DILocalVariable(name: "s", arg: 1, scope: !3585, file: !3411, line: 84, type: !39)
!3588 = !DILocation(line: 84, column: 17, scope: !3585)
!3589 = !DILocation(line: 39, column: 17, scope: !3410, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 86, column: 18, scope: !3585)
!3591 = !DILocation(line: 41, column: 13, scope: !3410, inlinedAt: !3590)
!3592 = !DILocation(line: 41, column: 9, scope: !3410, inlinedAt: !3590)
!3593 = !DILocation(line: 42, column: 8, scope: !3419, inlinedAt: !3590)
!3594 = !DILocation(line: 42, column: 15, scope: !3419, inlinedAt: !3590)
!3595 = !DILocation(line: 42, column: 10, scope: !3419, inlinedAt: !3590)
!3596 = !DILocation(line: 43, column: 5, scope: !3419, inlinedAt: !3590)
!3597 = !DILocation(line: 86, column: 10, scope: !3585)
!3598 = !DILocation(line: 86, column: 3, scope: !3585)
!3599 = distinct !DISubprogram(name: "xcalloc", scope: !3411, file: !3411, line: 93, type: !3397, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3600)
!3600 = !{!3601, !3602, !3603}
!3601 = !DILocalVariable(name: "n", arg: 1, scope: !3599, file: !3411, line: 93, type: !39)
!3602 = !DILocalVariable(name: "s", arg: 2, scope: !3599, file: !3411, line: 93, type: !39)
!3603 = !DILocalVariable(name: "p", scope: !3599, file: !3411, line: 95, type: !24)
!3604 = !DILocation(line: 93, column: 17, scope: !3599)
!3605 = !DILocation(line: 93, column: 27, scope: !3599)
!3606 = !DILocation(line: 100, column: 7, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3599, file: !3411, line: 100, column: 7)
!3608 = !DILocation(line: 101, column: 7, scope: !3607)
!3609 = !DILocation(line: 101, column: 18, scope: !3607)
!3610 = !DILocation(line: 95, column: 9, scope: !3599)
!3611 = !DILocation(line: 101, column: 16, scope: !3607)
!3612 = !DILocation(line: 100, column: 7, scope: !3599)
!3613 = !DILocation(line: 102, column: 5, scope: !3607)
!3614 = !DILocation(line: 103, column: 3, scope: !3599)
!3615 = distinct !DISubprogram(name: "xmemdup", scope: !3411, file: !3411, line: 111, type: !3616, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3618)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!24, !1402, !39}
!3618 = !{!3619, !3620}
!3619 = !DILocalVariable(name: "p", arg: 1, scope: !3615, file: !3411, line: 111, type: !1402)
!3620 = !DILocalVariable(name: "s", arg: 2, scope: !3615, file: !3411, line: 111, type: !39)
!3621 = !DILocation(line: 111, column: 22, scope: !3615)
!3622 = !DILocation(line: 111, column: 32, scope: !3615)
!3623 = !DILocation(line: 39, column: 17, scope: !3410, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 113, column: 18, scope: !3615)
!3625 = !DILocation(line: 41, column: 13, scope: !3410, inlinedAt: !3624)
!3626 = !DILocation(line: 41, column: 9, scope: !3410, inlinedAt: !3624)
!3627 = !DILocation(line: 42, column: 8, scope: !3419, inlinedAt: !3624)
!3628 = !DILocation(line: 42, column: 15, scope: !3419, inlinedAt: !3624)
!3629 = !DILocation(line: 42, column: 10, scope: !3419, inlinedAt: !3624)
!3630 = !DILocation(line: 43, column: 5, scope: !3419, inlinedAt: !3624)
!3631 = !DILocation(line: 113, column: 10, scope: !3615)
!3632 = !DILocation(line: 113, column: 3, scope: !3615)
!3633 = distinct !DISubprogram(name: "xstrdup", scope: !3411, file: !3411, line: 119, type: !1194, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3634)
!3634 = !{!3635}
!3635 = !DILocalVariable(name: "string", arg: 1, scope: !3633, file: !3411, line: 119, type: !52)
!3636 = !DILocation(line: 119, column: 22, scope: !3633)
!3637 = !DILocation(line: 121, column: 27, scope: !3633)
!3638 = !DILocation(line: 121, column: 43, scope: !3633)
!3639 = !DILocation(line: 111, column: 22, scope: !3615, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 121, column: 10, scope: !3633)
!3641 = !DILocation(line: 111, column: 32, scope: !3615, inlinedAt: !3640)
!3642 = !DILocation(line: 39, column: 17, scope: !3410, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 113, column: 18, scope: !3615, inlinedAt: !3640)
!3644 = !DILocation(line: 41, column: 13, scope: !3410, inlinedAt: !3643)
!3645 = !DILocation(line: 41, column: 9, scope: !3410, inlinedAt: !3643)
!3646 = !DILocation(line: 42, column: 8, scope: !3419, inlinedAt: !3643)
!3647 = !DILocation(line: 42, column: 15, scope: !3419, inlinedAt: !3643)
!3648 = !DILocation(line: 42, column: 10, scope: !3419, inlinedAt: !3643)
!3649 = !DILocation(line: 43, column: 5, scope: !3419, inlinedAt: !3643)
!3650 = !DILocation(line: 113, column: 10, scope: !3615, inlinedAt: !3640)
!3651 = !DILocation(line: 121, column: 3, scope: !3633)
!3652 = distinct !DISubprogram(name: "xalloc_die", scope: !3653, file: !3653, line: 32, type: !706, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !243, retainedNodes: !64)
!3653 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3654 = !DILocation(line: 34, column: 10, scope: !3652)
!3655 = !DILocation(line: 34, column: 33, scope: !3652)
!3656 = !DILocation(line: 34, column: 3, scope: !3652)
!3657 = !DILocation(line: 40, column: 3, scope: !3652)
!3658 = distinct !DISubprogram(name: "xreadlink", scope: !3659, file: !3659, line: 38, type: !1194, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !3660)
!3659 = !DIFile(filename: "lib/xreadlink.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3660 = !{!3661, !3662}
!3661 = !DILocalVariable(name: "filename", arg: 1, scope: !3658, file: !3659, line: 38, type: !52)
!3662 = !DILocalVariable(name: "result", scope: !3658, file: !3659, line: 40, type: !22)
!3663 = !DILocation(line: 38, column: 24, scope: !3658)
!3664 = !DILocation(line: 40, column: 18, scope: !3658)
!3665 = !DILocation(line: 40, column: 9, scope: !3658)
!3666 = !DILocation(line: 41, column: 14, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3658, file: !3659, line: 41, column: 7)
!3668 = !DILocation(line: 41, column: 22, scope: !3667)
!3669 = !DILocation(line: 41, column: 25, scope: !3667)
!3670 = !DILocation(line: 41, column: 31, scope: !3667)
!3671 = !DILocation(line: 41, column: 7, scope: !3658)
!3672 = !DILocation(line: 42, column: 5, scope: !3667)
!3673 = !DILocation(line: 43, column: 3, scope: !3658)
!3674 = distinct !DISubprogram(name: "xstrtoumax", scope: !3675, file: !3675, line: 88, type: !3676, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !3680)
!3675 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!3678, !52, !754, !42, !3679, !52}
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !14, line: 39, baseType: !13)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!3680 = !{!3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3693, !3694, !3697, !3698}
!3681 = !DILocalVariable(name: "s", arg: 1, scope: !3674, file: !3675, line: 88, type: !52)
!3682 = !DILocalVariable(name: "ptr", arg: 2, scope: !3674, file: !3675, line: 88, type: !754)
!3683 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3674, file: !3675, line: 88, type: !42)
!3684 = !DILocalVariable(name: "val", arg: 4, scope: !3674, file: !3675, line: 89, type: !3679)
!3685 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3674, file: !3675, line: 89, type: !52)
!3686 = !DILocalVariable(name: "t_ptr", scope: !3674, file: !3675, line: 91, type: !22)
!3687 = !DILocalVariable(name: "p", scope: !3674, file: !3675, line: 92, type: !754)
!3688 = !DILocalVariable(name: "tmp", scope: !3674, file: !3675, line: 93, type: !25)
!3689 = !DILocalVariable(name: "err", scope: !3674, file: !3675, line: 94, type: !3678)
!3690 = !DILocalVariable(name: "q", scope: !3691, file: !3675, line: 104, type: !52)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !3675, line: 103, column: 5)
!3692 = distinct !DILexicalBlock(scope: !3674, file: !3675, line: 102, column: 7)
!3693 = !DILocalVariable(name: "ch", scope: !3691, file: !3675, line: 105, type: !1514)
!3694 = !DILocalVariable(name: "base", scope: !3695, file: !3675, line: 141, type: !42)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !3675, line: 140, column: 5)
!3696 = distinct !DILexicalBlock(scope: !3674, file: !3675, line: 139, column: 7)
!3697 = !DILocalVariable(name: "suffixes", scope: !3695, file: !3675, line: 142, type: !42)
!3698 = !DILocalVariable(name: "overflow", scope: !3695, file: !3675, line: 143, type: !3678)
!3699 = !DILocation(line: 88, column: 24, scope: !3674)
!3700 = !DILocation(line: 88, column: 34, scope: !3674)
!3701 = !DILocation(line: 88, column: 43, scope: !3674)
!3702 = !DILocation(line: 89, column: 24, scope: !3674)
!3703 = !DILocation(line: 89, column: 41, scope: !3674)
!3704 = !DILocation(line: 91, column: 3, scope: !3674)
!3705 = !DILocation(line: 94, column: 16, scope: !3674)
!3706 = !DILocation(line: 96, column: 3, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !3675, line: 96, column: 3)
!3708 = distinct !DILexicalBlock(scope: !3674, file: !3675, line: 96, column: 3)
!3709 = !DILocation(line: 98, column: 8, scope: !3674)
!3710 = !DILocation(line: 92, column: 10, scope: !3674)
!3711 = !DILocation(line: 100, column: 3, scope: !3674)
!3712 = !DILocation(line: 100, column: 9, scope: !3674)
!3713 = !DILocation(line: 104, column: 19, scope: !3691)
!3714 = !DILocation(line: 105, column: 21, scope: !3691)
!3715 = !DILocation(line: 106, column: 14, scope: !3691)
!3716 = !DILocation(line: 106, column: 7, scope: !3691)
!3717 = !DILocation(line: 0, scope: !3691)
!3718 = !DILocation(line: 107, column: 15, scope: !3691)
!3719 = distinct !{!3719, !3716, !3720}
!3720 = !DILocation(line: 107, column: 17, scope: !3691)
!3721 = !DILocation(line: 108, column: 14, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3691, file: !3675, line: 108, column: 11)
!3723 = !DILocalVariable(name: "nptr", arg: 1, scope: !3724, file: !3725, line: 336, type: !3728)
!3724 = distinct !DISubprogram(name: "strtoumax", scope: !3725, file: !3725, line: 336, type: !3726, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !3730)
!3725 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!25, !3728, !3729, !42}
!3728 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!3729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !754)
!3730 = !{!3723, !3731, !3732}
!3731 = !DILocalVariable(name: "endptr", arg: 2, scope: !3724, file: !3725, line: 336, type: !3729)
!3732 = !DILocalVariable(name: "base", arg: 3, scope: !3724, file: !3725, line: 336, type: !42)
!3733 = !DILocation(line: 336, column: 1, scope: !3724, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 112, column: 9, scope: !3674)
!3735 = !DILocation(line: 339, column: 10, scope: !3724, inlinedAt: !3734)
!3736 = !DILocation(line: 93, column: 14, scope: !3674)
!3737 = !DILocation(line: 114, column: 7, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3674, file: !3675, line: 114, column: 7)
!3739 = !DILocation(line: 114, column: 10, scope: !3738)
!3740 = !DILocation(line: 114, column: 7, scope: !3674)
!3741 = !DILocation(line: 118, column: 11, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !3675, line: 118, column: 11)
!3743 = distinct !DILexicalBlock(scope: !3738, file: !3675, line: 115, column: 5)
!3744 = !DILocation(line: 118, column: 26, scope: !3742)
!3745 = !DILocation(line: 118, column: 29, scope: !3742)
!3746 = !DILocation(line: 118, column: 33, scope: !3742)
!3747 = !DILocation(line: 118, column: 36, scope: !3742)
!3748 = !DILocation(line: 118, column: 11, scope: !3743)
!3749 = !DILocation(line: 123, column: 12, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3738, file: !3675, line: 123, column: 12)
!3751 = !DILocation(line: 123, column: 12, scope: !3738)
!3752 = !DILocation(line: 128, column: 5, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3750, file: !3675, line: 124, column: 5)
!3754 = !DILocation(line: 0, scope: !3674)
!3755 = !DILocation(line: 133, column: 8, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3674, file: !3675, line: 133, column: 7)
!3757 = !DILocation(line: 133, column: 7, scope: !3674)
!3758 = !DILocation(line: 135, column: 12, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3756, file: !3675, line: 134, column: 5)
!3760 = !DILocation(line: 136, column: 7, scope: !3759)
!3761 = !DILocation(line: 139, column: 7, scope: !3696)
!3762 = !DILocation(line: 139, column: 11, scope: !3696)
!3763 = !DILocation(line: 139, column: 7, scope: !3674)
!3764 = !DILocation(line: 141, column: 11, scope: !3695)
!3765 = !DILocation(line: 142, column: 11, scope: !3695)
!3766 = !DILocation(line: 145, column: 12, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3695, file: !3675, line: 145, column: 11)
!3768 = !DILocation(line: 145, column: 11, scope: !3695)
!3769 = !DILocation(line: 147, column: 16, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !3675, line: 146, column: 9)
!3771 = !DILocation(line: 148, column: 22, scope: !3770)
!3772 = !DILocation(line: 148, column: 11, scope: !3770)
!3773 = !DILocation(line: 151, column: 7, scope: !3695)
!3774 = !DILocation(line: 163, column: 15, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !3675, line: 163, column: 15)
!3776 = distinct !DILexicalBlock(scope: !3695, file: !3675, line: 152, column: 9)
!3777 = !DILocation(line: 163, column: 15, scope: !3776)
!3778 = !DILocation(line: 164, column: 21, scope: !3775)
!3779 = !DILocation(line: 164, column: 13, scope: !3775)
!3780 = !DILocation(line: 167, column: 21, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3675, line: 167, column: 21)
!3782 = distinct !DILexicalBlock(scope: !3775, file: !3675, line: 165, column: 15)
!3783 = !DILocation(line: 167, column: 29, scope: !3781)
!3784 = !DILocation(line: 167, column: 21, scope: !3782)
!3785 = !DILocation(line: 175, column: 17, scope: !3782)
!3786 = !DILocation(line: 179, column: 7, scope: !3695)
!3787 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3788, file: !3675, line: 60, type: !42)
!3788 = distinct !DISubprogram(name: "bkm_scale", scope: !3675, file: !3675, line: 60, type: !3789, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!3678, !3679, !42}
!3791 = !{!3792, !3787}
!3792 = !DILocalVariable(name: "x", arg: 1, scope: !3788, file: !3675, line: 60, type: !3679)
!3793 = !DILocation(line: 60, column: 31, scope: !3788, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 182, column: 22, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3695, file: !3675, line: 180, column: 9)
!3796 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3794)
!3797 = distinct !DILexicalBlock(scope: !3788, file: !3675, line: 67, column: 7)
!3798 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3794)
!3799 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3794)
!3800 = !DILocation(line: 143, column: 20, scope: !3695)
!3801 = !DILocation(line: 183, column: 11, scope: !3795)
!3802 = !DILocation(line: 60, column: 31, scope: !3788, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 189, column: 22, scope: !3795)
!3804 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3803)
!3805 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3803)
!3806 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3803)
!3807 = !DILocation(line: 190, column: 11, scope: !3795)
!3808 = !DILocalVariable(name: "power", arg: 3, scope: !3809, file: !3675, line: 77, type: !42)
!3809 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3675, file: !3675, line: 77, type: !3810, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!3678, !3679, !42, !42}
!3812 = !{!3813, !3814, !3808, !3815}
!3813 = !DILocalVariable(name: "x", arg: 1, scope: !3809, file: !3675, line: 77, type: !3679)
!3814 = !DILocalVariable(name: "base", arg: 2, scope: !3809, file: !3675, line: 77, type: !42)
!3815 = !DILocalVariable(name: "err", scope: !3809, file: !3675, line: 79, type: !3678)
!3816 = !DILocation(line: 77, column: 50, scope: !3809, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 197, column: 22, scope: !3795)
!3818 = !DILocation(line: 79, column: 16, scope: !3809, inlinedAt: !3817)
!3819 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 81, column: 12, scope: !3809, inlinedAt: !3817)
!3821 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3820)
!3822 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3820)
!3823 = !DILocation(line: 81, column: 9, scope: !3809, inlinedAt: !3817)
!3824 = !DILocation(line: 241, column: 11, scope: !3695)
!3825 = !DILocation(line: 77, column: 50, scope: !3809, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 202, column: 22, scope: !3795)
!3827 = !DILocation(line: 79, column: 16, scope: !3809, inlinedAt: !3826)
!3828 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 81, column: 12, scope: !3809, inlinedAt: !3826)
!3830 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3829)
!3831 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3829)
!3832 = !DILocation(line: 81, column: 9, scope: !3809, inlinedAt: !3826)
!3833 = !DILocation(line: 77, column: 50, scope: !3809, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 207, column: 22, scope: !3795)
!3835 = !DILocation(line: 79, column: 16, scope: !3809, inlinedAt: !3834)
!3836 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 81, column: 12, scope: !3809, inlinedAt: !3834)
!3838 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3837)
!3839 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3837)
!3840 = !DILocation(line: 77, column: 50, scope: !3809, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 212, column: 22, scope: !3795)
!3842 = !DILocation(line: 79, column: 16, scope: !3809, inlinedAt: !3841)
!3843 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 81, column: 12, scope: !3809, inlinedAt: !3841)
!3845 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3844)
!3846 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3844)
!3847 = !DILocation(line: 81, column: 9, scope: !3809, inlinedAt: !3841)
!3848 = !DILocation(line: 77, column: 50, scope: !3809, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 216, column: 22, scope: !3795)
!3850 = !DILocation(line: 79, column: 16, scope: !3809, inlinedAt: !3849)
!3851 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 81, column: 12, scope: !3809, inlinedAt: !3849)
!3853 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3852)
!3854 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3852)
!3855 = !DILocation(line: 81, column: 9, scope: !3809, inlinedAt: !3849)
!3856 = !DILocation(line: 77, column: 50, scope: !3809, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 221, column: 22, scope: !3795)
!3858 = !DILocation(line: 79, column: 16, scope: !3809, inlinedAt: !3857)
!3859 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 81, column: 12, scope: !3809, inlinedAt: !3857)
!3861 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3860)
!3862 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3860)
!3863 = !DILocation(line: 81, column: 9, scope: !3809, inlinedAt: !3857)
!3864 = !DILocation(line: 60, column: 31, scope: !3788, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 225, column: 22, scope: !3795)
!3866 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3865)
!3867 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3865)
!3868 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3865)
!3869 = !DILocation(line: 226, column: 11, scope: !3795)
!3870 = !DILocation(line: 77, column: 50, scope: !3809, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 229, column: 22, scope: !3795)
!3872 = !DILocation(line: 79, column: 16, scope: !3809, inlinedAt: !3871)
!3873 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 81, column: 12, scope: !3809, inlinedAt: !3871)
!3875 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3874)
!3876 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3874)
!3877 = !DILocation(line: 81, column: 9, scope: !3809, inlinedAt: !3871)
!3878 = !DILocation(line: 77, column: 50, scope: !3809, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 233, column: 22, scope: !3795)
!3880 = !DILocation(line: 79, column: 16, scope: !3809, inlinedAt: !3879)
!3881 = !DILocation(line: 67, column: 39, scope: !3797, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 81, column: 12, scope: !3809, inlinedAt: !3879)
!3883 = !DILocation(line: 72, column: 6, scope: !3788, inlinedAt: !3882)
!3884 = !DILocation(line: 67, column: 7, scope: !3788, inlinedAt: !3882)
!3885 = !DILocation(line: 81, column: 9, scope: !3809, inlinedAt: !3879)
!3886 = !DILocation(line: 237, column: 16, scope: !3795)
!3887 = !DILocation(line: 238, column: 22, scope: !3795)
!3888 = !DILocation(line: 238, column: 11, scope: !3795)
!3889 = !DILocation(line: 0, scope: !3742)
!3890 = !DILocation(line: 0, scope: !3795)
!3891 = !DILocation(line: 242, column: 10, scope: !3695)
!3892 = !DILocation(line: 243, column: 11, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3695, file: !3675, line: 243, column: 11)
!3894 = !DILocation(line: 244, column: 13, scope: !3893)
!3895 = !DILocation(line: 243, column: 11, scope: !3695)
!3896 = !DILocation(line: 119, column: 13, scope: !3742)
!3897 = !DILocation(line: 247, column: 8, scope: !3674)
!3898 = !DILocation(line: 248, column: 3, scope: !3674)
!3899 = !DILocation(line: 0, scope: !3722)
!3900 = !DILocation(line: 249, column: 1, scope: !3674)
!3901 = distinct !DISubprogram(name: "rpl_calloc", scope: !3902, file: !3902, line: 42, type: !3397, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !251, retainedNodes: !3903)
!3902 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3903 = !{!3904, !3905, !3906, !3907}
!3904 = !DILocalVariable(name: "n", arg: 1, scope: !3901, file: !3902, line: 42, type: !39)
!3905 = !DILocalVariable(name: "s", arg: 2, scope: !3901, file: !3902, line: 42, type: !39)
!3906 = !DILocalVariable(name: "result", scope: !3901, file: !3902, line: 44, type: !24)
!3907 = !DILocalVariable(name: "bytes", scope: !3908, file: !3902, line: 56, type: !39)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !3902, line: 53, column: 5)
!3909 = distinct !DILexicalBlock(scope: !3901, file: !3902, line: 47, column: 7)
!3910 = !DILocation(line: 42, column: 20, scope: !3901)
!3911 = !DILocation(line: 42, column: 30, scope: !3901)
!3912 = !DILocation(line: 47, column: 9, scope: !3909)
!3913 = !DILocation(line: 47, column: 19, scope: !3909)
!3914 = !DILocation(line: 47, column: 14, scope: !3909)
!3915 = !DILocation(line: 56, column: 24, scope: !3908)
!3916 = !DILocation(line: 56, column: 14, scope: !3908)
!3917 = !DILocation(line: 57, column: 17, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3908, file: !3902, line: 57, column: 11)
!3919 = !DILocation(line: 57, column: 21, scope: !3918)
!3920 = !DILocation(line: 57, column: 11, scope: !3908)
!3921 = !DILocation(line: 59, column: 11, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3918, file: !3902, line: 58, column: 9)
!3923 = !DILocation(line: 59, column: 17, scope: !3922)
!3924 = !DILocation(line: 65, column: 12, scope: !3901)
!3925 = !DILocation(line: 44, column: 9, scope: !3901)
!3926 = !DILocation(line: 72, column: 3, scope: !3901)
!3927 = !DILocation(line: 0, scope: !3922)
!3928 = !DILocation(line: 73, column: 1, scope: !3901)
!3929 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3930, file: !3930, line: 385, type: !3931, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3945)
!3930 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!39, !3933, !52, !39, !3934}
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1654, line: 6, baseType: !3936)
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1656, line: 21, baseType: !3937)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1656, line: 13, size: 64, elements: !3938)
!3938 = !{!3939, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3937, file: !1656, line: 15, baseType: !42, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3937, file: !1656, line: 20, baseType: !3941, size: 32, offset: 32)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !1656, line: 16, size: 32, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3941, file: !1656, line: 18, baseType: !7, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3941, file: !1656, line: 19, baseType: !1665, size: 32)
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952}
!3946 = !DILocalVariable(name: "pwc", arg: 1, scope: !3929, file: !3930, line: 385, type: !3933)
!3947 = !DILocalVariable(name: "s", arg: 2, scope: !3929, file: !3930, line: 385, type: !52)
!3948 = !DILocalVariable(name: "n", arg: 3, scope: !3929, file: !3930, line: 385, type: !39)
!3949 = !DILocalVariable(name: "ps", arg: 4, scope: !3929, file: !3930, line: 385, type: !3934)
!3950 = !DILocalVariable(name: "ret", scope: !3929, file: !3930, line: 387, type: !39)
!3951 = !DILocalVariable(name: "wc", scope: !3929, file: !3930, line: 388, type: !1670)
!3952 = !DILocalVariable(name: "uc", scope: !3953, file: !3930, line: 449, type: !1514)
!3953 = distinct !DILexicalBlock(scope: !3954, file: !3930, line: 448, column: 5)
!3954 = distinct !DILexicalBlock(scope: !3929, file: !3930, line: 447, column: 7)
!3955 = !DILocation(line: 385, column: 23, scope: !3929)
!3956 = !DILocation(line: 385, column: 40, scope: !3929)
!3957 = !DILocation(line: 385, column: 50, scope: !3929)
!3958 = !DILocation(line: 385, column: 64, scope: !3929)
!3959 = !DILocation(line: 388, column: 3, scope: !3929)
!3960 = !DILocation(line: 404, column: 9, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3929, file: !3930, line: 404, column: 7)
!3962 = !DILocation(line: 404, column: 7, scope: !3929)
!3963 = !DILocation(line: 439, column: 9, scope: !3929)
!3964 = !DILocation(line: 387, column: 10, scope: !3929)
!3965 = !DILocation(line: 447, column: 19, scope: !3954)
!3966 = !DILocation(line: 447, column: 31, scope: !3954)
!3967 = !DILocation(line: 447, column: 26, scope: !3954)
!3968 = !DILocation(line: 447, column: 41, scope: !3954)
!3969 = !DILocation(line: 447, column: 7, scope: !3929)
!3970 = !DILocation(line: 449, column: 26, scope: !3953)
!3971 = !DILocation(line: 449, column: 21, scope: !3953)
!3972 = !DILocation(line: 450, column: 14, scope: !3953)
!3973 = !DILocation(line: 450, column: 12, scope: !3953)
!3974 = !DILocation(line: 0, scope: !3953)
!3975 = !DILocation(line: 456, column: 1, scope: !3929)
!3976 = distinct !DISubprogram(name: "areadlink", scope: !3977, file: !3977, line: 53, type: !1194, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3978)
!3977 = !DIFile(filename: "lib/areadlink.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3978 = !{!3979}
!3979 = !DILocalVariable(name: "filename", arg: 1, scope: !3976, file: !3977, line: 53, type: !52)
!3980 = !DILocation(line: 53, column: 24, scope: !3976)
!3981 = !DILocation(line: 55, column: 10, scope: !3976)
!3982 = !DILocation(line: 55, column: 3, scope: !3976)
!3983 = distinct !DISubprogram(name: "careadlinkatcwd", scope: !3977, file: !3977, line: 36, type: !3984, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3989)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!3986, !42, !52, !22, !39}
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3987, line: 108, baseType: !3988)
!3987 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !28, line: 191, baseType: !793)
!3989 = !{!3990, !3991, !3992, !3993}
!3990 = !DILocalVariable(name: "fd", arg: 1, scope: !3983, file: !3977, line: 36, type: !42)
!3991 = !DILocalVariable(name: "filename", arg: 2, scope: !3983, file: !3977, line: 36, type: !52)
!3992 = !DILocalVariable(name: "buffer", arg: 3, scope: !3983, file: !3977, line: 36, type: !22)
!3993 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !3983, file: !3977, line: 37, type: !39)
!3994 = !DILocation(line: 36, column: 22, scope: !3983)
!3995 = !DILocation(line: 36, column: 38, scope: !3983)
!3996 = !DILocation(line: 36, column: 54, scope: !3983)
!3997 = !DILocation(line: 37, column: 25, scope: !3983)
!3998 = !DILocation(line: 41, column: 10, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3983, file: !3977, line: 41, column: 7)
!4000 = !DILocation(line: 41, column: 7, scope: !3983)
!4001 = !DILocation(line: 42, column: 5, scope: !3999)
!4002 = !DILocation(line: 43, column: 10, scope: !3983)
!4003 = !DILocation(line: 43, column: 3, scope: !3983)
!4004 = distinct !DISubprogram(name: "careadlinkat", scope: !4005, file: !4005, line: 64, type: !4006, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4017)
!4005 = !DIFile(filename: "lib/careadlinkat.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!22, !42, !52, !22, !39, !4008, !4016}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4010)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !189, line: 27, size: 256, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !4010, file: !189, line: 37, baseType: !192, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !4010, file: !189, line: 43, baseType: !196, size: 64, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4010, file: !189, line: 46, baseType: !200, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !4010, file: !189, line: 52, baseType: !204, size: 64, offset: 192)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4031, !4033, !4034, !4037, !4042}
!4018 = !DILocalVariable(name: "fd", arg: 1, scope: !4004, file: !4005, line: 64, type: !42)
!4019 = !DILocalVariable(name: "filename", arg: 2, scope: !4004, file: !4005, line: 64, type: !52)
!4020 = !DILocalVariable(name: "buffer", arg: 3, scope: !4004, file: !4005, line: 65, type: !22)
!4021 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !4004, file: !4005, line: 65, type: !39)
!4022 = !DILocalVariable(name: "alloc", arg: 5, scope: !4004, file: !4005, line: 66, type: !4008)
!4023 = !DILocalVariable(name: "preadlinkat", arg: 6, scope: !4004, file: !4005, line: 67, type: !4016)
!4024 = !DILocalVariable(name: "buf", scope: !4004, file: !4005, line: 69, type: !22)
!4025 = !DILocalVariable(name: "buf_size", scope: !4004, file: !4005, line: 70, type: !39)
!4026 = !DILocalVariable(name: "buf_size_max", scope: !4004, file: !4005, line: 71, type: !39)
!4027 = !DILocalVariable(name: "stack_buf", scope: !4004, file: !4005, line: 73, type: !4028)
!4028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !4029)
!4029 = !{!4030}
!4030 = !DISubrange(count: 1024)
!4031 = !DILocalVariable(name: "link_length", scope: !4032, file: !4005, line: 94, type: !3986)
!4032 = distinct !DILexicalBlock(scope: !4004, file: !4005, line: 92, column: 5)
!4033 = !DILocalVariable(name: "link_size", scope: !4032, file: !4005, line: 95, type: !39)
!4034 = !DILocalVariable(name: "readlinkat_errno", scope: !4035, file: !4005, line: 100, type: !42)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !4005, line: 97, column: 9)
!4036 = distinct !DILexicalBlock(scope: !4032, file: !4005, line: 96, column: 11)
!4037 = !DILocalVariable(name: "b", scope: !4038, file: !4005, line: 120, type: !22)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !4005, line: 119, column: 13)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !4005, line: 118, column: 15)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !4005, line: 115, column: 9)
!4041 = distinct !DILexicalBlock(scope: !4032, file: !4005, line: 114, column: 11)
!4042 = !DILocalVariable(name: "b", scope: !4043, file: !4005, line: 130, type: !22)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !4005, line: 128, column: 13)
!4044 = distinct !DILexicalBlock(scope: !4039, file: !4005, line: 127, column: 20)
!4045 = !DILocation(line: 64, column: 19, scope: !4004)
!4046 = !DILocation(line: 64, column: 35, scope: !4004)
!4047 = !DILocation(line: 65, column: 21, scope: !4004)
!4048 = !DILocation(line: 65, column: 36, scope: !4004)
!4049 = !DILocation(line: 66, column: 39, scope: !4004)
!4050 = !DILocation(line: 67, column: 25, scope: !4004)
!4051 = !DILocation(line: 71, column: 10, scope: !4004)
!4052 = !DILocation(line: 73, column: 3, scope: !4004)
!4053 = !DILocation(line: 73, column: 8, scope: !4004)
!4054 = !DILocation(line: 75, column: 9, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4004, file: !4005, line: 75, column: 7)
!4056 = !DILocation(line: 75, column: 7, scope: !4004)
!4057 = !DILocation(line: 78, column: 9, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4004, file: !4005, line: 78, column: 7)
!4059 = !DILocation(line: 78, column: 7, scope: !4004)
!4060 = !DILocation(line: 69, column: 9, scope: !4004)
!4061 = !DILocation(line: 70, column: 10, scope: !4004)
!4062 = !DILocation(line: 91, column: 3, scope: !4004)
!4063 = !DILocation(line: 0, scope: !4038)
!4064 = !DILocation(line: 94, column: 29, scope: !4032)
!4065 = !DILocation(line: 94, column: 15, scope: !4032)
!4066 = !DILocation(line: 96, column: 23, scope: !4036)
!4067 = !DILocation(line: 96, column: 11, scope: !4032)
!4068 = !DILocation(line: 100, column: 34, scope: !4035)
!4069 = !DILocation(line: 100, column: 15, scope: !4035)
!4070 = !DILocation(line: 101, column: 32, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4035, file: !4005, line: 101, column: 15)
!4072 = !DILocation(line: 101, column: 15, scope: !4035)
!4073 = !DILocation(line: 103, column: 23, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !4005, line: 103, column: 19)
!4075 = distinct !DILexicalBlock(scope: !4071, file: !4005, line: 102, column: 13)
!4076 = !DILocation(line: 103, column: 19, scope: !4075)
!4077 = !DILocation(line: 105, column: 26, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4074, file: !4005, line: 104, column: 17)
!4079 = !{!4080, !699, i64 16}
!4080 = !{!"allocator", !699, i64 0, !699, i64 8, !699, i64 16, !699, i64 24}
!4081 = !DILocation(line: 105, column: 19, scope: !4078)
!4082 = !DILocation(line: 106, column: 25, scope: !4078)
!4083 = !DILocation(line: 107, column: 17, scope: !4078)
!4084 = !DILocation(line: 95, column: 14, scope: !4032)
!4085 = !DILocation(line: 114, column: 21, scope: !4041)
!4086 = !DILocation(line: 114, column: 11, scope: !4032)
!4087 = !DILocation(line: 116, column: 24, scope: !4040)
!4088 = !DILocation(line: 116, column: 11, scope: !4040)
!4089 = !DILocation(line: 116, column: 28, scope: !4040)
!4090 = !DILocation(line: 118, column: 19, scope: !4039)
!4091 = !DILocation(line: 118, column: 15, scope: !4040)
!4092 = !DILocation(line: 120, column: 41, scope: !4038)
!4093 = !{!4080, !699, i64 0}
!4094 = !DILocation(line: 120, column: 34, scope: !4038)
!4095 = !DILocation(line: 120, column: 21, scope: !4038)
!4096 = !DILocation(line: 122, column: 21, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4038, file: !4005, line: 122, column: 19)
!4098 = !DILocation(line: 122, column: 19, scope: !4038)
!4099 = !DILocation(line: 124, column: 15, scope: !4038)
!4100 = !DILocation(line: 127, column: 30, scope: !4044)
!4101 = !DILocation(line: 127, column: 48, scope: !4044)
!4102 = !DILocation(line: 127, column: 41, scope: !4044)
!4103 = !DILocation(line: 127, column: 68, scope: !4044)
!4104 = !{!4080, !699, i64 8}
!4105 = !DILocation(line: 127, column: 61, scope: !4044)
!4106 = !DILocation(line: 127, column: 20, scope: !4039)
!4107 = !DILocation(line: 130, column: 34, scope: !4043)
!4108 = !DILocation(line: 130, column: 21, scope: !4043)
!4109 = !DILocation(line: 131, column: 19, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4043, file: !4005, line: 131, column: 19)
!4111 = !DILocation(line: 131, column: 19, scope: !4043)
!4112 = !DILocation(line: 133, column: 13, scope: !4043)
!4113 = !DILocation(line: 138, column: 15, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4032, file: !4005, line: 138, column: 11)
!4115 = !DILocation(line: 138, column: 11, scope: !4032)
!4116 = !DILocation(line: 139, column: 16, scope: !4114)
!4117 = !DILocation(line: 139, column: 9, scope: !4114)
!4118 = !DILocation(line: 141, column: 20, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4032, file: !4005, line: 141, column: 11)
!4120 = !DILocation(line: 141, column: 11, scope: !4032)
!4121 = !DILocation(line: 142, column: 18, scope: !4119)
!4122 = !DILocation(line: 142, column: 9, scope: !4119)
!4123 = !DILocation(line: 143, column: 25, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4119, file: !4005, line: 143, column: 16)
!4125 = !DILocation(line: 143, column: 16, scope: !4119)
!4126 = !DILocation(line: 147, column: 11, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !4005, line: 146, column: 9)
!4128 = distinct !DILexicalBlock(scope: !4124, file: !4005, line: 145, column: 16)
!4129 = !DILocation(line: 147, column: 17, scope: !4127)
!4130 = !DILocation(line: 148, column: 11, scope: !4127)
!4131 = !DILocation(line: 0, scope: !4124)
!4132 = !DILocation(line: 152, column: 29, scope: !4032)
!4133 = !DILocation(line: 152, column: 22, scope: !4032)
!4134 = !DILocation(line: 153, column: 5, scope: !4032)
!4135 = distinct !{!4135, !4062, !4136}
!4136 = !DILocation(line: 154, column: 13, scope: !4004)
!4137 = !DILocation(line: 156, column: 14, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4004, file: !4005, line: 156, column: 7)
!4139 = !{!4080, !699, i64 24}
!4140 = !DILocation(line: 156, column: 7, scope: !4138)
!4141 = !DILocation(line: 156, column: 7, scope: !4004)
!4142 = !DILocation(line: 157, column: 5, scope: !4138)
!4143 = !DILocation(line: 158, column: 3, scope: !4004)
!4144 = !DILocation(line: 158, column: 9, scope: !4004)
!4145 = !DILocation(line: 159, column: 3, scope: !4004)
!4146 = !DILocation(line: 0, scope: !4004)
!4147 = !DILocation(line: 160, column: 1, scope: !4004)
!4148 = distinct !DISubprogram(name: "close_stream", scope: !4149, file: !4149, line: 56, type: !4150, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !4186)
!4149 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!42, !4152}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3208, line: 7, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3210, line: 49, size: 1728, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4154, file: !3210, line: 51, baseType: !42, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4154, file: !3210, line: 54, baseType: !22, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4154, file: !3210, line: 55, baseType: !22, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4154, file: !3210, line: 56, baseType: !22, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4154, file: !3210, line: 57, baseType: !22, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4154, file: !3210, line: 58, baseType: !22, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4154, file: !3210, line: 59, baseType: !22, size: 64, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4154, file: !3210, line: 60, baseType: !22, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4154, file: !3210, line: 61, baseType: !22, size: 64, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4154, file: !3210, line: 64, baseType: !22, size: 64, offset: 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4154, file: !3210, line: 65, baseType: !22, size: 64, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4154, file: !3210, line: 66, baseType: !22, size: 64, offset: 704)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4154, file: !3210, line: 68, baseType: !3225, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4154, file: !3210, line: 70, baseType: !4170, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4154, file: !3210, line: 72, baseType: !42, size: 32, offset: 896)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4154, file: !3210, line: 73, baseType: !42, size: 32, offset: 928)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4154, file: !3210, line: 74, baseType: !792, size: 64, offset: 960)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4154, file: !3210, line: 77, baseType: !129, size: 16, offset: 1024)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4154, file: !3210, line: 78, baseType: !3234, size: 8, offset: 1040)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4154, file: !3210, line: 79, baseType: !3236, size: 8, offset: 1048)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4154, file: !3210, line: 81, baseType: !3240, size: 64, offset: 1088)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4154, file: !3210, line: 89, baseType: !3243, size: 64, offset: 1152)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4154, file: !3210, line: 91, baseType: !3245, size: 64, offset: 1216)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4154, file: !3210, line: 92, baseType: !3248, size: 64, offset: 1280)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4154, file: !3210, line: 93, baseType: !4170, size: 64, offset: 1344)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4154, file: !3210, line: 94, baseType: !24, size: 64, offset: 1408)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4154, file: !3210, line: 95, baseType: !39, size: 64, offset: 1472)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4154, file: !3210, line: 96, baseType: !42, size: 32, offset: 1536)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4154, file: !3210, line: 98, baseType: !3255, size: 160, offset: 1568)
!4186 = !{!4187, !4188, !4190, !4191}
!4187 = !DILocalVariable(name: "stream", arg: 1, scope: !4148, file: !4149, line: 56, type: !4152)
!4188 = !DILocalVariable(name: "some_pending", scope: !4148, file: !4149, line: 58, type: !4189)
!4189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!4190 = !DILocalVariable(name: "prev_fail", scope: !4148, file: !4149, line: 59, type: !4189)
!4191 = !DILocalVariable(name: "fclose_fail", scope: !4148, file: !4149, line: 60, type: !4189)
!4192 = !DILocation(line: 56, column: 21, scope: !4148)
!4193 = !DILocation(line: 58, column: 30, scope: !4148)
!4194 = !DILocalVariable(name: "__stream", arg: 1, scope: !4195, file: !4196, line: 135, type: !4152)
!4195 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4196, file: !4196, line: 135, type: !4150, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !4197)
!4196 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4197 = !{!4194}
!4198 = !DILocation(line: 135, column: 1, scope: !4195, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 59, column: 27, scope: !4148)
!4200 = !DILocation(line: 137, column: 10, scope: !4195, inlinedAt: !4199)
!4201 = !{!4202, !828, i64 0}
!4202 = !{!"_IO_FILE", !828, i64 0, !699, i64 8, !699, i64 16, !699, i64 24, !699, i64 32, !699, i64 40, !699, i64 48, !699, i64 56, !699, i64 64, !699, i64 72, !699, i64 80, !699, i64 88, !699, i64 96, !699, i64 104, !828, i64 112, !828, i64 116, !850, i64 120, !1910, i64 128, !700, i64 130, !700, i64 131, !699, i64 136, !850, i64 144, !699, i64 152, !699, i64 160, !699, i64 168, !699, i64 176, !850, i64 184, !828, i64 192, !700, i64 196}
!4203 = !DILocation(line: 59, column: 43, scope: !4148)
!4204 = !DILocation(line: 60, column: 29, scope: !4148)
!4205 = !DILocation(line: 60, column: 45, scope: !4148)
!4206 = !DILocation(line: 70, column: 17, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4148, file: !4149, line: 70, column: 7)
!4208 = !DILocation(line: 58, column: 50, scope: !4148)
!4209 = !DILocation(line: 70, column: 33, scope: !4207)
!4210 = !DILocation(line: 70, column: 53, scope: !4207)
!4211 = !DILocation(line: 70, column: 59, scope: !4207)
!4212 = !DILocation(line: 70, column: 7, scope: !4148)
!4213 = !DILocation(line: 72, column: 11, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4207, file: !4149, line: 71, column: 5)
!4215 = !DILocation(line: 73, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4214, file: !4149, line: 72, column: 11)
!4217 = !DILocation(line: 73, column: 15, scope: !4216)
!4218 = !DILocation(line: 0, scope: !4148)
!4219 = !DILocation(line: 78, column: 1, scope: !4148)
!4220 = distinct !DISubprogram(name: "hard_locale", scope: !4221, file: !4221, line: 38, type: !858, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !263, retainedNodes: !4222)
!4221 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4222 = !{!4223, !4224, !4225}
!4223 = !DILocalVariable(name: "category", arg: 1, scope: !4220, file: !4221, line: 38, type: !42)
!4224 = !DILocalVariable(name: "hard", scope: !4220, file: !4221, line: 40, type: !74)
!4225 = !DILocalVariable(name: "p", scope: !4220, file: !4221, line: 41, type: !52)
!4226 = !DILocation(line: 38, column: 18, scope: !4220)
!4227 = !DILocation(line: 40, column: 8, scope: !4220)
!4228 = !DILocation(line: 41, column: 19, scope: !4220)
!4229 = !DILocation(line: 41, column: 15, scope: !4220)
!4230 = !DILocation(line: 43, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4220, file: !4221, line: 43, column: 7)
!4232 = !DILocation(line: 43, column: 7, scope: !4220)
!4233 = !DILocation(line: 47, column: 15, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !4221, line: 47, column: 15)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !4221, line: 46, column: 9)
!4236 = distinct !DILexicalBlock(scope: !4237, file: !4221, line: 45, column: 11)
!4237 = distinct !DILexicalBlock(scope: !4231, file: !4221, line: 44, column: 5)
!4238 = !DILocation(line: 47, column: 31, scope: !4234)
!4239 = !DILocation(line: 47, column: 36, scope: !4234)
!4240 = !DILocation(line: 47, column: 39, scope: !4234)
!4241 = !DILocation(line: 47, column: 59, scope: !4234)
!4242 = !DILocation(line: 47, column: 15, scope: !4235)
!4243 = !DILocation(line: 48, column: 13, scope: !4234)
!4244 = !DILocation(line: 71, column: 3, scope: !4220)
!4245 = distinct !DISubprogram(name: "locale_charset", scope: !4246, file: !4246, line: 687, type: !4247, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !265, retainedNodes: !4249)
!4246 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!52}
!4249 = !{!4250}
!4250 = !DILocalVariable(name: "codeset", scope: !4245, file: !4246, line: 689, type: !52)
!4251 = !DILocation(line: 696, column: 13, scope: !4245)
!4252 = !DILocation(line: 689, column: 15, scope: !4245)
!4253 = !DILocation(line: 754, column: 15, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4245, file: !4246, line: 754, column: 7)
!4255 = !DILocation(line: 754, column: 7, scope: !4245)
!4256 = !DILocation(line: 907, column: 13, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !4246, line: 907, column: 13)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !4246, line: 897, column: 7)
!4259 = distinct !DILexicalBlock(scope: !4245, file: !4246, line: 856, column: 3)
!4260 = !DILocation(line: 907, column: 24, scope: !4257)
!4261 = !DILocation(line: 907, column: 13, scope: !4258)
!4262 = !DILocation(line: 995, column: 3, scope: !4245)
!4263 = distinct !DISubprogram(name: "rpl_fclose", scope: !4264, file: !4264, line: 58, type: !4265, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !654, retainedNodes: !4301)
!4264 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!42, !4267}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3208, line: 7, baseType: !4269)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3210, line: 49, size: 1728, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4269, file: !3210, line: 51, baseType: !42, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4269, file: !3210, line: 54, baseType: !22, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4269, file: !3210, line: 55, baseType: !22, size: 64, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4269, file: !3210, line: 56, baseType: !22, size: 64, offset: 192)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4269, file: !3210, line: 57, baseType: !22, size: 64, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4269, file: !3210, line: 58, baseType: !22, size: 64, offset: 320)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4269, file: !3210, line: 59, baseType: !22, size: 64, offset: 384)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4269, file: !3210, line: 60, baseType: !22, size: 64, offset: 448)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4269, file: !3210, line: 61, baseType: !22, size: 64, offset: 512)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4269, file: !3210, line: 64, baseType: !22, size: 64, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4269, file: !3210, line: 65, baseType: !22, size: 64, offset: 640)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4269, file: !3210, line: 66, baseType: !22, size: 64, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4269, file: !3210, line: 68, baseType: !3225, size: 64, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4269, file: !3210, line: 70, baseType: !4285, size: 64, offset: 832)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4269, file: !3210, line: 72, baseType: !42, size: 32, offset: 896)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4269, file: !3210, line: 73, baseType: !42, size: 32, offset: 928)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4269, file: !3210, line: 74, baseType: !792, size: 64, offset: 960)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4269, file: !3210, line: 77, baseType: !129, size: 16, offset: 1024)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4269, file: !3210, line: 78, baseType: !3234, size: 8, offset: 1040)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4269, file: !3210, line: 79, baseType: !3236, size: 8, offset: 1048)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4269, file: !3210, line: 81, baseType: !3240, size: 64, offset: 1088)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4269, file: !3210, line: 89, baseType: !3243, size: 64, offset: 1152)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4269, file: !3210, line: 91, baseType: !3245, size: 64, offset: 1216)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4269, file: !3210, line: 92, baseType: !3248, size: 64, offset: 1280)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4269, file: !3210, line: 93, baseType: !4285, size: 64, offset: 1344)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4269, file: !3210, line: 94, baseType: !24, size: 64, offset: 1408)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4269, file: !3210, line: 95, baseType: !39, size: 64, offset: 1472)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4269, file: !3210, line: 96, baseType: !42, size: 32, offset: 1536)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4269, file: !3210, line: 98, baseType: !3255, size: 160, offset: 1568)
!4301 = !{!4302, !4303, !4304, !4305}
!4302 = !DILocalVariable(name: "fp", arg: 1, scope: !4263, file: !4264, line: 58, type: !4267)
!4303 = !DILocalVariable(name: "saved_errno", scope: !4263, file: !4264, line: 60, type: !42)
!4304 = !DILocalVariable(name: "fd", scope: !4263, file: !4264, line: 61, type: !42)
!4305 = !DILocalVariable(name: "result", scope: !4263, file: !4264, line: 62, type: !42)
!4306 = !DILocation(line: 58, column: 19, scope: !4263)
!4307 = !DILocation(line: 60, column: 7, scope: !4263)
!4308 = !DILocation(line: 62, column: 7, scope: !4263)
!4309 = !DILocation(line: 65, column: 8, scope: !4263)
!4310 = !DILocation(line: 61, column: 7, scope: !4263)
!4311 = !DILocation(line: 66, column: 10, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4263, file: !4264, line: 66, column: 7)
!4313 = !DILocation(line: 66, column: 7, scope: !4263)
!4314 = !DILocation(line: 67, column: 12, scope: !4312)
!4315 = !DILocation(line: 67, column: 5, scope: !4312)
!4316 = !DILocation(line: 72, column: 9, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4263, file: !4264, line: 72, column: 7)
!4318 = !DILocation(line: 72, column: 23, scope: !4317)
!4319 = !DILocation(line: 72, column: 33, scope: !4317)
!4320 = !DILocation(line: 72, column: 26, scope: !4317)
!4321 = !DILocation(line: 72, column: 59, scope: !4317)
!4322 = !DILocation(line: 73, column: 7, scope: !4317)
!4323 = !DILocation(line: 73, column: 10, scope: !4317)
!4324 = !DILocation(line: 72, column: 7, scope: !4263)
!4325 = !DILocation(line: 100, column: 12, scope: !4263)
!4326 = !DILocation(line: 105, column: 7, scope: !4263)
!4327 = !DILocation(line: 74, column: 19, scope: !4317)
!4328 = !DILocation(line: 105, column: 19, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4263, file: !4264, line: 105, column: 7)
!4330 = !DILocation(line: 107, column: 13, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4329, file: !4264, line: 106, column: 5)
!4332 = !DILocation(line: 109, column: 5, scope: !4331)
!4333 = !DILocation(line: 0, scope: !4263)
!4334 = !DILocation(line: 112, column: 1, scope: !4263)
!4335 = distinct !DISubprogram(name: "rpl_fflush", scope: !4336, file: !4336, line: 129, type: !4337, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !656, retainedNodes: !4373)
!4336 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!42, !4339}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3208, line: 7, baseType: !4341)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3210, line: 49, size: 1728, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4341, file: !3210, line: 51, baseType: !42, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4341, file: !3210, line: 54, baseType: !22, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4341, file: !3210, line: 55, baseType: !22, size: 64, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4341, file: !3210, line: 56, baseType: !22, size: 64, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4341, file: !3210, line: 57, baseType: !22, size: 64, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4341, file: !3210, line: 58, baseType: !22, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4341, file: !3210, line: 59, baseType: !22, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4341, file: !3210, line: 60, baseType: !22, size: 64, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4341, file: !3210, line: 61, baseType: !22, size: 64, offset: 512)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4341, file: !3210, line: 64, baseType: !22, size: 64, offset: 576)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4341, file: !3210, line: 65, baseType: !22, size: 64, offset: 640)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4341, file: !3210, line: 66, baseType: !22, size: 64, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4341, file: !3210, line: 68, baseType: !3225, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4341, file: !3210, line: 70, baseType: !4357, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4341, file: !3210, line: 72, baseType: !42, size: 32, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4341, file: !3210, line: 73, baseType: !42, size: 32, offset: 928)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4341, file: !3210, line: 74, baseType: !792, size: 64, offset: 960)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4341, file: !3210, line: 77, baseType: !129, size: 16, offset: 1024)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4341, file: !3210, line: 78, baseType: !3234, size: 8, offset: 1040)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4341, file: !3210, line: 79, baseType: !3236, size: 8, offset: 1048)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4341, file: !3210, line: 81, baseType: !3240, size: 64, offset: 1088)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4341, file: !3210, line: 89, baseType: !3243, size: 64, offset: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4341, file: !3210, line: 91, baseType: !3245, size: 64, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4341, file: !3210, line: 92, baseType: !3248, size: 64, offset: 1280)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4341, file: !3210, line: 93, baseType: !4357, size: 64, offset: 1344)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4341, file: !3210, line: 94, baseType: !24, size: 64, offset: 1408)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4341, file: !3210, line: 95, baseType: !39, size: 64, offset: 1472)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4341, file: !3210, line: 96, baseType: !42, size: 32, offset: 1536)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4341, file: !3210, line: 98, baseType: !3255, size: 160, offset: 1568)
!4373 = !{!4374}
!4374 = !DILocalVariable(name: "stream", arg: 1, scope: !4335, file: !4336, line: 129, type: !4339)
!4375 = !DILocation(line: 129, column: 19, scope: !4335)
!4376 = !DILocation(line: 150, column: 14, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4335, file: !4336, line: 150, column: 7)
!4378 = !DILocation(line: 150, column: 22, scope: !4377)
!4379 = !DILocation(line: 150, column: 27, scope: !4377)
!4380 = !DILocation(line: 150, column: 7, scope: !4335)
!4381 = !DILocation(line: 151, column: 12, scope: !4377)
!4382 = !DILocation(line: 151, column: 5, scope: !4377)
!4383 = !DILocalVariable(name: "fp", arg: 1, scope: !4384, file: !4336, line: 41, type: !4339)
!4384 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4336, file: !4336, line: 41, type: !4385, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !656, retainedNodes: !4387)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{null, !4339}
!4387 = !{!4383}
!4388 = !DILocation(line: 41, column: 48, scope: !4384, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 156, column: 3, scope: !4335)
!4390 = !DILocation(line: 43, column: 11, scope: !4391, inlinedAt: !4389)
!4391 = distinct !DILexicalBlock(scope: !4384, file: !4336, line: 43, column: 7)
!4392 = !DILocation(line: 43, column: 18, scope: !4391, inlinedAt: !4389)
!4393 = !DILocation(line: 43, column: 7, scope: !4384, inlinedAt: !4389)
!4394 = !DILocation(line: 45, column: 5, scope: !4391, inlinedAt: !4389)
!4395 = !DILocation(line: 158, column: 10, scope: !4335)
!4396 = !DILocation(line: 158, column: 3, scope: !4335)
!4397 = !DILocation(line: 0, scope: !4335)
!4398 = !DILocation(line: 232, column: 1, scope: !4335)
!4399 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4400, file: !4400, line: 28, type: !4401, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !658, retainedNodes: !4438)
!4400 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!42, !4403, !4437, !42}
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3208, line: 7, baseType: !4405)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3210, line: 49, size: 1728, elements: !4406)
!4406 = !{!4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4405, file: !3210, line: 51, baseType: !42, size: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4405, file: !3210, line: 54, baseType: !22, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4405, file: !3210, line: 55, baseType: !22, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4405, file: !3210, line: 56, baseType: !22, size: 64, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4405, file: !3210, line: 57, baseType: !22, size: 64, offset: 256)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4405, file: !3210, line: 58, baseType: !22, size: 64, offset: 320)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4405, file: !3210, line: 59, baseType: !22, size: 64, offset: 384)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4405, file: !3210, line: 60, baseType: !22, size: 64, offset: 448)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4405, file: !3210, line: 61, baseType: !22, size: 64, offset: 512)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4405, file: !3210, line: 64, baseType: !22, size: 64, offset: 576)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4405, file: !3210, line: 65, baseType: !22, size: 64, offset: 640)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4405, file: !3210, line: 66, baseType: !22, size: 64, offset: 704)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4405, file: !3210, line: 68, baseType: !3225, size: 64, offset: 768)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4405, file: !3210, line: 70, baseType: !4421, size: 64, offset: 832)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4405, file: !3210, line: 72, baseType: !42, size: 32, offset: 896)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4405, file: !3210, line: 73, baseType: !42, size: 32, offset: 928)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4405, file: !3210, line: 74, baseType: !792, size: 64, offset: 960)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4405, file: !3210, line: 77, baseType: !129, size: 16, offset: 1024)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4405, file: !3210, line: 78, baseType: !3234, size: 8, offset: 1040)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4405, file: !3210, line: 79, baseType: !3236, size: 8, offset: 1048)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4405, file: !3210, line: 81, baseType: !3240, size: 64, offset: 1088)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4405, file: !3210, line: 89, baseType: !3243, size: 64, offset: 1152)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4405, file: !3210, line: 91, baseType: !3245, size: 64, offset: 1216)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4405, file: !3210, line: 92, baseType: !3248, size: 64, offset: 1280)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4405, file: !3210, line: 93, baseType: !4421, size: 64, offset: 1344)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4405, file: !3210, line: 94, baseType: !24, size: 64, offset: 1408)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4405, file: !3210, line: 95, baseType: !39, size: 64, offset: 1472)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4405, file: !3210, line: 96, baseType: !42, size: 32, offset: 1536)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4405, file: !3210, line: 98, baseType: !3255, size: 160, offset: 1568)
!4437 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3376, line: 63, baseType: !792)
!4438 = !{!4439, !4440, !4441, !4442}
!4439 = !DILocalVariable(name: "fp", arg: 1, scope: !4399, file: !4400, line: 28, type: !4403)
!4440 = !DILocalVariable(name: "offset", arg: 2, scope: !4399, file: !4400, line: 28, type: !4437)
!4441 = !DILocalVariable(name: "whence", arg: 3, scope: !4399, file: !4400, line: 28, type: !42)
!4442 = !DILocalVariable(name: "pos", scope: !4443, file: !4400, line: 117, type: !4437)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !4400, line: 113, column: 5)
!4444 = distinct !DILexicalBlock(scope: !4399, file: !4400, line: 52, column: 7)
!4445 = !DILocation(line: 28, column: 15, scope: !4399)
!4446 = !DILocation(line: 28, column: 25, scope: !4399)
!4447 = !DILocation(line: 28, column: 37, scope: !4399)
!4448 = !DILocation(line: 52, column: 11, scope: !4444)
!4449 = !{!4202, !699, i64 16}
!4450 = !DILocation(line: 52, column: 31, scope: !4444)
!4451 = !{!4202, !699, i64 8}
!4452 = !DILocation(line: 52, column: 24, scope: !4444)
!4453 = !DILocation(line: 53, column: 7, scope: !4444)
!4454 = !DILocation(line: 53, column: 14, scope: !4444)
!4455 = !{!4202, !699, i64 40}
!4456 = !DILocation(line: 53, column: 35, scope: !4444)
!4457 = !{!4202, !699, i64 32}
!4458 = !DILocation(line: 53, column: 28, scope: !4444)
!4459 = !DILocation(line: 54, column: 7, scope: !4444)
!4460 = !DILocation(line: 54, column: 14, scope: !4444)
!4461 = !{!4202, !699, i64 72}
!4462 = !DILocation(line: 54, column: 28, scope: !4444)
!4463 = !DILocation(line: 52, column: 7, scope: !4399)
!4464 = !DILocation(line: 117, column: 26, scope: !4443)
!4465 = !DILocation(line: 117, column: 19, scope: !4443)
!4466 = !DILocation(line: 117, column: 13, scope: !4443)
!4467 = !DILocation(line: 118, column: 15, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4443, file: !4400, line: 118, column: 11)
!4469 = !DILocation(line: 118, column: 11, scope: !4443)
!4470 = !DILocation(line: 129, column: 11, scope: !4443)
!4471 = !DILocation(line: 129, column: 18, scope: !4443)
!4472 = !DILocation(line: 130, column: 11, scope: !4443)
!4473 = !DILocation(line: 130, column: 19, scope: !4443)
!4474 = !{!4202, !850, i64 144}
!4475 = !DILocation(line: 161, column: 7, scope: !4443)
!4476 = !DILocation(line: 163, column: 10, scope: !4399)
!4477 = !DILocation(line: 163, column: 3, scope: !4399)
!4478 = !DILocation(line: 0, scope: !4399)
!4479 = !DILocation(line: 164, column: 1, scope: !4399)
