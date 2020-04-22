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
@stdbuf = internal unnamed_addr global [3 x %struct.anon] zeroinitializer, align 16, !dbg !177
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
@program_path = internal unnamed_addr global i8* null, align 8, !dbg !175
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !190
@.str.15 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !195
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !239
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.63 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.64 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !242
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !248
@.str.81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 16, !dbg !289
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !393
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !399
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !401
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.96 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.97 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.98 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.99 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.100 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !408
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !415
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !403
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !417
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !423
@.str.1.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.147 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.148 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.161 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.164 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.165 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@stdlib_allocator = dso_local local_unnamed_addr constant %struct.allocator { i8* (i64)* @malloc, i8* (i8*, i64)* @realloc, void (i8*)* @free, void (i64)* null }, align 8, !dbg !431

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1161 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1166, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %0, metadata !1165, metadata !DIExpression()), !dbg !1186
  %3 = icmp eq i32 %0, 0, !dbg !1187
  br i1 %3, label %9, label %4, !dbg !1188

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1189, !tbaa !1191
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1189
  %7 = load i8*, i8** @program_name, align 8, !dbg !1189, !tbaa !1191
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1189
  br label %76, !dbg !1189

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1195
  %11 = load i8*, i8** @program_name, align 8, !dbg !1195, !tbaa !1191
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1195
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1196
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1196, !tbaa !1191
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1196
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i64 0, i64 0), i32 5) #20, !dbg !1197
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1197, !tbaa !1191
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #20, !dbg !1197
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1200
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1200, !tbaa !1191
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1200
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1201
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1201, !tbaa !1191
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1201
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1202
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1202, !tbaa !1191
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1202
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1203
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1203, !tbaa !1191
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1203
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 5) #20, !dbg !1204
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1204, !tbaa !1191
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1204
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([312 x i8], [312 x i8]* @.str.8, i64 0, i64 0), i32 5) #20, !dbg !1205
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1205, !tbaa !1191
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1205
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.9, i64 0, i64 0), i32 5) #20, !dbg !1206
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1206, !tbaa !1191
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !1206
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !1169, metadata !DIExpression()) #20, !dbg !1207
  %40 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1208
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %40) #20, !dbg !1208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %40, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1182
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !1170, metadata !DIExpression()) #20, !dbg !1207
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1171, metadata !DIExpression()) #20, !dbg !1207
  %41 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1209
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1171, metadata !DIExpression()) #20, !dbg !1207
  br label %42, !dbg !1210

42:                                               ; preds = %47, %9
  %43 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %44 = phi %struct.infomap* [ %48, %47 ], [ %41, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1171, metadata !DIExpression()) #20, !dbg !1207
  %45 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %43) #22, !dbg !1211
  %46 = icmp eq i32 %45, 0, !dbg !1211
  br i1 %46, label %52, label %47, !dbg !1210

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 1, !dbg !1212
  call void @llvm.dbg.value(metadata %struct.infomap* %48, metadata !1171, metadata !DIExpression()) #20, !dbg !1207
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 0, i32 0, !dbg !1213
  %50 = load i8*, i8** %49, align 8, !dbg !1213, !tbaa !1214
  %51 = icmp eq i8* %50, null, !dbg !1216
  br i1 %51, label %52, label %42, !dbg !1217, !llvm.loop !1218

52:                                               ; preds = %47, %42
  %53 = phi %struct.infomap* [ %48, %47 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !1171, metadata !DIExpression()) #20, !dbg !1207
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !1171, metadata !DIExpression()) #20, !dbg !1207
  %54 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 0, i32 1, !dbg !1219
  %55 = load i8*, i8** %54, align 8, !dbg !1219, !tbaa !1221
  %56 = icmp eq i8* %55, null, !dbg !1222
  %57 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %55, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %57, metadata !1170, metadata !DIExpression()) #20, !dbg !1207
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #20, !dbg !1224
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0)) #20, !dbg !1224
  %60 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %60, metadata !1178, metadata !DIExpression()) #20, !dbg !1207
  %61 = icmp eq i8* %60, null, !dbg !1226
  br i1 %61, label %69, label %62, !dbg !1228

62:                                               ; preds = %52
  %63 = tail call i32 @strncmp(i8* nonnull %60, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #22, !dbg !1229
  %64 = icmp eq i32 %63, 0, !dbg !1229
  br i1 %64, label %69, label %65, !dbg !1230

65:                                               ; preds = %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.38, i64 0, i64 0), i32 5) #20, !dbg !1231
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1231, !tbaa !1191
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #20, !dbg !1231
  br label %69, !dbg !1233

69:                                               ; preds = %52, %62, %65
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 5) #20, !dbg !1234
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #20, !dbg !1234
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #20, !dbg !1235
  %73 = icmp eq i8* %57, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), !dbg !1235
  %74 = select i1 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1235
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* %57, i8* %74) #20, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %40) #20, !dbg !1236
  br label %76

76:                                               ; preds = %69, %4
  tail call void @exit(i32 %0) #23, !dbg !1237
  unreachable, !dbg !1237
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !22 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !32 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !97 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1238 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8*], align 16
  call void @llvm.dbg.declare(metadata [3 x i8*]* %6, metadata !1248, metadata !DIExpression()), !dbg !1295
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1258, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1258, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i32 %0, metadata !1242, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8** %1, metadata !1243, metadata !DIExpression()), !dbg !1298
  %9 = load i8*, i8** %1, align 8, !dbg !1299, !tbaa !1191
  tail call void @set_program_name(i8* %9) #20, !dbg !1300
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #20, !dbg !1301
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #20, !dbg !1302
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #20, !dbg !1303
  call void @llvm.dbg.value(metadata i32 125, metadata !1304, metadata !DIExpression()), !dbg !1307
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !1309, !tbaa !1311
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1313
  %14 = bitcast i64* %4 to i8*, !dbg !1314
  br label %15, !dbg !1326

15:                                               ; preds = %51, %2
  %16 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #20, !dbg !1327
  call void @llvm.dbg.value(metadata i32 %16, metadata !1244, metadata !DIExpression()), !dbg !1298
  switch i32 %16, label %63 [
    i32 -1, label %64
    i32 -131, label %60
    i32 -130, label %59
    i32 101, label %19
    i32 105, label %17
    i32 111, label %18
  ], !dbg !1326

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !1328, metadata !DIExpression()), !dbg !1334
  br label %19, !dbg !1336

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 1, metadata !1328, metadata !DIExpression()), !dbg !1334
  br label %19, !dbg !1338

19:                                               ; preds = %15, %18, %17
  %20 = phi i64 [ 0, %17 ], [ 1, %18 ], [ 2, %15 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !1328, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i32 -1, metadata !1245, metadata !DIExpression()), !dbg !1339
  %21 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 1, !dbg !1340
  store i32 %16, i32* %21, align 8, !dbg !1341, !tbaa !1342
  %22 = load i8*, i8** @optarg, align 8, !dbg !1345, !tbaa !1191
  br label %23, !dbg !1346

23:                                               ; preds = %27, %19
  %24 = phi i8* [ %28, %27 ], [ %22, %19 ], !dbg !1345
  %25 = load i8, i8* %24, align 1, !dbg !1347, !tbaa !1348
  %26 = sext i8 %25 to i32, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %26, metadata !1349, metadata !DIExpression()), !dbg !1353
  switch i32 %26, label %29 [
    i32 32, label %27
    i32 9, label %27
    i32 10, label %27
    i32 11, label %27
    i32 12, label %27
    i32 13, label %27
  ], !dbg !1355

27:                                               ; preds = %23, %23, %23, %23, %23, %23
  %28 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !1356
  store i8* %28, i8** @optarg, align 8, !dbg !1356, !tbaa !1191
  br label %23, !dbg !1346, !llvm.loop !1357

29:                                               ; preds = %23
  %30 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 2, !dbg !1358
  store i8* %24, i8** %30, align 8, !dbg !1359, !tbaa !1360
  %31 = icmp eq i32 %16, 105, !dbg !1361
  br i1 %31, label %32, label %37, !dbg !1363

32:                                               ; preds = %29
  %33 = load i8, i8* %24, align 1, !dbg !1364, !tbaa !1348
  %34 = icmp eq i8 %33, 76, !dbg !1365
  br i1 %34, label %35, label %37, !dbg !1366

35:                                               ; preds = %32
  %36 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #20, !dbg !1367
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36) #20, !dbg !1369
  call void @usage(i32 125) #24, !dbg !1370
  unreachable, !dbg !1370

37:                                               ; preds = %32, %29
  %38 = call i32 @strcmp(i8* nonnull dereferenceable(1) %24, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #22, !dbg !1371
  %39 = icmp eq i32 %38, 0, !dbg !1371
  br i1 %39, label %51, label %40, !dbg !1372

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* %24, metadata !1319, metadata !DIExpression()) #20, !dbg !1314
  call void @llvm.dbg.value(metadata i64* undef, metadata !1320, metadata !DIExpression()) #20, !dbg !1314
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #20, !dbg !1373
  call void @llvm.dbg.value(metadata i64* %4, metadata !1321, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1314
  %41 = call i32 @xstrtoumax(i8* nonnull %24, i8** null, i32 10, i64* nonnull %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0)) #20, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %41, metadata !1322, metadata !DIExpression()) #20, !dbg !1314
  call void @llvm.dbg.value(metadata i64 undef, metadata !1321, metadata !DIExpression()) #20, !dbg !1314
  call void @llvm.dbg.value(metadata i32 %41, metadata !1322, metadata !DIExpression()) #20, !dbg !1314
  switch i32 %41, label %44 [
    i32 0, label %47
    i32 1, label %42
  ], !dbg !1375

42:                                               ; preds = %40
  %43 = tail call i32* @__errno_location() #25, !dbg !1376
  br label %52, !dbg !1375

44:                                               ; preds = %40
  %45 = tail call i32* @__errno_location() #25, !dbg !1377
  %46 = load i32, i32* %45, align 4, !dbg !1377, !tbaa !1311
  br label %52, !dbg !1378

47:                                               ; preds = %40
  %48 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 0, !dbg !1379
  call void @llvm.dbg.value(metadata i64* %48, metadata !1320, metadata !DIExpression()) #20, !dbg !1314
  %49 = tail call i32* @__errno_location() #25, !dbg !1380
  store i32 0, i32* %49, align 4, !dbg !1383, !tbaa !1311
  %50 = load i64, i64* %4, align 8, !dbg !1384, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %50, metadata !1321, metadata !DIExpression()) #20, !dbg !1314
  store i64 %50, i64* %48, align 8, !dbg !1386, !tbaa !1385
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #20, !dbg !1387
  br label %51, !dbg !1388

51:                                               ; preds = %47, %37
  br label %15, !dbg !1327, !llvm.loop !1389

52:                                               ; preds = %42, %44
  %53 = phi i32* [ %43, %42 ], [ %45, %44 ], !dbg !1391
  %54 = phi i32 [ 75, %42 ], [ %46, %44 ], !dbg !1378
  store i32 %54, i32* %53, align 4, !dbg !1392, !tbaa !1311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #20, !dbg !1387
  %55 = load i32, i32* %53, align 4, !dbg !1391, !tbaa !1311
  %56 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 5) #20, !dbg !1391
  %57 = load i8*, i8** @optarg, align 8, !dbg !1391, !tbaa !1191
  %58 = call i8* @quote(i8* %57) #20, !dbg !1391
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %55, i8* %56, i8* %58) #20, !dbg !1391
  unreachable, !dbg !1391

59:                                               ; preds = %15
  call void @usage(i32 0) #24, !dbg !1393
  unreachable, !dbg !1393

60:                                               ; preds = %15
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1394, !tbaa !1191
  %62 = load i8*, i8** @Version, align 8, !dbg !1394, !tbaa !1191
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #20, !dbg !1394
  call void @exit(i32 0) #23, !dbg !1394
  unreachable, !dbg !1394

63:                                               ; preds = %15
  call void @usage(i32 125) #24, !dbg !1395
  unreachable, !dbg !1395

64:                                               ; preds = %15
  %65 = load i32, i32* @optind, align 4, !dbg !1396, !tbaa !1311
  %66 = sext i32 %65 to i64, !dbg !1397
  %67 = getelementptr inbounds i8*, i8** %1, i64 %66, !dbg !1397
  call void @llvm.dbg.value(metadata i8** %67, metadata !1243, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 undef, metadata !1242, metadata !DIExpression()), !dbg !1298
  %68 = icmp slt i32 %65, %0, !dbg !1398
  br i1 %68, label %71, label %69, !dbg !1400

69:                                               ; preds = %64
  %70 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 5) #20, !dbg !1401
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %70) #20, !dbg !1403
  call void @usage(i32 125) #24, !dbg !1404
  unreachable, !dbg !1404

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i8 0, metadata !1405, metadata !DIExpression()) #20, !dbg !1433
  call void @llvm.dbg.value(metadata i64 0, metadata !1410, metadata !DIExpression()) #20, !dbg !1436
  %72 = bitcast i8** %3 to i8*, !dbg !1437
  %73 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 2), align 16, !dbg !1438, !tbaa !1360
  %74 = icmp eq i8* %73, null, !dbg !1439
  br i1 %74, label %117, label %75, !dbg !1440

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #20, !dbg !1441
  %76 = load i8, i8* %73, align 1, !dbg !1442, !tbaa !1348
  %77 = icmp eq i8 %76, 76, !dbg !1443
  %78 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 1), align 8, !dbg !1444, !tbaa !1342
  %79 = add i32 %78, 128, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %78, metadata !1445, metadata !DIExpression()) #20, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %78, metadata !1445, metadata !DIExpression()) #20, !dbg !1450
  %80 = icmp ult i32 %79, 384, !dbg !1444
  br i1 %77, label %81, label %91, !dbg !1452

81:                                               ; preds = %75
  br i1 %80, label %82, label %88, !dbg !1453

82:                                               ; preds = %81
  %83 = tail call i32** @__ctype_toupper_loc() #25, !dbg !1454
  %84 = load i32*, i32** %83, align 8, !dbg !1455, !tbaa !1191
  %85 = sext i32 %78 to i64, !dbg !1456
  %86 = getelementptr inbounds i32, i32* %84, i64 %85, !dbg !1456
  %87 = load i32, i32* %86, align 4, !dbg !1456, !tbaa !1311
  br label %88, !dbg !1457

88:                                               ; preds = %82, %81
  %89 = phi i32 [ %87, %82 ], [ %78, %81 ], !dbg !1458
  call void @llvm.dbg.value(metadata i32 %89, metadata !1418, metadata !DIExpression()) #20, !dbg !1459
  call void @llvm.dbg.value(metadata i8** %3, metadata !1412, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1437
  %90 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %89) #20, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %90, metadata !1417, metadata !DIExpression()) #20, !dbg !1437
  br label %102, !dbg !1461

91:                                               ; preds = %75
  br i1 %80, label %92, label %98, !dbg !1462

92:                                               ; preds = %91
  %93 = tail call i32** @__ctype_toupper_loc() #25, !dbg !1463
  %94 = load i32*, i32** %93, align 8, !dbg !1464, !tbaa !1191
  %95 = sext i32 %78 to i64, !dbg !1465
  %96 = getelementptr inbounds i32, i32* %94, i64 %95, !dbg !1465
  %97 = load i32, i32* %96, align 4, !dbg !1465, !tbaa !1311
  br label %98, !dbg !1466

98:                                               ; preds = %92, %91
  %99 = phi i32 [ %97, %92 ], [ %78, %91 ], !dbg !1467
  call void @llvm.dbg.value(metadata i32 %99, metadata !1426, metadata !DIExpression()) #20, !dbg !1468
  %100 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 0), align 16, !dbg !1469, !tbaa !1470
  call void @llvm.dbg.value(metadata i8** %3, metadata !1412, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1437
  %101 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %99, i64 %100) #20, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %101, metadata !1417, metadata !DIExpression()) #20, !dbg !1437
  br label %102

102:                                              ; preds = %98, %88
  %103 = phi i32 [ %90, %88 ], [ %101, %98 ], !dbg !1444
  call void @llvm.dbg.value(metadata i32 %103, metadata !1417, metadata !DIExpression()) #20, !dbg !1437
  %104 = icmp slt i32 %103, 0, !dbg !1471
  br i1 %104, label %105, label %106, !dbg !1473

105:                                              ; preds = %297, %258, %102
  call void @xalloc_die() #23, !dbg !1474
  unreachable, !dbg !1474

106:                                              ; preds = %102
  %107 = load i8*, i8** %3, align 8, !dbg !1475, !tbaa !1191
  call void @llvm.dbg.value(metadata i8* %107, metadata !1412, metadata !DIExpression()) #20, !dbg !1437
  %108 = call i32 @putenv(i8* %107) #20, !dbg !1477
  %109 = icmp eq i32 %108, 0, !dbg !1478
  br i1 %109, label %116, label %110, !dbg !1479

110:                                              ; preds = %300, %261, %106
  %111 = tail call i32* @__errno_location() #25, !dbg !1480
  %112 = load i32, i32* %111, align 4, !dbg !1480, !tbaa !1311
  %113 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #20, !dbg !1480
  %114 = load i8*, i8** %3, align 8, !dbg !1480, !tbaa !1191
  call void @llvm.dbg.value(metadata i8* %114, metadata !1412, metadata !DIExpression()) #20, !dbg !1437
  %115 = call i8* @quote(i8* %114) #20, !dbg !1480
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %112, i8* %113, i8* %115) #20, !dbg !1480
  unreachable, !dbg !1480

116:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()) #20, !dbg !1433
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #20, !dbg !1482
  br label %117, !dbg !1483

117:                                              ; preds = %116, %71
  %118 = phi i8 [ 1, %116 ], [ 0, %71 ], !dbg !1433
  call void @llvm.dbg.value(metadata i8 %118, metadata !1405, metadata !DIExpression()) #20, !dbg !1433
  call void @llvm.dbg.value(metadata i64 1, metadata !1410, metadata !DIExpression()) #20, !dbg !1436
  %119 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 2), align 8, !dbg !1438, !tbaa !1360
  %120 = icmp eq i8* %119, null, !dbg !1439
  br i1 %120, label %266, label %231, !dbg !1440

121:                                              ; preds = %305
  %122 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i32 5) #20, !dbg !1484
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %122) #20, !dbg !1486
  call void @usage(i32 125) #24, !dbg !1487
  unreachable, !dbg !1487

123:                                              ; preds = %305
  %124 = load i8*, i8** @program_name, align 8, !dbg !1488, !tbaa !1191
  call void @llvm.dbg.value(metadata i8* %124, metadata !1489, metadata !DIExpression()) #20, !dbg !1503
  %125 = call i8* @strchr(i8* nonnull dereferenceable(1) %124, i32 47) #22, !dbg !1505
  %126 = icmp eq i8* %125, null, !dbg !1505
  br i1 %126, label %129, label %127, !dbg !1506

127:                                              ; preds = %123
  %128 = call i8* @dir_name(i8* %124) #20, !dbg !1507
  store i8* %128, i8** @program_path, align 8, !dbg !1509, !tbaa !1191
  br label %154, !dbg !1510

129:                                              ; preds = %123
  %130 = call i8* @xreadlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0)) #20, !dbg !1511
  call void @llvm.dbg.value(metadata i8* %130, metadata !1492, metadata !DIExpression()) #20, !dbg !1512
  %131 = icmp eq i8* %130, null, !dbg !1513
  br i1 %131, label %134, label %132, !dbg !1514

132:                                              ; preds = %129
  %133 = call i8* @dir_name(i8* nonnull %130) #20, !dbg !1515
  store i8* %133, i8** @program_path, align 8, !dbg !1516, !tbaa !1191
  br label %151, !dbg !1517

134:                                              ; preds = %129
  %135 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #20, !dbg !1518
  call void @llvm.dbg.value(metadata i8* %135, metadata !1492, metadata !DIExpression()) #20, !dbg !1512
  %136 = icmp eq i8* %135, null, !dbg !1519
  br i1 %136, label %151, label %137, !dbg !1520

137:                                              ; preds = %134
  %138 = call noalias i8* @xstrdup(i8* nonnull %135) #20, !dbg !1521
  call void @llvm.dbg.value(metadata i8* %138, metadata !1492, metadata !DIExpression()) #20, !dbg !1512
  %139 = call i8* @strtok(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #20, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %139, metadata !1495, metadata !DIExpression()) #20, !dbg !1523
  %140 = icmp eq i8* %139, null, !dbg !1524
  br i1 %140, label %151, label %141, !dbg !1525

141:                                              ; preds = %137, %148
  %142 = phi i8* [ %149, %148 ], [ %139, %137 ]
  call void @llvm.dbg.value(metadata i8* %142, metadata !1495, metadata !DIExpression()) #20, !dbg !1523
  %143 = call i8* @file_name_concat(i8* nonnull %142, i8* %124, i8** null) #20, !dbg !1526
  call void @llvm.dbg.value(metadata i8* %143, metadata !1499, metadata !DIExpression()) #20, !dbg !1527
  %144 = call i32 @access(i8* %143, i32 1) #20, !dbg !1528
  %145 = icmp eq i32 %144, 0, !dbg !1530
  br i1 %145, label %146, label %148, !dbg !1531

146:                                              ; preds = %141
  %147 = call i8* @dir_name(i8* %143) #20, !dbg !1532
  store i8* %147, i8** @program_path, align 8, !dbg !1534, !tbaa !1191
  call void @free(i8* %143) #20, !dbg !1535
  br label %151

148:                                              ; preds = %141
  call void @free(i8* %143) #20, !dbg !1536
  %149 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #20, !dbg !1537
  call void @llvm.dbg.value(metadata i8* %149, metadata !1495, metadata !DIExpression()) #20, !dbg !1523
  %150 = icmp eq i8* %149, null, !dbg !1524
  br i1 %150, label %151, label %141, !dbg !1525, !llvm.loop !1538

151:                                              ; preds = %148, %146, %137, %134, %132
  %152 = phi i8* [ %130, %132 ], [ null, %134 ], [ %138, %146 ], [ %138, %137 ], [ %138, %148 ], !dbg !1512
  call void @llvm.dbg.value(metadata i8* %152, metadata !1492, metadata !DIExpression()) #20, !dbg !1512
  call void @free(i8* %152) #20, !dbg !1540
  %153 = load i8*, i8** @program_path, align 8, !dbg !1541, !tbaa !1191
  br label %154

154:                                              ; preds = %127, %151
  %155 = phi i8* [ %128, %127 ], [ %153, %151 ]
  %156 = icmp eq i8* %155, null, !dbg !1541
  br i1 %156, label %157, label %159, !dbg !1543

157:                                              ; preds = %154
  %158 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #20, !dbg !1544
  store i8* %158, i8** @program_path, align 8, !dbg !1545, !tbaa !1191
  br label %159, !dbg !1546

159:                                              ; preds = %154, %157
  %160 = phi i8* [ %155, %154 ], [ %158, %157 ]
  %161 = ptrtoint i8* %160 to i64, !dbg !1547
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), metadata !1252, metadata !DIExpression()) #20, !dbg !1548
  %162 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)) #20, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %162, metadata !1253, metadata !DIExpression()) #20, !dbg !1548
  %163 = bitcast i8** %5 to i8*, !dbg !1550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %163) #20, !dbg !1550
  %164 = bitcast [3 x i8*]* %6 to i8*, !dbg !1551
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %164) #20, !dbg !1551
  %165 = bitcast [3 x i8*]* %6 to i64*, !dbg !1552
  store i64 %161, i64* %165, align 16, !dbg !1552, !tbaa !1191
  %166 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1, !dbg !1552
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i8** %166, align 8, !dbg !1552, !tbaa !1191
  %167 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 2, !dbg !1552
  store i8* null, i8** %167, align 16, !dbg !1552, !tbaa !1191
  call void @llvm.dbg.value(metadata [3 x i8*]* %6, metadata !1255, metadata !DIExpression()) #20, !dbg !1548
  %168 = bitcast i8** %7 to i8*, !dbg !1553
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %168) #20, !dbg !1553
  call void @llvm.dbg.value(metadata [3 x i8*]* %6, metadata !1255, metadata !DIExpression()) #20, !dbg !1548
  %169 = bitcast %struct.stat* %8 to i8*, !dbg !1554
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %169) #20, !dbg !1554
  %170 = load i8, i8* %160, align 1, !dbg !1555, !tbaa !1348
  %171 = icmp eq i8 %170, 0, !dbg !1555
  br i1 %171, label %174, label %172, !dbg !1557

172:                                              ; preds = %159
  %173 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0, !dbg !1552
  call void @llvm.dbg.value(metadata i8** %173, metadata !1255, metadata !DIExpression()) #20, !dbg !1548
  call void @llvm.dbg.value(metadata i8** %173, metadata !1255, metadata !DIExpression()) #20, !dbg !1548
  br label %176, !dbg !1558

174:                                              ; preds = %194, %159
  %175 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #20, !dbg !1559
  call void @llvm.dbg.value(metadata i8* %175, metadata !1257, metadata !DIExpression()) #20, !dbg !1548
  store i8* %175, i8** %7, align 8, !dbg !1561, !tbaa !1191
  br label %198, !dbg !1562

176:                                              ; preds = %194, %172
  %177 = phi i8* [ %195, %194 ], [ %160, %172 ]
  %178 = phi i8** [ %188, %194 ], [ %173, %172 ]
  call void @llvm.dbg.value(metadata i8** %178, metadata !1255, metadata !DIExpression()) #20, !dbg !1548
  call void @llvm.dbg.value(metadata i8** %7, metadata !1257, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1548
  %179 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %7, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #20, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %179, metadata !1251, metadata !DIExpression()) #20, !dbg !1548
  %180 = icmp slt i32 %179, 0, !dbg !1564
  br i1 %180, label %181, label %182, !dbg !1558

181:                                              ; preds = %176
  call void @xalloc_die() #23, !dbg !1566
  unreachable, !dbg !1566

182:                                              ; preds = %176
  %183 = load i8*, i8** %7, align 8, !dbg !1567, !tbaa !1191
  call void @llvm.dbg.value(metadata i8* %183, metadata !1257, metadata !DIExpression()) #20, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %183, metadata !1569, metadata !DIExpression()) #20, !dbg !1577
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !1576, metadata !DIExpression()) #20, !dbg !1577
  %184 = call i32 @__xstat(i32 1, i8* nonnull %183, %struct.stat* nonnull %8) #20, !dbg !1579
  %185 = icmp eq i32 %184, 0, !dbg !1580
  %186 = load i8*, i8** %7, align 8, !dbg !1548, !tbaa !1191
  br i1 %185, label %198, label %187, !dbg !1581

187:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i8* %186, metadata !1257, metadata !DIExpression()) #20, !dbg !1548
  call void @free(i8* %186) #20, !dbg !1582
  %188 = getelementptr inbounds i8*, i8** %178, i64 1, !dbg !1583
  call void @llvm.dbg.value(metadata i8** %188, metadata !1255, metadata !DIExpression()) #20, !dbg !1548
  %189 = load i8*, i8** %188, align 8, !dbg !1584, !tbaa !1191
  %190 = icmp eq i8* %189, null, !dbg !1584
  br i1 %190, label %191, label %194, !dbg !1586

191:                                              ; preds = %187
  %192 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i32 5) #20, !dbg !1587
  %193 = call i8* @quote(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #20, !dbg !1587
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %192, i8* %193) #20, !dbg !1587
  unreachable, !dbg !1587

194:                                              ; preds = %187
  call void @llvm.dbg.value(metadata i8** %188, metadata !1255, metadata !DIExpression()) #20, !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %169) #20, !dbg !1588
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %169) #20, !dbg !1554
  %195 = load i8*, i8** %188, align 8, !dbg !1589, !tbaa !1191
  %196 = load i8, i8* %195, align 1, !dbg !1555, !tbaa !1348
  %197 = icmp eq i8 %196, 0, !dbg !1555
  br i1 %197, label %174, label %176, !dbg !1557

198:                                              ; preds = %182, %174
  %199 = phi i8* [ %175, %174 ], [ %186, %182 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8** %188, metadata !1255, metadata !DIExpression()) #20, !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %169) #20, !dbg !1588
  %200 = icmp eq i8* %162, null, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %199, metadata !1257, metadata !DIExpression()) #20, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %199, metadata !1257, metadata !DIExpression()) #20, !dbg !1548
  call void @llvm.dbg.value(metadata i8** %5, metadata !1254, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1548
  call void @llvm.dbg.value(metadata i8** %5, metadata !1254, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1548
  br i1 %200, label %203, label %201, !dbg !1593

201:                                              ; preds = %198
  %202 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %162, i8* %199) #20, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %202, metadata !1251, metadata !DIExpression()) #20, !dbg !1548
  br label %205, !dbg !1595

203:                                              ; preds = %198
  %204 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* %199) #20, !dbg !1596
  call void @llvm.dbg.value(metadata i32 %204, metadata !1251, metadata !DIExpression()) #20, !dbg !1548
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ], !dbg !1590
  call void @llvm.dbg.value(metadata i32 %206, metadata !1251, metadata !DIExpression()) #20, !dbg !1548
  %207 = icmp slt i32 %206, 0, !dbg !1597
  br i1 %207, label %208, label %209, !dbg !1599

208:                                              ; preds = %205
  call void @xalloc_die() #23, !dbg !1600
  unreachable, !dbg !1600

209:                                              ; preds = %205
  %210 = load i8*, i8** %7, align 8, !dbg !1601, !tbaa !1191
  call void @llvm.dbg.value(metadata i8* %210, metadata !1257, metadata !DIExpression()) #20, !dbg !1548
  call void @free(i8* %210) #20, !dbg !1602
  %211 = load i8*, i8** %5, align 8, !dbg !1603, !tbaa !1191
  call void @llvm.dbg.value(metadata i8* %211, metadata !1254, metadata !DIExpression()) #20, !dbg !1548
  %212 = call i32 @putenv(i8* %211) #20, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %212, metadata !1251, metadata !DIExpression()) #20, !dbg !1548
  %213 = icmp eq i32 %212, 0, !dbg !1605
  br i1 %213, label %220, label %214, !dbg !1607

214:                                              ; preds = %209
  %215 = tail call i32* @__errno_location() #25, !dbg !1608
  %216 = load i32, i32* %215, align 4, !dbg !1608, !tbaa !1311
  %217 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #20, !dbg !1608
  %218 = load i8*, i8** %5, align 8, !dbg !1608, !tbaa !1191
  call void @llvm.dbg.value(metadata i8* %218, metadata !1254, metadata !DIExpression()) #20, !dbg !1548
  %219 = call i8* @quote(i8* %218) #20, !dbg !1608
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %216, i8* %217, i8* %219) #20, !dbg !1608
  unreachable, !dbg !1608

220:                                              ; preds = %209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %168) #20, !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %164) #20, !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %163) #20, !dbg !1610
  %221 = load i8*, i8** @program_path, align 8, !dbg !1611, !tbaa !1191
  call void @free(i8* %221) #20, !dbg !1612
  %222 = load i8*, i8** %67, align 8, !dbg !1613, !tbaa !1191
  %223 = call i32 @execvp(i8* %222, i8** nonnull %67) #20, !dbg !1614
  %224 = tail call i32* @__errno_location() #25, !dbg !1615
  %225 = load i32, i32* %224, align 4, !dbg !1615, !tbaa !1311
  %226 = icmp eq i32 %225, 2, !dbg !1616
  %227 = select i1 %226, i32 127, i32 126, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %227, metadata !1247, metadata !DIExpression()), !dbg !1298
  %228 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 5) #20, !dbg !1617
  %229 = load i8*, i8** %67, align 8, !dbg !1618, !tbaa !1191
  %230 = call i8* @quote(i8* %229) #20, !dbg !1619
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %225, i8* %228, i8* %230) #20, !dbg !1620
  ret i32 %227, !dbg !1621

231:                                              ; preds = %117
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #20, !dbg !1441
  %232 = load i8, i8* %119, align 1, !dbg !1442, !tbaa !1348
  %233 = icmp eq i8 %232, 76, !dbg !1443
  %234 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 1), align 8, !dbg !1444, !tbaa !1342
  %235 = add i32 %234, 128, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %234, metadata !1445, metadata !DIExpression()) #20, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %234, metadata !1445, metadata !DIExpression()) #20, !dbg !1450
  %236 = icmp ult i32 %235, 384, !dbg !1444
  br i1 %233, label %248, label %237, !dbg !1452

237:                                              ; preds = %231
  br i1 %236, label %238, label %244, !dbg !1462

238:                                              ; preds = %237
  %239 = tail call i32** @__ctype_toupper_loc() #25, !dbg !1463
  %240 = load i32*, i32** %239, align 8, !dbg !1464, !tbaa !1191
  %241 = sext i32 %234 to i64, !dbg !1465
  %242 = getelementptr inbounds i32, i32* %240, i64 %241, !dbg !1465
  %243 = load i32, i32* %242, align 4, !dbg !1465, !tbaa !1311
  br label %244, !dbg !1466

244:                                              ; preds = %238, %237
  %245 = phi i32 [ %243, %238 ], [ %234, %237 ], !dbg !1467
  call void @llvm.dbg.value(metadata i32 %245, metadata !1426, metadata !DIExpression()) #20, !dbg !1468
  %246 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 0), align 8, !dbg !1469, !tbaa !1470
  call void @llvm.dbg.value(metadata i8** %3, metadata !1412, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1437
  %247 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %245, i64 %246) #20, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %247, metadata !1417, metadata !DIExpression()) #20, !dbg !1437
  br label %258

248:                                              ; preds = %231
  br i1 %236, label %249, label %255, !dbg !1453

249:                                              ; preds = %248
  %250 = tail call i32** @__ctype_toupper_loc() #25, !dbg !1454
  %251 = load i32*, i32** %250, align 8, !dbg !1455, !tbaa !1191
  %252 = sext i32 %234 to i64, !dbg !1456
  %253 = getelementptr inbounds i32, i32* %251, i64 %252, !dbg !1456
  %254 = load i32, i32* %253, align 4, !dbg !1456, !tbaa !1311
  br label %255, !dbg !1457

255:                                              ; preds = %249, %248
  %256 = phi i32 [ %254, %249 ], [ %234, %248 ], !dbg !1458
  call void @llvm.dbg.value(metadata i32 %256, metadata !1418, metadata !DIExpression()) #20, !dbg !1459
  call void @llvm.dbg.value(metadata i8** %3, metadata !1412, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1437
  %257 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %256) #20, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %257, metadata !1417, metadata !DIExpression()) #20, !dbg !1437
  br label %258, !dbg !1461

258:                                              ; preds = %255, %244
  %259 = phi i32 [ %257, %255 ], [ %247, %244 ], !dbg !1444
  call void @llvm.dbg.value(metadata i32 %259, metadata !1417, metadata !DIExpression()) #20, !dbg !1437
  %260 = icmp slt i32 %259, 0, !dbg !1471
  br i1 %260, label %105, label %261, !dbg !1473

261:                                              ; preds = %258
  %262 = load i8*, i8** %3, align 8, !dbg !1475, !tbaa !1191
  call void @llvm.dbg.value(metadata i8* %262, metadata !1412, metadata !DIExpression()) #20, !dbg !1437
  %263 = call i32 @putenv(i8* %262) #20, !dbg !1477
  %264 = icmp eq i32 %263, 0, !dbg !1478
  br i1 %264, label %265, label %110, !dbg !1479

265:                                              ; preds = %261
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()) #20, !dbg !1433
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #20, !dbg !1482
  br label %266, !dbg !1483

266:                                              ; preds = %265, %117
  %267 = phi i8 [ 1, %265 ], [ %118, %117 ], !dbg !1433
  call void @llvm.dbg.value(metadata i8 %267, metadata !1405, metadata !DIExpression()) #20, !dbg !1433
  call void @llvm.dbg.value(metadata i64 2, metadata !1410, metadata !DIExpression()) #20, !dbg !1436
  %268 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 2), align 16, !dbg !1438, !tbaa !1360
  %269 = icmp eq i8* %268, null, !dbg !1439
  br i1 %269, label %305, label %270, !dbg !1440

270:                                              ; preds = %266
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #20, !dbg !1441
  %271 = load i8, i8* %268, align 1, !dbg !1442, !tbaa !1348
  %272 = icmp eq i8 %271, 76, !dbg !1443
  %273 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 1), align 8, !dbg !1444, !tbaa !1342
  %274 = add i32 %273, 128, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %273, metadata !1445, metadata !DIExpression()) #20, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %273, metadata !1445, metadata !DIExpression()) #20, !dbg !1450
  %275 = icmp ult i32 %274, 384, !dbg !1444
  br i1 %272, label %287, label %276, !dbg !1452

276:                                              ; preds = %270
  br i1 %275, label %277, label %283, !dbg !1462

277:                                              ; preds = %276
  %278 = tail call i32** @__ctype_toupper_loc() #25, !dbg !1463
  %279 = load i32*, i32** %278, align 8, !dbg !1464, !tbaa !1191
  %280 = sext i32 %273 to i64, !dbg !1465
  %281 = getelementptr inbounds i32, i32* %279, i64 %280, !dbg !1465
  %282 = load i32, i32* %281, align 4, !dbg !1465, !tbaa !1311
  br label %283, !dbg !1466

283:                                              ; preds = %277, %276
  %284 = phi i32 [ %282, %277 ], [ %273, %276 ], !dbg !1467
  call void @llvm.dbg.value(metadata i32 %284, metadata !1426, metadata !DIExpression()) #20, !dbg !1468
  %285 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 0), align 16, !dbg !1469, !tbaa !1470
  call void @llvm.dbg.value(metadata i8** %3, metadata !1412, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1437
  %286 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %284, i64 %285) #20, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %286, metadata !1417, metadata !DIExpression()) #20, !dbg !1437
  br label %297

287:                                              ; preds = %270
  br i1 %275, label %288, label %294, !dbg !1453

288:                                              ; preds = %287
  %289 = tail call i32** @__ctype_toupper_loc() #25, !dbg !1454
  %290 = load i32*, i32** %289, align 8, !dbg !1455, !tbaa !1191
  %291 = sext i32 %273 to i64, !dbg !1456
  %292 = getelementptr inbounds i32, i32* %290, i64 %291, !dbg !1456
  %293 = load i32, i32* %292, align 4, !dbg !1456, !tbaa !1311
  br label %294, !dbg !1457

294:                                              ; preds = %288, %287
  %295 = phi i32 [ %293, %288 ], [ %273, %287 ], !dbg !1458
  call void @llvm.dbg.value(metadata i32 %295, metadata !1418, metadata !DIExpression()) #20, !dbg !1459
  call void @llvm.dbg.value(metadata i8** %3, metadata !1412, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1437
  %296 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %295) #20, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %296, metadata !1417, metadata !DIExpression()) #20, !dbg !1437
  br label %297, !dbg !1461

297:                                              ; preds = %294, %283
  %298 = phi i32 [ %296, %294 ], [ %286, %283 ], !dbg !1444
  call void @llvm.dbg.value(metadata i32 %298, metadata !1417, metadata !DIExpression()) #20, !dbg !1437
  %299 = icmp slt i32 %298, 0, !dbg !1471
  br i1 %299, label %105, label %300, !dbg !1473

300:                                              ; preds = %297
  %301 = load i8*, i8** %3, align 8, !dbg !1475, !tbaa !1191
  call void @llvm.dbg.value(metadata i8* %301, metadata !1412, metadata !DIExpression()) #20, !dbg !1437
  %302 = call i32 @putenv(i8* %301) #20, !dbg !1477
  %303 = icmp eq i32 %302, 0, !dbg !1478
  br i1 %303, label %304, label %110, !dbg !1479

304:                                              ; preds = %300
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()) #20, !dbg !1433
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #20, !dbg !1482
  br label %305, !dbg !1483

305:                                              ; preds = %304, %266
  %306 = phi i8 [ 1, %304 ], [ %267, %266 ], !dbg !1433
  call void @llvm.dbg.value(metadata i8 %306, metadata !1405, metadata !DIExpression()) #20, !dbg !1433
  call void @llvm.dbg.value(metadata i64 3, metadata !1410, metadata !DIExpression()) #20, !dbg !1436
  %307 = and i8 %306, 1, !dbg !1622
  %308 = icmp eq i8 %307, 0, !dbg !1622
  br i1 %308, label %121, label %123, !dbg !1623
}

; Function Attrs: nounwind
declare !dbg !101 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !104 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !107 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !114 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !129 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !159 i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare !dbg !166 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !171 i32 @access(i8* nocapture readonly, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !143 void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !146 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1624 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1626, metadata !DIExpression()), !dbg !1627
  store i8* %0, i8** @file_name, align 8, !dbg !1628, !tbaa !1191
  ret void, !dbg !1629
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1630 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1634, metadata !DIExpression()), !dbg !1635
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1636, !tbaa !1637
  ret void, !dbg !1639
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1640 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1645, !tbaa !1191
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !1646
  %3 = icmp eq i32 %2, 0, !dbg !1647
  br i1 %3, label %22, label %4, !dbg !1648

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1649, !tbaa !1637, !range !1650
  %6 = icmp eq i8 %5, 0, !dbg !1649
  br i1 %6, label %11, label %7, !dbg !1651

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1652
  %9 = load i32, i32* %8, align 4, !dbg !1652, !tbaa !1311
  %10 = icmp eq i32 %9, 32, !dbg !1653
  br i1 %10, label %22, label %11, !dbg !1654

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 5) #20, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %12, metadata !1642, metadata !DIExpression()), !dbg !1656
  %13 = load i8*, i8** @file_name, align 8, !dbg !1657, !tbaa !1191
  %14 = icmp eq i8* %13, null, !dbg !1657
  %15 = tail call i32* @__errno_location() #25, !dbg !1659
  %16 = load i32, i32* %15, align 4, !dbg !1659, !tbaa !1311
  br i1 %14, label %19, label %17, !dbg !1660

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !1661
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.63, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !1662
  br label %20, !dbg !1662

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.64, i64 0, i64 0), i8* %12) #20, !dbg !1663
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1664, !tbaa !1311
  tail call void @_exit(i32 %21) #23, !dbg !1665
  unreachable, !dbg !1665

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1666, !tbaa !1191
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !1668
  %25 = icmp eq i32 %24, 0, !dbg !1669
  br i1 %25, label %28, label %26, !dbg !1670

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1671, !tbaa !1311
  tail call void @_exit(i32 %27) #23, !dbg !1672
  unreachable, !dbg !1672

28:                                               ; preds = %22
  ret void, !dbg !1673
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @dir_name(i8* %0) local_unnamed_addr #8 !dbg !1674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1676, metadata !DIExpression()), !dbg !1678
  %2 = tail call i8* @mdir_name(i8* %0) #20, !dbg !1679
  call void @llvm.dbg.value(metadata i8* %2, metadata !1677, metadata !DIExpression()), !dbg !1678
  %3 = icmp eq i8* %2, null, !dbg !1680
  br i1 %3, label %4, label %5, !dbg !1682

4:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !1683
  unreachable, !dbg !1683

5:                                                ; preds = %1
  ret i8* %2, !dbg !1684
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @dir_len(i8* %0) local_unnamed_addr #12 !dbg !1685 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1689, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 0, metadata !1690, metadata !DIExpression()), !dbg !1692
  %2 = load i8, i8* %0, align 1, !dbg !1693, !tbaa !1348
  %3 = icmp eq i8 %2, 47, !dbg !1693
  %4 = zext i1 %3 to i64, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %4, metadata !1690, metadata !DIExpression()), !dbg !1692
  %5 = tail call i8* @last_component(i8* nonnull %0) #22, !dbg !1695
  %6 = ptrtoint i8* %5 to i64, !dbg !1697
  %7 = ptrtoint i8* %0 to i64, !dbg !1697
  %8 = sub i64 %6, %7, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %8, metadata !1691, metadata !DIExpression()), !dbg !1692
  br label %9, !dbg !1698

9:                                                ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ], !dbg !1699
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  %11 = icmp ugt i64 %10, %4, !dbg !1700
  br i1 %11, label %12, label %17, !dbg !1702

12:                                               ; preds = %9
  %13 = add i64 %10, -1, !dbg !1703
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1703
  %15 = load i8, i8* %14, align 1, !dbg !1703, !tbaa !1348
  %16 = icmp eq i8 %15, 47, !dbg !1703
  br i1 %16, label %9, label %17, !dbg !1705, !llvm.loop !1706

17:                                               ; preds = %12, %9
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()), !dbg !1692
  ret i64 %10, !dbg !1708
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @mdir_name(i8* %0) local_unnamed_addr #13 !dbg !1709 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1711, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8* %0, metadata !1689, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 0, metadata !1690, metadata !DIExpression()) #20, !dbg !1716
  %2 = load i8, i8* %0, align 1, !dbg !1718, !tbaa !1348
  %3 = icmp eq i8 %2, 47, !dbg !1718
  %4 = zext i1 %3 to i64, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %4, metadata !1690, metadata !DIExpression()) #20, !dbg !1716
  %5 = tail call i8* @last_component(i8* nonnull %0) #22, !dbg !1720
  %6 = ptrtoint i8* %5 to i64, !dbg !1721
  %7 = ptrtoint i8* %0 to i64, !dbg !1721
  %8 = sub i64 %6, %7, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %8, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  br label %9, !dbg !1722

9:                                                ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ], !dbg !1723
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  %11 = icmp ugt i64 %10, %4, !dbg !1724
  br i1 %11, label %12, label %17, !dbg !1725

12:                                               ; preds = %9
  %13 = add i64 %10, -1, !dbg !1726
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1726
  %15 = load i8, i8* %14, align 1, !dbg !1726, !tbaa !1348
  %16 = icmp eq i8 %15, 47, !dbg !1726
  br i1 %16, label %9, label %17, !dbg !1727, !llvm.loop !1728

17:                                               ; preds = %9, %12
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1691, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %10, metadata !1712, metadata !DIExpression()), !dbg !1715
  %18 = icmp eq i64 %10, 0, !dbg !1730
  call void @llvm.dbg.value(metadata i1 %18, metadata !1713, metadata !DIExpression()), !dbg !1715
  %19 = zext i1 %18 to i64, !dbg !1731
  %20 = add i64 %10, 1, !dbg !1732
  %21 = add i64 %20, %19, !dbg !1733
  %22 = tail call noalias i8* @malloc(i64 %21) #20, !dbg !1734
  call void @llvm.dbg.value(metadata i8* %22, metadata !1714, metadata !DIExpression()), !dbg !1715
  %23 = icmp eq i8* %22, null, !dbg !1735
  br i1 %23, label %29, label %24, !dbg !1737

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %22, metadata !1738, metadata !DIExpression()) #20, !dbg !1748
  call void @llvm.dbg.value(metadata i8* %0, metadata !1746, metadata !DIExpression()) #20, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %10, metadata !1747, metadata !DIExpression()) #20, !dbg !1748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %22, i8* nonnull align 1 %0, i64 %10, i1 false) #20, !dbg !1750
  br i1 %18, label %25, label %26, !dbg !1751

25:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !1712, metadata !DIExpression()), !dbg !1715
  store i8 46, i8* %22, align 1, !dbg !1752, !tbaa !1348
  br label %26, !dbg !1754

26:                                               ; preds = %25, %24
  %27 = phi i64 [ 1, %25 ], [ %10, %24 ], !dbg !1715
  call void @llvm.dbg.value(metadata i64 %27, metadata !1712, metadata !DIExpression()), !dbg !1715
  %28 = getelementptr inbounds i8, i8* %22, i64 %27, !dbg !1755
  store i8 0, i8* %28, align 1, !dbg !1756, !tbaa !1348
  br label %29, !dbg !1757

29:                                               ; preds = %17, %26
  ret i8* %22, !dbg !1758
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #14 !dbg !1759 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1761, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %0, metadata !1762, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1765
  br label %2, !dbg !1766

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8* %3, metadata !1762, metadata !DIExpression()), !dbg !1765
  %4 = load i8, i8* %3, align 1, !dbg !1767, !tbaa !1348
  %5 = icmp eq i8 %4, 47, !dbg !1767
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1768
  call void @llvm.dbg.value(metadata i8* %6, metadata !1762, metadata !DIExpression()), !dbg !1765
  br i1 %5, label %2, label %7, !dbg !1766, !llvm.loop !1769

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1770
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1773
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1774
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %11, metadata !1764, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %10, metadata !1763, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %9, metadata !1762, metadata !DIExpression()), !dbg !1765
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1775

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !1776
  %14 = icmp eq i8 %13, 0, !dbg !1776
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1780
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1780
  br label %17, !dbg !1780

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1765
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %19, metadata !1764, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %18, metadata !1762, metadata !DIExpression()), !dbg !1765
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1781
  call void @llvm.dbg.value(metadata i8* %20, metadata !1763, metadata !DIExpression()), !dbg !1765
  %21 = load i8, i8* %20, align 1, !dbg !1770, !tbaa !1348
  br label %7, !dbg !1782, !llvm.loop !1783

22:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !1762, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %9, metadata !1762, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %9, metadata !1762, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %9, metadata !1762, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %9, metadata !1762, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %9, metadata !1762, metadata !DIExpression()), !dbg !1765
  ret i8* %9, !dbg !1785
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #12 !dbg !1786 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1788, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 0, metadata !1790, metadata !DIExpression()), !dbg !1791
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %2, metadata !1789, metadata !DIExpression()), !dbg !1791
  br label %3, !dbg !1794

3:                                                ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !1795
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  %5 = icmp ugt i64 %4, 1, !dbg !1796
  br i1 %5, label %6, label %11, !dbg !1798

6:                                                ; preds = %3
  %7 = add i64 %4, -1, !dbg !1799
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1799
  %9 = load i8, i8* %8, align 1, !dbg !1799, !tbaa !1348
  %10 = icmp eq i8 %9, 47, !dbg !1799
  br i1 %10, label %3, label %11, !dbg !1800, !llvm.loop !1801

11:                                               ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %4, metadata !1789, metadata !DIExpression()), !dbg !1791
  ret i64 %4, !dbg !1803
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @file_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !1804 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1806, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %1, metadata !1807, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8** %2, metadata !1808, metadata !DIExpression()), !dbg !1810
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #20, !dbg !1811
  call void @llvm.dbg.value(metadata i8* %4, metadata !1809, metadata !DIExpression()), !dbg !1810
  %5 = icmp eq i8* %4, null, !dbg !1812
  br i1 %5, label %6, label %7, !dbg !1814

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !1815
  unreachable, !dbg !1815

7:                                                ; preds = %3
  ret i8* %4, !dbg !1816
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !1817 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1819, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8* %1, metadata !1820, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8** %2, metadata !1821, metadata !DIExpression()), !dbg !1829
  %4 = tail call i8* @last_component(i8* %0) #22, !dbg !1830
  call void @llvm.dbg.value(metadata i8* %4, metadata !1822, metadata !DIExpression()), !dbg !1829
  %5 = tail call i64 @base_len(i8* %4) #22, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %5, metadata !1823, metadata !DIExpression()), !dbg !1829
  %6 = ptrtoint i8* %4 to i64, !dbg !1832
  %7 = ptrtoint i8* %0 to i64, !dbg !1832
  %8 = sub i64 %6, %7, !dbg !1832
  %9 = add i64 %8, %5, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %9, metadata !1824, metadata !DIExpression()), !dbg !1829
  %10 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #22, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %10, metadata !1825, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1829
  %11 = icmp eq i64 %5, 0, !dbg !1835
  br i1 %11, label %21, label %12, !dbg !1837

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1838
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1838
  %15 = load i8, i8* %14, align 1, !dbg !1838, !tbaa !1348
  %16 = icmp eq i8 %15, 47, !dbg !1838
  br i1 %16, label %25, label %17, !dbg !1841

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1842, !tbaa !1348
  %19 = icmp eq i8 %18, 47, !dbg !1842
  %20 = select i1 %19, i8 0, i8 47, !dbg !1843
  br label %25, !dbg !1843

21:                                               ; preds = %3
  %22 = load i8, i8* %1, align 1, !dbg !1844, !tbaa !1348
  %23 = icmp eq i8 %22, 47, !dbg !1844
  %24 = select i1 %23, i8 46, i8 0, !dbg !1846
  br label %25, !dbg !1846

25:                                               ; preds = %21, %17, %12
  %26 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1829
  call void @llvm.dbg.value(metadata i8 %26, metadata !1826, metadata !DIExpression()), !dbg !1829
  %27 = icmp ne i8 %26, 0, !dbg !1847
  %28 = zext i1 %27 to i64, !dbg !1848
  %29 = add i64 %10, 1, !dbg !1849
  %30 = add i64 %29, %9, !dbg !1850
  %31 = add i64 %30, %28, !dbg !1851
  %32 = tail call noalias i8* @malloc(i64 %31) #20, !dbg !1852
  call void @llvm.dbg.value(metadata i8* %32, metadata !1827, metadata !DIExpression()), !dbg !1829
  %33 = icmp eq i8* %32, null, !dbg !1853
  br i1 %33, label %41, label %34, !dbg !1855

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8* %32, metadata !1856, metadata !DIExpression()) #20, !dbg !1861
  call void @llvm.dbg.value(metadata i8* %0, metadata !1859, metadata !DIExpression()) #20, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %9, metadata !1860, metadata !DIExpression()) #20, !dbg !1861
  %35 = tail call i8* @__mempcpy_chk(i8* nonnull %32, i8* nonnull %0, i64 %9, i64 -1) #20, !dbg !1863
  call void @llvm.dbg.value(metadata i8* %35, metadata !1828, metadata !DIExpression()), !dbg !1829
  store i8 %26, i8* %35, align 1, !dbg !1864, !tbaa !1348
  %36 = getelementptr inbounds i8, i8* %35, i64 %28, !dbg !1865
  call void @llvm.dbg.value(metadata i8* %36, metadata !1828, metadata !DIExpression()), !dbg !1829
  %37 = icmp eq i8** %2, null, !dbg !1866
  br i1 %37, label %39, label %38, !dbg !1868

38:                                               ; preds = %34
  store i8* %36, i8** %2, align 8, !dbg !1869, !tbaa !1191
  br label %39, !dbg !1870

39:                                               ; preds = %34, %38
  call void @llvm.dbg.value(metadata i8* %36, metadata !1856, metadata !DIExpression()) #20, !dbg !1871
  call void @llvm.dbg.value(metadata i8* %1, metadata !1859, metadata !DIExpression()) #20, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %10, metadata !1860, metadata !DIExpression()) #20, !dbg !1871
  %40 = tail call i8* @__mempcpy_chk(i8* nonnull %36, i8* nonnull %1, i64 %10, i64 -1) #20, !dbg !1873
  call void @llvm.dbg.value(metadata i8* %40, metadata !1828, metadata !DIExpression()), !dbg !1829
  store i8 0, i8* %40, align 1, !dbg !1874, !tbaa !1348
  br label %41, !dbg !1875

41:                                               ; preds = %25, %39
  ret i8* %32, !dbg !1876
}

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1877 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1879, metadata !DIExpression()), !dbg !1882
  %2 = icmp eq i8* %0, null, !dbg !1883
  br i1 %2, label %3, label %6, !dbg !1885

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1886, !tbaa !1191
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1888
  tail call void @abort() #23, !dbg !1889
  unreachable, !dbg !1889

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1890
  call void @llvm.dbg.value(metadata i8* %7, metadata !1880, metadata !DIExpression()), !dbg !1882
  %8 = icmp eq i8* %7, null, !dbg !1891
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1892
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1892
  call void @llvm.dbg.value(metadata i8* %10, metadata !1881, metadata !DIExpression()), !dbg !1882
  %11 = ptrtoint i8* %10 to i64, !dbg !1893
  %12 = ptrtoint i8* %0 to i64, !dbg !1893
  %13 = sub i64 %11, %12, !dbg !1893
  %14 = icmp sgt i64 %13, 6, !dbg !1895
  br i1 %14, label %15, label %24, !dbg !1896

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1897
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.82, i64 0, i64 0), i64 7) #22, !dbg !1898
  %18 = icmp eq i32 %17, 0, !dbg !1899
  br i1 %18, label %19, label %24, !dbg !1900

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1879, metadata !DIExpression()), !dbg !1882
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i64 3) #22, !dbg !1901
  %21 = icmp eq i32 %20, 0, !dbg !1904
  br i1 %21, label %22, label %24, !dbg !1905

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1906
  call void @llvm.dbg.value(metadata i8* %23, metadata !1879, metadata !DIExpression()), !dbg !1882
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1908, !tbaa !1191
  br label %24, !dbg !1909

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1879, metadata !DIExpression()), !dbg !1882
  store i8* %25, i8** @program_name, align 8, !dbg !1910, !tbaa !1191
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1911, !tbaa !1191
  ret void, !dbg !1912
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1913 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1918, metadata !DIExpression()), !dbg !1921
  %2 = tail call i32* @__errno_location() #25, !dbg !1922
  %3 = load i32, i32* %2, align 4, !dbg !1922, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %3, metadata !1919, metadata !DIExpression()), !dbg !1921
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1923
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1923
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1923
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !1924
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1924
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1920, metadata !DIExpression()), !dbg !1921
  store i32 %3, i32* %2, align 4, !dbg !1925, !tbaa !1311
  ret %struct.quoting_options* %8, !dbg !1926
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1927 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1931, metadata !DIExpression()), !dbg !1932
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1933
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1933
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1934
  %5 = load i32, i32* %4, align 8, !dbg !1934, !tbaa !1935
  ret i32 %5, !dbg !1937
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1938 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1942, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %1, metadata !1943, metadata !DIExpression()), !dbg !1944
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1945
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1945
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1946
  store i32 %1, i32* %5, align 8, !dbg !1947, !tbaa !1935
  ret void, !dbg !1948
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1949 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1953, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %1, metadata !1954, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32 %2, metadata !1955, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %1, metadata !1956, metadata !DIExpression()), !dbg !1962
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1963
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1963
  %6 = lshr i8 %1, 5, !dbg !1964
  %7 = zext i8 %6 to i64, !dbg !1964
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1965
  call void @llvm.dbg.value(metadata i32* %8, metadata !1958, metadata !DIExpression()), !dbg !1962
  %9 = and i8 %1, 31, !dbg !1966
  %10 = zext i8 %9 to i32, !dbg !1966
  call void @llvm.dbg.value(metadata i32 %10, metadata !1960, metadata !DIExpression()), !dbg !1962
  %11 = load i32, i32* %8, align 4, !dbg !1967, !tbaa !1311
  %12 = lshr i32 %11, %10, !dbg !1968
  %13 = and i32 %12, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %13, metadata !1961, metadata !DIExpression()), !dbg !1962
  %14 = and i32 %2, 1, !dbg !1970
  %15 = xor i32 %13, %14, !dbg !1971
  %16 = shl i32 %15, %10, !dbg !1972
  %17 = xor i32 %16, %11, !dbg !1973
  store i32 %17, i32* %8, align 4, !dbg !1973, !tbaa !1311
  ret i32 %13, !dbg !1974
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1975 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1979, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i32 %1, metadata !1980, metadata !DIExpression()), !dbg !1982
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1983
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1985
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1979, metadata !DIExpression()), !dbg !1982
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1986
  %6 = load i32, i32* %5, align 4, !dbg !1986, !tbaa !1987
  call void @llvm.dbg.value(metadata i32 %6, metadata !1981, metadata !DIExpression()), !dbg !1982
  store i32 %1, i32* %5, align 4, !dbg !1988, !tbaa !1987
  ret i32 %6, !dbg !1989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1990 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1994, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %1, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %2, metadata !1996, metadata !DIExpression()), !dbg !1997
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1998
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()), !dbg !1997
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2001
  store i32 10, i32* %6, align 8, !dbg !2002, !tbaa !1935
  %7 = icmp ne i8* %1, null, !dbg !2003
  %8 = icmp ne i8* %2, null, !dbg !2005
  %9 = and i1 %7, %8, !dbg !2006
  br i1 %9, label %11, label %10, !dbg !2006

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2007
  unreachable, !dbg !2007

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2008
  store i8* %1, i8** %12, align 8, !dbg !2009, !tbaa !2010
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2011
  store i8* %2, i8** %13, align 8, !dbg !2012, !tbaa !2013
  ret void, !dbg !2014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2019, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64 %1, metadata !2020, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %2, metadata !2021, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64 %3, metadata !2022, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2023, metadata !DIExpression()), !dbg !2027
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2028
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2028
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2024, metadata !DIExpression()), !dbg !2027
  %8 = tail call i32* @__errno_location() #25, !dbg !2029
  %9 = load i32, i32* %8, align 4, !dbg !2029, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %9, metadata !2025, metadata !DIExpression()), !dbg !2027
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2030
  %11 = load i32, i32* %10, align 8, !dbg !2030, !tbaa !1935
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2031
  %13 = load i32, i32* %12, align 4, !dbg !2031, !tbaa !1987
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2032
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2033
  %16 = load i8*, i8** %15, align 8, !dbg !2033, !tbaa !2010
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2034
  %18 = load i8*, i8** %17, align 8, !dbg !2034, !tbaa !2013
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %19, metadata !2026, metadata !DIExpression()), !dbg !2027
  store i32 %9, i32* %8, align 4, !dbg !2036, !tbaa !1311
  ret i64 %19, !dbg !2037
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2038 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %1, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %2, metadata !2046, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %3, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %4, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %5, metadata !2049, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32* %6, metadata !2050, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %7, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %8, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 0, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 0, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* null, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 0, metadata !2057, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2102
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2103
  %14 = icmp eq i64 %13, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i1 %14, metadata !2059, metadata !DIExpression()), !dbg !2102
  %15 = lshr i32 %5, 1, !dbg !2105
  %16 = trunc i32 %15 to i8, !dbg !2105
  %17 = and i8 %16, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i8 %17, metadata !2060, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2063, metadata !DIExpression()), !dbg !2102
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2106
  %19 = and i32 %5, 4, !dbg !2108
  %20 = icmp eq i32 %19, 0, !dbg !2108
  %21 = and i32 %5, 1, !dbg !2111
  %22 = icmp eq i32 %21, 0, !dbg !2111
  %23 = bitcast i64* %10 to i8*, !dbg !2114
  %24 = bitcast i32* %12 to i8*, !dbg !2115
  %25 = icmp eq i32* %6, null, !dbg !2116
  br label %26, !dbg !2118

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2119
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2120
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2121
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2122
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2102
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2123
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2124
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2125
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %38, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %37, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %36, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %35, metadata !2060, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %34, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %33, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %32, metadata !2057, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %31, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %30, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 0, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %29, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %28, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %27, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.label(metadata !2096), !dbg !2126
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
  ], !dbg !2127

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2060, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %35, metadata !2060, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 5, metadata !2048, metadata !DIExpression()), !dbg !2102
  br label %92, !dbg !2128

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2060, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 5, metadata !2048, metadata !DIExpression()), !dbg !2102
  %42 = and i8 %35, 1, !dbg !2130
  %43 = icmp eq i8 %42, 0, !dbg !2130
  br i1 %43, label %44, label %92, !dbg !2128

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2132
  br i1 %45, label %92, label %46, !dbg !2135

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2132, !tbaa !1348
  br label %92, !dbg !2132

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 %27), !dbg !2136
  call void @llvm.dbg.value(metadata i8* %48, metadata !2051, metadata !DIExpression()), !dbg !2102
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 %27), !dbg !2140
  call void @llvm.dbg.value(metadata i8* %49, metadata !2052, metadata !DIExpression()), !dbg !2102
  br label %50, !dbg !2141

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %51, metadata !2051, metadata !DIExpression()), !dbg !2102
  %53 = and i8 %35, 1, !dbg !2142
  %54 = icmp eq i8 %53, 0, !dbg !2142
  br i1 %54, label %55, label %70, !dbg !2144

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 0, metadata !2054, metadata !DIExpression()), !dbg !2102
  %56 = load i8, i8* %51, align 1, !dbg !2145, !tbaa !1348
  %57 = icmp eq i8 %56, 0, !dbg !2148
  br i1 %57, label %70, label %58, !dbg !2148

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %61, metadata !2054, metadata !DIExpression()), !dbg !2102
  %62 = icmp ult i64 %61, %39, !dbg !2149
  br i1 %62, label %63, label %65, !dbg !2152

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2149
  store i8 %59, i8* %64, align 1, !dbg !2149, !tbaa !1348
  br label %65, !dbg !2149

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %66, metadata !2054, metadata !DIExpression()), !dbg !2102
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2153
  call void @llvm.dbg.value(metadata i8* %67, metadata !2056, metadata !DIExpression()), !dbg !2102
  %68 = load i8, i8* %67, align 1, !dbg !2145, !tbaa !1348
  %69 = icmp eq i8 %68, 0, !dbg !2148
  br i1 %69, label %70, label %58, !dbg !2148, !llvm.loop !2154

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2156
  call void @llvm.dbg.value(metadata i64 %71, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %52, metadata !2056, metadata !DIExpression()), !dbg !2102
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %72, metadata !2057, metadata !DIExpression()), !dbg !2102
  br label %92, !dbg !2158

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2058, metadata !DIExpression()), !dbg !2102
  br label %74, !dbg !2159

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2102
  call void @llvm.dbg.value(metadata i8 %75, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2060, metadata !DIExpression()), !dbg !2102
  br label %76, !dbg !2160

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2122
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2102
  call void @llvm.dbg.value(metadata i8 %78, metadata !2060, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %77, metadata !2058, metadata !DIExpression()), !dbg !2102
  %79 = and i8 %78, 1, !dbg !2161
  %80 = icmp eq i8 %79, 0, !dbg !2161
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2163
  br label %82, !dbg !2163

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2102
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2105
  call void @llvm.dbg.value(metadata i8 %84, metadata !2060, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %83, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  %85 = and i8 %84, 1, !dbg !2164
  %86 = icmp eq i8 %85, 0, !dbg !2164
  br i1 %86, label %87, label %92, !dbg !2166

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2167
  br i1 %88, label %92, label %89, !dbg !2170

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2167, !tbaa !1348
  br label %92, !dbg !2167

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2102
  br label %92, !dbg !2171

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2172
  unreachable, !dbg !2172

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2156
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %40 ], !dbg !2102
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2102
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2102
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2102
  call void @llvm.dbg.value(metadata i8 %100, metadata !2060, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %98, metadata !2057, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %96, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %93, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 0, metadata !2053, metadata !DIExpression()), !dbg !2102
  %101 = and i8 %99, 1, !dbg !2173
  %102 = icmp ne i8 %101, 0, !dbg !2173
  %103 = icmp ne i32 %93, 2, !dbg !2173
  %104 = and i1 %103, %102, !dbg !2173
  %105 = icmp ne i64 %98, 0, !dbg !2173
  %106 = and i1 %105, %104, !dbg !2173
  %107 = icmp ugt i64 %98, 1, !dbg !2173
  %108 = and i8 %100, 1, !dbg !2175
  %109 = icmp eq i8 %108, 0, !dbg !2175
  %110 = icmp eq i32 %93, 2, !dbg !2178
  %111 = or i1 %103, %109, !dbg !2180
  %112 = icmp ne i8 %108, 0, !dbg !2182
  %113 = and i1 %110, %112, !dbg !2182
  %114 = xor i1 %102, true, !dbg !2183
  %115 = xor i1 %104, true, !dbg !2116
  %116 = and i1 %109, %115, !dbg !2116
  %117 = or i1 %25, %116, !dbg !2116
  %118 = and i8 %99, %100, !dbg !2184
  %119 = and i8 %118, 1, !dbg !2184
  %120 = icmp ne i8 %119, 0, !dbg !2184
  %121 = and i1 %120, %105, !dbg !2184
  br label %122, !dbg !2186

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2187
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2156
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2119
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2123
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2124
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2125
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %126, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %123, metadata !2053, metadata !DIExpression()), !dbg !2102
  %131 = icmp eq i64 %126, -1, !dbg !2188
  br i1 %131, label %132, label %136, !dbg !2189

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2190
  %134 = load i8, i8* %133, align 1, !dbg !2190, !tbaa !1348
  %135 = icmp eq i8 %134, 0, !dbg !2191
  br i1 %135, label %581, label %138, !dbg !2192

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2193
  br i1 %137, label %581, label %138, !dbg !2192

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 0, metadata !2070, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 0, metadata !2071, metadata !DIExpression()), !dbg !2194
  br i1 %106, label %139, label %154, !dbg !2195

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2196
  %141 = and i1 %107, %131, !dbg !2197
  br i1 %141, label %142, label %144, !dbg !2197

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %143, metadata !2047, metadata !DIExpression()), !dbg !2102
  br label %144, !dbg !2199

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2047, metadata !DIExpression()), !dbg !2102
  %146 = icmp ugt i64 %140, %145, !dbg !2200
  br i1 %146, label %154, label %147, !dbg !2201

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2202
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2203
  %150 = icmp ne i32 %149, 0, !dbg !2204
  %151 = or i1 %150, %109, !dbg !2205
  %152 = xor i1 %150, true, !dbg !2205
  %153 = zext i1 %152 to i8, !dbg !2205
  br i1 %151, label %154, label %639, !dbg !2205

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2194
  call void @llvm.dbg.value(metadata i8 %156, metadata !2069, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %155, metadata !2047, metadata !DIExpression()), !dbg !2102
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2206
  %158 = load i8, i8* %157, align 1, !dbg !2206, !tbaa !1348
  call void @llvm.dbg.value(metadata i8 %158, metadata !2064, metadata !DIExpression()), !dbg !2194
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
  ], !dbg !2207

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2208

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2209

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2070, metadata !DIExpression()), !dbg !2194
  %162 = and i8 %127, 1, !dbg !2212
  %163 = icmp eq i8 %162, 0, !dbg !2212
  %164 = and i1 %110, %163, !dbg !2212
  br i1 %164, label %165, label %181, !dbg !2212

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2214
  br i1 %166, label %167, label %169, !dbg !2218

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2214
  store i8 39, i8* %168, align 1, !dbg !2214, !tbaa !1348
  br label %169, !dbg !2214

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %170, metadata !2054, metadata !DIExpression()), !dbg !2102
  %171 = icmp ult i64 %170, %130, !dbg !2219
  br i1 %171, label %172, label %174, !dbg !2222

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2219
  store i8 36, i8* %173, align 1, !dbg !2219, !tbaa !1348
  br label %174, !dbg !2219

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %175, metadata !2054, metadata !DIExpression()), !dbg !2102
  %176 = icmp ult i64 %175, %130, !dbg !2223
  br i1 %176, label %177, label %179, !dbg !2226

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2223
  store i8 39, i8* %178, align 1, !dbg !2223, !tbaa !1348
  br label %179, !dbg !2223

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %180, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2061, metadata !DIExpression()), !dbg !2102
  br label %181, !dbg !2227

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2102
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2102
  call void @llvm.dbg.value(metadata i8 %183, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %182, metadata !2054, metadata !DIExpression()), !dbg !2102
  %184 = icmp ult i64 %182, %130, !dbg !2228
  br i1 %184, label %185, label %187, !dbg !2231

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2228
  store i8 92, i8* %186, align 1, !dbg !2228, !tbaa !1348
  br label %187, !dbg !2228

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %188, metadata !2054, metadata !DIExpression()), !dbg !2102
  br i1 %103, label %189, label %463, !dbg !2232

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2234
  %191 = icmp ult i64 %190, %155, !dbg !2235
  br i1 %191, label %192, label %463, !dbg !2236

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2237
  %194 = load i8, i8* %193, align 1, !dbg !2237, !tbaa !1348
  %195 = add i8 %194, -48, !dbg !2238
  %196 = icmp ult i8 %195, 10, !dbg !2238
  br i1 %196, label %197, label %463, !dbg !2238

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2239
  br i1 %198, label %199, label %201, !dbg !2243

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2239
  store i8 48, i8* %200, align 1, !dbg !2239, !tbaa !1348
  br label %201, !dbg !2239

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %202, metadata !2054, metadata !DIExpression()), !dbg !2102
  %203 = icmp ult i64 %202, %130, !dbg !2244
  br i1 %203, label %204, label %206, !dbg !2247

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2244
  store i8 48, i8* %205, align 1, !dbg !2244, !tbaa !1348
  br label %206, !dbg !2244

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %207, metadata !2054, metadata !DIExpression()), !dbg !2102
  br label %463, !dbg !2248

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2249

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2250

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2251

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2252

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2253
  %214 = icmp ult i64 %213, %155, !dbg !2254
  br i1 %214, label %215, label %463, !dbg !2255

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2256
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2257
  %218 = load i8, i8* %217, align 1, !dbg !2257, !tbaa !1348
  %219 = icmp eq i8 %218, 63, !dbg !2258
  br i1 %219, label %220, label %463, !dbg !2259

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2260
  %222 = load i8, i8* %221, align 1, !dbg !2260, !tbaa !1348
  %223 = sext i8 %222 to i32, !dbg !2260
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
  ], !dbg !2261

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2262

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2064, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %213, metadata !2053, metadata !DIExpression()), !dbg !2102
  %226 = icmp ult i64 %124, %130, !dbg !2264
  br i1 %226, label %227, label %229, !dbg !2267

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2264
  store i8 63, i8* %228, align 1, !dbg !2264, !tbaa !1348
  br label %229, !dbg !2264

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %230, metadata !2054, metadata !DIExpression()), !dbg !2102
  %231 = icmp ult i64 %230, %130, !dbg !2268
  br i1 %231, label %232, label %234, !dbg !2271

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2268
  store i8 34, i8* %233, align 1, !dbg !2268, !tbaa !1348
  br label %234, !dbg !2268

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %235, metadata !2054, metadata !DIExpression()), !dbg !2102
  %236 = icmp ult i64 %235, %130, !dbg !2272
  br i1 %236, label %237, label %239, !dbg !2275

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2272
  store i8 34, i8* %238, align 1, !dbg !2272, !tbaa !1348
  br label %239, !dbg !2272

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %240, metadata !2054, metadata !DIExpression()), !dbg !2102
  %241 = icmp ult i64 %240, %130, !dbg !2276
  br i1 %241, label %242, label %244, !dbg !2279

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2276
  store i8 63, i8* %243, align 1, !dbg !2276, !tbaa !1348
  br label %244, !dbg !2276

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %245, metadata !2054, metadata !DIExpression()), !dbg !2102
  br label %463, !dbg !2280

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2068, metadata !DIExpression()), !dbg !2194
  br label %256, !dbg !2281

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2068, metadata !DIExpression()), !dbg !2194
  br label %256, !dbg !2282

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2068, metadata !DIExpression()), !dbg !2194
  br label %254, !dbg !2283

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2068, metadata !DIExpression()), !dbg !2194
  br label %254, !dbg !2284

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2068, metadata !DIExpression()), !dbg !2194
  br label %256, !dbg !2285

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2068, metadata !DIExpression()), !dbg !2194
  br i1 %110, label %252, label %253, !dbg !2286

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2287

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2290

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2291
  call void @llvm.dbg.value(metadata i8 %255, metadata !2068, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.label(metadata !2097), !dbg !2292
  br i1 %111, label %256, label %625, !dbg !2293

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2291
  call void @llvm.dbg.value(metadata i8 %257, metadata !2068, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.label(metadata !2098), !dbg !2295
  br i1 %102, label %488, label %463, !dbg !2296

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2297

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2298, !tbaa !1348
  %261 = icmp eq i8 %260, 0, !dbg !2299
  br i1 %261, label %262, label %463, !dbg !2300

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2301
  br i1 %263, label %264, label %463, !dbg !2303

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2071, metadata !DIExpression()), !dbg !2194
  br label %265, !dbg !2304

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2194
  call void @llvm.dbg.value(metadata i8 %266, metadata !2071, metadata !DIExpression()), !dbg !2194
  br i1 %111, label %463, label %625, !dbg !2305

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2071, metadata !DIExpression()), !dbg !2194
  br i1 %110, label %268, label %463, !dbg !2306

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2307

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2309
  %271 = icmp ne i64 %125, 0, !dbg !2311
  %272 = or i1 %271, %270, !dbg !2312
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2312
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %274, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %273, metadata !2055, metadata !DIExpression()), !dbg !2102
  %275 = icmp ult i64 %124, %274, !dbg !2313
  br i1 %275, label %276, label %278, !dbg !2316

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2313
  store i8 39, i8* %277, align 1, !dbg !2313, !tbaa !1348
  br label %278, !dbg !2313

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %279, metadata !2054, metadata !DIExpression()), !dbg !2102
  %280 = icmp ult i64 %279, %274, !dbg !2317
  br i1 %280, label %281, label %283, !dbg !2320

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2317
  store i8 92, i8* %282, align 1, !dbg !2317, !tbaa !1348
  br label %283, !dbg !2317

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %284, metadata !2054, metadata !DIExpression()), !dbg !2102
  %285 = icmp ult i64 %284, %274, !dbg !2321
  br i1 %285, label %286, label %288, !dbg !2324

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2321
  store i8 39, i8* %287, align 1, !dbg !2321, !tbaa !1348
  br label %288, !dbg !2321

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %289, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2102
  br label %463, !dbg !2325

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2326

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2072, metadata !DIExpression()), !dbg !2327
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2328
  %293 = load i16*, i16** %292, align 8, !dbg !2328, !tbaa !1191
  %294 = zext i8 %158 to i64, !dbg !2328
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2328
  %296 = load i16, i16* %295, align 2, !dbg !2328, !tbaa !2330
  %297 = lshr i16 %296, 14, !dbg !2332
  %298 = trunc i16 %297 to i8, !dbg !2332
  %299 = and i8 %298, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i8 %299, metadata !2075, metadata !DIExpression()), !dbg !2327
  br label %355, !dbg !2333

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2334
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2076, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8* %23, metadata !2336, metadata !DIExpression()) #20, !dbg !2343
  call void @llvm.dbg.value(metadata i32 0, metadata !2341, metadata !DIExpression()) #20, !dbg !2343
  call void @llvm.dbg.value(metadata i64 8, metadata !2342, metadata !DIExpression()) #20, !dbg !2343
  store i64 0, i64* %10, align 8, !dbg !2345
  call void @llvm.dbg.value(metadata i64 0, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 1, metadata !2075, metadata !DIExpression()), !dbg !2327
  %301 = icmp eq i64 %155, -1, !dbg !2346
  br i1 %301, label %302, label %304, !dbg !2348

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %303, metadata !2047, metadata !DIExpression()), !dbg !2102
  br label %304, !dbg !2350

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2194
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  br label %306, !dbg !2351

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2352
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2353
  call void @llvm.dbg.value(metadata i8 %308, metadata !2075, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %307, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2354
  %309 = add i64 %307, %123, !dbg !2355
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2356
  %311 = sub i64 %305, %309, !dbg !2357
  call void @llvm.dbg.value(metadata i32* %12, metadata !2082, metadata !DIExpression(DW_OP_deref)), !dbg !2115
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %312, metadata !2085, metadata !DIExpression()), !dbg !2115
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2359

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %307, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %307, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %307, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %307, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %307, metadata !2072, metadata !DIExpression()), !dbg !2327
  %314 = icmp ugt i64 %305, %309, !dbg !2360
  br i1 %314, label %315, label %340, !dbg !2362

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2363
  br label %317, !dbg !2363

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2072, metadata !DIExpression()), !dbg !2327
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2364
  %321 = load i8, i8* %320, align 1, !dbg !2364, !tbaa !1348
  %322 = icmp eq i8 %321, 0, !dbg !2362
  br i1 %322, label %340, label %323, !dbg !2363

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %324, metadata !2072, metadata !DIExpression()), !dbg !2327
  %325 = add i64 %324, %123, !dbg !2366
  %326 = icmp ult i64 %325, %305, !dbg !2360
  br i1 %326, label %317, label %340, !dbg !2362, !llvm.loop !2367

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2368
  %329 = and i1 %113, %328, !dbg !2371
  call void @llvm.dbg.value(metadata i64 1, metadata !2086, metadata !DIExpression()), !dbg !2372
  br i1 %329, label %330, label %343, !dbg !2371

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2086, metadata !DIExpression()), !dbg !2372
  %332 = add i64 %331, %309, !dbg !2373
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2374
  %334 = load i8, i8* %333, align 1, !dbg !2374, !tbaa !1348
  %335 = sext i8 %334 to i32, !dbg !2374
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2375

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %337, metadata !2086, metadata !DIExpression()), !dbg !2372
  %338 = icmp eq i64 %337, %312, !dbg !2368
  br i1 %338, label %343, label %330, !dbg !2377, !llvm.loop !2378

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 %308, metadata !2075, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %307, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 %308, metadata !2075, metadata !DIExpression()), !dbg !2327
  br label %340, !dbg !2380

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2380
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2381, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %344, metadata !2082, metadata !DIExpression()), !dbg !2115
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !2383
  %346 = icmp eq i32 %345, 0, !dbg !2383
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2384
  call void @llvm.dbg.value(metadata i8 %347, metadata !2075, metadata !DIExpression()), !dbg !2327
  %348 = add i64 %312, %307, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %348, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 %347, metadata !2075, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %348, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2380
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2386
  %350 = icmp eq i32 %349, 0, !dbg !2387
  br i1 %350, label %306, label %351, !dbg !2388, !llvm.loop !2389

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2391
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 2, metadata !2048, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %99, metadata !2058, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %305, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2380
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2391
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2194
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2392
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2392
  call void @llvm.dbg.value(metadata i8 %358, metadata !2075, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %357, metadata !2072, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %356, metadata !2047, metadata !DIExpression()), !dbg !2102
  %359 = and i8 %358, 1, !dbg !2393
  %360 = icmp ne i8 %359, 0, !dbg !2393
  call void @llvm.dbg.value(metadata i8 %359, metadata !2071, metadata !DIExpression()), !dbg !2194
  %361 = icmp ult i64 %357, 2, !dbg !2394
  %362 = or i1 %360, %114, !dbg !2395
  %363 = and i1 %361, %362, !dbg !2396
  br i1 %363, label %463, label %364, !dbg !2396

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %365, metadata !2093, metadata !DIExpression()), !dbg !2398
  br label %366, !dbg !2399

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2187
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2102
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2123
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2194
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2194
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2400
  call void @llvm.dbg.value(metadata i8 %372, metadata !2070, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %371, metadata !2069, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %370, metadata !2064, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %369, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %368, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %367, metadata !2053, metadata !DIExpression()), !dbg !2102
  br i1 %362, label %419, label %373, !dbg !2401

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2406

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2070, metadata !DIExpression()), !dbg !2194
  %375 = and i8 %369, 1, !dbg !2409
  %376 = icmp eq i8 %375, 0, !dbg !2409
  %377 = and i1 %110, %376, !dbg !2409
  br i1 %377, label %378, label %394, !dbg !2409

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2411
  br i1 %379, label %380, label %382, !dbg !2415

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2411
  store i8 39, i8* %381, align 1, !dbg !2411, !tbaa !1348
  br label %382, !dbg !2411

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %383, metadata !2054, metadata !DIExpression()), !dbg !2102
  %384 = icmp ult i64 %383, %130, !dbg !2416
  br i1 %384, label %385, label %387, !dbg !2419

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2416
  store i8 36, i8* %386, align 1, !dbg !2416, !tbaa !1348
  br label %387, !dbg !2416

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %388, metadata !2054, metadata !DIExpression()), !dbg !2102
  %389 = icmp ult i64 %388, %130, !dbg !2420
  br i1 %389, label %390, label %392, !dbg !2423

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2420
  store i8 39, i8* %391, align 1, !dbg !2420, !tbaa !1348
  br label %392, !dbg !2420

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %393, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2061, metadata !DIExpression()), !dbg !2102
  br label %394, !dbg !2424

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2102
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2102
  call void @llvm.dbg.value(metadata i8 %396, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %395, metadata !2054, metadata !DIExpression()), !dbg !2102
  %397 = icmp ult i64 %395, %130, !dbg !2425
  br i1 %397, label %398, label %400, !dbg !2428

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2425
  store i8 92, i8* %399, align 1, !dbg !2425, !tbaa !1348
  br label %400, !dbg !2425

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %401, metadata !2054, metadata !DIExpression()), !dbg !2102
  %402 = icmp ult i64 %401, %130, !dbg !2429
  br i1 %402, label %403, label %407, !dbg !2432

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2429
  %405 = or i8 %404, 48, !dbg !2429
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2429
  store i8 %405, i8* %406, align 1, !dbg !2429, !tbaa !1348
  br label %407, !dbg !2429

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %408, metadata !2054, metadata !DIExpression()), !dbg !2102
  %409 = icmp ult i64 %408, %130, !dbg !2433
  br i1 %409, label %410, label %415, !dbg !2436

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2433
  %412 = and i8 %411, 7, !dbg !2433
  %413 = or i8 %412, 48, !dbg !2433
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2433
  store i8 %413, i8* %414, align 1, !dbg !2433, !tbaa !1348
  br label %415, !dbg !2433

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %416, metadata !2054, metadata !DIExpression()), !dbg !2102
  %417 = and i8 %370, 7, !dbg !2437
  %418 = or i8 %417, 48, !dbg !2438
  call void @llvm.dbg.value(metadata i8 %418, metadata !2064, metadata !DIExpression()), !dbg !2194
  br label %428, !dbg !2439

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2440
  %421 = icmp eq i8 %420, 0, !dbg !2440
  br i1 %421, label %428, label %422, !dbg !2442

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2443
  br i1 %423, label %424, label %426, !dbg !2447

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2443
  store i8 92, i8* %425, align 1, !dbg !2443, !tbaa !1348
  br label %426, !dbg !2443

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %427, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2194
  br label %428, !dbg !2448

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2102
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2123
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2194
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2194
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2194
  call void @llvm.dbg.value(metadata i8 %433, metadata !2070, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %432, metadata !2069, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %431, metadata !2064, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %430, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %429, metadata !2054, metadata !DIExpression()), !dbg !2102
  %434 = add i64 %367, 1, !dbg !2449
  %435 = icmp ugt i64 %365, %434, !dbg !2451
  br i1 %435, label %436, label %526, !dbg !2452

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2453
  %438 = icmp ne i8 %437, 0, !dbg !2453
  %439 = and i8 %433, 1, !dbg !2453
  %440 = icmp eq i8 %439, 0, !dbg !2453
  %441 = and i1 %438, %440, !dbg !2453
  br i1 %441, label %442, label %453, !dbg !2453

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2456
  br i1 %443, label %444, label %446, !dbg !2460

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2456
  store i8 39, i8* %445, align 1, !dbg !2456, !tbaa !1348
  br label %446, !dbg !2456

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %447, metadata !2054, metadata !DIExpression()), !dbg !2102
  %448 = icmp ult i64 %447, %130, !dbg !2461
  br i1 %448, label %449, label %451, !dbg !2464

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2461
  store i8 39, i8* %450, align 1, !dbg !2461, !tbaa !1348
  br label %451, !dbg !2461

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %452, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2102
  br label %453, !dbg !2465

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2466
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2102
  call void @llvm.dbg.value(metadata i8 %455, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %454, metadata !2054, metadata !DIExpression()), !dbg !2102
  %456 = icmp ult i64 %454, %130, !dbg !2467
  br i1 %456, label %457, label %459, !dbg !2470

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2467
  store i8 %431, i8* %458, align 1, !dbg !2467, !tbaa !1348
  br label %459, !dbg !2467

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %460, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %434, metadata !2053, metadata !DIExpression()), !dbg !2102
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2471
  %462 = load i8, i8* %461, align 1, !dbg !2471, !tbaa !1348
  call void @llvm.dbg.value(metadata i8 %462, metadata !2064, metadata !DIExpression()), !dbg !2194
  br label %366, !dbg !2472, !llvm.loop !2473

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2187
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2102
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2119
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2476
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2102
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2102
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2194
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2194
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2194
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %472, metadata !2071, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %471, metadata !2070, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %156, metadata !2069, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %470, metadata !2064, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %469, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %468, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %467, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %466, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %465, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %464, metadata !2053, metadata !DIExpression()), !dbg !2102
  br i1 %117, label %486, label %474, !dbg !2477

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2478
  %476 = zext i8 %475 to i64, !dbg !2478
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2479
  %478 = load i32, i32* %477, align 4, !dbg !2479, !tbaa !1311
  %479 = and i8 %470, 31, !dbg !2480
  %480 = zext i8 %479 to i32, !dbg !2480
  %481 = shl nuw i32 1, %480, !dbg !2481
  %482 = and i32 %478, %481, !dbg !2481
  %483 = icmp eq i32 %482, 0, !dbg !2481
  %484 = icmp eq i8 %156, 0, !dbg !2482
  %485 = and i1 %484, %483, !dbg !2483
  br i1 %485, label %526, label %488, !dbg !2483

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2482
  br i1 %487, label %526, label %488, !dbg !2484

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2485
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2102
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2119
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2476
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2123
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2124
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2194
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2194
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %496, metadata !2071, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %495, metadata !2064, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %494, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %493, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %492, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %491, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %490, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %489, metadata !2053, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.label(metadata !2099), !dbg !2486
  br i1 %109, label %498, label %629, !dbg !2487

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2070, metadata !DIExpression()), !dbg !2194
  %499 = and i8 %493, 1, !dbg !2489
  %500 = icmp eq i8 %499, 0, !dbg !2489
  %501 = and i1 %110, %500, !dbg !2489
  br i1 %501, label %502, label %518, !dbg !2489

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2491
  br i1 %503, label %504, label %506, !dbg !2495

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2491
  store i8 39, i8* %505, align 1, !dbg !2491, !tbaa !1348
  br label %506, !dbg !2491

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %507, metadata !2054, metadata !DIExpression()), !dbg !2102
  %508 = icmp ult i64 %507, %497, !dbg !2496
  br i1 %508, label %509, label %511, !dbg !2499

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2496
  store i8 36, i8* %510, align 1, !dbg !2496, !tbaa !1348
  br label %511, !dbg !2496

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %512, metadata !2054, metadata !DIExpression()), !dbg !2102
  %513 = icmp ult i64 %512, %497, !dbg !2500
  br i1 %513, label %514, label %516, !dbg !2503

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2500
  store i8 39, i8* %515, align 1, !dbg !2500, !tbaa !1348
  br label %516, !dbg !2500

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %517, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, metadata !2061, metadata !DIExpression()), !dbg !2102
  br label %518, !dbg !2504

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2194
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2102
  call void @llvm.dbg.value(metadata i8 %520, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %519, metadata !2054, metadata !DIExpression()), !dbg !2102
  %521 = icmp ult i64 %519, %497, !dbg !2505
  br i1 %521, label %522, label %524, !dbg !2508

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2505
  store i8 92, i8* %523, align 1, !dbg !2505, !tbaa !1348
  br label %524, !dbg !2505

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2508
  call void @llvm.dbg.value(metadata i64 %525, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %536, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %535, metadata !2071, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %534, metadata !2070, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %533, metadata !2064, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %532, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %531, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %530, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %529, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %528, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %527, metadata !2053, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.label(metadata !2100), !dbg !2509
  br label %553, !dbg !2510

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2485
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2102
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2119
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2476
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2123
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2124
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2513
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2194
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2194
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %535, metadata !2071, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %534, metadata !2070, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %533, metadata !2064, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 %532, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %531, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %530, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %529, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %528, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %527, metadata !2053, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.label(metadata !2100), !dbg !2509
  %537 = and i8 %531, 1, !dbg !2510
  %538 = icmp ne i8 %537, 0, !dbg !2510
  %539 = and i8 %534, 1, !dbg !2510
  %540 = icmp eq i8 %539, 0, !dbg !2510
  %541 = and i1 %538, %540, !dbg !2510
  br i1 %541, label %542, label %553, !dbg !2510

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2514
  br i1 %543, label %544, label %546, !dbg !2518

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2514
  store i8 39, i8* %545, align 1, !dbg !2514, !tbaa !1348
  br label %546, !dbg !2514

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %547, metadata !2054, metadata !DIExpression()), !dbg !2102
  %548 = icmp ult i64 %547, %536, !dbg !2519
  br i1 %548, label %549, label %551, !dbg !2522

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2519
  store i8 39, i8* %550, align 1, !dbg !2519, !tbaa !1348
  br label %551, !dbg !2519

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %552, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2102
  br label %553, !dbg !2523

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2194
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2102
  call void @llvm.dbg.value(metadata i8 %562, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %561, metadata !2054, metadata !DIExpression()), !dbg !2102
  %563 = icmp ult i64 %561, %554, !dbg !2524
  br i1 %563, label %564, label %566, !dbg !2527

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2524
  store i8 %556, i8* %565, align 1, !dbg !2524, !tbaa !1348
  br label %566, !dbg !2524

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2527
  call void @llvm.dbg.value(metadata i64 %567, metadata !2054, metadata !DIExpression()), !dbg !2102
  %568 = and i8 %555, 1, !dbg !2528
  %569 = icmp eq i8 %568, 0, !dbg !2528
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2530
  call void @llvm.dbg.value(metadata i8 %570, metadata !2063, metadata !DIExpression()), !dbg !2102
  br label %571, !dbg !2531

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2485
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2102
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2119
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2476
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2123
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2102
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2125
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %578, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %577, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %576, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %575, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %574, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %573, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %572, metadata !2053, metadata !DIExpression()), !dbg !2102
  %580 = add i64 %572, 1, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %580, metadata !2053, metadata !DIExpression()), !dbg !2102
  br label %122, !dbg !2533, !llvm.loop !2534

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2061, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2062, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %129, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  %583 = icmp eq i64 %124, 0, !dbg !2536
  %584 = and i1 %110, %583, !dbg !2538
  %585 = xor i1 %584, true, !dbg !2538
  %586 = or i1 %109, %585, !dbg !2538
  br i1 %586, label %587, label %629, !dbg !2538

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2539
  %589 = xor i1 %588, true, !dbg !2539
  %590 = and i8 %128, 1, !dbg !2541
  %591 = icmp eq i8 %590, 0, !dbg !2541
  %592 = or i1 %591, %589, !dbg !2539
  br i1 %592, label %602, label %593, !dbg !2539

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2542
  %595 = icmp eq i8 %594, 0, !dbg !2542
  br i1 %595, label %598, label %596, !dbg !2545

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %94, metadata !2051, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %95, metadata !2052, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %125, metadata !2055, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %582, metadata !2047, metadata !DIExpression()), !dbg !2102
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2546
  br label %645, !dbg !2547

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2548
  %600 = icmp ne i64 %125, 0, !dbg !2550
  %601 = and i1 %600, %599, !dbg !2551
  br i1 %601, label %26, label %602, !dbg !2551

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %130, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  %603 = icmp ne i8* %97, null, !dbg !2552
  %604 = and i1 %603, %109, !dbg !2554
  br i1 %604, label %605, label %620, !dbg !2554

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %124, metadata !2054, metadata !DIExpression()), !dbg !2102
  %606 = load i8, i8* %97, align 1, !dbg !2555, !tbaa !1348
  %607 = icmp eq i8 %606, 0, !dbg !2558
  br i1 %607, label %620, label %608, !dbg !2558

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2056, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %611, metadata !2054, metadata !DIExpression()), !dbg !2102
  %612 = icmp ult i64 %611, %130, !dbg !2559
  br i1 %612, label %613, label %615, !dbg !2562

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2559
  store i8 %609, i8* %614, align 1, !dbg !2559, !tbaa !1348
  br label %615, !dbg !2559

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %616, metadata !2054, metadata !DIExpression()), !dbg !2102
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2563
  call void @llvm.dbg.value(metadata i8* %617, metadata !2056, metadata !DIExpression()), !dbg !2102
  %618 = load i8, i8* %617, align 1, !dbg !2555, !tbaa !1348
  %619 = icmp eq i8 %618, 0, !dbg !2558
  br i1 %619, label %620, label %608, !dbg !2558, !llvm.loop !2564

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2156
  call void @llvm.dbg.value(metadata i64 %621, metadata !2054, metadata !DIExpression()), !dbg !2102
  %622 = icmp ult i64 %621, %130, !dbg !2566
  br i1 %622, label %623, label %645, !dbg !2568

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2569
  store i8 0, i8* %624, align 1, !dbg !2570, !tbaa !1348
  br label %645, !dbg !2569

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %630, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.label(metadata !2101), !dbg !2571
  %627 = icmp eq i8 %101, 0, !dbg !2572
  %628 = select i1 %627, i32 2, i32 4, !dbg !2572
  br label %635, !dbg !2572

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2045, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %630, metadata !2047, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.label(metadata !2101), !dbg !2571
  %632 = icmp eq i32 %93, 2, !dbg !2574
  %633 = icmp eq i8 %101, 0, !dbg !2572
  %634 = select i1 %633, i32 2, i32 4, !dbg !2572
  br i1 %632, label %635, label %639, !dbg !2572

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2572

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2048, metadata !DIExpression()), !dbg !2102
  %643 = and i32 %5, -3, !dbg !2575
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2576
  br label %645, !dbg !2577

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2578
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2579 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2583, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %1, metadata !2584, metadata !DIExpression()), !dbg !2587
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %3, metadata !2585, metadata !DIExpression()), !dbg !2587
  %4 = icmp eq i8* %3, %0, !dbg !2589
  br i1 %4, label %5, label %71, !dbg !2591

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2592
  call void @llvm.dbg.value(metadata i8* %6, metadata !2586, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %6, metadata !2593, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* undef, metadata !2599, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 85, metadata !2600, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 84, metadata !2601, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 70, metadata !2602, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 45, metadata !2603, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 56, metadata !2604, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2608, metadata !DIExpression()), !dbg !2609
  %7 = load i8, i8* %6, align 1, !dbg !2612, !tbaa !1348
  %8 = and i8 %7, -33, !dbg !2612
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2612

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* undef, metadata !2619, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 84, metadata !2620, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 70, metadata !2621, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 45, metadata !2622, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 56, metadata !2623, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2628
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2632
  %11 = load i8, i8* %10, align 1, !dbg !2632, !tbaa !1348
  %12 = and i8 %11, -33, !dbg !2632
  %13 = icmp eq i8 %12, 84, !dbg !2632
  br i1 %13, label %14, label %68, !dbg !2632

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2634, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8* undef, metadata !2639, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 70, metadata !2640, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 45, metadata !2641, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 56, metadata !2642, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2646, metadata !DIExpression()), !dbg !2647
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2651
  %16 = load i8, i8* %15, align 1, !dbg !2651, !tbaa !1348
  %17 = and i8 %16, -33, !dbg !2651
  %18 = icmp eq i8 %17, 70, !dbg !2651
  br i1 %18, label %19, label %68, !dbg !2651

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2653, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* undef, metadata !2658, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 45, metadata !2659, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 56, metadata !2660, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2665
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2669
  %21 = load i8, i8* %20, align 1, !dbg !2669, !tbaa !1348
  %22 = icmp eq i8 %21, 45, !dbg !2669
  br i1 %22, label %23, label %68, !dbg !2671

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2672, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8* undef, metadata !2677, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 56, metadata !2678, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 0, metadata !2682, metadata !DIExpression()), !dbg !2683
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2687
  %25 = load i8, i8* %24, align 1, !dbg !2687, !tbaa !1348
  %26 = icmp eq i8 %25, 56, !dbg !2687
  br i1 %26, label %27, label %68, !dbg !2689

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2690, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8* undef, metadata !2695, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2699, metadata !DIExpression()), !dbg !2700
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2704
  %29 = load i8, i8* %28, align 1, !dbg !2704, !tbaa !1348
  %30 = icmp eq i8 %29, 0, !dbg !2704
  br i1 %30, label %31, label %68, !dbg !2706

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2707, !tbaa !1348
  %33 = icmp eq i8 %32, 96, !dbg !2708
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.97, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.98, i64 0, i64 0), !dbg !2707
  br label %71, !dbg !2709

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8* undef, metadata !2619, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 66, metadata !2620, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 49, metadata !2621, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 56, metadata !2622, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 48, metadata !2623, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 51, metadata !2624, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 48, metadata !2625, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2710
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2714
  %37 = load i8, i8* %36, align 1, !dbg !2714, !tbaa !1348
  %38 = and i8 %37, -33, !dbg !2714
  %39 = icmp eq i8 %38, 66, !dbg !2714
  br i1 %39, label %40, label %68, !dbg !2714

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2634, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8* undef, metadata !2639, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 49, metadata !2640, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 56, metadata !2641, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 48, metadata !2642, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 51, metadata !2643, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 48, metadata !2644, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 0, metadata !2646, metadata !DIExpression()), !dbg !2715
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2717
  %42 = load i8, i8* %41, align 1, !dbg !2717, !tbaa !1348
  %43 = icmp eq i8 %42, 49, !dbg !2717
  br i1 %43, label %44, label %68, !dbg !2718

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2653, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* undef, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 56, metadata !2659, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 48, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 51, metadata !2661, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 48, metadata !2662, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2719
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2721
  %46 = load i8, i8* %45, align 1, !dbg !2721, !tbaa !1348
  %47 = icmp eq i8 %46, 56, !dbg !2721
  br i1 %47, label %48, label %68, !dbg !2722

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2672, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8* undef, metadata !2677, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 48, metadata !2678, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 51, metadata !2679, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 48, metadata !2680, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 0, metadata !2682, metadata !DIExpression()), !dbg !2723
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2725
  %50 = load i8, i8* %49, align 1, !dbg !2725, !tbaa !1348
  %51 = icmp eq i8 %50, 48, !dbg !2725
  br i1 %51, label %52, label %68, !dbg !2726

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2690, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* undef, metadata !2695, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 51, metadata !2696, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 48, metadata !2697, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2699, metadata !DIExpression()), !dbg !2727
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2729
  %54 = load i8, i8* %53, align 1, !dbg !2729, !tbaa !1348
  %55 = icmp eq i8 %54, 51, !dbg !2729
  br i1 %55, label %56, label %68, !dbg !2730

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2731, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* undef, metadata !2736, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 48, metadata !2737, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 0, metadata !2739, metadata !DIExpression()), !dbg !2740
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2744
  %58 = load i8, i8* %57, align 1, !dbg !2744, !tbaa !1348
  %59 = icmp eq i8 %58, 48, !dbg !2744
  br i1 %59, label %60, label %68, !dbg !2746

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2747, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* undef, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2754, metadata !DIExpression()), !dbg !2755
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2759
  %62 = load i8, i8* %61, align 1, !dbg !2759, !tbaa !1348
  %63 = icmp eq i8 %62, 0, !dbg !2759
  br i1 %63, label %64, label %68, !dbg !2761

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2762, !tbaa !1348
  %66 = icmp eq i8 %65, 96, !dbg !2763
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.100, i64 0, i64 0), !dbg !2762
  br label %71, !dbg !2764

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2765
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !2766
  br label %71, !dbg !2767

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2587
  ret i8* %72, !dbg !2768
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !368 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !372 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %1, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8* %0, metadata !2777, metadata !DIExpression()) #20, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()) #20, !dbg !2790
  call void @llvm.dbg.value(metadata i64* null, metadata !2783, metadata !DIExpression()) #20, !dbg !2790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2784, metadata !DIExpression()) #20, !dbg !2790
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2792
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2785, metadata !DIExpression()) #20, !dbg !2790
  %6 = tail call i32* @__errno_location() #25, !dbg !2793
  %7 = load i32, i32* %6, align 4, !dbg !2793, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %7, metadata !2786, metadata !DIExpression()) #20, !dbg !2790
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2794
  %9 = load i32, i32* %8, align 4, !dbg !2794, !tbaa !1987
  %10 = or i32 %9, 1, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %10, metadata !2787, metadata !DIExpression()) #20, !dbg !2790
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2796
  %12 = load i32, i32* %11, align 8, !dbg !2796, !tbaa !1935
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2797
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2798
  %15 = load i8*, i8** %14, align 8, !dbg !2798, !tbaa !2010
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2799
  %17 = load i8*, i8** %16, align 8, !dbg !2799, !tbaa !2013
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !2800
  %19 = add i64 %18, 1, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %19, metadata !2788, metadata !DIExpression()) #20, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %19, metadata !2802, metadata !DIExpression()) #20, !dbg !2807
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !2809
  call void @llvm.dbg.value(metadata i8* %20, metadata !2789, metadata !DIExpression()) #20, !dbg !2790
  %21 = load i32, i32* %11, align 8, !dbg !2810, !tbaa !1935
  %22 = load i8*, i8** %14, align 8, !dbg !2811, !tbaa !2010
  %23 = load i8*, i8** %16, align 8, !dbg !2812, !tbaa !2013
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !2813
  store i32 %7, i32* %6, align 4, !dbg !2814, !tbaa !1311
  ret i8* %20, !dbg !2815
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2778 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2777, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64* %2, metadata !2783, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2784, metadata !DIExpression()), !dbg !2816
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2817
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2817
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2785, metadata !DIExpression()), !dbg !2816
  %7 = tail call i32* @__errno_location() #25, !dbg !2818
  %8 = load i32, i32* %7, align 4, !dbg !2818, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %8, metadata !2786, metadata !DIExpression()), !dbg !2816
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2819
  %10 = load i32, i32* %9, align 4, !dbg !2819, !tbaa !1987
  %11 = icmp ne i64* %2, null, !dbg !2820
  %12 = xor i1 %11, true, !dbg !2820
  %13 = zext i1 %12 to i32, !dbg !2820
  %14 = or i32 %10, %13, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %14, metadata !2787, metadata !DIExpression()), !dbg !2816
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2822
  %16 = load i32, i32* %15, align 8, !dbg !2822, !tbaa !1935
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2823
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2824
  %19 = load i8*, i8** %18, align 8, !dbg !2824, !tbaa !2010
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2825
  %21 = load i8*, i8** %20, align 8, !dbg !2825, !tbaa !2013
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2826
  %23 = add i64 %22, 1, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %23, metadata !2788, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %23, metadata !2802, metadata !DIExpression()) #20, !dbg !2828
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !2830
  call void @llvm.dbg.value(metadata i8* %24, metadata !2789, metadata !DIExpression()), !dbg !2816
  %25 = load i32, i32* %15, align 8, !dbg !2831, !tbaa !1935
  %26 = load i8*, i8** %18, align 8, !dbg !2832, !tbaa !2010
  %27 = load i8*, i8** %20, align 8, !dbg !2833, !tbaa !2013
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2834
  store i32 %8, i32* %7, align 4, !dbg !2835, !tbaa !1311
  br i1 %11, label %29, label %30, !dbg !2836

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2837, !tbaa !1385
  br label %30, !dbg !2839

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2841 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2845, !tbaa !1191
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2843, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 1, metadata !2844, metadata !DIExpression()), !dbg !2846
  %2 = load i32, i32* @nslots, align 4, !dbg !2847, !tbaa !1311
  %3 = icmp sgt i32 %2, 1, !dbg !2850
  br i1 %3, label %4, label %12, !dbg !2851

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2844, metadata !DIExpression()), !dbg !2846
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2852
  %7 = load i8*, i8** %6, align 8, !dbg !2852, !tbaa !2853
  tail call void @free(i8* %7) #20, !dbg !2855
  %8 = add nuw nsw i64 %5, 1, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %8, metadata !2844, metadata !DIExpression()), !dbg !2846
  %9 = load i32, i32* @nslots, align 4, !dbg !2847, !tbaa !1311
  %10 = sext i32 %9 to i64, !dbg !2850
  %11 = icmp slt i64 %8, %10, !dbg !2850
  br i1 %11, label %4, label %12, !dbg !2851, !llvm.loop !2857

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2859
  %14 = load i8*, i8** %13, align 8, !dbg !2859, !tbaa !2853
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2861
  br i1 %15, label %17, label %16, !dbg !2862

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !2863
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2865, !tbaa !2866
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2867, !tbaa !2853
  br label %17, !dbg !2868

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2869
  br i1 %18, label %21, label %19, !dbg !2871

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2872
  tail call void @free(i8* %20) #20, !dbg !2874
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2875, !tbaa !1191
  br label %21, !dbg !2876

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2877, !tbaa !1311
  ret void, !dbg !2878
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2879 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8* %1, metadata !2882, metadata !DIExpression()), !dbg !2883
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2884
  ret i8* %3, !dbg !2885
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2890, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %1, metadata !2891, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %2, metadata !2892, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2893, metadata !DIExpression()), !dbg !2905
  %5 = tail call i32* @__errno_location() #25, !dbg !2906
  %6 = load i32, i32* %5, align 4, !dbg !2906, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %6, metadata !2894, metadata !DIExpression()), !dbg !2905
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2907, !tbaa !1191
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2895, metadata !DIExpression()), !dbg !2905
  %8 = icmp slt i32 %0, 0, !dbg !2908
  br i1 %8, label %9, label %10, !dbg !2910

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2911
  unreachable, !dbg !2911

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2912, !tbaa !1311
  %12 = icmp sgt i32 %11, %0, !dbg !2913
  br i1 %12, label %34, label %13, !dbg !2914

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2915
  call void @llvm.dbg.value(metadata i1 %14, metadata !2896, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2899, metadata !DIExpression()), !dbg !2916
  %15 = icmp eq i32 %0, 2147483647, !dbg !2917
  br i1 %15, label %16, label %17, !dbg !2919

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2920
  unreachable, !dbg !2920

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2921
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2921
  %20 = add nuw nsw i32 %0, 1, !dbg !2922
  %21 = sext i32 %20 to i64, !dbg !2923
  %22 = shl nuw nsw i64 %21, 4, !dbg !2924
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !2925
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2895, metadata !DIExpression()), !dbg !2905
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2926, !tbaa !1191
  br i1 %14, label %25, label %26, !dbg !2927

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2928, !tbaa.struct !2930
  br label %26, !dbg !2931

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2932, !tbaa !1311
  %28 = sext i32 %27 to i64, !dbg !2933
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2933
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2934
  %31 = sub nsw i32 %20, %27, !dbg !2935
  %32 = sext i32 %31 to i64, !dbg !2936
  %33 = shl nsw i64 %32, 4, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %30, metadata !2336, metadata !DIExpression()) #20, !dbg !2938
  call void @llvm.dbg.value(metadata i32 0, metadata !2341, metadata !DIExpression()) #20, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %33, metadata !2342, metadata !DIExpression()) #20, !dbg !2938
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !2940
  store i32 %20, i32* @nslots, align 4, !dbg !2941, !tbaa !1311
  br label %34, !dbg !2942

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2905
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2895, metadata !DIExpression()), !dbg !2905
  %36 = zext i32 %0 to i64, !dbg !2943
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2944
  %38 = load i64, i64* %37, align 8, !dbg !2944, !tbaa !2866
  call void @llvm.dbg.value(metadata i64 %38, metadata !2900, metadata !DIExpression()), !dbg !2945
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2946
  %40 = load i8*, i8** %39, align 8, !dbg !2946, !tbaa !2853
  call void @llvm.dbg.value(metadata i8* %40, metadata !2902, metadata !DIExpression()), !dbg !2945
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2947
  %42 = load i32, i32* %41, align 4, !dbg !2947, !tbaa !1987
  %43 = or i32 %42, 1, !dbg !2948
  call void @llvm.dbg.value(metadata i32 %43, metadata !2903, metadata !DIExpression()), !dbg !2945
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2949
  %45 = load i32, i32* %44, align 8, !dbg !2949, !tbaa !1935
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2950
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2951
  %48 = load i8*, i8** %47, align 8, !dbg !2951, !tbaa !2010
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2952
  %50 = load i8*, i8** %49, align 8, !dbg !2952, !tbaa !2013
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %51, metadata !2904, metadata !DIExpression()), !dbg !2945
  %52 = icmp ugt i64 %38, %51, !dbg !2954
  br i1 %52, label %63, label %53, !dbg !2956

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %54, metadata !2900, metadata !DIExpression()), !dbg !2945
  store i64 %54, i64* %37, align 8, !dbg !2959, !tbaa !2866
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2960
  br i1 %55, label %57, label %56, !dbg !2962

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !2963
  br label %57, !dbg !2963

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2802, metadata !DIExpression()) #20, !dbg !2964
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %58, metadata !2902, metadata !DIExpression()), !dbg !2945
  store i8* %58, i8** %39, align 8, !dbg !2967, !tbaa !2853
  %59 = load i32, i32* %44, align 8, !dbg !2968, !tbaa !1935
  %60 = load i8*, i8** %47, align 8, !dbg !2969, !tbaa !2010
  %61 = load i8*, i8** %49, align 8, !dbg !2970, !tbaa !2013
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2971
  br label %63, !dbg !2972

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2945
  call void @llvm.dbg.value(metadata i8* %64, metadata !2902, metadata !DIExpression()), !dbg !2945
  store i32 %6, i32* %5, align 4, !dbg !2973, !tbaa !1311
  ret i8* %64, !dbg !2974
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2979, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %1, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 %2, metadata !2981, metadata !DIExpression()), !dbg !2982
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2983
  ret i8* %4, !dbg !2984
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2985 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2987, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i32 0, metadata !2881, metadata !DIExpression()) #20, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %0, metadata !2882, metadata !DIExpression()) #20, !dbg !2989
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !2991
  ret i8* %2, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2993 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 0, metadata !2979, metadata !DIExpression()) #20, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %0, metadata !2980, metadata !DIExpression()) #20, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()) #20, !dbg !3000
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3002
  ret i8* %3, !dbg !3003
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3004 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3008, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 %1, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %2, metadata !3010, metadata !DIExpression()), !dbg !3012
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3013
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3013
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i32 %1, metadata !3015, metadata !DIExpression()) #20, !dbg !3021
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3020, metadata !DIExpression()) #20, !dbg !3023
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3023, !alias.scope !3024
  %6 = icmp eq i32 %1, 10, !dbg !3027
  br i1 %6, label %7, label %8, !dbg !3029

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3030, !noalias !3024
  unreachable, !dbg !3030

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3031
  store i32 %1, i32* %9, align 8, !dbg !3032, !tbaa !1935, !alias.scope !3024
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3033
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3034
  ret i8* %10, !dbg !3035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3036 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3040, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %1, metadata !3041, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %2, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %3, metadata !3043, metadata !DIExpression()), !dbg !3045
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3046
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %1, metadata !3015, metadata !DIExpression()) #20, !dbg !3048
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3020, metadata !DIExpression()) #20, !dbg !3050
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3050, !alias.scope !3051
  %7 = icmp eq i32 %1, 10, !dbg !3054
  br i1 %7, label %8, label %9, !dbg !3055

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3056, !noalias !3051
  unreachable, !dbg !3056

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3057
  store i32 %1, i32* %10, align 8, !dbg !3058, !tbaa !1935, !alias.scope !3051
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3059
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3060
  ret i8* %11, !dbg !3061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3062 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3020, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3011, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 %0, metadata !3066, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8* %1, metadata !3067, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 0, metadata !3008, metadata !DIExpression()) #20, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()) #20, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %1, metadata !3010, metadata !DIExpression()) #20, !dbg !3073
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3074
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3074
  call void @llvm.dbg.value(metadata i32 %0, metadata !3015, metadata !DIExpression()) #20, !dbg !3075
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3068, !alias.scope !3076
  %5 = icmp eq i32 %0, 10, !dbg !3079
  br i1 %5, label %6, label %7, !dbg !3080

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3081, !noalias !3076
  unreachable, !dbg !3081

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3082
  store i32 %0, i32* %8, align 8, !dbg !3083, !tbaa !1935, !alias.scope !3076
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3084
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3085
  ret i8* %9, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3087 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3020, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3044, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %0, metadata !3091, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %1, metadata !3092, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %2, metadata !3093, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i32 0, metadata !3040, metadata !DIExpression()) #20, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %0, metadata !3041, metadata !DIExpression()) #20, !dbg !3099
  call void @llvm.dbg.value(metadata i8* %1, metadata !3042, metadata !DIExpression()) #20, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %2, metadata !3043, metadata !DIExpression()) #20, !dbg !3099
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3100
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %0, metadata !3015, metadata !DIExpression()) #20, !dbg !3101
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3094, !alias.scope !3102
  %6 = icmp eq i32 %0, 10, !dbg !3105
  br i1 %6, label %7, label %8, !dbg !3106

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3107, !noalias !3102
  unreachable, !dbg !3107

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3108
  store i32 %0, i32* %9, align 8, !dbg !3109, !tbaa !1935, !alias.scope !3102
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3110
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3111
  ret i8* %10, !dbg !3112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3113 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8 %2, metadata !3119, metadata !DIExpression()), !dbg !3121
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3122
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3122
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3120, metadata !DIExpression()), !dbg !3123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3124, !tbaa.struct !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1953, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %2, metadata !1954, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %2, metadata !1956, metadata !DIExpression()), !dbg !3126
  %6 = lshr i8 %2, 5, !dbg !3128
  %7 = zext i8 %6 to i64, !dbg !3128
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3129
  call void @llvm.dbg.value(metadata i32* %8, metadata !1958, metadata !DIExpression()), !dbg !3126
  %9 = and i8 %2, 31, !dbg !3130
  %10 = zext i8 %9 to i32, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %10, metadata !1960, metadata !DIExpression()), !dbg !3126
  %11 = load i32, i32* %8, align 4, !dbg !3131, !tbaa !1311
  %12 = lshr i32 %11, %10, !dbg !3132
  %13 = and i32 %12, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i32 %13, metadata !1961, metadata !DIExpression()), !dbg !3126
  %14 = xor i32 %13, 1, !dbg !3134
  %15 = shl i32 %14, %10, !dbg !3135
  %16 = xor i32 %15, %11, !dbg !3136
  store i32 %16, i32* %8, align 4, !dbg !3136, !tbaa !1311
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3137
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3138
  ret i8* %17, !dbg !3139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3140 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3120, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8* %0, metadata !3144, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8 %1, metadata !3145, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #20, !dbg !3149
  call void @llvm.dbg.value(metadata i64 -1, metadata !3118, metadata !DIExpression()) #20, !dbg !3149
  call void @llvm.dbg.value(metadata i8 %1, metadata !3119, metadata !DIExpression()) #20, !dbg !3149
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3150
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3151, !tbaa.struct !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1953, metadata !DIExpression()) #20, !dbg !3152
  call void @llvm.dbg.value(metadata i8 %1, metadata !1954, metadata !DIExpression()) #20, !dbg !3152
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()) #20, !dbg !3152
  call void @llvm.dbg.value(metadata i8 %1, metadata !1956, metadata !DIExpression()) #20, !dbg !3152
  %5 = lshr i8 %1, 5, !dbg !3154
  %6 = zext i8 %5 to i64, !dbg !3154
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3155
  call void @llvm.dbg.value(metadata i32* %7, metadata !1958, metadata !DIExpression()) #20, !dbg !3152
  %8 = and i8 %1, 31, !dbg !3156
  %9 = zext i8 %8 to i32, !dbg !3156
  call void @llvm.dbg.value(metadata i32 %9, metadata !1960, metadata !DIExpression()) #20, !dbg !3152
  %10 = load i32, i32* %7, align 4, !dbg !3157, !tbaa !1311
  %11 = lshr i32 %10, %9, !dbg !3158
  %12 = and i32 %11, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %12, metadata !1961, metadata !DIExpression()) #20, !dbg !3152
  %13 = xor i32 %12, 1, !dbg !3160
  %14 = shl i32 %13, %9, !dbg !3161
  %15 = xor i32 %14, %10, !dbg !3162
  store i32 %15, i32* %7, align 4, !dbg !3162, !tbaa !1311
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3163
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3164
  ret i8* %16, !dbg !3165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3166 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3120, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8* %0, metadata !3168, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %0, metadata !3144, metadata !DIExpression()) #20, !dbg !3173
  call void @llvm.dbg.value(metadata i8 58, metadata !3145, metadata !DIExpression()) #20, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #20, !dbg !3174
  call void @llvm.dbg.value(metadata i64 -1, metadata !3118, metadata !DIExpression()) #20, !dbg !3174
  call void @llvm.dbg.value(metadata i8 58, metadata !3119, metadata !DIExpression()) #20, !dbg !3174
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3175
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3176, !tbaa.struct !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1953, metadata !DIExpression()) #20, !dbg !3177
  call void @llvm.dbg.value(metadata i8 58, metadata !1954, metadata !DIExpression()) #20, !dbg !3177
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()) #20, !dbg !3177
  call void @llvm.dbg.value(metadata i8 58, metadata !1956, metadata !DIExpression()) #20, !dbg !3177
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3179
  call void @llvm.dbg.value(metadata i32* %4, metadata !1958, metadata !DIExpression()) #20, !dbg !3177
  call void @llvm.dbg.value(metadata i32 26, metadata !1960, metadata !DIExpression()) #20, !dbg !3177
  %5 = load i32, i32* %4, align 4, !dbg !3180, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %5, metadata !1961, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3177
  %6 = or i32 %5, 67108864, !dbg !3181
  store i32 %6, i32* %4, align 4, !dbg !3181, !tbaa !1311
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3182
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3183
  ret i8* %7, !dbg !3184
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3185 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3120, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %1, metadata !3188, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #20, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()) #20, !dbg !3192
  call void @llvm.dbg.value(metadata i8 58, metadata !3119, metadata !DIExpression()) #20, !dbg !3192
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3193
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3194, !tbaa.struct !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1953, metadata !DIExpression()) #20, !dbg !3195
  call void @llvm.dbg.value(metadata i8 58, metadata !1954, metadata !DIExpression()) #20, !dbg !3195
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()) #20, !dbg !3195
  call void @llvm.dbg.value(metadata i8 58, metadata !1956, metadata !DIExpression()) #20, !dbg !3195
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3197
  call void @llvm.dbg.value(metadata i32* %5, metadata !1958, metadata !DIExpression()) #20, !dbg !3195
  call void @llvm.dbg.value(metadata i32 26, metadata !1960, metadata !DIExpression()) #20, !dbg !3195
  %6 = load i32, i32* %5, align 4, !dbg !3198, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %6, metadata !1961, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3195
  %7 = or i32 %6, 67108864, !dbg !3199
  store i32 %7, i32* %5, align 4, !dbg !3199, !tbaa !1311
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3200
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3201
  ret i8* %8, !dbg !3202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3203 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3020, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %0, metadata !3205, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 %1, metadata !3206, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %2, metadata !3207, metadata !DIExpression()), !dbg !3211
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3212
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3212
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3208, metadata !DIExpression()), !dbg !3213
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3214
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %1, metadata !3015, metadata !DIExpression()) #20, !dbg !3215
  call void @llvm.dbg.value(metadata i32 0, metadata !3020, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3215
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3209, !alias.scope !3216
  %8 = icmp eq i32 %1, 10, !dbg !3219
  br i1 %8, label %9, label %10, !dbg !3220

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3221, !noalias !3216
  unreachable, !dbg !3221

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3020, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3215
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3214
  store i32 %1, i32* %11, align 8, !dbg !3214, !tbaa.struct !3125
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3214
  %13 = bitcast i32* %12 to i8*, !dbg !3214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3214, !tbaa.struct !3125
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3214
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1953, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8 58, metadata !1954, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8 58, metadata !1956, metadata !DIExpression()), !dbg !3222
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3224
  call void @llvm.dbg.value(metadata i32* %14, metadata !1958, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i32 26, metadata !1960, metadata !DIExpression()), !dbg !3222
  %15 = load i32, i32* %14, align 4, !dbg !3225, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %15, metadata !1961, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3222
  %16 = or i32 %15, 67108864, !dbg !3226
  store i32 %16, i32* %14, align 4, !dbg !3226, !tbaa !1311
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3228
  ret i8* %17, !dbg !3229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3230 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3238, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i32 %0, metadata !3234, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %1, metadata !3235, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %2, metadata !3236, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %3, metadata !3237, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i32 %0, metadata !3243, metadata !DIExpression()) #20, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %1, metadata !3244, metadata !DIExpression()) #20, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %2, metadata !3245, metadata !DIExpression()) #20, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %3, metadata !3246, metadata !DIExpression()) #20, !dbg !3251
  call void @llvm.dbg.value(metadata i64 -1, metadata !3247, metadata !DIExpression()) #20, !dbg !3251
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3252
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3253, !tbaa.struct !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()) #20, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %1, metadata !1995, metadata !DIExpression()) #20, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %2, metadata !1996, metadata !DIExpression()) #20, !dbg !3254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()) #20, !dbg !3254
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3256
  store i32 10, i32* %7, align 8, !dbg !3257, !tbaa !1935
  %8 = icmp ne i8* %1, null, !dbg !3258
  %9 = icmp ne i8* %2, null, !dbg !3259
  %10 = and i1 %8, %9, !dbg !3260
  br i1 %10, label %12, label %11, !dbg !3260

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3261
  unreachable, !dbg !3261

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3262
  store i8* %1, i8** %13, align 8, !dbg !3263, !tbaa !2010
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3264
  store i8* %2, i8** %14, align 8, !dbg !3265, !tbaa !2013
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3266
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3267
  ret i8* %15, !dbg !3268
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3239 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3243, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8* %1, metadata !3244, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8* %2, metadata !3245, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8* %3, metadata !3246, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %4, metadata !3247, metadata !DIExpression()), !dbg !3269
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3270
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3270
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3238, metadata !DIExpression()), !dbg !3271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3272, !tbaa.struct !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1994, metadata !DIExpression()) #20, !dbg !3273
  call void @llvm.dbg.value(metadata i8* %1, metadata !1995, metadata !DIExpression()) #20, !dbg !3273
  call void @llvm.dbg.value(metadata i8* %2, metadata !1996, metadata !DIExpression()) #20, !dbg !3273
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1994, metadata !DIExpression()) #20, !dbg !3273
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3275
  store i32 10, i32* %8, align 8, !dbg !3276, !tbaa !1935
  %9 = icmp ne i8* %1, null, !dbg !3277
  %10 = icmp ne i8* %2, null, !dbg !3278
  %11 = and i1 %9, %10, !dbg !3279
  br i1 %11, label %13, label %12, !dbg !3279

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3280
  unreachable, !dbg !3280

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3281
  store i8* %1, i8** %14, align 8, !dbg !3282, !tbaa !2010
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3283
  store i8* %2, i8** %15, align 8, !dbg !3284, !tbaa !2013
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3285
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3286
  ret i8* %16, !dbg !3287
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3288 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* %1, metadata !3293, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* %2, metadata !3294, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 0, metadata !3234, metadata !DIExpression()) #20, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %0, metadata !3235, metadata !DIExpression()) #20, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %1, metadata !3236, metadata !DIExpression()) #20, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %2, metadata !3237, metadata !DIExpression()) #20, !dbg !3299
  call void @llvm.dbg.value(metadata i32 0, metadata !3243, metadata !DIExpression()) #20, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()) #20, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %1, metadata !3245, metadata !DIExpression()) #20, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %2, metadata !3246, metadata !DIExpression()) #20, !dbg !3300
  call void @llvm.dbg.value(metadata i64 -1, metadata !3247, metadata !DIExpression()) #20, !dbg !3300
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3302, !tbaa.struct !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1994, metadata !DIExpression()) #20, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %0, metadata !1995, metadata !DIExpression()) #20, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %1, metadata !1996, metadata !DIExpression()) #20, !dbg !3303
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1994, metadata !DIExpression()) #20, !dbg !3303
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3305
  store i32 10, i32* %6, align 8, !dbg !3306, !tbaa !1935
  %7 = icmp ne i8* %0, null, !dbg !3307
  %8 = icmp ne i8* %1, null, !dbg !3308
  %9 = and i1 %7, %8, !dbg !3309
  br i1 %9, label %11, label %10, !dbg !3309

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3310
  unreachable, !dbg !3310

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3311
  store i8* %0, i8** %12, align 8, !dbg !3312, !tbaa !2010
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3313
  store i8* %1, i8** %13, align 8, !dbg !3314, !tbaa !2013
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3315
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3316
  ret i8* %14, !dbg !3317
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3318 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3238, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i8* %0, metadata !3322, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8* %1, metadata !3323, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8* %2, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %3, metadata !3325, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 0, metadata !3243, metadata !DIExpression()) #20, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()) #20, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %1, metadata !3245, metadata !DIExpression()) #20, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %2, metadata !3246, metadata !DIExpression()) #20, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %3, metadata !3247, metadata !DIExpression()) #20, !dbg !3329
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3330
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3330
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3331, !tbaa.struct !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()) #20, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %0, metadata !1995, metadata !DIExpression()) #20, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %1, metadata !1996, metadata !DIExpression()) #20, !dbg !3332
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()) #20, !dbg !3332
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3334
  store i32 10, i32* %7, align 8, !dbg !3335, !tbaa !1935
  %8 = icmp ne i8* %0, null, !dbg !3336
  %9 = icmp ne i8* %1, null, !dbg !3337
  %10 = and i1 %8, %9, !dbg !3338
  br i1 %10, label %12, label %11, !dbg !3338

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3339
  unreachable, !dbg !3339

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3340
  store i8* %0, i8** %13, align 8, !dbg !3341, !tbaa !2010
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3342
  store i8* %1, i8** %14, align 8, !dbg !3343, !tbaa !2013
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3344
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3345
  ret i8* %15, !dbg !3346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %1, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %2, metadata !3353, metadata !DIExpression()), !dbg !3354
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3355
  ret i8* %4, !dbg !3356
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3361, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %1, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 0, metadata !3351, metadata !DIExpression()) #20, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()) #20, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()) #20, !dbg !3364
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3366
  ret i8* %3, !dbg !3367
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8* %1, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()) #20, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %1, metadata !3352, metadata !DIExpression()) #20, !dbg !3375
  call void @llvm.dbg.value(metadata i64 -1, metadata !3353, metadata !DIExpression()) #20, !dbg !3375
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3377
  ret i8* %3, !dbg !3378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3379 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i32 0, metadata !3372, metadata !DIExpression()) #20, !dbg !3383
  call void @llvm.dbg.value(metadata i8* %0, metadata !3373, metadata !DIExpression()) #20, !dbg !3383
  call void @llvm.dbg.value(metadata i32 0, metadata !3351, metadata !DIExpression()) #20, !dbg !3385
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()) #20, !dbg !3385
  call void @llvm.dbg.value(metadata i64 -1, metadata !3353, metadata !DIExpression()) #20, !dbg !3385
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3387
  ret i8* %2, !dbg !3388
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3389 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3396, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %1, metadata !3397, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %2, metadata !3398, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %3, metadata !3399, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8** %4, metadata !3400, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %5, metadata !3401, metadata !DIExpression()), !dbg !3402
  %7 = icmp eq i8* %1, null, !dbg !3403
  br i1 %7, label %10, label %8, !dbg !3405

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !3406
  br label %12, !dbg !3406

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.106, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !3407
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.107, i64 0, i64 0), i32 5) #20, !dbg !3408
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !3408
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.108, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3409
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.109, i64 0, i64 0), i32 5) #20, !dbg !3410
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.110, i64 0, i64 0)) #20, !dbg !3410
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.108, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3411
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
  ], !dbg !3412

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.111, i64 0, i64 0), i32 5) #20, !dbg !3413
  %21 = load i8*, i8** %4, align 8, !dbg !3413, !tbaa !1191
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !3413
  br label %147, !dbg !3415

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.112, i64 0, i64 0), i32 5) #20, !dbg !3416
  %25 = load i8*, i8** %4, align 8, !dbg !3416, !tbaa !1191
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3416
  %27 = load i8*, i8** %26, align 8, !dbg !3416, !tbaa !1191
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !3416
  br label %147, !dbg !3417

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.113, i64 0, i64 0), i32 5) #20, !dbg !3418
  %31 = load i8*, i8** %4, align 8, !dbg !3418, !tbaa !1191
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3418
  %33 = load i8*, i8** %32, align 8, !dbg !3418, !tbaa !1191
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3418
  %35 = load i8*, i8** %34, align 8, !dbg !3418, !tbaa !1191
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !3418
  br label %147, !dbg !3419

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.114, i64 0, i64 0), i32 5) #20, !dbg !3420
  %39 = load i8*, i8** %4, align 8, !dbg !3420, !tbaa !1191
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3420
  %41 = load i8*, i8** %40, align 8, !dbg !3420, !tbaa !1191
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3420
  %43 = load i8*, i8** %42, align 8, !dbg !3420, !tbaa !1191
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3420
  %45 = load i8*, i8** %44, align 8, !dbg !3420, !tbaa !1191
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !3420
  br label %147, !dbg !3421

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.115, i64 0, i64 0), i32 5) #20, !dbg !3422
  %49 = load i8*, i8** %4, align 8, !dbg !3422, !tbaa !1191
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3422
  %51 = load i8*, i8** %50, align 8, !dbg !3422, !tbaa !1191
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3422
  %53 = load i8*, i8** %52, align 8, !dbg !3422, !tbaa !1191
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3422
  %55 = load i8*, i8** %54, align 8, !dbg !3422, !tbaa !1191
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3422
  %57 = load i8*, i8** %56, align 8, !dbg !3422, !tbaa !1191
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !3422
  br label %147, !dbg !3423

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.116, i64 0, i64 0), i32 5) #20, !dbg !3424
  %61 = load i8*, i8** %4, align 8, !dbg !3424, !tbaa !1191
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3424
  %63 = load i8*, i8** %62, align 8, !dbg !3424, !tbaa !1191
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3424
  %65 = load i8*, i8** %64, align 8, !dbg !3424, !tbaa !1191
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3424
  %67 = load i8*, i8** %66, align 8, !dbg !3424, !tbaa !1191
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3424
  %69 = load i8*, i8** %68, align 8, !dbg !3424, !tbaa !1191
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3424
  %71 = load i8*, i8** %70, align 8, !dbg !3424, !tbaa !1191
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !3424
  br label %147, !dbg !3425

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.117, i64 0, i64 0), i32 5) #20, !dbg !3426
  %75 = load i8*, i8** %4, align 8, !dbg !3426, !tbaa !1191
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3426
  %77 = load i8*, i8** %76, align 8, !dbg !3426, !tbaa !1191
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3426
  %79 = load i8*, i8** %78, align 8, !dbg !3426, !tbaa !1191
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3426
  %81 = load i8*, i8** %80, align 8, !dbg !3426, !tbaa !1191
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3426
  %83 = load i8*, i8** %82, align 8, !dbg !3426, !tbaa !1191
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3426
  %85 = load i8*, i8** %84, align 8, !dbg !3426, !tbaa !1191
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3426
  %87 = load i8*, i8** %86, align 8, !dbg !3426, !tbaa !1191
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !3426
  br label %147, !dbg !3427

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.118, i64 0, i64 0), i32 5) #20, !dbg !3428
  %91 = load i8*, i8** %4, align 8, !dbg !3428, !tbaa !1191
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3428
  %93 = load i8*, i8** %92, align 8, !dbg !3428, !tbaa !1191
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3428
  %95 = load i8*, i8** %94, align 8, !dbg !3428, !tbaa !1191
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3428
  %97 = load i8*, i8** %96, align 8, !dbg !3428, !tbaa !1191
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3428
  %99 = load i8*, i8** %98, align 8, !dbg !3428, !tbaa !1191
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3428
  %101 = load i8*, i8** %100, align 8, !dbg !3428, !tbaa !1191
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3428
  %103 = load i8*, i8** %102, align 8, !dbg !3428, !tbaa !1191
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3428
  %105 = load i8*, i8** %104, align 8, !dbg !3428, !tbaa !1191
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !3428
  br label %147, !dbg !3429

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.119, i64 0, i64 0), i32 5) #20, !dbg !3430
  %109 = load i8*, i8** %4, align 8, !dbg !3430, !tbaa !1191
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3430
  %111 = load i8*, i8** %110, align 8, !dbg !3430, !tbaa !1191
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3430
  %113 = load i8*, i8** %112, align 8, !dbg !3430, !tbaa !1191
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3430
  %115 = load i8*, i8** %114, align 8, !dbg !3430, !tbaa !1191
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3430
  %117 = load i8*, i8** %116, align 8, !dbg !3430, !tbaa !1191
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3430
  %119 = load i8*, i8** %118, align 8, !dbg !3430, !tbaa !1191
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3430
  %121 = load i8*, i8** %120, align 8, !dbg !3430, !tbaa !1191
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3430
  %123 = load i8*, i8** %122, align 8, !dbg !3430, !tbaa !1191
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3430
  %125 = load i8*, i8** %124, align 8, !dbg !3430, !tbaa !1191
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !3430
  br label %147, !dbg !3431

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.120, i64 0, i64 0), i32 5) #20, !dbg !3432
  %129 = load i8*, i8** %4, align 8, !dbg !3432, !tbaa !1191
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3432
  %131 = load i8*, i8** %130, align 8, !dbg !3432, !tbaa !1191
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3432
  %133 = load i8*, i8** %132, align 8, !dbg !3432, !tbaa !1191
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3432
  %135 = load i8*, i8** %134, align 8, !dbg !3432, !tbaa !1191
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3432
  %137 = load i8*, i8** %136, align 8, !dbg !3432, !tbaa !1191
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3432
  %139 = load i8*, i8** %138, align 8, !dbg !3432, !tbaa !1191
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3432
  %141 = load i8*, i8** %140, align 8, !dbg !3432, !tbaa !1191
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3432
  %143 = load i8*, i8** %142, align 8, !dbg !3432, !tbaa !1191
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3432
  %145 = load i8*, i8** %144, align 8, !dbg !3432, !tbaa !1191
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !3432
  br label %147, !dbg !3433

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3435 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3439, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i8* %1, metadata !3440, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i8* %2, metadata !3441, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i8* %3, metadata !3442, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i8** %4, metadata !3443, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 0, metadata !3444, metadata !DIExpression()), !dbg !3445
  br label %6, !dbg !3446

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3448
  call void @llvm.dbg.value(metadata i64 %7, metadata !3444, metadata !DIExpression()), !dbg !3445
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3449
  %9 = load i8*, i8** %8, align 8, !dbg !3449, !tbaa !1191
  %10 = icmp eq i8* %9, null, !dbg !3451
  %11 = add i64 %7, 1, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %11, metadata !3444, metadata !DIExpression()), !dbg !3445
  br i1 %10, label %12, label %6, !dbg !3451, !llvm.loop !3453

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %7, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %7, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %7, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %7, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %7, metadata !3444, metadata !DIExpression()), !dbg !3445
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3455
  ret void, !dbg !3456
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3457 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3468, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8* %1, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8* %2, metadata !3470, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8* %3, metadata !3471, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3472, metadata !DIExpression()), !dbg !3476
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3477
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3477
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3474, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 0, metadata !3473, metadata !DIExpression()), !dbg !3476
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3479
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3479
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3479
  %11 = load i32, i32* %8, align 8, !dbg !3482
  %12 = icmp ult i32 %11, 41, !dbg !3482
  br i1 %12, label %13, label %18, !dbg !3482

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3482
  %15 = zext i32 %11 to i64, !dbg !3482
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3482
  %17 = add nuw nsw i32 %11, 8, !dbg !3482
  store i32 %17, i32* %8, align 8, !dbg !3482
  br label %21, !dbg !3482

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3482
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3482
  store i8* %20, i8** %9, align 8, !dbg !3482
  br label %21, !dbg !3482

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3482
  %25 = load i8*, i8** %24, align 8, !dbg !3482
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3483
  store i8* %25, i8** %26, align 16, !dbg !3484, !tbaa !1191
  %27 = icmp eq i8* %25, null, !dbg !3485
  br i1 %27, label %30, label %28, !dbg !3486

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3473, metadata !DIExpression()), !dbg !3476
  %29 = icmp ult i32 %22, 41, !dbg !3482
  br i1 %29, label %35, label %32, !dbg !3482

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3487
  call void @llvm.dbg.value(metadata i64 %31, metadata !3473, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %31, metadata !3473, metadata !DIExpression()), !dbg !3476
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3488
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3489
  ret void, !dbg !3489

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3482
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3482
  store i8* %34, i8** %9, align 8, !dbg !3482
  br label %40, !dbg !3482

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3482
  %37 = zext i32 %22 to i64, !dbg !3482
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3482
  %39 = add nuw nsw i32 %22, 8, !dbg !3482
  store i32 %39, i32* %8, align 8, !dbg !3482
  br label %40, !dbg !3482

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3482
  %44 = load i8*, i8** %43, align 8, !dbg !3482
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3483
  store i8* %44, i8** %45, align 8, !dbg !3484, !tbaa !1191
  %46 = icmp eq i8* %44, null, !dbg !3485
  br i1 %46, label %30, label %47, !dbg !3486

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3473, metadata !DIExpression()), !dbg !3476
  %48 = icmp ult i32 %41, 41, !dbg !3482
  br i1 %48, label %52, label %49, !dbg !3482

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3482
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3482
  store i8* %51, i8** %9, align 8, !dbg !3482
  br label %57, !dbg !3482

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3482
  %54 = zext i32 %41 to i64, !dbg !3482
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3482
  %56 = add nuw nsw i32 %41, 8, !dbg !3482
  store i32 %56, i32* %8, align 8, !dbg !3482
  br label %57, !dbg !3482

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3482
  %61 = load i8*, i8** %60, align 8, !dbg !3482
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3483
  store i8* %61, i8** %62, align 16, !dbg !3484, !tbaa !1191
  %63 = icmp eq i8* %61, null, !dbg !3485
  br i1 %63, label %30, label %64, !dbg !3486

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3473, metadata !DIExpression()), !dbg !3476
  %65 = icmp ult i32 %58, 41, !dbg !3482
  br i1 %65, label %69, label %66, !dbg !3482

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3482
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3482
  store i8* %68, i8** %9, align 8, !dbg !3482
  br label %74, !dbg !3482

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3482
  %71 = zext i32 %58 to i64, !dbg !3482
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3482
  %73 = add nuw nsw i32 %58, 8, !dbg !3482
  store i32 %73, i32* %8, align 8, !dbg !3482
  br label %74, !dbg !3482

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3482
  %78 = load i8*, i8** %77, align 8, !dbg !3482
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3483
  store i8* %78, i8** %79, align 8, !dbg !3484, !tbaa !1191
  %80 = icmp eq i8* %78, null, !dbg !3485
  br i1 %80, label %30, label %81, !dbg !3486

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3473, metadata !DIExpression()), !dbg !3476
  %82 = icmp ult i32 %75, 41, !dbg !3482
  br i1 %82, label %86, label %83, !dbg !3482

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3482
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3482
  store i8* %85, i8** %9, align 8, !dbg !3482
  br label %91, !dbg !3482

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3482
  %88 = zext i32 %75 to i64, !dbg !3482
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3482
  %90 = add nuw nsw i32 %75, 8, !dbg !3482
  store i32 %90, i32* %8, align 8, !dbg !3482
  br label %91, !dbg !3482

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3482
  %95 = load i8*, i8** %94, align 8, !dbg !3482
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3483
  store i8* %95, i8** %96, align 16, !dbg !3484, !tbaa !1191
  %97 = icmp eq i8* %95, null, !dbg !3485
  br i1 %97, label %30, label %98, !dbg !3486

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3473, metadata !DIExpression()), !dbg !3476
  %99 = icmp ult i32 %92, 41, !dbg !3482
  br i1 %99, label %103, label %100, !dbg !3482

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3482
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3482
  store i8* %102, i8** %9, align 8, !dbg !3482
  br label %108, !dbg !3482

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3482
  %105 = zext i32 %92 to i64, !dbg !3482
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3482
  %107 = add nuw nsw i32 %92, 8, !dbg !3482
  store i32 %107, i32* %8, align 8, !dbg !3482
  br label %108, !dbg !3482

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3482
  %111 = load i8*, i8** %110, align 8, !dbg !3482
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3483
  store i8* %111, i8** %112, align 8, !dbg !3484, !tbaa !1191
  %113 = icmp eq i8* %111, null, !dbg !3485
  br i1 %113, label %30, label %114, !dbg !3486

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3473, metadata !DIExpression()), !dbg !3476
  %115 = load i8*, i8** %9, align 8, !dbg !3482
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3482
  store i8* %116, i8** %9, align 8, !dbg !3482
  %117 = bitcast i8* %115 to i8**, !dbg !3482
  %118 = load i8*, i8** %117, align 8, !dbg !3482
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3483
  store i8* %118, i8** %119, align 16, !dbg !3484, !tbaa !1191
  %120 = icmp eq i8* %118, null, !dbg !3485
  br i1 %120, label %30, label %121, !dbg !3486

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3473, metadata !DIExpression()), !dbg !3476
  %122 = load i8*, i8** %9, align 8, !dbg !3482
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3482
  store i8* %123, i8** %9, align 8, !dbg !3482
  %124 = bitcast i8* %122 to i8**, !dbg !3482
  %125 = load i8*, i8** %124, align 8, !dbg !3482
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3483
  store i8* %125, i8** %126, align 8, !dbg !3484, !tbaa !1191
  %127 = icmp eq i8* %125, null, !dbg !3485
  br i1 %127, label %30, label %128, !dbg !3486

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3473, metadata !DIExpression()), !dbg !3476
  %129 = load i8*, i8** %9, align 8, !dbg !3482
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3482
  store i8* %130, i8** %9, align 8, !dbg !3482
  %131 = bitcast i8* %129 to i8**, !dbg !3482
  %132 = load i8*, i8** %131, align 8, !dbg !3482
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3483
  store i8* %132, i8** %133, align 16, !dbg !3484, !tbaa !1191
  %134 = icmp eq i8* %132, null, !dbg !3485
  br i1 %134, label %30, label %135, !dbg !3486

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3473, metadata !DIExpression()), !dbg !3476
  %136 = load i8*, i8** %9, align 8, !dbg !3482
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3482
  store i8* %137, i8** %9, align 8, !dbg !3482
  %138 = bitcast i8* %136 to i8**, !dbg !3482
  %139 = load i8*, i8** %138, align 8, !dbg !3482
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3483
  store i8* %139, i8** %140, align 8, !dbg !3484, !tbaa !1191
  %141 = icmp eq i8* %139, null, !dbg !3485
  %142 = select i1 %141, i64 9, i64 10, !dbg !3486
  br label %30, !dbg !3486
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3490 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3494, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %1, metadata !3495, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %2, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %3, metadata !3497, metadata !DIExpression()), !dbg !3504
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3505
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3505
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3498, metadata !DIExpression()), !dbg !3506
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3507
  call void @llvm.va_start(i8* nonnull %6), !dbg !3507
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3508
  call void @llvm.va_end(i8* nonnull %6), !dbg !3509
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3510
  ret void, !dbg !3510
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3511 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3512, !tbaa !1191
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.108, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3512
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #20, !dbg !3513
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.123, i64 0, i64 0)) #20, !dbg !3513
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.124, i64 0, i64 0), i32 5) #20, !dbg !3514
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.125, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.126, i64 0, i64 0)) #20, !dbg !3514
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.127, i64 0, i64 0), i32 5) #20, !dbg !3515
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.128, i64 0, i64 0)) #20, !dbg !3515
  ret void, !dbg !3516
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3517 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %1, metadata !3522, metadata !DIExpression()), !dbg !3523
  %3 = udiv i64 9223372036854775807, %1, !dbg !3524
  %4 = icmp ult i64 %3, %0, !dbg !3524
  br i1 %4, label %5, label %6, !dbg !3526

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3527
  unreachable, !dbg !3527

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3528
  call void @llvm.dbg.value(metadata i64 %7, metadata !3529, metadata !DIExpression()) #20, !dbg !3533
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3535
  call void @llvm.dbg.value(metadata i8* %8, metadata !3532, metadata !DIExpression()) #20, !dbg !3533
  %9 = icmp eq i8* %8, null, !dbg !3536
  %10 = icmp ne i64 %7, 0, !dbg !3538
  %11 = and i1 %10, %9, !dbg !3539
  br i1 %11, label %12, label %13, !dbg !3539

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3540
  unreachable, !dbg !3540

13:                                               ; preds = %6
  ret i8* %8, !dbg !3541
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3530 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3529, metadata !DIExpression()), !dbg !3542
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3543
  call void @llvm.dbg.value(metadata i8* %2, metadata !3532, metadata !DIExpression()), !dbg !3542
  %3 = icmp eq i8* %2, null, !dbg !3544
  %4 = icmp ne i64 %0, 0, !dbg !3545
  %5 = and i1 %4, %3, !dbg !3546
  br i1 %5, label %6, label %7, !dbg !3546

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3547
  unreachable, !dbg !3547

7:                                                ; preds = %1
  ret i8* %2, !dbg !3548
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3549 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3553, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 %1, metadata !3554, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 %2, metadata !3555, metadata !DIExpression()), !dbg !3556
  %4 = udiv i64 9223372036854775807, %2, !dbg !3557
  %5 = icmp ult i64 %4, %1, !dbg !3557
  br i1 %5, label %6, label %7, !dbg !3559

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3560
  unreachable, !dbg !3560

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3561
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()) #20, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %8, metadata !3565, metadata !DIExpression()) #20, !dbg !3566
  %9 = icmp eq i64 %8, 0, !dbg !3568
  %10 = icmp ne i8* %0, null, !dbg !3570
  %11 = and i1 %10, %9, !dbg !3571
  br i1 %11, label %12, label %13, !dbg !3571

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3572
  br label %19, !dbg !3574

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3575
  call void @llvm.dbg.value(metadata i8* %14, metadata !3562, metadata !DIExpression()) #20, !dbg !3566
  %15 = icmp eq i8* %14, null, !dbg !3576
  %16 = icmp ne i64 %8, 0, !dbg !3578
  %17 = and i1 %16, %15, !dbg !3579
  br i1 %17, label %18, label %19, !dbg !3579

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3580
  unreachable, !dbg !3580

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3566
  ret i8* %20, !dbg !3581
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()), !dbg !3582
  %3 = icmp eq i64 %1, 0, !dbg !3583
  %4 = icmp ne i8* %0, null, !dbg !3584
  %5 = and i1 %4, %3, !dbg !3585
  br i1 %5, label %6, label %7, !dbg !3585

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3586
  br label %13, !dbg !3587

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3588
  call void @llvm.dbg.value(metadata i8* %8, metadata !3562, metadata !DIExpression()), !dbg !3582
  %9 = icmp eq i8* %8, null, !dbg !3589
  %10 = icmp ne i64 %1, 0, !dbg !3590
  %11 = and i1 %10, %9, !dbg !3591
  br i1 %11, label %12, label %13, !dbg !3591

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3592
  unreachable, !dbg !3592

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3582
  ret i8* %14, !dbg !3593
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !521 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !526, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64* %1, metadata !527, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %2, metadata !528, metadata !DIExpression()), !dbg !3594
  %4 = load i64, i64* %1, align 8, !dbg !3595, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %4, metadata !529, metadata !DIExpression()), !dbg !3594
  %5 = icmp eq i8* %0, null, !dbg !3596
  br i1 %5, label %6, label %20, !dbg !3598

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3599
  br i1 %7, label %8, label %13, !dbg !3602

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %9, metadata !529, metadata !DIExpression()), !dbg !3594
  %10 = icmp ugt i64 %2, 128, !dbg !3605
  %11 = zext i1 %10 to i64, !dbg !3605
  %12 = add nuw nsw i64 %9, %11, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %12, metadata !529, metadata !DIExpression()), !dbg !3594
  br label %13, !dbg !3607

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3594
  call void @llvm.dbg.value(metadata i64 %14, metadata !529, metadata !DIExpression()), !dbg !3594
  %15 = udiv i64 9223372036854775807, %2, !dbg !3608
  %16 = icmp ult i64 %15, %14, !dbg !3608
  br i1 %16, label %19, label %17, !dbg !3610

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !529, metadata !DIExpression()), !dbg !3594
  store i64 %14, i64* %1, align 8, !dbg !3611, !tbaa !1385
  %18 = mul i64 %14, %2, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()) #20, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %28, metadata !3565, metadata !DIExpression()) #20, !dbg !3613
  br label %31, !dbg !3615

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3616
  unreachable, !dbg !3616

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3617
  %22 = icmp ugt i64 %21, %4, !dbg !3620
  br i1 %22, label %24, label %23, !dbg !3621

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3622
  unreachable, !dbg !3622

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3623
  %26 = add nuw i64 %4, 1, !dbg !3624
  %27 = add i64 %26, %25, !dbg !3625
  call void @llvm.dbg.value(metadata i64 %27, metadata !529, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %27, metadata !529, metadata !DIExpression()), !dbg !3594
  store i64 %27, i64* %1, align 8, !dbg !3611, !tbaa !1385
  %28 = mul i64 %27, %2, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()) #20, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %28, metadata !3565, metadata !DIExpression()) #20, !dbg !3613
  %29 = icmp eq i64 %28, 0, !dbg !3626
  br i1 %29, label %30, label %31, !dbg !3615

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3627
  br label %38, !dbg !3628

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %33, metadata !3562, metadata !DIExpression()) #20, !dbg !3613
  %34 = icmp eq i8* %33, null, !dbg !3630
  %35 = icmp ne i64 %32, 0, !dbg !3631
  %36 = and i1 %35, %34, !dbg !3632
  br i1 %36, label %37, label %38, !dbg !3632

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3633
  unreachable, !dbg !3633

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3613
  ret i8* %39, !dbg !3634
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3635 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %0, metadata !3529, metadata !DIExpression()) #20, !dbg !3639
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3641
  call void @llvm.dbg.value(metadata i8* %2, metadata !3532, metadata !DIExpression()) #20, !dbg !3639
  %3 = icmp eq i8* %2, null, !dbg !3642
  %4 = icmp ne i64 %0, 0, !dbg !3643
  %5 = and i1 %4, %3, !dbg !3644
  br i1 %5, label %6, label %7, !dbg !3644

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3645
  unreachable, !dbg !3645

7:                                                ; preds = %1
  ret i8* %2, !dbg !3646
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3647 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3651, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64* %1, metadata !3652, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8* %0, metadata !526, metadata !DIExpression()) #20, !dbg !3654
  call void @llvm.dbg.value(metadata i64* %1, metadata !527, metadata !DIExpression()) #20, !dbg !3654
  call void @llvm.dbg.value(metadata i64 1, metadata !528, metadata !DIExpression()) #20, !dbg !3654
  %3 = load i64, i64* %1, align 8, !dbg !3656, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %3, metadata !529, metadata !DIExpression()) #20, !dbg !3654
  %4 = icmp eq i8* %0, null, !dbg !3657
  br i1 %4, label %5, label %12, !dbg !3658

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3659
  br i1 %6, label %9, label %7, !dbg !3660

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !529, metadata !DIExpression()) #20, !dbg !3654
  %8 = icmp slt i64 %3, 0, !dbg !3661
  br i1 %8, label %11, label %9, !dbg !3662

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !529, metadata !DIExpression()) #20, !dbg !3654
  store i64 %10, i64* %1, align 8, !dbg !3663, !tbaa !1385
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()) #20, !dbg !3664
  call void @llvm.dbg.value(metadata i64 %18, metadata !3565, metadata !DIExpression()) #20, !dbg !3664
  br label %21, !dbg !3666

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3667
  unreachable, !dbg !3667

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3668
  br i1 %13, label %15, label %14, !dbg !3669

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3670
  unreachable, !dbg !3670

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3671
  %17 = add nuw nsw i64 %3, 1, !dbg !3672
  %18 = add nuw nsw i64 %17, %16, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %18, metadata !529, metadata !DIExpression()) #20, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %18, metadata !529, metadata !DIExpression()) #20, !dbg !3654
  store i64 %18, i64* %1, align 8, !dbg !3663, !tbaa !1385
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()) #20, !dbg !3664
  call void @llvm.dbg.value(metadata i64 %18, metadata !3565, metadata !DIExpression()) #20, !dbg !3664
  %19 = icmp eq i64 %18, 0, !dbg !3674
  br i1 %19, label %20, label %21, !dbg !3666

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !3675
  br label %28, !dbg !3676

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %23, metadata !3562, metadata !DIExpression()) #20, !dbg !3664
  %24 = icmp eq i8* %23, null, !dbg !3678
  %25 = icmp ne i64 %22, 0, !dbg !3679
  %26 = and i1 %25, %24, !dbg !3680
  br i1 %26, label %27, label %28, !dbg !3680

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3681
  unreachable, !dbg !3681

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3664
  ret i8* %29, !dbg !3682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3683 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3685, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 %0, metadata !3687, metadata !DIExpression()) #20, !dbg !3692
  call void @llvm.dbg.value(metadata i64 1, metadata !3690, metadata !DIExpression()) #20, !dbg !3692
  %2 = icmp slt i64 %0, 0, !dbg !3694
  br i1 %2, label %6, label %3, !dbg !3696

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %4, metadata !3691, metadata !DIExpression()) #20, !dbg !3692
  %5 = icmp eq i8* %4, null, !dbg !3698
  br i1 %5, label %6, label %7, !dbg !3699

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3700
  unreachable, !dbg !3700

7:                                                ; preds = %3
  ret i8* %4, !dbg !3701
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3688 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3687, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %1, metadata !3690, metadata !DIExpression()), !dbg !3702
  %3 = udiv i64 9223372036854775807, %1, !dbg !3703
  %4 = icmp ult i64 %3, %0, !dbg !3703
  br i1 %4, label %8, label %5, !dbg !3704

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %6, metadata !3691, metadata !DIExpression()), !dbg !3702
  %7 = icmp eq i8* %6, null, !dbg !3706
  br i1 %7, label %8, label %9, !dbg !3707

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3708
  unreachable, !dbg !3708

9:                                                ; preds = %5
  ret i8* %6, !dbg !3709
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3710 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3714, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %1, metadata !3529, metadata !DIExpression()) #20, !dbg !3717
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %3, metadata !3532, metadata !DIExpression()) #20, !dbg !3717
  %4 = icmp eq i8* %3, null, !dbg !3720
  %5 = icmp ne i64 %1, 0, !dbg !3721
  %6 = and i1 %5, %4, !dbg !3722
  br i1 %6, label %7, label %8, !dbg !3722

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3723
  unreachable, !dbg !3723

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3724, metadata !DIExpression()) #20, !dbg !3729
  call void @llvm.dbg.value(metadata i8* %0, metadata !3727, metadata !DIExpression()) #20, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %1, metadata !3728, metadata !DIExpression()) #20, !dbg !3729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !3731
  ret i8* %3, !dbg !3732
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3733 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3735, metadata !DIExpression()), !dbg !3736
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3737
  %3 = add i64 %2, 1, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %0, metadata !3714, metadata !DIExpression()) #20, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %3, metadata !3715, metadata !DIExpression()) #20, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %3, metadata !3529, metadata !DIExpression()) #20, !dbg !3741
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !3743
  call void @llvm.dbg.value(metadata i8* %4, metadata !3532, metadata !DIExpression()) #20, !dbg !3741
  %5 = icmp eq i8* %4, null, !dbg !3744
  %6 = icmp ne i64 %3, 0, !dbg !3745
  %7 = and i1 %6, %5, !dbg !3746
  br i1 %7, label %8, label %9, !dbg !3746

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3747
  unreachable, !dbg !3747

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3724, metadata !DIExpression()) #20, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %0, metadata !3727, metadata !DIExpression()) #20, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %3, metadata !3728, metadata !DIExpression()) #20, !dbg !3748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !3750
  ret i8* %4, !dbg !3751
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3752 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3753, !tbaa !1311
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.141, i64 0, i64 0), i32 5) #20, !dbg !3754
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i64 0, i64 0), i8* %2) #20, !dbg !3755
  tail call void @abort() #23, !dbg !3756
  unreachable, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xreadlink(i8* %0) local_unnamed_addr #8 !dbg !3757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()), !dbg !3761
  %2 = tail call i8* @areadlink(i8* %0) #20, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %2, metadata !3760, metadata !DIExpression()), !dbg !3761
  %3 = icmp eq i8* %2, null, !dbg !3763
  br i1 %3, label %4, label %9, !dbg !3765

4:                                                ; preds = %1
  %5 = tail call i32* @__errno_location() #25, !dbg !3766
  %6 = load i32, i32* %5, align 4, !dbg !3766, !tbaa !1311
  %7 = icmp eq i32 %6, 12, !dbg !3767
  br i1 %7, label %8, label %9, !dbg !3768

8:                                                ; preds = %4
  tail call void @xalloc_die() #23, !dbg !3769
  unreachable, !dbg !3769

9:                                                ; preds = %4, %1
  ret i8* %2, !dbg !3770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3771 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3778, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8** %1, metadata !3779, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i32 %2, metadata !3780, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64* %3, metadata !3781, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8* %4, metadata !3782, metadata !DIExpression()), !dbg !3796
  %7 = bitcast i8** %6 to i8*, !dbg !3797
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !3797
  call void @llvm.dbg.value(metadata i32 0, metadata !3786, metadata !DIExpression()), !dbg !3796
  %8 = icmp ult i32 %2, 37, !dbg !3798
  br i1 %8, label %10, label %9, !dbg !3798

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.147, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.148, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #23, !dbg !3798
  unreachable, !dbg !3798

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3801
  call void @llvm.dbg.value(metadata i8** %25, metadata !3784, metadata !DIExpression()), !dbg !3796
  %12 = tail call i32* @__errno_location() #25, !dbg !3802
  store i32 0, i32* %12, align 4, !dbg !3803, !tbaa !1311
  call void @llvm.dbg.value(metadata i8* %0, metadata !3787, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8 undef, metadata !3790, metadata !DIExpression()), !dbg !3804
  %13 = tail call i16** @__ctype_b_loc() #25, !dbg !3804
  %14 = load i16*, i16** %13, align 8, !dbg !3804, !tbaa !1191
  br label %15, !dbg !3805

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3804
  %17 = load i8, i8* %16, align 1, !dbg !3804, !tbaa !1348
  call void @llvm.dbg.value(metadata i8 %17, metadata !3790, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8* %16, metadata !3787, metadata !DIExpression()), !dbg !3804
  %18 = zext i8 %17 to i64, !dbg !3806
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3806
  %20 = load i16, i16* %19, align 2, !dbg !3806, !tbaa !2330
  %21 = and i16 %20, 8192, !dbg !3806
  %22 = icmp eq i16 %21, 0, !dbg !3805
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3807
  call void @llvm.dbg.value(metadata i8* %23, metadata !3787, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8 undef, metadata !3790, metadata !DIExpression()), !dbg !3804
  br i1 %22, label %24, label %15, !dbg !3805, !llvm.loop !3808

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3801
  %26 = icmp eq i8 %17, 45, !dbg !3810
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !3812, metadata !DIExpression()) #20, !dbg !3822
  call void @llvm.dbg.value(metadata i8** %25, metadata !3820, metadata !DIExpression()) #20, !dbg !3822
  call void @llvm.dbg.value(metadata i32 %2, metadata !3821, metadata !DIExpression()) #20, !dbg !3822
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #20, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %28, metadata !3785, metadata !DIExpression()), !dbg !3796
  %29 = load i8*, i8** %25, align 8, !dbg !3825, !tbaa !1191
  %30 = icmp eq i8* %29, %0, !dbg !3827
  br i1 %30, label %31, label %40, !dbg !3828

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3829
  br i1 %32, label %285, label %33, !dbg !3832

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3833, !tbaa !1348
  %35 = icmp eq i8 %34, 0, !dbg !3833
  br i1 %35, label %285, label %36, !dbg !3834

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3833
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #22, !dbg !3835
  %39 = icmp eq i8* %38, null, !dbg !3835
  br i1 %39, label %285, label %47, !dbg !3836

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3837, !tbaa !1311
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3839

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3786, metadata !DIExpression()), !dbg !3796
  br label %43, !dbg !3840

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3796
  call void @llvm.dbg.value(metadata i32 %44, metadata !3786, metadata !DIExpression()), !dbg !3796
  %45 = icmp eq i8* %4, null, !dbg !3842
  br i1 %45, label %46, label %47, !dbg !3844

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3785, metadata !DIExpression()), !dbg !3796
  store i64 %28, i64* %3, align 8, !dbg !3845, !tbaa !1385
  br label %285, !dbg !3847

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3848, !tbaa !1348
  %51 = sext i8 %50 to i32, !dbg !3848
  %52 = icmp eq i8 %50, 0, !dbg !3849
  br i1 %52, label %282, label %53, !dbg !3850

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3791, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 1, metadata !3794, metadata !DIExpression()), !dbg !3851
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #22, !dbg !3852
  %55 = icmp eq i8* %54, null, !dbg !3852
  br i1 %55, label %56, label %58, !dbg !3854

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3785, metadata !DIExpression()), !dbg !3796
  store i64 %49, i64* %3, align 8, !dbg !3855, !tbaa !1385
  %57 = or i32 %48, 2, !dbg !3857
  br label %285, !dbg !3858

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
  ], !dbg !3859

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #22, !dbg !3860
  %61 = icmp eq i8* %60, null, !dbg !3860
  br i1 %61, label %72, label %62, !dbg !3863

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3864
  %64 = load i8, i8* %63, align 1, !dbg !3864, !tbaa !1348
  %65 = sext i8 %64 to i32, !dbg !3864
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3865

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3866
  %68 = load i8, i8* %67, align 1, !dbg !3866, !tbaa !1348
  %69 = icmp eq i8 %68, 66, !dbg !3869
  %70 = select i1 %69, i64 3, i64 1, !dbg !3870
  br label %72, !dbg !3870

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3791, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 2, metadata !3794, metadata !DIExpression()), !dbg !3851
  br label %72, !dbg !3871

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3794, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 undef, metadata !3791, metadata !DIExpression()), !dbg !3851
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
  ], !dbg !3872

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 6, metadata !3880, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3884, metadata !DIExpression()) #20, !dbg !3890
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !3892
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3892
  %78 = mul i64 %49, %73, !dbg !3894
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3894
  call void @llvm.dbg.value(metadata i1 %77, metadata !3873, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 5, metadata !3880, metadata !DIExpression()) #20, !dbg !3881
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #20, !dbg !3892
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3892
  %82 = mul i64 %79, %73, !dbg !3894
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3894
  %84 = or i1 %77, %81, !dbg !3895
  call void @llvm.dbg.value(metadata i1 %84, metadata !3873, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 4, metadata !3880, metadata !DIExpression()) #20, !dbg !3881
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #20, !dbg !3892
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3892
  %87 = mul i64 %83, %73, !dbg !3894
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3894
  %89 = or i1 %84, %86, !dbg !3895
  call void @llvm.dbg.value(metadata i1 %89, metadata !3873, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 3, metadata !3880, metadata !DIExpression()) #20, !dbg !3881
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #20, !dbg !3892
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3892
  %92 = mul i64 %88, %73, !dbg !3894
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3894
  %94 = or i1 %89, %91, !dbg !3895
  call void @llvm.dbg.value(metadata i1 %94, metadata !3873, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 2, metadata !3880, metadata !DIExpression()) #20, !dbg !3881
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #20, !dbg !3892
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3892
  %97 = mul i64 %93, %73, !dbg !3894
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3894
  %99 = or i1 %94, %96, !dbg !3895
  call void @llvm.dbg.value(metadata i1 %99, metadata !3873, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 1, metadata !3880, metadata !DIExpression()) #20, !dbg !3881
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #20, !dbg !3892
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3892
  %102 = mul i64 %98, %73, !dbg !3894
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3894
  %104 = or i1 %99, %101, !dbg !3895
  call void @llvm.dbg.value(metadata i1 %104, metadata !3873, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()) #20, !dbg !3881
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #20, !dbg !3892
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3892
  %107 = mul i64 %103, %73, !dbg !3894
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3894
  %109 = or i1 %104, %106, !dbg !3895
  call void @llvm.dbg.value(metadata i1 %109, metadata !3873, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !3881
  br label %272, !dbg !3896

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 7, metadata !3880, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 undef, metadata !3884, metadata !DIExpression()) #20, !dbg !3899
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !3901
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3901
  %113 = mul i64 %49, %73, !dbg !3902
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3902
  call void @llvm.dbg.value(metadata i1 %112, metadata !3873, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 6, metadata !3880, metadata !DIExpression()) #20, !dbg !3897
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #20, !dbg !3901
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3901
  %117 = mul i64 %114, %73, !dbg !3902
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3902
  %119 = or i1 %112, %116, !dbg !3903
  call void @llvm.dbg.value(metadata i1 %119, metadata !3873, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 5, metadata !3880, metadata !DIExpression()) #20, !dbg !3897
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #20, !dbg !3901
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3901
  %122 = mul i64 %118, %73, !dbg !3902
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3902
  %124 = or i1 %119, %121, !dbg !3903
  call void @llvm.dbg.value(metadata i1 %124, metadata !3873, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 4, metadata !3880, metadata !DIExpression()) #20, !dbg !3897
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #20, !dbg !3901
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3901
  %127 = mul i64 %123, %73, !dbg !3902
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3902
  %129 = or i1 %124, %126, !dbg !3903
  call void @llvm.dbg.value(metadata i1 %129, metadata !3873, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 3, metadata !3880, metadata !DIExpression()) #20, !dbg !3897
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #20, !dbg !3901
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3901
  %132 = mul i64 %128, %73, !dbg !3902
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3902
  %134 = or i1 %129, %131, !dbg !3903
  call void @llvm.dbg.value(metadata i1 %134, metadata !3873, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 2, metadata !3880, metadata !DIExpression()) #20, !dbg !3897
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #20, !dbg !3901
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3901
  %137 = mul i64 %133, %73, !dbg !3902
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3902
  %139 = or i1 %134, %136, !dbg !3903
  call void @llvm.dbg.value(metadata i1 %139, metadata !3873, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 1, metadata !3880, metadata !DIExpression()) #20, !dbg !3897
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #20, !dbg !3901
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3901
  %142 = mul i64 %138, %73, !dbg !3902
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3902
  %144 = or i1 %139, %141, !dbg !3903
  call void @llvm.dbg.value(metadata i1 %144, metadata !3873, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()) #20, !dbg !3897
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #20, !dbg !3901
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3901
  %147 = mul i64 %143, %73, !dbg !3902
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3902
  %149 = or i1 %144, %146, !dbg !3903
  call void @llvm.dbg.value(metadata i1 %149, metadata !3873, metadata !DIExpression()) #20, !dbg !3897
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !3897
  br label %272, !dbg !3896

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()) #20, !dbg !3904
  call void @llvm.dbg.value(metadata i32 4, metadata !3880, metadata !DIExpression()) #20, !dbg !3904
  call void @llvm.dbg.value(metadata i32 undef, metadata !3884, metadata !DIExpression()) #20, !dbg !3906
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !3908
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3908
  %153 = mul i64 %49, %73, !dbg !3909
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3909
  call void @llvm.dbg.value(metadata i1 %152, metadata !3873, metadata !DIExpression()) #20, !dbg !3904
  call void @llvm.dbg.value(metadata i32 3, metadata !3880, metadata !DIExpression()) #20, !dbg !3904
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #20, !dbg !3908
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3908
  %157 = mul i64 %154, %73, !dbg !3909
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3909
  %159 = or i1 %152, %156, !dbg !3910
  call void @llvm.dbg.value(metadata i1 %159, metadata !3873, metadata !DIExpression()) #20, !dbg !3904
  call void @llvm.dbg.value(metadata i32 2, metadata !3880, metadata !DIExpression()) #20, !dbg !3904
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #20, !dbg !3908
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3908
  %162 = mul i64 %158, %73, !dbg !3909
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3909
  %164 = or i1 %159, %161, !dbg !3910
  call void @llvm.dbg.value(metadata i1 %164, metadata !3873, metadata !DIExpression()) #20, !dbg !3904
  call void @llvm.dbg.value(metadata i32 1, metadata !3880, metadata !DIExpression()) #20, !dbg !3904
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #20, !dbg !3908
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3908
  %167 = mul i64 %163, %73, !dbg !3909
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3909
  %169 = or i1 %164, %166, !dbg !3910
  call void @llvm.dbg.value(metadata i1 %169, metadata !3873, metadata !DIExpression()) #20, !dbg !3904
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()) #20, !dbg !3904
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #20, !dbg !3908
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3908
  %172 = mul i64 %168, %73, !dbg !3909
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3909
  %174 = or i1 %169, %171, !dbg !3910
  call void @llvm.dbg.value(metadata i1 %174, metadata !3873, metadata !DIExpression()) #20, !dbg !3904
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !3904
  br label %272, !dbg !3896

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i32 5, metadata !3880, metadata !DIExpression()) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i32 undef, metadata !3884, metadata !DIExpression()) #20, !dbg !3913
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !3915
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3915
  %178 = mul i64 %49, %73, !dbg !3916
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3916
  call void @llvm.dbg.value(metadata i1 %177, metadata !3873, metadata !DIExpression()) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i32 4, metadata !3880, metadata !DIExpression()) #20, !dbg !3911
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #20, !dbg !3915
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3915
  %182 = mul i64 %179, %73, !dbg !3916
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3916
  %184 = or i1 %177, %181, !dbg !3917
  call void @llvm.dbg.value(metadata i1 %184, metadata !3873, metadata !DIExpression()) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i32 3, metadata !3880, metadata !DIExpression()) #20, !dbg !3911
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #20, !dbg !3915
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3915
  %187 = mul i64 %183, %73, !dbg !3916
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3916
  %189 = or i1 %184, %186, !dbg !3917
  call void @llvm.dbg.value(metadata i1 %189, metadata !3873, metadata !DIExpression()) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i32 2, metadata !3880, metadata !DIExpression()) #20, !dbg !3911
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #20, !dbg !3915
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3915
  %192 = mul i64 %188, %73, !dbg !3916
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3916
  %194 = or i1 %189, %191, !dbg !3917
  call void @llvm.dbg.value(metadata i1 %194, metadata !3873, metadata !DIExpression()) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i32 1, metadata !3880, metadata !DIExpression()) #20, !dbg !3911
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #20, !dbg !3915
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3915
  %197 = mul i64 %193, %73, !dbg !3916
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3916
  %199 = or i1 %194, %196, !dbg !3917
  call void @llvm.dbg.value(metadata i1 %199, metadata !3873, metadata !DIExpression()) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()) #20, !dbg !3911
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #20, !dbg !3915
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3915
  %202 = mul i64 %198, %73, !dbg !3916
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3916
  %204 = or i1 %199, %201, !dbg !3917
  call void @llvm.dbg.value(metadata i1 %204, metadata !3873, metadata !DIExpression()) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !3911
  br label %272, !dbg !3896

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !3884, metadata !DIExpression()) #20, !dbg !3918
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #20, !dbg !3920
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3920
  %208 = shl i64 %49, 9, !dbg !3921
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3921
  call void @llvm.dbg.value(metadata i1 %207, metadata !3795, metadata !DIExpression()), !dbg !3851
  br label %272, !dbg !3922

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !3884, metadata !DIExpression()) #20, !dbg !3923
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #20, !dbg !3925
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3925
  %213 = shl i64 %49, 10, !dbg !3926
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3926
  call void @llvm.dbg.value(metadata i1 %212, metadata !3795, metadata !DIExpression()), !dbg !3851
  br label %272, !dbg !3927

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3879, metadata !DIExpression()) #20, !dbg !3928
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()) #20, !dbg !3928
  call void @llvm.dbg.value(metadata i32 2, metadata !3880, metadata !DIExpression()) #20, !dbg !3928
  call void @llvm.dbg.value(metadata i32 undef, metadata !3884, metadata !DIExpression()) #20, !dbg !3930
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !3932
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3932
  %218 = mul i64 %49, %73, !dbg !3933
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3933
  call void @llvm.dbg.value(metadata i1 %217, metadata !3873, metadata !DIExpression()) #20, !dbg !3928
  call void @llvm.dbg.value(metadata i32 1, metadata !3880, metadata !DIExpression()) #20, !dbg !3928
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #20, !dbg !3932
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3932
  %222 = mul i64 %219, %73, !dbg !3933
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3933
  %224 = or i1 %217, %221, !dbg !3934
  call void @llvm.dbg.value(metadata i1 %224, metadata !3873, metadata !DIExpression()) #20, !dbg !3928
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()) #20, !dbg !3928
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #20, !dbg !3932
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3932
  %227 = mul i64 %223, %73, !dbg !3933
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3933
  %229 = or i1 %224, %226, !dbg !3934
  call void @llvm.dbg.value(metadata i1 %229, metadata !3873, metadata !DIExpression()) #20, !dbg !3928
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !3928
  br label %272, !dbg !3896

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3879, metadata !DIExpression()) #20, !dbg !3935
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()) #20, !dbg !3935
  call void @llvm.dbg.value(metadata i32 undef, metadata !3880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !3935
  call void @llvm.dbg.value(metadata i32 undef, metadata !3884, metadata !DIExpression()) #20, !dbg !3937
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !3939
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3939
  %233 = mul i64 %49, %73, !dbg !3940
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3940
  call void @llvm.dbg.value(metadata i1 %232, metadata !3873, metadata !DIExpression()) #20, !dbg !3935
  call void @llvm.dbg.value(metadata i32 undef, metadata !3880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !3935
  br label %272, !dbg !3896

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3879, metadata !DIExpression()) #20, !dbg !3941
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()) #20, !dbg !3941
  call void @llvm.dbg.value(metadata i32 1, metadata !3880, metadata !DIExpression()) #20, !dbg !3941
  call void @llvm.dbg.value(metadata i32 undef, metadata !3884, metadata !DIExpression()) #20, !dbg !3943
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !3945
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !3945
  %238 = mul i64 %49, %73, !dbg !3946
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !3946
  call void @llvm.dbg.value(metadata i1 %237, metadata !3873, metadata !DIExpression()) #20, !dbg !3941
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()) #20, !dbg !3941
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #20, !dbg !3945
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !3945
  %242 = mul i64 %239, %73, !dbg !3946
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !3946
  %244 = or i1 %237, %241, !dbg !3947
  call void @llvm.dbg.value(metadata i1 %244, metadata !3873, metadata !DIExpression()) #20, !dbg !3941
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !3941
  br label %272, !dbg !3896

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3879, metadata !DIExpression()) #20, !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()) #20, !dbg !3948
  call void @llvm.dbg.value(metadata i32 3, metadata !3880, metadata !DIExpression()) #20, !dbg !3948
  call void @llvm.dbg.value(metadata i32 undef, metadata !3884, metadata !DIExpression()) #20, !dbg !3950
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !3952
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !3952
  %248 = mul i64 %49, %73, !dbg !3953
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !3953
  call void @llvm.dbg.value(metadata i1 %247, metadata !3873, metadata !DIExpression()) #20, !dbg !3948
  call void @llvm.dbg.value(metadata i32 2, metadata !3880, metadata !DIExpression()) #20, !dbg !3948
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #20, !dbg !3952
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3952
  %252 = mul i64 %249, %73, !dbg !3953
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3953
  %254 = or i1 %247, %251, !dbg !3954
  call void @llvm.dbg.value(metadata i1 %254, metadata !3873, metadata !DIExpression()) #20, !dbg !3948
  call void @llvm.dbg.value(metadata i32 1, metadata !3880, metadata !DIExpression()) #20, !dbg !3948
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #20, !dbg !3952
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3952
  %257 = mul i64 %253, %73, !dbg !3953
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3953
  %259 = or i1 %254, %256, !dbg !3954
  call void @llvm.dbg.value(metadata i1 %259, metadata !3873, metadata !DIExpression()) #20, !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()) #20, !dbg !3948
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #20, !dbg !3952
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !3952
  %262 = mul i64 %258, %73, !dbg !3953
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !3953
  %264 = or i1 %259, %261, !dbg !3954
  call void @llvm.dbg.value(metadata i1 %264, metadata !3873, metadata !DIExpression()) #20, !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !3948
  br label %272, !dbg !3896

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3884, metadata !DIExpression()) #20, !dbg !3955
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #20, !dbg !3957
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !3957
  %268 = shl i64 %49, 1, !dbg !3958
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !3958
  call void @llvm.dbg.value(metadata i1 %267, metadata !3795, metadata !DIExpression()), !dbg !3851
  br label %272, !dbg !3959

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3785, metadata !DIExpression()), !dbg !3796
  store i64 %49, i64* %3, align 8, !dbg !3960, !tbaa !1385
  %271 = or i32 %48, 2, !dbg !3961
  br label %285, !dbg !3962

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !3796
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3963
  call void @llvm.dbg.value(metadata i32 %275, metadata !3795, metadata !DIExpression()), !dbg !3851
  %276 = or i32 %48, %275, !dbg !3896
  call void @llvm.dbg.value(metadata i32 %276, metadata !3786, metadata !DIExpression()), !dbg !3796
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3964
  store i8* %277, i8** %25, align 8, !dbg !3964, !tbaa !1191
  %278 = load i8, i8* %277, align 1, !dbg !3965, !tbaa !1348
  %279 = icmp eq i8 %278, 0, !dbg !3965
  %280 = or i32 %276, 2, !dbg !3967
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3968
  call void @llvm.dbg.value(metadata i32 %281, metadata !3786, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i32 %281, metadata !3786, metadata !DIExpression()), !dbg !3796
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3969
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3970
  call void @llvm.dbg.value(metadata i32 %284, metadata !3786, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 %283, metadata !3785, metadata !DIExpression()), !dbg !3796
  store i64 %283, i64* %3, align 8, !dbg !3971, !tbaa !1385
  br label %285, !dbg !3972

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !3796
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20, !dbg !3973
  ret i32 %286, !dbg !3973
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #13 !dbg !3974 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3976, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %1, metadata !3977, metadata !DIExpression()), !dbg !3982
  %3 = icmp eq i64 %0, 0, !dbg !3983
  %4 = icmp eq i64 %1, 0, !dbg !3984
  %5 = or i1 %3, %4, !dbg !3985
  br i1 %5, label %11, label %6, !dbg !3985

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3979, metadata !DIExpression()), !dbg !3986
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3987
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3987
  br i1 %8, label %9, label %11, !dbg !3989

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !3990
  store i32 12, i32* %10, align 4, !dbg !3992, !tbaa !1311
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3976, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %12, metadata !3977, metadata !DIExpression()), !dbg !3982
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !3993
  call void @llvm.dbg.value(metadata i8* %14, metadata !3978, metadata !DIExpression()), !dbg !3982
  br label %15, !dbg !3994

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3982
  ret i8* %16, !dbg !3995
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3996 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4004, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8* %1, metadata !4005, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i64 %2, metadata !4006, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4007, metadata !DIExpression()), !dbg !4013
  %6 = bitcast i32* %5 to i8*, !dbg !4014
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4014
  %7 = icmp eq i32* %0, null, !dbg !4015
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4017
  call void @llvm.dbg.value(metadata i32* %8, metadata !4004, metadata !DIExpression()), !dbg !4013
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4018
  call void @llvm.dbg.value(metadata i64 %9, metadata !4008, metadata !DIExpression()), !dbg !4013
  %10 = icmp ugt i64 %9, -3, !dbg !4019
  %11 = icmp ne i64 %2, 0, !dbg !4020
  %12 = and i1 %11, %10, !dbg !4021
  br i1 %12, label %13, label %18, !dbg !4021

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4022
  br i1 %14, label %18, label %15, !dbg !4023

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4024, !tbaa !1348
  call void @llvm.dbg.value(metadata i8 %16, metadata !4010, metadata !DIExpression()), !dbg !4025
  %17 = zext i8 %16 to i32, !dbg !4026
  store i32 %17, i32* %8, align 4, !dbg !4027, !tbaa !1311
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4013
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4028
  ret i64 %19, !dbg !4028
}

; Function Attrs: nounwind
declare !dbg !556 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @areadlink(i8* %0) local_unnamed_addr #8 !dbg !4029 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4031, metadata !DIExpression()), !dbg !4032
  %2 = tail call i8* @careadlinkat(i32 -100, i8* %0, i8* null, i64 0, %struct.allocator* null, i64 (i32, i8*, i8*, i64)* nonnull @careadlinkatcwd) #20, !dbg !4033
  ret i8* %2, !dbg !4034
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @careadlinkatcwd(i32 %0, i8* nocapture readonly %1, i8* nocapture %2, i64 %3) #8 !dbg !4035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4042, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i8* %1, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i8* %2, metadata !4044, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 %3, metadata !4045, metadata !DIExpression()), !dbg !4046
  %5 = icmp eq i32 %0, -100, !dbg !4047
  br i1 %5, label %7, label %6, !dbg !4049

6:                                                ; preds = %4
  tail call void @abort() #23, !dbg !4050
  unreachable, !dbg !4050

7:                                                ; preds = %4
  %8 = tail call i64 @readlink(i8* %1, i8* %2, i64 %3) #20, !dbg !4051
  ret i64 %8, !dbg !4052
}

; Function Attrs: nofree nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @careadlinkat(i32 %0, i8* %1, i8* %2, i64 %3, %struct.allocator* readonly %4, i64 (i32, i8*, i8*, i64)* nocapture %5) local_unnamed_addr #8 !dbg !4053 {
  %7 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4066, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %1, metadata !4067, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %2, metadata !4068, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %3, metadata !4069, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata %struct.allocator* %4, metadata !4070, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*, i64)* %5, metadata !4071, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !4074, metadata !DIExpression()), !dbg !4093
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !4094
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %8) #20, !dbg !4094
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !4075, metadata !DIExpression()), !dbg !4095
  %9 = icmp eq %struct.allocator* %4, null, !dbg !4096
  %10 = select i1 %9, %struct.allocator* @stdlib_allocator, %struct.allocator* %4, !dbg !4098
  call void @llvm.dbg.value(metadata %struct.allocator* %10, metadata !4070, metadata !DIExpression()), !dbg !4093
  %11 = icmp eq i64 %3, 0, !dbg !4099
  %12 = select i1 %11, i64 1024, i64 %3, !dbg !4101
  %13 = select i1 %11, i8* %8, i8* %2, !dbg !4101
  call void @llvm.dbg.value(metadata i8* %13, metadata !4068, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %12, metadata !4069, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %13, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %12, metadata !4073, metadata !DIExpression()), !dbg !4093
  %14 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 2, !dbg !4102
  %15 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 0, !dbg !4104
  br label %16, !dbg !4105

16:                                               ; preds = %64, %6
  %17 = phi i64 [ %12, %6 ], [ %65, %64 ], !dbg !4093
  %18 = phi i8* [ %13, %6 ], [ %67, %64 ], !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %17, metadata !4073, metadata !DIExpression()), !dbg !4093
  %19 = call i64 %5(i32 %0, i8* %1, i8* %18, i64 %17) #20, !dbg !4106
  call void @llvm.dbg.value(metadata i64 %19, metadata !4079, metadata !DIExpression()), !dbg !4104
  %20 = icmp slt i64 %19, 0, !dbg !4107
  br i1 %20, label %21, label %29, !dbg !4108

21:                                               ; preds = %16
  %22 = tail call i32* @__errno_location() #25, !dbg !4109
  %23 = load i32, i32* %22, align 4, !dbg !4109, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %23, metadata !4082, metadata !DIExpression()), !dbg !4110
  %24 = icmp eq i32 %23, 34, !dbg !4111
  br i1 %24, label %29, label %25, !dbg !4113

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  %26 = icmp eq i8* %18, %13, !dbg !4114
  br i1 %26, label %77, label %27, !dbg !4117

27:                                               ; preds = %25
  %28 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !4118, !tbaa !4120
  call void %28(i8* %18) #20, !dbg !4122
  store i32 %23, i32* %22, align 4, !dbg !4123, !tbaa !1311
  br label %77, !dbg !4124

29:                                               ; preds = %21, %16
  call void @llvm.dbg.value(metadata i64 %19, metadata !4081, metadata !DIExpression()), !dbg !4104
  %30 = icmp ult i64 %19, %17, !dbg !4125
  br i1 %30, label %31, label %52, !dbg !4126

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i64 %17, metadata !4073, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %17, metadata !4073, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %17, metadata !4073, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %17, metadata !4073, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %17, metadata !4073, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %17, metadata !4073, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %18, metadata !4072, metadata !DIExpression()), !dbg !4093
  %32 = add nuw i64 %19, 1, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %32, metadata !4081, metadata !DIExpression()), !dbg !4104
  %33 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !4128
  store i8 0, i8* %33, align 1, !dbg !4129, !tbaa !1348
  %34 = icmp eq i8* %18, %8, !dbg !4130
  br i1 %34, label %35, label %40, !dbg !4131

35:                                               ; preds = %31
  %36 = load i8* (i64)*, i8* (i64)** %15, align 8, !dbg !4132, !tbaa !4133
  %37 = call i8* %36(i64 %32) #20, !dbg !4134
  call void @llvm.dbg.value(metadata i8* %37, metadata !4085, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %32, metadata !4073, metadata !DIExpression()), !dbg !4093
  %38 = icmp eq i8* %37, null, !dbg !4136
  br i1 %38, label %69, label %39, !dbg !4138

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %37, metadata !4139, metadata !DIExpression()) #20, !dbg !4144
  call void @llvm.dbg.value(metadata i8* %18, metadata !4142, metadata !DIExpression()) #20, !dbg !4144
  call void @llvm.dbg.value(metadata i64 %32, metadata !4143, metadata !DIExpression()) #20, !dbg !4144
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %37, i8* nonnull align 16 %8, i64 %32, i1 false) #20, !dbg !4146
  call void @llvm.dbg.value(metadata i8* %37, metadata !4072, metadata !DIExpression()), !dbg !4093
  br label %77

40:                                               ; preds = %31
  %41 = icmp uge i64 %32, %17, !dbg !4147
  %42 = icmp eq i8* %18, %13, !dbg !4148
  %43 = or i1 %42, %41, !dbg !4149
  br i1 %43, label %77, label %44, !dbg !4149

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 1, !dbg !4150
  %46 = load i8* (i8*, i64)*, i8* (i8*, i64)** %45, align 8, !dbg !4150, !tbaa !4151
  %47 = icmp eq i8* (i8*, i64)* %46, null, !dbg !4152
  br i1 %47, label %77, label %48, !dbg !4153

48:                                               ; preds = %44
  %49 = call i8* %46(i8* nonnull %18, i64 %32) #20, !dbg !4154
  call void @llvm.dbg.value(metadata i8* %49, metadata !4090, metadata !DIExpression()), !dbg !4155
  %50 = icmp eq i8* %49, null, !dbg !4156
  %51 = select i1 %50, i8* %18, i8* %49, !dbg !4158
  call void @llvm.dbg.value(metadata i8* %51, metadata !4072, metadata !DIExpression()), !dbg !4093
  br label %77, !dbg !4159

52:                                               ; preds = %29
  %53 = icmp eq i8* %18, %13, !dbg !4160
  br i1 %53, label %56, label %54, !dbg !4161

54:                                               ; preds = %52
  %55 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !4162, !tbaa !4120
  call void %55(i8* %18) #20, !dbg !4163
  br label %56, !dbg !4163

56:                                               ; preds = %52, %54
  %57 = icmp ult i64 %17, 4611686018427387905, !dbg !4164
  br i1 %57, label %58, label %60, !dbg !4166

58:                                               ; preds = %56
  %59 = shl nuw i64 %17, 1, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %59, metadata !4073, metadata !DIExpression()), !dbg !4093
  br label %64, !dbg !4168

60:                                               ; preds = %56
  %61 = icmp sgt i64 %17, -1, !dbg !4169
  br i1 %61, label %64, label %62, !dbg !4171

62:                                               ; preds = %60
  %63 = tail call i32* @__errno_location() #25, !dbg !4172
  store i32 36, i32* %63, align 4, !dbg !4175, !tbaa !1311
  br label %77, !dbg !4176

64:                                               ; preds = %58, %60
  %65 = phi i64 [ %59, %58 ], [ -9223372036854775808, %60 ], !dbg !4177
  call void @llvm.dbg.value(metadata i64 %65, metadata !4073, metadata !DIExpression()), !dbg !4093
  %66 = load i8* (i64)*, i8* (i64)** %15, align 8, !dbg !4178, !tbaa !4133
  %67 = call i8* %66(i64 %65) #20, !dbg !4179
  call void @llvm.dbg.value(metadata i8* %67, metadata !4072, metadata !DIExpression()), !dbg !4093
  %68 = icmp eq i8* %67, null, !dbg !4180
  br i1 %68, label %69, label %16, !dbg !4180, !llvm.loop !4181

69:                                               ; preds = %64, %35
  %70 = phi i64 [ %32, %35 ], [ %65, %64 ]
  %71 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 3, !dbg !4183
  %72 = load void (i64)*, void (i64)** %71, align 8, !dbg !4183, !tbaa !4185
  %73 = icmp eq void (i64)* %72, null, !dbg !4186
  br i1 %73, label %75, label %74, !dbg !4187

74:                                               ; preds = %69
  call void %72(i64 %70) #20, !dbg !4188
  br label %75, !dbg !4188

75:                                               ; preds = %69, %74
  %76 = tail call i32* @__errno_location() #25, !dbg !4189
  store i32 12, i32* %76, align 4, !dbg !4190, !tbaa !1311
  br label %77, !dbg !4191

77:                                               ; preds = %27, %25, %48, %44, %40, %39, %62, %75
  %78 = phi i8* [ null, %75 ], [ %37, %39 ], [ %18, %40 ], [ %18, %44 ], [ %51, %48 ], [ null, %62 ], [ null, %25 ], [ null, %27 ], !dbg !4093
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %8) #20, !dbg !4192
  ret i8* %78, !dbg !4192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4193 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4199, metadata !DIExpression()), !dbg !4204
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4205
  call void @llvm.dbg.value(metadata i1 undef, metadata !4200, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4206, metadata !DIExpression()), !dbg !4210
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4212
  %4 = load i32, i32* %3, align 8, !dbg !4212, !tbaa !4213
  %5 = and i32 %4, 32, !dbg !4212
  %6 = icmp eq i32 %5, 0, !dbg !4215
  call void @llvm.dbg.value(metadata i1 %6, metadata !4202, metadata !DIExpression()), !dbg !4204
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4216
  %8 = icmp ne i32 %7, 0, !dbg !4217
  call void @llvm.dbg.value(metadata i1 %8, metadata !4203, metadata !DIExpression()), !dbg !4204
  br i1 %6, label %9, label %19, !dbg !4218

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4220
  call void @llvm.dbg.value(metadata i1 %10, metadata !4200, metadata !DIExpression()), !dbg !4204
  %11 = xor i1 %8, true, !dbg !4221
  %12 = or i1 %10, %11, !dbg !4221
  %13 = sext i1 %8 to i32, !dbg !4221
  br i1 %12, label %22, label %14, !dbg !4221

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4222
  %16 = load i32, i32* %15, align 4, !dbg !4222, !tbaa !1311
  %17 = icmp ne i32 %16, 9, !dbg !4223
  %18 = sext i1 %17 to i32, !dbg !4224
  br label %22, !dbg !4224

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4225

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4227
  store i32 0, i32* %21, align 4, !dbg !4229, !tbaa !1311
  br label %22, !dbg !4227

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4204
  ret i32 %23, !dbg !4230
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4231 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4233, metadata !DIExpression()), !dbg !4238
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4239
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4239
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4234, metadata !DIExpression()), !dbg !4240
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !4241
  %5 = icmp eq i32 %4, 0, !dbg !4241
  br i1 %5, label %6, label %13, !dbg !4243

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4244
  %8 = load i16, i16* %7, align 16, !dbg !4244
  %9 = icmp eq i16 %8, 67, !dbg !4244
  br i1 %9, label %13, label %10, !dbg !4245

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i64 6), !dbg !4246
  %12 = icmp ne i32 %11, 0, !dbg !4247
  br label %13, !dbg !4245

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4238
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4248
  ret i1 %14, !dbg !4248
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4249 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4252
  call void @llvm.dbg.value(metadata i8* %1, metadata !4251, metadata !DIExpression()), !dbg !4253
  %2 = icmp eq i8* %1, null, !dbg !4254
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), i8* %1, !dbg !4256
  call void @llvm.dbg.value(metadata i8* %3, metadata !4251, metadata !DIExpression()), !dbg !4253
  %4 = load i8, i8* %3, align 1, !dbg !4257, !tbaa !1348
  %5 = icmp eq i8 %4, 0, !dbg !4261
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.165, i64 0, i64 0), i8* %3, !dbg !4262
  call void @llvm.dbg.value(metadata i8* %6, metadata !4251, metadata !DIExpression()), !dbg !4253
  ret i8* %6, !dbg !4263
}

; Function Attrs: nounwind
declare !dbg !1024 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4264 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4268, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i8* %1, metadata !4269, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %2, metadata !4270, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i32 %0, metadata !4272, metadata !DIExpression()) #20, !dbg !4281
  call void @llvm.dbg.value(metadata i8* %1, metadata !4275, metadata !DIExpression()) #20, !dbg !4281
  call void @llvm.dbg.value(metadata i64 %2, metadata !4276, metadata !DIExpression()) #20, !dbg !4281
  call void @llvm.dbg.value(metadata i32 %0, metadata !4283, metadata !DIExpression()) #20, !dbg !4289
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4291
  call void @llvm.dbg.value(metadata i8* %4, metadata !4288, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i8* %4, metadata !4277, metadata !DIExpression()) #20, !dbg !4281
  %5 = icmp eq i8* %4, null, !dbg !4292
  br i1 %5, label %6, label %9, !dbg !4293

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4294
  br i1 %7, label %19, label %8, !dbg !4297

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4298, !tbaa !1348
  br label %19, !dbg !4299

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %10, metadata !4278, metadata !DIExpression()) #20, !dbg !4301
  %11 = icmp ult i64 %10, %2, !dbg !4302
  br i1 %11, label %12, label %14, !dbg !4304

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4305
  call void @llvm.dbg.value(metadata i8* %1, metadata !4307, metadata !DIExpression()) #20, !dbg !4312
  call void @llvm.dbg.value(metadata i8* %4, metadata !4310, metadata !DIExpression()) #20, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %13, metadata !4311, metadata !DIExpression()) #20, !dbg !4312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !4314
  br label %19, !dbg !4315

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4316
  br i1 %15, label %19, label %16, !dbg !4319

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4320
  call void @llvm.dbg.value(metadata i8* %1, metadata !4307, metadata !DIExpression()) #20, !dbg !4322
  call void @llvm.dbg.value(metadata i8* %4, metadata !4310, metadata !DIExpression()) #20, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %17, metadata !4311, metadata !DIExpression()) #20, !dbg !4322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !4324
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4325
  store i8 0, i8* %18, align 1, !dbg !4326, !tbaa !1348
  br label %19, !dbg !4327

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4328
  ret i32 %20, !dbg !4329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4332, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 %0, metadata !4283, metadata !DIExpression()) #20, !dbg !4334
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4336
  call void @llvm.dbg.value(metadata i8* %2, metadata !4288, metadata !DIExpression()) #20, !dbg !4334
  ret i8* %2, !dbg !4337
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4338 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4344, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 0, metadata !4345, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 0, metadata !4347, metadata !DIExpression()), !dbg !4348
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4349
  call void @llvm.dbg.value(metadata i32 %2, metadata !4346, metadata !DIExpression()), !dbg !4348
  %3 = icmp slt i32 %2, 0, !dbg !4350
  br i1 %3, label %4, label %6, !dbg !4352

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4353
  br label %24, !dbg !4354

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4355
  %8 = icmp eq i32 %7, 0, !dbg !4355
  br i1 %8, label %13, label %9, !dbg !4357

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4358
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4359
  %12 = icmp eq i64 %11, -1, !dbg !4360
  br i1 %12, label %16, label %13, !dbg !4361

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4362
  %15 = icmp eq i32 %14, 0, !dbg !4362
  br i1 %15, label %16, label %18, !dbg !4363

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4345, metadata !DIExpression()), !dbg !4348
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4364
  call void @llvm.dbg.value(metadata i32 %21, metadata !4347, metadata !DIExpression()), !dbg !4348
  br label %24, !dbg !4365

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4366
  %20 = load i32, i32* %19, align 4, !dbg !4366, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %20, metadata !4345, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 %20, metadata !4345, metadata !DIExpression()), !dbg !4348
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4364
  call void @llvm.dbg.value(metadata i32 %21, metadata !4347, metadata !DIExpression()), !dbg !4348
  %22 = icmp eq i32 %20, 0, !dbg !4367
  br i1 %22, label %24, label %23, !dbg !4365

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4369, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 -1, metadata !4347, metadata !DIExpression()), !dbg !4348
  br label %24, !dbg !4371

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4348
  ret i32 %25, !dbg !4372
}

; Function Attrs: nofree nounwind
declare !dbg !1033 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1068 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1069 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4373 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4379, metadata !DIExpression()), !dbg !4380
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4381
  br i1 %2, label %6, label %3, !dbg !4383

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4384
  %5 = icmp eq i32 %4, 0, !dbg !4384
  br i1 %5, label %6, label %8, !dbg !4385

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4386
  br label %17, !dbg !4387

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4388, metadata !DIExpression()) #20, !dbg !4393
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4395
  %10 = load i32, i32* %9, align 8, !dbg !4395, !tbaa !4213
  %11 = and i32 %10, 256, !dbg !4397
  %12 = icmp eq i32 %11, 0, !dbg !4397
  br i1 %12, label %15, label %13, !dbg !4398

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4399
  br label %15, !dbg !4399

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4400
  br label %17, !dbg !4401

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4380
  ret i32 %18, !dbg !4402
}

; Function Attrs: nofree nounwind
declare !dbg !1076 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4403 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4410, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64 %1, metadata !4411, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 %2, metadata !4412, metadata !DIExpression()), !dbg !4416
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4417
  %5 = load i8*, i8** %4, align 8, !dbg !4417, !tbaa !4418
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4419
  %7 = load i8*, i8** %6, align 8, !dbg !4419, !tbaa !4420
  %8 = icmp eq i8* %5, %7, !dbg !4421
  br i1 %8, label %9, label %28, !dbg !4422

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4423
  %11 = load i8*, i8** %10, align 8, !dbg !4423, !tbaa !4424
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4425
  %13 = load i8*, i8** %12, align 8, !dbg !4425, !tbaa !4426
  %14 = icmp eq i8* %11, %13, !dbg !4427
  br i1 %14, label %15, label %28, !dbg !4428

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4429
  %17 = load i8*, i8** %16, align 8, !dbg !4429, !tbaa !4430
  %18 = icmp eq i8* %17, null, !dbg !4431
  br i1 %18, label %19, label %28, !dbg !4432

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4433
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4434
  call void @llvm.dbg.value(metadata i64 %21, metadata !4413, metadata !DIExpression()), !dbg !4435
  %22 = icmp eq i64 %21, -1, !dbg !4436
  br i1 %22, label %30, label %23, !dbg !4438

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4439
  %25 = load i32, i32* %24, align 8, !dbg !4440, !tbaa !4213
  %26 = and i32 %25, -17, !dbg !4440
  store i32 %26, i32* %24, align 8, !dbg !4440, !tbaa !4213
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4441
  store i64 %21, i64* %27, align 8, !dbg !4442, !tbaa !4443
  br label %30, !dbg !4444

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4445
  br label %30, !dbg !4446

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4416
  ret i32 %31, !dbg !4447
}

; Function Attrs: nofree nounwind
declare !dbg !1152 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !192, !197, !454, !458, !462, !244, !465, !469, !250, !291, !475, !425, !517, !538, !541, !546, !550, !553, !572, !585, !588, !627, !634, !1027, !1030, !1073, !1114, !433}
!llvm.ident = !{!1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155, !1155}
!llvm.module.flags = !{!1156, !1157, !1158, !1159, !1160}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !187, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !174, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/stdbuf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !14, line: 25, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!21 = !{!22, !32, !93, !97, !101, !104, !107, !114, !129, !133, !26, !83, !137, !141, !143, !146, !150, !155, !158, !159, !162, !164, !166, !167, !171}
!22 = !DISubprogram(name: "dcgettext", scope: !23, file: !23, line: 51, type: !24, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!23 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !28, !28, !30}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{}
!32 = !DISubprogram(name: "fputs_unlocked", scope: !33, file: !33, line: 662, type: !34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!33 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!34 = !DISubroutineType(types: !35)
!35 = !{!30, !28, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !39)
!38 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !55, !56, !57, !58, !62, !64, !66, !70, !73, !75, !78, !81, !82, !84, !88, !89}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !37, file: !38, line: 51, baseType: !30, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !37, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !37, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !37, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !37, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !37, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !37, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !37, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !37, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !37, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !37, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !37, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !37, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !38, line: 36, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !37, file: !38, line: 70, baseType: !36, size: 64, offset: 832)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !37, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !37, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !37, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !60, line: 152, baseType: !61)
!60 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!61 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !37, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !37, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!65 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !37, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !37, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !38, line: 43, baseType: null)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !37, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !60, line: 153, baseType: !61)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !37, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !38, line: 37, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !37, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !38, line: 38, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !37, file: !38, line: 93, baseType: !36, size: 64, offset: 1344)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !37, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !37, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !86, line: 46, baseType: !87)
!86 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!87 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !37, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !37, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 20)
!93 = !DISubprogram(name: "set_program_name", scope: !94, file: !94, line: 37, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!94 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!95 = !DISubroutineType(types: !96)
!96 = !{null, !28}
!97 = !DISubprogram(name: "setlocale", scope: !98, file: !98, line: 122, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!98 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!99 = !DISubroutineType(types: !100)
!100 = !{!26, !30, !28}
!101 = !DISubprogram(name: "bindtextdomain", scope: !23, file: !23, line: 86, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!102 = !DISubroutineType(types: !103)
!103 = !{!26, !28, !28}
!104 = !DISubprogram(name: "textdomain", scope: !23, file: !23, line: 82, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!105 = !DISubroutineType(types: !106)
!106 = !{!26, !28}
!107 = !DISubprogram(name: "atexit", scope: !108, file: !108, line: 595, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!108 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!109 = !DISubroutineType(types: !110)
!110 = !{!30, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null}
!114 = !DISubprogram(name: "getopt_long", scope: !115, file: !115, line: 66, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!115 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!116 = !DISubroutineType(types: !117)
!117 = !{!30, !30, !118, !28, !120, !127}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !115, line: 50, size: 256, elements: !123)
!123 = !{!124, !125, !126, !128}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !115, line: 52, baseType: !28, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !122, file: !115, line: 55, baseType: !30, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !122, file: !115, line: 56, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !122, file: !115, line: 57, baseType: !30, size: 32, offset: 192)
!129 = !DISubprogram(name: "error", scope: !130, file: !130, line: 52, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!130 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!131 = !DISubroutineType(types: !132)
!132 = !{null, !30, !30, !28, null}
!133 = !DISubprogram(name: "quote", scope: !134, file: !134, line: 44, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!134 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!135 = !DISubroutineType(types: !136)
!136 = !{!28, !28}
!137 = !DISubprogram(name: "version_etc", scope: !138, file: !138, line: 69, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!138 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !DISubroutineType(types: !140)
!140 = !{null, !36, !28, !28, !28, null}
!141 = !DISubprogram(name: "xstrdup", scope: !142, file: !142, line: 64, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!142 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!143 = !DISubprogram(name: "free", scope: !108, file: !108, line: 565, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !83}
!146 = !DISubprogram(name: "execvp", scope: !147, file: !147, line: 578, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!147 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!148 = !DISubroutineType(types: !149)
!149 = !{!30, !28, !118}
!150 = !DISubprogram(name: "xstrtoumax", scope: !14, file: !14, line: 48, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!151 = !DISubroutineType(types: !152)
!152 = !{!13, !28, !153, !30, !154, !28}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !156, line: 102, baseType: !157)
!156 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !60, line: 73, baseType: !87)
!158 = !DISubprogram(name: "xalloc_die", scope: !142, file: !142, line: 51, type: !112, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !31)
!159 = !DISubprogram(name: "putenv", scope: !108, file: !108, line: 647, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!160 = !DISubroutineType(types: !161)
!161 = !{!30, !26}
!162 = !DISubprogram(name: "dir_name", scope: !163, file: !163, line: 40, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!163 = !DIFile(filename: "./lib/dirname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!164 = !DISubprogram(name: "xreadlink", scope: !165, file: !165, line: 21, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!165 = !DIFile(filename: "./lib/xreadlink.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !DISubprogram(name: "getenv", scope: !108, file: !108, line: 634, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!167 = !DISubprogram(name: "file_name_concat", scope: !168, file: !168, line: 22, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!168 = !DIFile(filename: "./lib/filenamecat.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = !DISubroutineType(types: !170)
!170 = !{!26, !28, !28, !153}
!171 = !DISubprogram(name: "access", scope: !147, file: !147, line: 287, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!172 = !DISubroutineType(types: !173)
!173 = !{!30, !28, !30}
!174 = !{!175, !177, !0}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "program_path", scope: !2, file: !3, line: 40, type: !26, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "stdbuf", scope: !2, file: !3, line: 47, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 576, elements: !185)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 42, size: 192, elements: !181)
!181 = !{!182, !183, !184}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !180, file: !3, line: 44, baseType: !85, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "optc", scope: !180, file: !3, line: 45, baseType: !30, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "optarg", scope: !180, file: !3, line: 46, baseType: !26, size: 64, offset: 128)
!185 = !{!186}
!186 = !DISubrange(count: 3)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1536, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 6)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "Version", scope: !192, file: !193, line: 2, type: !28, isLocal: false, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !194, splitDebugInlining: false, nameTableKind: None)
!193 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!194 = !{!190}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "file_name", scope: !197, file: !198, line: 46, type: !28, isLocal: true, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !199, globals: !238, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !{!200, !22, !236, !129}
!200 = !DISubprogram(name: "close_stream", scope: !201, file: !201, line: 2, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!201 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !DISubroutineType(types: !203)
!203 = !{!30, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !205, file: !38, line: 51, baseType: !30, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !205, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !205, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !205, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !205, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !205, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !205, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !205, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !205, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !205, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !205, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !205, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !205, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !205, file: !38, line: 70, baseType: !204, size: 64, offset: 832)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !205, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !205, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !205, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !205, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !205, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !205, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !205, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !205, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !205, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !205, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !205, file: !38, line: 93, baseType: !204, size: 64, offset: 1344)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !205, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !205, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !205, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !205, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!236 = !DISubprogram(name: "quotearg_colon", scope: !237, file: !237, line: 391, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!237 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!238 = !{!195, !239}
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !197, file: !198, line: 56, type: !241, isLocal: true, isDefinition: true)
!241 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "exit_failure", scope: !244, file: !245, line: 24, type: !247, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !246, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!246 = !{!242}
!247 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "program_name", scope: !250, file: !251, line: 33, type: !28, isLocal: false, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !252, globals: !288, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!252 = !{!83, !253, !26}
!253 = !DISubprogram(name: "fputs", scope: !33, file: !33, line: 626, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!254 = !DISubroutineType(types: !255)
!255 = !{!30, !28, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !257, file: !38, line: 51, baseType: !30, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !257, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !257, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !257, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !257, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !257, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !257, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !257, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !257, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !257, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !257, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !257, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !257, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !257, file: !38, line: 70, baseType: !256, size: 64, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !257, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !257, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !257, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !257, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !257, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !257, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !257, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !257, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !257, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !257, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !257, file: !38, line: 93, baseType: !256, size: 64, offset: 1344)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !257, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !257, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !257, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !257, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!288 = !{!248}
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !291, file: !292, line: 85, type: !419, isLocal: false, isDefinition: true)
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !293, retainedTypes: !327, globals: !392, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!293 = !{!294, !307, !312}
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !237, line: 32, baseType: !7, size: 32, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!296 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!297 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!298 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!299 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!300 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!301 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!302 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!303 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!304 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!305 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!306 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !237, line: 242, baseType: !7, size: 32, elements: !308)
!308 = !{!309, !310, !311}
!309 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!310 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!311 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !313, line: 46, baseType: !7, size: 32, elements: !314)
!313 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!315 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!316 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!317 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!318 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!319 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!320 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!321 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!322 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!323 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!324 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!325 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!326 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!327 = !{!328, !333, !143, !348, !30, !63, !351, !85, !368, !372, !22, !378, !382, !26, !386, !158, !389}
!328 = !DISubprogram(name: "xmemdup", scope: !142, file: !142, line: 62, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!329 = !DISubroutineType(types: !330)
!330 = !{!83, !331, !87}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!333 = !DISubprogram(name: "quotearg_alloc_mem", scope: !237, file: !237, line: 342, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!334 = !DISubroutineType(types: !335)
!335 = !{!26, !28, !87, !154, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !292, line: 65, size: 448, elements: !339)
!339 = !{!340, !341, !342, !346, !347}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !338, file: !292, line: 68, baseType: !294, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !292, line: 71, baseType: !30, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !338, file: !292, line: 75, baseType: !343, size: 256, offset: 64)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 8)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !338, file: !292, line: 78, baseType: !28, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !338, file: !292, line: 81, baseType: !28, size: 64, offset: 384)
!348 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !237, file: !237, line: 408, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!349 = !DISubroutineType(types: !350)
!350 = !{!26, !30, !28, !28, !28, !87}
!351 = !DISubprogram(name: "rpl_mbrtowc", scope: !352, file: !352, line: 717, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!352 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!353 = !DISubroutineType(types: !354)
!354 = !{!87, !127, !28, !87, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 13, size: 64, elements: !358)
!357 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !356, file: !357, line: 15, baseType: !30, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !356, file: !357, line: 20, baseType: !361, size: 32, offset: 32)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !357, line: 16, size: 32, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !361, file: !357, line: 18, baseType: !7, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !361, file: !357, line: 19, baseType: !365, size: 32)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 4)
!368 = !DISubprogram(name: "iswprint", scope: !369, file: !369, line: 120, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!369 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!370 = !DISubroutineType(types: !371)
!371 = !{!30, !7}
!372 = !DISubprogram(name: "mbsinit", scope: !373, file: !373, line: 292, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!373 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!374 = !DISubroutineType(types: !375)
!375 = !{!30, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!378 = !DISubprogram(name: "locale_charset", scope: !379, file: !379, line: 35, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!379 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!380 = !DISubroutineType(types: !381)
!381 = !{!28}
!382 = !DISubprogram(name: "c_strcasecmp", scope: !383, file: !383, line: 42, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!383 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!384 = !DISubroutineType(types: !385)
!385 = !{!30, !28, !28}
!386 = !DISubprogram(name: "xmalloc", scope: !142, file: !142, line: 53, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!387 = !DISubroutineType(types: !388)
!388 = !{!83, !87}
!389 = !DISubprogram(name: "xrealloc", scope: !142, file: !142, line: 59, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!390 = !DISubroutineType(types: !391)
!391 = !{!83, !83, !87}
!392 = !{!289, !393, !399, !401, !403, !408, !415, !417}
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !291, file: !292, line: 101, type: !395, isLocal: false, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 320, elements: !397)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!397 = !{!398}
!398 = !DISubrange(count: 10)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !291, file: !292, line: 1052, type: !338, isLocal: false, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !291, file: !292, line: 116, type: !338, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "slot0", scope: !291, file: !292, line: 842, type: !405, isLocal: true, isDefinition: true)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 256)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "slotvec", scope: !291, file: !292, line: 845, type: !410, isLocal: true, isDefinition: true)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !292, line: 834, size: 128, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !411, file: !292, line: 836, baseType: !85, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !292, line: 837, baseType: !26, size: 64, offset: 64)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "nslots", scope: !291, file: !292, line: 843, type: !30, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "slotvec0", scope: !291, file: !292, line: 844, type: !411, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 704, elements: !421)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!421 = !{!422}
!422 = !DISubrange(count: 11)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !425, file: !426, line: 26, type: !428, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !427, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!427 = !{!423}
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 376, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 47)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "stdlib_allocator", scope: !433, file: !434, line: 5, type: !436, isLocal: false, isDefinition: true)
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !435, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "lib/allocator.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!435 = !{!431}
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !438, line: 27, size: 256, elements: !439)
!438 = !DIFile(filename: "./lib/allocator.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!439 = !{!440, !444, !448, !450}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !437, file: !438, line: 37, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!83, !85}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !437, file: !438, line: 43, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!83, !83, !85}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !437, file: !438, line: 46, baseType: !449, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !437, file: !438, line: 52, baseType: !451, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !85}
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !456, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!456 = !{!457, !158}
!457 = !DISubprogram(name: "mdir_name", scope: !163, file: !163, line: 43, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !460, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!460 = !{!461}
!461 = !DISubprogram(name: "last_component", scope: !163, file: !163, line: 46, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !463, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !464, splitDebugInlining: false, nameTableKind: None)
!463 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!464 = !{!26}
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !467, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!467 = !{!468, !83, !158}
!468 = !DISubprogram(name: "mfile_name_concat", scope: !168, file: !168, line: 26, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!469 = distinct !DICompileUnit(language: DW_LANG_C99, file: !470, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !471, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!471 = !{!461, !472, !83}
!472 = !DISubprogram(name: "base_len", scope: !163, file: !163, line: 44, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!473 = !DISubroutineType(types: !474)
!474 = !{!87, !28}
!475 = distinct !DICompileUnit(language: DW_LANG_C99, file: !476, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !477, retainedTypes: !481, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!477 = !{!478}
!478 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !476, line: 40, baseType: !7, size: 32, elements: !479)
!479 = !{!480}
!480 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!481 = !{!22, !482, !83}
!482 = !DISubprogram(name: "fputs_unlocked", scope: !33, file: !33, line: 662, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!483 = !DISubroutineType(types: !484)
!484 = !{!30, !28, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !486, file: !38, line: 51, baseType: !30, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !486, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !486, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !486, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !486, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !486, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !486, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !486, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !486, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !486, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !486, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !486, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !486, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !486, file: !38, line: 70, baseType: !485, size: 64, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !486, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !486, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !486, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !486, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !486, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !486, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !486, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !486, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !486, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !486, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !486, file: !38, line: 93, baseType: !485, size: 64, offset: 1344)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !486, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !486, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !486, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !486, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !519, retainedTypes: !532, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!519 = !{!520}
!520 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !521, file: !142, line: 186, baseType: !7, size: 32, elements: !530)
!521 = distinct !DISubprogram(name: "x2nrealloc", scope: !142, file: !142, line: 174, type: !522, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !525)
!522 = !DISubroutineType(types: !523)
!523 = !{!83, !83, !524, !85}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!525 = !{!526, !527, !528, !529}
!526 = !DILocalVariable(name: "p", arg: 1, scope: !521, file: !142, line: 174, type: !83)
!527 = !DILocalVariable(name: "pn", arg: 2, scope: !521, file: !142, line: 174, type: !524)
!528 = !DILocalVariable(name: "s", arg: 3, scope: !521, file: !142, line: 174, type: !85)
!529 = !DILocalVariable(name: "n", scope: !521, file: !142, line: 176, type: !85)
!530 = !{!531}
!531 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!532 = !{!85, !158, !386, !389, !26, !143, !83, !533, !536}
!533 = !DISubprogram(name: "xcalloc", scope: !142, file: !142, line: 57, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!534 = !DISubroutineType(types: !535)
!535 = !{!83, !87, !87}
!536 = !DISubprogram(name: "rpl_calloc", scope: !537, file: !537, line: 688, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!537 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !540, splitDebugInlining: false, nameTableKind: None)
!539 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!540 = !{!22, !129}
!541 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !543, splitDebugInlining: false, nameTableKind: None)
!542 = !DIFile(filename: "lib/xreadlink.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!543 = !{!544, !83, !158}
!544 = !DISubprogram(name: "areadlink", scope: !545, file: !545, line: 23, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!545 = !DIFile(filename: "./lib/areadlink.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !548, retainedTypes: !549, splitDebugInlining: false, nameTableKind: None)
!547 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!548 = !{!13, !312}
!549 = !{!30, !63}
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !552, splitDebugInlining: false, nameTableKind: None)
!551 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!552 = !{!83}
!553 = distinct !DICompileUnit(language: DW_LANG_C99, file: !554, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !555, splitDebugInlining: false, nameTableKind: None)
!554 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!555 = !{!556, !85, !568}
!556 = !DISubprogram(name: "mbrtowc", scope: !373, file: !373, line: 296, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!557 = !DISubroutineType(types: !558)
!558 = !{!87, !127, !28, !87, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 13, size: 64, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !560, file: !357, line: 15, baseType: !30, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !560, file: !357, line: 20, baseType: !564, size: 32, offset: 32)
!564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !560, file: !357, line: 16, size: 32, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !564, file: !357, line: 18, baseType: !7, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !564, file: !357, line: 19, baseType: !365, size: 32)
!568 = !DISubprogram(name: "hard_locale", scope: !569, file: !569, line: 26, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!569 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!570 = !DISubroutineType(types: !571)
!571 = !{!241, !30}
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !574, splitDebugInlining: false, nameTableKind: None)
!573 = !DIFile(filename: "lib/areadlink.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!574 = !{!575}
!575 = !DISubprogram(name: "careadlinkat", scope: !576, file: !576, line: 49, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!576 = !DIFile(filename: "./lib/careadlinkat.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!577 = !DISubroutineType(types: !578)
!578 = !{!26, !30, !28, !26, !87, !579, !582}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !576, line: 26, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!61, !30, !28, !26, !87}
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !587, splitDebugInlining: false, nameTableKind: None)
!586 = !DIFile(filename: "lib/careadlinkat.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!587 = !{!85, !26}
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !590, splitDebugInlining: false, nameTableKind: None)
!589 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!590 = !{!591}
!591 = !DISubprogram(name: "rpl_fclose", scope: !592, file: !592, line: 672, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!592 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!593 = !DISubroutineType(types: !594)
!594 = !{!30, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !596, file: !38, line: 51, baseType: !30, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !596, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !596, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !596, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !596, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !596, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !596, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !596, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !596, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !596, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !596, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !596, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !596, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !596, file: !38, line: 70, baseType: !595, size: 64, offset: 832)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !596, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !596, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !596, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !596, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !596, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !596, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !596, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !596, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !596, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !596, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !596, file: !38, line: 93, baseType: !595, size: 64, offset: 1344)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !596, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !596, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !596, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !596, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !629, splitDebugInlining: false, nameTableKind: None)
!628 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!629 = !{!630}
!630 = !DISubprogram(name: "setlocale_null_r", scope: !631, file: !631, line: 64, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!631 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!632 = !DISubroutineType(types: !633)
!633 = !{!30, !30, !26, !87}
!634 = distinct !DICompileUnit(language: DW_LANG_C99, file: !635, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !636, retainedTypes: !1023, splitDebugInlining: false, nameTableKind: None)
!635 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!636 = !{!637}
!637 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !638, line: 41, baseType: !7, size: 32, elements: !639)
!638 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022}
!640 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!641 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!642 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!643 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!644 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!645 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!646 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!647 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!648 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!649 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!650 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!651 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!652 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!653 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!654 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!655 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!656 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!657 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!658 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!659 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!660 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!661 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!662 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!663 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!664 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!665 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!666 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!667 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!668 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!669 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!670 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!671 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!672 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!673 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!674 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!675 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!676 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!677 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!678 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!679 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!680 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!681 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!682 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!683 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!684 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!685 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!686 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!687 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!688 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!689 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!748 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!751 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!752 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!753 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!754 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!755 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!756 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!757 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!758 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!759 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!760 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!761 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!762 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!835 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!908 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!909 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!910 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!911 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!912 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!913 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!914 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!915 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!916 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!917 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!918 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!919 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!920 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!921 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!922 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!924 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!925 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!926 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!927 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!928 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!929 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!955 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!956 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!957 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!958 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!959 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!964 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!965 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!966 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!967 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1023 = !{!1024, !83}
!1024 = !DISubprogram(name: "nl_langinfo", scope: !638, file: !638, line: 661, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!26, !30}
!1027 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1028, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1029, splitDebugInlining: false, nameTableKind: None)
!1028 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1029 = !{!83, !97}
!1030 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1031, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1032, splitDebugInlining: false, nameTableKind: None)
!1031 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1032 = !{!1033, !1068, !1069, !1072}
!1033 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!30, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1037, file: !38, line: 51, baseType: !30, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1037, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1037, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1037, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1037, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1037, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1037, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1037, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1037, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1037, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1037, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1037, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1037, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1037, file: !38, line: 70, baseType: !1036, size: 64, offset: 832)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1037, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1037, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1037, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1037, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1037, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1037, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1037, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1037, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1037, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1037, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1037, file: !38, line: 93, baseType: !1036, size: 64, offset: 1344)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1037, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1037, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1037, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1037, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!1068 = !DISubprogram(name: "fclose", scope: !33, file: !33, line: 213, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1069 = !DISubprogram(name: "lseek", scope: !147, file: !147, line: 334, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!61, !30, !61, !30}
!1072 = !DISubprogram(name: "rpl_fflush", scope: !592, file: !592, line: 718, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1073 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1074, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1075, splitDebugInlining: false, nameTableKind: None)
!1074 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1075 = !{!83, !1076, !1111}
!1076 = !DISubprogram(name: "fflush", scope: !33, file: !33, line: 218, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!30, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1080, file: !38, line: 51, baseType: !30, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1080, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1080, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1080, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1080, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1080, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1080, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1080, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1080, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1080, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1080, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1080, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1080, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1080, file: !38, line: 70, baseType: !1079, size: 64, offset: 832)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1080, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1080, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1080, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1080, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1080, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1080, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1080, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1080, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1080, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1080, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1080, file: !38, line: 93, baseType: !1079, size: 64, offset: 1344)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1080, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1080, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1080, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1080, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!1111 = !DISubprogram(name: "rpl_fseeko", scope: !592, file: !592, line: 1034, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!30, !1079, !61, !30}
!1114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1115, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1116, splitDebugInlining: false, nameTableKind: None)
!1115 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1116 = !{!83, !1117, !1069, !1152}
!1117 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!30, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1121, file: !38, line: 51, baseType: !30, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1121, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1121, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1121, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1121, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1121, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1121, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1121, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1121, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1121, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1121, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1121, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1121, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1121, file: !38, line: 70, baseType: !1120, size: 64, offset: 832)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1121, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1121, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1121, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1121, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1121, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1121, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1121, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1121, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1121, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1121, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1121, file: !38, line: 93, baseType: !1120, size: 64, offset: 1344)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1121, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1121, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1121, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1121, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!1152 = !DISubprogram(name: "fseeko", scope: !33, file: !33, line: 707, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!30, !1120, !61, !30}
!1155 = !{!"clang version 10.0.0 "}
!1156 = !{i32 7, !"Dwarf Version", i32 4}
!1157 = !{i32 2, !"Debug Info Version", i32 3}
!1158 = !{i32 1, !"wchar_size", i32 4}
!1159 = !{i32 7, !"PIC Level", i32 2}
!1160 = !{i32 7, !"PIE Level", i32 2}
!1161 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 85, type: !1162, scopeLine: 86, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !30}
!1164 = !{!1165}
!1165 = !DILocalVariable(name: "status", arg: 1, scope: !1161, file: !3, line: 85, type: !30)
!1166 = !DILocalVariable(name: "infomap", scope: !1167, file: !6, line: 636, type: !1179)
!1167 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 634, type: !95, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1168)
!1168 = !{!1169, !1166, !1170, !1171, !1178}
!1169 = !DILocalVariable(name: "program", arg: 1, scope: !1167, file: !6, line: 634, type: !28)
!1170 = !DILocalVariable(name: "node", scope: !1167, file: !6, line: 646, type: !28)
!1171 = !DILocalVariable(name: "map_prog", scope: !1167, file: !6, line: 647, type: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1167, file: !6, line: 636, size: 128, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1174, file: !6, line: 636, baseType: !28, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1174, file: !6, line: 636, baseType: !28, size: 64, offset: 64)
!1178 = !DILocalVariable(name: "lc_messages", scope: !1167, file: !6, line: 659, type: !28)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, size: 896, elements: !1180)
!1180 = !{!1181}
!1181 = !DISubrange(count: 7)
!1182 = !DILocation(line: 636, column: 67, scope: !1167, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 124, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 90, column: 5)
!1185 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 87, column: 7)
!1186 = !DILocation(line: 0, scope: !1161)
!1187 = !DILocation(line: 87, column: 14, scope: !1185)
!1188 = !DILocation(line: 87, column: 7, scope: !1161)
!1189 = !DILocation(line: 88, column: 5, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 88, column: 5)
!1191 = !{!1192, !1192, i64 0}
!1192 = !{!"any pointer", !1193, i64 0}
!1193 = !{!"omnipotent char", !1194, i64 0}
!1194 = !{!"Simple C/C++ TBAA"}
!1195 = !DILocation(line: 91, column: 7, scope: !1184)
!1196 = !DILocation(line: 92, column: 7, scope: !1184)
!1197 = !DILocation(line: 590, column: 3, scope: !1198, inlinedAt: !1199)
!1198 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 588, type: !112, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!1199 = distinct !DILocation(line: 96, column: 7, scope: !1184)
!1200 = !DILocation(line: 98, column: 7, scope: !1184)
!1201 = !DILocation(line: 103, column: 7, scope: !1184)
!1202 = !DILocation(line: 104, column: 7, scope: !1184)
!1203 = !DILocation(line: 105, column: 7, scope: !1184)
!1204 = !DILocation(line: 108, column: 7, scope: !1184)
!1205 = !DILocation(line: 111, column: 7, scope: !1184)
!1206 = !DILocation(line: 118, column: 7, scope: !1184)
!1207 = !DILocation(line: 0, scope: !1167, inlinedAt: !1183)
!1208 = !DILocation(line: 636, column: 3, scope: !1167, inlinedAt: !1183)
!1209 = !DILocation(line: 647, column: 36, scope: !1167, inlinedAt: !1183)
!1210 = !DILocation(line: 649, column: 3, scope: !1167, inlinedAt: !1183)
!1211 = !DILocation(line: 649, column: 33, scope: !1167, inlinedAt: !1183)
!1212 = !DILocation(line: 650, column: 13, scope: !1167, inlinedAt: !1183)
!1213 = !DILocation(line: 649, column: 20, scope: !1167, inlinedAt: !1183)
!1214 = !{!1215, !1192, i64 0}
!1215 = !{!"infomap", !1192, i64 0, !1192, i64 8}
!1216 = !DILocation(line: 649, column: 10, scope: !1167, inlinedAt: !1183)
!1217 = !DILocation(line: 649, column: 28, scope: !1167, inlinedAt: !1183)
!1218 = distinct !{!1218, !1210, !1212}
!1219 = !DILocation(line: 652, column: 17, scope: !1220, inlinedAt: !1183)
!1220 = distinct !DILexicalBlock(scope: !1167, file: !6, line: 652, column: 7)
!1221 = !{!1215, !1192, i64 8}
!1222 = !DILocation(line: 652, column: 7, scope: !1220, inlinedAt: !1183)
!1223 = !DILocation(line: 652, column: 7, scope: !1167, inlinedAt: !1183)
!1224 = !DILocation(line: 655, column: 3, scope: !1167, inlinedAt: !1183)
!1225 = !DILocation(line: 659, column: 29, scope: !1167, inlinedAt: !1183)
!1226 = !DILocation(line: 660, column: 7, scope: !1227, inlinedAt: !1183)
!1227 = distinct !DILexicalBlock(scope: !1167, file: !6, line: 660, column: 7)
!1228 = !DILocation(line: 660, column: 19, scope: !1227, inlinedAt: !1183)
!1229 = !DILocation(line: 660, column: 22, scope: !1227, inlinedAt: !1183)
!1230 = !DILocation(line: 660, column: 7, scope: !1167, inlinedAt: !1183)
!1231 = !DILocation(line: 666, column: 7, scope: !1232, inlinedAt: !1183)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !6, line: 661, column: 5)
!1233 = !DILocation(line: 668, column: 5, scope: !1232, inlinedAt: !1183)
!1234 = !DILocation(line: 669, column: 3, scope: !1167, inlinedAt: !1183)
!1235 = !DILocation(line: 671, column: 3, scope: !1167, inlinedAt: !1183)
!1236 = !DILocation(line: 673, column: 1, scope: !1167, inlinedAt: !1183)
!1237 = !DILocation(line: 126, column: 3, scope: !1161)
!1238 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 312, type: !1239, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!30, !30, !153}
!1241 = !{!1242, !1243, !1244, !1245, !1247}
!1242 = !DILocalVariable(name: "argc", arg: 1, scope: !1238, file: !3, line: 312, type: !30)
!1243 = !DILocalVariable(name: "argv", arg: 2, scope: !1238, file: !3, line: 312, type: !153)
!1244 = !DILocalVariable(name: "c", scope: !1238, file: !3, line: 314, type: !30)
!1245 = !DILocalVariable(name: "opt_fileno", scope: !1246, file: !3, line: 327, type: !30)
!1246 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 326, column: 5)
!1247 = !DILocalVariable(name: "exit_status", scope: !1238, file: !3, line: 391, type: !30)
!1248 = !DILocalVariable(name: "search_path", scope: !1249, file: !3, line: 216, type: !1294)
!1249 = distinct !DISubprogram(name: "set_LD_PRELOAD", scope: !3, file: !3, line: 189, type: !112, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1248, !1255, !1257, !1258}
!1251 = !DILocalVariable(name: "ret", scope: !1249, file: !3, line: 191, type: !30)
!1252 = !DILocalVariable(name: "preload_env", scope: !1249, file: !3, line: 195, type: !28)
!1253 = !DILocalVariable(name: "old_libs", scope: !1249, file: !3, line: 197, type: !26)
!1254 = !DILocalVariable(name: "LD_PRELOAD", scope: !1249, file: !3, line: 198, type: !26)
!1255 = !DILocalVariable(name: "path", scope: !1249, file: !3, line: 222, type: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1257 = !DILocalVariable(name: "libstdbuf", scope: !1249, file: !3, line: 223, type: !26)
!1258 = !DILocalVariable(name: "sb", scope: !1259, file: !3, line: 227, type: !1260)
!1259 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 226, column: 5)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1261, line: 46, size: 1152, elements: !1262)
!1261 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!1262 = !{!1263, !1265, !1267, !1269, !1271, !1273, !1275, !1276, !1277, !1278, !1280, !1282, !1290, !1291, !1292}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1260, file: !1261, line: 48, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !60, line: 145, baseType: !87)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1260, file: !1261, line: 53, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !60, line: 148, baseType: !87)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1260, file: !1261, line: 61, baseType: !1268, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !60, line: 151, baseType: !87)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1260, file: !1261, line: 62, baseType: !1270, size: 32, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !60, line: 150, baseType: !7)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1260, file: !1261, line: 64, baseType: !1272, size: 32, offset: 224)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !60, line: 146, baseType: !7)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1260, file: !1261, line: 65, baseType: !1274, size: 32, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !60, line: 147, baseType: !7)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1260, file: !1261, line: 67, baseType: !30, size: 32, offset: 288)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1260, file: !1261, line: 69, baseType: !1264, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1260, file: !1261, line: 74, baseType: !59, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1260, file: !1261, line: 78, baseType: !1279, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !60, line: 174, baseType: !61)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1260, file: !1261, line: 80, baseType: !1281, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !60, line: 179, baseType: !61)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1260, file: !1261, line: 91, baseType: !1283, size: 128, offset: 576)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1284, line: 10, size: 128, elements: !1285)
!1284 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1285 = !{!1286, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1283, file: !1284, line: 12, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !60, line: 160, baseType: !61)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1283, file: !1284, line: 16, baseType: !1289, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !60, line: 196, baseType: !61)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1260, file: !1261, line: 92, baseType: !1283, size: 128, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1260, file: !1261, line: 93, baseType: !1283, size: 128, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1260, file: !1261, line: 106, baseType: !1293, size: 192, offset: 960)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 192, elements: !185)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 192, elements: !185)
!1295 = !DILocation(line: 216, column: 21, scope: !1249, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 386, column: 3, scope: !1238)
!1297 = !DILocation(line: 227, column: 19, scope: !1259, inlinedAt: !1296)
!1298 = !DILocation(line: 0, scope: !1238)
!1299 = !DILocation(line: 317, column: 21, scope: !1238)
!1300 = !DILocation(line: 317, column: 3, scope: !1238)
!1301 = !DILocation(line: 318, column: 3, scope: !1238)
!1302 = !DILocation(line: 319, column: 3, scope: !1238)
!1303 = !DILocation(line: 320, column: 3, scope: !1238)
!1304 = !DILocalVariable(name: "status", arg: 1, scope: !1305, file: !6, line: 99, type: !30)
!1305 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !1162, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1306)
!1306 = !{!1304}
!1307 = !DILocation(line: 0, scope: !1305, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 322, column: 3, scope: !1238)
!1309 = !DILocation(line: 102, column: 18, scope: !1310, inlinedAt: !1308)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !6, line: 101, column: 7)
!1311 = !{!1312, !1312, i64 0}
!1312 = !{!"int", !1193, i64 0}
!1313 = !DILocation(line: 323, column: 3, scope: !1238)
!1314 = !DILocation(line: 0, scope: !1315, inlinedAt: !1323)
!1315 = distinct !DISubprogram(name: "parse_size", scope: !3, file: !3, line: 66, type: !1316, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!30, !28, !524}
!1318 = !{!1319, !1320, !1321, !1322}
!1319 = !DILocalVariable(name: "str", arg: 1, scope: !1315, file: !3, line: 66, type: !28)
!1320 = !DILocalVariable(name: "size", arg: 2, scope: !1315, file: !3, line: 66, type: !524)
!1321 = !DILocalVariable(name: "tmp_size", scope: !1315, file: !3, line: 68, type: !155)
!1322 = !DILocalVariable(name: "e", scope: !1315, file: !3, line: 69, type: !13)
!1323 = distinct !DILocation(line: 351, column: 18, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 350, column: 15)
!1325 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 330, column: 9)
!1326 = !DILocation(line: 325, column: 3, scope: !1238)
!1327 = !DILocation(line: 325, column: 15, scope: !1238)
!1328 = !DILocalVariable(name: "ret", scope: !1329, file: !3, line: 170, type: !30)
!1329 = distinct !DISubprogram(name: "optc_to_fileno", scope: !3, file: !3, line: 168, type: !1330, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!30, !30}
!1332 = !{!1333, !1328}
!1333 = !DILocalVariable(name: "c", arg: 1, scope: !1329, file: !3, line: 168, type: !30)
!1334 = !DILocation(line: 0, scope: !1329, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 335, column: 24, scope: !1325)
!1336 = !DILocation(line: 179, column: 7, scope: !1337, inlinedAt: !1335)
!1337 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 173, column: 5)
!1338 = !DILocation(line: 182, column: 7, scope: !1337, inlinedAt: !1335)
!1339 = !DILocation(line: 0, scope: !1246)
!1340 = !DILocation(line: 337, column: 30, scope: !1325)
!1341 = !DILocation(line: 337, column: 35, scope: !1325)
!1342 = !{!1343, !1312, i64 8}
!1343 = !{!"", !1344, i64 0, !1312, i64 8, !1192, i64 16}
!1344 = !{!"long", !1193, i64 0}
!1345 = !DILocation(line: 338, column: 30, scope: !1325)
!1346 = !DILocation(line: 338, column: 11, scope: !1325)
!1347 = !DILocation(line: 338, column: 29, scope: !1325)
!1348 = !{!1193, !1193, i64 0}
!1349 = !DILocalVariable(name: "c", arg: 1, scope: !1350, file: !1351, line: 300, type: !30)
!1350 = distinct !DISubprogram(name: "c_isspace", scope: !1351, file: !1351, line: 300, type: !570, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1351 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1352 = !{!1349}
!1353 = !DILocation(line: 0, scope: !1350, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 338, column: 18, scope: !1325)
!1355 = !DILocation(line: 302, column: 3, scope: !1350, inlinedAt: !1354)
!1356 = !DILocation(line: 339, column: 19, scope: !1325)
!1357 = distinct !{!1357, !1346, !1356}
!1358 = !DILocation(line: 340, column: 30, scope: !1325)
!1359 = !DILocation(line: 340, column: 37, scope: !1325)
!1360 = !{!1343, !1192, i64 16}
!1361 = !DILocation(line: 341, column: 17, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 341, column: 15)
!1363 = !DILocation(line: 341, column: 24, scope: !1362)
!1364 = !DILocation(line: 341, column: 27, scope: !1362)
!1365 = !DILocation(line: 341, column: 35, scope: !1362)
!1366 = !DILocation(line: 341, column: 15, scope: !1325)
!1367 = !DILocation(line: 346, column: 28, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 342, column: 13)
!1369 = !DILocation(line: 346, column: 15, scope: !1368)
!1370 = !DILocation(line: 347, column: 15, scope: !1368)
!1371 = !DILocation(line: 350, column: 16, scope: !1324)
!1372 = !DILocation(line: 351, column: 15, scope: !1324)
!1373 = !DILocation(line: 68, column: 3, scope: !1315, inlinedAt: !1323)
!1374 = !DILocation(line: 69, column: 25, scope: !1315, inlinedAt: !1323)
!1375 = !DILocation(line: 73, column: 7, scope: !1315, inlinedAt: !1323)
!1376 = !DILocation(line: 80, column: 3, scope: !1315, inlinedAt: !1323)
!1377 = !DILocation(line: 80, column: 48, scope: !1315, inlinedAt: !1323)
!1378 = !DILocation(line: 80, column: 12, scope: !1315, inlinedAt: !1323)
!1379 = !DILocation(line: 351, column: 58, scope: !1324)
!1380 = !DILocation(line: 75, column: 7, scope: !1381, inlinedAt: !1323)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 74, column: 5)
!1382 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 73, column: 7)
!1383 = !DILocation(line: 75, column: 13, scope: !1381, inlinedAt: !1323)
!1384 = !DILocation(line: 76, column: 15, scope: !1381, inlinedAt: !1323)
!1385 = !{!1344, !1344, i64 0}
!1386 = !DILocation(line: 76, column: 13, scope: !1381, inlinedAt: !1323)
!1387 = !DILocation(line: 82, column: 1, scope: !1315, inlinedAt: !1323)
!1388 = !DILocation(line: 350, column: 15, scope: !1325)
!1389 = distinct !{!1389, !1326, !1390}
!1390 = !DILocation(line: 363, column: 5, scope: !1238)
!1391 = !DILocation(line: 352, column: 13, scope: !1324)
!1392 = !DILocation(line: 80, column: 9, scope: !1315, inlinedAt: !1323)
!1393 = !DILocation(line: 356, column: 9, scope: !1325)
!1394 = !DILocation(line: 358, column: 9, scope: !1325)
!1395 = !DILocation(line: 361, column: 11, scope: !1325)
!1396 = !DILocation(line: 365, column: 11, scope: !1238)
!1397 = !DILocation(line: 365, column: 8, scope: !1238)
!1398 = !DILocation(line: 369, column: 12, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 369, column: 7)
!1400 = !DILocation(line: 369, column: 7, scope: !1238)
!1401 = !DILocation(line: 371, column: 20, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 370, column: 5)
!1403 = !DILocation(line: 371, column: 7, scope: !1402)
!1404 = !DILocation(line: 372, column: 7, scope: !1402)
!1405 = !DILocalVariable(name: "env_set", scope: !1406, file: !3, line: 278, type: !241)
!1406 = distinct !DISubprogram(name: "set_libstdbuf_options", scope: !3, file: !3, line: 276, type: !1407, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!241}
!1409 = !{!1405, !1410, !1412, !1417, !1418, !1421, !1426, !1428}
!1410 = !DILocalVariable(name: "i", scope: !1411, file: !3, line: 280, type: !85)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 280, column: 3)
!1412 = !DILocalVariable(name: "var", scope: !1413, file: !3, line: 284, type: !26)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 283, column: 9)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 282, column: 11)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 281, column: 5)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 280, column: 3)
!1417 = !DILocalVariable(name: "ret", scope: !1413, file: !3, line: 285, type: !30)
!1418 = !DILocalVariable(name: "__res", scope: !1419, file: !3, line: 288, type: !30)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 288, column: 19)
!1420 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 287, column: 15)
!1421 = !DILocalVariable(name: "__c", scope: !1422, file: !3, line: 288, type: !30)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 288, column: 19)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 288, column: 19)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 288, column: 19)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 288, column: 19)
!1426 = !DILocalVariable(name: "__res", scope: !1427, file: !3, line: 291, type: !30)
!1427 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 291, column: 19)
!1428 = !DILocalVariable(name: "__c", scope: !1429, file: !3, line: 291, type: !30)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 291, column: 19)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 291, column: 19)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 291, column: 19)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 291, column: 19)
!1433 = !DILocation(line: 0, scope: !1406, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 375, column: 9, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 375, column: 7)
!1436 = !DILocation(line: 0, scope: !1411, inlinedAt: !1434)
!1437 = !DILocation(line: 0, scope: !1413, inlinedAt: !1434)
!1438 = !DILocation(line: 282, column: 21, scope: !1414, inlinedAt: !1434)
!1439 = !DILocation(line: 282, column: 11, scope: !1414, inlinedAt: !1434)
!1440 = !DILocation(line: 282, column: 11, scope: !1415, inlinedAt: !1434)
!1441 = !DILocation(line: 284, column: 11, scope: !1413, inlinedAt: !1434)
!1442 = !DILocation(line: 287, column: 15, scope: !1420, inlinedAt: !1434)
!1443 = !DILocation(line: 287, column: 33, scope: !1420, inlinedAt: !1434)
!1444 = !DILocation(line: 0, scope: !1420, inlinedAt: !1434)
!1445 = !DILocalVariable(name: "__c", arg: 1, scope: !1446, file: !313, line: 213, type: !30)
!1446 = distinct !DISubprogram(name: "toupper", scope: !313, file: !313, line: 213, type: !1330, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1447)
!1447 = !{!1445}
!1448 = !DILocation(line: 0, scope: !1446, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 288, column: 19, scope: !1423, inlinedAt: !1434)
!1450 = !DILocation(line: 0, scope: !1446, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 291, column: 19, scope: !1430, inlinedAt: !1434)
!1452 = !DILocation(line: 287, column: 15, scope: !1413, inlinedAt: !1434)
!1453 = !DILocation(line: 215, column: 22, scope: !1446, inlinedAt: !1449)
!1454 = !DILocation(line: 215, column: 39, scope: !1446, inlinedAt: !1449)
!1455 = !DILocation(line: 215, column: 38, scope: !1446, inlinedAt: !1449)
!1456 = !DILocation(line: 215, column: 37, scope: !1446, inlinedAt: !1449)
!1457 = !DILocation(line: 215, column: 10, scope: !1446, inlinedAt: !1449)
!1458 = !DILocation(line: 0, scope: !1423, inlinedAt: !1434)
!1459 = !DILocation(line: 0, scope: !1419, inlinedAt: !1434)
!1460 = !DILocation(line: 288, column: 19, scope: !1420, inlinedAt: !1434)
!1461 = !DILocation(line: 288, column: 13, scope: !1420, inlinedAt: !1434)
!1462 = !DILocation(line: 215, column: 22, scope: !1446, inlinedAt: !1451)
!1463 = !DILocation(line: 215, column: 39, scope: !1446, inlinedAt: !1451)
!1464 = !DILocation(line: 215, column: 38, scope: !1446, inlinedAt: !1451)
!1465 = !DILocation(line: 215, column: 37, scope: !1446, inlinedAt: !1451)
!1466 = !DILocation(line: 215, column: 10, scope: !1446, inlinedAt: !1451)
!1467 = !DILocation(line: 0, scope: !1430, inlinedAt: !1434)
!1468 = !DILocation(line: 0, scope: !1427, inlinedAt: !1434)
!1469 = !DILocation(line: 291, column: 19, scope: !1420, inlinedAt: !1434)
!1470 = !{!1343, !1344, i64 0}
!1471 = !DILocation(line: 294, column: 19, scope: !1472, inlinedAt: !1434)
!1472 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 294, column: 15)
!1473 = !DILocation(line: 294, column: 15, scope: !1413, inlinedAt: !1434)
!1474 = !DILocation(line: 295, column: 13, scope: !1472, inlinedAt: !1434)
!1475 = !DILocation(line: 297, column: 23, scope: !1476, inlinedAt: !1434)
!1476 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 297, column: 15)
!1477 = !DILocation(line: 297, column: 15, scope: !1476, inlinedAt: !1434)
!1478 = !DILocation(line: 297, column: 28, scope: !1476, inlinedAt: !1434)
!1479 = !DILocation(line: 297, column: 15, scope: !1413, inlinedAt: !1434)
!1480 = !DILocation(line: 299, column: 15, scope: !1481, inlinedAt: !1434)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 298, column: 13)
!1482 = !DILocation(line: 305, column: 9, scope: !1414, inlinedAt: !1434)
!1483 = !DILocation(line: 305, column: 9, scope: !1413, inlinedAt: !1434)
!1484 = !DILocation(line: 377, column: 20, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 376, column: 5)
!1486 = !DILocation(line: 377, column: 7, scope: !1485)
!1487 = !DILocation(line: 378, column: 7, scope: !1485)
!1488 = !DILocation(line: 383, column: 21, scope: !1238)
!1489 = !DILocalVariable(name: "arg", arg: 1, scope: !1490, file: !3, line: 136, type: !28)
!1490 = distinct !DISubprogram(name: "set_program_path", scope: !3, file: !3, line: 136, type: !95, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1491)
!1491 = !{!1489, !1492, !1495, !1499}
!1492 = !DILocalVariable(name: "path", scope: !1493, file: !3, line: 144, type: !26)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 143, column: 5)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 138, column: 7)
!1495 = !DILocalVariable(name: "dir", scope: !1496, file: !3, line: 149, type: !26)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 148, column: 9)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 147, column: 16)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 145, column: 11)
!1499 = !DILocalVariable(name: "candidate", scope: !1500, file: !3, line: 153, type: !26)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 152, column: 13)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 151, column: 11)
!1502 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 151, column: 11)
!1503 = !DILocation(line: 0, scope: !1490, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 383, column: 3, scope: !1238)
!1505 = !DILocation(line: 138, column: 7, scope: !1494, inlinedAt: !1504)
!1506 = !DILocation(line: 138, column: 7, scope: !1490, inlinedAt: !1504)
!1507 = !DILocation(line: 140, column: 22, scope: !1508, inlinedAt: !1504)
!1508 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 139, column: 5)
!1509 = !DILocation(line: 140, column: 20, scope: !1508, inlinedAt: !1504)
!1510 = !DILocation(line: 141, column: 5, scope: !1508, inlinedAt: !1504)
!1511 = !DILocation(line: 144, column: 20, scope: !1493, inlinedAt: !1504)
!1512 = !DILocation(line: 0, scope: !1493, inlinedAt: !1504)
!1513 = !DILocation(line: 145, column: 11, scope: !1498, inlinedAt: !1504)
!1514 = !DILocation(line: 145, column: 11, scope: !1493, inlinedAt: !1504)
!1515 = !DILocation(line: 146, column: 24, scope: !1498, inlinedAt: !1504)
!1516 = !DILocation(line: 146, column: 22, scope: !1498, inlinedAt: !1504)
!1517 = !DILocation(line: 146, column: 9, scope: !1498, inlinedAt: !1504)
!1518 = !DILocation(line: 147, column: 24, scope: !1497, inlinedAt: !1504)
!1519 = !DILocation(line: 147, column: 22, scope: !1497, inlinedAt: !1504)
!1520 = !DILocation(line: 147, column: 16, scope: !1498, inlinedAt: !1504)
!1521 = !DILocation(line: 150, column: 18, scope: !1496, inlinedAt: !1504)
!1522 = !DILocation(line: 151, column: 22, scope: !1502, inlinedAt: !1504)
!1523 = !DILocation(line: 0, scope: !1496, inlinedAt: !1504)
!1524 = !DILocation(line: 151, column: 46, scope: !1501, inlinedAt: !1504)
!1525 = !DILocation(line: 151, column: 11, scope: !1502, inlinedAt: !1504)
!1526 = !DILocation(line: 153, column: 33, scope: !1500, inlinedAt: !1504)
!1527 = !DILocation(line: 0, scope: !1500, inlinedAt: !1504)
!1528 = !DILocation(line: 154, column: 19, scope: !1529, inlinedAt: !1504)
!1529 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 154, column: 19)
!1530 = !DILocation(line: 154, column: 44, scope: !1529, inlinedAt: !1504)
!1531 = !DILocation(line: 154, column: 19, scope: !1500, inlinedAt: !1504)
!1532 = !DILocation(line: 156, column: 34, scope: !1533, inlinedAt: !1504)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 155, column: 17)
!1534 = !DILocation(line: 156, column: 32, scope: !1533, inlinedAt: !1504)
!1535 = !DILocation(line: 157, column: 19, scope: !1533, inlinedAt: !1504)
!1536 = !DILocation(line: 160, column: 15, scope: !1500, inlinedAt: !1504)
!1537 = !DILocation(line: 151, column: 61, scope: !1501, inlinedAt: !1504)
!1538 = distinct !{!1538, !1525, !1539}
!1539 = !DILocation(line: 161, column: 13, scope: !1502, inlinedAt: !1504)
!1540 = !DILocation(line: 163, column: 7, scope: !1493, inlinedAt: !1504)
!1541 = !DILocation(line: 384, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 384, column: 7)
!1543 = !DILocation(line: 384, column: 7, scope: !1238)
!1544 = !DILocation(line: 385, column: 20, scope: !1542)
!1545 = !DILocation(line: 385, column: 18, scope: !1542)
!1546 = !DILocation(line: 385, column: 5, scope: !1542)
!1547 = !DILocation(line: 217, column: 5, scope: !1249, inlinedAt: !1296)
!1548 = !DILocation(line: 0, scope: !1249, inlinedAt: !1296)
!1549 = !DILocation(line: 197, column: 20, scope: !1249, inlinedAt: !1296)
!1550 = !DILocation(line: 198, column: 3, scope: !1249, inlinedAt: !1296)
!1551 = !DILocation(line: 216, column: 3, scope: !1249, inlinedAt: !1296)
!1552 = !DILocation(line: 216, column: 37, scope: !1249, inlinedAt: !1296)
!1553 = !DILocation(line: 223, column: 3, scope: !1249, inlinedAt: !1296)
!1554 = !DILocation(line: 227, column: 7, scope: !1259, inlinedAt: !1296)
!1555 = !DILocation(line: 229, column: 12, scope: !1556, inlinedAt: !1296)
!1556 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 229, column: 11)
!1557 = !DILocation(line: 229, column: 11, scope: !1259, inlinedAt: !1296)
!1558 = !DILocation(line: 235, column: 11, scope: !1259, inlinedAt: !1296)
!1559 = !DILocation(line: 231, column: 23, scope: !1560, inlinedAt: !1296)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 230, column: 9)
!1561 = !DILocation(line: 231, column: 21, scope: !1560, inlinedAt: !1296)
!1562 = !DILocation(line: 232, column: 11, scope: !1560, inlinedAt: !1296)
!1563 = !DILocation(line: 234, column: 13, scope: !1259, inlinedAt: !1296)
!1564 = !DILocation(line: 235, column: 15, scope: !1565, inlinedAt: !1296)
!1565 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 235, column: 11)
!1566 = !DILocation(line: 236, column: 9, scope: !1565, inlinedAt: !1296)
!1567 = !DILocation(line: 237, column: 17, scope: !1568, inlinedAt: !1296)
!1568 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 237, column: 11)
!1569 = !DILocalVariable(name: "__path", arg: 1, scope: !1570, file: !1571, line: 453, type: !28)
!1570 = distinct !DISubprogram(name: "stat", scope: !1571, file: !1571, line: 453, type: !1572, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!1571 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!30, !28, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1575 = !{!1569, !1576}
!1576 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1570, file: !1571, line: 453, type: !1574)
!1577 = !DILocation(line: 0, scope: !1570, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 237, column: 11, scope: !1568, inlinedAt: !1296)
!1579 = !DILocation(line: 455, column: 10, scope: !1570, inlinedAt: !1578)
!1580 = !DILocation(line: 237, column: 33, scope: !1568, inlinedAt: !1296)
!1581 = !DILocation(line: 237, column: 11, scope: !1259, inlinedAt: !1296)
!1582 = !DILocation(line: 239, column: 7, scope: !1259, inlinedAt: !1296)
!1583 = !DILocation(line: 241, column: 7, scope: !1259, inlinedAt: !1296)
!1584 = !DILocation(line: 242, column: 14, scope: !1585, inlinedAt: !1296)
!1585 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 242, column: 12)
!1586 = !DILocation(line: 242, column: 12, scope: !1259, inlinedAt: !1296)
!1587 = !DILocation(line: 243, column: 9, scope: !1585, inlinedAt: !1296)
!1588 = !DILocation(line: 244, column: 5, scope: !1249, inlinedAt: !1296)
!1589 = !DILocation(line: 229, column: 13, scope: !1556, inlinedAt: !1296)
!1590 = !DILocation(line: 0, scope: !1591, inlinedAt: !1296)
!1591 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 248, column: 7)
!1592 = !DILocation(line: 248, column: 7, scope: !1591, inlinedAt: !1296)
!1593 = !DILocation(line: 248, column: 7, scope: !1249, inlinedAt: !1296)
!1594 = !DILocation(line: 249, column: 11, scope: !1591, inlinedAt: !1296)
!1595 = !DILocation(line: 249, column: 5, scope: !1591, inlinedAt: !1296)
!1596 = !DILocation(line: 251, column: 11, scope: !1591, inlinedAt: !1296)
!1597 = !DILocation(line: 253, column: 11, scope: !1598, inlinedAt: !1296)
!1598 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 253, column: 7)
!1599 = !DILocation(line: 253, column: 7, scope: !1249, inlinedAt: !1296)
!1600 = !DILocation(line: 254, column: 5, scope: !1598, inlinedAt: !1296)
!1601 = !DILocation(line: 256, column: 9, scope: !1249, inlinedAt: !1296)
!1602 = !DILocation(line: 256, column: 3, scope: !1249, inlinedAt: !1296)
!1603 = !DILocation(line: 258, column: 17, scope: !1249, inlinedAt: !1296)
!1604 = !DILocation(line: 258, column: 9, scope: !1249, inlinedAt: !1296)
!1605 = !DILocation(line: 264, column: 11, scope: !1606, inlinedAt: !1296)
!1606 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 264, column: 7)
!1607 = !DILocation(line: 264, column: 7, scope: !1249, inlinedAt: !1296)
!1608 = !DILocation(line: 266, column: 7, scope: !1609, inlinedAt: !1296)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 265, column: 5)
!1610 = !DILocation(line: 270, column: 1, scope: !1249, inlinedAt: !1296)
!1611 = !DILocation(line: 387, column: 9, scope: !1238)
!1612 = !DILocation(line: 387, column: 3, scope: !1238)
!1613 = !DILocation(line: 389, column: 11, scope: !1238)
!1614 = !DILocation(line: 389, column: 3, scope: !1238)
!1615 = !DILocation(line: 391, column: 21, scope: !1238)
!1616 = !DILocation(line: 391, column: 27, scope: !1238)
!1617 = !DILocation(line: 392, column: 20, scope: !1238)
!1618 = !DILocation(line: 392, column: 58, scope: !1238)
!1619 = !DILocation(line: 392, column: 51, scope: !1238)
!1620 = !DILocation(line: 392, column: 3, scope: !1238)
!1621 = !DILocation(line: 393, column: 3, scope: !1238)
!1622 = !DILocation(line: 308, column: 10, scope: !1406, inlinedAt: !1434)
!1623 = !DILocation(line: 375, column: 7, scope: !1238)
!1624 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !198, file: !198, line: 51, type: !95, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1625)
!1625 = !{!1626}
!1626 = !DILocalVariable(name: "file", arg: 1, scope: !1624, file: !198, line: 51, type: !28)
!1627 = !DILocation(line: 0, scope: !1624)
!1628 = !DILocation(line: 53, column: 13, scope: !1624)
!1629 = !DILocation(line: 54, column: 1, scope: !1624)
!1630 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !198, file: !198, line: 88, type: !1631, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1633)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !241}
!1633 = !{!1634}
!1634 = !DILocalVariable(name: "ignore", arg: 1, scope: !1630, file: !198, line: 88, type: !241)
!1635 = !DILocation(line: 0, scope: !1630)
!1636 = !DILocation(line: 90, column: 16, scope: !1630)
!1637 = !{!1638, !1638, i64 0}
!1638 = !{!"_Bool", !1193, i64 0}
!1639 = !DILocation(line: 91, column: 1, scope: !1630)
!1640 = distinct !DISubprogram(name: "close_stdout", scope: !198, file: !198, line: 117, type: !112, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1641)
!1641 = !{!1642}
!1642 = !DILocalVariable(name: "write_error", scope: !1643, file: !198, line: 122, type: !28)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !198, line: 121, column: 5)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !198, line: 119, column: 7)
!1645 = !DILocation(line: 119, column: 21, scope: !1644)
!1646 = !DILocation(line: 119, column: 7, scope: !1644)
!1647 = !DILocation(line: 119, column: 29, scope: !1644)
!1648 = !DILocation(line: 120, column: 7, scope: !1644)
!1649 = !DILocation(line: 120, column: 12, scope: !1644)
!1650 = !{i8 0, i8 2}
!1651 = !DILocation(line: 120, column: 25, scope: !1644)
!1652 = !DILocation(line: 120, column: 28, scope: !1644)
!1653 = !DILocation(line: 120, column: 34, scope: !1644)
!1654 = !DILocation(line: 119, column: 7, scope: !1640)
!1655 = !DILocation(line: 122, column: 33, scope: !1643)
!1656 = !DILocation(line: 0, scope: !1643)
!1657 = !DILocation(line: 123, column: 11, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1643, file: !198, line: 123, column: 11)
!1659 = !DILocation(line: 0, scope: !1658)
!1660 = !DILocation(line: 123, column: 11, scope: !1643)
!1661 = !DILocation(line: 124, column: 36, scope: !1658)
!1662 = !DILocation(line: 124, column: 9, scope: !1658)
!1663 = !DILocation(line: 127, column: 9, scope: !1658)
!1664 = !DILocation(line: 129, column: 14, scope: !1643)
!1665 = !DILocation(line: 129, column: 7, scope: !1643)
!1666 = !DILocation(line: 134, column: 42, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1640, file: !198, line: 134, column: 7)
!1668 = !DILocation(line: 134, column: 28, scope: !1667)
!1669 = !DILocation(line: 134, column: 50, scope: !1667)
!1670 = !DILocation(line: 134, column: 7, scope: !1640)
!1671 = !DILocation(line: 135, column: 12, scope: !1667)
!1672 = !DILocation(line: 135, column: 5, scope: !1667)
!1673 = !DILocation(line: 136, column: 1, scope: !1640)
!1674 = distinct !DISubprogram(name: "dir_name", scope: !455, file: !455, line: 32, type: !105, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1675)
!1675 = !{!1676, !1677}
!1676 = !DILocalVariable(name: "file", arg: 1, scope: !1674, file: !455, line: 32, type: !28)
!1677 = !DILocalVariable(name: "result", scope: !1674, file: !455, line: 34, type: !26)
!1678 = !DILocation(line: 0, scope: !1674)
!1679 = !DILocation(line: 34, column: 18, scope: !1674)
!1680 = !DILocation(line: 35, column: 8, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1674, file: !455, line: 35, column: 7)
!1682 = !DILocation(line: 35, column: 7, scope: !1674)
!1683 = !DILocation(line: 36, column: 5, scope: !1681)
!1684 = !DILocation(line: 37, column: 3, scope: !1674)
!1685 = distinct !DISubprogram(name: "dir_len", scope: !459, file: !459, line: 32, type: !1686, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!85, !28}
!1688 = !{!1689, !1690, !1691}
!1689 = !DILocalVariable(name: "file", arg: 1, scope: !1685, file: !459, line: 32, type: !28)
!1690 = !DILocalVariable(name: "prefix_length", scope: !1685, file: !459, line: 34, type: !85)
!1691 = !DILocalVariable(name: "length", scope: !1685, file: !459, line: 35, type: !85)
!1692 = !DILocation(line: 0, scope: !1685)
!1693 = !DILocation(line: 41, column: 24, scope: !1685)
!1694 = !DILocation(line: 38, column: 20, scope: !1685)
!1695 = !DILocation(line: 48, column: 17, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1685, file: !459, line: 48, column: 3)
!1697 = !DILocation(line: 48, column: 39, scope: !1696)
!1698 = !DILocation(line: 48, column: 8, scope: !1696)
!1699 = !DILocation(line: 0, scope: !1696)
!1700 = !DILocation(line: 49, column: 22, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !459, line: 48, column: 3)
!1702 = !DILocation(line: 48, column: 3, scope: !1696)
!1703 = !DILocation(line: 50, column: 11, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !459, line: 50, column: 9)
!1705 = !DILocation(line: 50, column: 9, scope: !1701)
!1706 = distinct !{!1706, !1702, !1707}
!1707 = !DILocation(line: 51, column: 7, scope: !1696)
!1708 = !DILocation(line: 52, column: 3, scope: !1685)
!1709 = distinct !DISubprogram(name: "mdir_name", scope: !459, file: !459, line: 71, type: !105, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !1710)
!1710 = !{!1711, !1712, !1713, !1714}
!1711 = !DILocalVariable(name: "file", arg: 1, scope: !1709, file: !459, line: 71, type: !28)
!1712 = !DILocalVariable(name: "length", scope: !1709, file: !459, line: 73, type: !85)
!1713 = !DILocalVariable(name: "append_dot", scope: !1709, file: !459, line: 74, type: !241)
!1714 = !DILocalVariable(name: "dir", scope: !1709, file: !459, line: 78, type: !26)
!1715 = !DILocation(line: 0, scope: !1709)
!1716 = !DILocation(line: 0, scope: !1685, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 73, column: 19, scope: !1709)
!1718 = !DILocation(line: 41, column: 24, scope: !1685, inlinedAt: !1717)
!1719 = !DILocation(line: 38, column: 20, scope: !1685, inlinedAt: !1717)
!1720 = !DILocation(line: 48, column: 17, scope: !1696, inlinedAt: !1717)
!1721 = !DILocation(line: 48, column: 39, scope: !1696, inlinedAt: !1717)
!1722 = !DILocation(line: 48, column: 8, scope: !1696, inlinedAt: !1717)
!1723 = !DILocation(line: 0, scope: !1696, inlinedAt: !1717)
!1724 = !DILocation(line: 49, column: 22, scope: !1701, inlinedAt: !1717)
!1725 = !DILocation(line: 48, column: 3, scope: !1696, inlinedAt: !1717)
!1726 = !DILocation(line: 50, column: 11, scope: !1704, inlinedAt: !1717)
!1727 = !DILocation(line: 50, column: 9, scope: !1701, inlinedAt: !1717)
!1728 = distinct !{!1728, !1725, !1729}
!1729 = !DILocation(line: 51, column: 7, scope: !1696, inlinedAt: !1717)
!1730 = !DILocation(line: 74, column: 29, scope: !1709)
!1731 = !DILocation(line: 78, column: 32, scope: !1709)
!1732 = !DILocation(line: 78, column: 30, scope: !1709)
!1733 = !DILocation(line: 78, column: 43, scope: !1709)
!1734 = !DILocation(line: 78, column: 15, scope: !1709)
!1735 = !DILocation(line: 79, column: 8, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1709, file: !459, line: 79, column: 7)
!1737 = !DILocation(line: 79, column: 7, scope: !1709)
!1738 = !DILocalVariable(name: "__dest", arg: 1, scope: !1739, file: !1740, line: 31, type: !1743)
!1739 = distinct !DISubprogram(name: "memcpy", scope: !1740, file: !1740, line: 31, type: !1741, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !1745)
!1740 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!83, !1743, !1744, !85}
!1743 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!1744 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !331)
!1745 = !{!1738, !1746, !1747}
!1746 = !DILocalVariable(name: "__src", arg: 2, scope: !1739, file: !1740, line: 31, type: !1744)
!1747 = !DILocalVariable(name: "__len", arg: 3, scope: !1739, file: !1740, line: 31, type: !85)
!1748 = !DILocation(line: 0, scope: !1739, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 81, column: 3, scope: !1709)
!1750 = !DILocation(line: 34, column: 10, scope: !1739, inlinedAt: !1749)
!1751 = !DILocation(line: 82, column: 7, scope: !1709)
!1752 = !DILocation(line: 83, column: 19, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1709, file: !459, line: 82, column: 7)
!1754 = !DILocation(line: 83, column: 5, scope: !1753)
!1755 = !DILocation(line: 84, column: 3, scope: !1709)
!1756 = !DILocation(line: 84, column: 15, scope: !1709)
!1757 = !DILocation(line: 85, column: 3, scope: !1709)
!1758 = !DILocation(line: 86, column: 1, scope: !1709)
!1759 = distinct !DISubprogram(name: "last_component", scope: !463, file: !463, line: 30, type: !105, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !1760)
!1760 = !{!1761, !1762, !1763, !1764}
!1761 = !DILocalVariable(name: "name", arg: 1, scope: !1759, file: !463, line: 30, type: !28)
!1762 = !DILocalVariable(name: "base", scope: !1759, file: !463, line: 32, type: !28)
!1763 = !DILocalVariable(name: "p", scope: !1759, file: !463, line: 33, type: !28)
!1764 = !DILocalVariable(name: "saw_slash", scope: !1759, file: !463, line: 34, type: !241)
!1765 = !DILocation(line: 0, scope: !1759)
!1766 = !DILocation(line: 36, column: 3, scope: !1759)
!1767 = !DILocation(line: 36, column: 10, scope: !1759)
!1768 = !DILocation(line: 37, column: 9, scope: !1759)
!1769 = distinct !{!1769, !1766, !1768}
!1770 = !DILocation(line: 39, column: 18, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !463, line: 39, column: 3)
!1772 = distinct !DILexicalBlock(scope: !1759, file: !463, line: 39, column: 3)
!1773 = !DILocation(line: 32, column: 15, scope: !1759)
!1774 = !DILocation(line: 0, scope: !1772)
!1775 = !DILocation(line: 39, column: 3, scope: !1772)
!1776 = !DILocation(line: 43, column: 16, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !463, line: 43, column: 16)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !463, line: 41, column: 11)
!1779 = distinct !DILexicalBlock(scope: !1771, file: !463, line: 40, column: 5)
!1780 = !DILocation(line: 43, column: 16, scope: !1778)
!1781 = !DILocation(line: 39, column: 23, scope: !1771)
!1782 = !DILocation(line: 39, column: 3, scope: !1771)
!1783 = distinct !{!1783, !1775, !1784}
!1784 = !DILocation(line: 48, column: 5, scope: !1772)
!1785 = !DILocation(line: 50, column: 3, scope: !1759)
!1786 = distinct !DISubprogram(name: "base_len", scope: !463, file: !463, line: 58, type: !1686, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !1787)
!1787 = !{!1788, !1789, !1790}
!1788 = !DILocalVariable(name: "name", arg: 1, scope: !1786, file: !463, line: 58, type: !28)
!1789 = !DILocalVariable(name: "len", scope: !1786, file: !463, line: 60, type: !85)
!1790 = !DILocalVariable(name: "prefix_len", scope: !1786, file: !463, line: 61, type: !85)
!1791 = !DILocation(line: 0, scope: !1786)
!1792 = !DILocation(line: 63, column: 14, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1786, file: !463, line: 63, column: 3)
!1794 = !DILocation(line: 63, column: 8, scope: !1793)
!1795 = !DILocation(line: 0, scope: !1793)
!1796 = !DILocation(line: 63, column: 32, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !463, line: 63, column: 3)
!1798 = !DILocation(line: 63, column: 38, scope: !1797)
!1799 = !DILocation(line: 63, column: 41, scope: !1797)
!1800 = !DILocation(line: 63, column: 3, scope: !1793)
!1801 = distinct !{!1801, !1800, !1802}
!1802 = !DILocation(line: 64, column: 5, scope: !1793)
!1803 = !DILocation(line: 74, column: 3, scope: !1786)
!1804 = distinct !DISubprogram(name: "file_name_concat", scope: !466, file: !466, line: 35, type: !169, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1805)
!1805 = !{!1806, !1807, !1808, !1809}
!1806 = !DILocalVariable(name: "dir", arg: 1, scope: !1804, file: !466, line: 35, type: !28)
!1807 = !DILocalVariable(name: "base", arg: 2, scope: !1804, file: !466, line: 35, type: !28)
!1808 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1804, file: !466, line: 35, type: !153)
!1809 = !DILocalVariable(name: "p", scope: !1804, file: !466, line: 37, type: !26)
!1810 = !DILocation(line: 0, scope: !1804)
!1811 = !DILocation(line: 37, column: 13, scope: !1804)
!1812 = !DILocation(line: 38, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1804, file: !466, line: 38, column: 7)
!1814 = !DILocation(line: 38, column: 7, scope: !1804)
!1815 = !DILocation(line: 39, column: 5, scope: !1813)
!1816 = !DILocation(line: 40, column: 3, scope: !1804)
!1817 = distinct !DISubprogram(name: "mfile_name_concat", scope: !470, file: !470, line: 47, type: !169, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1818)
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1819 = !DILocalVariable(name: "dir", arg: 1, scope: !1817, file: !470, line: 47, type: !28)
!1820 = !DILocalVariable(name: "base", arg: 2, scope: !1817, file: !470, line: 47, type: !28)
!1821 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1817, file: !470, line: 47, type: !153)
!1822 = !DILocalVariable(name: "dirbase", scope: !1817, file: !470, line: 49, type: !28)
!1823 = !DILocalVariable(name: "dirbaselen", scope: !1817, file: !470, line: 50, type: !85)
!1824 = !DILocalVariable(name: "dirlen", scope: !1817, file: !470, line: 51, type: !85)
!1825 = !DILocalVariable(name: "baselen", scope: !1817, file: !470, line: 52, type: !85)
!1826 = !DILocalVariable(name: "sep", scope: !1817, file: !470, line: 53, type: !27)
!1827 = !DILocalVariable(name: "p_concat", scope: !1817, file: !470, line: 70, type: !26)
!1828 = !DILocalVariable(name: "p", scope: !1817, file: !470, line: 71, type: !26)
!1829 = !DILocation(line: 0, scope: !1817)
!1830 = !DILocation(line: 49, column: 25, scope: !1817)
!1831 = !DILocation(line: 50, column: 23, scope: !1817)
!1832 = !DILocation(line: 51, column: 27, scope: !1817)
!1833 = !DILocation(line: 51, column: 33, scope: !1817)
!1834 = !DILocation(line: 52, column: 20, scope: !1817)
!1835 = !DILocation(line: 54, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1817, file: !470, line: 54, column: 7)
!1837 = !DILocation(line: 54, column: 7, scope: !1817)
!1838 = !DILocation(line: 57, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !470, line: 57, column: 11)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !470, line: 55, column: 5)
!1841 = !DILocation(line: 57, column: 39, scope: !1839)
!1842 = !DILocation(line: 57, column: 44, scope: !1839)
!1843 = !DILocation(line: 57, column: 11, scope: !1840)
!1844 = !DILocation(line: 60, column: 12, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1836, file: !470, line: 60, column: 12)
!1846 = !DILocation(line: 60, column: 12, scope: !1836)
!1847 = !DILocation(line: 70, column: 42, scope: !1817)
!1848 = !DILocation(line: 70, column: 37, scope: !1817)
!1849 = !DILocation(line: 70, column: 35, scope: !1817)
!1850 = !DILocation(line: 70, column: 52, scope: !1817)
!1851 = !DILocation(line: 70, column: 62, scope: !1817)
!1852 = !DILocation(line: 70, column: 20, scope: !1817)
!1853 = !DILocation(line: 73, column: 16, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1817, file: !470, line: 73, column: 7)
!1855 = !DILocation(line: 73, column: 7, scope: !1817)
!1856 = !DILocalVariable(name: "__dest", arg: 1, scope: !1857, file: !1740, line: 45, type: !1743)
!1857 = distinct !DISubprogram(name: "mempcpy", scope: !1740, file: !1740, line: 45, type: !1741, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1858)
!1858 = !{!1856, !1859, !1860}
!1859 = !DILocalVariable(name: "__src", arg: 2, scope: !1857, file: !1740, line: 45, type: !1744)
!1860 = !DILocalVariable(name: "__len", arg: 3, scope: !1857, file: !1740, line: 45, type: !85)
!1861 = !DILocation(line: 0, scope: !1857, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 76, column: 7, scope: !1817)
!1863 = !DILocation(line: 48, column: 10, scope: !1857, inlinedAt: !1862)
!1864 = !DILocation(line: 77, column: 6, scope: !1817)
!1865 = !DILocation(line: 78, column: 5, scope: !1817)
!1866 = !DILocation(line: 80, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1817, file: !470, line: 80, column: 7)
!1868 = !DILocation(line: 80, column: 7, scope: !1817)
!1869 = !DILocation(line: 81, column: 21, scope: !1867)
!1870 = !DILocation(line: 81, column: 5, scope: !1867)
!1871 = !DILocation(line: 0, scope: !1857, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 83, column: 7, scope: !1817)
!1873 = !DILocation(line: 48, column: 10, scope: !1857, inlinedAt: !1872)
!1874 = !DILocation(line: 84, column: 6, scope: !1817)
!1875 = !DILocation(line: 86, column: 3, scope: !1817)
!1876 = !DILocation(line: 87, column: 1, scope: !1817)
!1877 = distinct !DISubprogram(name: "set_program_name", scope: !251, file: !251, line: 39, type: !95, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !1878)
!1878 = !{!1879, !1880, !1881}
!1879 = !DILocalVariable(name: "argv0", arg: 1, scope: !1877, file: !251, line: 39, type: !28)
!1880 = !DILocalVariable(name: "slash", scope: !1877, file: !251, line: 46, type: !28)
!1881 = !DILocalVariable(name: "base", scope: !1877, file: !251, line: 47, type: !28)
!1882 = !DILocation(line: 0, scope: !1877)
!1883 = !DILocation(line: 51, column: 13, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !251, line: 51, column: 7)
!1885 = !DILocation(line: 51, column: 7, scope: !1877)
!1886 = !DILocation(line: 55, column: 14, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !251, line: 52, column: 5)
!1888 = !DILocation(line: 54, column: 7, scope: !1887)
!1889 = !DILocation(line: 56, column: 7, scope: !1887)
!1890 = !DILocation(line: 59, column: 11, scope: !1877)
!1891 = !DILocation(line: 60, column: 17, scope: !1877)
!1892 = !DILocation(line: 60, column: 11, scope: !1877)
!1893 = !DILocation(line: 61, column: 12, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1877, file: !251, line: 61, column: 7)
!1895 = !DILocation(line: 61, column: 20, scope: !1894)
!1896 = !DILocation(line: 61, column: 25, scope: !1894)
!1897 = !DILocation(line: 61, column: 42, scope: !1894)
!1898 = !DILocation(line: 61, column: 28, scope: !1894)
!1899 = !DILocation(line: 61, column: 61, scope: !1894)
!1900 = !DILocation(line: 61, column: 7, scope: !1877)
!1901 = !DILocation(line: 64, column: 11, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !251, line: 64, column: 11)
!1903 = distinct !DILexicalBlock(scope: !1894, file: !251, line: 62, column: 5)
!1904 = !DILocation(line: 64, column: 36, scope: !1902)
!1905 = !DILocation(line: 64, column: 11, scope: !1903)
!1906 = !DILocation(line: 66, column: 24, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1902, file: !251, line: 65, column: 9)
!1908 = !DILocation(line: 70, column: 41, scope: !1907)
!1909 = !DILocation(line: 72, column: 9, scope: !1907)
!1910 = !DILocation(line: 84, column: 16, scope: !1877)
!1911 = !DILocation(line: 90, column: 27, scope: !1877)
!1912 = !DILocation(line: 92, column: 1, scope: !1877)
!1913 = distinct !DISubprogram(name: "clone_quoting_options", scope: !292, file: !292, line: 122, type: !1914, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !1917)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1916, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1917 = !{!1918, !1919, !1920}
!1918 = !DILocalVariable(name: "o", arg: 1, scope: !1913, file: !292, line: 122, type: !1916)
!1919 = !DILocalVariable(name: "e", scope: !1913, file: !292, line: 124, type: !30)
!1920 = !DILocalVariable(name: "p", scope: !1913, file: !292, line: 125, type: !1916)
!1921 = !DILocation(line: 0, scope: !1913)
!1922 = !DILocation(line: 124, column: 11, scope: !1913)
!1923 = !DILocation(line: 125, column: 40, scope: !1913)
!1924 = !DILocation(line: 125, column: 31, scope: !1913)
!1925 = !DILocation(line: 127, column: 9, scope: !1913)
!1926 = !DILocation(line: 128, column: 3, scope: !1913)
!1927 = distinct !DISubprogram(name: "get_quoting_style", scope: !292, file: !292, line: 133, type: !1928, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!294, !336}
!1930 = !{!1931}
!1931 = !DILocalVariable(name: "o", arg: 1, scope: !1927, file: !292, line: 133, type: !336)
!1932 = !DILocation(line: 0, scope: !1927)
!1933 = !DILocation(line: 135, column: 11, scope: !1927)
!1934 = !DILocation(line: 135, column: 46, scope: !1927)
!1935 = !{!1936, !1193, i64 0}
!1936 = !{!"quoting_options", !1193, i64 0, !1312, i64 4, !1193, i64 8, !1192, i64 40, !1192, i64 48}
!1937 = !DILocation(line: 135, column: 3, scope: !1927)
!1938 = distinct !DISubprogram(name: "set_quoting_style", scope: !292, file: !292, line: 141, type: !1939, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !1941)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1916, !294}
!1941 = !{!1942, !1943}
!1942 = !DILocalVariable(name: "o", arg: 1, scope: !1938, file: !292, line: 141, type: !1916)
!1943 = !DILocalVariable(name: "s", arg: 2, scope: !1938, file: !292, line: 141, type: !294)
!1944 = !DILocation(line: 0, scope: !1938)
!1945 = !DILocation(line: 143, column: 4, scope: !1938)
!1946 = !DILocation(line: 143, column: 39, scope: !1938)
!1947 = !DILocation(line: 143, column: 45, scope: !1938)
!1948 = !DILocation(line: 144, column: 1, scope: !1938)
!1949 = distinct !DISubprogram(name: "set_char_quoting", scope: !292, file: !292, line: 152, type: !1950, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!30, !1916, !27, !30}
!1952 = !{!1953, !1954, !1955, !1956, !1958, !1960, !1961}
!1953 = !DILocalVariable(name: "o", arg: 1, scope: !1949, file: !292, line: 152, type: !1916)
!1954 = !DILocalVariable(name: "c", arg: 2, scope: !1949, file: !292, line: 152, type: !27)
!1955 = !DILocalVariable(name: "i", arg: 3, scope: !1949, file: !292, line: 152, type: !30)
!1956 = !DILocalVariable(name: "uc", scope: !1949, file: !292, line: 154, type: !1957)
!1957 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1958 = !DILocalVariable(name: "p", scope: !1949, file: !292, line: 155, type: !1959)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1960 = !DILocalVariable(name: "shift", scope: !1949, file: !292, line: 157, type: !30)
!1961 = !DILocalVariable(name: "r", scope: !1949, file: !292, line: 158, type: !30)
!1962 = !DILocation(line: 0, scope: !1949)
!1963 = !DILocation(line: 156, column: 6, scope: !1949)
!1964 = !DILocation(line: 156, column: 62, scope: !1949)
!1965 = !DILocation(line: 156, column: 57, scope: !1949)
!1966 = !DILocation(line: 157, column: 15, scope: !1949)
!1967 = !DILocation(line: 158, column: 12, scope: !1949)
!1968 = !DILocation(line: 158, column: 15, scope: !1949)
!1969 = !DILocation(line: 158, column: 25, scope: !1949)
!1970 = !DILocation(line: 159, column: 13, scope: !1949)
!1971 = !DILocation(line: 159, column: 18, scope: !1949)
!1972 = !DILocation(line: 159, column: 23, scope: !1949)
!1973 = !DILocation(line: 159, column: 6, scope: !1949)
!1974 = !DILocation(line: 160, column: 3, scope: !1949)
!1975 = distinct !DISubprogram(name: "set_quoting_flags", scope: !292, file: !292, line: 168, type: !1976, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!30, !1916, !30}
!1978 = !{!1979, !1980, !1981}
!1979 = !DILocalVariable(name: "o", arg: 1, scope: !1975, file: !292, line: 168, type: !1916)
!1980 = !DILocalVariable(name: "i", arg: 2, scope: !1975, file: !292, line: 168, type: !30)
!1981 = !DILocalVariable(name: "r", scope: !1975, file: !292, line: 170, type: !30)
!1982 = !DILocation(line: 0, scope: !1975)
!1983 = !DILocation(line: 171, column: 8, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1975, file: !292, line: 171, column: 7)
!1985 = !DILocation(line: 171, column: 7, scope: !1975)
!1986 = !DILocation(line: 173, column: 10, scope: !1975)
!1987 = !{!1936, !1312, i64 4}
!1988 = !DILocation(line: 174, column: 12, scope: !1975)
!1989 = !DILocation(line: 175, column: 3, scope: !1975)
!1990 = distinct !DISubprogram(name: "set_custom_quoting", scope: !292, file: !292, line: 179, type: !1991, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1916, !28, !28}
!1993 = !{!1994, !1995, !1996}
!1994 = !DILocalVariable(name: "o", arg: 1, scope: !1990, file: !292, line: 179, type: !1916)
!1995 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1990, file: !292, line: 180, type: !28)
!1996 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1990, file: !292, line: 180, type: !28)
!1997 = !DILocation(line: 0, scope: !1990)
!1998 = !DILocation(line: 182, column: 8, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1990, file: !292, line: 182, column: 7)
!2000 = !DILocation(line: 182, column: 7, scope: !1990)
!2001 = !DILocation(line: 184, column: 6, scope: !1990)
!2002 = !DILocation(line: 184, column: 12, scope: !1990)
!2003 = !DILocation(line: 185, column: 8, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1990, file: !292, line: 185, column: 7)
!2005 = !DILocation(line: 185, column: 23, scope: !2004)
!2006 = !DILocation(line: 185, column: 19, scope: !2004)
!2007 = !DILocation(line: 186, column: 5, scope: !2004)
!2008 = !DILocation(line: 187, column: 6, scope: !1990)
!2009 = !DILocation(line: 187, column: 17, scope: !1990)
!2010 = !{!1936, !1192, i64 40}
!2011 = !DILocation(line: 188, column: 6, scope: !1990)
!2012 = !DILocation(line: 188, column: 18, scope: !1990)
!2013 = !{!1936, !1192, i64 48}
!2014 = !DILocation(line: 189, column: 1, scope: !1990)
!2015 = distinct !DISubprogram(name: "quotearg_buffer", scope: !292, file: !292, line: 784, type: !2016, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!85, !26, !85, !28, !85, !336}
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026}
!2019 = !DILocalVariable(name: "buffer", arg: 1, scope: !2015, file: !292, line: 784, type: !26)
!2020 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2015, file: !292, line: 784, type: !85)
!2021 = !DILocalVariable(name: "arg", arg: 3, scope: !2015, file: !292, line: 785, type: !28)
!2022 = !DILocalVariable(name: "argsize", arg: 4, scope: !2015, file: !292, line: 785, type: !85)
!2023 = !DILocalVariable(name: "o", arg: 5, scope: !2015, file: !292, line: 786, type: !336)
!2024 = !DILocalVariable(name: "p", scope: !2015, file: !292, line: 788, type: !336)
!2025 = !DILocalVariable(name: "e", scope: !2015, file: !292, line: 789, type: !30)
!2026 = !DILocalVariable(name: "r", scope: !2015, file: !292, line: 790, type: !85)
!2027 = !DILocation(line: 0, scope: !2015)
!2028 = !DILocation(line: 788, column: 37, scope: !2015)
!2029 = !DILocation(line: 789, column: 11, scope: !2015)
!2030 = !DILocation(line: 791, column: 43, scope: !2015)
!2031 = !DILocation(line: 791, column: 53, scope: !2015)
!2032 = !DILocation(line: 791, column: 60, scope: !2015)
!2033 = !DILocation(line: 792, column: 43, scope: !2015)
!2034 = !DILocation(line: 792, column: 58, scope: !2015)
!2035 = !DILocation(line: 790, column: 14, scope: !2015)
!2036 = !DILocation(line: 793, column: 9, scope: !2015)
!2037 = !DILocation(line: 794, column: 3, scope: !2015)
!2038 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !292, file: !292, line: 256, type: !2039, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2043)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!85, !26, !85, !28, !85, !294, !30, !2041, !28, !28}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2068, !2069, !2070, !2071, !2072, !2075, !2076, !2082, !2085, !2086, !2093, !2096, !2097, !2098, !2099, !2100, !2101}
!2044 = !DILocalVariable(name: "buffer", arg: 1, scope: !2038, file: !292, line: 256, type: !26)
!2045 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2038, file: !292, line: 256, type: !85)
!2046 = !DILocalVariable(name: "arg", arg: 3, scope: !2038, file: !292, line: 257, type: !28)
!2047 = !DILocalVariable(name: "argsize", arg: 4, scope: !2038, file: !292, line: 257, type: !85)
!2048 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2038, file: !292, line: 258, type: !294)
!2049 = !DILocalVariable(name: "flags", arg: 6, scope: !2038, file: !292, line: 258, type: !30)
!2050 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2038, file: !292, line: 259, type: !2041)
!2051 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2038, file: !292, line: 260, type: !28)
!2052 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2038, file: !292, line: 261, type: !28)
!2053 = !DILocalVariable(name: "i", scope: !2038, file: !292, line: 263, type: !85)
!2054 = !DILocalVariable(name: "len", scope: !2038, file: !292, line: 264, type: !85)
!2055 = !DILocalVariable(name: "orig_buffersize", scope: !2038, file: !292, line: 265, type: !85)
!2056 = !DILocalVariable(name: "quote_string", scope: !2038, file: !292, line: 266, type: !28)
!2057 = !DILocalVariable(name: "quote_string_len", scope: !2038, file: !292, line: 267, type: !85)
!2058 = !DILocalVariable(name: "backslash_escapes", scope: !2038, file: !292, line: 268, type: !241)
!2059 = !DILocalVariable(name: "unibyte_locale", scope: !2038, file: !292, line: 269, type: !241)
!2060 = !DILocalVariable(name: "elide_outer_quotes", scope: !2038, file: !292, line: 270, type: !241)
!2061 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2038, file: !292, line: 271, type: !241)
!2062 = !DILocalVariable(name: "encountered_single_quote", scope: !2038, file: !292, line: 272, type: !241)
!2063 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2038, file: !292, line: 273, type: !241)
!2064 = !DILocalVariable(name: "c", scope: !2065, file: !292, line: 402, type: !1957)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !292, line: 401, column: 5)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !292, line: 400, column: 3)
!2067 = distinct !DILexicalBlock(scope: !2038, file: !292, line: 400, column: 3)
!2068 = !DILocalVariable(name: "esc", scope: !2065, file: !292, line: 403, type: !1957)
!2069 = !DILocalVariable(name: "is_right_quote", scope: !2065, file: !292, line: 404, type: !241)
!2070 = !DILocalVariable(name: "escaping", scope: !2065, file: !292, line: 405, type: !241)
!2071 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2065, file: !292, line: 406, type: !241)
!2072 = !DILocalVariable(name: "m", scope: !2073, file: !292, line: 610, type: !85)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 608, column: 11)
!2074 = distinct !DILexicalBlock(scope: !2065, file: !292, line: 426, column: 9)
!2075 = !DILocalVariable(name: "printable", scope: !2073, file: !292, line: 612, type: !241)
!2076 = !DILocalVariable(name: "mbstate", scope: !2077, file: !292, line: 621, type: !2079)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !292, line: 620, column: 15)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !292, line: 614, column: 17)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2080, line: 6, baseType: !2081)
!2080 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !357, line: 21, baseType: !356)
!2082 = !DILocalVariable(name: "w", scope: !2083, file: !292, line: 631, type: !2084)
!2083 = distinct !DILexicalBlock(scope: !2077, file: !292, line: 630, column: 19)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !86, line: 74, baseType: !30)
!2085 = !DILocalVariable(name: "bytes", scope: !2083, file: !292, line: 632, type: !85)
!2086 = !DILocalVariable(name: "j", scope: !2087, file: !292, line: 657, type: !85)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !292, line: 656, column: 27)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !292, line: 654, column: 29)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !292, line: 649, column: 23)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !292, line: 641, column: 30)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !292, line: 636, column: 30)
!2092 = distinct !DILexicalBlock(scope: !2083, file: !292, line: 634, column: 25)
!2093 = !DILocalVariable(name: "ilim", scope: !2094, file: !292, line: 684, type: !85)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !292, line: 681, column: 15)
!2095 = distinct !DILexicalBlock(scope: !2073, file: !292, line: 680, column: 17)
!2096 = !DILabel(scope: !2038, name: "process_input", file: !292, line: 314)
!2097 = !DILabel(scope: !2074, name: "c_and_shell_escape", file: !292, line: 512)
!2098 = !DILabel(scope: !2074, name: "c_escape", file: !292, line: 517)
!2099 = !DILabel(scope: !2065, name: "store_escape", file: !292, line: 719)
!2100 = !DILabel(scope: !2065, name: "store_c", file: !292, line: 722)
!2101 = !DILabel(scope: !2038, name: "force_outer_quoting_style", file: !292, line: 763)
!2102 = !DILocation(line: 0, scope: !2038)
!2103 = !DILocation(line: 269, column: 25, scope: !2038)
!2104 = !DILocation(line: 269, column: 36, scope: !2038)
!2105 = !DILocation(line: 270, column: 8, scope: !2038)
!2106 = !DILocation(line: 0, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 526, column: 15)
!2108 = !DILocation(line: 0, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !292, line: 462, column: 19)
!2110 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 455, column: 13)
!2111 = !DILocation(line: 0, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !292, line: 449, column: 20)
!2113 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 428, column: 15)
!2114 = !DILocation(line: 0, scope: !2077)
!2115 = !DILocation(line: 0, scope: !2083)
!2116 = !DILocation(line: 0, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2065, file: !292, line: 712, column: 11)
!2118 = !DILocation(line: 273, column: 3, scope: !2038)
!2119 = !DILocation(line: 265, column: 10, scope: !2038)
!2120 = !DILocation(line: 266, column: 15, scope: !2038)
!2121 = !DILocation(line: 267, column: 10, scope: !2038)
!2122 = !DILocation(line: 268, column: 8, scope: !2038)
!2123 = !DILocation(line: 271, column: 8, scope: !2038)
!2124 = !DILocation(line: 272, column: 8, scope: !2038)
!2125 = !DILocation(line: 273, column: 8, scope: !2038)
!2126 = !DILocation(line: 314, column: 2, scope: !2038)
!2127 = !DILocation(line: 316, column: 3, scope: !2038)
!2128 = !DILocation(line: 323, column: 11, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2038, file: !292, line: 317, column: 5)
!2130 = !DILocation(line: 323, column: 12, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2129, file: !292, line: 323, column: 11)
!2132 = !DILocation(line: 324, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !292, line: 324, column: 9)
!2134 = distinct !DILexicalBlock(scope: !2131, file: !292, line: 324, column: 9)
!2135 = !DILocation(line: 324, column: 9, scope: !2134)
!2136 = !DILocation(line: 362, column: 26, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !292, line: 340, column: 11)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !292, line: 339, column: 13)
!2139 = distinct !DILexicalBlock(scope: !2129, file: !292, line: 338, column: 7)
!2140 = !DILocation(line: 363, column: 27, scope: !2137)
!2141 = !DILocation(line: 364, column: 11, scope: !2137)
!2142 = !DILocation(line: 365, column: 14, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !292, line: 365, column: 13)
!2144 = !DILocation(line: 365, column: 13, scope: !2139)
!2145 = !DILocation(line: 366, column: 43, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !292, line: 366, column: 11)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !292, line: 366, column: 11)
!2148 = !DILocation(line: 366, column: 11, scope: !2147)
!2149 = !DILocation(line: 367, column: 13, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !292, line: 367, column: 13)
!2151 = distinct !DILexicalBlock(scope: !2146, file: !292, line: 367, column: 13)
!2152 = !DILocation(line: 367, column: 13, scope: !2151)
!2153 = !DILocation(line: 366, column: 70, scope: !2146)
!2154 = distinct !{!2154, !2148, !2155}
!2155 = !DILocation(line: 367, column: 13, scope: !2147)
!2156 = !DILocation(line: 264, column: 10, scope: !2038)
!2157 = !DILocation(line: 370, column: 28, scope: !2139)
!2158 = !DILocation(line: 372, column: 7, scope: !2129)
!2159 = !DILocation(line: 376, column: 7, scope: !2129)
!2160 = !DILocation(line: 379, column: 7, scope: !2129)
!2161 = !DILocation(line: 381, column: 12, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2129, file: !292, line: 381, column: 11)
!2163 = !DILocation(line: 381, column: 11, scope: !2129)
!2164 = !DILocation(line: 386, column: 12, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2129, file: !292, line: 386, column: 11)
!2166 = !DILocation(line: 386, column: 11, scope: !2129)
!2167 = !DILocation(line: 387, column: 9, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !292, line: 387, column: 9)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !292, line: 387, column: 9)
!2170 = !DILocation(line: 387, column: 9, scope: !2169)
!2171 = !DILocation(line: 394, column: 7, scope: !2129)
!2172 = !DILocation(line: 397, column: 7, scope: !2129)
!2173 = !DILocation(line: 0, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2065, file: !292, line: 408, column: 11)
!2175 = !DILocation(line: 0, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !292, line: 419, column: 15)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !292, line: 418, column: 9)
!2178 = !DILocation(line: 0, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 556, column: 15)
!2180 = !DILocation(line: 0, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 548, column: 15)
!2182 = !DILocation(line: 0, scope: !2088)
!2183 = !DILocation(line: 0, scope: !2095)
!2184 = !DILocation(line: 0, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 509, column: 15)
!2186 = !DILocation(line: 400, column: 8, scope: !2067)
!2187 = !DILocation(line: 0, scope: !2067)
!2188 = !DILocation(line: 400, column: 27, scope: !2066)
!2189 = !DILocation(line: 400, column: 19, scope: !2066)
!2190 = !DILocation(line: 400, column: 41, scope: !2066)
!2191 = !DILocation(line: 400, column: 48, scope: !2066)
!2192 = !DILocation(line: 400, column: 3, scope: !2067)
!2193 = !DILocation(line: 400, column: 60, scope: !2066)
!2194 = !DILocation(line: 0, scope: !2065)
!2195 = !DILocation(line: 409, column: 11, scope: !2174)
!2196 = !DILocation(line: 411, column: 17, scope: !2174)
!2197 = !DILocation(line: 412, column: 39, scope: !2174)
!2198 = !DILocation(line: 416, column: 32, scope: !2174)
!2199 = !DILocation(line: 412, column: 19, scope: !2174)
!2200 = !DILocation(line: 412, column: 15, scope: !2174)
!2201 = !DILocation(line: 417, column: 11, scope: !2174)
!2202 = !DILocation(line: 417, column: 26, scope: !2174)
!2203 = !DILocation(line: 417, column: 14, scope: !2174)
!2204 = !DILocation(line: 417, column: 63, scope: !2174)
!2205 = !DILocation(line: 408, column: 11, scope: !2065)
!2206 = !DILocation(line: 424, column: 11, scope: !2065)
!2207 = !DILocation(line: 425, column: 7, scope: !2065)
!2208 = !DILocation(line: 428, column: 15, scope: !2074)
!2209 = !DILocation(line: 430, column: 15, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !292, line: 430, column: 15)
!2211 = distinct !DILexicalBlock(scope: !2113, file: !292, line: 429, column: 13)
!2212 = !DILocation(line: 430, column: 15, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !292, line: 430, column: 15)
!2214 = !DILocation(line: 430, column: 15, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !292, line: 430, column: 15)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !292, line: 430, column: 15)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !292, line: 430, column: 15)
!2218 = !DILocation(line: 430, column: 15, scope: !2216)
!2219 = !DILocation(line: 430, column: 15, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !292, line: 430, column: 15)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !292, line: 430, column: 15)
!2222 = !DILocation(line: 430, column: 15, scope: !2221)
!2223 = !DILocation(line: 430, column: 15, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !292, line: 430, column: 15)
!2225 = distinct !DILexicalBlock(scope: !2217, file: !292, line: 430, column: 15)
!2226 = !DILocation(line: 430, column: 15, scope: !2225)
!2227 = !DILocation(line: 430, column: 15, scope: !2217)
!2228 = !DILocation(line: 430, column: 15, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !292, line: 430, column: 15)
!2230 = distinct !DILexicalBlock(scope: !2210, file: !292, line: 430, column: 15)
!2231 = !DILocation(line: 430, column: 15, scope: !2230)
!2232 = !DILocation(line: 438, column: 19, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2211, file: !292, line: 437, column: 19)
!2234 = !DILocation(line: 438, column: 24, scope: !2233)
!2235 = !DILocation(line: 438, column: 28, scope: !2233)
!2236 = !DILocation(line: 438, column: 38, scope: !2233)
!2237 = !DILocation(line: 438, column: 48, scope: !2233)
!2238 = !DILocation(line: 438, column: 59, scope: !2233)
!2239 = !DILocation(line: 440, column: 19, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !292, line: 440, column: 19)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !292, line: 440, column: 19)
!2242 = distinct !DILexicalBlock(scope: !2233, file: !292, line: 439, column: 17)
!2243 = !DILocation(line: 440, column: 19, scope: !2241)
!2244 = !DILocation(line: 441, column: 19, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !292, line: 441, column: 19)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !292, line: 441, column: 19)
!2247 = !DILocation(line: 441, column: 19, scope: !2246)
!2248 = !DILocation(line: 442, column: 17, scope: !2242)
!2249 = !DILocation(line: 449, column: 20, scope: !2113)
!2250 = !DILocation(line: 454, column: 11, scope: !2074)
!2251 = !DILocation(line: 457, column: 19, scope: !2110)
!2252 = !DILocation(line: 463, column: 19, scope: !2109)
!2253 = !DILocation(line: 463, column: 24, scope: !2109)
!2254 = !DILocation(line: 463, column: 28, scope: !2109)
!2255 = !DILocation(line: 463, column: 38, scope: !2109)
!2256 = !DILocation(line: 463, column: 47, scope: !2109)
!2257 = !DILocation(line: 463, column: 41, scope: !2109)
!2258 = !DILocation(line: 463, column: 52, scope: !2109)
!2259 = !DILocation(line: 462, column: 19, scope: !2110)
!2260 = !DILocation(line: 464, column: 25, scope: !2109)
!2261 = !DILocation(line: 464, column: 17, scope: !2109)
!2262 = !DILocation(line: 471, column: 25, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2109, file: !292, line: 465, column: 19)
!2264 = !DILocation(line: 475, column: 21, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !292, line: 475, column: 21)
!2266 = distinct !DILexicalBlock(scope: !2263, file: !292, line: 475, column: 21)
!2267 = !DILocation(line: 475, column: 21, scope: !2266)
!2268 = !DILocation(line: 476, column: 21, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !292, line: 476, column: 21)
!2270 = distinct !DILexicalBlock(scope: !2263, file: !292, line: 476, column: 21)
!2271 = !DILocation(line: 476, column: 21, scope: !2270)
!2272 = !DILocation(line: 477, column: 21, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !292, line: 477, column: 21)
!2274 = distinct !DILexicalBlock(scope: !2263, file: !292, line: 477, column: 21)
!2275 = !DILocation(line: 477, column: 21, scope: !2274)
!2276 = !DILocation(line: 478, column: 21, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !292, line: 478, column: 21)
!2278 = distinct !DILexicalBlock(scope: !2263, file: !292, line: 478, column: 21)
!2279 = !DILocation(line: 478, column: 21, scope: !2278)
!2280 = !DILocation(line: 479, column: 21, scope: !2263)
!2281 = !DILocation(line: 492, column: 31, scope: !2074)
!2282 = !DILocation(line: 493, column: 31, scope: !2074)
!2283 = !DILocation(line: 495, column: 31, scope: !2074)
!2284 = !DILocation(line: 496, column: 31, scope: !2074)
!2285 = !DILocation(line: 497, column: 31, scope: !2074)
!2286 = !DILocation(line: 500, column: 15, scope: !2074)
!2287 = !DILocation(line: 502, column: 19, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !292, line: 501, column: 13)
!2289 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 500, column: 15)
!2290 = !DILocation(line: 509, column: 33, scope: !2185)
!2291 = !DILocation(line: 0, scope: !2074)
!2292 = !DILocation(line: 512, column: 9, scope: !2074)
!2293 = !DILocation(line: 514, column: 15, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 513, column: 15)
!2295 = !DILocation(line: 517, column: 9, scope: !2074)
!2296 = !DILocation(line: 518, column: 15, scope: !2074)
!2297 = !DILocation(line: 526, column: 15, scope: !2074)
!2298 = !DILocation(line: 526, column: 40, scope: !2107)
!2299 = !DILocation(line: 526, column: 47, scope: !2107)
!2300 = !DILocation(line: 526, column: 18, scope: !2107)
!2301 = !DILocation(line: 530, column: 17, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2074, file: !292, line: 530, column: 15)
!2303 = !DILocation(line: 530, column: 15, scope: !2074)
!2304 = !DILocation(line: 535, column: 11, scope: !2074)
!2305 = !DILocation(line: 549, column: 15, scope: !2181)
!2306 = !DILocation(line: 556, column: 15, scope: !2074)
!2307 = !DILocation(line: 558, column: 19, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2179, file: !292, line: 557, column: 13)
!2309 = !DILocation(line: 561, column: 19, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2308, file: !292, line: 561, column: 19)
!2311 = !DILocation(line: 561, column: 35, scope: !2310)
!2312 = !DILocation(line: 561, column: 30, scope: !2310)
!2313 = !DILocation(line: 570, column: 15, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !292, line: 570, column: 15)
!2315 = distinct !DILexicalBlock(scope: !2308, file: !292, line: 570, column: 15)
!2316 = !DILocation(line: 570, column: 15, scope: !2315)
!2317 = !DILocation(line: 571, column: 15, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !292, line: 571, column: 15)
!2319 = distinct !DILexicalBlock(scope: !2308, file: !292, line: 571, column: 15)
!2320 = !DILocation(line: 571, column: 15, scope: !2319)
!2321 = !DILocation(line: 572, column: 15, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !292, line: 572, column: 15)
!2323 = distinct !DILexicalBlock(scope: !2308, file: !292, line: 572, column: 15)
!2324 = !DILocation(line: 572, column: 15, scope: !2323)
!2325 = !DILocation(line: 574, column: 13, scope: !2308)
!2326 = !DILocation(line: 614, column: 17, scope: !2073)
!2327 = !DILocation(line: 0, scope: !2073)
!2328 = !DILocation(line: 617, column: 29, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2078, file: !292, line: 615, column: 15)
!2330 = !{!2331, !2331, i64 0}
!2331 = !{!"short", !1193, i64 0}
!2332 = !DILocation(line: 617, column: 27, scope: !2329)
!2333 = !DILocation(line: 618, column: 15, scope: !2329)
!2334 = !DILocation(line: 621, column: 17, scope: !2077)
!2335 = !DILocation(line: 621, column: 27, scope: !2077)
!2336 = !DILocalVariable(name: "__dest", arg: 1, scope: !2337, file: !1740, line: 59, type: !83)
!2337 = distinct !DISubprogram(name: "memset", scope: !1740, file: !1740, line: 59, type: !2338, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!83, !83, !30, !85}
!2340 = !{!2336, !2341, !2342}
!2341 = !DILocalVariable(name: "__ch", arg: 2, scope: !2337, file: !1740, line: 59, type: !30)
!2342 = !DILocalVariable(name: "__len", arg: 3, scope: !2337, file: !1740, line: 59, type: !85)
!2343 = !DILocation(line: 0, scope: !2337, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 622, column: 17, scope: !2077)
!2345 = !DILocation(line: 71, column: 10, scope: !2337, inlinedAt: !2344)
!2346 = !DILocation(line: 626, column: 29, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2077, file: !292, line: 626, column: 21)
!2348 = !DILocation(line: 626, column: 21, scope: !2077)
!2349 = !DILocation(line: 627, column: 29, scope: !2347)
!2350 = !DILocation(line: 627, column: 19, scope: !2347)
!2351 = !DILocation(line: 629, column: 17, scope: !2077)
!2352 = !DILocation(line: 624, column: 19, scope: !2077)
!2353 = !DILocation(line: 625, column: 27, scope: !2077)
!2354 = !DILocation(line: 631, column: 21, scope: !2083)
!2355 = !DILocation(line: 632, column: 56, scope: !2083)
!2356 = !DILocation(line: 632, column: 50, scope: !2083)
!2357 = !DILocation(line: 633, column: 53, scope: !2083)
!2358 = !DILocation(line: 632, column: 36, scope: !2083)
!2359 = !DILocation(line: 634, column: 25, scope: !2083)
!2360 = !DILocation(line: 644, column: 38, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2090, file: !292, line: 642, column: 23)
!2362 = !DILocation(line: 644, column: 48, scope: !2361)
!2363 = !DILocation(line: 644, column: 25, scope: !2361)
!2364 = !DILocation(line: 644, column: 51, scope: !2361)
!2365 = !DILocation(line: 645, column: 28, scope: !2361)
!2366 = !DILocation(line: 644, column: 34, scope: !2361)
!2367 = distinct !{!2367, !2363, !2365}
!2368 = !DILocation(line: 658, column: 43, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !292, line: 658, column: 29)
!2370 = distinct !DILexicalBlock(scope: !2087, file: !292, line: 658, column: 29)
!2371 = !DILocation(line: 655, column: 29, scope: !2088)
!2372 = !DILocation(line: 0, scope: !2087)
!2373 = !DILocation(line: 659, column: 49, scope: !2369)
!2374 = !DILocation(line: 659, column: 39, scope: !2369)
!2375 = !DILocation(line: 659, column: 31, scope: !2369)
!2376 = !DILocation(line: 658, column: 53, scope: !2369)
!2377 = !DILocation(line: 658, column: 29, scope: !2370)
!2378 = distinct !{!2378, !2377, !2379}
!2379 = !DILocation(line: 667, column: 33, scope: !2370)
!2380 = !DILocation(line: 674, column: 19, scope: !2077)
!2381 = !DILocation(line: 670, column: 41, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2089, file: !292, line: 670, column: 29)
!2383 = !DILocation(line: 670, column: 31, scope: !2382)
!2384 = !DILocation(line: 670, column: 29, scope: !2089)
!2385 = !DILocation(line: 672, column: 27, scope: !2089)
!2386 = !DILocation(line: 675, column: 26, scope: !2077)
!2387 = !DILocation(line: 675, column: 24, scope: !2077)
!2388 = !DILocation(line: 674, column: 19, scope: !2083)
!2389 = distinct !{!2389, !2351, !2390}
!2390 = !DILocation(line: 675, column: 44, scope: !2077)
!2391 = !DILocation(line: 676, column: 15, scope: !2078)
!2392 = !DILocation(line: 0, scope: !2078)
!2393 = !DILocation(line: 678, column: 40, scope: !2073)
!2394 = !DILocation(line: 680, column: 19, scope: !2095)
!2395 = !DILocation(line: 680, column: 45, scope: !2095)
!2396 = !DILocation(line: 680, column: 23, scope: !2095)
!2397 = !DILocation(line: 684, column: 33, scope: !2094)
!2398 = !DILocation(line: 0, scope: !2094)
!2399 = !DILocation(line: 686, column: 17, scope: !2094)
!2400 = !DILocation(line: 405, column: 12, scope: !2065)
!2401 = !DILocation(line: 688, column: 43, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !292, line: 688, column: 25)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !292, line: 687, column: 19)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !292, line: 686, column: 17)
!2405 = distinct !DILexicalBlock(scope: !2094, file: !292, line: 686, column: 17)
!2406 = !DILocation(line: 690, column: 25, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !292, line: 690, column: 25)
!2408 = distinct !DILexicalBlock(scope: !2402, file: !292, line: 689, column: 23)
!2409 = !DILocation(line: 690, column: 25, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !292, line: 690, column: 25)
!2411 = !DILocation(line: 690, column: 25, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !292, line: 690, column: 25)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !292, line: 690, column: 25)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !292, line: 690, column: 25)
!2415 = !DILocation(line: 690, column: 25, scope: !2413)
!2416 = !DILocation(line: 690, column: 25, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !292, line: 690, column: 25)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !292, line: 690, column: 25)
!2419 = !DILocation(line: 690, column: 25, scope: !2418)
!2420 = !DILocation(line: 690, column: 25, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !292, line: 690, column: 25)
!2422 = distinct !DILexicalBlock(scope: !2414, file: !292, line: 690, column: 25)
!2423 = !DILocation(line: 690, column: 25, scope: !2422)
!2424 = !DILocation(line: 690, column: 25, scope: !2414)
!2425 = !DILocation(line: 690, column: 25, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !292, line: 690, column: 25)
!2427 = distinct !DILexicalBlock(scope: !2407, file: !292, line: 690, column: 25)
!2428 = !DILocation(line: 690, column: 25, scope: !2427)
!2429 = !DILocation(line: 691, column: 25, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !292, line: 691, column: 25)
!2431 = distinct !DILexicalBlock(scope: !2408, file: !292, line: 691, column: 25)
!2432 = !DILocation(line: 691, column: 25, scope: !2431)
!2433 = !DILocation(line: 692, column: 25, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !292, line: 692, column: 25)
!2435 = distinct !DILexicalBlock(scope: !2408, file: !292, line: 692, column: 25)
!2436 = !DILocation(line: 692, column: 25, scope: !2435)
!2437 = !DILocation(line: 693, column: 38, scope: !2408)
!2438 = !DILocation(line: 693, column: 33, scope: !2408)
!2439 = !DILocation(line: 694, column: 23, scope: !2408)
!2440 = !DILocation(line: 695, column: 30, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2402, file: !292, line: 695, column: 30)
!2442 = !DILocation(line: 695, column: 30, scope: !2402)
!2443 = !DILocation(line: 697, column: 25, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !292, line: 697, column: 25)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !292, line: 697, column: 25)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !292, line: 696, column: 23)
!2447 = !DILocation(line: 697, column: 25, scope: !2445)
!2448 = !DILocation(line: 699, column: 23, scope: !2446)
!2449 = !DILocation(line: 700, column: 35, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2403, file: !292, line: 700, column: 25)
!2451 = !DILocation(line: 700, column: 30, scope: !2450)
!2452 = !DILocation(line: 700, column: 25, scope: !2403)
!2453 = !DILocation(line: 702, column: 21, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !292, line: 702, column: 21)
!2455 = distinct !DILexicalBlock(scope: !2403, file: !292, line: 702, column: 21)
!2456 = !DILocation(line: 702, column: 21, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !292, line: 702, column: 21)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !292, line: 702, column: 21)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !292, line: 702, column: 21)
!2460 = !DILocation(line: 702, column: 21, scope: !2458)
!2461 = !DILocation(line: 702, column: 21, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !292, line: 702, column: 21)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !292, line: 702, column: 21)
!2464 = !DILocation(line: 702, column: 21, scope: !2463)
!2465 = !DILocation(line: 702, column: 21, scope: !2459)
!2466 = !DILocation(line: 0, scope: !2403)
!2467 = !DILocation(line: 703, column: 21, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !292, line: 703, column: 21)
!2469 = distinct !DILexicalBlock(scope: !2403, file: !292, line: 703, column: 21)
!2470 = !DILocation(line: 703, column: 21, scope: !2469)
!2471 = !DILocation(line: 704, column: 25, scope: !2403)
!2472 = !DILocation(line: 686, column: 17, scope: !2404)
!2473 = distinct !{!2473, !2474, !2475}
!2474 = !DILocation(line: 686, column: 17, scope: !2405)
!2475 = !DILocation(line: 705, column: 19, scope: !2405)
!2476 = !DILocation(line: 416, column: 30, scope: !2174)
!2477 = !DILocation(line: 712, column: 34, scope: !2117)
!2478 = !DILocation(line: 715, column: 35, scope: !2117)
!2479 = !DILocation(line: 715, column: 17, scope: !2117)
!2480 = !DILocation(line: 715, column: 47, scope: !2117)
!2481 = !DILocation(line: 715, column: 65, scope: !2117)
!2482 = !DILocation(line: 716, column: 15, scope: !2117)
!2483 = !DILocation(line: 716, column: 11, scope: !2117)
!2484 = !DILocation(line: 712, column: 11, scope: !2065)
!2485 = !DILocation(line: 400, column: 10, scope: !2067)
!2486 = !DILocation(line: 719, column: 5, scope: !2065)
!2487 = !DILocation(line: 720, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2065, file: !292, line: 720, column: 7)
!2489 = !DILocation(line: 720, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2488, file: !292, line: 720, column: 7)
!2491 = !DILocation(line: 720, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !292, line: 720, column: 7)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !292, line: 720, column: 7)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !292, line: 720, column: 7)
!2495 = !DILocation(line: 720, column: 7, scope: !2493)
!2496 = !DILocation(line: 720, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !292, line: 720, column: 7)
!2498 = distinct !DILexicalBlock(scope: !2494, file: !292, line: 720, column: 7)
!2499 = !DILocation(line: 720, column: 7, scope: !2498)
!2500 = !DILocation(line: 720, column: 7, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !292, line: 720, column: 7)
!2502 = distinct !DILexicalBlock(scope: !2494, file: !292, line: 720, column: 7)
!2503 = !DILocation(line: 720, column: 7, scope: !2502)
!2504 = !DILocation(line: 720, column: 7, scope: !2494)
!2505 = !DILocation(line: 720, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !292, line: 720, column: 7)
!2507 = distinct !DILexicalBlock(scope: !2488, file: !292, line: 720, column: 7)
!2508 = !DILocation(line: 720, column: 7, scope: !2507)
!2509 = !DILocation(line: 722, column: 5, scope: !2065)
!2510 = !DILocation(line: 723, column: 7, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !292, line: 723, column: 7)
!2512 = distinct !DILexicalBlock(scope: !2065, file: !292, line: 723, column: 7)
!2513 = !DILocation(line: 424, column: 9, scope: !2065)
!2514 = !DILocation(line: 723, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !292, line: 723, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !292, line: 723, column: 7)
!2517 = distinct !DILexicalBlock(scope: !2511, file: !292, line: 723, column: 7)
!2518 = !DILocation(line: 723, column: 7, scope: !2516)
!2519 = !DILocation(line: 723, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !292, line: 723, column: 7)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !292, line: 723, column: 7)
!2522 = !DILocation(line: 723, column: 7, scope: !2521)
!2523 = !DILocation(line: 723, column: 7, scope: !2517)
!2524 = !DILocation(line: 724, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !292, line: 724, column: 7)
!2526 = distinct !DILexicalBlock(scope: !2065, file: !292, line: 724, column: 7)
!2527 = !DILocation(line: 724, column: 7, scope: !2526)
!2528 = !DILocation(line: 726, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2065, file: !292, line: 726, column: 11)
!2530 = !DILocation(line: 726, column: 11, scope: !2065)
!2531 = !DILocation(line: 728, column: 5, scope: !2066)
!2532 = !DILocation(line: 400, column: 75, scope: !2066)
!2533 = !DILocation(line: 400, column: 3, scope: !2066)
!2534 = distinct !{!2534, !2192, !2535}
!2535 = !DILocation(line: 728, column: 5, scope: !2067)
!2536 = !DILocation(line: 730, column: 11, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2038, file: !292, line: 730, column: 7)
!2538 = !DILocation(line: 730, column: 16, scope: !2537)
!2539 = !DILocation(line: 738, column: 51, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2038, file: !292, line: 738, column: 7)
!2541 = !DILocation(line: 739, column: 10, scope: !2540)
!2542 = !DILocation(line: 741, column: 11, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !292, line: 741, column: 11)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !292, line: 740, column: 5)
!2545 = !DILocation(line: 741, column: 11, scope: !2544)
!2546 = !DILocation(line: 742, column: 16, scope: !2543)
!2547 = !DILocation(line: 742, column: 9, scope: !2543)
!2548 = !DILocation(line: 746, column: 18, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2543, file: !292, line: 746, column: 16)
!2550 = !DILocation(line: 746, column: 32, scope: !2549)
!2551 = !DILocation(line: 746, column: 29, scope: !2549)
!2552 = !DILocation(line: 755, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2038, file: !292, line: 755, column: 7)
!2554 = !DILocation(line: 755, column: 20, scope: !2553)
!2555 = !DILocation(line: 756, column: 12, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !292, line: 756, column: 5)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !292, line: 756, column: 5)
!2558 = !DILocation(line: 756, column: 5, scope: !2557)
!2559 = !DILocation(line: 757, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !292, line: 757, column: 7)
!2561 = distinct !DILexicalBlock(scope: !2556, file: !292, line: 757, column: 7)
!2562 = !DILocation(line: 757, column: 7, scope: !2561)
!2563 = !DILocation(line: 756, column: 39, scope: !2556)
!2564 = distinct !{!2564, !2558, !2565}
!2565 = !DILocation(line: 757, column: 7, scope: !2557)
!2566 = !DILocation(line: 759, column: 11, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2038, file: !292, line: 759, column: 7)
!2568 = !DILocation(line: 759, column: 7, scope: !2038)
!2569 = !DILocation(line: 760, column: 5, scope: !2567)
!2570 = !DILocation(line: 760, column: 17, scope: !2567)
!2571 = !DILocation(line: 763, column: 2, scope: !2038)
!2572 = !DILocation(line: 766, column: 51, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2038, file: !292, line: 766, column: 7)
!2574 = !DILocation(line: 766, column: 21, scope: !2573)
!2575 = !DILocation(line: 770, column: 42, scope: !2038)
!2576 = !DILocation(line: 768, column: 10, scope: !2038)
!2577 = !DILocation(line: 768, column: 3, scope: !2038)
!2578 = !DILocation(line: 772, column: 1, scope: !2038)
!2579 = distinct !DISubprogram(name: "gettext_quote", scope: !292, file: !292, line: 207, type: !2580, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!28, !28, !294}
!2582 = !{!2583, !2584, !2585, !2586}
!2583 = !DILocalVariable(name: "msgid", arg: 1, scope: !2579, file: !292, line: 207, type: !28)
!2584 = !DILocalVariable(name: "s", arg: 2, scope: !2579, file: !292, line: 207, type: !294)
!2585 = !DILocalVariable(name: "translation", scope: !2579, file: !292, line: 209, type: !28)
!2586 = !DILocalVariable(name: "locale_code", scope: !2579, file: !292, line: 210, type: !28)
!2587 = !DILocation(line: 0, scope: !2579)
!2588 = !DILocation(line: 209, column: 29, scope: !2579)
!2589 = !DILocation(line: 212, column: 19, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2579, file: !292, line: 212, column: 7)
!2591 = !DILocation(line: 212, column: 7, scope: !2579)
!2592 = !DILocation(line: 233, column: 17, scope: !2579)
!2593 = !DILocalVariable(name: "s1", arg: 1, scope: !2594, file: !2595, line: 160, type: !28)
!2594 = distinct !DISubprogram(name: "strcaseeq0", scope: !2595, file: !2595, line: 160, type: !2596, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2598)
!2595 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!2598 = !{!2593, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2599 = !DILocalVariable(name: "s2", arg: 2, scope: !2594, file: !2595, line: 160, type: !28)
!2600 = !DILocalVariable(name: "s20", arg: 3, scope: !2594, file: !2595, line: 160, type: !27)
!2601 = !DILocalVariable(name: "s21", arg: 4, scope: !2594, file: !2595, line: 160, type: !27)
!2602 = !DILocalVariable(name: "s22", arg: 5, scope: !2594, file: !2595, line: 160, type: !27)
!2603 = !DILocalVariable(name: "s23", arg: 6, scope: !2594, file: !2595, line: 160, type: !27)
!2604 = !DILocalVariable(name: "s24", arg: 7, scope: !2594, file: !2595, line: 160, type: !27)
!2605 = !DILocalVariable(name: "s25", arg: 8, scope: !2594, file: !2595, line: 160, type: !27)
!2606 = !DILocalVariable(name: "s26", arg: 9, scope: !2594, file: !2595, line: 160, type: !27)
!2607 = !DILocalVariable(name: "s27", arg: 10, scope: !2594, file: !2595, line: 160, type: !27)
!2608 = !DILocalVariable(name: "s28", arg: 11, scope: !2594, file: !2595, line: 160, type: !27)
!2609 = !DILocation(line: 0, scope: !2594, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 234, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2579, file: !292, line: 234, column: 7)
!2612 = !DILocation(line: 162, column: 7, scope: !2613, inlinedAt: !2610)
!2613 = distinct !DILexicalBlock(scope: !2594, file: !2595, line: 162, column: 7)
!2614 = !DILocalVariable(name: "s1", arg: 1, scope: !2615, file: !2595, line: 146, type: !28)
!2615 = distinct !DISubprogram(name: "strcaseeq1", scope: !2595, file: !2595, line: 146, type: !2616, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27, !27}
!2618 = !{!2614, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2619 = !DILocalVariable(name: "s2", arg: 2, scope: !2615, file: !2595, line: 146, type: !28)
!2620 = !DILocalVariable(name: "s21", arg: 3, scope: !2615, file: !2595, line: 146, type: !27)
!2621 = !DILocalVariable(name: "s22", arg: 4, scope: !2615, file: !2595, line: 146, type: !27)
!2622 = !DILocalVariable(name: "s23", arg: 5, scope: !2615, file: !2595, line: 146, type: !27)
!2623 = !DILocalVariable(name: "s24", arg: 6, scope: !2615, file: !2595, line: 146, type: !27)
!2624 = !DILocalVariable(name: "s25", arg: 7, scope: !2615, file: !2595, line: 146, type: !27)
!2625 = !DILocalVariable(name: "s26", arg: 8, scope: !2615, file: !2595, line: 146, type: !27)
!2626 = !DILocalVariable(name: "s27", arg: 9, scope: !2615, file: !2595, line: 146, type: !27)
!2627 = !DILocalVariable(name: "s28", arg: 10, scope: !2615, file: !2595, line: 146, type: !27)
!2628 = !DILocation(line: 0, scope: !2615, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 167, column: 16, scope: !2630, inlinedAt: !2610)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !2595, line: 164, column: 11)
!2631 = distinct !DILexicalBlock(scope: !2613, file: !2595, line: 163, column: 5)
!2632 = !DILocation(line: 148, column: 7, scope: !2633, inlinedAt: !2629)
!2633 = distinct !DILexicalBlock(scope: !2615, file: !2595, line: 148, column: 7)
!2634 = !DILocalVariable(name: "s1", arg: 1, scope: !2635, file: !2595, line: 132, type: !28)
!2635 = distinct !DISubprogram(name: "strcaseeq2", scope: !2595, file: !2595, line: 132, type: !2636, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27}
!2638 = !{!2634, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2639 = !DILocalVariable(name: "s2", arg: 2, scope: !2635, file: !2595, line: 132, type: !28)
!2640 = !DILocalVariable(name: "s22", arg: 3, scope: !2635, file: !2595, line: 132, type: !27)
!2641 = !DILocalVariable(name: "s23", arg: 4, scope: !2635, file: !2595, line: 132, type: !27)
!2642 = !DILocalVariable(name: "s24", arg: 5, scope: !2635, file: !2595, line: 132, type: !27)
!2643 = !DILocalVariable(name: "s25", arg: 6, scope: !2635, file: !2595, line: 132, type: !27)
!2644 = !DILocalVariable(name: "s26", arg: 7, scope: !2635, file: !2595, line: 132, type: !27)
!2645 = !DILocalVariable(name: "s27", arg: 8, scope: !2635, file: !2595, line: 132, type: !27)
!2646 = !DILocalVariable(name: "s28", arg: 9, scope: !2635, file: !2595, line: 132, type: !27)
!2647 = !DILocation(line: 0, scope: !2635, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 153, column: 16, scope: !2649, inlinedAt: !2629)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !2595, line: 150, column: 11)
!2650 = distinct !DILexicalBlock(scope: !2633, file: !2595, line: 149, column: 5)
!2651 = !DILocation(line: 134, column: 7, scope: !2652, inlinedAt: !2648)
!2652 = distinct !DILexicalBlock(scope: !2635, file: !2595, line: 134, column: 7)
!2653 = !DILocalVariable(name: "s1", arg: 1, scope: !2654, file: !2595, line: 118, type: !28)
!2654 = distinct !DISubprogram(name: "strcaseeq3", scope: !2595, file: !2595, line: 118, type: !2655, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27}
!2657 = !{!2653, !2658, !2659, !2660, !2661, !2662, !2663, !2664}
!2658 = !DILocalVariable(name: "s2", arg: 2, scope: !2654, file: !2595, line: 118, type: !28)
!2659 = !DILocalVariable(name: "s23", arg: 3, scope: !2654, file: !2595, line: 118, type: !27)
!2660 = !DILocalVariable(name: "s24", arg: 4, scope: !2654, file: !2595, line: 118, type: !27)
!2661 = !DILocalVariable(name: "s25", arg: 5, scope: !2654, file: !2595, line: 118, type: !27)
!2662 = !DILocalVariable(name: "s26", arg: 6, scope: !2654, file: !2595, line: 118, type: !27)
!2663 = !DILocalVariable(name: "s27", arg: 7, scope: !2654, file: !2595, line: 118, type: !27)
!2664 = !DILocalVariable(name: "s28", arg: 8, scope: !2654, file: !2595, line: 118, type: !27)
!2665 = !DILocation(line: 0, scope: !2654, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 139, column: 16, scope: !2667, inlinedAt: !2648)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !2595, line: 136, column: 11)
!2668 = distinct !DILexicalBlock(scope: !2652, file: !2595, line: 135, column: 5)
!2669 = !DILocation(line: 120, column: 7, scope: !2670, inlinedAt: !2666)
!2670 = distinct !DILexicalBlock(scope: !2654, file: !2595, line: 120, column: 7)
!2671 = !DILocation(line: 120, column: 7, scope: !2654, inlinedAt: !2666)
!2672 = !DILocalVariable(name: "s1", arg: 1, scope: !2673, file: !2595, line: 104, type: !28)
!2673 = distinct !DISubprogram(name: "strcaseeq4", scope: !2595, file: !2595, line: 104, type: !2674, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!30, !28, !28, !27, !27, !27, !27, !27}
!2676 = !{!2672, !2677, !2678, !2679, !2680, !2681, !2682}
!2677 = !DILocalVariable(name: "s2", arg: 2, scope: !2673, file: !2595, line: 104, type: !28)
!2678 = !DILocalVariable(name: "s24", arg: 3, scope: !2673, file: !2595, line: 104, type: !27)
!2679 = !DILocalVariable(name: "s25", arg: 4, scope: !2673, file: !2595, line: 104, type: !27)
!2680 = !DILocalVariable(name: "s26", arg: 5, scope: !2673, file: !2595, line: 104, type: !27)
!2681 = !DILocalVariable(name: "s27", arg: 6, scope: !2673, file: !2595, line: 104, type: !27)
!2682 = !DILocalVariable(name: "s28", arg: 7, scope: !2673, file: !2595, line: 104, type: !27)
!2683 = !DILocation(line: 0, scope: !2673, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 125, column: 16, scope: !2685, inlinedAt: !2666)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !2595, line: 122, column: 11)
!2686 = distinct !DILexicalBlock(scope: !2670, file: !2595, line: 121, column: 5)
!2687 = !DILocation(line: 106, column: 7, scope: !2688, inlinedAt: !2684)
!2688 = distinct !DILexicalBlock(scope: !2673, file: !2595, line: 106, column: 7)
!2689 = !DILocation(line: 106, column: 7, scope: !2673, inlinedAt: !2684)
!2690 = !DILocalVariable(name: "s1", arg: 1, scope: !2691, file: !2595, line: 90, type: !28)
!2691 = distinct !DISubprogram(name: "strcaseeq5", scope: !2595, file: !2595, line: 90, type: !2692, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!30, !28, !28, !27, !27, !27, !27}
!2694 = !{!2690, !2695, !2696, !2697, !2698, !2699}
!2695 = !DILocalVariable(name: "s2", arg: 2, scope: !2691, file: !2595, line: 90, type: !28)
!2696 = !DILocalVariable(name: "s25", arg: 3, scope: !2691, file: !2595, line: 90, type: !27)
!2697 = !DILocalVariable(name: "s26", arg: 4, scope: !2691, file: !2595, line: 90, type: !27)
!2698 = !DILocalVariable(name: "s27", arg: 5, scope: !2691, file: !2595, line: 90, type: !27)
!2699 = !DILocalVariable(name: "s28", arg: 6, scope: !2691, file: !2595, line: 90, type: !27)
!2700 = !DILocation(line: 0, scope: !2691, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 111, column: 16, scope: !2702, inlinedAt: !2684)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !2595, line: 108, column: 11)
!2703 = distinct !DILexicalBlock(scope: !2688, file: !2595, line: 107, column: 5)
!2704 = !DILocation(line: 92, column: 7, scope: !2705, inlinedAt: !2701)
!2705 = distinct !DILexicalBlock(scope: !2691, file: !2595, line: 92, column: 7)
!2706 = !DILocation(line: 92, column: 7, scope: !2691, inlinedAt: !2701)
!2707 = !DILocation(line: 235, column: 12, scope: !2611)
!2708 = !DILocation(line: 235, column: 21, scope: !2611)
!2709 = !DILocation(line: 235, column: 5, scope: !2611)
!2710 = !DILocation(line: 0, scope: !2615, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 167, column: 16, scope: !2630, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 236, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2579, file: !292, line: 236, column: 7)
!2714 = !DILocation(line: 148, column: 7, scope: !2633, inlinedAt: !2711)
!2715 = !DILocation(line: 0, scope: !2635, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 153, column: 16, scope: !2649, inlinedAt: !2711)
!2717 = !DILocation(line: 134, column: 7, scope: !2652, inlinedAt: !2716)
!2718 = !DILocation(line: 134, column: 7, scope: !2635, inlinedAt: !2716)
!2719 = !DILocation(line: 0, scope: !2654, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 139, column: 16, scope: !2667, inlinedAt: !2716)
!2721 = !DILocation(line: 120, column: 7, scope: !2670, inlinedAt: !2720)
!2722 = !DILocation(line: 120, column: 7, scope: !2654, inlinedAt: !2720)
!2723 = !DILocation(line: 0, scope: !2673, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 125, column: 16, scope: !2685, inlinedAt: !2720)
!2725 = !DILocation(line: 106, column: 7, scope: !2688, inlinedAt: !2724)
!2726 = !DILocation(line: 106, column: 7, scope: !2673, inlinedAt: !2724)
!2727 = !DILocation(line: 0, scope: !2691, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 111, column: 16, scope: !2702, inlinedAt: !2724)
!2729 = !DILocation(line: 92, column: 7, scope: !2705, inlinedAt: !2728)
!2730 = !DILocation(line: 92, column: 7, scope: !2691, inlinedAt: !2728)
!2731 = !DILocalVariable(name: "s1", arg: 1, scope: !2732, file: !2595, line: 76, type: !28)
!2732 = distinct !DISubprogram(name: "strcaseeq6", scope: !2595, file: !2595, line: 76, type: !2733, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!30, !28, !28, !27, !27, !27}
!2735 = !{!2731, !2736, !2737, !2738, !2739}
!2736 = !DILocalVariable(name: "s2", arg: 2, scope: !2732, file: !2595, line: 76, type: !28)
!2737 = !DILocalVariable(name: "s26", arg: 3, scope: !2732, file: !2595, line: 76, type: !27)
!2738 = !DILocalVariable(name: "s27", arg: 4, scope: !2732, file: !2595, line: 76, type: !27)
!2739 = !DILocalVariable(name: "s28", arg: 5, scope: !2732, file: !2595, line: 76, type: !27)
!2740 = !DILocation(line: 0, scope: !2732, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 97, column: 16, scope: !2742, inlinedAt: !2728)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !2595, line: 94, column: 11)
!2743 = distinct !DILexicalBlock(scope: !2705, file: !2595, line: 93, column: 5)
!2744 = !DILocation(line: 78, column: 7, scope: !2745, inlinedAt: !2741)
!2745 = distinct !DILexicalBlock(scope: !2732, file: !2595, line: 78, column: 7)
!2746 = !DILocation(line: 78, column: 7, scope: !2732, inlinedAt: !2741)
!2747 = !DILocalVariable(name: "s1", arg: 1, scope: !2748, file: !2595, line: 62, type: !28)
!2748 = distinct !DISubprogram(name: "strcaseeq7", scope: !2595, file: !2595, line: 62, type: !2749, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!30, !28, !28, !27, !27}
!2751 = !{!2747, !2752, !2753, !2754}
!2752 = !DILocalVariable(name: "s2", arg: 2, scope: !2748, file: !2595, line: 62, type: !28)
!2753 = !DILocalVariable(name: "s27", arg: 3, scope: !2748, file: !2595, line: 62, type: !27)
!2754 = !DILocalVariable(name: "s28", arg: 4, scope: !2748, file: !2595, line: 62, type: !27)
!2755 = !DILocation(line: 0, scope: !2748, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 83, column: 16, scope: !2757, inlinedAt: !2741)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !2595, line: 80, column: 11)
!2758 = distinct !DILexicalBlock(scope: !2745, file: !2595, line: 79, column: 5)
!2759 = !DILocation(line: 64, column: 7, scope: !2760, inlinedAt: !2756)
!2760 = distinct !DILexicalBlock(scope: !2748, file: !2595, line: 64, column: 7)
!2761 = !DILocation(line: 236, column: 7, scope: !2579)
!2762 = !DILocation(line: 237, column: 12, scope: !2713)
!2763 = !DILocation(line: 237, column: 21, scope: !2713)
!2764 = !DILocation(line: 237, column: 5, scope: !2713)
!2765 = !DILocation(line: 239, column: 13, scope: !2579)
!2766 = !DILocation(line: 239, column: 11, scope: !2579)
!2767 = !DILocation(line: 239, column: 3, scope: !2579)
!2768 = !DILocation(line: 240, column: 1, scope: !2579)
!2769 = distinct !DISubprogram(name: "quotearg_alloc", scope: !292, file: !292, line: 799, type: !2770, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!26, !28, !85, !336}
!2772 = !{!2773, !2774, !2775}
!2773 = !DILocalVariable(name: "arg", arg: 1, scope: !2769, file: !292, line: 799, type: !28)
!2774 = !DILocalVariable(name: "argsize", arg: 2, scope: !2769, file: !292, line: 799, type: !85)
!2775 = !DILocalVariable(name: "o", arg: 3, scope: !2769, file: !292, line: 800, type: !336)
!2776 = !DILocation(line: 0, scope: !2769)
!2777 = !DILocalVariable(name: "arg", arg: 1, scope: !2778, file: !292, line: 812, type: !28)
!2778 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !292, file: !292, line: 812, type: !2779, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2781)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!26, !28, !85, !524, !336}
!2781 = !{!2777, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2782 = !DILocalVariable(name: "argsize", arg: 2, scope: !2778, file: !292, line: 812, type: !85)
!2783 = !DILocalVariable(name: "size", arg: 3, scope: !2778, file: !292, line: 812, type: !524)
!2784 = !DILocalVariable(name: "o", arg: 4, scope: !2778, file: !292, line: 813, type: !336)
!2785 = !DILocalVariable(name: "p", scope: !2778, file: !292, line: 815, type: !336)
!2786 = !DILocalVariable(name: "e", scope: !2778, file: !292, line: 816, type: !30)
!2787 = !DILocalVariable(name: "flags", scope: !2778, file: !292, line: 818, type: !30)
!2788 = !DILocalVariable(name: "bufsize", scope: !2778, file: !292, line: 819, type: !85)
!2789 = !DILocalVariable(name: "buf", scope: !2778, file: !292, line: 823, type: !26)
!2790 = !DILocation(line: 0, scope: !2778, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 802, column: 10, scope: !2769)
!2792 = !DILocation(line: 815, column: 37, scope: !2778, inlinedAt: !2791)
!2793 = !DILocation(line: 816, column: 11, scope: !2778, inlinedAt: !2791)
!2794 = !DILocation(line: 818, column: 18, scope: !2778, inlinedAt: !2791)
!2795 = !DILocation(line: 818, column: 24, scope: !2778, inlinedAt: !2791)
!2796 = !DILocation(line: 819, column: 69, scope: !2778, inlinedAt: !2791)
!2797 = !DILocation(line: 820, column: 53, scope: !2778, inlinedAt: !2791)
!2798 = !DILocation(line: 821, column: 49, scope: !2778, inlinedAt: !2791)
!2799 = !DILocation(line: 822, column: 49, scope: !2778, inlinedAt: !2791)
!2800 = !DILocation(line: 819, column: 20, scope: !2778, inlinedAt: !2791)
!2801 = !DILocation(line: 822, column: 62, scope: !2778, inlinedAt: !2791)
!2802 = !DILocalVariable(name: "n", arg: 1, scope: !2803, file: !142, line: 216, type: !85)
!2803 = distinct !DISubprogram(name: "xcharalloc", scope: !142, file: !142, line: 216, type: !2804, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!26, !85}
!2806 = !{!2802}
!2807 = !DILocation(line: 0, scope: !2803, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 823, column: 15, scope: !2778, inlinedAt: !2791)
!2809 = !DILocation(line: 218, column: 10, scope: !2803, inlinedAt: !2808)
!2810 = !DILocation(line: 824, column: 60, scope: !2778, inlinedAt: !2791)
!2811 = !DILocation(line: 826, column: 32, scope: !2778, inlinedAt: !2791)
!2812 = !DILocation(line: 826, column: 47, scope: !2778, inlinedAt: !2791)
!2813 = !DILocation(line: 824, column: 3, scope: !2778, inlinedAt: !2791)
!2814 = !DILocation(line: 827, column: 9, scope: !2778, inlinedAt: !2791)
!2815 = !DILocation(line: 802, column: 3, scope: !2769)
!2816 = !DILocation(line: 0, scope: !2778)
!2817 = !DILocation(line: 815, column: 37, scope: !2778)
!2818 = !DILocation(line: 816, column: 11, scope: !2778)
!2819 = !DILocation(line: 818, column: 18, scope: !2778)
!2820 = !DILocation(line: 818, column: 27, scope: !2778)
!2821 = !DILocation(line: 818, column: 24, scope: !2778)
!2822 = !DILocation(line: 819, column: 69, scope: !2778)
!2823 = !DILocation(line: 820, column: 53, scope: !2778)
!2824 = !DILocation(line: 821, column: 49, scope: !2778)
!2825 = !DILocation(line: 822, column: 49, scope: !2778)
!2826 = !DILocation(line: 819, column: 20, scope: !2778)
!2827 = !DILocation(line: 822, column: 62, scope: !2778)
!2828 = !DILocation(line: 0, scope: !2803, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 823, column: 15, scope: !2778)
!2830 = !DILocation(line: 218, column: 10, scope: !2803, inlinedAt: !2829)
!2831 = !DILocation(line: 824, column: 60, scope: !2778)
!2832 = !DILocation(line: 826, column: 32, scope: !2778)
!2833 = !DILocation(line: 826, column: 47, scope: !2778)
!2834 = !DILocation(line: 824, column: 3, scope: !2778)
!2835 = !DILocation(line: 827, column: 9, scope: !2778)
!2836 = !DILocation(line: 828, column: 7, scope: !2778)
!2837 = !DILocation(line: 829, column: 11, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2778, file: !292, line: 828, column: 7)
!2839 = !DILocation(line: 829, column: 5, scope: !2838)
!2840 = !DILocation(line: 830, column: 3, scope: !2778)
!2841 = distinct !DISubprogram(name: "quotearg_free", scope: !292, file: !292, line: 848, type: !112, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2842)
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "sv", scope: !2841, file: !292, line: 850, type: !410)
!2844 = !DILocalVariable(name: "i", scope: !2841, file: !292, line: 851, type: !30)
!2845 = !DILocation(line: 850, column: 24, scope: !2841)
!2846 = !DILocation(line: 0, scope: !2841)
!2847 = !DILocation(line: 852, column: 19, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !292, line: 852, column: 3)
!2849 = distinct !DILexicalBlock(scope: !2841, file: !292, line: 852, column: 3)
!2850 = !DILocation(line: 852, column: 17, scope: !2848)
!2851 = !DILocation(line: 852, column: 3, scope: !2849)
!2852 = !DILocation(line: 853, column: 17, scope: !2848)
!2853 = !{!2854, !1192, i64 8}
!2854 = !{!"slotvec", !1344, i64 0, !1192, i64 8}
!2855 = !DILocation(line: 853, column: 5, scope: !2848)
!2856 = !DILocation(line: 852, column: 28, scope: !2848)
!2857 = distinct !{!2857, !2851, !2858}
!2858 = !DILocation(line: 853, column: 20, scope: !2849)
!2859 = !DILocation(line: 854, column: 13, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2841, file: !292, line: 854, column: 7)
!2861 = !DILocation(line: 854, column: 17, scope: !2860)
!2862 = !DILocation(line: 854, column: 7, scope: !2841)
!2863 = !DILocation(line: 856, column: 7, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !292, line: 855, column: 5)
!2865 = !DILocation(line: 857, column: 21, scope: !2864)
!2866 = !{!2854, !1344, i64 0}
!2867 = !DILocation(line: 858, column: 20, scope: !2864)
!2868 = !DILocation(line: 859, column: 5, scope: !2864)
!2869 = !DILocation(line: 860, column: 10, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2841, file: !292, line: 860, column: 7)
!2871 = !DILocation(line: 860, column: 7, scope: !2841)
!2872 = !DILocation(line: 862, column: 13, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !292, line: 861, column: 5)
!2874 = !DILocation(line: 862, column: 7, scope: !2873)
!2875 = !DILocation(line: 863, column: 15, scope: !2873)
!2876 = !DILocation(line: 864, column: 5, scope: !2873)
!2877 = !DILocation(line: 865, column: 10, scope: !2841)
!2878 = !DILocation(line: 866, column: 1, scope: !2841)
!2879 = distinct !DISubprogram(name: "quotearg_n", scope: !292, file: !292, line: 931, type: !99, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2880)
!2880 = !{!2881, !2882}
!2881 = !DILocalVariable(name: "n", arg: 1, scope: !2879, file: !292, line: 931, type: !30)
!2882 = !DILocalVariable(name: "arg", arg: 2, scope: !2879, file: !292, line: 931, type: !28)
!2883 = !DILocation(line: 0, scope: !2879)
!2884 = !DILocation(line: 933, column: 10, scope: !2879)
!2885 = !DILocation(line: 933, column: 3, scope: !2879)
!2886 = distinct !DISubprogram(name: "quotearg_n_options", scope: !292, file: !292, line: 877, type: !2887, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!26, !30, !28, !85, !336}
!2889 = !{!2890, !2891, !2892, !2893, !2894, !2895, !2896, !2899, !2900, !2902, !2903, !2904}
!2890 = !DILocalVariable(name: "n", arg: 1, scope: !2886, file: !292, line: 877, type: !30)
!2891 = !DILocalVariable(name: "arg", arg: 2, scope: !2886, file: !292, line: 877, type: !28)
!2892 = !DILocalVariable(name: "argsize", arg: 3, scope: !2886, file: !292, line: 877, type: !85)
!2893 = !DILocalVariable(name: "options", arg: 4, scope: !2886, file: !292, line: 878, type: !336)
!2894 = !DILocalVariable(name: "e", scope: !2886, file: !292, line: 880, type: !30)
!2895 = !DILocalVariable(name: "sv", scope: !2886, file: !292, line: 882, type: !410)
!2896 = !DILocalVariable(name: "preallocated", scope: !2897, file: !292, line: 889, type: !241)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !292, line: 888, column: 5)
!2898 = distinct !DILexicalBlock(scope: !2886, file: !292, line: 887, column: 7)
!2899 = !DILocalVariable(name: "nmax", scope: !2897, file: !292, line: 890, type: !30)
!2900 = !DILocalVariable(name: "size", scope: !2901, file: !292, line: 903, type: !85)
!2901 = distinct !DILexicalBlock(scope: !2886, file: !292, line: 902, column: 3)
!2902 = !DILocalVariable(name: "val", scope: !2901, file: !292, line: 904, type: !26)
!2903 = !DILocalVariable(name: "flags", scope: !2901, file: !292, line: 906, type: !30)
!2904 = !DILocalVariable(name: "qsize", scope: !2901, file: !292, line: 907, type: !85)
!2905 = !DILocation(line: 0, scope: !2886)
!2906 = !DILocation(line: 880, column: 11, scope: !2886)
!2907 = !DILocation(line: 882, column: 24, scope: !2886)
!2908 = !DILocation(line: 884, column: 9, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2886, file: !292, line: 884, column: 7)
!2910 = !DILocation(line: 884, column: 7, scope: !2886)
!2911 = !DILocation(line: 885, column: 5, scope: !2909)
!2912 = !DILocation(line: 887, column: 7, scope: !2898)
!2913 = !DILocation(line: 887, column: 14, scope: !2898)
!2914 = !DILocation(line: 887, column: 7, scope: !2886)
!2915 = !DILocation(line: 889, column: 31, scope: !2897)
!2916 = !DILocation(line: 0, scope: !2897)
!2917 = !DILocation(line: 892, column: 16, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2897, file: !292, line: 892, column: 11)
!2919 = !DILocation(line: 892, column: 11, scope: !2897)
!2920 = !DILocation(line: 893, column: 9, scope: !2918)
!2921 = !DILocation(line: 895, column: 32, scope: !2897)
!2922 = !DILocation(line: 895, column: 61, scope: !2897)
!2923 = !DILocation(line: 895, column: 58, scope: !2897)
!2924 = !DILocation(line: 895, column: 66, scope: !2897)
!2925 = !DILocation(line: 895, column: 22, scope: !2897)
!2926 = !DILocation(line: 895, column: 15, scope: !2897)
!2927 = !DILocation(line: 896, column: 11, scope: !2897)
!2928 = !DILocation(line: 897, column: 15, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2897, file: !292, line: 896, column: 11)
!2930 = !{i64 0, i64 8, !1385, i64 8, i64 8, !1191}
!2931 = !DILocation(line: 897, column: 9, scope: !2929)
!2932 = !DILocation(line: 898, column: 20, scope: !2897)
!2933 = !DILocation(line: 898, column: 18, scope: !2897)
!2934 = !DILocation(line: 898, column: 15, scope: !2897)
!2935 = !DILocation(line: 898, column: 38, scope: !2897)
!2936 = !DILocation(line: 898, column: 31, scope: !2897)
!2937 = !DILocation(line: 898, column: 48, scope: !2897)
!2938 = !DILocation(line: 0, scope: !2337, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 898, column: 7, scope: !2897)
!2940 = !DILocation(line: 71, column: 10, scope: !2337, inlinedAt: !2939)
!2941 = !DILocation(line: 899, column: 14, scope: !2897)
!2942 = !DILocation(line: 900, column: 5, scope: !2897)
!2943 = !DILocation(line: 903, column: 19, scope: !2901)
!2944 = !DILocation(line: 903, column: 25, scope: !2901)
!2945 = !DILocation(line: 0, scope: !2901)
!2946 = !DILocation(line: 904, column: 23, scope: !2901)
!2947 = !DILocation(line: 906, column: 26, scope: !2901)
!2948 = !DILocation(line: 906, column: 32, scope: !2901)
!2949 = !DILocation(line: 908, column: 55, scope: !2901)
!2950 = !DILocation(line: 909, column: 46, scope: !2901)
!2951 = !DILocation(line: 910, column: 55, scope: !2901)
!2952 = !DILocation(line: 911, column: 55, scope: !2901)
!2953 = !DILocation(line: 907, column: 20, scope: !2901)
!2954 = !DILocation(line: 913, column: 14, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2901, file: !292, line: 913, column: 9)
!2956 = !DILocation(line: 913, column: 9, scope: !2901)
!2957 = !DILocation(line: 915, column: 35, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !292, line: 914, column: 7)
!2959 = !DILocation(line: 915, column: 20, scope: !2958)
!2960 = !DILocation(line: 916, column: 17, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !292, line: 916, column: 13)
!2962 = !DILocation(line: 916, column: 13, scope: !2958)
!2963 = !DILocation(line: 917, column: 11, scope: !2961)
!2964 = !DILocation(line: 0, scope: !2803, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 918, column: 27, scope: !2958)
!2966 = !DILocation(line: 218, column: 10, scope: !2803, inlinedAt: !2965)
!2967 = !DILocation(line: 918, column: 19, scope: !2958)
!2968 = !DILocation(line: 919, column: 69, scope: !2958)
!2969 = !DILocation(line: 921, column: 44, scope: !2958)
!2970 = !DILocation(line: 922, column: 44, scope: !2958)
!2971 = !DILocation(line: 919, column: 9, scope: !2958)
!2972 = !DILocation(line: 923, column: 7, scope: !2958)
!2973 = !DILocation(line: 925, column: 11, scope: !2901)
!2974 = !DILocation(line: 926, column: 5, scope: !2901)
!2975 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !292, file: !292, line: 937, type: !2976, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!26, !30, !28, !85}
!2978 = !{!2979, !2980, !2981}
!2979 = !DILocalVariable(name: "n", arg: 1, scope: !2975, file: !292, line: 937, type: !30)
!2980 = !DILocalVariable(name: "arg", arg: 2, scope: !2975, file: !292, line: 937, type: !28)
!2981 = !DILocalVariable(name: "argsize", arg: 3, scope: !2975, file: !292, line: 937, type: !85)
!2982 = !DILocation(line: 0, scope: !2975)
!2983 = !DILocation(line: 939, column: 10, scope: !2975)
!2984 = !DILocation(line: 939, column: 3, scope: !2975)
!2985 = distinct !DISubprogram(name: "quotearg", scope: !292, file: !292, line: 943, type: !105, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2986)
!2986 = !{!2987}
!2987 = !DILocalVariable(name: "arg", arg: 1, scope: !2985, file: !292, line: 943, type: !28)
!2988 = !DILocation(line: 0, scope: !2985)
!2989 = !DILocation(line: 0, scope: !2879, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 945, column: 10, scope: !2985)
!2991 = !DILocation(line: 933, column: 10, scope: !2879, inlinedAt: !2990)
!2992 = !DILocation(line: 945, column: 3, scope: !2985)
!2993 = distinct !DISubprogram(name: "quotearg_mem", scope: !292, file: !292, line: 949, type: !2994, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!26, !28, !85}
!2996 = !{!2997, !2998}
!2997 = !DILocalVariable(name: "arg", arg: 1, scope: !2993, file: !292, line: 949, type: !28)
!2998 = !DILocalVariable(name: "argsize", arg: 2, scope: !2993, file: !292, line: 949, type: !85)
!2999 = !DILocation(line: 0, scope: !2993)
!3000 = !DILocation(line: 0, scope: !2975, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 951, column: 10, scope: !2993)
!3002 = !DILocation(line: 939, column: 10, scope: !2975, inlinedAt: !3001)
!3003 = !DILocation(line: 951, column: 3, scope: !2993)
!3004 = distinct !DISubprogram(name: "quotearg_n_style", scope: !292, file: !292, line: 955, type: !3005, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!26, !30, !294, !28}
!3007 = !{!3008, !3009, !3010, !3011}
!3008 = !DILocalVariable(name: "n", arg: 1, scope: !3004, file: !292, line: 955, type: !30)
!3009 = !DILocalVariable(name: "s", arg: 2, scope: !3004, file: !292, line: 955, type: !294)
!3010 = !DILocalVariable(name: "arg", arg: 3, scope: !3004, file: !292, line: 955, type: !28)
!3011 = !DILocalVariable(name: "o", scope: !3004, file: !292, line: 957, type: !337)
!3012 = !DILocation(line: 0, scope: !3004)
!3013 = !DILocation(line: 957, column: 3, scope: !3004)
!3014 = !DILocation(line: 957, column: 32, scope: !3004)
!3015 = !DILocalVariable(name: "style", arg: 1, scope: !3016, file: !292, line: 193, type: !294)
!3016 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !292, file: !292, line: 193, type: !3017, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!338, !294}
!3019 = !{!3015, !3020}
!3020 = !DILocalVariable(name: "o", scope: !3016, file: !292, line: 195, type: !338)
!3021 = !DILocation(line: 0, scope: !3016, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 957, column: 36, scope: !3004)
!3023 = !DILocation(line: 195, column: 26, scope: !3016, inlinedAt: !3022)
!3024 = !{!3025}
!3025 = distinct !{!3025, !3026, !"quoting_options_from_style: argument 0"}
!3026 = distinct !{!3026, !"quoting_options_from_style"}
!3027 = !DILocation(line: 196, column: 13, scope: !3028, inlinedAt: !3022)
!3028 = distinct !DILexicalBlock(scope: !3016, file: !292, line: 196, column: 7)
!3029 = !DILocation(line: 196, column: 7, scope: !3016, inlinedAt: !3022)
!3030 = !DILocation(line: 197, column: 5, scope: !3028, inlinedAt: !3022)
!3031 = !DILocation(line: 198, column: 5, scope: !3016, inlinedAt: !3022)
!3032 = !DILocation(line: 198, column: 11, scope: !3016, inlinedAt: !3022)
!3033 = !DILocation(line: 958, column: 10, scope: !3004)
!3034 = !DILocation(line: 959, column: 1, scope: !3004)
!3035 = !DILocation(line: 958, column: 3, scope: !3004)
!3036 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !292, file: !292, line: 962, type: !3037, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!26, !30, !294, !28, !85}
!3039 = !{!3040, !3041, !3042, !3043, !3044}
!3040 = !DILocalVariable(name: "n", arg: 1, scope: !3036, file: !292, line: 962, type: !30)
!3041 = !DILocalVariable(name: "s", arg: 2, scope: !3036, file: !292, line: 962, type: !294)
!3042 = !DILocalVariable(name: "arg", arg: 3, scope: !3036, file: !292, line: 963, type: !28)
!3043 = !DILocalVariable(name: "argsize", arg: 4, scope: !3036, file: !292, line: 963, type: !85)
!3044 = !DILocalVariable(name: "o", scope: !3036, file: !292, line: 965, type: !337)
!3045 = !DILocation(line: 0, scope: !3036)
!3046 = !DILocation(line: 965, column: 3, scope: !3036)
!3047 = !DILocation(line: 965, column: 32, scope: !3036)
!3048 = !DILocation(line: 0, scope: !3016, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 965, column: 36, scope: !3036)
!3050 = !DILocation(line: 195, column: 26, scope: !3016, inlinedAt: !3049)
!3051 = !{!3052}
!3052 = distinct !{!3052, !3053, !"quoting_options_from_style: argument 0"}
!3053 = distinct !{!3053, !"quoting_options_from_style"}
!3054 = !DILocation(line: 196, column: 13, scope: !3028, inlinedAt: !3049)
!3055 = !DILocation(line: 196, column: 7, scope: !3016, inlinedAt: !3049)
!3056 = !DILocation(line: 197, column: 5, scope: !3028, inlinedAt: !3049)
!3057 = !DILocation(line: 198, column: 5, scope: !3016, inlinedAt: !3049)
!3058 = !DILocation(line: 198, column: 11, scope: !3016, inlinedAt: !3049)
!3059 = !DILocation(line: 966, column: 10, scope: !3036)
!3060 = !DILocation(line: 967, column: 1, scope: !3036)
!3061 = !DILocation(line: 966, column: 3, scope: !3036)
!3062 = distinct !DISubprogram(name: "quotearg_style", scope: !292, file: !292, line: 970, type: !3063, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!26, !294, !28}
!3065 = !{!3066, !3067}
!3066 = !DILocalVariable(name: "s", arg: 1, scope: !3062, file: !292, line: 970, type: !294)
!3067 = !DILocalVariable(name: "arg", arg: 2, scope: !3062, file: !292, line: 970, type: !28)
!3068 = !DILocation(line: 195, column: 26, scope: !3016, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 957, column: 36, scope: !3004, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 972, column: 10, scope: !3062)
!3071 = !DILocation(line: 957, column: 32, scope: !3004, inlinedAt: !3070)
!3072 = !DILocation(line: 0, scope: !3062)
!3073 = !DILocation(line: 0, scope: !3004, inlinedAt: !3070)
!3074 = !DILocation(line: 957, column: 3, scope: !3004, inlinedAt: !3070)
!3075 = !DILocation(line: 0, scope: !3016, inlinedAt: !3069)
!3076 = !{!3077}
!3077 = distinct !{!3077, !3078, !"quoting_options_from_style: argument 0"}
!3078 = distinct !{!3078, !"quoting_options_from_style"}
!3079 = !DILocation(line: 196, column: 13, scope: !3028, inlinedAt: !3069)
!3080 = !DILocation(line: 196, column: 7, scope: !3016, inlinedAt: !3069)
!3081 = !DILocation(line: 197, column: 5, scope: !3028, inlinedAt: !3069)
!3082 = !DILocation(line: 198, column: 5, scope: !3016, inlinedAt: !3069)
!3083 = !DILocation(line: 198, column: 11, scope: !3016, inlinedAt: !3069)
!3084 = !DILocation(line: 958, column: 10, scope: !3004, inlinedAt: !3070)
!3085 = !DILocation(line: 959, column: 1, scope: !3004, inlinedAt: !3070)
!3086 = !DILocation(line: 972, column: 3, scope: !3062)
!3087 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !292, file: !292, line: 976, type: !3088, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!26, !294, !28, !85}
!3090 = !{!3091, !3092, !3093}
!3091 = !DILocalVariable(name: "s", arg: 1, scope: !3087, file: !292, line: 976, type: !294)
!3092 = !DILocalVariable(name: "arg", arg: 2, scope: !3087, file: !292, line: 976, type: !28)
!3093 = !DILocalVariable(name: "argsize", arg: 3, scope: !3087, file: !292, line: 976, type: !85)
!3094 = !DILocation(line: 195, column: 26, scope: !3016, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 965, column: 36, scope: !3036, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 978, column: 10, scope: !3087)
!3097 = !DILocation(line: 965, column: 32, scope: !3036, inlinedAt: !3096)
!3098 = !DILocation(line: 0, scope: !3087)
!3099 = !DILocation(line: 0, scope: !3036, inlinedAt: !3096)
!3100 = !DILocation(line: 965, column: 3, scope: !3036, inlinedAt: !3096)
!3101 = !DILocation(line: 0, scope: !3016, inlinedAt: !3095)
!3102 = !{!3103}
!3103 = distinct !{!3103, !3104, !"quoting_options_from_style: argument 0"}
!3104 = distinct !{!3104, !"quoting_options_from_style"}
!3105 = !DILocation(line: 196, column: 13, scope: !3028, inlinedAt: !3095)
!3106 = !DILocation(line: 196, column: 7, scope: !3016, inlinedAt: !3095)
!3107 = !DILocation(line: 197, column: 5, scope: !3028, inlinedAt: !3095)
!3108 = !DILocation(line: 198, column: 5, scope: !3016, inlinedAt: !3095)
!3109 = !DILocation(line: 198, column: 11, scope: !3016, inlinedAt: !3095)
!3110 = !DILocation(line: 966, column: 10, scope: !3036, inlinedAt: !3096)
!3111 = !DILocation(line: 967, column: 1, scope: !3036, inlinedAt: !3096)
!3112 = !DILocation(line: 978, column: 3, scope: !3087)
!3113 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !292, file: !292, line: 982, type: !3114, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!26, !28, !85, !27}
!3116 = !{!3117, !3118, !3119, !3120}
!3117 = !DILocalVariable(name: "arg", arg: 1, scope: !3113, file: !292, line: 982, type: !28)
!3118 = !DILocalVariable(name: "argsize", arg: 2, scope: !3113, file: !292, line: 982, type: !85)
!3119 = !DILocalVariable(name: "ch", arg: 3, scope: !3113, file: !292, line: 982, type: !27)
!3120 = !DILocalVariable(name: "options", scope: !3113, file: !292, line: 984, type: !338)
!3121 = !DILocation(line: 0, scope: !3113)
!3122 = !DILocation(line: 984, column: 3, scope: !3113)
!3123 = !DILocation(line: 984, column: 26, scope: !3113)
!3124 = !DILocation(line: 985, column: 13, scope: !3113)
!3125 = !{i64 0, i64 4, !1348, i64 4, i64 4, !1311, i64 8, i64 32, !1348, i64 40, i64 8, !1191, i64 48, i64 8, !1191}
!3126 = !DILocation(line: 0, scope: !1949, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 986, column: 3, scope: !3113)
!3128 = !DILocation(line: 156, column: 62, scope: !1949, inlinedAt: !3127)
!3129 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3127)
!3130 = !DILocation(line: 157, column: 15, scope: !1949, inlinedAt: !3127)
!3131 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3127)
!3132 = !DILocation(line: 158, column: 15, scope: !1949, inlinedAt: !3127)
!3133 = !DILocation(line: 158, column: 25, scope: !1949, inlinedAt: !3127)
!3134 = !DILocation(line: 159, column: 18, scope: !1949, inlinedAt: !3127)
!3135 = !DILocation(line: 159, column: 23, scope: !1949, inlinedAt: !3127)
!3136 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3127)
!3137 = !DILocation(line: 987, column: 10, scope: !3113)
!3138 = !DILocation(line: 988, column: 1, scope: !3113)
!3139 = !DILocation(line: 987, column: 3, scope: !3113)
!3140 = distinct !DISubprogram(name: "quotearg_char", scope: !292, file: !292, line: 991, type: !3141, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!26, !28, !27}
!3143 = !{!3144, !3145}
!3144 = !DILocalVariable(name: "arg", arg: 1, scope: !3140, file: !292, line: 991, type: !28)
!3145 = !DILocalVariable(name: "ch", arg: 2, scope: !3140, file: !292, line: 991, type: !27)
!3146 = !DILocation(line: 984, column: 26, scope: !3113, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 993, column: 10, scope: !3140)
!3148 = !DILocation(line: 0, scope: !3140)
!3149 = !DILocation(line: 0, scope: !3113, inlinedAt: !3147)
!3150 = !DILocation(line: 984, column: 3, scope: !3113, inlinedAt: !3147)
!3151 = !DILocation(line: 985, column: 13, scope: !3113, inlinedAt: !3147)
!3152 = !DILocation(line: 0, scope: !1949, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 986, column: 3, scope: !3113, inlinedAt: !3147)
!3154 = !DILocation(line: 156, column: 62, scope: !1949, inlinedAt: !3153)
!3155 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3153)
!3156 = !DILocation(line: 157, column: 15, scope: !1949, inlinedAt: !3153)
!3157 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3153)
!3158 = !DILocation(line: 158, column: 15, scope: !1949, inlinedAt: !3153)
!3159 = !DILocation(line: 158, column: 25, scope: !1949, inlinedAt: !3153)
!3160 = !DILocation(line: 159, column: 18, scope: !1949, inlinedAt: !3153)
!3161 = !DILocation(line: 159, column: 23, scope: !1949, inlinedAt: !3153)
!3162 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3153)
!3163 = !DILocation(line: 987, column: 10, scope: !3113, inlinedAt: !3147)
!3164 = !DILocation(line: 988, column: 1, scope: !3113, inlinedAt: !3147)
!3165 = !DILocation(line: 993, column: 3, scope: !3140)
!3166 = distinct !DISubprogram(name: "quotearg_colon", scope: !292, file: !292, line: 997, type: !105, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3167)
!3167 = !{!3168}
!3168 = !DILocalVariable(name: "arg", arg: 1, scope: !3166, file: !292, line: 997, type: !28)
!3169 = !DILocation(line: 984, column: 26, scope: !3113, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 993, column: 10, scope: !3140, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 999, column: 10, scope: !3166)
!3172 = !DILocation(line: 0, scope: !3166)
!3173 = !DILocation(line: 0, scope: !3140, inlinedAt: !3171)
!3174 = !DILocation(line: 0, scope: !3113, inlinedAt: !3170)
!3175 = !DILocation(line: 984, column: 3, scope: !3113, inlinedAt: !3170)
!3176 = !DILocation(line: 985, column: 13, scope: !3113, inlinedAt: !3170)
!3177 = !DILocation(line: 0, scope: !1949, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 986, column: 3, scope: !3113, inlinedAt: !3170)
!3179 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3178)
!3180 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3178)
!3181 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3178)
!3182 = !DILocation(line: 987, column: 10, scope: !3113, inlinedAt: !3170)
!3183 = !DILocation(line: 988, column: 1, scope: !3113, inlinedAt: !3170)
!3184 = !DILocation(line: 999, column: 3, scope: !3166)
!3185 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !292, file: !292, line: 1003, type: !2994, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3186)
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "arg", arg: 1, scope: !3185, file: !292, line: 1003, type: !28)
!3188 = !DILocalVariable(name: "argsize", arg: 2, scope: !3185, file: !292, line: 1003, type: !85)
!3189 = !DILocation(line: 984, column: 26, scope: !3113, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 1005, column: 10, scope: !3185)
!3191 = !DILocation(line: 0, scope: !3185)
!3192 = !DILocation(line: 0, scope: !3113, inlinedAt: !3190)
!3193 = !DILocation(line: 984, column: 3, scope: !3113, inlinedAt: !3190)
!3194 = !DILocation(line: 985, column: 13, scope: !3113, inlinedAt: !3190)
!3195 = !DILocation(line: 0, scope: !1949, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 986, column: 3, scope: !3113, inlinedAt: !3190)
!3197 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3196)
!3198 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3196)
!3199 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3196)
!3200 = !DILocation(line: 987, column: 10, scope: !3113, inlinedAt: !3190)
!3201 = !DILocation(line: 988, column: 1, scope: !3113, inlinedAt: !3190)
!3202 = !DILocation(line: 1005, column: 3, scope: !3185)
!3203 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !292, file: !292, line: 1009, type: !3005, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3204)
!3204 = !{!3205, !3206, !3207, !3208}
!3205 = !DILocalVariable(name: "n", arg: 1, scope: !3203, file: !292, line: 1009, type: !30)
!3206 = !DILocalVariable(name: "s", arg: 2, scope: !3203, file: !292, line: 1009, type: !294)
!3207 = !DILocalVariable(name: "arg", arg: 3, scope: !3203, file: !292, line: 1009, type: !28)
!3208 = !DILocalVariable(name: "options", scope: !3203, file: !292, line: 1011, type: !338)
!3209 = !DILocation(line: 195, column: 26, scope: !3016, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 1012, column: 13, scope: !3203)
!3211 = !DILocation(line: 0, scope: !3203)
!3212 = !DILocation(line: 1011, column: 3, scope: !3203)
!3213 = !DILocation(line: 1011, column: 26, scope: !3203)
!3214 = !DILocation(line: 1012, column: 13, scope: !3203)
!3215 = !DILocation(line: 0, scope: !3016, inlinedAt: !3210)
!3216 = !{!3217}
!3217 = distinct !{!3217, !3218, !"quoting_options_from_style: argument 0"}
!3218 = distinct !{!3218, !"quoting_options_from_style"}
!3219 = !DILocation(line: 196, column: 13, scope: !3028, inlinedAt: !3210)
!3220 = !DILocation(line: 196, column: 7, scope: !3016, inlinedAt: !3210)
!3221 = !DILocation(line: 197, column: 5, scope: !3028, inlinedAt: !3210)
!3222 = !DILocation(line: 0, scope: !1949, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 1013, column: 3, scope: !3203)
!3224 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3223)
!3225 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3223)
!3226 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3223)
!3227 = !DILocation(line: 1014, column: 10, scope: !3203)
!3228 = !DILocation(line: 1015, column: 1, scope: !3203)
!3229 = !DILocation(line: 1014, column: 3, scope: !3203)
!3230 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !292, file: !292, line: 1018, type: !3231, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!26, !30, !28, !28, !28}
!3233 = !{!3234, !3235, !3236, !3237}
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3230, file: !292, line: 1018, type: !30)
!3235 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3230, file: !292, line: 1018, type: !28)
!3236 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3230, file: !292, line: 1019, type: !28)
!3237 = !DILocalVariable(name: "arg", arg: 4, scope: !3230, file: !292, line: 1019, type: !28)
!3238 = !DILocalVariable(name: "o", scope: !3239, file: !292, line: 1030, type: !338)
!3239 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !292, file: !292, line: 1026, type: !3240, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!26, !30, !28, !28, !28, !85}
!3242 = !{!3243, !3244, !3245, !3246, !3247, !3238}
!3243 = !DILocalVariable(name: "n", arg: 1, scope: !3239, file: !292, line: 1026, type: !30)
!3244 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3239, file: !292, line: 1026, type: !28)
!3245 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3239, file: !292, line: 1027, type: !28)
!3246 = !DILocalVariable(name: "arg", arg: 4, scope: !3239, file: !292, line: 1028, type: !28)
!3247 = !DILocalVariable(name: "argsize", arg: 5, scope: !3239, file: !292, line: 1028, type: !85)
!3248 = !DILocation(line: 1030, column: 26, scope: !3239, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 1021, column: 10, scope: !3230)
!3250 = !DILocation(line: 0, scope: !3230)
!3251 = !DILocation(line: 0, scope: !3239, inlinedAt: !3249)
!3252 = !DILocation(line: 1030, column: 3, scope: !3239, inlinedAt: !3249)
!3253 = !DILocation(line: 1030, column: 30, scope: !3239, inlinedAt: !3249)
!3254 = !DILocation(line: 0, scope: !1990, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 1031, column: 3, scope: !3239, inlinedAt: !3249)
!3256 = !DILocation(line: 184, column: 6, scope: !1990, inlinedAt: !3255)
!3257 = !DILocation(line: 184, column: 12, scope: !1990, inlinedAt: !3255)
!3258 = !DILocation(line: 185, column: 8, scope: !2004, inlinedAt: !3255)
!3259 = !DILocation(line: 185, column: 23, scope: !2004, inlinedAt: !3255)
!3260 = !DILocation(line: 185, column: 19, scope: !2004, inlinedAt: !3255)
!3261 = !DILocation(line: 186, column: 5, scope: !2004, inlinedAt: !3255)
!3262 = !DILocation(line: 187, column: 6, scope: !1990, inlinedAt: !3255)
!3263 = !DILocation(line: 187, column: 17, scope: !1990, inlinedAt: !3255)
!3264 = !DILocation(line: 188, column: 6, scope: !1990, inlinedAt: !3255)
!3265 = !DILocation(line: 188, column: 18, scope: !1990, inlinedAt: !3255)
!3266 = !DILocation(line: 1032, column: 10, scope: !3239, inlinedAt: !3249)
!3267 = !DILocation(line: 1033, column: 1, scope: !3239, inlinedAt: !3249)
!3268 = !DILocation(line: 1021, column: 3, scope: !3230)
!3269 = !DILocation(line: 0, scope: !3239)
!3270 = !DILocation(line: 1030, column: 3, scope: !3239)
!3271 = !DILocation(line: 1030, column: 26, scope: !3239)
!3272 = !DILocation(line: 1030, column: 30, scope: !3239)
!3273 = !DILocation(line: 0, scope: !1990, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 1031, column: 3, scope: !3239)
!3275 = !DILocation(line: 184, column: 6, scope: !1990, inlinedAt: !3274)
!3276 = !DILocation(line: 184, column: 12, scope: !1990, inlinedAt: !3274)
!3277 = !DILocation(line: 185, column: 8, scope: !2004, inlinedAt: !3274)
!3278 = !DILocation(line: 185, column: 23, scope: !2004, inlinedAt: !3274)
!3279 = !DILocation(line: 185, column: 19, scope: !2004, inlinedAt: !3274)
!3280 = !DILocation(line: 186, column: 5, scope: !2004, inlinedAt: !3274)
!3281 = !DILocation(line: 187, column: 6, scope: !1990, inlinedAt: !3274)
!3282 = !DILocation(line: 187, column: 17, scope: !1990, inlinedAt: !3274)
!3283 = !DILocation(line: 188, column: 6, scope: !1990, inlinedAt: !3274)
!3284 = !DILocation(line: 188, column: 18, scope: !1990, inlinedAt: !3274)
!3285 = !DILocation(line: 1032, column: 10, scope: !3239)
!3286 = !DILocation(line: 1033, column: 1, scope: !3239)
!3287 = !DILocation(line: 1032, column: 3, scope: !3239)
!3288 = distinct !DISubprogram(name: "quotearg_custom", scope: !292, file: !292, line: 1036, type: !3289, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!26, !28, !28, !28}
!3291 = !{!3292, !3293, !3294}
!3292 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3288, file: !292, line: 1036, type: !28)
!3293 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3288, file: !292, line: 1036, type: !28)
!3294 = !DILocalVariable(name: "arg", arg: 3, scope: !3288, file: !292, line: 1037, type: !28)
!3295 = !DILocation(line: 1030, column: 26, scope: !3239, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 1021, column: 10, scope: !3230, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 1039, column: 10, scope: !3288)
!3298 = !DILocation(line: 0, scope: !3288)
!3299 = !DILocation(line: 0, scope: !3230, inlinedAt: !3297)
!3300 = !DILocation(line: 0, scope: !3239, inlinedAt: !3296)
!3301 = !DILocation(line: 1030, column: 3, scope: !3239, inlinedAt: !3296)
!3302 = !DILocation(line: 1030, column: 30, scope: !3239, inlinedAt: !3296)
!3303 = !DILocation(line: 0, scope: !1990, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 1031, column: 3, scope: !3239, inlinedAt: !3296)
!3305 = !DILocation(line: 184, column: 6, scope: !1990, inlinedAt: !3304)
!3306 = !DILocation(line: 184, column: 12, scope: !1990, inlinedAt: !3304)
!3307 = !DILocation(line: 185, column: 8, scope: !2004, inlinedAt: !3304)
!3308 = !DILocation(line: 185, column: 23, scope: !2004, inlinedAt: !3304)
!3309 = !DILocation(line: 185, column: 19, scope: !2004, inlinedAt: !3304)
!3310 = !DILocation(line: 186, column: 5, scope: !2004, inlinedAt: !3304)
!3311 = !DILocation(line: 187, column: 6, scope: !1990, inlinedAt: !3304)
!3312 = !DILocation(line: 187, column: 17, scope: !1990, inlinedAt: !3304)
!3313 = !DILocation(line: 188, column: 6, scope: !1990, inlinedAt: !3304)
!3314 = !DILocation(line: 188, column: 18, scope: !1990, inlinedAt: !3304)
!3315 = !DILocation(line: 1032, column: 10, scope: !3239, inlinedAt: !3296)
!3316 = !DILocation(line: 1033, column: 1, scope: !3239, inlinedAt: !3296)
!3317 = !DILocation(line: 1039, column: 3, scope: !3288)
!3318 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !292, file: !292, line: 1043, type: !3319, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!26, !28, !28, !28, !85}
!3321 = !{!3322, !3323, !3324, !3325}
!3322 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3318, file: !292, line: 1043, type: !28)
!3323 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3318, file: !292, line: 1043, type: !28)
!3324 = !DILocalVariable(name: "arg", arg: 3, scope: !3318, file: !292, line: 1044, type: !28)
!3325 = !DILocalVariable(name: "argsize", arg: 4, scope: !3318, file: !292, line: 1044, type: !85)
!3326 = !DILocation(line: 1030, column: 26, scope: !3239, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 1046, column: 10, scope: !3318)
!3328 = !DILocation(line: 0, scope: !3318)
!3329 = !DILocation(line: 0, scope: !3239, inlinedAt: !3327)
!3330 = !DILocation(line: 1030, column: 3, scope: !3239, inlinedAt: !3327)
!3331 = !DILocation(line: 1030, column: 30, scope: !3239, inlinedAt: !3327)
!3332 = !DILocation(line: 0, scope: !1990, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 1031, column: 3, scope: !3239, inlinedAt: !3327)
!3334 = !DILocation(line: 184, column: 6, scope: !1990, inlinedAt: !3333)
!3335 = !DILocation(line: 184, column: 12, scope: !1990, inlinedAt: !3333)
!3336 = !DILocation(line: 185, column: 8, scope: !2004, inlinedAt: !3333)
!3337 = !DILocation(line: 185, column: 23, scope: !2004, inlinedAt: !3333)
!3338 = !DILocation(line: 185, column: 19, scope: !2004, inlinedAt: !3333)
!3339 = !DILocation(line: 186, column: 5, scope: !2004, inlinedAt: !3333)
!3340 = !DILocation(line: 187, column: 6, scope: !1990, inlinedAt: !3333)
!3341 = !DILocation(line: 187, column: 17, scope: !1990, inlinedAt: !3333)
!3342 = !DILocation(line: 188, column: 6, scope: !1990, inlinedAt: !3333)
!3343 = !DILocation(line: 188, column: 18, scope: !1990, inlinedAt: !3333)
!3344 = !DILocation(line: 1032, column: 10, scope: !3239, inlinedAt: !3327)
!3345 = !DILocation(line: 1033, column: 1, scope: !3239, inlinedAt: !3327)
!3346 = !DILocation(line: 1046, column: 3, scope: !3318)
!3347 = distinct !DISubprogram(name: "quote_n_mem", scope: !292, file: !292, line: 1061, type: !3348, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!28, !30, !28, !85}
!3350 = !{!3351, !3352, !3353}
!3351 = !DILocalVariable(name: "n", arg: 1, scope: !3347, file: !292, line: 1061, type: !30)
!3352 = !DILocalVariable(name: "arg", arg: 2, scope: !3347, file: !292, line: 1061, type: !28)
!3353 = !DILocalVariable(name: "argsize", arg: 3, scope: !3347, file: !292, line: 1061, type: !85)
!3354 = !DILocation(line: 0, scope: !3347)
!3355 = !DILocation(line: 1063, column: 10, scope: !3347)
!3356 = !DILocation(line: 1063, column: 3, scope: !3347)
!3357 = distinct !DISubprogram(name: "quote_mem", scope: !292, file: !292, line: 1067, type: !3358, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!28, !28, !85}
!3360 = !{!3361, !3362}
!3361 = !DILocalVariable(name: "arg", arg: 1, scope: !3357, file: !292, line: 1067, type: !28)
!3362 = !DILocalVariable(name: "argsize", arg: 2, scope: !3357, file: !292, line: 1067, type: !85)
!3363 = !DILocation(line: 0, scope: !3357)
!3364 = !DILocation(line: 0, scope: !3347, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 1069, column: 10, scope: !3357)
!3366 = !DILocation(line: 1063, column: 10, scope: !3347, inlinedAt: !3365)
!3367 = !DILocation(line: 1069, column: 3, scope: !3357)
!3368 = distinct !DISubprogram(name: "quote_n", scope: !292, file: !292, line: 1073, type: !3369, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3371)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!28, !30, !28}
!3371 = !{!3372, !3373}
!3372 = !DILocalVariable(name: "n", arg: 1, scope: !3368, file: !292, line: 1073, type: !30)
!3373 = !DILocalVariable(name: "arg", arg: 2, scope: !3368, file: !292, line: 1073, type: !28)
!3374 = !DILocation(line: 0, scope: !3368)
!3375 = !DILocation(line: 0, scope: !3347, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 1075, column: 10, scope: !3368)
!3377 = !DILocation(line: 1063, column: 10, scope: !3347, inlinedAt: !3376)
!3378 = !DILocation(line: 1075, column: 3, scope: !3368)
!3379 = distinct !DISubprogram(name: "quote", scope: !292, file: !292, line: 1079, type: !135, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !3380)
!3380 = !{!3381}
!3381 = !DILocalVariable(name: "arg", arg: 1, scope: !3379, file: !292, line: 1079, type: !28)
!3382 = !DILocation(line: 0, scope: !3379)
!3383 = !DILocation(line: 0, scope: !3368, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 1081, column: 10, scope: !3379)
!3385 = !DILocation(line: 0, scope: !3347, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 1075, column: 10, scope: !3368, inlinedAt: !3384)
!3387 = !DILocation(line: 1063, column: 10, scope: !3347, inlinedAt: !3386)
!3388 = !DILocation(line: 1081, column: 3, scope: !3379)
!3389 = distinct !DISubprogram(name: "version_etc_arn", scope: !476, file: !476, line: 61, type: !3390, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3395)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !3392, !28, !28, !28, !1256, !85}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3394, line: 7, baseType: !486)
!3394 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401}
!3396 = !DILocalVariable(name: "stream", arg: 1, scope: !3389, file: !476, line: 61, type: !3392)
!3397 = !DILocalVariable(name: "command_name", arg: 2, scope: !3389, file: !476, line: 62, type: !28)
!3398 = !DILocalVariable(name: "package", arg: 3, scope: !3389, file: !476, line: 62, type: !28)
!3399 = !DILocalVariable(name: "version", arg: 4, scope: !3389, file: !476, line: 63, type: !28)
!3400 = !DILocalVariable(name: "authors", arg: 5, scope: !3389, file: !476, line: 64, type: !1256)
!3401 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3389, file: !476, line: 64, type: !85)
!3402 = !DILocation(line: 0, scope: !3389)
!3403 = !DILocation(line: 66, column: 7, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3389, file: !476, line: 66, column: 7)
!3405 = !DILocation(line: 66, column: 7, scope: !3389)
!3406 = !DILocation(line: 67, column: 5, scope: !3404)
!3407 = !DILocation(line: 69, column: 5, scope: !3404)
!3408 = !DILocation(line: 83, column: 3, scope: !3389)
!3409 = !DILocation(line: 85, column: 3, scope: !3389)
!3410 = !DILocation(line: 88, column: 3, scope: !3389)
!3411 = !DILocation(line: 95, column: 3, scope: !3389)
!3412 = !DILocation(line: 97, column: 3, scope: !3389)
!3413 = !DILocation(line: 105, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3389, file: !476, line: 98, column: 5)
!3415 = !DILocation(line: 106, column: 7, scope: !3414)
!3416 = !DILocation(line: 109, column: 7, scope: !3414)
!3417 = !DILocation(line: 110, column: 7, scope: !3414)
!3418 = !DILocation(line: 113, column: 7, scope: !3414)
!3419 = !DILocation(line: 115, column: 7, scope: !3414)
!3420 = !DILocation(line: 120, column: 7, scope: !3414)
!3421 = !DILocation(line: 122, column: 7, scope: !3414)
!3422 = !DILocation(line: 127, column: 7, scope: !3414)
!3423 = !DILocation(line: 129, column: 7, scope: !3414)
!3424 = !DILocation(line: 134, column: 7, scope: !3414)
!3425 = !DILocation(line: 137, column: 7, scope: !3414)
!3426 = !DILocation(line: 142, column: 7, scope: !3414)
!3427 = !DILocation(line: 145, column: 7, scope: !3414)
!3428 = !DILocation(line: 150, column: 7, scope: !3414)
!3429 = !DILocation(line: 154, column: 7, scope: !3414)
!3430 = !DILocation(line: 159, column: 7, scope: !3414)
!3431 = !DILocation(line: 163, column: 7, scope: !3414)
!3432 = !DILocation(line: 170, column: 7, scope: !3414)
!3433 = !DILocation(line: 174, column: 7, scope: !3414)
!3434 = !DILocation(line: 176, column: 1, scope: !3389)
!3435 = distinct !DISubprogram(name: "version_etc_ar", scope: !476, file: !476, line: 183, type: !3436, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !3392, !28, !28, !28, !1256}
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444}
!3439 = !DILocalVariable(name: "stream", arg: 1, scope: !3435, file: !476, line: 183, type: !3392)
!3440 = !DILocalVariable(name: "command_name", arg: 2, scope: !3435, file: !476, line: 184, type: !28)
!3441 = !DILocalVariable(name: "package", arg: 3, scope: !3435, file: !476, line: 184, type: !28)
!3442 = !DILocalVariable(name: "version", arg: 4, scope: !3435, file: !476, line: 185, type: !28)
!3443 = !DILocalVariable(name: "authors", arg: 5, scope: !3435, file: !476, line: 185, type: !1256)
!3444 = !DILocalVariable(name: "n_authors", scope: !3435, file: !476, line: 187, type: !85)
!3445 = !DILocation(line: 0, scope: !3435)
!3446 = !DILocation(line: 189, column: 8, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3435, file: !476, line: 189, column: 3)
!3448 = !DILocation(line: 0, scope: !3447)
!3449 = !DILocation(line: 189, column: 23, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3447, file: !476, line: 189, column: 3)
!3451 = !DILocation(line: 189, column: 3, scope: !3447)
!3452 = !DILocation(line: 189, column: 52, scope: !3450)
!3453 = distinct !{!3453, !3451, !3454}
!3454 = !DILocation(line: 190, column: 5, scope: !3447)
!3455 = !DILocation(line: 191, column: 3, scope: !3435)
!3456 = !DILocation(line: 192, column: 1, scope: !3435)
!3457 = distinct !DISubprogram(name: "version_etc_va", scope: !476, file: !476, line: 199, type: !3458, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3467)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{null, !3392, !28, !28, !28, !3460}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !476, line: 192, size: 192, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3461, file: !476, line: 192, baseType: !7, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3461, file: !476, line: 192, baseType: !7, size: 32, offset: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3461, file: !476, line: 192, baseType: !83, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3461, file: !476, line: 192, baseType: !83, size: 64, offset: 128)
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474}
!3468 = !DILocalVariable(name: "stream", arg: 1, scope: !3457, file: !476, line: 199, type: !3392)
!3469 = !DILocalVariable(name: "command_name", arg: 2, scope: !3457, file: !476, line: 200, type: !28)
!3470 = !DILocalVariable(name: "package", arg: 3, scope: !3457, file: !476, line: 200, type: !28)
!3471 = !DILocalVariable(name: "version", arg: 4, scope: !3457, file: !476, line: 201, type: !28)
!3472 = !DILocalVariable(name: "authors", arg: 5, scope: !3457, file: !476, line: 201, type: !3460)
!3473 = !DILocalVariable(name: "n_authors", scope: !3457, file: !476, line: 203, type: !85)
!3474 = !DILocalVariable(name: "authtab", scope: !3457, file: !476, line: 204, type: !3475)
!3475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !397)
!3476 = !DILocation(line: 0, scope: !3457)
!3477 = !DILocation(line: 204, column: 3, scope: !3457)
!3478 = !DILocation(line: 204, column: 15, scope: !3457)
!3479 = !DILocation(line: 0, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !476, line: 206, column: 3)
!3481 = distinct !DILexicalBlock(scope: !3457, file: !476, line: 206, column: 3)
!3482 = !DILocation(line: 208, column: 35, scope: !3480)
!3483 = !DILocation(line: 208, column: 14, scope: !3480)
!3484 = !DILocation(line: 208, column: 33, scope: !3480)
!3485 = !DILocation(line: 208, column: 67, scope: !3480)
!3486 = !DILocation(line: 206, column: 3, scope: !3481)
!3487 = !DILocation(line: 0, scope: !3481)
!3488 = !DILocation(line: 211, column: 3, scope: !3457)
!3489 = !DILocation(line: 213, column: 1, scope: !3457)
!3490 = distinct !DISubprogram(name: "version_etc", scope: !476, file: !476, line: 230, type: !3491, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3392, !28, !28, !28, null}
!3493 = !{!3494, !3495, !3496, !3497, !3498}
!3494 = !DILocalVariable(name: "stream", arg: 1, scope: !3490, file: !476, line: 230, type: !3392)
!3495 = !DILocalVariable(name: "command_name", arg: 2, scope: !3490, file: !476, line: 231, type: !28)
!3496 = !DILocalVariable(name: "package", arg: 3, scope: !3490, file: !476, line: 231, type: !28)
!3497 = !DILocalVariable(name: "version", arg: 4, scope: !3490, file: !476, line: 232, type: !28)
!3498 = !DILocalVariable(name: "authors", scope: !3490, file: !476, line: 234, type: !3499)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !33, line: 52, baseType: !3500)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3501, line: 32, baseType: !3502)
!3501 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !476, line: 234, baseType: !3503)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3461, size: 192, elements: !68)
!3504 = !DILocation(line: 0, scope: !3490)
!3505 = !DILocation(line: 234, column: 3, scope: !3490)
!3506 = !DILocation(line: 234, column: 11, scope: !3490)
!3507 = !DILocation(line: 236, column: 3, scope: !3490)
!3508 = !DILocation(line: 237, column: 3, scope: !3490)
!3509 = !DILocation(line: 238, column: 3, scope: !3490)
!3510 = !DILocation(line: 239, column: 1, scope: !3490)
!3511 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !476, file: !476, line: 242, type: !112, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !31)
!3512 = !DILocation(line: 244, column: 3, scope: !3511)
!3513 = !DILocation(line: 249, column: 3, scope: !3511)
!3514 = !DILocation(line: 255, column: 3, scope: !3511)
!3515 = !DILocation(line: 260, column: 3, scope: !3511)
!3516 = !DILocation(line: 262, column: 1, scope: !3511)
!3517 = distinct !DISubprogram(name: "xnmalloc", scope: !142, file: !142, line: 99, type: !3518, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!83, !85, !85}
!3520 = !{!3521, !3522}
!3521 = !DILocalVariable(name: "n", arg: 1, scope: !3517, file: !142, line: 99, type: !85)
!3522 = !DILocalVariable(name: "s", arg: 2, scope: !3517, file: !142, line: 99, type: !85)
!3523 = !DILocation(line: 0, scope: !3517)
!3524 = !DILocation(line: 101, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3517, file: !142, line: 101, column: 7)
!3526 = !DILocation(line: 101, column: 7, scope: !3517)
!3527 = !DILocation(line: 102, column: 5, scope: !3525)
!3528 = !DILocation(line: 103, column: 21, scope: !3517)
!3529 = !DILocalVariable(name: "n", arg: 1, scope: !3530, file: !518, line: 39, type: !85)
!3530 = distinct !DISubprogram(name: "xmalloc", scope: !518, file: !518, line: 39, type: !442, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3531)
!3531 = !{!3529, !3532}
!3532 = !DILocalVariable(name: "p", scope: !3530, file: !518, line: 41, type: !83)
!3533 = !DILocation(line: 0, scope: !3530, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 103, column: 10, scope: !3517)
!3535 = !DILocation(line: 41, column: 13, scope: !3530, inlinedAt: !3534)
!3536 = !DILocation(line: 42, column: 8, scope: !3537, inlinedAt: !3534)
!3537 = distinct !DILexicalBlock(scope: !3530, file: !518, line: 42, column: 7)
!3538 = !DILocation(line: 42, column: 15, scope: !3537, inlinedAt: !3534)
!3539 = !DILocation(line: 42, column: 10, scope: !3537, inlinedAt: !3534)
!3540 = !DILocation(line: 43, column: 5, scope: !3537, inlinedAt: !3534)
!3541 = !DILocation(line: 103, column: 3, scope: !3517)
!3542 = !DILocation(line: 0, scope: !3530)
!3543 = !DILocation(line: 41, column: 13, scope: !3530)
!3544 = !DILocation(line: 42, column: 8, scope: !3537)
!3545 = !DILocation(line: 42, column: 15, scope: !3537)
!3546 = !DILocation(line: 42, column: 10, scope: !3537)
!3547 = !DILocation(line: 43, column: 5, scope: !3537)
!3548 = !DILocation(line: 44, column: 3, scope: !3530)
!3549 = distinct !DISubprogram(name: "xnrealloc", scope: !142, file: !142, line: 112, type: !3550, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!83, !83, !85, !85}
!3552 = !{!3553, !3554, !3555}
!3553 = !DILocalVariable(name: "p", arg: 1, scope: !3549, file: !142, line: 112, type: !83)
!3554 = !DILocalVariable(name: "n", arg: 2, scope: !3549, file: !142, line: 112, type: !85)
!3555 = !DILocalVariable(name: "s", arg: 3, scope: !3549, file: !142, line: 112, type: !85)
!3556 = !DILocation(line: 0, scope: !3549)
!3557 = !DILocation(line: 114, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3549, file: !142, line: 114, column: 7)
!3559 = !DILocation(line: 114, column: 7, scope: !3549)
!3560 = !DILocation(line: 115, column: 5, scope: !3558)
!3561 = !DILocation(line: 116, column: 25, scope: !3549)
!3562 = !DILocalVariable(name: "p", arg: 1, scope: !3563, file: !518, line: 51, type: !83)
!3563 = distinct !DISubprogram(name: "xrealloc", scope: !518, file: !518, line: 51, type: !446, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3564)
!3564 = !{!3562, !3565}
!3565 = !DILocalVariable(name: "n", arg: 2, scope: !3563, file: !518, line: 51, type: !85)
!3566 = !DILocation(line: 0, scope: !3563, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 116, column: 10, scope: !3549)
!3568 = !DILocation(line: 53, column: 8, scope: !3569, inlinedAt: !3567)
!3569 = distinct !DILexicalBlock(scope: !3563, file: !518, line: 53, column: 7)
!3570 = !DILocation(line: 53, column: 13, scope: !3569, inlinedAt: !3567)
!3571 = !DILocation(line: 53, column: 10, scope: !3569, inlinedAt: !3567)
!3572 = !DILocation(line: 57, column: 7, scope: !3573, inlinedAt: !3567)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !518, line: 54, column: 5)
!3574 = !DILocation(line: 58, column: 7, scope: !3573, inlinedAt: !3567)
!3575 = !DILocation(line: 61, column: 7, scope: !3563, inlinedAt: !3567)
!3576 = !DILocation(line: 62, column: 8, scope: !3577, inlinedAt: !3567)
!3577 = distinct !DILexicalBlock(scope: !3563, file: !518, line: 62, column: 7)
!3578 = !DILocation(line: 62, column: 13, scope: !3577, inlinedAt: !3567)
!3579 = !DILocation(line: 62, column: 10, scope: !3577, inlinedAt: !3567)
!3580 = !DILocation(line: 63, column: 5, scope: !3577, inlinedAt: !3567)
!3581 = !DILocation(line: 116, column: 3, scope: !3549)
!3582 = !DILocation(line: 0, scope: !3563)
!3583 = !DILocation(line: 53, column: 8, scope: !3569)
!3584 = !DILocation(line: 53, column: 13, scope: !3569)
!3585 = !DILocation(line: 53, column: 10, scope: !3569)
!3586 = !DILocation(line: 57, column: 7, scope: !3573)
!3587 = !DILocation(line: 58, column: 7, scope: !3573)
!3588 = !DILocation(line: 61, column: 7, scope: !3563)
!3589 = !DILocation(line: 62, column: 8, scope: !3577)
!3590 = !DILocation(line: 62, column: 13, scope: !3577)
!3591 = !DILocation(line: 62, column: 10, scope: !3577)
!3592 = !DILocation(line: 63, column: 5, scope: !3577)
!3593 = !DILocation(line: 65, column: 1, scope: !3563)
!3594 = !DILocation(line: 0, scope: !521)
!3595 = !DILocation(line: 176, column: 14, scope: !521)
!3596 = !DILocation(line: 178, column: 9, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !521, file: !142, line: 178, column: 7)
!3598 = !DILocation(line: 178, column: 7, scope: !521)
!3599 = !DILocation(line: 180, column: 13, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !142, line: 180, column: 11)
!3601 = distinct !DILexicalBlock(scope: !3597, file: !142, line: 179, column: 5)
!3602 = !DILocation(line: 180, column: 11, scope: !3601)
!3603 = !DILocation(line: 188, column: 30, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3600, file: !142, line: 181, column: 9)
!3605 = !DILocation(line: 189, column: 16, scope: !3604)
!3606 = !DILocation(line: 189, column: 13, scope: !3604)
!3607 = !DILocation(line: 190, column: 9, scope: !3604)
!3608 = !DILocation(line: 191, column: 11, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3601, file: !142, line: 191, column: 11)
!3610 = !DILocation(line: 191, column: 11, scope: !3601)
!3611 = !DILocation(line: 206, column: 7, scope: !521)
!3612 = !DILocation(line: 207, column: 25, scope: !521)
!3613 = !DILocation(line: 0, scope: !3563, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 207, column: 10, scope: !521)
!3615 = !DILocation(line: 53, column: 10, scope: !3569, inlinedAt: !3614)
!3616 = !DILocation(line: 192, column: 9, scope: !3609)
!3617 = !DILocation(line: 200, column: 69, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !142, line: 200, column: 11)
!3619 = distinct !DILexicalBlock(scope: !3597, file: !142, line: 195, column: 5)
!3620 = !DILocation(line: 201, column: 11, scope: !3618)
!3621 = !DILocation(line: 200, column: 11, scope: !3619)
!3622 = !DILocation(line: 202, column: 9, scope: !3618)
!3623 = !DILocation(line: 203, column: 14, scope: !3619)
!3624 = !DILocation(line: 203, column: 18, scope: !3619)
!3625 = !DILocation(line: 203, column: 9, scope: !3619)
!3626 = !DILocation(line: 53, column: 8, scope: !3569, inlinedAt: !3614)
!3627 = !DILocation(line: 57, column: 7, scope: !3573, inlinedAt: !3614)
!3628 = !DILocation(line: 58, column: 7, scope: !3573, inlinedAt: !3614)
!3629 = !DILocation(line: 61, column: 7, scope: !3563, inlinedAt: !3614)
!3630 = !DILocation(line: 62, column: 8, scope: !3577, inlinedAt: !3614)
!3631 = !DILocation(line: 62, column: 13, scope: !3577, inlinedAt: !3614)
!3632 = !DILocation(line: 62, column: 10, scope: !3577, inlinedAt: !3614)
!3633 = !DILocation(line: 63, column: 5, scope: !3577, inlinedAt: !3614)
!3634 = !DILocation(line: 207, column: 3, scope: !521)
!3635 = distinct !DISubprogram(name: "xcharalloc", scope: !142, file: !142, line: 216, type: !2804, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3636)
!3636 = !{!3637}
!3637 = !DILocalVariable(name: "n", arg: 1, scope: !3635, file: !142, line: 216, type: !85)
!3638 = !DILocation(line: 0, scope: !3635)
!3639 = !DILocation(line: 0, scope: !3530, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 218, column: 10, scope: !3635)
!3641 = !DILocation(line: 41, column: 13, scope: !3530, inlinedAt: !3640)
!3642 = !DILocation(line: 42, column: 8, scope: !3537, inlinedAt: !3640)
!3643 = !DILocation(line: 42, column: 15, scope: !3537, inlinedAt: !3640)
!3644 = !DILocation(line: 42, column: 10, scope: !3537, inlinedAt: !3640)
!3645 = !DILocation(line: 43, column: 5, scope: !3537, inlinedAt: !3640)
!3646 = !DILocation(line: 218, column: 3, scope: !3635)
!3647 = distinct !DISubprogram(name: "x2realloc", scope: !518, file: !518, line: 74, type: !3648, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3650)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!83, !83, !524}
!3650 = !{!3651, !3652}
!3651 = !DILocalVariable(name: "p", arg: 1, scope: !3647, file: !518, line: 74, type: !83)
!3652 = !DILocalVariable(name: "pn", arg: 2, scope: !3647, file: !518, line: 74, type: !524)
!3653 = !DILocation(line: 0, scope: !3647)
!3654 = !DILocation(line: 0, scope: !521, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 76, column: 10, scope: !3647)
!3656 = !DILocation(line: 176, column: 14, scope: !521, inlinedAt: !3655)
!3657 = !DILocation(line: 178, column: 9, scope: !3597, inlinedAt: !3655)
!3658 = !DILocation(line: 178, column: 7, scope: !521, inlinedAt: !3655)
!3659 = !DILocation(line: 180, column: 13, scope: !3600, inlinedAt: !3655)
!3660 = !DILocation(line: 180, column: 11, scope: !3601, inlinedAt: !3655)
!3661 = !DILocation(line: 191, column: 11, scope: !3609, inlinedAt: !3655)
!3662 = !DILocation(line: 191, column: 11, scope: !3601, inlinedAt: !3655)
!3663 = !DILocation(line: 206, column: 7, scope: !521, inlinedAt: !3655)
!3664 = !DILocation(line: 0, scope: !3563, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 207, column: 10, scope: !521, inlinedAt: !3655)
!3666 = !DILocation(line: 53, column: 10, scope: !3569, inlinedAt: !3665)
!3667 = !DILocation(line: 192, column: 9, scope: !3609, inlinedAt: !3655)
!3668 = !DILocation(line: 201, column: 11, scope: !3618, inlinedAt: !3655)
!3669 = !DILocation(line: 200, column: 11, scope: !3619, inlinedAt: !3655)
!3670 = !DILocation(line: 202, column: 9, scope: !3618, inlinedAt: !3655)
!3671 = !DILocation(line: 203, column: 14, scope: !3619, inlinedAt: !3655)
!3672 = !DILocation(line: 203, column: 18, scope: !3619, inlinedAt: !3655)
!3673 = !DILocation(line: 203, column: 9, scope: !3619, inlinedAt: !3655)
!3674 = !DILocation(line: 53, column: 8, scope: !3569, inlinedAt: !3665)
!3675 = !DILocation(line: 57, column: 7, scope: !3573, inlinedAt: !3665)
!3676 = !DILocation(line: 58, column: 7, scope: !3573, inlinedAt: !3665)
!3677 = !DILocation(line: 61, column: 7, scope: !3563, inlinedAt: !3665)
!3678 = !DILocation(line: 62, column: 8, scope: !3577, inlinedAt: !3665)
!3679 = !DILocation(line: 62, column: 13, scope: !3577, inlinedAt: !3665)
!3680 = !DILocation(line: 62, column: 10, scope: !3577, inlinedAt: !3665)
!3681 = !DILocation(line: 63, column: 5, scope: !3577, inlinedAt: !3665)
!3682 = !DILocation(line: 76, column: 3, scope: !3647)
!3683 = distinct !DISubprogram(name: "xzalloc", scope: !518, file: !518, line: 84, type: !442, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3684)
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "n", arg: 1, scope: !3683, file: !518, line: 84, type: !85)
!3686 = !DILocation(line: 0, scope: !3683)
!3687 = !DILocalVariable(name: "n", arg: 1, scope: !3688, file: !518, line: 93, type: !85)
!3688 = distinct !DISubprogram(name: "xcalloc", scope: !518, file: !518, line: 93, type: !3518, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3689)
!3689 = !{!3687, !3690, !3691}
!3690 = !DILocalVariable(name: "s", arg: 2, scope: !3688, file: !518, line: 93, type: !85)
!3691 = !DILocalVariable(name: "p", scope: !3688, file: !518, line: 95, type: !83)
!3692 = !DILocation(line: 0, scope: !3688, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 86, column: 10, scope: !3683)
!3694 = !DILocation(line: 100, column: 7, scope: !3695, inlinedAt: !3693)
!3695 = distinct !DILexicalBlock(scope: !3688, file: !518, line: 100, column: 7)
!3696 = !DILocation(line: 101, column: 7, scope: !3695, inlinedAt: !3693)
!3697 = !DILocation(line: 101, column: 18, scope: !3695, inlinedAt: !3693)
!3698 = !DILocation(line: 101, column: 16, scope: !3695, inlinedAt: !3693)
!3699 = !DILocation(line: 100, column: 7, scope: !3688, inlinedAt: !3693)
!3700 = !DILocation(line: 102, column: 5, scope: !3695, inlinedAt: !3693)
!3701 = !DILocation(line: 86, column: 3, scope: !3683)
!3702 = !DILocation(line: 0, scope: !3688)
!3703 = !DILocation(line: 100, column: 7, scope: !3695)
!3704 = !DILocation(line: 101, column: 7, scope: !3695)
!3705 = !DILocation(line: 101, column: 18, scope: !3695)
!3706 = !DILocation(line: 101, column: 16, scope: !3695)
!3707 = !DILocation(line: 100, column: 7, scope: !3688)
!3708 = !DILocation(line: 102, column: 5, scope: !3695)
!3709 = !DILocation(line: 103, column: 3, scope: !3688)
!3710 = distinct !DISubprogram(name: "xmemdup", scope: !518, file: !518, line: 111, type: !3711, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!83, !331, !85}
!3713 = !{!3714, !3715}
!3714 = !DILocalVariable(name: "p", arg: 1, scope: !3710, file: !518, line: 111, type: !331)
!3715 = !DILocalVariable(name: "s", arg: 2, scope: !3710, file: !518, line: 111, type: !85)
!3716 = !DILocation(line: 0, scope: !3710)
!3717 = !DILocation(line: 0, scope: !3530, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 113, column: 18, scope: !3710)
!3719 = !DILocation(line: 41, column: 13, scope: !3530, inlinedAt: !3718)
!3720 = !DILocation(line: 42, column: 8, scope: !3537, inlinedAt: !3718)
!3721 = !DILocation(line: 42, column: 15, scope: !3537, inlinedAt: !3718)
!3722 = !DILocation(line: 42, column: 10, scope: !3537, inlinedAt: !3718)
!3723 = !DILocation(line: 43, column: 5, scope: !3537, inlinedAt: !3718)
!3724 = !DILocalVariable(name: "__dest", arg: 1, scope: !3725, file: !1740, line: 31, type: !1743)
!3725 = distinct !DISubprogram(name: "memcpy", scope: !1740, file: !1740, line: 31, type: !1741, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3726)
!3726 = !{!3724, !3727, !3728}
!3727 = !DILocalVariable(name: "__src", arg: 2, scope: !3725, file: !1740, line: 31, type: !1744)
!3728 = !DILocalVariable(name: "__len", arg: 3, scope: !3725, file: !1740, line: 31, type: !85)
!3729 = !DILocation(line: 0, scope: !3725, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 113, column: 10, scope: !3710)
!3731 = !DILocation(line: 34, column: 10, scope: !3725, inlinedAt: !3730)
!3732 = !DILocation(line: 113, column: 3, scope: !3710)
!3733 = distinct !DISubprogram(name: "xstrdup", scope: !518, file: !518, line: 119, type: !105, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3734)
!3734 = !{!3735}
!3735 = !DILocalVariable(name: "string", arg: 1, scope: !3733, file: !518, line: 119, type: !28)
!3736 = !DILocation(line: 0, scope: !3733)
!3737 = !DILocation(line: 121, column: 27, scope: !3733)
!3738 = !DILocation(line: 121, column: 43, scope: !3733)
!3739 = !DILocation(line: 0, scope: !3710, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 121, column: 10, scope: !3733)
!3741 = !DILocation(line: 0, scope: !3530, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 113, column: 18, scope: !3710, inlinedAt: !3740)
!3743 = !DILocation(line: 41, column: 13, scope: !3530, inlinedAt: !3742)
!3744 = !DILocation(line: 42, column: 8, scope: !3537, inlinedAt: !3742)
!3745 = !DILocation(line: 42, column: 15, scope: !3537, inlinedAt: !3742)
!3746 = !DILocation(line: 42, column: 10, scope: !3537, inlinedAt: !3742)
!3747 = !DILocation(line: 43, column: 5, scope: !3537, inlinedAt: !3742)
!3748 = !DILocation(line: 0, scope: !3725, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 113, column: 10, scope: !3710, inlinedAt: !3740)
!3750 = !DILocation(line: 34, column: 10, scope: !3725, inlinedAt: !3749)
!3751 = !DILocation(line: 121, column: 3, scope: !3733)
!3752 = distinct !DISubprogram(name: "xalloc_die", scope: !539, file: !539, line: 32, type: !112, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !538, retainedNodes: !31)
!3753 = !DILocation(line: 34, column: 10, scope: !3752)
!3754 = !DILocation(line: 34, column: 33, scope: !3752)
!3755 = !DILocation(line: 34, column: 3, scope: !3752)
!3756 = !DILocation(line: 40, column: 3, scope: !3752)
!3757 = distinct !DISubprogram(name: "xreadlink", scope: !542, file: !542, line: 38, type: !105, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3758)
!3758 = !{!3759, !3760}
!3759 = !DILocalVariable(name: "filename", arg: 1, scope: !3757, file: !542, line: 38, type: !28)
!3760 = !DILocalVariable(name: "result", scope: !3757, file: !542, line: 40, type: !26)
!3761 = !DILocation(line: 0, scope: !3757)
!3762 = !DILocation(line: 40, column: 18, scope: !3757)
!3763 = !DILocation(line: 41, column: 14, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3757, file: !542, line: 41, column: 7)
!3765 = !DILocation(line: 41, column: 22, scope: !3764)
!3766 = !DILocation(line: 41, column: 25, scope: !3764)
!3767 = !DILocation(line: 41, column: 31, scope: !3764)
!3768 = !DILocation(line: 41, column: 7, scope: !3757)
!3769 = !DILocation(line: 42, column: 5, scope: !3764)
!3770 = !DILocation(line: 43, column: 3, scope: !3757)
!3771 = distinct !DISubprogram(name: "xstrtoumax", scope: !3772, file: !3772, line: 76, type: !3773, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3777)
!3772 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!3775, !28, !153, !30, !3776, !28}
!3775 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !14, line: 38, baseType: !13)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3790, !3791, !3794, !3795}
!3778 = !DILocalVariable(name: "s", arg: 1, scope: !3771, file: !3772, line: 76, type: !28)
!3779 = !DILocalVariable(name: "ptr", arg: 2, scope: !3771, file: !3772, line: 76, type: !153)
!3780 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3771, file: !3772, line: 76, type: !30)
!3781 = !DILocalVariable(name: "val", arg: 4, scope: !3771, file: !3772, line: 77, type: !3776)
!3782 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3771, file: !3772, line: 77, type: !28)
!3783 = !DILocalVariable(name: "t_ptr", scope: !3771, file: !3772, line: 79, type: !26)
!3784 = !DILocalVariable(name: "p", scope: !3771, file: !3772, line: 80, type: !153)
!3785 = !DILocalVariable(name: "tmp", scope: !3771, file: !3772, line: 81, type: !155)
!3786 = !DILocalVariable(name: "err", scope: !3771, file: !3772, line: 82, type: !3775)
!3787 = !DILocalVariable(name: "q", scope: !3788, file: !3772, line: 92, type: !28)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !3772, line: 91, column: 5)
!3789 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 90, column: 7)
!3790 = !DILocalVariable(name: "ch", scope: !3788, file: !3772, line: 93, type: !1957)
!3791 = !DILocalVariable(name: "base", scope: !3792, file: !3772, line: 129, type: !30)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !3772, line: 128, column: 5)
!3793 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 127, column: 7)
!3794 = !DILocalVariable(name: "suffixes", scope: !3792, file: !3772, line: 130, type: !30)
!3795 = !DILocalVariable(name: "overflow", scope: !3792, file: !3772, line: 131, type: !3775)
!3796 = !DILocation(line: 0, scope: !3771)
!3797 = !DILocation(line: 79, column: 3, scope: !3771)
!3798 = !DILocation(line: 84, column: 3, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !3772, line: 84, column: 3)
!3800 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 84, column: 3)
!3801 = !DILocation(line: 86, column: 8, scope: !3771)
!3802 = !DILocation(line: 88, column: 3, scope: !3771)
!3803 = !DILocation(line: 88, column: 9, scope: !3771)
!3804 = !DILocation(line: 0, scope: !3788)
!3805 = !DILocation(line: 94, column: 7, scope: !3788)
!3806 = !DILocation(line: 94, column: 14, scope: !3788)
!3807 = !DILocation(line: 95, column: 15, scope: !3788)
!3808 = distinct !{!3808, !3805, !3809}
!3809 = !DILocation(line: 95, column: 17, scope: !3788)
!3810 = !DILocation(line: 96, column: 14, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3788, file: !3772, line: 96, column: 11)
!3812 = !DILocalVariable(name: "nptr", arg: 1, scope: !3813, file: !3814, line: 336, type: !3817)
!3813 = distinct !DISubprogram(name: "strtoumax", scope: !3814, file: !3814, line: 336, type: !3815, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3819)
!3814 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!155, !3817, !3818, !30}
!3817 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!3818 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !153)
!3819 = !{!3812, !3820, !3821}
!3820 = !DILocalVariable(name: "endptr", arg: 2, scope: !3813, file: !3814, line: 336, type: !3818)
!3821 = !DILocalVariable(name: "base", arg: 3, scope: !3813, file: !3814, line: 336, type: !30)
!3822 = !DILocation(line: 0, scope: !3813, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 100, column: 9, scope: !3771)
!3824 = !DILocation(line: 339, column: 10, scope: !3813, inlinedAt: !3823)
!3825 = !DILocation(line: 102, column: 7, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 102, column: 7)
!3827 = !DILocation(line: 102, column: 10, scope: !3826)
!3828 = !DILocation(line: 102, column: 7, scope: !3771)
!3829 = !DILocation(line: 106, column: 11, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !3772, line: 106, column: 11)
!3831 = distinct !DILexicalBlock(scope: !3826, file: !3772, line: 103, column: 5)
!3832 = !DILocation(line: 106, column: 26, scope: !3830)
!3833 = !DILocation(line: 106, column: 29, scope: !3830)
!3834 = !DILocation(line: 106, column: 33, scope: !3830)
!3835 = !DILocation(line: 106, column: 36, scope: !3830)
!3836 = !DILocation(line: 106, column: 11, scope: !3831)
!3837 = !DILocation(line: 111, column: 12, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3826, file: !3772, line: 111, column: 12)
!3839 = !DILocation(line: 111, column: 12, scope: !3826)
!3840 = !DILocation(line: 116, column: 5, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3838, file: !3772, line: 112, column: 5)
!3842 = !DILocation(line: 121, column: 8, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3771, file: !3772, line: 121, column: 7)
!3844 = !DILocation(line: 121, column: 7, scope: !3771)
!3845 = !DILocation(line: 123, column: 12, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3843, file: !3772, line: 122, column: 5)
!3847 = !DILocation(line: 124, column: 7, scope: !3846)
!3848 = !DILocation(line: 127, column: 7, scope: !3793)
!3849 = !DILocation(line: 127, column: 11, scope: !3793)
!3850 = !DILocation(line: 127, column: 7, scope: !3771)
!3851 = !DILocation(line: 0, scope: !3792)
!3852 = !DILocation(line: 133, column: 12, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3792, file: !3772, line: 133, column: 11)
!3854 = !DILocation(line: 133, column: 11, scope: !3792)
!3855 = !DILocation(line: 135, column: 16, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3853, file: !3772, line: 134, column: 9)
!3857 = !DILocation(line: 136, column: 22, scope: !3856)
!3858 = !DILocation(line: 136, column: 11, scope: !3856)
!3859 = !DILocation(line: 139, column: 7, scope: !3792)
!3860 = !DILocation(line: 151, column: 15, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !3772, line: 151, column: 15)
!3862 = distinct !DILexicalBlock(scope: !3792, file: !3772, line: 140, column: 9)
!3863 = !DILocation(line: 151, column: 15, scope: !3862)
!3864 = !DILocation(line: 152, column: 21, scope: !3861)
!3865 = !DILocation(line: 152, column: 13, scope: !3861)
!3866 = !DILocation(line: 155, column: 21, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3772, line: 155, column: 21)
!3868 = distinct !DILexicalBlock(scope: !3861, file: !3772, line: 153, column: 15)
!3869 = !DILocation(line: 155, column: 29, scope: !3867)
!3870 = !DILocation(line: 155, column: 21, scope: !3868)
!3871 = !DILocation(line: 163, column: 17, scope: !3868)
!3872 = !DILocation(line: 167, column: 7, scope: !3792)
!3873 = !DILocalVariable(name: "err", scope: !3874, file: !3772, line: 67, type: !3775)
!3874 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3772, file: !3772, line: 65, type: !3875, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!3775, !3776, !30, !30}
!3877 = !{!3878, !3879, !3880, !3873}
!3878 = !DILocalVariable(name: "x", arg: 1, scope: !3874, file: !3772, line: 65, type: !3776)
!3879 = !DILocalVariable(name: "base", arg: 2, scope: !3874, file: !3772, line: 65, type: !30)
!3880 = !DILocalVariable(name: "power", arg: 3, scope: !3874, file: !3772, line: 65, type: !30)
!3881 = !DILocation(line: 0, scope: !3874, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 221, column: 22, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3792, file: !3772, line: 168, column: 9)
!3884 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3885, file: !3772, line: 48, type: !30)
!3885 = distinct !DISubprogram(name: "bkm_scale", scope: !3772, file: !3772, line: 48, type: !3886, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!3775, !3776, !30}
!3888 = !{!3889, !3884}
!3889 = !DILocalVariable(name: "x", arg: 1, scope: !3885, file: !3772, line: 48, type: !3776)
!3890 = !DILocation(line: 0, scope: !3885, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 69, column: 12, scope: !3874, inlinedAt: !3882)
!3892 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3891)
!3893 = distinct !DILexicalBlock(scope: !3885, file: !3772, line: 55, column: 7)
!3894 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3891)
!3895 = !DILocation(line: 69, column: 9, scope: !3874, inlinedAt: !3882)
!3896 = !DILocation(line: 229, column: 11, scope: !3792)
!3897 = !DILocation(line: 0, scope: !3874, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 217, column: 22, scope: !3883)
!3899 = !DILocation(line: 0, scope: !3885, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 69, column: 12, scope: !3874, inlinedAt: !3898)
!3901 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3900)
!3902 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3900)
!3903 = !DILocation(line: 69, column: 9, scope: !3874, inlinedAt: !3898)
!3904 = !DILocation(line: 0, scope: !3874, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 204, column: 22, scope: !3883)
!3906 = !DILocation(line: 0, scope: !3885, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 69, column: 12, scope: !3874, inlinedAt: !3905)
!3908 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3907)
!3909 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3907)
!3910 = !DILocation(line: 69, column: 9, scope: !3874, inlinedAt: !3905)
!3911 = !DILocation(line: 0, scope: !3874, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 185, column: 22, scope: !3883)
!3913 = !DILocation(line: 0, scope: !3885, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 69, column: 12, scope: !3874, inlinedAt: !3912)
!3915 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3914)
!3916 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3914)
!3917 = !DILocation(line: 69, column: 9, scope: !3874, inlinedAt: !3912)
!3918 = !DILocation(line: 0, scope: !3885, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 170, column: 22, scope: !3883)
!3920 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3919)
!3921 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3919)
!3922 = !DILocation(line: 171, column: 11, scope: !3883)
!3923 = !DILocation(line: 0, scope: !3885, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 177, column: 22, scope: !3883)
!3925 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3924)
!3926 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3924)
!3927 = !DILocation(line: 178, column: 11, scope: !3883)
!3928 = !DILocation(line: 0, scope: !3874, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 190, column: 22, scope: !3883)
!3930 = !DILocation(line: 0, scope: !3885, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 69, column: 12, scope: !3874, inlinedAt: !3929)
!3932 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3931)
!3933 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3931)
!3934 = !DILocation(line: 69, column: 9, scope: !3874, inlinedAt: !3929)
!3935 = !DILocation(line: 0, scope: !3874, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 195, column: 22, scope: !3883)
!3937 = !DILocation(line: 0, scope: !3885, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 69, column: 12, scope: !3874, inlinedAt: !3936)
!3939 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3938)
!3940 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3938)
!3941 = !DILocation(line: 0, scope: !3874, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 200, column: 22, scope: !3883)
!3943 = !DILocation(line: 0, scope: !3885, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 69, column: 12, scope: !3874, inlinedAt: !3942)
!3945 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3944)
!3946 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3944)
!3947 = !DILocation(line: 69, column: 9, scope: !3874, inlinedAt: !3942)
!3948 = !DILocation(line: 0, scope: !3874, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 209, column: 22, scope: !3883)
!3950 = !DILocation(line: 0, scope: !3885, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 69, column: 12, scope: !3874, inlinedAt: !3949)
!3952 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3951)
!3953 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3951)
!3954 = !DILocation(line: 69, column: 9, scope: !3874, inlinedAt: !3949)
!3955 = !DILocation(line: 0, scope: !3885, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 213, column: 22, scope: !3883)
!3957 = !DILocation(line: 55, column: 39, scope: !3893, inlinedAt: !3956)
!3958 = !DILocation(line: 55, column: 7, scope: !3885, inlinedAt: !3956)
!3959 = !DILocation(line: 214, column: 11, scope: !3883)
!3960 = !DILocation(line: 225, column: 16, scope: !3883)
!3961 = !DILocation(line: 226, column: 22, scope: !3883)
!3962 = !DILocation(line: 226, column: 11, scope: !3883)
!3963 = !DILocation(line: 0, scope: !3883)
!3964 = !DILocation(line: 230, column: 10, scope: !3792)
!3965 = !DILocation(line: 231, column: 11, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3792, file: !3772, line: 231, column: 11)
!3967 = !DILocation(line: 232, column: 13, scope: !3966)
!3968 = !DILocation(line: 231, column: 11, scope: !3792)
!3969 = !DILocation(line: 107, column: 13, scope: !3830)
!3970 = !DILocation(line: 82, column: 16, scope: !3771)
!3971 = !DILocation(line: 235, column: 8, scope: !3771)
!3972 = !DILocation(line: 236, column: 3, scope: !3771)
!3973 = !DILocation(line: 237, column: 1, scope: !3771)
!3974 = distinct !DISubprogram(name: "rpl_calloc", scope: !551, file: !551, line: 42, type: !3518, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3975)
!3975 = !{!3976, !3977, !3978, !3979}
!3976 = !DILocalVariable(name: "n", arg: 1, scope: !3974, file: !551, line: 42, type: !85)
!3977 = !DILocalVariable(name: "s", arg: 2, scope: !3974, file: !551, line: 42, type: !85)
!3978 = !DILocalVariable(name: "result", scope: !3974, file: !551, line: 44, type: !83)
!3979 = !DILocalVariable(name: "bytes", scope: !3980, file: !551, line: 56, type: !85)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !551, line: 53, column: 5)
!3981 = distinct !DILexicalBlock(scope: !3974, file: !551, line: 47, column: 7)
!3982 = !DILocation(line: 0, scope: !3974)
!3983 = !DILocation(line: 47, column: 9, scope: !3981)
!3984 = !DILocation(line: 47, column: 19, scope: !3981)
!3985 = !DILocation(line: 47, column: 14, scope: !3981)
!3986 = !DILocation(line: 0, scope: !3980)
!3987 = !DILocation(line: 57, column: 21, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3980, file: !551, line: 57, column: 11)
!3989 = !DILocation(line: 57, column: 11, scope: !3980)
!3990 = !DILocation(line: 59, column: 11, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3988, file: !551, line: 58, column: 9)
!3992 = !DILocation(line: 59, column: 17, scope: !3991)
!3993 = !DILocation(line: 65, column: 12, scope: !3974)
!3994 = !DILocation(line: 72, column: 3, scope: !3974)
!3995 = !DILocation(line: 73, column: 1, scope: !3974)
!3996 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !554, file: !554, line: 86, type: !3997, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !4003)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!85, !3999, !28, !85, !4000}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2080, line: 6, baseType: !4002)
!4002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !357, line: 21, baseType: !560)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010}
!4004 = !DILocalVariable(name: "pwc", arg: 1, scope: !3996, file: !554, line: 86, type: !3999)
!4005 = !DILocalVariable(name: "s", arg: 2, scope: !3996, file: !554, line: 86, type: !28)
!4006 = !DILocalVariable(name: "n", arg: 3, scope: !3996, file: !554, line: 86, type: !85)
!4007 = !DILocalVariable(name: "ps", arg: 4, scope: !3996, file: !554, line: 86, type: !4000)
!4008 = !DILocalVariable(name: "ret", scope: !3996, file: !554, line: 88, type: !85)
!4009 = !DILocalVariable(name: "wc", scope: !3996, file: !554, line: 89, type: !2084)
!4010 = !DILocalVariable(name: "uc", scope: !4011, file: !554, line: 156, type: !1957)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !554, line: 155, column: 5)
!4012 = distinct !DILexicalBlock(scope: !3996, file: !554, line: 154, column: 7)
!4013 = !DILocation(line: 0, scope: !3996)
!4014 = !DILocation(line: 89, column: 3, scope: !3996)
!4015 = !DILocation(line: 105, column: 9, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3996, file: !554, line: 105, column: 7)
!4017 = !DILocation(line: 105, column: 7, scope: !3996)
!4018 = !DILocation(line: 145, column: 9, scope: !3996)
!4019 = !DILocation(line: 154, column: 19, scope: !4012)
!4020 = !DILocation(line: 154, column: 31, scope: !4012)
!4021 = !DILocation(line: 154, column: 26, scope: !4012)
!4022 = !DILocation(line: 154, column: 41, scope: !4012)
!4023 = !DILocation(line: 154, column: 7, scope: !3996)
!4024 = !DILocation(line: 156, column: 26, scope: !4011)
!4025 = !DILocation(line: 0, scope: !4011)
!4026 = !DILocation(line: 157, column: 14, scope: !4011)
!4027 = !DILocation(line: 157, column: 12, scope: !4011)
!4028 = !DILocation(line: 163, column: 1, scope: !3996)
!4029 = distinct !DISubprogram(name: "areadlink", scope: !573, file: !573, line: 53, type: !105, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4030)
!4030 = !{!4031}
!4031 = !DILocalVariable(name: "filename", arg: 1, scope: !4029, file: !573, line: 53, type: !28)
!4032 = !DILocation(line: 0, scope: !4029)
!4033 = !DILocation(line: 55, column: 10, scope: !4029)
!4034 = !DILocation(line: 55, column: 3, scope: !4029)
!4035 = distinct !DISubprogram(name: "careadlinkatcwd", scope: !573, file: !573, line: 36, type: !4036, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4041)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!4038, !30, !28, !26, !85}
!4038 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !4039, line: 108, baseType: !4040)
!4039 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !60, line: 193, baseType: !61)
!4041 = !{!4042, !4043, !4044, !4045}
!4042 = !DILocalVariable(name: "fd", arg: 1, scope: !4035, file: !573, line: 36, type: !30)
!4043 = !DILocalVariable(name: "filename", arg: 2, scope: !4035, file: !573, line: 36, type: !28)
!4044 = !DILocalVariable(name: "buffer", arg: 3, scope: !4035, file: !573, line: 36, type: !26)
!4045 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !4035, file: !573, line: 37, type: !85)
!4046 = !DILocation(line: 0, scope: !4035)
!4047 = !DILocation(line: 41, column: 10, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4035, file: !573, line: 41, column: 7)
!4049 = !DILocation(line: 41, column: 7, scope: !4035)
!4050 = !DILocation(line: 42, column: 5, scope: !4048)
!4051 = !DILocation(line: 43, column: 10, scope: !4035)
!4052 = !DILocation(line: 43, column: 3, scope: !4035)
!4053 = distinct !DISubprogram(name: "careadlinkat", scope: !586, file: !586, line: 64, type: !4054, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4065)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!26, !30, !28, !26, !85, !4056, !4064}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4058)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !438, line: 27, size: 256, elements: !4059)
!4059 = !{!4060, !4061, !4062, !4063}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !4058, file: !438, line: 37, baseType: !441, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !4058, file: !438, line: 43, baseType: !445, size: 64, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4058, file: !438, line: 46, baseType: !449, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !4058, file: !438, line: 52, baseType: !451, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4079, !4081, !4082, !4085, !4090}
!4066 = !DILocalVariable(name: "fd", arg: 1, scope: !4053, file: !586, line: 64, type: !30)
!4067 = !DILocalVariable(name: "filename", arg: 2, scope: !4053, file: !586, line: 64, type: !28)
!4068 = !DILocalVariable(name: "buffer", arg: 3, scope: !4053, file: !586, line: 65, type: !26)
!4069 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !4053, file: !586, line: 65, type: !85)
!4070 = !DILocalVariable(name: "alloc", arg: 5, scope: !4053, file: !586, line: 66, type: !4056)
!4071 = !DILocalVariable(name: "preadlinkat", arg: 6, scope: !4053, file: !586, line: 67, type: !4064)
!4072 = !DILocalVariable(name: "buf", scope: !4053, file: !586, line: 69, type: !26)
!4073 = !DILocalVariable(name: "buf_size", scope: !4053, file: !586, line: 70, type: !85)
!4074 = !DILocalVariable(name: "buf_size_max", scope: !4053, file: !586, line: 71, type: !85)
!4075 = !DILocalVariable(name: "stack_buf", scope: !4053, file: !586, line: 73, type: !4076)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8192, elements: !4077)
!4077 = !{!4078}
!4078 = !DISubrange(count: 1024)
!4079 = !DILocalVariable(name: "link_length", scope: !4080, file: !586, line: 94, type: !4038)
!4080 = distinct !DILexicalBlock(scope: !4053, file: !586, line: 92, column: 5)
!4081 = !DILocalVariable(name: "link_size", scope: !4080, file: !586, line: 95, type: !85)
!4082 = !DILocalVariable(name: "readlinkat_errno", scope: !4083, file: !586, line: 100, type: !30)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !586, line: 97, column: 9)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !586, line: 96, column: 11)
!4085 = !DILocalVariable(name: "b", scope: !4086, file: !586, line: 120, type: !26)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !586, line: 119, column: 13)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !586, line: 118, column: 15)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !586, line: 115, column: 9)
!4089 = distinct !DILexicalBlock(scope: !4080, file: !586, line: 114, column: 11)
!4090 = !DILocalVariable(name: "b", scope: !4091, file: !586, line: 130, type: !26)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !586, line: 128, column: 13)
!4092 = distinct !DILexicalBlock(scope: !4087, file: !586, line: 127, column: 20)
!4093 = !DILocation(line: 0, scope: !4053)
!4094 = !DILocation(line: 73, column: 3, scope: !4053)
!4095 = !DILocation(line: 73, column: 8, scope: !4053)
!4096 = !DILocation(line: 75, column: 9, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4053, file: !586, line: 75, column: 7)
!4098 = !DILocation(line: 75, column: 7, scope: !4053)
!4099 = !DILocation(line: 78, column: 9, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4053, file: !586, line: 78, column: 7)
!4101 = !DILocation(line: 78, column: 7, scope: !4053)
!4102 = !DILocation(line: 0, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4080, file: !586, line: 138, column: 11)
!4104 = !DILocation(line: 0, scope: !4080)
!4105 = !DILocation(line: 91, column: 3, scope: !4053)
!4106 = !DILocation(line: 94, column: 29, scope: !4080)
!4107 = !DILocation(line: 96, column: 23, scope: !4084)
!4108 = !DILocation(line: 96, column: 11, scope: !4080)
!4109 = !DILocation(line: 100, column: 34, scope: !4083)
!4110 = !DILocation(line: 0, scope: !4083)
!4111 = !DILocation(line: 101, column: 32, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4083, file: !586, line: 101, column: 15)
!4113 = !DILocation(line: 101, column: 15, scope: !4083)
!4114 = !DILocation(line: 103, column: 23, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !586, line: 103, column: 19)
!4116 = distinct !DILexicalBlock(scope: !4112, file: !586, line: 102, column: 13)
!4117 = !DILocation(line: 103, column: 19, scope: !4116)
!4118 = !DILocation(line: 105, column: 26, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4115, file: !586, line: 104, column: 17)
!4120 = !{!4121, !1192, i64 16}
!4121 = !{!"allocator", !1192, i64 0, !1192, i64 8, !1192, i64 16, !1192, i64 24}
!4122 = !DILocation(line: 105, column: 19, scope: !4119)
!4123 = !DILocation(line: 106, column: 25, scope: !4119)
!4124 = !DILocation(line: 107, column: 17, scope: !4119)
!4125 = !DILocation(line: 114, column: 21, scope: !4089)
!4126 = !DILocation(line: 114, column: 11, scope: !4080)
!4127 = !DILocation(line: 116, column: 24, scope: !4088)
!4128 = !DILocation(line: 116, column: 11, scope: !4088)
!4129 = !DILocation(line: 116, column: 28, scope: !4088)
!4130 = !DILocation(line: 118, column: 19, scope: !4087)
!4131 = !DILocation(line: 118, column: 15, scope: !4088)
!4132 = !DILocation(line: 120, column: 41, scope: !4086)
!4133 = !{!4121, !1192, i64 0}
!4134 = !DILocation(line: 120, column: 34, scope: !4086)
!4135 = !DILocation(line: 0, scope: !4086)
!4136 = !DILocation(line: 122, column: 21, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4086, file: !586, line: 122, column: 19)
!4138 = !DILocation(line: 122, column: 19, scope: !4086)
!4139 = !DILocalVariable(name: "__dest", arg: 1, scope: !4140, file: !1740, line: 31, type: !1743)
!4140 = distinct !DISubprogram(name: "memcpy", scope: !1740, file: !1740, line: 31, type: !1741, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4141)
!4141 = !{!4139, !4142, !4143}
!4142 = !DILocalVariable(name: "__src", arg: 2, scope: !4140, file: !1740, line: 31, type: !1744)
!4143 = !DILocalVariable(name: "__len", arg: 3, scope: !4140, file: !1740, line: 31, type: !85)
!4144 = !DILocation(line: 0, scope: !4140, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 124, column: 15, scope: !4086)
!4146 = !DILocation(line: 34, column: 10, scope: !4140, inlinedAt: !4145)
!4147 = !DILocation(line: 127, column: 30, scope: !4092)
!4148 = !DILocation(line: 127, column: 48, scope: !4092)
!4149 = !DILocation(line: 127, column: 41, scope: !4092)
!4150 = !DILocation(line: 127, column: 68, scope: !4092)
!4151 = !{!4121, !1192, i64 8}
!4152 = !DILocation(line: 127, column: 61, scope: !4092)
!4153 = !DILocation(line: 127, column: 20, scope: !4087)
!4154 = !DILocation(line: 130, column: 34, scope: !4091)
!4155 = !DILocation(line: 0, scope: !4091)
!4156 = !DILocation(line: 131, column: 19, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4091, file: !586, line: 131, column: 19)
!4158 = !DILocation(line: 131, column: 19, scope: !4091)
!4159 = !DILocation(line: 133, column: 13, scope: !4091)
!4160 = !DILocation(line: 138, column: 15, scope: !4103)
!4161 = !DILocation(line: 138, column: 11, scope: !4080)
!4162 = !DILocation(line: 139, column: 16, scope: !4103)
!4163 = !DILocation(line: 139, column: 9, scope: !4103)
!4164 = !DILocation(line: 141, column: 20, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4080, file: !586, line: 141, column: 11)
!4166 = !DILocation(line: 141, column: 11, scope: !4080)
!4167 = !DILocation(line: 142, column: 18, scope: !4165)
!4168 = !DILocation(line: 142, column: 9, scope: !4165)
!4169 = !DILocation(line: 143, column: 25, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4165, file: !586, line: 143, column: 16)
!4171 = !DILocation(line: 143, column: 16, scope: !4165)
!4172 = !DILocation(line: 147, column: 11, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !586, line: 146, column: 9)
!4174 = distinct !DILexicalBlock(scope: !4170, file: !586, line: 145, column: 16)
!4175 = !DILocation(line: 147, column: 17, scope: !4173)
!4176 = !DILocation(line: 148, column: 11, scope: !4173)
!4177 = !DILocation(line: 0, scope: !4165)
!4178 = !DILocation(line: 152, column: 29, scope: !4080)
!4179 = !DILocation(line: 152, column: 22, scope: !4080)
!4180 = !DILocation(line: 153, column: 5, scope: !4080)
!4181 = distinct !{!4181, !4105, !4182}
!4182 = !DILocation(line: 154, column: 13, scope: !4053)
!4183 = !DILocation(line: 156, column: 14, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4053, file: !586, line: 156, column: 7)
!4185 = !{!4121, !1192, i64 24}
!4186 = !DILocation(line: 156, column: 7, scope: !4184)
!4187 = !DILocation(line: 156, column: 7, scope: !4053)
!4188 = !DILocation(line: 157, column: 5, scope: !4184)
!4189 = !DILocation(line: 158, column: 3, scope: !4053)
!4190 = !DILocation(line: 158, column: 9, scope: !4053)
!4191 = !DILocation(line: 159, column: 3, scope: !4053)
!4192 = !DILocation(line: 160, column: 1, scope: !4053)
!4193 = distinct !DISubprogram(name: "close_stream", scope: !589, file: !589, line: 56, type: !4194, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4198)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!30, !4196}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3394, line: 7, baseType: !596)
!4198 = !{!4199, !4200, !4202, !4203}
!4199 = !DILocalVariable(name: "stream", arg: 1, scope: !4193, file: !589, line: 56, type: !4196)
!4200 = !DILocalVariable(name: "some_pending", scope: !4193, file: !589, line: 58, type: !4201)
!4201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!4202 = !DILocalVariable(name: "prev_fail", scope: !4193, file: !589, line: 59, type: !4201)
!4203 = !DILocalVariable(name: "fclose_fail", scope: !4193, file: !589, line: 60, type: !4201)
!4204 = !DILocation(line: 0, scope: !4193)
!4205 = !DILocation(line: 58, column: 30, scope: !4193)
!4206 = !DILocalVariable(name: "__stream", arg: 1, scope: !4207, file: !4208, line: 135, type: !4196)
!4207 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4208, file: !4208, line: 135, type: !4194, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4209)
!4208 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4209 = !{!4206}
!4210 = !DILocation(line: 0, scope: !4207, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 59, column: 27, scope: !4193)
!4212 = !DILocation(line: 137, column: 10, scope: !4207, inlinedAt: !4211)
!4213 = !{!4214, !1312, i64 0}
!4214 = !{!"_IO_FILE", !1312, i64 0, !1192, i64 8, !1192, i64 16, !1192, i64 24, !1192, i64 32, !1192, i64 40, !1192, i64 48, !1192, i64 56, !1192, i64 64, !1192, i64 72, !1192, i64 80, !1192, i64 88, !1192, i64 96, !1192, i64 104, !1312, i64 112, !1312, i64 116, !1344, i64 120, !2331, i64 128, !1193, i64 130, !1193, i64 131, !1192, i64 136, !1344, i64 144, !1192, i64 152, !1192, i64 160, !1192, i64 168, !1192, i64 176, !1344, i64 184, !1312, i64 192, !1193, i64 196}
!4215 = !DILocation(line: 59, column: 43, scope: !4193)
!4216 = !DILocation(line: 60, column: 29, scope: !4193)
!4217 = !DILocation(line: 60, column: 45, scope: !4193)
!4218 = !DILocation(line: 70, column: 17, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4193, file: !589, line: 70, column: 7)
!4220 = !DILocation(line: 58, column: 50, scope: !4193)
!4221 = !DILocation(line: 70, column: 33, scope: !4219)
!4222 = !DILocation(line: 70, column: 53, scope: !4219)
!4223 = !DILocation(line: 70, column: 59, scope: !4219)
!4224 = !DILocation(line: 70, column: 7, scope: !4193)
!4225 = !DILocation(line: 72, column: 11, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4219, file: !589, line: 71, column: 5)
!4227 = !DILocation(line: 73, column: 9, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4226, file: !589, line: 72, column: 11)
!4229 = !DILocation(line: 73, column: 15, scope: !4228)
!4230 = !DILocation(line: 78, column: 1, scope: !4193)
!4231 = distinct !DISubprogram(name: "hard_locale", scope: !628, file: !628, line: 27, type: !570, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !4232)
!4232 = !{!4233, !4234}
!4233 = !DILocalVariable(name: "category", arg: 1, scope: !4231, file: !628, line: 27, type: !30)
!4234 = !DILocalVariable(name: "locale", scope: !4231, file: !628, line: 29, type: !4235)
!4235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2056, elements: !4236)
!4236 = !{!4237}
!4237 = !DISubrange(count: 257)
!4238 = !DILocation(line: 0, scope: !4231)
!4239 = !DILocation(line: 29, column: 3, scope: !4231)
!4240 = !DILocation(line: 29, column: 8, scope: !4231)
!4241 = !DILocation(line: 31, column: 7, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4231, file: !628, line: 31, column: 7)
!4243 = !DILocation(line: 31, column: 7, scope: !4231)
!4244 = !DILocation(line: 34, column: 12, scope: !4231)
!4245 = !DILocation(line: 34, column: 38, scope: !4231)
!4246 = !DILocation(line: 34, column: 41, scope: !4231)
!4247 = !DILocation(line: 34, column: 66, scope: !4231)
!4248 = !DILocation(line: 35, column: 1, scope: !4231)
!4249 = distinct !DISubprogram(name: "locale_charset", scope: !635, file: !635, line: 831, type: !380, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !634, retainedNodes: !4250)
!4250 = !{!4251}
!4251 = !DILocalVariable(name: "codeset", scope: !4249, file: !635, line: 833, type: !28)
!4252 = !DILocation(line: 847, column: 13, scope: !4249)
!4253 = !DILocation(line: 0, scope: !4249)
!4254 = !DILocation(line: 911, column: 15, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4249, file: !635, line: 911, column: 7)
!4256 = !DILocation(line: 911, column: 7, scope: !4249)
!4257 = !DILocation(line: 1070, column: 13, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !635, line: 1070, column: 13)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !635, line: 1060, column: 7)
!4260 = distinct !DILexicalBlock(scope: !4249, file: !635, line: 1019, column: 3)
!4261 = !DILocation(line: 1070, column: 24, scope: !4258)
!4262 = !DILocation(line: 1070, column: 13, scope: !4259)
!4263 = !DILocation(line: 1158, column: 3, scope: !4249)
!4264 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1028, file: !1028, line: 269, type: !4265, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4267)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!30, !30, !26, !85}
!4267 = !{!4268, !4269, !4270}
!4268 = !DILocalVariable(name: "category", arg: 1, scope: !4264, file: !1028, line: 269, type: !30)
!4269 = !DILocalVariable(name: "buf", arg: 2, scope: !4264, file: !1028, line: 269, type: !26)
!4270 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4264, file: !1028, line: 269, type: !85)
!4271 = !DILocation(line: 0, scope: !4264)
!4272 = !DILocalVariable(name: "category", arg: 1, scope: !4273, file: !1028, line: 91, type: !30)
!4273 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1028, file: !1028, line: 91, type: !4265, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4274)
!4274 = !{!4272, !4275, !4276, !4277, !4278}
!4275 = !DILocalVariable(name: "buf", arg: 2, scope: !4273, file: !1028, line: 91, type: !26)
!4276 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4273, file: !1028, line: 91, type: !85)
!4277 = !DILocalVariable(name: "result", scope: !4273, file: !1028, line: 140, type: !28)
!4278 = !DILocalVariable(name: "length", scope: !4279, file: !1028, line: 154, type: !85)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !1028, line: 153, column: 5)
!4280 = distinct !DILexicalBlock(scope: !4273, file: !1028, line: 142, column: 7)
!4281 = !DILocation(line: 0, scope: !4273, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 274, column: 10, scope: !4264)
!4283 = !DILocalVariable(name: "category", arg: 1, scope: !4284, file: !1028, line: 60, type: !30)
!4284 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1028, file: !1028, line: 60, type: !4285, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!28, !30}
!4287 = !{!4283, !4288}
!4288 = !DILocalVariable(name: "result", scope: !4284, file: !1028, line: 62, type: !28)
!4289 = !DILocation(line: 0, scope: !4284, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 140, column: 24, scope: !4273, inlinedAt: !4282)
!4291 = !DILocation(line: 62, column: 24, scope: !4284, inlinedAt: !4290)
!4292 = !DILocation(line: 142, column: 14, scope: !4280, inlinedAt: !4282)
!4293 = !DILocation(line: 142, column: 7, scope: !4273, inlinedAt: !4282)
!4294 = !DILocation(line: 145, column: 19, scope: !4295, inlinedAt: !4282)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !1028, line: 145, column: 11)
!4296 = distinct !DILexicalBlock(scope: !4280, file: !1028, line: 143, column: 5)
!4297 = !DILocation(line: 145, column: 11, scope: !4296, inlinedAt: !4282)
!4298 = !DILocation(line: 149, column: 16, scope: !4295, inlinedAt: !4282)
!4299 = !DILocation(line: 149, column: 9, scope: !4295, inlinedAt: !4282)
!4300 = !DILocation(line: 154, column: 23, scope: !4279, inlinedAt: !4282)
!4301 = !DILocation(line: 0, scope: !4279, inlinedAt: !4282)
!4302 = !DILocation(line: 155, column: 18, scope: !4303, inlinedAt: !4282)
!4303 = distinct !DILexicalBlock(scope: !4279, file: !1028, line: 155, column: 11)
!4304 = !DILocation(line: 155, column: 11, scope: !4279, inlinedAt: !4282)
!4305 = !DILocation(line: 157, column: 39, scope: !4306, inlinedAt: !4282)
!4306 = distinct !DILexicalBlock(scope: !4303, file: !1028, line: 156, column: 9)
!4307 = !DILocalVariable(name: "__dest", arg: 1, scope: !4308, file: !1740, line: 31, type: !1743)
!4308 = distinct !DISubprogram(name: "memcpy", scope: !1740, file: !1740, line: 31, type: !1741, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4309)
!4309 = !{!4307, !4310, !4311}
!4310 = !DILocalVariable(name: "__src", arg: 2, scope: !4308, file: !1740, line: 31, type: !1744)
!4311 = !DILocalVariable(name: "__len", arg: 3, scope: !4308, file: !1740, line: 31, type: !85)
!4312 = !DILocation(line: 0, scope: !4308, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 157, column: 11, scope: !4306, inlinedAt: !4282)
!4314 = !DILocation(line: 34, column: 10, scope: !4308, inlinedAt: !4313)
!4315 = !DILocation(line: 158, column: 11, scope: !4306, inlinedAt: !4282)
!4316 = !DILocation(line: 162, column: 23, scope: !4317, inlinedAt: !4282)
!4317 = distinct !DILexicalBlock(scope: !4318, file: !1028, line: 162, column: 15)
!4318 = distinct !DILexicalBlock(scope: !4303, file: !1028, line: 161, column: 9)
!4319 = !DILocation(line: 162, column: 15, scope: !4318, inlinedAt: !4282)
!4320 = !DILocation(line: 167, column: 44, scope: !4321, inlinedAt: !4282)
!4321 = distinct !DILexicalBlock(scope: !4317, file: !1028, line: 163, column: 13)
!4322 = !DILocation(line: 0, scope: !4308, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 167, column: 15, scope: !4321, inlinedAt: !4282)
!4324 = !DILocation(line: 34, column: 10, scope: !4308, inlinedAt: !4323)
!4325 = !DILocation(line: 168, column: 15, scope: !4321, inlinedAt: !4282)
!4326 = !DILocation(line: 168, column: 32, scope: !4321, inlinedAt: !4282)
!4327 = !DILocation(line: 169, column: 13, scope: !4321, inlinedAt: !4282)
!4328 = !DILocation(line: 0, scope: !4280, inlinedAt: !4282)
!4329 = !DILocation(line: 274, column: 3, scope: !4264)
!4330 = distinct !DISubprogram(name: "setlocale_null", scope: !1028, file: !1028, line: 301, type: !4285, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4331)
!4331 = !{!4332}
!4332 = !DILocalVariable(name: "category", arg: 1, scope: !4330, file: !1028, line: 301, type: !30)
!4333 = !DILocation(line: 0, scope: !4330)
!4334 = !DILocation(line: 0, scope: !4284, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 304, column: 10, scope: !4330)
!4336 = !DILocation(line: 62, column: 24, scope: !4284, inlinedAt: !4335)
!4337 = !DILocation(line: 304, column: 3, scope: !4330)
!4338 = distinct !DISubprogram(name: "rpl_fclose", scope: !1031, file: !1031, line: 58, type: !4339, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4343)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!30, !4341}
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3394, line: 7, baseType: !1037)
!4343 = !{!4344, !4345, !4346, !4347}
!4344 = !DILocalVariable(name: "fp", arg: 1, scope: !4338, file: !1031, line: 58, type: !4341)
!4345 = !DILocalVariable(name: "saved_errno", scope: !4338, file: !1031, line: 60, type: !30)
!4346 = !DILocalVariable(name: "fd", scope: !4338, file: !1031, line: 61, type: !30)
!4347 = !DILocalVariable(name: "result", scope: !4338, file: !1031, line: 62, type: !30)
!4348 = !DILocation(line: 0, scope: !4338)
!4349 = !DILocation(line: 65, column: 8, scope: !4338)
!4350 = !DILocation(line: 66, column: 10, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4338, file: !1031, line: 66, column: 7)
!4352 = !DILocation(line: 66, column: 7, scope: !4338)
!4353 = !DILocation(line: 67, column: 12, scope: !4351)
!4354 = !DILocation(line: 67, column: 5, scope: !4351)
!4355 = !DILocation(line: 72, column: 9, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4338, file: !1031, line: 72, column: 7)
!4357 = !DILocation(line: 72, column: 23, scope: !4356)
!4358 = !DILocation(line: 72, column: 33, scope: !4356)
!4359 = !DILocation(line: 72, column: 26, scope: !4356)
!4360 = !DILocation(line: 72, column: 59, scope: !4356)
!4361 = !DILocation(line: 73, column: 7, scope: !4356)
!4362 = !DILocation(line: 73, column: 10, scope: !4356)
!4363 = !DILocation(line: 72, column: 7, scope: !4338)
!4364 = !DILocation(line: 100, column: 12, scope: !4338)
!4365 = !DILocation(line: 105, column: 7, scope: !4338)
!4366 = !DILocation(line: 74, column: 19, scope: !4356)
!4367 = !DILocation(line: 105, column: 19, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4338, file: !1031, line: 105, column: 7)
!4369 = !DILocation(line: 107, column: 13, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4368, file: !1031, line: 106, column: 5)
!4371 = !DILocation(line: 109, column: 5, scope: !4370)
!4372 = !DILocation(line: 112, column: 1, scope: !4338)
!4373 = distinct !DISubprogram(name: "rpl_fflush", scope: !1074, file: !1074, line: 129, type: !4374, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4378)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!30, !4376}
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3394, line: 7, baseType: !1080)
!4378 = !{!4379}
!4379 = !DILocalVariable(name: "stream", arg: 1, scope: !4373, file: !1074, line: 129, type: !4376)
!4380 = !DILocation(line: 0, scope: !4373)
!4381 = !DILocation(line: 150, column: 14, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4373, file: !1074, line: 150, column: 7)
!4383 = !DILocation(line: 150, column: 22, scope: !4382)
!4384 = !DILocation(line: 150, column: 27, scope: !4382)
!4385 = !DILocation(line: 150, column: 7, scope: !4373)
!4386 = !DILocation(line: 151, column: 12, scope: !4382)
!4387 = !DILocation(line: 151, column: 5, scope: !4382)
!4388 = !DILocalVariable(name: "fp", arg: 1, scope: !4389, file: !1074, line: 41, type: !4376)
!4389 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1074, file: !1074, line: 41, type: !4390, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !4376}
!4392 = !{!4388}
!4393 = !DILocation(line: 0, scope: !4389, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 156, column: 3, scope: !4373)
!4395 = !DILocation(line: 43, column: 11, scope: !4396, inlinedAt: !4394)
!4396 = distinct !DILexicalBlock(scope: !4389, file: !1074, line: 43, column: 7)
!4397 = !DILocation(line: 43, column: 18, scope: !4396, inlinedAt: !4394)
!4398 = !DILocation(line: 43, column: 7, scope: !4389, inlinedAt: !4394)
!4399 = !DILocation(line: 45, column: 5, scope: !4396, inlinedAt: !4394)
!4400 = !DILocation(line: 158, column: 10, scope: !4373)
!4401 = !DILocation(line: 158, column: 3, scope: !4373)
!4402 = !DILocation(line: 235, column: 1, scope: !4373)
!4403 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1115, file: !1115, line: 28, type: !4404, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1114, retainedNodes: !4409)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!30, !4406, !4408, !30}
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3394, line: 7, baseType: !1121)
!4408 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !33, line: 63, baseType: !59)
!4409 = !{!4410, !4411, !4412, !4413}
!4410 = !DILocalVariable(name: "fp", arg: 1, scope: !4403, file: !1115, line: 28, type: !4406)
!4411 = !DILocalVariable(name: "offset", arg: 2, scope: !4403, file: !1115, line: 28, type: !4408)
!4412 = !DILocalVariable(name: "whence", arg: 3, scope: !4403, file: !1115, line: 28, type: !30)
!4413 = !DILocalVariable(name: "pos", scope: !4414, file: !1115, line: 117, type: !4408)
!4414 = distinct !DILexicalBlock(scope: !4415, file: !1115, line: 113, column: 5)
!4415 = distinct !DILexicalBlock(scope: !4403, file: !1115, line: 52, column: 7)
!4416 = !DILocation(line: 0, scope: !4403)
!4417 = !DILocation(line: 52, column: 11, scope: !4415)
!4418 = !{!4214, !1192, i64 16}
!4419 = !DILocation(line: 52, column: 31, scope: !4415)
!4420 = !{!4214, !1192, i64 8}
!4421 = !DILocation(line: 52, column: 24, scope: !4415)
!4422 = !DILocation(line: 53, column: 7, scope: !4415)
!4423 = !DILocation(line: 53, column: 14, scope: !4415)
!4424 = !{!4214, !1192, i64 40}
!4425 = !DILocation(line: 53, column: 35, scope: !4415)
!4426 = !{!4214, !1192, i64 32}
!4427 = !DILocation(line: 53, column: 28, scope: !4415)
!4428 = !DILocation(line: 54, column: 7, scope: !4415)
!4429 = !DILocation(line: 54, column: 14, scope: !4415)
!4430 = !{!4214, !1192, i64 72}
!4431 = !DILocation(line: 54, column: 28, scope: !4415)
!4432 = !DILocation(line: 52, column: 7, scope: !4403)
!4433 = !DILocation(line: 117, column: 26, scope: !4414)
!4434 = !DILocation(line: 117, column: 19, scope: !4414)
!4435 = !DILocation(line: 0, scope: !4414)
!4436 = !DILocation(line: 118, column: 15, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4414, file: !1115, line: 118, column: 11)
!4438 = !DILocation(line: 118, column: 11, scope: !4414)
!4439 = !DILocation(line: 129, column: 11, scope: !4414)
!4440 = !DILocation(line: 129, column: 18, scope: !4414)
!4441 = !DILocation(line: 130, column: 11, scope: !4414)
!4442 = !DILocation(line: 130, column: 19, scope: !4414)
!4443 = !{!4214, !1344, i64 144}
!4444 = !DILocation(line: 161, column: 7, scope: !4414)
!4445 = !DILocation(line: 163, column: 10, scope: !4403)
!4446 = !DILocation(line: 163, column: 3, scope: !4403)
!4447 = !DILocation(line: 164, column: 1, scope: !4403)
