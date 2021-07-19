; ModuleID = 'coreutils-8.32/src/seq.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.operand = type { x86_fp80, i64, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"Usage: %s [OPTION]... LAST\0A  or:  %s [OPTION]... FIRST LAST\0A  or:  %s [OPTION]... FIRST INCREMENT LAST\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Print numbers from FIRST to LAST, in steps of INCREMENT.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [212 x i8] c"  -f, --format=FORMAT      use printf style floating-point FORMAT\0A  -s, --separator=STRING   use STRING to separate numbers (default: \\n)\0A  -w, --equal-width        equalize width by padding with leading zeroes\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [513 x i8] c"\0AIf FIRST or INCREMENT is omitted, it defaults to 1.  That is, an\0Aomitted INCREMENT defaults to 1 even when LAST is smaller than FIRST.\0AThe sequence of numbers ends when the sum of the current number and\0AINCREMENT would become greater than LAST.\0AFIRST, INCREMENT, and LAST are interpreted as floating point values.\0AINCREMENT is usually positive if FIRST is smaller than LAST, and\0AINCREMENT is usually negative if FIRST is greater than LAST.\0AINCREMENT must not be 0; none of FIRST, INCREMENT and LAST may be NaN.\0A\00", align 1
@.str.7 = private unnamed_addr constant [208 x i8] c"FORMAT must be suitable for printing one argument of type 'double';\0Ait defaults to %.PRECf if FIRST, INCREMENT, and LAST are all fixed point\0Adecimal numbers with maximum precision PREC, and to %g otherwise.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.35 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@__const.main.step = private unnamed_addr constant %struct.operand { x86_fp80 0xK3FFF8000000000000000, i64 1, i32 0 }, align 16
@locale_ok = internal unnamed_addr global i8 0, align 1, !dbg !0
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@equal_width = internal unnamed_addr global i1 false, align 1, !dbg !88
@.str.12 = private constant [2 x i8] c"\0A\00", align 1, !dbg !53
@separator = internal unnamed_addr global i8* null, align 8, !dbg !37
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"+f:s:w\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !39
@optarg = external local_unnamed_addr global i8*, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"format %s has no %% directive\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"-+#0 '\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"format %s ends in %%\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"efgaEFGA\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"format %s has unknown %%%c directive\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"format %s has too many %% directives\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"format string may not be specified when printing equal width strings\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"invalid Zero increment value: %s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%0.Lf\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@get_default_format.format_buf = internal global [28 x i8] zeroinitializer, align 16, !dbg !58
@.str.57 = private unnamed_addr constant [11 x i8] c"%%0%d.%dLf\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"%%.%dLf\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%Lg\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"invalid floating point argument: %s\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"invalid %s argument: %s\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"not-a-number\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"equal-width\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !89
@.str.61 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !95
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !100
@.str.66 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.67 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !102
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !108
@.str.75 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.77 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.87, i32 0, i32 0), i8* null], align 16, !dbg !114
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !140
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !146
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !158
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.91 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.92 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.93 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.94 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !165
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !172
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !160
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !174
@.str.101 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.119 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.120 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.121 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.122 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.123 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.124 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.125 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !180
@.str.1.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !188
@.str.148 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.153 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.157 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !660 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !664, metadata !DIExpression()), !dbg !665
  %3 = icmp eq i32 %0, 0, !dbg !666
  br i1 %3, label %9, label %4, !dbg !668

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !669, !tbaa !671
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !669
  %7 = load i8*, i8** @program_name, align 8, !dbg !669, !tbaa !671
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !669
  br label %70, !dbg !669

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !675
  %11 = load i8*, i8** @program_name, align 8, !dbg !675, !tbaa !671
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11, i8* %11) #27, !dbg !675
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !677
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !677, !tbaa !671
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !677
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0), i32 5) #27, !dbg !678
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !678, !tbaa !671
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #27, !dbg !678
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !684
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !671
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !684
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !685
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !671
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !685
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !686
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !671
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !686
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !687
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !671
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !687
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.7, i64 0, i64 0), i32 5) #27, !dbg !688
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !671
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !688
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !689, metadata !DIExpression()) #27, !dbg !707
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !709
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #27, !dbg !709
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !694, metadata !DIExpression()) #27, !dbg !710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !710
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !703, metadata !DIExpression()) #27, !dbg !707
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !704, metadata !DIExpression()) #27, !dbg !707
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !711
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !704, metadata !DIExpression()) #27, !dbg !707
  br label %36, !dbg !712

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !704, metadata !DIExpression()) #27, !dbg !707
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %37) #28, !dbg !713
  %40 = icmp eq i32 %39, 0, !dbg !713
  br i1 %40, label %46, label %41, !dbg !712

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !714
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !704, metadata !DIExpression()) #27, !dbg !707
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !715
  %44 = load i8*, i8** %43, align 8, !dbg !715, !tbaa !716
  %45 = icmp eq i8* %44, null, !dbg !718
  br i1 %45, label %46, label %36, !dbg !719, !llvm.loop !720

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %38, %36 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !722
  %49 = load i8*, i8** %48, align 8, !dbg !722, !tbaa !724
  %50 = icmp eq i8* %49, null, !dbg !725
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %49, !dbg !726
  call void @llvm.dbg.value(metadata i8* %51, metadata !703, metadata !DIExpression()) #27, !dbg !707
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #27, !dbg !727
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0)) #27, !dbg !727
  %54 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !728
  call void @llvm.dbg.value(metadata i8* %54, metadata !706, metadata !DIExpression()) #27, !dbg !707
  %55 = icmp eq i8* %54, null, !dbg !729
  br i1 %55, label %63, label %56, !dbg !731

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i64 3) #28, !dbg !732
  %58 = icmp eq i32 %57, 0, !dbg !732
  br i1 %58, label %63, label %59, !dbg !733

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.35, i64 0, i64 0), i32 5) #27, !dbg !734
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !671
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #27, !dbg !734
  br label %63, !dbg !736

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i32 5) #27, !dbg !737
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #27, !dbg !737
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0), i32 5) #27, !dbg !738
  %67 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), !dbg !738
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !738
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #27, !dbg !738
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #27, !dbg !739
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #29, !dbg !740
  unreachable, !dbg !740
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !741 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !745 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !801 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !805 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.operand, align 16
  %7 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata [6 x i8]* %7, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !832
  %8 = alloca %struct.operand, align 16
  %9 = alloca %struct.operand, align 16
  %10 = alloca %struct.operand, align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !810, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i8** %1, metadata !811, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !833
  call void @llvm.dbg.value(metadata i64 1, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !833
  call void @llvm.dbg.value(metadata i32 0, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !833
  call void @llvm.dbg.value(metadata i32 0, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !833
  %13 = bitcast %struct.operand* %6 to i8*, !dbg !834
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #27, !dbg !834
  call void @llvm.dbg.declare(metadata %struct.operand* %6, metadata !814, metadata !DIExpression()), !dbg !835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(32) %13, i8* nonnull align 16 dereferenceable(32) bitcast (%struct.operand* @__const.main.step to i8*), i64 32, i1 false), !dbg !835
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0, !dbg !836
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %14), !dbg !836
  call void @llvm.dbg.value(metadata i64 0, metadata !816, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !833
  call void @llvm.dbg.value(metadata i64 0, metadata !816, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !833
  call void @llvm.dbg.value(metadata i8* null, metadata !821, metadata !DIExpression()), !dbg !833
  %15 = load i8*, i8** %1, align 8, !dbg !837, !tbaa !671
  tail call void @set_program_name(i8* %15) #27, !dbg !838
  %16 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #27, !dbg !839
  %17 = icmp ne i8* %16, null, !dbg !840
  %18 = zext i1 %17 to i8, !dbg !841
  store i8 %18, i8* @locale_ok, align 1, !dbg !841, !tbaa !842
  %19 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #27, !dbg !844
  %20 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #27, !dbg !845
  %21 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !846
  store i1 false, i1* @equal_width, align 1, !dbg !847
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** @separator, align 8, !dbg !848, !tbaa !671
  call void @llvm.dbg.value(metadata i8* null, metadata !821, metadata !DIExpression()), !dbg !833
  %22 = load i32, i32* @optind, align 4, !dbg !849, !tbaa !850
  %23 = icmp slt i32 %22, %0, !dbg !852
  br i1 %23, label %24, label %58, !dbg !853

24:                                               ; preds = %2, %54
  %25 = phi i32 [ %56, %54 ], [ %22, %2 ]
  %26 = phi i8* [ %55, %54 ], [ null, %2 ]
  call void @llvm.dbg.value(metadata i8* %26, metadata !821, metadata !DIExpression()), !dbg !833
  %27 = sext i32 %25 to i64, !dbg !854
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !854
  %29 = load i8*, i8** %28, align 8, !dbg !854, !tbaa !671
  %30 = load i8, i8* %29, align 1, !dbg !854, !tbaa !857
  %31 = icmp eq i8 %30, 45, !dbg !858
  br i1 %31, label %32, label %40, !dbg !859

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !860
  %34 = load i8, i8* %33, align 1, !dbg !860, !tbaa !857
  call void @llvm.dbg.value(metadata i8 %34, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !833
  %35 = icmp eq i8 %34, 46, !dbg !861
  br i1 %35, label %58, label %36, !dbg !862

36:                                               ; preds = %32
  %37 = sext i8 %34 to i32, !dbg !860
  call void @llvm.dbg.value(metadata i32 %37, metadata !812, metadata !DIExpression()), !dbg !833
  %38 = add nsw i32 %37, -48, !dbg !863
  %39 = icmp ult i32 %38, 10, !dbg !863
  br i1 %39, label %58, label %40, !dbg !864

40:                                               ; preds = %36, %24
  %41 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #27, !dbg !865
  call void @llvm.dbg.value(metadata i32 %41, metadata !812, metadata !DIExpression()), !dbg !833
  switch i32 %41, label %53 [
    i32 -1, label %42
    i32 102, label %44
    i32 115, label %46
    i32 119, label %48
    i32 -130, label %49
    i32 -131, label %50
  ], !dbg !866

42:                                               ; preds = %40
  %43 = load i32, i32* @optind, align 4, !dbg !867, !tbaa !850
  br label %58, !dbg !866

44:                                               ; preds = %40
  %45 = load i8*, i8** @optarg, align 8, !dbg !868, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %45, metadata !821, metadata !DIExpression()), !dbg !833
  br label %54, !dbg !870

46:                                               ; preds = %40
  %47 = load i8*, i8** @optarg, align 8, !dbg !871, !tbaa !671
  store i8* %47, i8** @separator, align 8, !dbg !872, !tbaa !671
  br label %54, !dbg !873

48:                                               ; preds = %40
  store i1 true, i1* @equal_width, align 1, !dbg !874
  br label %54, !dbg !875

49:                                               ; preds = %40
  tail call void @usage(i32 0) #30, !dbg !876
  unreachable, !dbg !876

50:                                               ; preds = %40
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !877, !tbaa !671
  %52 = load i8*, i8** @Version, align 8, !dbg !877, !tbaa !671
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* null) #27, !dbg !877
  tail call void @exit(i32 0) #29, !dbg !877
  unreachable, !dbg !877

53:                                               ; preds = %40
  tail call void @usage(i32 1) #30, !dbg !878
  unreachable, !dbg !878

54:                                               ; preds = %48, %46, %44
  %55 = phi i8* [ %26, %48 ], [ %26, %46 ], [ %45, %44 ], !dbg !833
  call void @llvm.dbg.value(metadata i8* %55, metadata !821, metadata !DIExpression()), !dbg !833
  %56 = load i32, i32* @optind, align 4, !dbg !849, !tbaa !850
  %57 = icmp slt i32 %56, %0, !dbg !852
  br i1 %57, label %24, label %58, !dbg !853, !llvm.loop !879

58:                                               ; preds = %54, %36, %32, %42, %2
  %59 = phi i32 [ %22, %2 ], [ %43, %42 ], [ %56, %54 ], [ %25, %36 ], [ %25, %32 ], !dbg !867
  %60 = phi i8* [ null, %2 ], [ %26, %42 ], [ %55, %54 ], [ %26, %36 ], [ %26, %32 ], !dbg !881
  %61 = sub nsw i32 %0, %59, !dbg !882
  call void @llvm.dbg.value(metadata i32 %61, metadata !822, metadata !DIExpression()), !dbg !833
  %62 = icmp eq i32 %61, 0, !dbg !883
  br i1 %62, label %63, label %65, !dbg !885

63:                                               ; preds = %58
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #27, !dbg !886
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64) #27, !dbg !888
  tail call void @usage(i32 1) #30, !dbg !889
  unreachable, !dbg !889

65:                                               ; preds = %58
  %66 = icmp ugt i32 %61, 3, !dbg !890
  br i1 %66, label %67, label %75, !dbg !892

67:                                               ; preds = %65
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #27, !dbg !893
  %69 = load i32, i32* @optind, align 4, !dbg !895, !tbaa !850
  %70 = add nsw i32 %69, 3, !dbg !896
  %71 = sext i32 %70 to i64, !dbg !897
  %72 = getelementptr inbounds i8*, i8** %1, i64 %71, !dbg !897
  %73 = load i8*, i8** %72, align 8, !dbg !897, !tbaa !671
  %74 = tail call i8* @quote(i8* %73) #27, !dbg !898
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %68, i8* %74) #27, !dbg !899
  tail call void @usage(i32 1) #30, !dbg !900
  unreachable, !dbg !900

75:                                               ; preds = %65
  %76 = icmp eq i8* %60, null, !dbg !901
  br i1 %76, label %163, label %77, !dbg !903

77:                                               ; preds = %75, %90
  %78 = phi i64 [ %92, %90 ], [ 0, %75 ], !dbg !904
  %79 = phi i64 [ %93, %90 ], [ 0, %75 ], !dbg !925
  call void @llvm.dbg.value(metadata i64 %79, metadata !912, metadata !DIExpression()) #27, !dbg !904
  call void @llvm.dbg.value(metadata i64 %78, metadata !913, metadata !DIExpression()) #27, !dbg !904
  %80 = getelementptr inbounds i8, i8* %60, i64 %79, !dbg !927
  %81 = load i8, i8* %80, align 1, !dbg !927, !tbaa !857
  switch i8 %81, label %90 [
    i8 37, label %82
    i8 0, label %87
  ], !dbg !929

82:                                               ; preds = %77
  %83 = add i64 %79, 1, !dbg !930
  %84 = getelementptr inbounds i8, i8* %60, i64 %83, !dbg !931
  %85 = load i8, i8* %84, align 1, !dbg !931, !tbaa !857
  %86 = icmp eq i8 %85, 37, !dbg !932
  br i1 %86, label %90, label %94, !dbg !933

87:                                               ; preds = %77
  %88 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0), i32 5) #27, !dbg !934
  %89 = tail call i8* @quote(i8* nonnull %60) #27, !dbg !934
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %88, i8* %89) #27, !dbg !934
  unreachable, !dbg !934

90:                                               ; preds = %82, %77
  %91 = phi i64 [ 2, %82 ], [ 1, %77 ], !dbg !937
  %92 = add i64 %78, 1, !dbg !937
  call void @llvm.dbg.value(metadata i64 %92, metadata !913, metadata !DIExpression()) #27, !dbg !904
  %93 = add i64 %91, %79, !dbg !938
  call void @llvm.dbg.value(metadata i64 %93, metadata !912, metadata !DIExpression()) #27, !dbg !904
  br label %77, !dbg !939, !llvm.loop !940

94:                                               ; preds = %82
  %95 = getelementptr inbounds i8, i8* %60, i64 %83, !dbg !931
  call void @llvm.dbg.value(metadata i64 %83, metadata !912, metadata !DIExpression()) #27, !dbg !904
  %96 = tail call i64 @strspn(i8* nonnull %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)) #28, !dbg !942
  %97 = add i64 %96, %83, !dbg !943
  call void @llvm.dbg.value(metadata i64 %97, metadata !912, metadata !DIExpression()) #27, !dbg !904
  %98 = getelementptr inbounds i8, i8* %60, i64 %97, !dbg !944
  %99 = tail call i64 @strspn(i8* nonnull %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !945
  %100 = add i64 %97, %99, !dbg !946
  call void @llvm.dbg.value(metadata i64 %100, metadata !912, metadata !DIExpression()) #27, !dbg !904
  %101 = getelementptr inbounds i8, i8* %60, i64 %100, !dbg !947
  %102 = load i8, i8* %101, align 1, !dbg !947, !tbaa !857
  %103 = icmp eq i8 %102, 46, !dbg !949
  br i1 %103, label %104, label %111, !dbg !950

104:                                              ; preds = %94
  %105 = add i64 %100, 1, !dbg !951
  call void @llvm.dbg.value(metadata i64 %105, metadata !912, metadata !DIExpression()) #27, !dbg !904
  %106 = getelementptr inbounds i8, i8* %60, i64 %105, !dbg !953
  %107 = tail call i64 @strspn(i8* nonnull %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !954
  %108 = add i64 %107, %105, !dbg !955
  call void @llvm.dbg.value(metadata i64 %108, metadata !912, metadata !DIExpression()) #27, !dbg !904
  %109 = getelementptr inbounds i8, i8* %60, i64 %108
  %110 = load i8, i8* %109, align 1, !dbg !956, !tbaa !857
  br label %111, !dbg !957

111:                                              ; preds = %104, %94
  %112 = phi i8 [ %110, %104 ], [ %102, %94 ], !dbg !956
  %113 = phi i64 [ %108, %104 ], [ %100, %94 ], !dbg !904
  call void @llvm.dbg.value(metadata i64 %113, metadata !912, metadata !DIExpression()) #27, !dbg !904
  call void @llvm.dbg.value(metadata i64 %113, metadata !915, metadata !DIExpression()) #27, !dbg !904
  %114 = icmp eq i8 %112, 76, !dbg !958
  call void @llvm.dbg.value(metadata i1 %114, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !904
  %115 = zext i1 %114 to i64, !dbg !959
  %116 = add i64 %113, %115, !dbg !960
  call void @llvm.dbg.value(metadata i64 %116, metadata !912, metadata !DIExpression()) #27, !dbg !904
  %117 = getelementptr inbounds i8, i8* %60, i64 %116, !dbg !961
  %118 = load i8, i8* %117, align 1, !dbg !961, !tbaa !857
  %119 = icmp eq i8 %118, 0, !dbg !963
  br i1 %119, label %120, label %123, !dbg !964

120:                                              ; preds = %111
  %121 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #27, !dbg !965
  %122 = tail call i8* @quote(i8* nonnull %60) #27, !dbg !965
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %121, i8* %122) #27, !dbg !965
  unreachable, !dbg !965

123:                                              ; preds = %111
  %124 = sext i8 %118 to i32, !dbg !961
  %125 = tail call i8* @memchr(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i32 %124, i64 9) #27, !dbg !966
  %126 = icmp eq i8* %125, null, !dbg !966
  br i1 %126, label %127, label %132, !dbg !968

127:                                              ; preds = %123
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0), i32 5) #27, !dbg !969
  %129 = tail call i8* @quote(i8* nonnull %60) #27, !dbg !969
  %130 = load i8, i8* %117, align 1, !dbg !969, !tbaa !857
  %131 = sext i8 %130 to i32, !dbg !969
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %128, i8* %129, i32 %131) #27, !dbg !969
  unreachable, !dbg !969

132:                                              ; preds = %123
  %133 = add i64 %116, 1, !dbg !970
  call void @llvm.dbg.value(metadata i64 %133, metadata !912, metadata !DIExpression()) #27, !dbg !904
  br label %134, !dbg !971

134:                                              ; preds = %147, %132
  %135 = phi i64 [ 0, %132 ], [ %149, %147 ], !dbg !904
  %136 = phi i64 [ %133, %132 ], [ %150, %147 ], !dbg !972
  call void @llvm.dbg.value(metadata i64 %136, metadata !912, metadata !DIExpression()) #27, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !914, metadata !DIExpression()) #27, !dbg !904
  %137 = getelementptr inbounds i8, i8* %60, i64 %136, !dbg !973
  %138 = load i8, i8* %137, align 1, !dbg !973, !tbaa !857
  switch i8 %138, label %147 [
    i8 37, label %139
    i8 0, label %151
  ], !dbg !974

139:                                              ; preds = %134
  %140 = add i64 %136, 1, !dbg !975
  %141 = getelementptr inbounds i8, i8* %60, i64 %140, !dbg !976
  %142 = load i8, i8* %141, align 1, !dbg !976, !tbaa !857
  %143 = icmp eq i8 %142, 37, !dbg !977
  br i1 %143, label %147, label %144, !dbg !978

144:                                              ; preds = %139
  %145 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0), i32 5) #27, !dbg !979
  %146 = tail call i8* @quote(i8* nonnull %60) #27, !dbg !979
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %145, i8* %146) #27, !dbg !979
  unreachable, !dbg !979

147:                                              ; preds = %139, %134
  %148 = phi i64 [ 2, %139 ], [ 1, %134 ], !dbg !980
  %149 = add i64 %135, 1, !dbg !980
  call void @llvm.dbg.value(metadata i64 %149, metadata !914, metadata !DIExpression()) #27, !dbg !904
  %150 = add i64 %148, %136, !dbg !981
  call void @llvm.dbg.value(metadata i64 %150, metadata !912, metadata !DIExpression()) #27, !dbg !904
  br label %134, !dbg !982, !llvm.loop !983

151:                                              ; preds = %134
  %152 = getelementptr inbounds i8, i8* %60, i64 %113, !dbg !956
  call void @llvm.dbg.value(metadata i64 %136, metadata !917, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #27, !dbg !986
  %153 = add i64 %136, 2, !dbg !987
  %154 = tail call noalias i8* @xmalloc(i64 %153) #27, !dbg !988
  call void @llvm.dbg.value(metadata i8* %154, metadata !923, metadata !DIExpression()) #27, !dbg !986
  call void @llvm.dbg.value(metadata i8* %154, metadata !989, metadata !DIExpression()) #27, !dbg !1001
  call void @llvm.dbg.value(metadata i8* %60, metadata !999, metadata !DIExpression()) #27, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %113, metadata !1000, metadata !DIExpression()) #27, !dbg !1001
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %154, i8* nonnull align 1 %60, i64 %113, i1 false) #27, !dbg !1003
  %155 = getelementptr inbounds i8, i8* %154, i64 %113, !dbg !1004
  store i8 76, i8* %155, align 1, !dbg !1005, !tbaa !857
  %156 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !1006
  %157 = getelementptr inbounds i8, i8* %152, i64 %115, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %156, metadata !1008, metadata !DIExpression()) #27, !dbg !1016
  call void @llvm.dbg.value(metadata i8* %157, metadata !1015, metadata !DIExpression()) #27, !dbg !1016
  %158 = call i8* @strcpy(i8* nonnull dereferenceable(1) %156, i8* nonnull dereferenceable(1) %157), !dbg !1018
  call void @llvm.dbg.value(metadata i64 undef, metadata !816, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !833
  call void @llvm.dbg.value(metadata i64 undef, metadata !816, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !833
  call void @llvm.dbg.value(metadata i8* undef, metadata !821, metadata !DIExpression()), !dbg !833
  %159 = icmp ne i8* %154, null, !dbg !1019
  %160 = load i1, i1* @equal_width, align 1, !dbg !1021
  br i1 %160, label %161, label %163, !dbg !1022

161:                                              ; preds = %151
  %162 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i64 0, i64 0), i32 5) #27, !dbg !1023
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %162) #27, !dbg !1025
  tail call void @usage(i32 1) #30, !dbg !1026
  unreachable, !dbg !1026

163:                                              ; preds = %75, %151
  %164 = phi i1 [ %159, %151 ], [ false, %75 ]
  %165 = phi i8* [ %154, %151 ], [ null, %75 ]
  %166 = phi i64 [ %135, %151 ], [ 0, %75 ]
  %167 = phi i64 [ %78, %151 ], [ 0, %75 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !823, metadata !DIExpression()), !dbg !833
  %168 = icmp eq i32 %61, 3, !dbg !1027
  br i1 %168, label %169, label %191, !dbg !1029

169:                                              ; preds = %163
  %170 = load i32, i32* @optind, align 4, !dbg !1030, !tbaa !850
  %171 = add nsw i32 %170, 1, !dbg !1031
  %172 = sext i32 %171 to i64, !dbg !1032
  %173 = getelementptr inbounds i8*, i8** %1, i64 %172, !dbg !1032
  %174 = load i8*, i8** %173, align 8, !dbg !1032, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %174, metadata !1033, metadata !DIExpression()) #27, !dbg !1039
  call void @llvm.dbg.value(metadata i64 undef, metadata !1038, metadata !DIExpression()) #27, !dbg !1039
  %175 = load i8, i8* %174, align 1, !dbg !1041, !tbaa !857
  %176 = sext i8 %175 to i32, !dbg !1041
  %177 = add nsw i32 %176, -48, !dbg !1041
  %178 = icmp ult i32 %177, 10, !dbg !1041
  br i1 %178, label %179, label %193, !dbg !1042

179:                                              ; preds = %169
  %180 = tail call i64 @strlen(i8* nonnull %174) #28, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %180, metadata !1038, metadata !DIExpression()) #27, !dbg !1039
  %181 = tail call i64 @strspn(i8* nonnull %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !1044
  %182 = icmp eq i64 %180, %181, !dbg !1045
  br i1 %182, label %183, label %193, !dbg !1046

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1047
  %185 = call zeroext i1 @xstrtold(i8* nonnull %174, i8** null, x86_fp80* nonnull %184, x86_fp80 (i8*, i8**)* nonnull @cl_strtold) #27, !dbg !1048
  %186 = load x86_fp80, x86_fp80* %184, align 16
  %187 = fcmp ogt x86_fp80 %186, 0xK00000000000000000000
  %188 = and i1 %185, %187, !dbg !1049
  %189 = fcmp ole x86_fp80 %186, 0xK4006C800000000000000
  %190 = and i1 %189, %188, !dbg !1049
  br i1 %190, label %191, label %193, !dbg !1049

191:                                              ; preds = %183, %163
  %192 = phi x86_fp80 [ %186, %183 ], [ 0xK3FFF8000000000000000, %163 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !823, metadata !DIExpression()), !dbg !833
  br label %193, !dbg !1050

193:                                              ; preds = %169, %191, %183, %179
  %194 = phi x86_fp80 [ %192, %191 ], [ %186, %183 ], [ 0xK3FFF8000000000000000, %179 ], [ 0xK3FFF8000000000000000, %169 ]
  %195 = phi i1 [ true, %191 ], [ false, %183 ], [ false, %179 ], [ false, %169 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !823, metadata !DIExpression()), !dbg !833
  %196 = load i32, i32* @optind, align 4, !dbg !1051, !tbaa !850
  %197 = sext i32 %196 to i64, !dbg !1052
  %198 = getelementptr inbounds i8*, i8** %1, i64 %197, !dbg !1052
  %199 = load i8*, i8** %198, align 8, !dbg !1052, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %199, metadata !1033, metadata !DIExpression()) #27, !dbg !1053
  call void @llvm.dbg.value(metadata i64 undef, metadata !1038, metadata !DIExpression()) #27, !dbg !1053
  %200 = load i8, i8* %199, align 1, !dbg !1055, !tbaa !857
  %201 = sext i8 %200 to i32, !dbg !1055
  %202 = add nsw i32 %201, -48, !dbg !1055
  %203 = icmp ult i32 %202, 10, !dbg !1055
  br i1 %203, label %204, label %260, !dbg !1056

204:                                              ; preds = %193
  %205 = call i64 @strlen(i8* nonnull %199) #28, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %205, metadata !1038, metadata !DIExpression()) #27, !dbg !1053
  %206 = call i64 @strspn(i8* nonnull %199, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !1058
  %207 = icmp eq i64 %205, %206, !dbg !1059
  br i1 %207, label %208, label %260, !dbg !1060

208:                                              ; preds = %204
  %209 = icmp eq i32 %61, 1, !dbg !1061
  br i1 %209, label %239, label %210, !dbg !1062

210:                                              ; preds = %208
  %211 = add nsw i32 %196, 1, !dbg !1063
  %212 = sext i32 %211 to i64, !dbg !1064
  %213 = getelementptr inbounds i8*, i8** %1, i64 %212, !dbg !1064
  %214 = load i8*, i8** %213, align 8, !dbg !1064, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %214, metadata !1033, metadata !DIExpression()) #27, !dbg !1065
  call void @llvm.dbg.value(metadata i64 undef, metadata !1038, metadata !DIExpression()) #27, !dbg !1065
  %215 = load i8, i8* %214, align 1, !dbg !1067, !tbaa !857
  %216 = sext i8 %215 to i32, !dbg !1067
  %217 = add nsw i32 %216, -48, !dbg !1067
  %218 = icmp ult i32 %217, 10, !dbg !1067
  br i1 %218, label %219, label %260, !dbg !1068

219:                                              ; preds = %210
  %220 = call i64 @strlen(i8* nonnull %214) #28, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %220, metadata !1038, metadata !DIExpression()) #27, !dbg !1065
  %221 = call i64 @strspn(i8* nonnull %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !1070
  %222 = icmp eq i64 %220, %221, !dbg !1071
  br i1 %222, label %223, label %260, !dbg !1072

223:                                              ; preds = %219
  %224 = icmp ult i32 %61, 3, !dbg !1073
  br i1 %224, label %239, label %225, !dbg !1074

225:                                              ; preds = %223
  br i1 %195, label %226, label %260, !dbg !1075

226:                                              ; preds = %225
  %227 = add nsw i32 %196, 2, !dbg !1076
  %228 = sext i32 %227 to i64, !dbg !1077
  %229 = getelementptr inbounds i8*, i8** %1, i64 %228, !dbg !1077
  %230 = load i8*, i8** %229, align 8, !dbg !1077, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %230, metadata !1033, metadata !DIExpression()) #27, !dbg !1078
  call void @llvm.dbg.value(metadata i64 undef, metadata !1038, metadata !DIExpression()) #27, !dbg !1078
  %231 = load i8, i8* %230, align 1, !dbg !1080, !tbaa !857
  %232 = sext i8 %231 to i32, !dbg !1080
  %233 = add nsw i32 %232, -48, !dbg !1080
  %234 = icmp ult i32 %233, 10, !dbg !1080
  br i1 %234, label %235, label %260, !dbg !1081

235:                                              ; preds = %226
  %236 = call i64 @strlen(i8* nonnull %230) #28, !dbg !1082
  call void @llvm.dbg.value(metadata i64 %236, metadata !1038, metadata !DIExpression()) #27, !dbg !1078
  %237 = call i64 @strspn(i8* nonnull %230, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !1083
  %238 = icmp eq i64 %236, %237, !dbg !1084
  br i1 %238, label %239, label %260, !dbg !1085

239:                                              ; preds = %208, %235, %223
  %240 = load i1, i1* @equal_width, align 1, !dbg !1086
  %241 = or i1 %164, %240, !dbg !1087
  br i1 %241, label %260, label %242, !dbg !1087

242:                                              ; preds = %239
  %243 = load i8*, i8** @separator, align 8, !dbg !1088, !tbaa !671
  %244 = call i64 @strlen(i8* nonnull dereferenceable(1) %243) #28, !dbg !1089
  %245 = icmp eq i64 %244, 1, !dbg !1090
  br i1 %245, label %246, label %260, !dbg !1091

246:                                              ; preds = %242
  %247 = select i1 %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %199, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %247, metadata !824, metadata !DIExpression()), !dbg !1093
  %248 = add i32 %61, -1, !dbg !1094
  %249 = add i32 %248, %196, !dbg !1095
  %250 = zext i32 %249 to i64, !dbg !1096
  %251 = getelementptr inbounds i8*, i8** %1, i64 %250, !dbg !1096
  %252 = load i8*, i8** %251, align 8, !dbg !1096, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %252, metadata !827, metadata !DIExpression()), !dbg !1093
  %253 = fptoui x86_fp80 %194 to i64, !dbg !1097
  %254 = call fastcc zeroext i1 @seq_fast(i8* nonnull %247, i8* %252, i64 %253), !dbg !1099
  br i1 %254, label %521, label %255

255:                                              ; preds = %246
  %256 = load i32, i32* @optind, align 4, !dbg !1100, !tbaa !850
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %1, i64 %257
  %259 = load i8*, i8** %258, align 8, !dbg !1101, !tbaa !671
  br label %260

260:                                              ; preds = %255, %226, %210, %193, %242, %239, %235, %225, %219, %204
  %261 = phi i8* [ %259, %255 ], [ %199, %226 ], [ %199, %210 ], [ %199, %193 ], [ %199, %242 ], [ %199, %239 ], [ %199, %235 ], [ %199, %225 ], [ %199, %219 ], [ %199, %204 ], !dbg !1101
  %262 = phi i32 [ %256, %255 ], [ %196, %226 ], [ %196, %210 ], [ %196, %193 ], [ %196, %242 ], [ %196, %239 ], [ %196, %235 ], [ %196, %225 ], [ %196, %219 ], [ %196, %204 ], !dbg !1100
  %263 = bitcast %struct.operand* %8 to i8*, !dbg !1102
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %263) #27, !dbg !1102
  %264 = add nsw i32 %262, 1, !dbg !1100
  store i32 %264, i32* @optind, align 4, !dbg !1100, !tbaa !850
  call fastcc void @scan_arg(%struct.operand* nonnull sret(%struct.operand) align 16 %8, i8* %261), !dbg !1102
  %265 = getelementptr inbounds %struct.operand, %struct.operand* %8, i64 0, i32 0, !dbg !1102
  %266 = load x86_fp80, x86_fp80* %265, align 16, !dbg !1102, !tbaa.struct !1103
  call void @llvm.dbg.value(metadata x86_fp80 %266, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !833
  %267 = getelementptr inbounds %struct.operand, %struct.operand* %8, i64 0, i32 1, !dbg !1102
  %268 = load i64, i64* %267, align 16, !dbg !1102, !tbaa.struct !1108
  call void @llvm.dbg.value(metadata i64 %268, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !833
  %269 = getelementptr inbounds %struct.operand, %struct.operand* %8, i64 0, i32 2, !dbg !1102
  %270 = load i32, i32* %269, align 8, !dbg !1102, !tbaa.struct !1109
  call void @llvm.dbg.value(metadata i32 %270, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !833
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !833
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %263) #27, !dbg !1102
  %271 = load i32, i32* @optind, align 4, !dbg !1110, !tbaa !850
  %272 = icmp slt i32 %271, %0, !dbg !1112
  br i1 %272, label %273, label %325, !dbg !1113

273:                                              ; preds = %260
  call void @llvm.dbg.value(metadata x86_fp80 %266, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !833
  call void @llvm.dbg.value(metadata i64 %268, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !833
  call void @llvm.dbg.value(metadata i32 %270, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !833
  call void @llvm.dbg.value(metadata i32 undef, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !833
  %274 = bitcast %struct.operand* %9 to i8*, !dbg !1114
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %274) #27, !dbg !1114
  %275 = add nsw i32 %271, 1, !dbg !1116
  store i32 %275, i32* @optind, align 4, !dbg !1116, !tbaa !850
  %276 = sext i32 %271 to i64, !dbg !1117
  %277 = getelementptr inbounds i8*, i8** %1, i64 %276, !dbg !1117
  %278 = load i8*, i8** %277, align 8, !dbg !1117, !tbaa !671
  call fastcc void @scan_arg(%struct.operand* nonnull sret(%struct.operand) align 16 %9, i8* %278), !dbg !1114
  %279 = getelementptr inbounds %struct.operand, %struct.operand* %9, i64 0, i32 0, !dbg !1114
  %280 = load x86_fp80, x86_fp80* %279, align 16, !dbg !1114, !tbaa.struct !1103
  call void @llvm.dbg.value(metadata x86_fp80 %280, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !833
  %281 = getelementptr inbounds i8, i8* %274, i64 10, !dbg !1114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 dereferenceable(6) %14, i8* nonnull align 2 dereferenceable(6) %281, i64 6, i1 false), !dbg !1114, !tbaa.struct !1118
  %282 = getelementptr inbounds %struct.operand, %struct.operand* %9, i64 0, i32 1, !dbg !1114
  %283 = load i64, i64* %282, align 16, !dbg !1114, !tbaa.struct !1108
  call void @llvm.dbg.value(metadata i64 %283, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !833
  %284 = getelementptr inbounds %struct.operand, %struct.operand* %9, i64 0, i32 2, !dbg !1114
  %285 = load i32, i32* %284, align 8, !dbg !1114, !tbaa.struct !1109
  call void @llvm.dbg.value(metadata i32 %285, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !833
  %286 = getelementptr inbounds i8, i8* %274, i64 28, !dbg !1114
  %287 = bitcast i8* %286 to i32*, !dbg !1114
  %288 = load i32, i32* %287, align 4, !dbg !1114, !tbaa.struct !93
  call void @llvm.dbg.value(metadata i32 %288, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !833
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %274) #27, !dbg !1114
  %289 = load i32, i32* @optind, align 4, !dbg !1119, !tbaa !850
  %290 = icmp slt i32 %289, %0, !dbg !1121
  br i1 %290, label %291, label %320, !dbg !1122

291:                                              ; preds = %273
  %292 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1123
  store x86_fp80 %280, x86_fp80* %292, align 16, !dbg !1123, !tbaa.struct !1103
  %293 = getelementptr inbounds i8, i8* %13, i64 10, !dbg !1123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 dereferenceable(6) %293, i8* nonnull align 2 dereferenceable(6) %14, i64 6, i1 false), !dbg !1123, !tbaa.struct !1118
  %294 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 1, !dbg !1123
  store i64 %283, i64* %294, align 16, !dbg !1123, !tbaa.struct !1108
  %295 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 2, !dbg !1123
  store i32 %285, i32* %295, align 8, !dbg !1123, !tbaa.struct !1109
  %296 = getelementptr inbounds i8, i8* %13, i64 28, !dbg !1123
  %297 = bitcast i8* %296 to i32*, !dbg !1123
  store i32 %288, i32* %297, align 4, !dbg !1123, !tbaa.struct !93
  %298 = fcmp oeq x86_fp80 %280, 0xK00000000000000000000, !dbg !1125
  br i1 %298, label %299, label %307, !dbg !1127

299:                                              ; preds = %291
  %300 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #27, !dbg !1128
  %301 = load i32, i32* @optind, align 4, !dbg !1130, !tbaa !850
  %302 = add nsw i32 %301, -1, !dbg !1131
  %303 = sext i32 %302 to i64, !dbg !1132
  %304 = getelementptr inbounds i8*, i8** %1, i64 %303, !dbg !1132
  %305 = load i8*, i8** %304, align 8, !dbg !1132, !tbaa !671
  %306 = call i8* @quote(i8* %305) #27, !dbg !1133
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %300, i8* %306) #27, !dbg !1134
  call void @usage(i32 1) #30, !dbg !1135
  unreachable, !dbg !1135

307:                                              ; preds = %291
  %308 = bitcast %struct.operand* %10 to i8*, !dbg !1136
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %308) #27, !dbg !1136
  %309 = add nsw i32 %289, 1, !dbg !1137
  store i32 %309, i32* @optind, align 4, !dbg !1137, !tbaa !850
  %310 = sext i32 %289 to i64, !dbg !1138
  %311 = getelementptr inbounds i8*, i8** %1, i64 %310, !dbg !1138
  %312 = load i8*, i8** %311, align 8, !dbg !1138, !tbaa !671
  call fastcc void @scan_arg(%struct.operand* nonnull sret(%struct.operand) align 16 %10, i8* %312), !dbg !1136
  %313 = getelementptr inbounds %struct.operand, %struct.operand* %10, i64 0, i32 0, !dbg !1136
  %314 = load x86_fp80, x86_fp80* %313, align 16, !dbg !1136, !tbaa.struct !1103
  call void @llvm.dbg.value(metadata x86_fp80 %314, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !833
  %315 = getelementptr inbounds i8, i8* %308, i64 10, !dbg !1136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 dereferenceable(6) %14, i8* nonnull align 2 dereferenceable(6) %315, i64 6, i1 false), !dbg !1136, !tbaa.struct !1118
  %316 = getelementptr inbounds %struct.operand, %struct.operand* %10, i64 0, i32 1, !dbg !1136
  %317 = load i64, i64* %316, align 16, !dbg !1136, !tbaa.struct !1108
  call void @llvm.dbg.value(metadata i64 %317, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !833
  %318 = getelementptr inbounds %struct.operand, %struct.operand* %10, i64 0, i32 2, !dbg !1136
  %319 = load i32, i32* %318, align 8, !dbg !1136, !tbaa.struct !1109
  call void @llvm.dbg.value(metadata i32 %319, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !833
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !833
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %308) #27, !dbg !1136
  br label %320, !dbg !1139

320:                                              ; preds = %273, %307
  %321 = phi i64 [ %317, %307 ], [ %283, %273 ], !dbg !833
  %322 = phi i32 [ %319, %307 ], [ %285, %273 ], !dbg !833
  %323 = phi x86_fp80 [ %314, %307 ], [ %280, %273 ], !dbg !833
  call void @llvm.dbg.value(metadata x86_fp80 %323, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !833
  call void @llvm.dbg.value(metadata i32 %322, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !833
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !833
  call void @llvm.dbg.value(metadata x86_fp80 %266, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !833
  call void @llvm.dbg.value(metadata i32 %270, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !833
  call void @llvm.dbg.value(metadata i32 undef, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !833
  call void @llvm.dbg.value(metadata i64 %321, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !833
  call void @llvm.dbg.value(metadata i64 %268, metadata !813, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !833
  %324 = icmp eq i32 %270, 0, !dbg !1140
  br i1 %324, label %325, label %388, !dbg !1141

325:                                              ; preds = %260, %320
  %326 = phi x86_fp80 [ %323, %320 ], [ %266, %260 ]
  %327 = phi i32 [ %322, %320 ], [ %270, %260 ]
  %328 = phi x86_fp80 [ %266, %320 ], [ 0xK3FFF8000000000000000, %260 ]
  %329 = phi i64 [ %321, %320 ], [ %268, %260 ]
  %330 = phi i64 [ %268, %320 ], [ 1, %260 ]
  %331 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 2, !dbg !1142
  %332 = load i32, i32* %331, align 8, !dbg !1142, !tbaa !1143
  %333 = or i32 %332, %327, !dbg !1145
  %334 = icmp eq i32 %333, 0, !dbg !1145
  br i1 %334, label %335, label %388, !dbg !1145

335:                                              ; preds = %325
  %336 = fmul x86_fp80 %328, 0xK00000000000000000000, !dbg !1146
  %337 = fcmp une x86_fp80 %336, 0xK00000000000000000000, !dbg !1146
  %338 = fcmp ult x86_fp80 %328, 0xK00000000000000000000
  %339 = or i1 %338, %337, !dbg !1147
  %340 = fcmp ult x86_fp80 %326, 0xK00000000000000000000
  %341 = or i1 %340, %339, !dbg !1147
  br i1 %341, label %388, label %342, !dbg !1147

342:                                              ; preds = %335
  %343 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1148
  %344 = load x86_fp80, x86_fp80* %343, align 16, !dbg !1148, !tbaa !1149
  %345 = fcmp ule x86_fp80 %344, 0xK00000000000000000000, !dbg !1150
  %346 = fcmp ugt x86_fp80 %344, 0xK4006C800000000000000
  %347 = or i1 %345, %346, !dbg !1151
  %348 = load i1, i1* @equal_width, align 1
  %349 = or i1 %164, %348
  %350 = or i1 %347, %349, !dbg !1151
  br i1 %350, label %388, label %351, !dbg !1151

351:                                              ; preds = %342
  %352 = load i8*, i8** @separator, align 8, !dbg !1152, !tbaa !671
  %353 = call i64 @strlen(i8* nonnull dereferenceable(1) %352) #28, !dbg !1153
  %354 = icmp eq i64 %353, 1, !dbg !1154
  br i1 %354, label %355, label %388, !dbg !1155

355:                                              ; preds = %351
  %356 = bitcast i8** %11 to i8*, !dbg !1156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %356) #27, !dbg !1156
  %357 = bitcast i8** %12 to i8*, !dbg !1157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %357) #27, !dbg !1157
  call void @llvm.dbg.value(metadata i8** %11, metadata !828, metadata !DIExpression(DW_OP_deref)), !dbg !1158
  %358 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %11, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %328) #27, !dbg !1159
  %359 = icmp slt i32 %358, 0, !dbg !1161
  br i1 %359, label %360, label %361, !dbg !1162

360:                                              ; preds = %355
  call void @xalloc_die() #29, !dbg !1163
  unreachable, !dbg !1163

361:                                              ; preds = %355
  %362 = fmul x86_fp80 %326, 0xK00000000000000000000, !dbg !1164
  %363 = fcmp oeq x86_fp80 %362, 0xK00000000000000000000, !dbg !1164
  br i1 %363, label %366, label %364, !dbg !1166

364:                                              ; preds = %361
  %365 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #27, !dbg !1167
  call void @llvm.dbg.value(metadata i8* %365, metadata !831, metadata !DIExpression()), !dbg !1158
  store i8* %365, i8** %12, align 8, !dbg !1168, !tbaa !671
  br label %370, !dbg !1169

366:                                              ; preds = %361
  call void @llvm.dbg.value(metadata i8** %12, metadata !831, metadata !DIExpression(DW_OP_deref)), !dbg !1158
  %367 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %12, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %326) #27, !dbg !1170
  %368 = icmp slt i32 %367, 0, !dbg !1172
  br i1 %368, label %369, label %370, !dbg !1173

369:                                              ; preds = %366
  call void @xalloc_die() #29, !dbg !1174
  unreachable, !dbg !1174

370:                                              ; preds = %366, %364
  %371 = load i8*, i8** %11, align 8, !dbg !1175, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %371, metadata !828, metadata !DIExpression()), !dbg !1158
  %372 = load i8, i8* %371, align 1, !dbg !1177, !tbaa !857
  %373 = icmp eq i8 %372, 45, !dbg !1178
  br i1 %373, label %384, label %374, !dbg !1179

374:                                              ; preds = %370
  %375 = load i8*, i8** %12, align 8, !dbg !1180, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %375, metadata !831, metadata !DIExpression()), !dbg !1158
  %376 = load i8, i8* %375, align 1, !dbg !1181, !tbaa !857
  %377 = icmp eq i8 %376, 45, !dbg !1182
  br i1 %377, label %384, label %378, !dbg !1183

378:                                              ; preds = %374
  %379 = load x86_fp80, x86_fp80* %343, align 16, !dbg !1184, !tbaa !1149
  %380 = fptoui x86_fp80 %379 to i64, !dbg !1185
  %381 = call fastcc zeroext i1 @seq_fast(i8* nonnull %371, i8* nonnull %375, i64 %380), !dbg !1186
  br i1 %381, label %387, label %382, !dbg !1187

382:                                              ; preds = %378
  %383 = load i8*, i8** %11, align 8, !dbg !1188, !tbaa !671
  br label %384, !dbg !1187

384:                                              ; preds = %382, %374, %370
  %385 = phi i8* [ %383, %382 ], [ %371, %374 ], [ %371, %370 ], !dbg !1188
  call void @llvm.dbg.value(metadata i8* %385, metadata !828, metadata !DIExpression()), !dbg !1158
  call void @free(i8* %385) #27, !dbg !1189
  %386 = load i8*, i8** %12, align 8, !dbg !1190, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %386, metadata !831, metadata !DIExpression()), !dbg !1158
  call void @free(i8* %386) #27, !dbg !1191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %357) #27, !dbg !1192
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %356) #27, !dbg !1192
  br label %388

387:                                              ; preds = %378
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %357) #27, !dbg !1192
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %356) #27, !dbg !1192
  br label %521

388:                                              ; preds = %384, %351, %342, %335, %325, %320
  %389 = phi i1 [ true, %384 ], [ true, %351 ], [ true, %342 ], [ true, %335 ], [ true, %325 ], [ false, %320 ]
  %390 = phi x86_fp80 [ %326, %384 ], [ %326, %351 ], [ %326, %342 ], [ %326, %335 ], [ %326, %325 ], [ %323, %320 ]
  %391 = phi i32 [ 0, %384 ], [ 0, %351 ], [ 0, %342 ], [ 0, %335 ], [ %327, %325 ], [ %322, %320 ]
  %392 = phi x86_fp80 [ %328, %384 ], [ %328, %351 ], [ %328, %342 ], [ %328, %335 ], [ %328, %325 ], [ %266, %320 ]
  %393 = phi i32 [ 0, %384 ], [ 0, %351 ], [ 0, %342 ], [ 0, %335 ], [ 0, %325 ], [ %270, %320 ]
  %394 = phi i64 [ %329, %384 ], [ %329, %351 ], [ %329, %342 ], [ %329, %335 ], [ %329, %325 ], [ %321, %320 ]
  %395 = phi i64 [ %330, %384 ], [ %330, %351 ], [ %330, %342 ], [ %330, %335 ], [ %330, %325 ], [ %268, %320 ]
  %396 = icmp eq i8* %165, null, !dbg !1193
  br i1 %396, label %397, label %435, !dbg !1195

397:                                              ; preds = %388
  call void @llvm.dbg.value(metadata x86_fp80 %323, metadata !73, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1196
  call void @llvm.dbg.value(metadata i64 %321, metadata !73, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1196
  call void @llvm.dbg.value(metadata i32 %322, metadata !73, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1196
  call void @llvm.dbg.value(metadata i32 undef, metadata !73, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1196
  %398 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 2, !dbg !1198
  %399 = load i32, i32* %398, align 8, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %399, metadata !72, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1196
  call void @llvm.dbg.value(metadata i32 undef, metadata !72, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1196
  call void @llvm.dbg.value(metadata x86_fp80 %266, metadata !71, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1196
  call void @llvm.dbg.value(metadata i64 %268, metadata !71, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1196
  call void @llvm.dbg.value(metadata i32 %270, metadata !71, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1196
  call void @llvm.dbg.value(metadata i32 undef, metadata !71, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1196
  %400 = icmp sgt i32 %393, %399, !dbg !1199
  %401 = select i1 %400, i32 %393, i32 %399, !dbg !1199
  call void @llvm.dbg.value(metadata i32 %401, metadata !74, metadata !DIExpression()) #27, !dbg !1196
  %402 = icmp eq i32 %401, 2147483647, !dbg !1200
  %403 = icmp eq i32 %391, 2147483647
  %404 = or i1 %403, %402, !dbg !1201
  br i1 %404, label %435, label %405, !dbg !1201

405:                                              ; preds = %397
  %406 = load i1, i1* @equal_width, align 1, !dbg !1202
  br i1 %406, label %407, label %433, !dbg !1203

407:                                              ; preds = %405
  %408 = sub nsw i32 %401, %393, !dbg !1204
  %409 = sext i32 %408 to i64, !dbg !1205
  call void @llvm.dbg.value(metadata i64 undef, metadata !75, metadata !DIExpression()) #27, !dbg !1206
  %410 = sub nsw i32 %401, %391, !dbg !1207
  %411 = sext i32 %410 to i64, !dbg !1208
  call void @llvm.dbg.value(metadata i64 undef, metadata !80, metadata !DIExpression()) #27, !dbg !1206
  %412 = icmp ne i32 %391, 0, !dbg !1209
  %413 = icmp eq i32 %401, 0
  %414 = and i1 %412, %413, !dbg !1211
  %415 = sext i1 %414 to i64, !dbg !1211
  %416 = icmp eq i32 %391, 0, !dbg !1212
  %417 = icmp ne i32 %401, 0
  %418 = and i1 %416, %417, !dbg !1214
  %419 = zext i1 %418 to i64, !dbg !1214
  %420 = add i64 %394, %411, !dbg !1215
  %421 = add i64 %420, %415, !dbg !1211
  %422 = add i64 %421, %419, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %422, metadata !80, metadata !DIExpression()) #27, !dbg !1206
  %423 = and i1 %389, %417, !dbg !1216
  %424 = zext i1 %423 to i64, !dbg !1216
  %425 = add i64 %395, %409, !dbg !1218
  %426 = add i64 %425, %424, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %426, metadata !75, metadata !DIExpression()) #27, !dbg !1206
  %427 = icmp ugt i64 %426, %422, !dbg !1219
  %428 = select i1 %427, i64 %426, i64 %422, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %428, metadata !81, metadata !DIExpression()) #27, !dbg !1206
  %429 = icmp ult i64 %428, 2147483648, !dbg !1220
  br i1 %429, label %430, label %435, !dbg !1221

430:                                              ; preds = %407
  %431 = trunc i64 %428 to i32, !dbg !1222
  call void @llvm.dbg.value(metadata i32 %431, metadata !82, metadata !DIExpression()) #27, !dbg !1223
  %432 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i32 %431, i32 %401) #27, !dbg !1224
  br label %435

433:                                              ; preds = %405
  %434 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i32 %401) #27, !dbg !1225
  br label %435, !dbg !1227

435:                                              ; preds = %433, %430, %407, %397, %388
  %436 = phi i8* [ %165, %388 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %430 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %433 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %407 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %397 ], !dbg !833
  call void @llvm.dbg.value(metadata i8* %436, metadata !821, metadata !DIExpression()), !dbg !833
  %437 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1228
  %438 = load x86_fp80, x86_fp80* %437, align 16, !dbg !1228, !tbaa !1149
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1229, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)) #27, !dbg !1257
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1242, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)) #27, !dbg !1259
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)) #27, !dbg !1260
  call void @llvm.dbg.value(metadata i64 undef, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1261
  call void @llvm.dbg.value(metadata i64 undef, metadata !1237, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %436, metadata !1236, metadata !DIExpression()) #27, !dbg !1261
  call void @llvm.dbg.value(metadata x86_fp80 %266, metadata !1238, metadata !DIExpression()) #27, !dbg !1261
  call void @llvm.dbg.value(metadata x86_fp80 %438, metadata !1239, metadata !DIExpression()) #27, !dbg !1261
  call void @llvm.dbg.value(metadata x86_fp80 %323, metadata !1240, metadata !DIExpression()) #27, !dbg !1261
  %439 = fcmp olt x86_fp80 %438, 0xK00000000000000000000, !dbg !1262
  %440 = fcmp olt x86_fp80 %392, %390, !dbg !1263
  %441 = fcmp olt x86_fp80 %390, %392, !dbg !1263
  %442 = select i1 %439, i1 %440, i1 %441, !dbg !1263
  call void @llvm.dbg.value(metadata i1 %442, metadata !1241, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1261
  br i1 %442, label %521, label %443, !dbg !1264

443:                                              ; preds = %435
  call void @llvm.dbg.value(metadata i8 0, metadata !1241, metadata !DIExpression()) #27, !dbg !1261
  call void @llvm.dbg.value(metadata x86_fp80 %266, metadata !1229, metadata !DIExpression()) #27, !dbg !1265
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, metadata !1242, metadata !DIExpression()) #27, !dbg !1265
  call void @llvm.dbg.value(metadata x86_fp80 %266, metadata !1243, metadata !DIExpression()) #27, !dbg !1266
  %444 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %436, x86_fp80 %392) #27, !dbg !1267
  %445 = icmp slt i32 %444, 0, !dbg !1269
  br i1 %445, label %450, label %446, !dbg !1270

446:                                              ; preds = %443
  %447 = bitcast x86_fp80* %3 to i8*
  %448 = bitcast i8** %4 to i8*
  %449 = bitcast i8** %5 to i8*
  br label %451, !dbg !1270

450:                                              ; preds = %512, %443
  call fastcc void @io_error() #29, !dbg !1271
  unreachable, !dbg !1271

451:                                              ; preds = %512, %446
  %452 = phi i8 [ 0, %446 ], [ %462, %512 ]
  %453 = phi x86_fp80 [ %392, %446 ], [ %458, %512 ]
  %454 = phi x86_fp80 [ 0xK3FFF8000000000000000, %446 ], [ %513, %512 ]
  call void @llvm.dbg.value(metadata i8 %452, metadata !1241, metadata !DIExpression()) #27, !dbg !1261
  call void @llvm.dbg.value(metadata x86_fp80 %453, metadata !1229, metadata !DIExpression()) #27, !dbg !1265
  call void @llvm.dbg.value(metadata x86_fp80 %454, metadata !1242, metadata !DIExpression()) #27, !dbg !1265
  %455 = icmp eq i8 %452, 0, !dbg !1272
  br i1 %455, label %456, label %516, !dbg !1274

456:                                              ; preds = %451
  %457 = fmul x86_fp80 %438, %454, !dbg !1275
  %458 = fadd x86_fp80 %392, %457, !dbg !1276
  call void @llvm.dbg.value(metadata x86_fp80 %458, metadata !1229, metadata !DIExpression()) #27, !dbg !1265
  %459 = fcmp olt x86_fp80 %458, %390, !dbg !1277
  %460 = fcmp ogt x86_fp80 %458, %390, !dbg !1277
  %461 = select i1 %439, i1 %459, i1 %460, !dbg !1277
  %462 = zext i1 %461 to i8, !dbg !1278
  call void @llvm.dbg.value(metadata i8 %462, metadata !1241, metadata !DIExpression()) #27, !dbg !1261
  br i1 %461, label %463, label %506, !dbg !1279

463:                                              ; preds = %456
  call void @llvm.dbg.value(metadata i8 0, metadata !1247, metadata !DIExpression()) #27, !dbg !1280
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %447) #27, !dbg !1281
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %448) #27, !dbg !1282
  %464 = load i8, i8* @locale_ok, align 1, !dbg !1283, !tbaa !842, !range !1285
  %465 = icmp eq i8 %464, 0, !dbg !1283
  br i1 %465, label %468, label %466, !dbg !1286

466:                                              ; preds = %463
  %467 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #27, !dbg !1287
  br label %468, !dbg !1287

468:                                              ; preds = %466, %463
  call void @llvm.dbg.value(metadata i8** %4, metadata !1251, metadata !DIExpression(DW_OP_deref)) #27, !dbg !1280
  %469 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %4, i32 1, i8* %436, x86_fp80 %458) #27, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %469, metadata !1252, metadata !DIExpression()) #27, !dbg !1280
  %470 = load i8, i8* @locale_ok, align 1, !dbg !1289, !tbaa !842, !range !1285
  %471 = icmp eq i8 %470, 0, !dbg !1289
  br i1 %471, label %474, label %472, !dbg !1291

472:                                              ; preds = %468
  %473 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #27, !dbg !1292
  br label %474, !dbg !1292

474:                                              ; preds = %472, %468
  %475 = icmp slt i32 %469, 0, !dbg !1293
  br i1 %475, label %476, label %477, !dbg !1295

476:                                              ; preds = %474
  call void @xalloc_die() #29, !dbg !1296
  unreachable, !dbg !1296

477:                                              ; preds = %474
  %478 = load i8*, i8** %4, align 8, !dbg !1297, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %478, metadata !1251, metadata !DIExpression()) #27, !dbg !1280
  %479 = zext i32 %469 to i64, !dbg !1298
  %480 = sub i64 %479, %166, !dbg !1299
  %481 = getelementptr inbounds i8, i8* %478, i64 %480, !dbg !1297
  store i8 0, i8* %481, align 1, !dbg !1300, !tbaa !857
  %482 = load i8*, i8** %4, align 8, !dbg !1301, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %482, metadata !1251, metadata !DIExpression()) #27, !dbg !1280
  %483 = getelementptr inbounds i8, i8* %482, i64 %167, !dbg !1302
  call void @llvm.dbg.value(metadata x86_fp80* %3, metadata !1250, metadata !DIExpression(DW_OP_deref)) #27, !dbg !1280
  %484 = call zeroext i1 @xstrtold(i8* %483, i8** null, x86_fp80* nonnull %3, x86_fp80 (i8*, i8**)* nonnull @cl_strtold) #27, !dbg !1303
  %485 = load x86_fp80, x86_fp80* %3, align 16
  %486 = fcmp oeq x86_fp80 %485, %390
  %487 = and i1 %484, %486, !dbg !1304
  call void @llvm.dbg.value(metadata x86_fp80 %485, metadata !1250, metadata !DIExpression()) #27, !dbg !1280
  br i1 %487, label %490, label %488, !dbg !1304

488:                                              ; preds = %477
  call void @llvm.dbg.value(metadata i8 undef, metadata !1247, metadata !DIExpression()) #27, !dbg !1280
  %489 = load i8*, i8** %4, align 8, !dbg !1305, !tbaa !671
  call void @free(i8* %489) #27, !dbg !1306
  br label %504, !dbg !1307

490:                                              ; preds = %477
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %449) #27, !dbg !1308
  call void @llvm.dbg.value(metadata i8* null, metadata !1253, metadata !DIExpression()) #27, !dbg !1309
  store i8* null, i8** %5, align 8, !dbg !1310, !tbaa !671
  call void @llvm.dbg.value(metadata i8** %5, metadata !1253, metadata !DIExpression(DW_OP_deref)) #27, !dbg !1309
  %491 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* %436, x86_fp80 %453) #27, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %491, metadata !1256, metadata !DIExpression()) #27, !dbg !1309
  %492 = icmp slt i32 %491, 0, !dbg !1312
  br i1 %492, label %493, label %494, !dbg !1314

493:                                              ; preds = %490
  call void @xalloc_die() #29, !dbg !1315
  unreachable, !dbg !1315

494:                                              ; preds = %490
  %495 = load i8*, i8** %5, align 8, !dbg !1316, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %495, metadata !1253, metadata !DIExpression()) #27, !dbg !1309
  %496 = zext i32 %491 to i64, !dbg !1317
  %497 = sub i64 %496, %166, !dbg !1318
  %498 = getelementptr inbounds i8, i8* %495, i64 %497, !dbg !1316
  store i8 0, i8* %498, align 1, !dbg !1319, !tbaa !857
  %499 = load i8*, i8** %5, align 8, !dbg !1320, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %499, metadata !1253, metadata !DIExpression()) #27, !dbg !1309
  %500 = load i8*, i8** %4, align 8, !dbg !1320, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %500, metadata !1251, metadata !DIExpression()) #27, !dbg !1280
  %501 = call i32 @strcmp(i8* nonnull dereferenceable(1) %499, i8* nonnull dereferenceable(1) %500) #28, !dbg !1320
  %502 = icmp eq i32 %501, 0, !dbg !1320
  call void @llvm.dbg.value(metadata i1 %502, metadata !1247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1280
  call void @free(i8* %499) #27, !dbg !1321
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %449) #27, !dbg !1322
  call void @llvm.dbg.value(metadata i8 undef, metadata !1247, metadata !DIExpression()) #27, !dbg !1280
  %503 = load i8*, i8** %4, align 8, !dbg !1305, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %503, metadata !1251, metadata !DIExpression()) #27, !dbg !1280
  call void @free(i8* %503) #27, !dbg !1306
  br i1 %502, label %504, label %505, !dbg !1307

504:                                              ; preds = %494, %488
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %448) #27, !dbg !1323
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %447) #27, !dbg !1323
  br label %516

505:                                              ; preds = %494
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %448) #27, !dbg !1323
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %447) #27, !dbg !1323
  br label %506

506:                                              ; preds = %505, %456
  %507 = load i8*, i8** @separator, align 8, !dbg !1324, !tbaa !671
  %508 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1324, !tbaa !671
  %509 = call i32 @fputs_unlocked(i8* %507, %struct._IO_FILE* %508) #27, !dbg !1324
  %510 = icmp eq i32 %509, -1, !dbg !1326
  br i1 %510, label %511, label %512, !dbg !1327

511:                                              ; preds = %506
  call fastcc void @io_error() #29, !dbg !1328
  unreachable, !dbg !1328

512:                                              ; preds = %506
  call void @llvm.dbg.value(metadata i8 %462, metadata !1241, metadata !DIExpression()) #27, !dbg !1261
  call void @llvm.dbg.value(metadata x86_fp80 %458, metadata !1229, metadata !DIExpression()) #27, !dbg !1265
  %513 = fadd x86_fp80 %454, 0xK3FFF8000000000000000, !dbg !1329
  call void @llvm.dbg.value(metadata x86_fp80 %513, metadata !1242, metadata !DIExpression()) #27, !dbg !1265
  call void @llvm.dbg.value(metadata x86_fp80 %458, metadata !1243, metadata !DIExpression()) #27, !dbg !1266
  %514 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %436, x86_fp80 %458) #27, !dbg !1267
  %515 = icmp slt i32 %514, 0, !dbg !1269
  br i1 %515, label %450, label %451, !dbg !1270, !llvm.loop !1330

516:                                              ; preds = %451, %504
  %517 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1333, !tbaa !671
  %518 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %517) #27, !dbg !1333
  %519 = icmp eq i32 %518, -1, !dbg !1335
  br i1 %519, label %520, label %521, !dbg !1336

520:                                              ; preds = %516
  call fastcc void @io_error() #29, !dbg !1337
  unreachable, !dbg !1337

521:                                              ; preds = %516, %435, %387, %246
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %14), !dbg !1338
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #27, !dbg !1338
  ret i32 0, !dbg !1338
}

; Function Attrs: nounwind
declare !dbg !1339 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1342 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1345 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1350 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1356 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @seq_fast(i8* %0, i8* %1, i64 %2) unnamed_addr #8 !dbg !1360 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1367, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %1, metadata !1368, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %2, metadata !1369, metadata !DIExpression()), !dbg !1408
  %4 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #28, !dbg !1409
  %5 = icmp eq i32 %4, 0, !dbg !1409
  call void @llvm.dbg.value(metadata i1 %5, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %0, metadata !1410, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %0, metadata !1415, metadata !DIExpression()), !dbg !1416
  br label %6, !dbg !1418

6:                                                ; preds = %9, %3
  %7 = phi i8* [ %0, %3 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !1410, metadata !DIExpression()), !dbg !1416
  %8 = load i8, i8* %7, align 1, !dbg !1419, !tbaa !857
  switch i8 %8, label %15 [
    i8 48, label %9
    i8 0, label %11
  ], !dbg !1418

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %10, metadata !1410, metadata !DIExpression()), !dbg !1416
  br label %6, !dbg !1418, !llvm.loop !1421

11:                                               ; preds = %6
  %12 = icmp eq i8* %7, %0, !dbg !1423
  %13 = getelementptr inbounds i8, i8* %7, i64 -1
  %14 = select i1 %12, i8* %7, i8* %13, !dbg !1425
  br label %15, !dbg !1425

15:                                               ; preds = %6, %11
  %16 = phi i8* [ %14, %11 ], [ %7, %6 ]
  call void @llvm.dbg.value(metadata i8* %16, metadata !1367, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %1, metadata !1410, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8* %1, metadata !1415, metadata !DIExpression()), !dbg !1426
  br label %17, !dbg !1428

17:                                               ; preds = %20, %15
  %18 = phi i8* [ %1, %15 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !1410, metadata !DIExpression()), !dbg !1426
  %19 = load i8, i8* %18, align 1, !dbg !1429, !tbaa !857
  switch i8 %19, label %26 [
    i8 48, label %20
    i8 0, label %22
  ], !dbg !1428

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1430
  call void @llvm.dbg.value(metadata i8* %21, metadata !1410, metadata !DIExpression()), !dbg !1426
  br label %17, !dbg !1428, !llvm.loop !1431

22:                                               ; preds = %17
  %23 = icmp eq i8* %18, %1, !dbg !1433
  %24 = getelementptr inbounds i8, i8* %18, i64 -1
  %25 = select i1 %23, i8* %18, i8* %24, !dbg !1434
  br label %26, !dbg !1434

26:                                               ; preds = %17, %22
  %27 = phi i8* [ %25, %22 ], [ %18, %17 ]
  call void @llvm.dbg.value(metadata i8* %27, metadata !1368, metadata !DIExpression()), !dbg !1408
  %28 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %16) #28, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %28, metadata !1371, metadata !DIExpression()), !dbg !1408
  br i1 %5, label %31, label %29, !dbg !1436

29:                                               ; preds = %26
  %30 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %27) #28, !dbg !1437
  br label %31, !dbg !1436

31:                                               ; preds = %26, %29
  %32 = phi i64 [ %30, %29 ], [ 0, %26 ], !dbg !1436
  call void @llvm.dbg.value(metadata i64 %32, metadata !1372, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %28, metadata !1371, metadata !DIExpression()), !dbg !1408
  %33 = add i64 %28, 1, !dbg !1438
  %34 = icmp ugt i64 %33, %32, !dbg !1438
  %35 = select i1 %34, i64 %33, i64 %32, !dbg !1438
  %36 = icmp ugt i64 %35, 31, !dbg !1438
  %37 = select i1 %36, i64 %35, i64 31, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %37, metadata !1373, metadata !DIExpression()), !dbg !1408
  %38 = add i64 %37, 1, !dbg !1439
  %39 = tail call noalias i8* @xmalloc(i64 %38) #27, !dbg !1440
  call void @llvm.dbg.value(metadata i8* %39, metadata !1374, metadata !DIExpression()), !dbg !1408
  %40 = getelementptr inbounds i8, i8* %39, i64 %37, !dbg !1441
  %41 = sub i64 0, %28, !dbg !1442
  %42 = getelementptr inbounds i8, i8* %40, i64 %41, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %42, metadata !989, metadata !DIExpression()) #27, !dbg !1443
  call void @llvm.dbg.value(metadata i8* %16, metadata !999, metadata !DIExpression()) #27, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %33, metadata !1000, metadata !DIExpression()) #27, !dbg !1443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %42, i8* nonnull align 1 %16, i64 %33, i1 false) #27, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %42, metadata !1375, metadata !DIExpression()), !dbg !1408
  br i1 %5, label %55, label %43, !dbg !1446

43:                                               ; preds = %31
  %44 = tail call noalias i8* @xmalloc(i64 %38) #27, !dbg !1447
  call void @llvm.dbg.value(metadata i8* %44, metadata !1377, metadata !DIExpression()), !dbg !1408
  %45 = getelementptr inbounds i8, i8* %44, i64 %37, !dbg !1450
  %46 = sub i64 0, %32, !dbg !1451
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !1451
  %48 = add i64 %32, 1, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %47, metadata !989, metadata !DIExpression()) #27, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %27, metadata !999, metadata !DIExpression()) #27, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %48, metadata !1000, metadata !DIExpression()) #27, !dbg !1453
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %47, i8* nonnull align 1 %27, i64 %48, i1 false) #27, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %47, metadata !1376, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %42, metadata !1375, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %28, metadata !1371, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %42, metadata !1456, metadata !DIExpression()) #27, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %28, metadata !1461, metadata !DIExpression()) #27, !dbg !1464
  call void @llvm.dbg.value(metadata i8* %47, metadata !1462, metadata !DIExpression()) #27, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %32, metadata !1463, metadata !DIExpression()) #27, !dbg !1464
  %49 = icmp ult i64 %28, %32, !dbg !1466
  br i1 %49, label %55, label %50, !dbg !1468

50:                                               ; preds = %43
  %51 = icmp ult i64 %32, %28, !dbg !1469
  br i1 %51, label %156, label %52, !dbg !1471

52:                                               ; preds = %50
  %53 = tail call i32 @memcmp(i8* %42, i8* %47, i64 %28) #28, !dbg !1472
  %54 = icmp slt i32 %53, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i1 %54, metadata !1378, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1408
  br i1 %54, label %55, label %156, !dbg !1474

55:                                               ; preds = %43, %31, %52
  %56 = phi i8* [ %44, %52 ], [ null, %31 ], [ %44, %43 ]
  %57 = phi i8* [ %47, %52 ], [ null, %31 ], [ %47, %43 ]
  %58 = shl i64 %38, 1, !dbg !1475
  %59 = icmp ugt i64 %58, 8192, !dbg !1475
  %60 = select i1 %59, i64 %58, i64 8192, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %60, metadata !1379, metadata !DIExpression()), !dbg !1476
  %61 = tail call noalias i8* @xmalloc(i64 %60) #27, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %61, metadata !1382, metadata !DIExpression()), !dbg !1476
  %62 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !1478
  call void @llvm.dbg.value(metadata i8* %62, metadata !1383, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %61, metadata !1384, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %42, metadata !1375, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %28, metadata !1371, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %61, metadata !1479, metadata !DIExpression()) #27, !dbg !1484
  call void @llvm.dbg.value(metadata i8* %42, metadata !1482, metadata !DIExpression()) #27, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %28, metadata !1483, metadata !DIExpression()) #27, !dbg !1484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %61, i8* nonnull align 1 %42, i64 %28, i1 false) #27, !dbg !1486
  %63 = getelementptr inbounds i8, i8* %61, i64 %28, !dbg !1486
  call void @llvm.dbg.value(metadata i8* %63, metadata !1384, metadata !DIExpression()), !dbg !1476
  %64 = icmp eq i64 %2, 0
  br label %65, !dbg !1487

65:                                               ; preds = %144, %55
  %66 = phi i64 [ %28, %55 ], [ %75, %144 ], !dbg !1488
  %67 = phi i8* [ %42, %55 ], [ %126, %144 ], !dbg !1408
  %68 = phi i64 [ %60, %55 ], [ %127, %144 ], !dbg !1476
  %69 = phi i8* [ %61, %55 ], [ %128, %144 ], !dbg !1476
  %70 = phi i8* [ %62, %55 ], [ %129, %144 ], !dbg !1476
  %71 = phi i8* [ %63, %55 ], [ %145, %144 ], !dbg !1476
  %72 = phi i8* [ %39, %55 ], [ %131, %144 ], !dbg !1408
  %73 = phi i64 [ %37, %55 ], [ %132, %144 ], !dbg !1408
  call void @llvm.dbg.value(metadata i64 %73, metadata !1373, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %72, metadata !1374, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %71, metadata !1384, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %70, metadata !1383, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %69, metadata !1382, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %68, metadata !1379, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %2, metadata !1385, metadata !DIExpression()), !dbg !1489
  br i1 %64, label %74, label %79, !dbg !1490

74:                                               ; preds = %95, %65
  %75 = phi i64 [ %66, %65 ], [ %96, %95 ], !dbg !1488
  %76 = phi i8* [ %67, %65 ], [ %97, %95 ], !dbg !1491
  %77 = icmp ult i64 %75, %32
  %78 = or i1 %5, %77, !dbg !1492
  call void @llvm.dbg.value(metadata i8* %76, metadata !1375, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %75, metadata !1371, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %76, metadata !1456, metadata !DIExpression()) #27, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %75, metadata !1461, metadata !DIExpression()) #27, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %47, metadata !1462, metadata !DIExpression()) #27, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %32, metadata !1463, metadata !DIExpression()) #27, !dbg !1494
  br i1 %78, label %105, label %100, !dbg !1492

79:                                               ; preds = %65, %95
  %80 = phi i64 [ %98, %95 ], [ %2, %65 ]
  %81 = phi i8* [ %97, %95 ], [ %67, %65 ]
  %82 = phi i64 [ %96, %95 ], [ %66, %65 ]
  call void @llvm.dbg.value(metadata i64 %80, metadata !1385, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8** undef, metadata !1496, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64* undef, metadata !1501, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8* %81, metadata !1502, metadata !DIExpression()), !dbg !1504
  %83 = getelementptr inbounds i8, i8* %81, i64 -1, !dbg !1507
  %84 = getelementptr inbounds i8, i8* %83, i64 %82, !dbg !1508
  call void @llvm.dbg.value(metadata i8* %84, metadata !1503, metadata !DIExpression()), !dbg !1504
  br label %85, !dbg !1509

85:                                               ; preds = %90, %79
  %86 = phi i8* [ %84, %79 ], [ %91, %90 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8* %86, metadata !1503, metadata !DIExpression()), !dbg !1504
  %87 = load i8, i8* %86, align 1, !dbg !1510, !tbaa !857
  %88 = add i8 %87, 1, !dbg !1510
  store i8 %88, i8* %86, align 1, !dbg !1510, !tbaa !857
  %89 = icmp slt i8 %87, 57, !dbg !1513
  br i1 %89, label %95, label %90, !dbg !1514

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %86, i64 -1, !dbg !1515
  call void @llvm.dbg.value(metadata i8* %91, metadata !1503, metadata !DIExpression()), !dbg !1504
  store i8 48, i8* %86, align 1, !dbg !1516, !tbaa !857
  %92 = icmp ult i8* %91, %81, !dbg !1517
  br i1 %92, label %93, label %85, !dbg !1518, !llvm.loop !1519

93:                                               ; preds = %90
  store i8 49, i8* %83, align 1, !dbg !1521, !tbaa !857
  %94 = add i64 %82, 1, !dbg !1522
  br label %95, !dbg !1523

95:                                               ; preds = %85, %93
  %96 = phi i64 [ %94, %93 ], [ %82, %85 ], !dbg !1408
  %97 = phi i8* [ %83, %93 ], [ %81, %85 ], !dbg !1408
  %98 = add i64 %80, -1, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %98, metadata !1385, metadata !DIExpression()), !dbg !1489
  %99 = icmp eq i64 %98, 0, !dbg !1490
  br i1 %99, label %74, label %79, !dbg !1490, !llvm.loop !1525

100:                                              ; preds = %74
  %101 = icmp ult i64 %32, %75, !dbg !1527
  br i1 %101, label %147, label %102, !dbg !1528

102:                                              ; preds = %100
  %103 = tail call i32 @memcmp(i8* %76, i8* %57, i64 %75) #28, !dbg !1529
  %104 = icmp sgt i32 %103, 0, !dbg !1530
  br i1 %104, label %147, label %105, !dbg !1531

105:                                              ; preds = %102, %74
  %106 = load i8*, i8** @separator, align 8, !dbg !1532, !tbaa !671
  %107 = load i8, i8* %106, align 1, !dbg !1533, !tbaa !857
  %108 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %108, metadata !1384, metadata !DIExpression()), !dbg !1476
  store i8 %107, i8* %71, align 1, !dbg !1535, !tbaa !857
  call void @llvm.dbg.value(metadata i64 %75, metadata !1371, metadata !DIExpression()), !dbg !1408
  %109 = icmp eq i64 %75, %73, !dbg !1536
  br i1 %109, label %110, label %125, !dbg !1537

110:                                              ; preds = %105
  %111 = shl i64 %73, 1, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %111, metadata !1373, metadata !DIExpression()), !dbg !1408
  %112 = or i64 %111, 1, !dbg !1539
  %113 = tail call i8* @xrealloc(i8* %72, i64 %112) #27, !dbg !1540
  call void @llvm.dbg.value(metadata i8* %113, metadata !1374, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %75, metadata !1371, metadata !DIExpression()), !dbg !1408
  %114 = getelementptr inbounds i8, i8* %113, i64 %73, !dbg !1541
  %115 = add i64 %73, 1, !dbg !1542
  call void @llvm.dbg.value(metadata i8* %114, metadata !1543, metadata !DIExpression()) #27, !dbg !1550
  call void @llvm.dbg.value(metadata i8* %113, metadata !1548, metadata !DIExpression()) #27, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %115, metadata !1549, metadata !DIExpression()) #27, !dbg !1550
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %114, i8* nonnull align 1 %113, i64 %115, i1 false) #27, !dbg !1552
  call void @llvm.dbg.value(metadata i8* %114, metadata !1375, metadata !DIExpression()), !dbg !1408
  %116 = shl i64 %112, 1, !dbg !1553
  %117 = icmp ult i64 %68, %116, !dbg !1554
  br i1 %117, label %118, label %125, !dbg !1555

118:                                              ; preds = %110
  %119 = ptrtoint i8* %108 to i64, !dbg !1556
  %120 = ptrtoint i8* %69 to i64, !dbg !1556
  %121 = sub i64 %119, %120, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %121, metadata !1388, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %116, metadata !1379, metadata !DIExpression()), !dbg !1476
  %122 = tail call i8* @xrealloc(i8* %69, i64 %116) #27, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %122, metadata !1382, metadata !DIExpression()), !dbg !1476
  %123 = getelementptr inbounds i8, i8* %122, i64 %116, !dbg !1559
  call void @llvm.dbg.value(metadata i8* %123, metadata !1383, metadata !DIExpression()), !dbg !1476
  %124 = getelementptr inbounds i8, i8* %122, i64 %121, !dbg !1560
  call void @llvm.dbg.value(metadata i8* %124, metadata !1384, metadata !DIExpression()), !dbg !1476
  br label %125, !dbg !1561

125:                                              ; preds = %110, %118, %105
  %126 = phi i8* [ %114, %118 ], [ %114, %110 ], [ %76, %105 ], !dbg !1408
  %127 = phi i64 [ %116, %118 ], [ %68, %110 ], [ %68, %105 ], !dbg !1476
  %128 = phi i8* [ %122, %118 ], [ %69, %110 ], [ %69, %105 ], !dbg !1476
  %129 = phi i8* [ %123, %118 ], [ %70, %110 ], [ %70, %105 ], !dbg !1476
  %130 = phi i8* [ %124, %118 ], [ %108, %110 ], [ %108, %105 ], !dbg !1562
  %131 = phi i8* [ %113, %118 ], [ %113, %110 ], [ %72, %105 ], !dbg !1408
  %132 = phi i64 [ %111, %118 ], [ %111, %110 ], [ %73, %105 ], !dbg !1408
  call void @llvm.dbg.value(metadata i64 %132, metadata !1373, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %131, metadata !1374, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %130, metadata !1384, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %129, metadata !1383, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %128, metadata !1382, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %127, metadata !1379, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %126, metadata !1375, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %75, metadata !1371, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %130, metadata !1479, metadata !DIExpression()) #27, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %126, metadata !1482, metadata !DIExpression()) #27, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %75, metadata !1483, metadata !DIExpression()) #27, !dbg !1563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %130, i8* nonnull align 1 %126, i64 %75, i1 false) #27, !dbg !1565
  %133 = getelementptr inbounds i8, i8* %130, i64 %75, !dbg !1565
  call void @llvm.dbg.value(metadata i8* %133, metadata !1384, metadata !DIExpression()), !dbg !1476
  %134 = xor i64 %75, -1, !dbg !1566
  %135 = getelementptr inbounds i8, i8* %129, i64 %134, !dbg !1566
  %136 = icmp ult i8* %135, %133, !dbg !1567
  br i1 %136, label %137, label %144, !dbg !1568

137:                                              ; preds = %125
  %138 = ptrtoint i8* %133 to i64, !dbg !1569
  %139 = ptrtoint i8* %128 to i64, !dbg !1569
  %140 = sub i64 %138, %139, !dbg !1569
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1569, !tbaa !671
  %142 = tail call i64 @fwrite_unlocked(i8* %128, i64 %140, i64 1, %struct._IO_FILE* %141), !dbg !1569
  %143 = icmp eq i64 %142, 1, !dbg !1570
  br i1 %143, label %144, label %146, !dbg !1571

144:                                              ; preds = %137, %125
  %145 = phi i8* [ %128, %137 ], [ %133, %125 ]
  br label %65, !dbg !1408, !llvm.loop !1572

146:                                              ; preds = %137
  tail call fastcc void @io_error() #30, !dbg !1574
  unreachable, !dbg !1574

147:                                              ; preds = %100, %102
  %148 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %148, metadata !1384, metadata !DIExpression()), !dbg !1476
  store i8 10, i8* %71, align 1, !dbg !1576, !tbaa !857
  %149 = ptrtoint i8* %148 to i64, !dbg !1577
  %150 = ptrtoint i8* %69 to i64, !dbg !1577
  %151 = sub i64 %149, %150, !dbg !1577
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1577, !tbaa !671
  %153 = tail call i64 @fwrite_unlocked(i8* %69, i64 %151, i64 1, %struct._IO_FILE* %152), !dbg !1577
  %154 = icmp eq i64 %153, 1, !dbg !1578
  br i1 %154, label %156, label %155, !dbg !1579

155:                                              ; preds = %147
  tail call fastcc void @io_error() #30, !dbg !1580
  unreachable, !dbg !1580

156:                                              ; preds = %50, %147, %52
  %157 = phi i1 [ false, %52 ], [ true, %147 ], [ false, %50 ]
  %158 = phi i8* [ %44, %52 ], [ %56, %147 ], [ %44, %50 ]
  %159 = phi i8* [ %39, %52 ], [ %72, %147 ], [ %39, %50 ], !dbg !1581
  call void @llvm.dbg.value(metadata i8* %159, metadata !1374, metadata !DIExpression()), !dbg !1408
  tail call void @free(i8* %159) #27, !dbg !1582
  tail call void @free(i8* %158) #27, !dbg !1583
  ret i1 %157, !dbg !1584
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @scan_arg(%struct.operand* noalias sret(%struct.operand) align 16 %0, i8* %1) unnamed_addr #8 !dbg !1585 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !1589, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.declare(metadata %struct.operand* %0, metadata !1590, metadata !DIExpression()), !dbg !1600
  %3 = getelementptr inbounds %struct.operand, %struct.operand* %0, i64 0, i32 0, !dbg !1601
  %4 = tail call zeroext i1 @xstrtold(i8* %1, i8** null, x86_fp80* %3, x86_fp80 (i8*, i8**)* nonnull @cl_strtold) #27, !dbg !1603
  br i1 %4, label %8, label %5, !dbg !1604

5:                                                ; preds = %2
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 5) #27, !dbg !1605
  %7 = tail call i8* @quote(i8* %1) #27, !dbg !1607
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7) #27, !dbg !1608
  tail call void @usage(i32 1) #30, !dbg !1609
  unreachable, !dbg !1609

8:                                                ; preds = %2
  %9 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1610, !tbaa !1149
  %10 = fcmp uno x86_fp80 %9, 0xK00000000000000000000, !dbg !1610
  br i1 %10, label %14, label %11, !dbg !1612

11:                                               ; preds = %8
  %12 = tail call i16** @__ctype_b_loc() #31, !dbg !1599
  %13 = load i16*, i16** %12, align 8, !tbaa !671
  br label %18, !dbg !1613

14:                                               ; preds = %8
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0), i32 5) #27, !dbg !1614
  %16 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0)) #27, !dbg !1616
  %17 = tail call i8* @quote_n(i32 1, i8* %1) #27, !dbg !1617
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %15, i8* %16, i8* %17) #27, !dbg !1618
  tail call void @usage(i32 1) #30, !dbg !1619
  unreachable, !dbg !1619

18:                                               ; preds = %18, %11
  %19 = phi i8* [ %28, %18 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %19, metadata !1589, metadata !DIExpression()), !dbg !1599
  %20 = load i8, i8* %19, align 1, !dbg !1620, !tbaa !857
  %21 = zext i8 %20 to i64, !dbg !1620
  %22 = getelementptr inbounds i16, i16* %13, i64 %21, !dbg !1620
  %23 = load i16, i16* %22, align 2, !dbg !1620, !tbaa !1621
  %24 = and i16 %23, 8192, !dbg !1620
  %25 = icmp ne i16 %24, 0, !dbg !1620
  %26 = icmp eq i8 %20, 43
  %27 = or i1 %26, %25, !dbg !1623
  %28 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1624
  call void @llvm.dbg.value(metadata i8* %28, metadata !1589, metadata !DIExpression()), !dbg !1599
  br i1 %27, label %18, label %29, !dbg !1623, !llvm.loop !1625

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.operand, %struct.operand* %0, i64 0, i32 1, !dbg !1626
  store i64 0, i64* %30, align 16, !dbg !1627, !tbaa !1628
  %31 = getelementptr inbounds %struct.operand, %struct.operand* %0, i64 0, i32 2, !dbg !1629
  store i32 2147483647, i32* %31, align 8, !dbg !1630, !tbaa !1143
  %32 = tail call i8* @strchr(i8* nonnull %19, i32 46) #28, !dbg !1631
  call void @llvm.dbg.value(metadata i8* %32, metadata !1591, metadata !DIExpression()), !dbg !1599
  %33 = icmp eq i8* %32, null, !dbg !1632
  br i1 %33, label %34, label %38, !dbg !1634

34:                                               ; preds = %29
  %35 = tail call i8* @strchr(i8* nonnull %19, i32 112) #28, !dbg !1635
  %36 = icmp eq i8* %35, null, !dbg !1635
  br i1 %36, label %37, label %38, !dbg !1636

37:                                               ; preds = %34
  store i32 0, i32* %31, align 8, !dbg !1637, !tbaa !1143
  br label %38, !dbg !1638

38:                                               ; preds = %37, %34, %29
  %39 = tail call i64 @strcspn(i8* nonnull %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #28, !dbg !1639
  %40 = getelementptr inbounds i8, i8* %19, i64 %39, !dbg !1640
  %41 = load i8, i8* %40, align 1, !dbg !1640, !tbaa !857
  %42 = icmp eq i8 %41, 0, !dbg !1640
  %43 = fmul x86_fp80 %9, 0xK00000000000000000000
  %44 = fcmp oeq x86_fp80 %43, 0xK00000000000000000000
  %45 = and i1 %44, %42, !dbg !1641
  br i1 %45, label %46, label %114, !dbg !1641

46:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1642
  %47 = tail call i64 @strlen(i8* nonnull %19) #28, !dbg !1643
  store i64 %47, i64* %30, align 16, !dbg !1644, !tbaa !1628
  br i1 %33, label %67, label %48, !dbg !1645

48:                                               ; preds = %46
  %49 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1646
  %50 = tail call i64 @strcspn(i8* nonnull %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #28, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %50, metadata !1592, metadata !DIExpression()), !dbg !1642
  %51 = icmp ult i64 %50, 2147483648, !dbg !1650
  br i1 %51, label %52, label %55, !dbg !1652

52:                                               ; preds = %48
  %53 = trunc i64 %50 to i32, !dbg !1653
  store i32 %53, i32* %31, align 8, !dbg !1654, !tbaa !1143
  %54 = icmp eq i64 %50, 0, !dbg !1655
  br i1 %54, label %64, label %55, !dbg !1656

55:                                               ; preds = %48, %52
  %56 = icmp eq i8* %32, %19, !dbg !1657
  br i1 %56, label %64, label %57, !dbg !1658

57:                                               ; preds = %55
  %58 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !1659
  %59 = load i8, i8* %58, align 1, !dbg !1659, !tbaa !857
  %60 = sext i8 %59 to i32, !dbg !1659
  %61 = add nsw i32 %60, -48, !dbg !1659
  %62 = icmp ugt i32 %61, 9, !dbg !1659
  %63 = zext i1 %62 to i64, !dbg !1658
  br label %64, !dbg !1658

64:                                               ; preds = %55, %57, %52
  %65 = phi i64 [ -1, %52 ], [ 1, %55 ], [ %63, %57 ], !dbg !1656
  %66 = add i64 %65, %47, !dbg !1660
  store i64 %66, i64* %30, align 16, !dbg !1660, !tbaa !1628
  br label %67, !dbg !1661

67:                                               ; preds = %64, %46
  %68 = phi i64 [ %50, %64 ], [ 0, %46 ], !dbg !1642
  call void @llvm.dbg.value(metadata i64 %68, metadata !1592, metadata !DIExpression()), !dbg !1642
  %69 = tail call i8* @strchr(i8* nonnull %19, i32 101) #28, !dbg !1662
  call void @llvm.dbg.value(metadata i8* %69, metadata !1595, metadata !DIExpression()), !dbg !1642
  %70 = icmp eq i8* %69, null, !dbg !1663
  br i1 %70, label %71, label %74, !dbg !1665

71:                                               ; preds = %67
  %72 = tail call i8* @strchr(i8* nonnull %19, i32 69) #28, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %72, metadata !1595, metadata !DIExpression()), !dbg !1642
  %73 = icmp eq i8* %72, null, !dbg !1667
  br i1 %73, label %114, label %74, !dbg !1668

74:                                               ; preds = %67, %71
  %75 = phi i8* [ %72, %71 ], [ %69, %67 ]
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !1669
  %77 = tail call i64 @strtol(i8* nocapture nonnull %76, i8** null, i32 10) #27, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %77, metadata !1596, metadata !DIExpression()), !dbg !1671
  %78 = icmp slt i64 %77, 0, !dbg !1672
  %79 = load i32, i32* %31, align 8, !dbg !1673
  %80 = sext i32 %79 to i64, !dbg !1673
  %81 = icmp sgt i64 %77, %80, !dbg !1673
  %82 = select i1 %81, i64 %80, i64 %77, !dbg !1673
  %83 = select i1 %78, i64 %77, i64 %82, !dbg !1673
  %84 = trunc i64 %83 to i32, !dbg !1674
  %85 = sub i32 %79, %84, !dbg !1674
  store i32 %85, i32* %31, align 8, !dbg !1674, !tbaa !1143
  %86 = tail call i64 @strlen(i8* nonnull %19) #28, !dbg !1675
  %87 = ptrtoint i8* %75 to i64, !dbg !1676
  %88 = ptrtoint i8* %19 to i64, !dbg !1676
  %89 = load i64, i64* %30, align 16, !dbg !1677, !tbaa !1628
  %90 = sub i64 %87, %88, !dbg !1676
  %91 = sub i64 %90, %86, !dbg !1678
  %92 = add i64 %91, %89, !dbg !1677
  br i1 %78, label %93, label %100, !dbg !1679

93:                                               ; preds = %74
  %94 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1680
  %95 = icmp eq i8* %75, %94, !dbg !1680
  %96 = or i1 %33, %95, !dbg !1680
  %97 = zext i1 %96 to i64, !dbg !1680
  %98 = add i64 %92, %97, !dbg !1680
  %99 = sub nsw i64 0, %77, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %99, metadata !1596, metadata !DIExpression()), !dbg !1671
  br label %110, !dbg !1684

100:                                              ; preds = %74
  br i1 %33, label %107, label %101, !dbg !1685

101:                                              ; preds = %100
  %102 = icmp eq i32 %85, 0, !dbg !1688
  %103 = icmp ne i64 %68, 0
  %104 = and i1 %103, %102, !dbg !1689
  %105 = sext i1 %104 to i64, !dbg !1689
  %106 = add i64 %92, %105, !dbg !1689
  br label %107, !dbg !1689

107:                                              ; preds = %101, %100
  %108 = phi i64 [ %92, %100 ], [ %106, %101 ]
  %109 = tail call i64 @llvm.usub.sat.i64(i64 %77, i64 %68), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %109, metadata !1596, metadata !DIExpression()), !dbg !1671
  br label %110

110:                                              ; preds = %107, %93
  %111 = phi i64 [ %98, %93 ], [ %108, %107 ], !dbg !1691
  %112 = phi i64 [ %99, %93 ], [ %109, %107 ], !dbg !1692
  call void @llvm.dbg.value(metadata i64 %112, metadata !1596, metadata !DIExpression()), !dbg !1671
  %113 = add i64 %111, %112, !dbg !1691
  store i64 %113, i64* %30, align 16, !dbg !1691, !tbaa !1628
  br label %114, !dbg !1693

114:                                              ; preds = %71, %110, %38
  ret void, !dbg !1694
}

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #12

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @io_error() unnamed_addr #0 !dbg !1695 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1696, !tbaa !671
  tail call void @clearerr_unlocked(%struct._IO_FILE* %1) #27, !dbg !1696
  %2 = tail call i32* @__errno_location() #31, !dbg !1697
  %3 = load i32, i32* %2, align 4, !dbg !1697, !tbaa !850
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 5) #27, !dbg !1697
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %3, i8* %4) #27, !dbg !1697
  unreachable, !dbg !1697
}

; Function Attrs: nounwind
declare !dbg !1698 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #13

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #14

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare !dbg !1701 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @cl_strtold(i8* %0, i8** noalias %1) #8 !dbg !1704 {
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1713, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1719
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1718, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1720
  call void @llvm.dbg.value(metadata i8* %0, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8** %1, metadata !1711, metadata !DIExpression()), !dbg !1721
  %5 = bitcast i8** %3 to i8*, !dbg !1722
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #27, !dbg !1722
  call void @llvm.dbg.value(metadata i8** %3, metadata !1712, metadata !DIExpression(DW_OP_deref)), !dbg !1721
  %6 = call x86_fp80 @strtold(i8* %0, i8** nonnull %3) #27, !dbg !1723
  call void @llvm.dbg.value(metadata x86_fp80 %6, metadata !1713, metadata !DIExpression()), !dbg !1721
  %7 = load i8*, i8** %3, align 8, !dbg !1724, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %7, metadata !1712, metadata !DIExpression()), !dbg !1721
  %8 = load i8, i8* %7, align 1, !dbg !1725, !tbaa !857
  %9 = icmp eq i8 %8, 0, !dbg !1725
  br i1 %9, label %21, label %10, !dbg !1726

10:                                               ; preds = %2
  %11 = tail call i32* @__errno_location() #31, !dbg !1727
  %12 = load i32, i32* %11, align 4, !dbg !1727, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %12, metadata !1714, metadata !DIExpression()), !dbg !1728
  %13 = bitcast i8** %4 to i8*, !dbg !1729
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #27, !dbg !1729
  call void @llvm.dbg.value(metadata i8** %4, metadata !1717, metadata !DIExpression(DW_OP_deref)), !dbg !1728
  %14 = call x86_fp80 @c_strtold(i8* %0, i8** nonnull %4) #27, !dbg !1730
  call void @llvm.dbg.value(metadata x86_fp80 %14, metadata !1718, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8* %7, metadata !1712, metadata !DIExpression()), !dbg !1721
  %15 = load i8*, i8** %4, align 8, !dbg !1731, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %15, metadata !1717, metadata !DIExpression()), !dbg !1728
  %16 = icmp ult i8* %7, %15, !dbg !1733
  br i1 %16, label %18, label %17, !dbg !1734

17:                                               ; preds = %10
  store i32 %12, i32* %11, align 4, !dbg !1735, !tbaa !850
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi i8* [ %7, %17 ], [ %15, %10 ]
  %20 = phi x86_fp80 [ %6, %17 ], [ %14, %10 ], !dbg !1721
  call void @llvm.dbg.value(metadata x86_fp80 %20, metadata !1713, metadata !DIExpression()), !dbg !1721
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #27, !dbg !1736
  br label %21, !dbg !1737

21:                                               ; preds = %18, %2
  %22 = phi i8* [ %19, %18 ], [ %7, %2 ]
  %23 = phi x86_fp80 [ %20, %18 ], [ %6, %2 ], !dbg !1721
  call void @llvm.dbg.value(metadata x86_fp80 %23, metadata !1713, metadata !DIExpression()), !dbg !1721
  %24 = icmp eq i8** %1, null, !dbg !1738
  br i1 %24, label %26, label %25, !dbg !1740

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %22, metadata !1712, metadata !DIExpression()), !dbg !1721
  store i8* %22, i8** %1, align 8, !dbg !1741, !tbaa !671
  br label %26, !dbg !1742

26:                                               ; preds = %25, %21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #27, !dbg !1743
  ret x86_fp80 %23, !dbg !1744
}

; Function Attrs: nofree nounwind willreturn
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #14

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #15 !dbg !1745 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1747, metadata !DIExpression()), !dbg !1748
  store i8* %0, i8** @file_name, align 8, !dbg !1749, !tbaa !671
  ret void, !dbg !1750
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #15 !dbg !1751 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1755, metadata !DIExpression()), !dbg !1756
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1757, !tbaa !842
  ret void, !dbg !1758
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1759 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1764, !tbaa !671
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1765
  %3 = icmp eq i32 %2, 0, !dbg !1766
  br i1 %3, label %22, label %4, !dbg !1767

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1768, !tbaa !842, !range !1285
  %6 = icmp eq i8 %5, 0, !dbg !1768
  br i1 %6, label %11, label %7, !dbg !1769

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !1770
  %9 = load i32, i32* %8, align 4, !dbg !1770, !tbaa !850
  %10 = icmp eq i32 %9, 32, !dbg !1771
  br i1 %10, label %22, label %11, !dbg !1772

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 5) #27, !dbg !1773
  call void @llvm.dbg.value(metadata i8* %12, metadata !1761, metadata !DIExpression()), !dbg !1774
  %13 = load i8*, i8** @file_name, align 8, !dbg !1775, !tbaa !671
  %14 = icmp eq i8* %13, null, !dbg !1775
  %15 = tail call i32* @__errno_location() #31, !dbg !1777
  %16 = load i32, i32* %15, align 4, !dbg !1777, !tbaa !850
  br i1 %14, label %19, label %17, !dbg !1778

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !1779
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.67, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !1780
  br label %20, !dbg !1780

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.68, i64 0, i64 0), i8* %12) #27, !dbg !1781
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1782, !tbaa !850
  tail call void @_exit(i32 %21) #29, !dbg !1783
  unreachable, !dbg !1783

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1784, !tbaa !671
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1786
  %25 = icmp eq i32 %24, 0, !dbg !1787
  br i1 %25, label %28, label %26, !dbg !1788

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1789, !tbaa !850
  tail call void @_exit(i32 %27) #29, !dbg !1790
  unreachable, !dbg !1790

28:                                               ; preds = %22
  ret void, !dbg !1791
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1792 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1794, metadata !DIExpression()), !dbg !1797
  %2 = icmp eq i8* %0, null, !dbg !1798
  br i1 %2, label %3, label %6, !dbg !1800

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1801, !tbaa !671
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !1803
  tail call void @abort() #29, !dbg !1804
  unreachable, !dbg !1804

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !1805
  call void @llvm.dbg.value(metadata i8* %7, metadata !1795, metadata !DIExpression()), !dbg !1797
  %8 = icmp eq i8* %7, null, !dbg !1806
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1807
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1807
  call void @llvm.dbg.value(metadata i8* %10, metadata !1796, metadata !DIExpression()), !dbg !1797
  %11 = ptrtoint i8* %10 to i64, !dbg !1808
  %12 = ptrtoint i8* %0 to i64, !dbg !1808
  %13 = sub i64 %11, %12, !dbg !1808
  %14 = icmp sgt i64 %13, 6, !dbg !1810
  br i1 %14, label %15, label %24, !dbg !1811

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1812
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.76, i64 0, i64 0), i64 7) #28, !dbg !1813
  %18 = icmp eq i32 %17, 0, !dbg !1814
  br i1 %18, label %19, label %24, !dbg !1815

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1794, metadata !DIExpression()), !dbg !1797
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i64 3) #28, !dbg !1816
  %21 = icmp eq i32 %20, 0, !dbg !1819
  br i1 %21, label %22, label %24, !dbg !1820

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1821
  call void @llvm.dbg.value(metadata i8* %23, metadata !1794, metadata !DIExpression()), !dbg !1797
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1823, !tbaa !671
  br label %24, !dbg !1824

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1794, metadata !DIExpression()), !dbg !1797
  store i8* %25, i8** @program_name, align 8, !dbg !1825, !tbaa !671
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1826, !tbaa !671
  ret void, !dbg !1827
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #17

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1828 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1833, metadata !DIExpression()), !dbg !1836
  %2 = tail call i32* @__errno_location() #31, !dbg !1837
  %3 = load i32, i32* %2, align 4, !dbg !1837, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %3, metadata !1834, metadata !DIExpression()), !dbg !1836
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1838
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1838
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1838
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !1839
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1839
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1835, metadata !DIExpression()), !dbg !1836
  store i32 %3, i32* %2, align 4, !dbg !1840, !tbaa !850
  ret %struct.quoting_options* %8, !dbg !1841
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #18 !dbg !1842 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1848, metadata !DIExpression()), !dbg !1849
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1850
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1850
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1851
  %5 = load i32, i32* %4, align 8, !dbg !1851, !tbaa !1852
  ret i32 %5, !dbg !1854
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1855 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1859, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32 %1, metadata !1860, metadata !DIExpression()), !dbg !1861
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1862
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1862
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1863
  store i32 %1, i32* %5, align 8, !dbg !1864, !tbaa !1852
  ret void, !dbg !1865
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #19 !dbg !1866 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1870, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %1, metadata !1871, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 %2, metadata !1872, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %1, metadata !1873, metadata !DIExpression()), !dbg !1878
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1879
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1879
  %6 = lshr i8 %1, 5, !dbg !1880
  %7 = zext i8 %6 to i64, !dbg !1880
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1881
  call void @llvm.dbg.value(metadata i32* %8, metadata !1874, metadata !DIExpression()), !dbg !1878
  %9 = and i8 %1, 31, !dbg !1882
  %10 = zext i8 %9 to i32, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %10, metadata !1876, metadata !DIExpression()), !dbg !1878
  %11 = load i32, i32* %8, align 4, !dbg !1883, !tbaa !850
  %12 = lshr i32 %11, %10, !dbg !1884
  %13 = and i32 %12, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %13, metadata !1877, metadata !DIExpression()), !dbg !1878
  %14 = and i32 %2, 1, !dbg !1886
  %15 = xor i32 %13, %14, !dbg !1887
  %16 = shl i32 %15, %10, !dbg !1888
  %17 = xor i32 %16, %11, !dbg !1889
  store i32 %17, i32* %8, align 4, !dbg !1889, !tbaa !850
  ret i32 %13, !dbg !1890
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #19 !dbg !1891 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1895, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i32 %1, metadata !1896, metadata !DIExpression()), !dbg !1898
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1899
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1895, metadata !DIExpression()), !dbg !1898
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1902
  %6 = load i32, i32* %5, align 4, !dbg !1902, !tbaa !1903
  call void @llvm.dbg.value(metadata i32 %6, metadata !1897, metadata !DIExpression()), !dbg !1898
  store i32 %1, i32* %5, align 4, !dbg !1904, !tbaa !1903
  ret i32 %6, !dbg !1905
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1906 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1910, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8* %1, metadata !1911, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8* %2, metadata !1912, metadata !DIExpression()), !dbg !1913
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1914
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1916
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1910, metadata !DIExpression()), !dbg !1913
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1917
  store i32 10, i32* %6, align 8, !dbg !1918, !tbaa !1852
  %7 = icmp ne i8* %1, null, !dbg !1919
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1921
  br i1 %9, label %11, label %10, !dbg !1921

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !1922
  unreachable, !dbg !1922

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1923
  store i8* %1, i8** %12, align 8, !dbg !1924, !tbaa !1925
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1926
  store i8* %2, i8** %13, align 8, !dbg !1927, !tbaa !1928
  ret void, !dbg !1929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1930 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1934, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %1, metadata !1935, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8* %2, metadata !1936, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %3, metadata !1937, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1938, metadata !DIExpression()), !dbg !1942
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1943
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1939, metadata !DIExpression()), !dbg !1942
  %8 = tail call i32* @__errno_location() #31, !dbg !1944
  %9 = load i32, i32* %8, align 4, !dbg !1944, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %9, metadata !1940, metadata !DIExpression()), !dbg !1942
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1945
  %11 = load i32, i32* %10, align 8, !dbg !1945, !tbaa !1852
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1946
  %13 = load i32, i32* %12, align 4, !dbg !1946, !tbaa !1903
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1947
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1948
  %16 = load i8*, i8** %15, align 8, !dbg !1948, !tbaa !1925
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1949
  %18 = load i8*, i8** %17, align 8, !dbg !1949, !tbaa !1928
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1950
  call void @llvm.dbg.value(metadata i64 %19, metadata !1941, metadata !DIExpression()), !dbg !1942
  store i32 %9, i32* %8, align 4, !dbg !1951, !tbaa !850
  ret i64 %19, !dbg !1952
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1953 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1959, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %1, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %2, metadata !1961, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %3, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %4, metadata !1963, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %5, metadata !1964, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32* %6, metadata !1965, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %7, metadata !1966, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %8, metadata !1967, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 0, metadata !1970, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* null, metadata !1971, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 0, metadata !1972, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 0, metadata !1973, metadata !DIExpression()), !dbg !2029
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !2030
  %14 = icmp eq i64 %13, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i1 %14, metadata !1974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2029
  %15 = lshr i32 %5, 1, !dbg !2032
  %16 = trunc i32 %15 to i8, !dbg !2032
  %17 = and i8 %16, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i8 %17, metadata !1975, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2029
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2033

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2034
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2035
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2036
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2037
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2029
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2038
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2039
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2040
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %38, metadata !1978, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %37, metadata !1977, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %36, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %35, metadata !1975, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %34, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %33, metadata !1973, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %32, metadata !1972, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %31, metadata !1971, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %30, metadata !1970, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %29, metadata !1967, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %28, metadata !1966, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %27, metadata !1963, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.label(metadata !2023), !dbg !2041
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
  ], !dbg !2042

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1975, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 5, metadata !1963, metadata !DIExpression()), !dbg !2029
  br label %92, !dbg !2043

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1975, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 5, metadata !1963, metadata !DIExpression()), !dbg !2029
  %42 = and i8 %35, 1, !dbg !2045
  %43 = icmp eq i8 %42, 0, !dbg !2045
  br i1 %43, label %44, label %92, !dbg !2043

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2047
  br i1 %45, label %92, label %46, !dbg !2050

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2047, !tbaa !857
  br label %92, !dbg !2047

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), i32 %27), !dbg !2051
  call void @llvm.dbg.value(metadata i8* %48, metadata !1966, metadata !DIExpression()), !dbg !2029
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), i32 %27), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %49, metadata !1967, metadata !DIExpression()), !dbg !2029
  br label %50, !dbg !2056

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1967, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %51, metadata !1966, metadata !DIExpression()), !dbg !2029
  %53 = and i8 %35, 1, !dbg !2057
  %54 = icmp eq i8 %53, 0, !dbg !2057
  br i1 %54, label %55, label %70, !dbg !2059

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1971, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()), !dbg !2029
  %56 = load i8, i8* %51, align 1, !dbg !2060, !tbaa !857
  %57 = icmp eq i8 %56, 0, !dbg !2063
  br i1 %57, label %70, label %58, !dbg !2063

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1971, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %61, metadata !1969, metadata !DIExpression()), !dbg !2029
  %62 = icmp ult i64 %61, %39, !dbg !2064
  br i1 %62, label %63, label %65, !dbg !2067

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2064
  store i8 %59, i8* %64, align 1, !dbg !2064, !tbaa !857
  br label %65, !dbg !2064

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %66, metadata !1969, metadata !DIExpression()), !dbg !2029
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2068
  call void @llvm.dbg.value(metadata i8* %67, metadata !1971, metadata !DIExpression()), !dbg !2029
  %68 = load i8, i8* %67, align 1, !dbg !2060, !tbaa !857
  %69 = icmp eq i8 %68, 0, !dbg !2063
  br i1 %69, label %70, label %58, !dbg !2063, !llvm.loop !2069

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2071
  call void @llvm.dbg.value(metadata i64 %71, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 1, metadata !1973, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %52, metadata !1971, metadata !DIExpression()), !dbg !2029
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %72, metadata !1972, metadata !DIExpression()), !dbg !2029
  br label %92, !dbg !2073

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1973, metadata !DIExpression()), !dbg !2029
  br label %74, !dbg !2074

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2029
  call void @llvm.dbg.value(metadata i8 %75, metadata !1973, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 1, metadata !1975, metadata !DIExpression()), !dbg !2029
  br label %76, !dbg !2075

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2037
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2029
  call void @llvm.dbg.value(metadata i8 %78, metadata !1975, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %77, metadata !1973, metadata !DIExpression()), !dbg !2029
  %79 = and i8 %78, 1, !dbg !2076
  %80 = icmp eq i8 %79, 0, !dbg !2076
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2078
  br label %82, !dbg !2078

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2029
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2032
  call void @llvm.dbg.value(metadata i8 %84, metadata !1975, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %83, metadata !1973, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 2, metadata !1963, metadata !DIExpression()), !dbg !2029
  %85 = and i8 %84, 1, !dbg !2079
  %86 = icmp eq i8 %85, 0, !dbg !2079
  br i1 %86, label %87, label %92, !dbg !2081

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2082
  br i1 %88, label %92, label %89, !dbg !2085

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2082, !tbaa !857
  br label %92, !dbg !2082

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !2029
  br label %92, !dbg !2086

91:                                               ; preds = %26
  call void @abort() #29, !dbg !2087
  unreachable, !dbg !2087

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2071
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %40 ], !dbg !2029
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2029
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2029
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2029
  call void @llvm.dbg.value(metadata i8 %100, metadata !1975, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %99, metadata !1973, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %98, metadata !1972, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %97, metadata !1971, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %96, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %95, metadata !1967, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %94, metadata !1966, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %93, metadata !1963, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 0, metadata !1968, metadata !DIExpression()), !dbg !2029
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
  br label %121, !dbg !2088

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2089
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2071
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2034
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2038
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2039
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2040
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %128, metadata !1978, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %127, metadata !1977, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %126, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %125, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %124, metadata !1970, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %123, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %122, metadata !1968, metadata !DIExpression()), !dbg !2029
  %130 = icmp eq i64 %125, -1, !dbg !2090
  br i1 %130, label %131, label %135, !dbg !2091

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2092
  %133 = load i8, i8* %132, align 1, !dbg !2092, !tbaa !857
  %134 = icmp eq i8 %133, 0, !dbg !2093
  br i1 %134, label %587, label %137, !dbg !2094

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2095
  br i1 %136, label %587, label %137, !dbg !2094

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2096
  br i1 %106, label %138, label %153, !dbg !2097

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2099
  %140 = and i1 %107, %130, !dbg !2100
  br i1 %140, label %141, label %143, !dbg !2100

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %142, metadata !1962, metadata !DIExpression()), !dbg !2029
  br label %143, !dbg !2102

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2102
  call void @llvm.dbg.value(metadata i64 %144, metadata !1962, metadata !DIExpression()), !dbg !2029
  %145 = icmp ugt i64 %139, %144, !dbg !2103
  br i1 %145, label %153, label %146, !dbg !2104

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2105
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2106
  %149 = icmp ne i32 %148, 0, !dbg !2107
  %150 = or i1 %149, %109, !dbg !2108
  %151 = xor i1 %149, true, !dbg !2108
  %152 = zext i1 %151 to i8, !dbg !2108
  br i1 %150, label %153, label %646, !dbg !2108

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2096
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2096
  call void @llvm.dbg.value(metadata i8 %156, metadata !1984, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64 %154, metadata !1962, metadata !DIExpression()), !dbg !2029
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2109
  %158 = load i8, i8* %157, align 1, !dbg !2109, !tbaa !857
  call void @llvm.dbg.value(metadata i8 %158, metadata !1979, metadata !DIExpression()), !dbg !2096
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
  ], !dbg !2110

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2111

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2112

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1985, metadata !DIExpression()), !dbg !2096
  %162 = and i8 %126, 1, !dbg !2116
  %163 = icmp eq i8 %162, 0, !dbg !2116
  %164 = and i1 %110, %163, !dbg !2116
  br i1 %164, label %165, label %181, !dbg !2116

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2118
  br i1 %166, label %167, label %169, !dbg !2122

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2118
  store i8 39, i8* %168, align 1, !dbg !2118, !tbaa !857
  br label %169, !dbg !2118

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %170, metadata !1969, metadata !DIExpression()), !dbg !2029
  %171 = icmp ult i64 %170, %129, !dbg !2123
  br i1 %171, label %172, label %174, !dbg !2126

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2123
  store i8 36, i8* %173, align 1, !dbg !2123, !tbaa !857
  br label %174, !dbg !2123

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %175, metadata !1969, metadata !DIExpression()), !dbg !2029
  %176 = icmp ult i64 %175, %129, !dbg !2127
  br i1 %176, label %177, label %179, !dbg !2130

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2127
  store i8 39, i8* %178, align 1, !dbg !2127, !tbaa !857
  br label %179, !dbg !2127

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %180, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2029
  br label %181, !dbg !2131

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2029
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2029
  call void @llvm.dbg.value(metadata i8 %183, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %182, metadata !1969, metadata !DIExpression()), !dbg !2029
  %184 = icmp ult i64 %182, %129, !dbg !2132
  br i1 %184, label %185, label %187, !dbg !2135

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2132
  store i8 92, i8* %186, align 1, !dbg !2132, !tbaa !857
  br label %187, !dbg !2132

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %188, metadata !1969, metadata !DIExpression()), !dbg !2029
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2136
  br i1 %191, label %192, label %473, !dbg !2136

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2138
  %194 = load i8, i8* %193, align 1, !dbg !2138, !tbaa !857
  %195 = add i8 %194, -48, !dbg !2139
  %196 = icmp ult i8 %195, 10, !dbg !2139
  br i1 %196, label %197, label %473, !dbg !2139

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2140
  br i1 %198, label %199, label %201, !dbg !2144

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2140
  store i8 48, i8* %200, align 1, !dbg !2140, !tbaa !857
  br label %201, !dbg !2140

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %202, metadata !1969, metadata !DIExpression()), !dbg !2029
  %203 = icmp ult i64 %202, %129, !dbg !2145
  br i1 %203, label %204, label %206, !dbg !2148

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2145
  store i8 48, i8* %205, align 1, !dbg !2145, !tbaa !857
  br label %206, !dbg !2145

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %207, metadata !1969, metadata !DIExpression()), !dbg !2029
  br label %473, !dbg !2149

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2150

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2151

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2152

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2154
  br i1 %214, label %215, label %473, !dbg !2154

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2156
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2157
  %218 = load i8, i8* %217, align 1, !dbg !2157, !tbaa !857
  %219 = icmp eq i8 %218, 63, !dbg !2158
  br i1 %219, label %220, label %473, !dbg !2159

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2160
  %222 = load i8, i8* %221, align 1, !dbg !2160, !tbaa !857
  %223 = sext i8 %222 to i32, !dbg !2160
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
  ], !dbg !2161

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2162

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1979, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1968, metadata !DIExpression()), !dbg !2029
  %226 = icmp ult i64 %123, %129, !dbg !2164
  br i1 %226, label %227, label %229, !dbg !2167

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2164
  store i8 63, i8* %228, align 1, !dbg !2164, !tbaa !857
  br label %229, !dbg !2164

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %230, metadata !1969, metadata !DIExpression()), !dbg !2029
  %231 = icmp ult i64 %230, %129, !dbg !2168
  br i1 %231, label %232, label %234, !dbg !2171

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2168
  store i8 34, i8* %233, align 1, !dbg !2168, !tbaa !857
  br label %234, !dbg !2168

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %235, metadata !1969, metadata !DIExpression()), !dbg !2029
  %236 = icmp ult i64 %235, %129, !dbg !2172
  br i1 %236, label %237, label %239, !dbg !2175

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2172
  store i8 34, i8* %238, align 1, !dbg !2172, !tbaa !857
  br label %239, !dbg !2172

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %240, metadata !1969, metadata !DIExpression()), !dbg !2029
  %241 = icmp ult i64 %240, %129, !dbg !2176
  br i1 %241, label %242, label %244, !dbg !2179

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2176
  store i8 63, i8* %243, align 1, !dbg !2176, !tbaa !857
  br label %244, !dbg !2176

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %245, metadata !1969, metadata !DIExpression()), !dbg !2029
  br label %473, !dbg !2180

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1983, metadata !DIExpression()), !dbg !2096
  br label %256, !dbg !2181

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1983, metadata !DIExpression()), !dbg !2096
  br label %256, !dbg !2182

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1983, metadata !DIExpression()), !dbg !2096
  br label %254, !dbg !2183

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1983, metadata !DIExpression()), !dbg !2096
  br label %254, !dbg !2184

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1983, metadata !DIExpression()), !dbg !2096
  br label %256, !dbg !2185

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1983, metadata !DIExpression()), !dbg !2096
  br i1 %110, label %252, label %253, !dbg !2186

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2187

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2190

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2192
  call void @llvm.dbg.value(metadata i8 %255, metadata !1983, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.label(metadata !2024), !dbg !2193
  br i1 %111, label %256, label %631, !dbg !2194

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2192
  call void @llvm.dbg.value(metadata i8 %257, metadata !1983, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.label(metadata !2025), !dbg !2196
  br i1 %102, label %495, label %473, !dbg !2197

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2198

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2199, !tbaa !857
  %261 = icmp eq i8 %260, 0, !dbg !2201
  br i1 %261, label %262, label %473, !dbg !2202

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2203
  br i1 %263, label %264, label %473, !dbg !2205

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1986, metadata !DIExpression()), !dbg !2096
  br label %265, !dbg !2206

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2096
  call void @llvm.dbg.value(metadata i8 %266, metadata !1986, metadata !DIExpression()), !dbg !2096
  br i1 %111, label %473, label %631, !dbg !2207

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 1, metadata !1986, metadata !DIExpression()), !dbg !2096
  br i1 %110, label %268, label %473, !dbg !2209

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2210

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2213
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2215
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2215
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %274, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %273, metadata !1970, metadata !DIExpression()), !dbg !2029
  %275 = icmp ult i64 %123, %274, !dbg !2216
  br i1 %275, label %276, label %278, !dbg !2219

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2216
  store i8 39, i8* %277, align 1, !dbg !2216, !tbaa !857
  br label %278, !dbg !2216

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %279, metadata !1969, metadata !DIExpression()), !dbg !2029
  %280 = icmp ult i64 %279, %274, !dbg !2220
  br i1 %280, label %281, label %283, !dbg !2223

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2220
  store i8 92, i8* %282, align 1, !dbg !2220, !tbaa !857
  br label %283, !dbg !2220

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %284, metadata !1969, metadata !DIExpression()), !dbg !2029
  %285 = icmp ult i64 %284, %274, !dbg !2224
  br i1 %285, label %286, label %288, !dbg !2227

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2224
  store i8 39, i8* %287, align 1, !dbg !2224, !tbaa !857
  br label %288, !dbg !2224

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %289, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2029
  br label %473, !dbg !2228

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2229

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1987, metadata !DIExpression()), !dbg !2230
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !2231
  %293 = load i16*, i16** %292, align 8, !dbg !2231, !tbaa !671
  %294 = zext i8 %158 to i64, !dbg !2231
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2231
  %296 = load i16, i16* %295, align 2, !dbg !2231, !tbaa !1621
  %297 = lshr i16 %296, 14, !dbg !2233
  %298 = trunc i16 %297 to i8, !dbg !2233
  %299 = and i8 %298, 1, !dbg !2233
  call void @llvm.dbg.value(metadata i8 %354, metadata !1990, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 %355, metadata !1987, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 %306, metadata !1962, metadata !DIExpression()), !dbg !2029
  %300 = icmp eq i8 %299, 0, !dbg !2234
  call void @llvm.dbg.value(metadata i1 %357, metadata !1986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2096
  br label %359, !dbg !2235

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2236
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1991, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8* %23, metadata !2238, metadata !DIExpression()) #27, !dbg !2245
  call void @llvm.dbg.value(metadata i32 0, metadata !2243, metadata !DIExpression()) #27, !dbg !2245
  call void @llvm.dbg.value(metadata i64 8, metadata !2244, metadata !DIExpression()) #27, !dbg !2245
  store i64 0, i64* %10, align 8, !dbg !2247
  call void @llvm.dbg.value(metadata i64 0, metadata !1987, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2230
  %302 = icmp eq i64 %154, -1, !dbg !2248
  br i1 %302, label %303, label %305, !dbg !2250

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %304, metadata !1962, metadata !DIExpression()), !dbg !2029
  br label %305, !dbg !2252

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2096
  call void @llvm.dbg.value(metadata i64 %306, metadata !1962, metadata !DIExpression()), !dbg !2029
  br label %307, !dbg !2253

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2254
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2255
  call void @llvm.dbg.value(metadata i8 %309, metadata !1990, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 %308, metadata !1987, metadata !DIExpression()), !dbg !2230
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2256
  %310 = add i64 %308, %122, !dbg !2257
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2258
  %312 = sub i64 %306, %310, !dbg !2259
  call void @llvm.dbg.value(metadata i32* %12, metadata !2009, metadata !DIExpression(DW_OP_deref)), !dbg !2260
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %313, metadata !2012, metadata !DIExpression()), !dbg !2260
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2262

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1987, metadata !DIExpression()), !dbg !2230
  %315 = icmp ugt i64 %306, %310, !dbg !2263
  br i1 %315, label %316, label %341, !dbg !2265

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2266
  br label %318, !dbg !2266

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1987, metadata !DIExpression()), !dbg !2230
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2267
  %322 = load i8, i8* %321, align 1, !dbg !2267, !tbaa !857
  %323 = icmp eq i8 %322, 0, !dbg !2265
  br i1 %323, label %341, label %324, !dbg !2266

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %325, metadata !1987, metadata !DIExpression()), !dbg !2230
  %326 = add i64 %325, %122, !dbg !2269
  %327 = icmp ult i64 %326, %306, !dbg !2263
  br i1 %327, label %318, label %341, !dbg !2265, !llvm.loop !2270

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2271
  call void @llvm.dbg.value(metadata i64 1, metadata !2013, metadata !DIExpression()), !dbg !2272
  br i1 %330, label %331, label %344, !dbg !2271

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2013, metadata !DIExpression()), !dbg !2272
  %333 = add i64 %332, %310, !dbg !2273
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2276
  %335 = load i8, i8* %334, align 1, !dbg !2276, !tbaa !857
  %336 = sext i8 %335 to i32, !dbg !2276
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2277

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %338, metadata !2013, metadata !DIExpression()), !dbg !2272
  %339 = icmp eq i64 %338, %313, !dbg !2279
  br i1 %339, label %344, label %331, !dbg !2280, !llvm.loop !2281

340:                                              ; preds = %307
  br label %341, !dbg !2283

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1990, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 undef, metadata !1987, metadata !DIExpression()), !dbg !2230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2283
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2284, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %345, metadata !2009, metadata !DIExpression()), !dbg !2260
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !2286
  %347 = icmp eq i32 %346, 0, !dbg !2286
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2287
  call void @llvm.dbg.value(metadata i8 %348, metadata !1990, metadata !DIExpression()), !dbg !2230
  %349 = add i64 %313, %308, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %349, metadata !1987, metadata !DIExpression()), !dbg !2230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2283
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !2289
  %351 = icmp eq i32 %350, 0, !dbg !2290
  br i1 %351, label %307, label %353, !dbg !2291, !llvm.loop !2292

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1990, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 undef, metadata !1987, metadata !DIExpression()), !dbg !2230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2294
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2294
  call void @llvm.dbg.value(metadata i8 %354, metadata !1990, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 %355, metadata !1987, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 %306, metadata !1962, metadata !DIExpression()), !dbg !2029
  %356 = and i8 %354, 1, !dbg !2234
  %357 = icmp eq i8 %356, 0, !dbg !2234
  call void @llvm.dbg.value(metadata i1 %357, metadata !1986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2096
  %358 = icmp ugt i64 %355, 1, !dbg !2295
  br i1 %358, label %367, label %359, !dbg !2235

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2296
  br i1 %364, label %367, label %365, !dbg !2296

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2096
  call void @llvm.dbg.value(metadata i8 %472, metadata !1986, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %441, metadata !1985, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %440, metadata !1984, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %439, metadata !1979, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %438, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %371, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %437, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %375, metadata !1968, metadata !DIExpression()), !dbg !2029
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %372, metadata !2020, metadata !DIExpression()), !dbg !2298
  %373 = and i1 %102, %368
  br label %374, !dbg !2299

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2089
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2029
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2038
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2096
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2096
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2300
  call void @llvm.dbg.value(metadata i8 %380, metadata !1985, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %379, metadata !1984, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %378, metadata !1979, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %377, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %376, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %375, metadata !1968, metadata !DIExpression()), !dbg !2029
  br i1 %373, label %381, label %427, !dbg !2301

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2306

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1985, metadata !DIExpression()), !dbg !2096
  %383 = and i8 %377, 1, !dbg !2309
  %384 = icmp eq i8 %383, 0, !dbg !2309
  %385 = and i1 %110, %384, !dbg !2309
  br i1 %385, label %386, label %402, !dbg !2309

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2311
  br i1 %387, label %388, label %390, !dbg !2315

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2311
  store i8 39, i8* %389, align 1, !dbg !2311, !tbaa !857
  br label %390, !dbg !2311

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %391, metadata !1969, metadata !DIExpression()), !dbg !2029
  %392 = icmp ult i64 %391, %129, !dbg !2316
  br i1 %392, label %393, label %395, !dbg !2319

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2316
  store i8 36, i8* %394, align 1, !dbg !2316, !tbaa !857
  br label %395, !dbg !2316

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %396, metadata !1969, metadata !DIExpression()), !dbg !2029
  %397 = icmp ult i64 %396, %129, !dbg !2320
  br i1 %397, label %398, label %400, !dbg !2323

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2320
  store i8 39, i8* %399, align 1, !dbg !2320, !tbaa !857
  br label %400, !dbg !2320

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %401, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2029
  br label %402, !dbg !2324

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2029
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2029
  call void @llvm.dbg.value(metadata i8 %404, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %403, metadata !1969, metadata !DIExpression()), !dbg !2029
  %405 = icmp ult i64 %403, %129, !dbg !2325
  br i1 %405, label %406, label %408, !dbg !2328

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2325
  store i8 92, i8* %407, align 1, !dbg !2325, !tbaa !857
  br label %408, !dbg !2325

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %409, metadata !1969, metadata !DIExpression()), !dbg !2029
  %410 = icmp ult i64 %409, %129, !dbg !2329
  br i1 %410, label %411, label %415, !dbg !2332

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2329
  %413 = or i8 %412, 48, !dbg !2329
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2329
  store i8 %413, i8* %414, align 1, !dbg !2329, !tbaa !857
  br label %415, !dbg !2329

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %416, metadata !1969, metadata !DIExpression()), !dbg !2029
  %417 = icmp ult i64 %416, %129, !dbg !2333
  br i1 %417, label %418, label %423, !dbg !2336

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2333
  %420 = and i8 %419, 7, !dbg !2333
  %421 = or i8 %420, 48, !dbg !2333
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2333
  store i8 %421, i8* %422, align 1, !dbg !2333, !tbaa !857
  br label %423, !dbg !2333

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %424, metadata !1969, metadata !DIExpression()), !dbg !2029
  %425 = and i8 %378, 7, !dbg !2337
  %426 = or i8 %425, 48, !dbg !2338
  call void @llvm.dbg.value(metadata i8 %426, metadata !1979, metadata !DIExpression()), !dbg !2096
  br label %436, !dbg !2339

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2340
  %429 = icmp eq i8 %428, 0, !dbg !2340
  br i1 %429, label %436, label %430, !dbg !2342

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2343
  br i1 %431, label %432, label %434, !dbg !2347

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2343
  store i8 92, i8* %433, align 1, !dbg !2343, !tbaa !857
  br label %434, !dbg !2343

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %435, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2096
  br label %436, !dbg !2348

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2029
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2038
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2096
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2096
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2096
  call void @llvm.dbg.value(metadata i8 %441, metadata !1985, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %440, metadata !1984, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %439, metadata !1979, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %438, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %437, metadata !1969, metadata !DIExpression()), !dbg !2029
  %442 = add i64 %375, 1, !dbg !2349
  %443 = icmp ugt i64 %372, %442, !dbg !2351
  br i1 %443, label %444, label %471, !dbg !2352

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2353
  %446 = icmp ne i8 %445, 0, !dbg !2353
  %447 = and i8 %441, 1, !dbg !2353
  %448 = icmp eq i8 %447, 0, !dbg !2353
  %449 = and i1 %446, %448, !dbg !2353
  br i1 %449, label %450, label %461, !dbg !2353

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2356
  br i1 %451, label %452, label %454, !dbg !2360

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2356
  store i8 39, i8* %453, align 1, !dbg !2356, !tbaa !857
  br label %454, !dbg !2356

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %455, metadata !1969, metadata !DIExpression()), !dbg !2029
  %456 = icmp ult i64 %455, %129, !dbg !2361
  br i1 %456, label %457, label %459, !dbg !2364

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2361
  store i8 39, i8* %458, align 1, !dbg !2361, !tbaa !857
  br label %459, !dbg !2361

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %460, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2029
  br label %461, !dbg !2365

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2366
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2029
  call void @llvm.dbg.value(metadata i8 %463, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %462, metadata !1969, metadata !DIExpression()), !dbg !2029
  %464 = icmp ult i64 %462, %129, !dbg !2367
  br i1 %464, label %465, label %467, !dbg !2370

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2367
  store i8 %439, i8* %466, align 1, !dbg !2367, !tbaa !857
  br label %467, !dbg !2367

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %468, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %442, metadata !1968, metadata !DIExpression()), !dbg !2029
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2371
  %470 = load i8, i8* %469, align 1, !dbg !2371, !tbaa !857
  call void @llvm.dbg.value(metadata i8 %470, metadata !1979, metadata !DIExpression()), !dbg !2096
  br label %374, !dbg !2372, !llvm.loop !2373

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2096
  call void @llvm.dbg.value(metadata i8 %472, metadata !1986, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %441, metadata !1985, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %440, metadata !1984, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %439, metadata !1979, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %438, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %371, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %437, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %375, metadata !1968, metadata !DIExpression()), !dbg !2029
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2089
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2029
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2034
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2376
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2029
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2029
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2096
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2096
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2096
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %482, metadata !1986, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %481, metadata !1985, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %156, metadata !1984, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %480, metadata !1979, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %479, metadata !1977, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %478, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %477, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %476, metadata !1970, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %475, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %474, metadata !1968, metadata !DIExpression()), !dbg !2029
  br i1 %116, label %494, label %484, !dbg !2377

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2379
  %486 = zext i8 %485 to i64, !dbg !2379
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2380
  %488 = load i32, i32* %487, align 4, !dbg !2380, !tbaa !850
  %489 = and i8 %480, 31, !dbg !2381
  %490 = zext i8 %489 to i32, !dbg !2381
  %491 = shl nuw i32 1, %490, !dbg !2382
  %492 = and i32 %488, %491, !dbg !2382
  %493 = icmp eq i32 %492, 0, !dbg !2382
  br i1 %493, label %494, label %495, !dbg !2383

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2384

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2385
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2029
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2034
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2376
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2038
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2039
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2096
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2096
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %503, metadata !1986, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %502, metadata !1979, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %501, metadata !1977, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %500, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %499, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %498, metadata !1970, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %497, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %496, metadata !1968, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.label(metadata !2026), !dbg !2386
  br i1 %109, label %505, label %635, !dbg !2387

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1985, metadata !DIExpression()), !dbg !2096
  %506 = and i8 %500, 1, !dbg !2389
  %507 = icmp eq i8 %506, 0, !dbg !2389
  %508 = and i1 %110, %507, !dbg !2389
  br i1 %508, label %509, label %525, !dbg !2389

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2391
  br i1 %510, label %511, label %513, !dbg !2395

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2391
  store i8 39, i8* %512, align 1, !dbg !2391, !tbaa !857
  br label %513, !dbg !2391

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %514, metadata !1969, metadata !DIExpression()), !dbg !2029
  %515 = icmp ult i64 %514, %504, !dbg !2396
  br i1 %515, label %516, label %518, !dbg !2399

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2396
  store i8 36, i8* %517, align 1, !dbg !2396, !tbaa !857
  br label %518, !dbg !2396

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %519, metadata !1969, metadata !DIExpression()), !dbg !2029
  %520 = icmp ult i64 %519, %504, !dbg !2400
  br i1 %520, label %521, label %523, !dbg !2403

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2400
  store i8 39, i8* %522, align 1, !dbg !2400, !tbaa !857
  br label %523, !dbg !2400

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %524, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2029
  br label %525, !dbg !2404

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2096
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2029
  call void @llvm.dbg.value(metadata i8 %527, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %526, metadata !1969, metadata !DIExpression()), !dbg !2029
  %528 = icmp ult i64 %526, %504, !dbg !2405
  br i1 %528, label %529, label %531, !dbg !2408

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2405
  store i8 92, i8* %530, align 1, !dbg !2405, !tbaa !857
  br label %531, !dbg !2405

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %543, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %542, metadata !1986, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %541, metadata !1985, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %540, metadata !1979, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %539, metadata !1977, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %538, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %537, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %536, metadata !1970, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %535, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %534, metadata !1968, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.label(metadata !2027), !dbg !2409
  br label %560, !dbg !2410

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2385
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2029
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2034
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2376
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2038
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2039
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2413
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2096
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2096
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %542, metadata !1986, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %541, metadata !1985, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %540, metadata !1979, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %539, metadata !1977, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %538, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %537, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %536, metadata !1970, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %535, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %534, metadata !1968, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.label(metadata !2027), !dbg !2409
  %544 = and i8 %538, 1, !dbg !2410
  %545 = icmp ne i8 %544, 0, !dbg !2410
  %546 = and i8 %541, 1, !dbg !2410
  %547 = icmp eq i8 %546, 0, !dbg !2410
  %548 = and i1 %545, %547, !dbg !2410
  br i1 %548, label %549, label %560, !dbg !2410

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2414
  br i1 %550, label %551, label %553, !dbg !2418

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2414
  store i8 39, i8* %552, align 1, !dbg !2414, !tbaa !857
  br label %553, !dbg !2414

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %554, metadata !1969, metadata !DIExpression()), !dbg !2029
  %555 = icmp ult i64 %554, %543, !dbg !2419
  br i1 %555, label %556, label %558, !dbg !2422

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2419
  store i8 39, i8* %557, align 1, !dbg !2419, !tbaa !857
  br label %558, !dbg !2419

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %559, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2029
  br label %560, !dbg !2423

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2096
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2029
  call void @llvm.dbg.value(metadata i8 %569, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %568, metadata !1969, metadata !DIExpression()), !dbg !2029
  %570 = icmp ult i64 %568, %561, !dbg !2424
  br i1 %570, label %571, label %573, !dbg !2427

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2424
  store i8 %563, i8* %572, align 1, !dbg !2424, !tbaa !857
  br label %573, !dbg !2424

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %574, metadata !1969, metadata !DIExpression()), !dbg !2029
  %575 = icmp eq i8 %562, 0, !dbg !2428
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2430
  call void @llvm.dbg.value(metadata i8 %576, metadata !1978, metadata !DIExpression()), !dbg !2029
  br label %577, !dbg !2431

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2385
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2029
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2034
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2376
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2038
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2029
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2040
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %584, metadata !1978, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %583, metadata !1977, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %582, metadata !1976, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %581, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %580, metadata !1970, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %579, metadata !1969, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %578, metadata !1968, metadata !DIExpression()), !dbg !2029
  %586 = add i64 %578, 1, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %586, metadata !1968, metadata !DIExpression()), !dbg !2029
  br label %121, !dbg !2433, !llvm.loop !2434

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2436
  %590 = and i1 %110, %589, !dbg !2438
  %591 = xor i1 %590, true, !dbg !2438
  %592 = or i1 %109, %591, !dbg !2438
  br i1 %592, label %593, label %635, !dbg !2438

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2439
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2439
  br i1 %597, label %598, label %607, !dbg !2439

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2441
  %600 = icmp eq i8 %599, 0, !dbg !2441
  br i1 %600, label %603, label %601, !dbg !2444

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2445
  br label %652, !dbg !2446

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2447
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2449
  br i1 %606, label %26, label %607, !dbg !2449

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2450
  %610 = and i1 %609, %608, !dbg !2452
  br i1 %610, label %611, label %626, !dbg !2452

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1971, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %123, metadata !1969, metadata !DIExpression()), !dbg !2029
  %612 = load i8, i8* %97, align 1, !dbg !2453, !tbaa !857
  %613 = icmp eq i8 %612, 0, !dbg !2456
  br i1 %613, label %626, label %614, !dbg !2456

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1971, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %617, metadata !1969, metadata !DIExpression()), !dbg !2029
  %618 = icmp ult i64 %617, %129, !dbg !2457
  br i1 %618, label %619, label %621, !dbg !2460

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2457
  store i8 %615, i8* %620, align 1, !dbg !2457, !tbaa !857
  br label %621, !dbg !2457

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %622, metadata !1969, metadata !DIExpression()), !dbg !2029
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2461
  call void @llvm.dbg.value(metadata i8* %623, metadata !1971, metadata !DIExpression()), !dbg !2029
  %624 = load i8, i8* %623, align 1, !dbg !2453, !tbaa !857
  %625 = icmp eq i8 %624, 0, !dbg !2456
  br i1 %625, label %626, label %614, !dbg !2456, !llvm.loop !2462

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2071
  call void @llvm.dbg.value(metadata i64 %627, metadata !1969, metadata !DIExpression()), !dbg !2029
  %628 = icmp ult i64 %627, %129, !dbg !2464
  br i1 %628, label %629, label %652, !dbg !2466

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2467
  store i8 0, i8* %630, align 1, !dbg !2468, !tbaa !857
  br label %652, !dbg !2467

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %637, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.label(metadata !2028), !dbg !2469
  %633 = icmp eq i8 %101, 0, !dbg !2470
  %634 = select i1 %633, i32 2, i32 4, !dbg !2470
  br label %642, !dbg !2470

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1960, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %637, metadata !1962, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.label(metadata !2028), !dbg !2469
  %639 = icmp eq i32 %93, 2, !dbg !2472
  %640 = icmp eq i8 %636, 0, !dbg !2470
  %641 = select i1 %640, i32 2, i32 4, !dbg !2470
  br i1 %639, label %642, label %646, !dbg !2470

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2470

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1963, metadata !DIExpression()), !dbg !2029
  %650 = and i32 %5, -3, !dbg !2473
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2474
  br label %652, !dbg !2475

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2476
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2477 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2481, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2485
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2486
  call void @llvm.dbg.value(metadata i8* %3, metadata !2483, metadata !DIExpression()), !dbg !2485
  %4 = icmp eq i8* %3, %0, !dbg !2487
  br i1 %4, label %5, label %72, !dbg !2489

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %6, metadata !2484, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8* %6, metadata !2491, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* undef, metadata !2497, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 85, metadata !2498, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 84, metadata !2499, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 70, metadata !2500, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 45, metadata !2501, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 56, metadata !2502, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2507
  %7 = load i8, i8* %6, align 1, !dbg !2510, !tbaa !857
  %8 = and i8 %7, -33, !dbg !2510
  %9 = sext i8 %8 to i32, !dbg !2510
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2510

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2512, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* undef, metadata !2517, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 84, metadata !2518, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 70, metadata !2519, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 45, metadata !2520, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 56, metadata !2521, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2526
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2530
  %12 = load i8, i8* %11, align 1, !dbg !2530, !tbaa !857
  %13 = and i8 %12, -33, !dbg !2530
  %14 = icmp eq i8 %13, 84, !dbg !2530
  br i1 %14, label %15, label %69, !dbg !2530

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2532, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8* undef, metadata !2537, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 70, metadata !2538, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 45, metadata !2539, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 56, metadata !2540, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 0, metadata !2541, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 0, metadata !2542, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 0, metadata !2543, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2545
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2549
  %17 = load i8, i8* %16, align 1, !dbg !2549, !tbaa !857
  %18 = and i8 %17, -33, !dbg !2549
  %19 = icmp eq i8 %18, 70, !dbg !2549
  br i1 %19, label %20, label %69, !dbg !2549

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2551, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8* undef, metadata !2556, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 45, metadata !2557, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 56, metadata !2558, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 0, metadata !2559, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 0, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 0, metadata !2561, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2563
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2567
  %22 = load i8, i8* %21, align 1, !dbg !2567, !tbaa !857
  %23 = icmp eq i8 %22, 45, !dbg !2567
  br i1 %23, label %24, label %69, !dbg !2569

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2570, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* undef, metadata !2575, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 56, metadata !2576, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 0, metadata !2577, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2581
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2585
  %26 = load i8, i8* %25, align 1, !dbg !2585, !tbaa !857
  %27 = icmp eq i8 %26, 56, !dbg !2585
  br i1 %27, label %28, label %69, !dbg !2587

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2588, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8* undef, metadata !2593, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2594, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2598
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2602
  %30 = load i8, i8* %29, align 1, !dbg !2602, !tbaa !857
  %31 = icmp eq i8 %30, 0, !dbg !2602
  br i1 %31, label %32, label %69, !dbg !2604

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2605, !tbaa !857
  %34 = icmp eq i8 %33, 96, !dbg !2606
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.91, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.92, i64 0, i64 0), !dbg !2605
  br label %72, !dbg !2607

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2512, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8* undef, metadata !2517, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 66, metadata !2518, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 49, metadata !2519, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 56, metadata !2520, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 48, metadata !2521, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 51, metadata !2522, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 48, metadata !2523, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2608
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2612
  %38 = load i8, i8* %37, align 1, !dbg !2612, !tbaa !857
  %39 = and i8 %38, -33, !dbg !2612
  %40 = icmp eq i8 %39, 66, !dbg !2612
  br i1 %40, label %41, label %69, !dbg !2612

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2532, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* undef, metadata !2537, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 49, metadata !2538, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 56, metadata !2539, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 48, metadata !2540, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 51, metadata !2541, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 48, metadata !2542, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 0, metadata !2543, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2613
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2615
  %43 = load i8, i8* %42, align 1, !dbg !2615, !tbaa !857
  %44 = icmp eq i8 %43, 49, !dbg !2615
  br i1 %44, label %45, label %69, !dbg !2616

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2551, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* undef, metadata !2556, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 56, metadata !2557, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 48, metadata !2558, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 51, metadata !2559, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 48, metadata !2560, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 0, metadata !2561, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2617
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2619
  %47 = load i8, i8* %46, align 1, !dbg !2619, !tbaa !857
  %48 = icmp eq i8 %47, 56, !dbg !2619
  br i1 %48, label %49, label %69, !dbg !2620

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2570, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8* undef, metadata !2575, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 48, metadata !2576, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 51, metadata !2577, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 48, metadata !2578, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2621
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2623
  %51 = load i8, i8* %50, align 1, !dbg !2623, !tbaa !857
  %52 = icmp eq i8 %51, 48, !dbg !2623
  br i1 %52, label %53, label %69, !dbg !2624

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2588, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* undef, metadata !2593, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 51, metadata !2594, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 48, metadata !2595, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2625
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2627
  %55 = load i8, i8* %54, align 1, !dbg !2627, !tbaa !857
  %56 = icmp eq i8 %55, 51, !dbg !2627
  br i1 %56, label %57, label %69, !dbg !2628

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2629, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* undef, metadata !2634, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 48, metadata !2635, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 0, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 0, metadata !2637, metadata !DIExpression()), !dbg !2638
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2642
  %59 = load i8, i8* %58, align 1, !dbg !2642, !tbaa !857
  %60 = icmp eq i8 %59, 48, !dbg !2642
  br i1 %60, label %61, label %69, !dbg !2644

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2645, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8* undef, metadata !2650, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 0, metadata !2651, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2653
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2657
  %63 = load i8, i8* %62, align 1, !dbg !2657, !tbaa !857
  %64 = icmp eq i8 %63, 0, !dbg !2657
  br i1 %64, label %65, label %69, !dbg !2659

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2660, !tbaa !857
  %67 = icmp eq i8 %66, 96, !dbg !2661
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.93, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.94, i64 0, i64 0), !dbg !2660
  br label %72, !dbg !2662

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2663
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), !dbg !2664
  br label %72, !dbg !2665

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2485
  ret i8* %73, !dbg !2666
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2667 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2671 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2677 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2681, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %1, metadata !2682, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8* %0, metadata !2685, metadata !DIExpression()) #27, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %1, metadata !2690, metadata !DIExpression()) #27, !dbg !2698
  call void @llvm.dbg.value(metadata i64* null, metadata !2691, metadata !DIExpression()) #27, !dbg !2698
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2692, metadata !DIExpression()) #27, !dbg !2698
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2700
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2700
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2693, metadata !DIExpression()) #27, !dbg !2698
  %6 = tail call i32* @__errno_location() #31, !dbg !2701
  %7 = load i32, i32* %6, align 4, !dbg !2701, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %7, metadata !2694, metadata !DIExpression()) #27, !dbg !2698
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2702
  %9 = load i32, i32* %8, align 4, !dbg !2702, !tbaa !1903
  %10 = or i32 %9, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %10, metadata !2695, metadata !DIExpression()) #27, !dbg !2698
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2704
  %12 = load i32, i32* %11, align 8, !dbg !2704, !tbaa !1852
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2705
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2706
  %15 = load i8*, i8** %14, align 8, !dbg !2706, !tbaa !1925
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2707
  %17 = load i8*, i8** %16, align 8, !dbg !2707, !tbaa !1928
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2708
  %19 = add i64 %18, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %19, metadata !2696, metadata !DIExpression()) #27, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %19, metadata !2710, metadata !DIExpression()) #27, !dbg !2715
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %20, metadata !2697, metadata !DIExpression()) #27, !dbg !2698
  %21 = load i32, i32* %11, align 8, !dbg !2718, !tbaa !1852
  %22 = load i8*, i8** %14, align 8, !dbg !2719, !tbaa !1925
  %23 = load i8*, i8** %16, align 8, !dbg !2720, !tbaa !1928
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2721
  store i32 %7, i32* %6, align 4, !dbg !2722, !tbaa !850
  ret i8* %20, !dbg !2723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2686 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2685, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %1, metadata !2690, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64* %2, metadata !2691, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2692, metadata !DIExpression()), !dbg !2724
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2725
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2725
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2693, metadata !DIExpression()), !dbg !2724
  %7 = tail call i32* @__errno_location() #31, !dbg !2726
  %8 = load i32, i32* %7, align 4, !dbg !2726, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %8, metadata !2694, metadata !DIExpression()), !dbg !2724
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2727
  %10 = load i32, i32* %9, align 4, !dbg !2727, !tbaa !1903
  %11 = icmp eq i64* %2, null, !dbg !2728
  %12 = zext i1 %11 to i32, !dbg !2728
  %13 = or i32 %10, %12, !dbg !2729
  call void @llvm.dbg.value(metadata i32 %13, metadata !2695, metadata !DIExpression()), !dbg !2724
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2730
  %15 = load i32, i32* %14, align 8, !dbg !2730, !tbaa !1852
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2731
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2732
  %18 = load i8*, i8** %17, align 8, !dbg !2732, !tbaa !1925
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2733
  %20 = load i8*, i8** %19, align 8, !dbg !2733, !tbaa !1928
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2734
  %22 = add i64 %21, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %22, metadata !2696, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %22, metadata !2710, metadata !DIExpression()) #27, !dbg !2736
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %23, metadata !2697, metadata !DIExpression()), !dbg !2724
  %24 = load i32, i32* %14, align 8, !dbg !2739, !tbaa !1852
  %25 = load i8*, i8** %17, align 8, !dbg !2740, !tbaa !1925
  %26 = load i8*, i8** %19, align 8, !dbg !2741, !tbaa !1928
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2742
  store i32 %8, i32* %7, align 4, !dbg !2743, !tbaa !850
  br i1 %11, label %29, label %28, !dbg !2744

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2745, !tbaa !1106
  br label %29, !dbg !2747

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2749 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2753, !tbaa !671
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2751, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 1, metadata !2752, metadata !DIExpression()), !dbg !2754
  %2 = load i32, i32* @nslots, align 4, !dbg !2755, !tbaa !850
  %3 = icmp sgt i32 %2, 1, !dbg !2758
  br i1 %3, label %4, label %12, !dbg !2759

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2758
  br label %6, !dbg !2759

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2752, metadata !DIExpression()), !dbg !2754
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2760
  %9 = load i8*, i8** %8, align 8, !dbg !2760, !tbaa !2761
  tail call void @free(i8* %9) #27, !dbg !2763
  %10 = add nuw nsw i64 %7, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %10, metadata !2752, metadata !DIExpression()), !dbg !2754
  %11 = icmp eq i64 %10, %5, !dbg !2758
  br i1 %11, label %12, label %6, !dbg !2759, !llvm.loop !2765

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2767
  %14 = load i8*, i8** %13, align 8, !dbg !2767, !tbaa !2761
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2769
  br i1 %15, label %17, label %16, !dbg !2770

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2771
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2773, !tbaa !2774
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2775, !tbaa !2761
  br label %17, !dbg !2776

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2777
  br i1 %18, label %21, label %19, !dbg !2779

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2780
  tail call void @free(i8* %20) #27, !dbg !2782
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2783, !tbaa !671
  br label %21, !dbg !2784

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2785, !tbaa !850
  ret void, !dbg !2786
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2787 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2789, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %1, metadata !2790, metadata !DIExpression()), !dbg !2791
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2792
  ret i8* %3, !dbg !2793
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2794 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2798, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* %1, metadata !2799, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 %2, metadata !2800, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2801, metadata !DIExpression()), !dbg !2813
  %5 = tail call i32* @__errno_location() #31, !dbg !2814
  %6 = load i32, i32* %5, align 4, !dbg !2814, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %6, metadata !2802, metadata !DIExpression()), !dbg !2813
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2815, !tbaa !671
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2803, metadata !DIExpression()), !dbg !2813
  %8 = icmp slt i32 %0, 0, !dbg !2816
  br i1 %8, label %9, label %10, !dbg !2818

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2819
  unreachable, !dbg !2819

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2820, !tbaa !850
  %12 = icmp sgt i32 %11, %0, !dbg !2821
  br i1 %12, label %34, label %13, !dbg !2822

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2823
  call void @llvm.dbg.value(metadata i1 %14, metadata !2804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2824
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2807, metadata !DIExpression()), !dbg !2824
  %15 = icmp eq i32 %0, 2147483647, !dbg !2825
  br i1 %15, label %16, label %17, !dbg !2827

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2828
  unreachable, !dbg !2828

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2829
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2829
  %20 = add nuw nsw i32 %0, 1, !dbg !2830
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2831
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !2832
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2832
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2803, metadata !DIExpression()), !dbg !2813
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2833, !tbaa !671
  br i1 %14, label %25, label %26, !dbg !2834

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2835, !tbaa.struct !2837
  br label %26, !dbg !2838

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2839, !tbaa !850
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2840
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2841
  %31 = sub nsw i32 %20, %27, !dbg !2842
  %32 = sext i32 %31 to i64, !dbg !2843
  %33 = shl nsw i64 %32, 4, !dbg !2844
  call void @llvm.dbg.value(metadata i8* %30, metadata !2238, metadata !DIExpression()) #27, !dbg !2845
  call void @llvm.dbg.value(metadata i32 0, metadata !2243, metadata !DIExpression()) #27, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %33, metadata !2244, metadata !DIExpression()) #27, !dbg !2845
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !2847
  store i32 %20, i32* @nslots, align 4, !dbg !2848, !tbaa !850
  br label %34, !dbg !2849

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2813
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2803, metadata !DIExpression()), !dbg !2813
  %36 = zext i32 %0 to i64, !dbg !2850
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2851
  %38 = load i64, i64* %37, align 8, !dbg !2851, !tbaa !2774
  call void @llvm.dbg.value(metadata i64 %38, metadata !2808, metadata !DIExpression()), !dbg !2852
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2853
  %40 = load i8*, i8** %39, align 8, !dbg !2853, !tbaa !2761
  call void @llvm.dbg.value(metadata i8* %40, metadata !2810, metadata !DIExpression()), !dbg !2852
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2854
  %42 = load i32, i32* %41, align 4, !dbg !2854, !tbaa !1903
  %43 = or i32 %42, 1, !dbg !2855
  call void @llvm.dbg.value(metadata i32 %43, metadata !2811, metadata !DIExpression()), !dbg !2852
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2856
  %45 = load i32, i32* %44, align 8, !dbg !2856, !tbaa !1852
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2857
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2858
  %48 = load i8*, i8** %47, align 8, !dbg !2858, !tbaa !1925
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2859
  %50 = load i8*, i8** %49, align 8, !dbg !2859, !tbaa !1928
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %51, metadata !2812, metadata !DIExpression()), !dbg !2852
  %52 = icmp ugt i64 %38, %51, !dbg !2861
  br i1 %52, label %63, label %53, !dbg !2863

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %54, metadata !2808, metadata !DIExpression()), !dbg !2852
  store i64 %54, i64* %37, align 8, !dbg !2866, !tbaa !2774
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2867
  br i1 %55, label %57, label %56, !dbg !2869

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !2870
  br label %57, !dbg !2870

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2710, metadata !DIExpression()) #27, !dbg !2871
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %58, metadata !2810, metadata !DIExpression()), !dbg !2852
  store i8* %58, i8** %39, align 8, !dbg !2874, !tbaa !2761
  %59 = load i32, i32* %44, align 8, !dbg !2875, !tbaa !1852
  %60 = load i8*, i8** %47, align 8, !dbg !2876, !tbaa !1925
  %61 = load i8*, i8** %49, align 8, !dbg !2877, !tbaa !1928
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2878
  br label %63, !dbg !2879

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2852
  call void @llvm.dbg.value(metadata i8* %64, metadata !2810, metadata !DIExpression()), !dbg !2852
  store i32 %6, i32* %5, align 4, !dbg !2880, !tbaa !850
  ret i8* %64, !dbg !2881
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %1, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %2, metadata !2888, metadata !DIExpression()), !dbg !2889
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2890
  ret i8* %4, !dbg !2891
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32 0, metadata !2789, metadata !DIExpression()) #27, !dbg !2896
  call void @llvm.dbg.value(metadata i8* %0, metadata !2790, metadata !DIExpression()) #27, !dbg !2896
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2898
  ret i8* %2, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2900 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 0, metadata !2886, metadata !DIExpression()) #27, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()) #27, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %1, metadata !2888, metadata !DIExpression()) #27, !dbg !2907
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2909
  ret i8* %3, !dbg !2910
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2911 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2915, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 %1, metadata !2916, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8* %2, metadata !2917, metadata !DIExpression()), !dbg !2919
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2920
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2920
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2918, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2922), !dbg !2925
  call void @llvm.dbg.value(metadata i32 %1, metadata !2926, metadata !DIExpression()) #27, !dbg !2932
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2931, metadata !DIExpression()) #27, !dbg !2934
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2934, !alias.scope !2922
  %6 = icmp eq i32 %1, 10, !dbg !2935
  br i1 %6, label %7, label %8, !dbg !2937

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2938, !noalias !2922
  unreachable, !dbg !2938

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2939
  store i32 %1, i32* %9, align 8, !dbg !2940, !tbaa !1852, !alias.scope !2922
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2942
  ret i8* %10, !dbg !2943
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2944 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2948, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 %1, metadata !2949, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8* %2, metadata !2950, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %3, metadata !2951, metadata !DIExpression()), !dbg !2953
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2954
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2954
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2952, metadata !DIExpression()), !dbg !2955
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2956), !dbg !2959
  call void @llvm.dbg.value(metadata i32 %1, metadata !2926, metadata !DIExpression()) #27, !dbg !2960
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2931, metadata !DIExpression()) #27, !dbg !2962
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !2962, !alias.scope !2956
  %7 = icmp eq i32 %1, 10, !dbg !2963
  br i1 %7, label %8, label %9, !dbg !2964

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2965, !noalias !2956
  unreachable, !dbg !2965

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2966
  store i32 %1, i32* %10, align 8, !dbg !2967, !tbaa !1852, !alias.scope !2956
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2968
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2969
  ret i8* %11, !dbg !2970
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2971 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2975, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8* %1, metadata !2976, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i32 0, metadata !2915, metadata !DIExpression()) #27, !dbg !2978
  call void @llvm.dbg.value(metadata i32 %0, metadata !2916, metadata !DIExpression()) #27, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %1, metadata !2917, metadata !DIExpression()) #27, !dbg !2978
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2980
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2980
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2918, metadata !DIExpression()) #27, !dbg !2981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2982) #27, !dbg !2985
  call void @llvm.dbg.value(metadata i32 %0, metadata !2926, metadata !DIExpression()) #27, !dbg !2986
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2931, metadata !DIExpression()) #27, !dbg !2988
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !2988, !alias.scope !2982
  %5 = icmp eq i32 %0, 10, !dbg !2989
  br i1 %5, label %6, label %7, !dbg !2990

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !2991, !noalias !2982
  unreachable, !dbg !2991

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2992
  store i32 %0, i32* %8, align 8, !dbg !2993, !tbaa !1852, !alias.scope !2982
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2994
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2995
  ret i8* %9, !dbg !2996
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2997 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3001, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %1, metadata !3002, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %2, metadata !3003, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 0, metadata !2948, metadata !DIExpression()) #27, !dbg !3005
  call void @llvm.dbg.value(metadata i32 %0, metadata !2949, metadata !DIExpression()) #27, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %1, metadata !2950, metadata !DIExpression()) #27, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %2, metadata !2951, metadata !DIExpression()) #27, !dbg !3005
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3007
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3007
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2952, metadata !DIExpression()) #27, !dbg !3008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3009) #27, !dbg !3012
  call void @llvm.dbg.value(metadata i32 %0, metadata !2926, metadata !DIExpression()) #27, !dbg !3013
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2931, metadata !DIExpression()) #27, !dbg !3015
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !3015, !alias.scope !3009
  %6 = icmp eq i32 %0, 10, !dbg !3016
  br i1 %6, label %7, label %8, !dbg !3017

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3018, !noalias !3009
  unreachable, !dbg !3018

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3019
  store i32 %0, i32* %9, align 8, !dbg !3020, !tbaa !1852, !alias.scope !3009
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !3021
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3022
  ret i8* %10, !dbg !3023
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3024 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 %2, metadata !3030, metadata !DIExpression()), !dbg !3032
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3033
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3033
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3031, metadata !DIExpression()), !dbg !3034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3035, !tbaa.struct !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1870, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8 %2, metadata !1871, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i32 1, metadata !1872, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8 %2, metadata !1873, metadata !DIExpression()), !dbg !3037
  %6 = lshr i8 %2, 5, !dbg !3039
  %7 = zext i8 %6 to i64, !dbg !3039
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3040
  call void @llvm.dbg.value(metadata i32* %8, metadata !1874, metadata !DIExpression()), !dbg !3037
  %9 = and i8 %2, 31, !dbg !3041
  %10 = zext i8 %9 to i32, !dbg !3041
  call void @llvm.dbg.value(metadata i32 %10, metadata !1876, metadata !DIExpression()), !dbg !3037
  %11 = load i32, i32* %8, align 4, !dbg !3042, !tbaa !850
  %12 = lshr i32 %11, %10, !dbg !3043
  %13 = and i32 %12, 1, !dbg !3044
  call void @llvm.dbg.value(metadata i32 %13, metadata !1877, metadata !DIExpression()), !dbg !3037
  %14 = xor i32 %13, 1, !dbg !3045
  %15 = shl i32 %14, %10, !dbg !3046
  %16 = xor i32 %15, %11, !dbg !3047
  store i32 %16, i32* %8, align 4, !dbg !3047, !tbaa !850
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3048
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3049
  ret i8* %17, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3051 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3055, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8 %1, metadata !3056, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #27, !dbg !3058
  call void @llvm.dbg.value(metadata i64 -1, metadata !3029, metadata !DIExpression()) #27, !dbg !3058
  call void @llvm.dbg.value(metadata i8 %1, metadata !3030, metadata !DIExpression()) #27, !dbg !3058
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3060
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3060
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3031, metadata !DIExpression()) #27, !dbg !3061
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3062, !tbaa.struct !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1870, metadata !DIExpression()) #27, !dbg !3063
  call void @llvm.dbg.value(metadata i8 %1, metadata !1871, metadata !DIExpression()) #27, !dbg !3063
  call void @llvm.dbg.value(metadata i32 1, metadata !1872, metadata !DIExpression()) #27, !dbg !3063
  call void @llvm.dbg.value(metadata i8 %1, metadata !1873, metadata !DIExpression()) #27, !dbg !3063
  %5 = lshr i8 %1, 5, !dbg !3065
  %6 = zext i8 %5 to i64, !dbg !3065
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3066
  call void @llvm.dbg.value(metadata i32* %7, metadata !1874, metadata !DIExpression()) #27, !dbg !3063
  %8 = and i8 %1, 31, !dbg !3067
  %9 = zext i8 %8 to i32, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %9, metadata !1876, metadata !DIExpression()) #27, !dbg !3063
  %10 = load i32, i32* %7, align 4, !dbg !3068, !tbaa !850
  %11 = lshr i32 %10, %9, !dbg !3069
  %12 = and i32 %11, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i32 %12, metadata !1877, metadata !DIExpression()) #27, !dbg !3063
  %13 = xor i32 %12, 1, !dbg !3071
  %14 = shl i32 %13, %9, !dbg !3072
  %15 = xor i32 %14, %10, !dbg !3073
  store i32 %15, i32* %7, align 4, !dbg !3073, !tbaa !850
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3074
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3075
  ret i8* %16, !dbg !3076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3077 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i8* %0, metadata !3055, metadata !DIExpression()) #27, !dbg !3081
  call void @llvm.dbg.value(metadata i8 58, metadata !3056, metadata !DIExpression()) #27, !dbg !3081
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #27, !dbg !3083
  call void @llvm.dbg.value(metadata i64 -1, metadata !3029, metadata !DIExpression()) #27, !dbg !3083
  call void @llvm.dbg.value(metadata i8 58, metadata !3030, metadata !DIExpression()) #27, !dbg !3083
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3085
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3085
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3031, metadata !DIExpression()) #27, !dbg !3086
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3087, !tbaa.struct !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1870, metadata !DIExpression()) #27, !dbg !3088
  call void @llvm.dbg.value(metadata i8 58, metadata !1871, metadata !DIExpression()) #27, !dbg !3088
  call void @llvm.dbg.value(metadata i32 1, metadata !1872, metadata !DIExpression()) #27, !dbg !3088
  call void @llvm.dbg.value(metadata i8 58, metadata !1873, metadata !DIExpression()) #27, !dbg !3088
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3090
  call void @llvm.dbg.value(metadata i32* %4, metadata !1874, metadata !DIExpression()) #27, !dbg !3088
  call void @llvm.dbg.value(metadata i32 26, metadata !1876, metadata !DIExpression()) #27, !dbg !3088
  %5 = load i32, i32* %4, align 4, !dbg !3091, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %5, metadata !1877, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3088
  %6 = or i32 %5, 67108864, !dbg !3092
  store i32 %6, i32* %4, align 4, !dbg !3092, !tbaa !850
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !3093
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3094
  ret i8* %7, !dbg !3095
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3096 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3098, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %1, metadata !3099, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #27, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()) #27, !dbg !3101
  call void @llvm.dbg.value(metadata i8 58, metadata !3030, metadata !DIExpression()) #27, !dbg !3101
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3103
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3103
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3031, metadata !DIExpression()) #27, !dbg !3104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3105, !tbaa.struct !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1870, metadata !DIExpression()) #27, !dbg !3106
  call void @llvm.dbg.value(metadata i8 58, metadata !1871, metadata !DIExpression()) #27, !dbg !3106
  call void @llvm.dbg.value(metadata i32 1, metadata !1872, metadata !DIExpression()) #27, !dbg !3106
  call void @llvm.dbg.value(metadata i8 58, metadata !1873, metadata !DIExpression()) #27, !dbg !3106
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3108
  call void @llvm.dbg.value(metadata i32* %5, metadata !1874, metadata !DIExpression()) #27, !dbg !3106
  call void @llvm.dbg.value(metadata i32 26, metadata !1876, metadata !DIExpression()) #27, !dbg !3106
  %6 = load i32, i32* %5, align 4, !dbg !3109, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %6, metadata !1877, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3106
  %7 = or i32 %6, 67108864, !dbg !3110
  store i32 %7, i32* %5, align 4, !dbg !3110, !tbaa !850
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !3111
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3112
  ret i8* %8, !dbg !3113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3114 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2931, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %0, metadata !3116, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %1, metadata !3117, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %2, metadata !3118, metadata !DIExpression()), !dbg !3122
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3123
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3123
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3119, metadata !DIExpression()), !dbg !3124
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3125
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3126), !dbg !3125
  call void @llvm.dbg.value(metadata i32 %1, metadata !2926, metadata !DIExpression()) #27, !dbg !3129
  call void @llvm.dbg.value(metadata i32 0, metadata !2931, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3129
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3120, !alias.scope !3126
  %8 = icmp eq i32 %1, 10, !dbg !3130
  br i1 %8, label %9, label %10, !dbg !3131

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3132, !noalias !3126
  unreachable, !dbg !3132

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2931, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3129
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3125
  store i32 %1, i32* %11, align 8, !dbg !3125, !tbaa.struct !3036
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3125
  %13 = bitcast i32* %12 to i8*, !dbg !3125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3125, !tbaa.struct !3133
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1870, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8 58, metadata !1871, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 1, metadata !1872, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8 58, metadata !1873, metadata !DIExpression()), !dbg !3134
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3136
  call void @llvm.dbg.value(metadata i32* %14, metadata !1874, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 26, metadata !1876, metadata !DIExpression()), !dbg !3134
  %15 = load i32, i32* %14, align 4, !dbg !3137, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %15, metadata !1877, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3134
  %16 = or i32 %15, 67108864, !dbg !3138
  store i32 %16, i32* %14, align 4, !dbg !3138, !tbaa !850
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3139
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3140
  ret i8* %17, !dbg !3141
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3142 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3146, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8* %1, metadata !3147, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8* %2, metadata !3148, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8* %3, metadata !3149, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i32 %0, metadata !3151, metadata !DIExpression()) #27, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %1, metadata !3156, metadata !DIExpression()) #27, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %2, metadata !3157, metadata !DIExpression()) #27, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %3, metadata !3158, metadata !DIExpression()) #27, !dbg !3161
  call void @llvm.dbg.value(metadata i64 -1, metadata !3159, metadata !DIExpression()) #27, !dbg !3161
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3163
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3163
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3160, metadata !DIExpression()) #27, !dbg !3164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3165, !tbaa.struct !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1910, metadata !DIExpression()) #27, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %1, metadata !1911, metadata !DIExpression()) #27, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %2, metadata !1912, metadata !DIExpression()) #27, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1910, metadata !DIExpression()) #27, !dbg !3166
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3168
  store i32 10, i32* %7, align 8, !dbg !3169, !tbaa !1852
  %8 = icmp ne i8* %1, null, !dbg !3170
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3171
  br i1 %10, label %12, label %11, !dbg !3171

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3172
  unreachable, !dbg !3172

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3173
  store i8* %1, i8** %13, align 8, !dbg !3174, !tbaa !1925
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3175
  store i8* %2, i8** %14, align 8, !dbg !3176, !tbaa !1928
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !3177
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3178
  ret i8* %15, !dbg !3179
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3152 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3151, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %1, metadata !3156, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %2, metadata !3157, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %3, metadata !3158, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %4, metadata !3159, metadata !DIExpression()), !dbg !3180
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3181
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3181
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3160, metadata !DIExpression()), !dbg !3182
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3183, !tbaa.struct !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1910, metadata !DIExpression()) #27, !dbg !3184
  call void @llvm.dbg.value(metadata i8* %1, metadata !1911, metadata !DIExpression()) #27, !dbg !3184
  call void @llvm.dbg.value(metadata i8* %2, metadata !1912, metadata !DIExpression()) #27, !dbg !3184
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1910, metadata !DIExpression()) #27, !dbg !3184
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3186
  store i32 10, i32* %8, align 8, !dbg !3187, !tbaa !1852
  %9 = icmp ne i8* %1, null, !dbg !3188
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3189
  br i1 %11, label %13, label %12, !dbg !3189

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !3190
  unreachable, !dbg !3190

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3191
  store i8* %1, i8** %14, align 8, !dbg !3192, !tbaa !1925
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3193
  store i8* %2, i8** %15, align 8, !dbg !3194, !tbaa !1928
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3195
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3196
  ret i8* %16, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3198 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %1, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %2, metadata !3204, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 0, metadata !3146, metadata !DIExpression()) #27, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()) #27, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %1, metadata !3148, metadata !DIExpression()) #27, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %2, metadata !3149, metadata !DIExpression()) #27, !dbg !3206
  call void @llvm.dbg.value(metadata i32 0, metadata !3151, metadata !DIExpression()) #27, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %0, metadata !3156, metadata !DIExpression()) #27, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %1, metadata !3157, metadata !DIExpression()) #27, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %2, metadata !3158, metadata !DIExpression()) #27, !dbg !3208
  call void @llvm.dbg.value(metadata i64 -1, metadata !3159, metadata !DIExpression()) #27, !dbg !3208
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3210
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3210
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3160, metadata !DIExpression()) #27, !dbg !3211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3212, !tbaa.struct !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1910, metadata !DIExpression()) #27, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %0, metadata !1911, metadata !DIExpression()) #27, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %1, metadata !1912, metadata !DIExpression()) #27, !dbg !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1910, metadata !DIExpression()) #27, !dbg !3213
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3215
  store i32 10, i32* %6, align 8, !dbg !3216, !tbaa !1852
  %7 = icmp ne i8* %0, null, !dbg !3217
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3218
  br i1 %9, label %11, label %10, !dbg !3218

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !3219
  unreachable, !dbg !3219

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3220
  store i8* %0, i8** %12, align 8, !dbg !3221, !tbaa !1925
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3222
  store i8* %1, i8** %13, align 8, !dbg !3223, !tbaa !1928
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !3224
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3225
  ret i8* %14, !dbg !3226
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3227 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3231, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8* %1, metadata !3232, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8* %2, metadata !3233, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 %3, metadata !3234, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i32 0, metadata !3151, metadata !DIExpression()) #27, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %0, metadata !3156, metadata !DIExpression()) #27, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %1, metadata !3157, metadata !DIExpression()) #27, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %2, metadata !3158, metadata !DIExpression()) #27, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %3, metadata !3159, metadata !DIExpression()) #27, !dbg !3236
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3238
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3238
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3160, metadata !DIExpression()) #27, !dbg !3239
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3240, !tbaa.struct !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1910, metadata !DIExpression()) #27, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %0, metadata !1911, metadata !DIExpression()) #27, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %1, metadata !1912, metadata !DIExpression()) #27, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1910, metadata !DIExpression()) #27, !dbg !3241
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3243
  store i32 10, i32* %7, align 8, !dbg !3244, !tbaa !1852
  %8 = icmp ne i8* %0, null, !dbg !3245
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3246
  br i1 %10, label %12, label %11, !dbg !3246

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3247
  unreachable, !dbg !3247

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3248
  store i8* %0, i8** %13, align 8, !dbg !3249, !tbaa !1925
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3250
  store i8* %1, i8** %14, align 8, !dbg !3251, !tbaa !1928
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !3252
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3253
  ret i8* %15, !dbg !3254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3255 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3259, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %2, metadata !3261, metadata !DIExpression()), !dbg !3262
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3263
  ret i8* %4, !dbg !3264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3265 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 0, metadata !3259, metadata !DIExpression()) #27, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #27, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()) #27, !dbg !3272
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3274
  ret i8* %3, !dbg !3275
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3276 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %1, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %0, metadata !3259, metadata !DIExpression()) #27, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()) #27, !dbg !3283
  call void @llvm.dbg.value(metadata i64 -1, metadata !3261, metadata !DIExpression()) #27, !dbg !3283
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3285
  ret i8* %3, !dbg !3286
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3287 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 0, metadata !3280, metadata !DIExpression()) #27, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3281, metadata !DIExpression()) #27, !dbg !3291
  call void @llvm.dbg.value(metadata i32 0, metadata !3259, metadata !DIExpression()) #27, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #27, !dbg !3293
  call void @llvm.dbg.value(metadata i64 -1, metadata !3261, metadata !DIExpression()) #27, !dbg !3293
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3295
  ret i8* %2, !dbg !3296
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3297 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3336, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i8* %1, metadata !3337, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i8* %2, metadata !3338, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i8* %3, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i8** %4, metadata !3340, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %5, metadata !3341, metadata !DIExpression()), !dbg !3342
  %7 = icmp eq i8* %1, null, !dbg !3343
  br i1 %7, label %10, label %8, !dbg !3345

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !3346
  br label %12, !dbg !3346

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !3347
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i32 5) #27, !dbg !3348
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !3348
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3349
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.105, i64 0, i64 0), i32 5) #27, !dbg !3350
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.106, i64 0, i64 0)) #27, !dbg !3350
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3351
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
  ], !dbg !3352

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.107, i64 0, i64 0), i32 5) #27, !dbg !3353
  %21 = load i8*, i8** %4, align 8, !dbg !3353, !tbaa !671
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !3353
  br label %147, !dbg !3355

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.108, i64 0, i64 0), i32 5) #27, !dbg !3356
  %25 = load i8*, i8** %4, align 8, !dbg !3356, !tbaa !671
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3356
  %27 = load i8*, i8** %26, align 8, !dbg !3356, !tbaa !671
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !3356
  br label %147, !dbg !3357

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.109, i64 0, i64 0), i32 5) #27, !dbg !3358
  %31 = load i8*, i8** %4, align 8, !dbg !3358, !tbaa !671
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3358
  %33 = load i8*, i8** %32, align 8, !dbg !3358, !tbaa !671
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3358
  %35 = load i8*, i8** %34, align 8, !dbg !3358, !tbaa !671
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !3358
  br label %147, !dbg !3359

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.110, i64 0, i64 0), i32 5) #27, !dbg !3360
  %39 = load i8*, i8** %4, align 8, !dbg !3360, !tbaa !671
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3360
  %41 = load i8*, i8** %40, align 8, !dbg !3360, !tbaa !671
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3360
  %43 = load i8*, i8** %42, align 8, !dbg !3360, !tbaa !671
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3360
  %45 = load i8*, i8** %44, align 8, !dbg !3360, !tbaa !671
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !3360
  br label %147, !dbg !3361

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.111, i64 0, i64 0), i32 5) #27, !dbg !3362
  %49 = load i8*, i8** %4, align 8, !dbg !3362, !tbaa !671
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3362
  %51 = load i8*, i8** %50, align 8, !dbg !3362, !tbaa !671
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3362
  %53 = load i8*, i8** %52, align 8, !dbg !3362, !tbaa !671
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3362
  %55 = load i8*, i8** %54, align 8, !dbg !3362, !tbaa !671
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3362
  %57 = load i8*, i8** %56, align 8, !dbg !3362, !tbaa !671
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !3362
  br label %147, !dbg !3363

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.112, i64 0, i64 0), i32 5) #27, !dbg !3364
  %61 = load i8*, i8** %4, align 8, !dbg !3364, !tbaa !671
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3364
  %63 = load i8*, i8** %62, align 8, !dbg !3364, !tbaa !671
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3364
  %65 = load i8*, i8** %64, align 8, !dbg !3364, !tbaa !671
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3364
  %67 = load i8*, i8** %66, align 8, !dbg !3364, !tbaa !671
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3364
  %69 = load i8*, i8** %68, align 8, !dbg !3364, !tbaa !671
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3364
  %71 = load i8*, i8** %70, align 8, !dbg !3364, !tbaa !671
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !3364
  br label %147, !dbg !3365

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.113, i64 0, i64 0), i32 5) #27, !dbg !3366
  %75 = load i8*, i8** %4, align 8, !dbg !3366, !tbaa !671
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3366
  %77 = load i8*, i8** %76, align 8, !dbg !3366, !tbaa !671
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3366
  %79 = load i8*, i8** %78, align 8, !dbg !3366, !tbaa !671
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3366
  %81 = load i8*, i8** %80, align 8, !dbg !3366, !tbaa !671
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3366
  %83 = load i8*, i8** %82, align 8, !dbg !3366, !tbaa !671
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3366
  %85 = load i8*, i8** %84, align 8, !dbg !3366, !tbaa !671
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3366
  %87 = load i8*, i8** %86, align 8, !dbg !3366, !tbaa !671
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !3366
  br label %147, !dbg !3367

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.114, i64 0, i64 0), i32 5) #27, !dbg !3368
  %91 = load i8*, i8** %4, align 8, !dbg !3368, !tbaa !671
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3368
  %93 = load i8*, i8** %92, align 8, !dbg !3368, !tbaa !671
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3368
  %95 = load i8*, i8** %94, align 8, !dbg !3368, !tbaa !671
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3368
  %97 = load i8*, i8** %96, align 8, !dbg !3368, !tbaa !671
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3368
  %99 = load i8*, i8** %98, align 8, !dbg !3368, !tbaa !671
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3368
  %101 = load i8*, i8** %100, align 8, !dbg !3368, !tbaa !671
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3368
  %103 = load i8*, i8** %102, align 8, !dbg !3368, !tbaa !671
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3368
  %105 = load i8*, i8** %104, align 8, !dbg !3368, !tbaa !671
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !3368
  br label %147, !dbg !3369

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #27, !dbg !3370
  %109 = load i8*, i8** %4, align 8, !dbg !3370, !tbaa !671
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3370
  %111 = load i8*, i8** %110, align 8, !dbg !3370, !tbaa !671
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3370
  %113 = load i8*, i8** %112, align 8, !dbg !3370, !tbaa !671
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3370
  %115 = load i8*, i8** %114, align 8, !dbg !3370, !tbaa !671
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3370
  %117 = load i8*, i8** %116, align 8, !dbg !3370, !tbaa !671
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3370
  %119 = load i8*, i8** %118, align 8, !dbg !3370, !tbaa !671
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3370
  %121 = load i8*, i8** %120, align 8, !dbg !3370, !tbaa !671
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3370
  %123 = load i8*, i8** %122, align 8, !dbg !3370, !tbaa !671
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3370
  %125 = load i8*, i8** %124, align 8, !dbg !3370, !tbaa !671
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !3370
  br label %147, !dbg !3371

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.116, i64 0, i64 0), i32 5) #27, !dbg !3372
  %129 = load i8*, i8** %4, align 8, !dbg !3372, !tbaa !671
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3372
  %131 = load i8*, i8** %130, align 8, !dbg !3372, !tbaa !671
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3372
  %133 = load i8*, i8** %132, align 8, !dbg !3372, !tbaa !671
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3372
  %135 = load i8*, i8** %134, align 8, !dbg !3372, !tbaa !671
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3372
  %137 = load i8*, i8** %136, align 8, !dbg !3372, !tbaa !671
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3372
  %139 = load i8*, i8** %138, align 8, !dbg !3372, !tbaa !671
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3372
  %141 = load i8*, i8** %140, align 8, !dbg !3372, !tbaa !671
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3372
  %143 = load i8*, i8** %142, align 8, !dbg !3372, !tbaa !671
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3372
  %145 = load i8*, i8** %144, align 8, !dbg !3372, !tbaa !671
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !3372
  br label %147, !dbg !3373

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3375 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3379, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8* %1, metadata !3380, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8* %2, metadata !3381, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8* %3, metadata !3382, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8** %4, metadata !3383, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 0, metadata !3384, metadata !DIExpression()), !dbg !3385
  br label %6, !dbg !3386

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3388
  call void @llvm.dbg.value(metadata i64 %7, metadata !3384, metadata !DIExpression()), !dbg !3385
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3389
  %9 = load i8*, i8** %8, align 8, !dbg !3389, !tbaa !671
  %10 = icmp eq i8* %9, null, !dbg !3391
  %11 = add i64 %7, 1, !dbg !3392
  call void @llvm.dbg.value(metadata i64 %11, metadata !3384, metadata !DIExpression()), !dbg !3385
  br i1 %10, label %12, label %6, !dbg !3391, !llvm.loop !3393

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3395
  ret void, !dbg !3396
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3397 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3408, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !3409, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %2, metadata !3410, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %3, metadata !3411, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3412, metadata !DIExpression()), !dbg !3416
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3417
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3414, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i64 0, metadata !3413, metadata !DIExpression()), !dbg !3416
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3413, metadata !DIExpression()), !dbg !3416
  %11 = load i32, i32* %8, align 8, !dbg !3419
  %12 = icmp ult i32 %11, 41, !dbg !3419
  br i1 %12, label %13, label %18, !dbg !3419

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3419
  %15 = zext i32 %11 to i64, !dbg !3419
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3419
  %17 = add nuw nsw i32 %11, 8, !dbg !3419
  store i32 %17, i32* %8, align 8, !dbg !3419
  br label %21, !dbg !3419

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3419
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3419
  store i8* %20, i8** %9, align 8, !dbg !3419
  br label %21, !dbg !3419

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3419
  %25 = load i8*, i8** %24, align 8, !dbg !3419
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3422
  store i8* %25, i8** %26, align 16, !dbg !3423, !tbaa !671
  %27 = icmp eq i8* %25, null, !dbg !3424
  br i1 %27, label %30, label %28, !dbg !3425

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 1, metadata !3413, metadata !DIExpression()), !dbg !3416
  %29 = icmp ult i32 %22, 41, !dbg !3419
  br i1 %29, label %35, label %32, !dbg !3419

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3426
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3427
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3428
  ret void, !dbg !3428

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3419
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3419
  store i8* %34, i8** %9, align 8, !dbg !3419
  br label %40, !dbg !3419

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3419
  %37 = zext i32 %22 to i64, !dbg !3419
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3419
  %39 = add nuw nsw i32 %22, 8, !dbg !3419
  store i32 %39, i32* %8, align 8, !dbg !3419
  br label %40, !dbg !3419

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3419
  %44 = load i8*, i8** %43, align 8, !dbg !3419
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3422
  store i8* %44, i8** %45, align 8, !dbg !3423, !tbaa !671
  %46 = icmp eq i8* %44, null, !dbg !3424
  br i1 %46, label %30, label %47, !dbg !3425

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 2, metadata !3413, metadata !DIExpression()), !dbg !3416
  %48 = icmp ult i32 %41, 41, !dbg !3419
  br i1 %48, label %52, label %49, !dbg !3419

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3419
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3419
  store i8* %51, i8** %9, align 8, !dbg !3419
  br label %57, !dbg !3419

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3419
  %54 = zext i32 %41 to i64, !dbg !3419
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3419
  %56 = add nuw nsw i32 %41, 8, !dbg !3419
  store i32 %56, i32* %8, align 8, !dbg !3419
  br label %57, !dbg !3419

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3419
  %61 = load i8*, i8** %60, align 8, !dbg !3419
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3422
  store i8* %61, i8** %62, align 16, !dbg !3423, !tbaa !671
  %63 = icmp eq i8* %61, null, !dbg !3424
  br i1 %63, label %30, label %64, !dbg !3425

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 3, metadata !3413, metadata !DIExpression()), !dbg !3416
  %65 = icmp ult i32 %58, 41, !dbg !3419
  br i1 %65, label %69, label %66, !dbg !3419

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3419
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3419
  store i8* %68, i8** %9, align 8, !dbg !3419
  br label %74, !dbg !3419

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3419
  %71 = zext i32 %58 to i64, !dbg !3419
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3419
  %73 = add nuw nsw i32 %58, 8, !dbg !3419
  store i32 %73, i32* %8, align 8, !dbg !3419
  br label %74, !dbg !3419

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3419
  %78 = load i8*, i8** %77, align 8, !dbg !3419
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3422
  store i8* %78, i8** %79, align 8, !dbg !3423, !tbaa !671
  %80 = icmp eq i8* %78, null, !dbg !3424
  br i1 %80, label %30, label %81, !dbg !3425

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 4, metadata !3413, metadata !DIExpression()), !dbg !3416
  %82 = icmp ult i32 %75, 41, !dbg !3419
  br i1 %82, label %86, label %83, !dbg !3419

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3419
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3419
  store i8* %85, i8** %9, align 8, !dbg !3419
  br label %91, !dbg !3419

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3419
  %88 = zext i32 %75 to i64, !dbg !3419
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3419
  %90 = add nuw nsw i32 %75, 8, !dbg !3419
  store i32 %90, i32* %8, align 8, !dbg !3419
  br label %91, !dbg !3419

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3419
  %95 = load i8*, i8** %94, align 8, !dbg !3419
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3422
  store i8* %95, i8** %96, align 16, !dbg !3423, !tbaa !671
  %97 = icmp eq i8* %95, null, !dbg !3424
  br i1 %97, label %30, label %98, !dbg !3425

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 5, metadata !3413, metadata !DIExpression()), !dbg !3416
  %99 = icmp ult i32 %92, 41, !dbg !3419
  br i1 %99, label %103, label %100, !dbg !3419

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3419
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3419
  store i8* %102, i8** %9, align 8, !dbg !3419
  br label %108, !dbg !3419

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3419
  %105 = zext i32 %92 to i64, !dbg !3419
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3419
  %107 = add nuw nsw i32 %92, 8, !dbg !3419
  store i32 %107, i32* %8, align 8, !dbg !3419
  br label %108, !dbg !3419

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3419
  %111 = load i8*, i8** %110, align 8, !dbg !3419
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3422
  store i8* %111, i8** %112, align 8, !dbg !3423, !tbaa !671
  %113 = icmp eq i8* %111, null, !dbg !3424
  br i1 %113, label %30, label %114, !dbg !3425

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3413, metadata !DIExpression()), !dbg !3416
  %115 = load i8*, i8** %9, align 8, !dbg !3419
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3419
  store i8* %116, i8** %9, align 8, !dbg !3419
  %117 = bitcast i8* %115 to i8**, !dbg !3419
  %118 = load i8*, i8** %117, align 8, !dbg !3419
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3422
  store i8* %118, i8** %119, align 16, !dbg !3423, !tbaa !671
  %120 = icmp eq i8* %118, null, !dbg !3424
  br i1 %120, label %30, label %121, !dbg !3425

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3413, metadata !DIExpression()), !dbg !3416
  %122 = load i8*, i8** %9, align 8, !dbg !3419
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3419
  store i8* %123, i8** %9, align 8, !dbg !3419
  %124 = bitcast i8* %122 to i8**, !dbg !3419
  %125 = load i8*, i8** %124, align 8, !dbg !3419
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3422
  store i8* %125, i8** %126, align 8, !dbg !3423, !tbaa !671
  %127 = icmp eq i8* %125, null, !dbg !3424
  br i1 %127, label %30, label %128, !dbg !3425

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3413, metadata !DIExpression()), !dbg !3416
  %129 = load i8*, i8** %9, align 8, !dbg !3419
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3419
  store i8* %130, i8** %9, align 8, !dbg !3419
  %131 = bitcast i8* %129 to i8**, !dbg !3419
  %132 = load i8*, i8** %131, align 8, !dbg !3419
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3422
  store i8* %132, i8** %133, align 16, !dbg !3423, !tbaa !671
  %134 = icmp eq i8* %132, null, !dbg !3424
  br i1 %134, label %30, label %135, !dbg !3425

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3413, metadata !DIExpression()), !dbg !3416
  %136 = load i8*, i8** %9, align 8, !dbg !3419
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3419
  store i8* %137, i8** %9, align 8, !dbg !3419
  %138 = bitcast i8* %136 to i8**, !dbg !3419
  %139 = load i8*, i8** %138, align 8, !dbg !3419
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3422
  store i8* %139, i8** %140, align 8, !dbg !3423, !tbaa !671
  %141 = icmp eq i8* %139, null, !dbg !3424
  %142 = select i1 %141, i64 9, i64 10, !dbg !3425
  br label %30, !dbg !3425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3429 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3433, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3434, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %2, metadata !3435, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %3, metadata !3436, metadata !DIExpression()), !dbg !3443
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3444
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3444
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3437, metadata !DIExpression()), !dbg !3445
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3446
  call void @llvm.va_start(i8* nonnull %6), !dbg !3446
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3447
  call void @llvm.va_end(i8* nonnull %6), !dbg !3448
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3449
  ret void, !dbg !3449
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #23

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3450 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3451, !tbaa !671
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3451
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.119, i64 0, i64 0), i32 5) #27, !dbg !3452
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.120, i64 0, i64 0)) #27, !dbg !3452
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.121, i64 0, i64 0), i32 5) #27, !dbg !3453
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.122, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.123, i64 0, i64 0)) #27, !dbg !3453
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.124, i64 0, i64 0), i32 5) #27, !dbg !3454
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.125, i64 0, i64 0)) #27, !dbg !3454
  ret void, !dbg !3455
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3456 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3460, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()), !dbg !3462
  %3 = udiv i64 9223372036854775807, %1, !dbg !3463
  %4 = icmp ult i64 %3, %0, !dbg !3463
  br i1 %4, label %5, label %6, !dbg !3465

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3466
  unreachable, !dbg !3466

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %7, metadata !3468, metadata !DIExpression()) #27, !dbg !3474
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3476
  call void @llvm.dbg.value(metadata i8* %8, metadata !3473, metadata !DIExpression()) #27, !dbg !3474
  %9 = icmp eq i8* %8, null, !dbg !3477
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3479
  br i1 %11, label %12, label %13, !dbg !3479

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3480
  unreachable, !dbg !3480

13:                                               ; preds = %6
  ret i8* %8, !dbg !3481
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3469 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3468, metadata !DIExpression()), !dbg !3482
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %2, metadata !3473, metadata !DIExpression()), !dbg !3482
  %3 = icmp eq i8* %2, null, !dbg !3484
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3485
  br i1 %5, label %6, label %7, !dbg !3485

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3486
  unreachable, !dbg !3486

7:                                                ; preds = %1
  ret i8* %2, !dbg !3487
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !3488 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %2, metadata !3494, metadata !DIExpression()), !dbg !3495
  %4 = udiv i64 9223372036854775807, %2, !dbg !3496
  %5 = icmp ult i64 %4, %1, !dbg !3496
  br i1 %5, label %6, label %7, !dbg !3498

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3499
  unreachable, !dbg !3499

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %0, metadata !3501, metadata !DIExpression()) #27, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %8, metadata !3506, metadata !DIExpression()) #27, !dbg !3507
  %9 = icmp eq i64 %8, 0, !dbg !3509
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3511
  br i1 %11, label %12, label %13, !dbg !3511

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3512
  br label %19, !dbg !3514

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3515
  call void @llvm.dbg.value(metadata i8* %14, metadata !3501, metadata !DIExpression()) #27, !dbg !3507
  %15 = icmp eq i8* %14, null, !dbg !3516
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3518
  br i1 %17, label %18, label %19, !dbg !3518

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3519
  unreachable, !dbg !3519

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3507
  ret i8* %20, !dbg !3520
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3502 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3501, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %1, metadata !3506, metadata !DIExpression()), !dbg !3521
  %3 = icmp eq i64 %1, 0, !dbg !3522
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3523
  br i1 %5, label %6, label %7, !dbg !3523

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !3524
  br label %13, !dbg !3525

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !3526
  call void @llvm.dbg.value(metadata i8* %8, metadata !3501, metadata !DIExpression()), !dbg !3521
  %9 = icmp eq i8* %8, null, !dbg !3527
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3528
  br i1 %11, label %12, label %13, !dbg !3528

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3529
  unreachable, !dbg !3529

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3521
  ret i8* %14, !dbg !3530
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !232 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !237, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64* %1, metadata !238, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %2, metadata !239, metadata !DIExpression()), !dbg !3531
  %4 = load i64, i64* %1, align 8, !dbg !3532, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %4, metadata !240, metadata !DIExpression()), !dbg !3531
  %5 = icmp eq i8* %0, null, !dbg !3533
  br i1 %5, label %6, label %20, !dbg !3535

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3536
  br i1 %7, label %8, label %13, !dbg !3539

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %9, metadata !240, metadata !DIExpression()), !dbg !3531
  %10 = icmp ugt i64 %2, 128, !dbg !3542
  %11 = zext i1 %10 to i64, !dbg !3542
  %12 = add nuw nsw i64 %9, %11, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %12, metadata !240, metadata !DIExpression()), !dbg !3531
  br label %13, !dbg !3544

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3531
  call void @llvm.dbg.value(metadata i64 %14, metadata !240, metadata !DIExpression()), !dbg !3531
  %15 = udiv i64 9223372036854775807, %2, !dbg !3545
  %16 = icmp ult i64 %15, %14, !dbg !3545
  br i1 %16, label %19, label %17, !dbg !3547

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !240, metadata !DIExpression()), !dbg !3531
  store i64 %14, i64* %1, align 8, !dbg !3548, !tbaa !1106
  %18 = mul i64 %14, %2, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %0, metadata !3501, metadata !DIExpression()) #27, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %28, metadata !3506, metadata !DIExpression()) #27, !dbg !3550
  br label %31, !dbg !3552

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3553
  unreachable, !dbg !3553

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3554
  %22 = icmp ugt i64 %21, %4, !dbg !3557
  br i1 %22, label %24, label %23, !dbg !3558

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !3559
  unreachable, !dbg !3559

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3560
  %26 = add nuw i64 %4, 1, !dbg !3561
  %27 = add i64 %26, %25, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %27, metadata !240, metadata !DIExpression()), !dbg !3531
  store i64 %27, i64* %1, align 8, !dbg !3548, !tbaa !1106
  %28 = mul i64 %27, %2, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %0, metadata !3501, metadata !DIExpression()) #27, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %28, metadata !3506, metadata !DIExpression()) #27, !dbg !3550
  %29 = icmp eq i64 %28, 0, !dbg !3563
  br i1 %29, label %30, label %31, !dbg !3552

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !3564
  br label %38, !dbg !3565

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !3566
  call void @llvm.dbg.value(metadata i8* %33, metadata !3501, metadata !DIExpression()) #27, !dbg !3550
  %34 = icmp eq i8* %33, null, !dbg !3567
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3568
  br i1 %36, label %37, label %38, !dbg !3568

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !3569
  unreachable, !dbg !3569

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3550
  ret i8* %39, !dbg !3570
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !3571 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3573, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i64 %0, metadata !3468, metadata !DIExpression()) #27, !dbg !3575
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3577
  call void @llvm.dbg.value(metadata i8* %2, metadata !3473, metadata !DIExpression()) #27, !dbg !3575
  %3 = icmp eq i8* %2, null, !dbg !3578
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3579
  br i1 %5, label %6, label %7, !dbg !3579

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3580
  unreachable, !dbg !3580

7:                                                ; preds = %1
  ret i8* %2, !dbg !3581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3582 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3586, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64* %1, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8* %0, metadata !237, metadata !DIExpression()) #27, !dbg !3589
  call void @llvm.dbg.value(metadata i64* %1, metadata !238, metadata !DIExpression()) #27, !dbg !3589
  call void @llvm.dbg.value(metadata i64 1, metadata !239, metadata !DIExpression()) #27, !dbg !3589
  %3 = load i64, i64* %1, align 8, !dbg !3591, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %3, metadata !240, metadata !DIExpression()) #27, !dbg !3589
  %4 = icmp eq i8* %0, null, !dbg !3592
  br i1 %4, label %5, label %10, !dbg !3593

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3594
  br i1 %6, label %17, label %7, !dbg !3595

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !240, metadata !DIExpression()) #27, !dbg !3589
  %8 = icmp slt i64 %3, 0, !dbg !3596
  br i1 %8, label %9, label %17, !dbg !3597

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3598
  unreachable, !dbg !3598

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3599
  br i1 %11, label %13, label %12, !dbg !3600

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3601
  unreachable, !dbg !3601

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3602
  %15 = add nuw nsw i64 %3, 1, !dbg !3603
  %16 = add nuw nsw i64 %15, %14, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %16, metadata !240, metadata !DIExpression()) #27, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %0, metadata !3501, metadata !DIExpression()) #27, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %16, metadata !3506, metadata !DIExpression()) #27, !dbg !3605
  br label %17, !dbg !3607

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3608
  store i64 %18, i64* %1, align 8, !dbg !3608, !tbaa !1106
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %19, metadata !3501, metadata !DIExpression()) #27, !dbg !3605
  %20 = icmp eq i8* %19, null, !dbg !3610
  br i1 %20, label %21, label %22, !dbg !3611

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3612
  unreachable, !dbg !3612

22:                                               ; preds = %17
  ret i8* %19, !dbg !3613
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3614 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3616, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %0, metadata !3618, metadata !DIExpression()) #27, !dbg !3623
  call void @llvm.dbg.value(metadata i64 1, metadata !3621, metadata !DIExpression()) #27, !dbg !3623
  %2 = icmp slt i64 %0, 0, !dbg !3625
  br i1 %2, label %6, label %3, !dbg !3627

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %4, metadata !3622, metadata !DIExpression()) #27, !dbg !3623
  %5 = icmp eq i8* %4, null, !dbg !3629
  br i1 %5, label %6, label %7, !dbg !3630

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3631
  unreachable, !dbg !3631

7:                                                ; preds = %3
  ret i8* %4, !dbg !3632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3619 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3618, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %1, metadata !3621, metadata !DIExpression()), !dbg !3633
  %3 = udiv i64 9223372036854775807, %1, !dbg !3634
  %4 = icmp ult i64 %3, %0, !dbg !3634
  br i1 %4, label %8, label %5, !dbg !3635

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %6, metadata !3622, metadata !DIExpression()), !dbg !3633
  %7 = icmp eq i8* %6, null, !dbg !3637
  br i1 %7, label %8, label %9, !dbg !3638

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3639
  unreachable, !dbg !3639

9:                                                ; preds = %5
  ret i8* %6, !dbg !3640
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3641 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3645, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %1, metadata !3646, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %1, metadata !3468, metadata !DIExpression()) #27, !dbg !3648
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3650
  call void @llvm.dbg.value(metadata i8* %3, metadata !3473, metadata !DIExpression()) #27, !dbg !3648
  %4 = icmp eq i8* %3, null, !dbg !3651
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3652
  br i1 %6, label %7, label %8, !dbg !3652

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3653
  unreachable, !dbg !3653

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3654, metadata !DIExpression()) #27, !dbg !3659
  call void @llvm.dbg.value(metadata i8* %0, metadata !3657, metadata !DIExpression()) #27, !dbg !3659
  call void @llvm.dbg.value(metadata i64 %1, metadata !3658, metadata !DIExpression()) #27, !dbg !3659
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3661
  ret i8* %3, !dbg !3662
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3663 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3665, metadata !DIExpression()), !dbg !3666
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !3667
  %3 = add i64 %2, 1, !dbg !3668
  call void @llvm.dbg.value(metadata i8* %0, metadata !3645, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i64 %3, metadata !3646, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i64 %3, metadata !3468, metadata !DIExpression()) #27, !dbg !3671
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %4, metadata !3473, metadata !DIExpression()) #27, !dbg !3671
  %5 = icmp eq i8* %4, null, !dbg !3674
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3675
  br i1 %7, label %8, label %9, !dbg !3675

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3676
  unreachable, !dbg !3676

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3654, metadata !DIExpression()) #27, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %0, metadata !3657, metadata !DIExpression()) #27, !dbg !3677
  call void @llvm.dbg.value(metadata i64 %3, metadata !3658, metadata !DIExpression()) #27, !dbg !3677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !3679
  ret i8* %4, !dbg !3680
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3681 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3682, !tbaa !850
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.138, i64 0, i64 0), i32 5) #27, !dbg !3683
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* %2) #27, !dbg !3684
  tail call void @abort() #29, !dbg !3685
  unreachable, !dbg !3685
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @xstrtold(i8* %0, i8** %1, x86_fp80* nocapture %2, x86_fp80 (i8*, i8**)* nocapture %3) local_unnamed_addr #8 !dbg !3686 {
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !3703
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3696, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i8** %1, metadata !3697, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata x86_fp80* %2, metadata !3698, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata x86_fp80 (i8*, i8**)* %3, metadata !3699, metadata !DIExpression()), !dbg !3704
  %6 = bitcast i8** %5 to i8*, !dbg !3705
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #27, !dbg !3705
  call void @llvm.dbg.value(metadata i8 1, metadata !3702, metadata !DIExpression()), !dbg !3704
  %7 = tail call i32* @__errno_location() #31, !dbg !3706
  store i32 0, i32* %7, align 4, !dbg !3707, !tbaa !850
  call void @llvm.dbg.value(metadata i8** %5, metadata !3701, metadata !DIExpression(DW_OP_deref)), !dbg !3704
  %8 = call x86_fp80 %3(i8* %0, i8** nonnull %5) #27, !dbg !3708
  call void @llvm.dbg.value(metadata x86_fp80 %8, metadata !3700, metadata !DIExpression()), !dbg !3704
  %9 = load i8*, i8** %5, align 8, !dbg !3709, !tbaa !671
  call void @llvm.dbg.value(metadata i8* %9, metadata !3701, metadata !DIExpression()), !dbg !3704
  %10 = icmp eq i8* %9, %0, !dbg !3711
  br i1 %10, label %21, label %11, !dbg !3712

11:                                               ; preds = %4
  %12 = icmp eq i8** %1, null, !dbg !3713
  br i1 %12, label %13, label %16, !dbg !3714

13:                                               ; preds = %11
  %14 = load i8, i8* %9, align 1, !dbg !3715, !tbaa !857
  %15 = icmp eq i8 %14, 0, !dbg !3716
  br i1 %15, label %16, label %25, !dbg !3717

16:                                               ; preds = %13, %11
  %17 = fcmp une x86_fp80 %8, 0xK00000000000000000000, !dbg !3718
  br i1 %17, label %18, label %21, !dbg !3721

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4, !dbg !3722, !tbaa !850
  %20 = icmp ne i32 %19, 34, !dbg !3723
  br label %21, !dbg !3724

21:                                               ; preds = %18, %4, %16
  %22 = phi i1 [ true, %16 ], [ false, %4 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !3702, metadata !DIExpression()), !dbg !3704
  %23 = icmp eq i8** %1, null, !dbg !3725
  br i1 %23, label %25, label %24, !dbg !3727

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %9, metadata !3701, metadata !DIExpression()), !dbg !3704
  store i8* %9, i8** %1, align 8, !dbg !3728, !tbaa !671
  br label %25, !dbg !3729

25:                                               ; preds = %13, %24, %21
  %26 = phi i1 [ %22, %24 ], [ %22, %21 ], [ false, %13 ]
  store x86_fp80 %8, x86_fp80* %2, align 16, !dbg !3730, !tbaa !1104
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #27, !dbg !3731
  ret i1 %26, !dbg !3732
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3733 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3735, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %1, metadata !3736, metadata !DIExpression()), !dbg !3741
  %3 = icmp eq i64 %0, 0, !dbg !3742
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3743
  br i1 %5, label %11, label %6, !dbg !3743

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3738, metadata !DIExpression()), !dbg !3744
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3745
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3745
  br i1 %8, label %9, label %11, !dbg !3747

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !3748
  store i32 12, i32* %10, align 4, !dbg !3750, !tbaa !850
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3735, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %12, metadata !3736, metadata !DIExpression()), !dbg !3741
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %14, metadata !3737, metadata !DIExpression()), !dbg !3741
  br label %15, !dbg !3752

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3741
  ret i8* %16, !dbg !3753
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3754 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3770, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8* %1, metadata !3771, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %2, metadata !3772, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3773, metadata !DIExpression()), !dbg !3779
  %6 = bitcast i32* %5 to i8*, !dbg !3780
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3780
  %7 = icmp eq i32* %0, null, !dbg !3781
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3783
  call void @llvm.dbg.value(metadata i32* %8, metadata !3770, metadata !DIExpression()), !dbg !3779
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %9, metadata !3774, metadata !DIExpression()), !dbg !3779
  %10 = icmp ugt i64 %9, -3, !dbg !3785
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3786
  br i1 %12, label %13, label %18, !dbg !3786

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !3787
  br i1 %14, label %18, label %15, !dbg !3788

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3789, !tbaa !857
  call void @llvm.dbg.value(metadata i8 %16, metadata !3776, metadata !DIExpression()), !dbg !3790
  %17 = zext i8 %16 to i32, !dbg !3791
  store i32 %17, i32* %8, align 4, !dbg !3792, !tbaa !850
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3779
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3793
  ret i64 %19, !dbg !3793
}

; Function Attrs: nounwind
declare !dbg !3794 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @c_strtold(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !3798 {
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !3802, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !3806
  call void @llvm.dbg.value(metadata i8* %0, metadata !3800, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i8** %1, metadata !3801, metadata !DIExpression()), !dbg !3807
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3808, !tbaa !671
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !3808
  br i1 %4, label %5, label %7, !dbg !3814

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0), %struct.__locale_struct* null) #27, !dbg !3815
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3816, !tbaa !671
  br label %7, !dbg !3817

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3818, !tbaa !671
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !3803, metadata !DIExpression()), !dbg !3807
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !3819
  br i1 %9, label %10, label %13, !dbg !3821

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !3822
  br i1 %11, label %27, label %12, !dbg !3825

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !3826, !tbaa !671
  br label %27, !dbg !3827

13:                                               ; preds = %7
  %14 = tail call %struct.__locale_struct* @uselocale(%struct.__locale_struct* nonnull %8) #27, !dbg !3828
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %14, metadata !3804, metadata !DIExpression()), !dbg !3807
  %15 = icmp eq %struct.__locale_struct* %14, null, !dbg !3829
  br i1 %15, label %16, label %19, !dbg !3831

16:                                               ; preds = %13
  %17 = icmp eq i8** %1, null, !dbg !3832
  br i1 %17, label %27, label %18, !dbg !3835

18:                                               ; preds = %16
  store i8* %0, i8** %1, align 8, !dbg !3836, !tbaa !671
  br label %27, !dbg !3837

19:                                               ; preds = %13
  %20 = tail call x86_fp80 @strtold(i8* %0, i8** %1) #27, !dbg !3838
  call void @llvm.dbg.value(metadata x86_fp80 %20, metadata !3802, metadata !DIExpression()), !dbg !3807
  %21 = tail call i32* @__errno_location() #31, !dbg !3839
  %22 = load i32, i32* %21, align 4, !dbg !3839, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %22, metadata !3805, metadata !DIExpression()), !dbg !3807
  %23 = tail call %struct.__locale_struct* @uselocale(%struct.__locale_struct* nonnull %14) #27, !dbg !3840
  %24 = icmp eq %struct.__locale_struct* %23, null, !dbg !3842
  br i1 %24, label %25, label %26, !dbg !3843

25:                                               ; preds = %19
  tail call void @abort() #29, !dbg !3844
  unreachable, !dbg !3844

26:                                               ; preds = %19
  store i32 %22, i32* %21, align 4, !dbg !3845, !tbaa !850
  br label %27

27:                                               ; preds = %26, %18, %16, %10, %12
  %28 = phi x86_fp80 [ 0xK00000000000000000000, %12 ], [ 0xK00000000000000000000, %10 ], [ %20, %26 ], [ 0xK00000000000000000000, %18 ], [ 0xK00000000000000000000, %16 ], !dbg !3807
  ret x86_fp80 %28, !dbg !3846
}

; Function Attrs: nounwind
declare !dbg !3847 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3850 %struct.__locale_struct* @uselocale(%struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3853 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3891, metadata !DIExpression()), !dbg !3896
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !3897
  call void @llvm.dbg.value(metadata i1 undef, metadata !3892, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3898, metadata !DIExpression()), !dbg !3902
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3904
  %4 = load i32, i32* %3, align 8, !dbg !3904, !tbaa !3905
  %5 = and i32 %4, 32, !dbg !3907
  %6 = icmp eq i32 %5, 0, !dbg !3907
  call void @llvm.dbg.value(metadata i1 %6, metadata !3894, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3896
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !3908
  %8 = icmp eq i32 %7, 0, !dbg !3909
  call void @llvm.dbg.value(metadata i1 %8, metadata !3895, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3896
  br i1 %6, label %9, label %19, !dbg !3910

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3912
  call void @llvm.dbg.value(metadata i1 %10, metadata !3892, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3896
  %11 = or i1 %10, %8, !dbg !3913
  %12 = xor i1 %8, true, !dbg !3913
  %13 = sext i1 %12 to i32, !dbg !3913
  br i1 %11, label %22, label %14, !dbg !3913

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !3914
  %16 = load i32, i32* %15, align 4, !dbg !3914, !tbaa !850
  %17 = icmp ne i32 %16, 9, !dbg !3915
  %18 = sext i1 %17 to i32, !dbg !3916
  br label %22, !dbg !3916

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3917

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !3919
  store i32 0, i32* %21, align 4, !dbg !3921, !tbaa !850
  br label %22, !dbg !3919

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3896
  ret i32 %23, !dbg !3922
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3923 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3927, metadata !DIExpression()), !dbg !3932
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3933
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3933
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3928, metadata !DIExpression()), !dbg !3934
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !3935
  %5 = icmp eq i32 %4, 0, !dbg !3935
  br i1 %5, label %6, label %13, !dbg !3937

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3938
  %8 = load i16, i16* %7, align 16, !dbg !3938
  %9 = icmp eq i16 %8, 67, !dbg !3938
  br i1 %9, label %13, label %10, !dbg !3939

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0), i64 6), !dbg !3940
  %12 = icmp ne i32 %11, 0, !dbg !3941
  br label %13, !dbg !3939

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3932
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3942
  ret i1 %14, !dbg !3942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3943 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %1, metadata !3947, metadata !DIExpression()), !dbg !3949
  %2 = icmp eq i8* %1, null, !dbg !3950
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.156, i64 0, i64 0), i8* %1, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %3, metadata !3947, metadata !DIExpression()), !dbg !3949
  %4 = load i8, i8* %3, align 1, !dbg !3953, !tbaa !857
  %5 = icmp eq i8 %4, 0, !dbg !3957
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0), i8* %3, !dbg !3958
  call void @llvm.dbg.value(metadata i8* %6, metadata !3947, metadata !DIExpression()), !dbg !3949
  ret i8* %6, !dbg !3959
}

; Function Attrs: nounwind
declare !dbg !3960 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %1, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %2, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %0, metadata !3971, metadata !DIExpression()) #27, !dbg !3980
  call void @llvm.dbg.value(metadata i8* %1, metadata !3974, metadata !DIExpression()) #27, !dbg !3980
  call void @llvm.dbg.value(metadata i64 %2, metadata !3975, metadata !DIExpression()) #27, !dbg !3980
  call void @llvm.dbg.value(metadata i32 %0, metadata !3982, metadata !DIExpression()) #27, !dbg !3988
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !3990
  call void @llvm.dbg.value(metadata i8* %4, metadata !3987, metadata !DIExpression()) #27, !dbg !3988
  call void @llvm.dbg.value(metadata i8* %4, metadata !3976, metadata !DIExpression()) #27, !dbg !3980
  %5 = icmp eq i8* %4, null, !dbg !3991
  br i1 %5, label %6, label %9, !dbg !3992

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3993
  br i1 %7, label %19, label %8, !dbg !3996

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3997, !tbaa !857
  br label %19, !dbg !3998

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !3999
  call void @llvm.dbg.value(metadata i64 %10, metadata !3977, metadata !DIExpression()) #27, !dbg !4000
  %11 = icmp ult i64 %10, %2, !dbg !4001
  br i1 %11, label %12, label %14, !dbg !4003

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4004
  call void @llvm.dbg.value(metadata i8* %1, metadata !4006, metadata !DIExpression()) #27, !dbg !4011
  call void @llvm.dbg.value(metadata i8* %4, metadata !4009, metadata !DIExpression()) #27, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %13, metadata !4010, metadata !DIExpression()) #27, !dbg !4011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !4013
  br label %19, !dbg !4014

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4015
  br i1 %15, label %19, label %16, !dbg !4018

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4019
  call void @llvm.dbg.value(metadata i8* %1, metadata !4006, metadata !DIExpression()) #27, !dbg !4021
  call void @llvm.dbg.value(metadata i8* %4, metadata !4009, metadata !DIExpression()) #27, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %17, metadata !4010, metadata !DIExpression()) #27, !dbg !4021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !4023
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4024
  store i8 0, i8* %18, align 1, !dbg !4025, !tbaa !857
  br label %19, !dbg !4026

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4027
  ret i32 %20, !dbg !4028
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4029 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4031, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 %0, metadata !3982, metadata !DIExpression()) #27, !dbg !4033
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %2, metadata !3987, metadata !DIExpression()) #27, !dbg !4033
  ret i8* %2, !dbg !4036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4037 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4075, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i32 0, metadata !4076, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i32 0, metadata !4078, metadata !DIExpression()), !dbg !4079
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4080
  call void @llvm.dbg.value(metadata i32 %2, metadata !4077, metadata !DIExpression()), !dbg !4079
  %3 = icmp slt i32 %2, 0, !dbg !4081
  br i1 %3, label %4, label %6, !dbg !4083

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4084
  br label %24, !dbg !4085

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4086
  %8 = icmp eq i32 %7, 0, !dbg !4086
  br i1 %8, label %13, label %9, !dbg !4088

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4089
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !4090
  %12 = icmp eq i64 %11, -1, !dbg !4091
  br i1 %12, label %16, label %13, !dbg !4092

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !4093
  %15 = icmp eq i32 %14, 0, !dbg !4093
  br i1 %15, label %16, label %18, !dbg !4094

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4076, metadata !DIExpression()), !dbg !4079
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %21, metadata !4078, metadata !DIExpression()), !dbg !4079
  br label %24, !dbg !4096

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !4097
  %20 = load i32, i32* %19, align 4, !dbg !4097, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %20, metadata !4076, metadata !DIExpression()), !dbg !4079
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %21, metadata !4078, metadata !DIExpression()), !dbg !4079
  %22 = icmp eq i32 %20, 0, !dbg !4098
  br i1 %22, label %24, label %23, !dbg !4096

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4100, !tbaa !850
  call void @llvm.dbg.value(metadata i32 -1, metadata !4078, metadata !DIExpression()), !dbg !4079
  br label %24, !dbg !4102

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4079
  ret i32 %25, !dbg !4103
}

; Function Attrs: nofree nounwind
declare !dbg !4104 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4107 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4108 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4112 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4150, metadata !DIExpression()), !dbg !4151
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4152
  br i1 %2, label %6, label %3, !dbg !4154

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4155
  %5 = icmp eq i32 %4, 0, !dbg !4155
  br i1 %5, label %6, label %8, !dbg !4156

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4157
  br label %17, !dbg !4158

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4159, metadata !DIExpression()) #27, !dbg !4164
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4166
  %10 = load i32, i32* %9, align 8, !dbg !4166, !tbaa !3905
  %11 = and i32 %10, 256, !dbg !4168
  %12 = icmp eq i32 %11, 0, !dbg !4168
  br i1 %12, label %15, label %13, !dbg !4169

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !4170
  br label %15, !dbg !4170

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4171
  br label %17, !dbg !4172

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4151
  ret i32 %18, !dbg !4173
}

; Function Attrs: nofree nounwind
declare !dbg !4174 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4177 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4216, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %1, metadata !4217, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i32 %2, metadata !4218, metadata !DIExpression()), !dbg !4222
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4223
  %5 = load i8*, i8** %4, align 8, !dbg !4223, !tbaa !4224
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4225
  %7 = load i8*, i8** %6, align 8, !dbg !4225, !tbaa !4226
  %8 = icmp eq i8* %5, %7, !dbg !4227
  br i1 %8, label %9, label %28, !dbg !4228

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4229
  %11 = load i8*, i8** %10, align 8, !dbg !4229, !tbaa !4230
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4231
  %13 = load i8*, i8** %12, align 8, !dbg !4231, !tbaa !4232
  %14 = icmp eq i8* %11, %13, !dbg !4233
  br i1 %14, label %15, label %28, !dbg !4234

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4235
  %17 = load i8*, i8** %16, align 8, !dbg !4235, !tbaa !4236
  %18 = icmp eq i8* %17, null, !dbg !4237
  br i1 %18, label %19, label %28, !dbg !4238

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4239
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !4240
  call void @llvm.dbg.value(metadata i64 %21, metadata !4219, metadata !DIExpression()), !dbg !4241
  %22 = icmp eq i64 %21, -1, !dbg !4242
  br i1 %22, label %30, label %23, !dbg !4244

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4245
  %25 = load i32, i32* %24, align 8, !dbg !4246, !tbaa !3905
  %26 = and i32 %25, -17, !dbg !4246
  store i32 %26, i32* %24, align 8, !dbg !4246, !tbaa !3905
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4247
  store i64 %21, i64* %27, align 8, !dbg !4248, !tbaa !4249
  br label %30, !dbg !4250

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4251
  br label %30, !dbg !4252

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4222
  ret i32 %31, !dbg !4253
}

; Function Attrs: nofree nounwind
declare !dbg !4254 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind }
attributes #18 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #22 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #23 = { nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!2, !91, !218, !97, !104, !110, !116, !220, !182, !227, !244, !246, !248, !250, !190, !253, !255, !257, !646, !648, !650, !652}
!llvm.ident = !{!654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654}
!llvm.module.flags = !{!655, !656, !657, !658, !659}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "locale_ok", scope: !2, file: !3, line: 51, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/seq.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!7, !22, !24, !25, !28, !30, !31, !32}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !{!0, !34, !37, !39, !53, !58}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "equal_width", scope: !2, file: !3, line: 54, type: !36, isLocal: true, isDefinition: true)
!36 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "separator", scope: !2, file: !3, line: 57, type: !28, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 63, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1536, elements: !51)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !44, line: 50, size: 256, elements: !45)
!44 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!45 = !{!46, !47, !48, !50}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !44, line: 52, baseType: !28, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !43, file: !44, line: 55, baseType: !31, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !43, file: !44, line: 56, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !43, file: !44, line: 57, baseType: !31, size: 32, offset: 192)
!51 = !{!52}
!52 = !DISubrange(count: 6)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "terminator", scope: !2, file: !3, line: 61, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 16, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 2)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "format_buf", scope: !60, file: !3, line: 374, type: !85, isLocal: true, isDefinition: true)
!60 = distinct !DISubprogram(name: "get_default_format", scope: !3, file: !3, line: 372, type: !61, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!61 = !DISubroutineType(types: !62)
!62 = !{!28, !63, !63, !63}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "operand", file: !3, line: 135, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "operand", file: !3, line: 120, size: 256, elements: !65)
!65 = !{!66, !68, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !64, file: !3, line: 123, baseType: !67, size: 128)
!67 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !64, file: !3, line: 129, baseType: !25, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !64, file: !3, line: 133, baseType: !31, size: 32, offset: 192)
!70 = !{!71, !72, !73, !74, !75, !80, !81, !82}
!71 = !DILocalVariable(name: "first", arg: 1, scope: !60, file: !3, line: 372, type: !63)
!72 = !DILocalVariable(name: "step", arg: 2, scope: !60, file: !3, line: 372, type: !63)
!73 = !DILocalVariable(name: "last", arg: 3, scope: !60, file: !3, line: 372, type: !63)
!74 = !DILocalVariable(name: "prec", scope: !60, file: !3, line: 376, type: !31)
!75 = !DILocalVariable(name: "first_width", scope: !76, file: !3, line: 383, type: !25)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 381, column: 9)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 380, column: 11)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 379, column: 5)
!79 = distinct !DILexicalBlock(scope: !60, file: !3, line: 378, column: 7)
!80 = !DILocalVariable(name: "last_width", scope: !76, file: !3, line: 385, type: !25)
!81 = !DILocalVariable(name: "width", scope: !76, file: !3, line: 392, type: !25)
!82 = !DILocalVariable(name: "w", scope: !83, file: !3, line: 395, type: !31)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 394, column: 13)
!84 = distinct !DILexicalBlock(scope: !76, file: !3, line: 393, column: 15)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 224, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 28)
!88 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "Version", scope: !91, file: !92, line: 2, type: !28, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !94, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!93 = !{}
!94 = !{!89}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "file_name", scope: !97, file: !98, line: 46, type: !28, isLocal: true, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !99, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!99 = !{!95, !100}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !97, file: !98, line: 56, type: !36, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "exit_failure", scope: !104, file: !105, line: 24, type: !107, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !106, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!106 = !{!102}
!107 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "program_name", scope: !110, file: !111, line: 33, type: !28, isLocal: false, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !112, globals: !113, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!112 = !{!24, !22}
!113 = !{!108}
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !116, file: !117, line: 85, type: !176, isLocal: false, isDefinition: true)
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !118, retainedTypes: !138, globals: !139, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !{!119, !133, !5}
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !120, line: 32, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!122 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!126 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!127 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!128 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!129 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!130 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!131 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!132 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !120, line: 242, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!136 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!137 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!138 = !{!31, !32, !25, !22}
!139 = !{!114, !140, !146, !158, !160, !165, !172, !174}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !116, file: !117, line: 101, type: !142, isLocal: false, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 320, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!144 = !{!145}
!145 = !DISubrange(count: 10)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !116, file: !117, line: 1052, type: !148, isLocal: false, isDefinition: true)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !117, line: 65, size: 448, elements: !149)
!149 = !{!150, !151, !152, !156, !157}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !148, file: !117, line: 68, baseType: !119, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !117, line: 71, baseType: !31, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !148, file: !117, line: 75, baseType: !153, size: 256, offset: 64)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 8)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !148, file: !117, line: 78, baseType: !28, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !148, file: !117, line: 81, baseType: !28, size: 64, offset: 384)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !116, file: !117, line: 116, type: !148, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "slot0", scope: !116, file: !117, line: 842, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 256)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "slotvec", scope: !116, file: !117, line: 845, type: !167, isLocal: true, isDefinition: true)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !117, line: 834, size: 128, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !168, file: !117, line: 836, baseType: !25, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !168, file: !117, line: 837, baseType: !22, size: 64, offset: 64)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "nslots", scope: !116, file: !117, line: 843, type: !31, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "slotvec0", scope: !116, file: !117, line: 844, type: !168, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 704, elements: !178)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!178 = !{!179}
!179 = !DISubrange(count: 11)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !182, file: !183, line: 26, type: !185, isLocal: false, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !184, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !{!180}
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 376, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 47)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !190, file: !216, line: 50, type: !217, isLocal: true, isDefinition: true)
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !192, globals: !215, splitDebugInlining: false, nameTableKind: None)
!191 = !DIFile(filename: "lib/c-strtold.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!192 = !{!22, !193}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !194, line: 24, baseType: !195)
!194 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !196, line: 42, baseType: !197)
!196 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !196, line: 28, size: 1856, elements: !199)
!199 = !{!200, !206, !209, !212, !213}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !198, file: !196, line: 31, baseType: !201, size: 832)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 832, elements: !204)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !196, line: 31, flags: DIFlagFwdDecl)
!204 = !{!205}
!205 = !DISubrange(count: 13)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !198, file: !196, line: 34, baseType: !207, size: 64, offset: 832)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !198, file: !196, line: 35, baseType: !210, size: 64, offset: 896)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !198, file: !196, line: 36, baseType: !210, size: 64, offset: 960)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !198, file: !196, line: 39, baseType: !214, size: 832, offset: 1024)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 832, elements: !204)
!215 = !{!188}
!216 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !193)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/cl-strtold.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !226, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!222 = !{!223}
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !221, line: 40, baseType: !7, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!226 = !{!24}
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !229, retainedTypes: !243, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!229 = !{!230}
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !232, file: !231, line: 186, baseType: !7, size: 32, elements: !241)
!231 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = distinct !DISubprogram(name: "x2nrealloc", scope: !231, file: !231, line: 174, type: !233, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !236)
!233 = !DISubroutineType(types: !234)
!234 = !{!24, !24, !235, !25}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!236 = !{!237, !238, !239, !240}
!237 = !DILocalVariable(name: "p", arg: 1, scope: !232, file: !231, line: 174, type: !24)
!238 = !DILocalVariable(name: "pn", arg: 2, scope: !232, file: !231, line: 174, type: !235)
!239 = !DILocalVariable(name: "s", arg: 3, scope: !232, file: !231, line: 174, type: !25)
!240 = !DILocalVariable(name: "n", scope: !232, file: !231, line: 176, type: !25)
!241 = !{!242}
!242 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!243 = !{!25, !22, !24}
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !226, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "lib/xstrtold.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !226, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !252, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!252 = !{!25}
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !259, retainedTypes: !226, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = !{!260}
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !261, line: 41, baseType: !7, size: 32, elements: !262)
!261 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!263 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!264 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!265 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!266 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!267 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!268 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!269 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!270 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!271 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!272 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!273 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!274 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!275 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!276 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!277 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!278 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!279 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!280 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!281 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!282 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!283 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!284 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!285 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!286 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!287 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!288 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!289 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!290 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!291 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!292 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!293 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!294 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!295 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!296 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!297 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!298 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!299 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!300 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!301 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!302 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!303 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!304 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!305 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!306 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!307 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!308 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!309 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!310 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!311 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!312 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!371 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!374 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!375 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!376 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!377 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!378 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!379 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!380 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!381 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!382 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!383 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!384 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!385 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!458 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!531 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!532 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!533 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!534 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!535 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!536 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!537 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!538 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!539 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!540 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!541 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!542 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!543 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!544 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!545 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!547 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!548 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!549 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!550 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!551 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!552 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!578 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!579 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!580 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!581 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!582 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!587 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!588 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!589 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!590 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !226, splitDebugInlining: false, nameTableKind: None)
!647 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!648 = distinct !DICompileUnit(language: DW_LANG_C99, file: !649, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, splitDebugInlining: false, nameTableKind: None)
!649 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !226, splitDebugInlining: false, nameTableKind: None)
!651 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !226, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!654 = !{!"clang version 12.0.1"}
!655 = !{i32 7, !"Dwarf Version", i32 4}
!656 = !{i32 2, !"Debug Info Version", i32 3}
!657 = !{i32 1, !"wchar_size", i32 4}
!658 = !{i32 7, !"PIC Level", i32 2}
!659 = !{i32 7, !"PIE Level", i32 2}
!660 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 74, type: !661, scopeLine: 75, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !31}
!663 = !{!664}
!664 = !DILocalVariable(name: "status", arg: 1, scope: !660, file: !3, line: 74, type: !31)
!665 = !DILocation(line: 0, scope: !660)
!666 = !DILocation(line: 76, column: 14, scope: !667)
!667 = distinct !DILexicalBlock(scope: !660, file: !3, line: 76, column: 7)
!668 = !DILocation(line: 76, column: 7, scope: !660)
!669 = !DILocation(line: 77, column: 5, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !3, line: 77, column: 5)
!671 = !{!672, !672, i64 0}
!672 = !{!"any pointer", !673, i64 0}
!673 = !{!"omnipotent char", !674, i64 0}
!674 = !{!"Simple C/C++ TBAA"}
!675 = !DILocation(line: 80, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !667, file: !3, line: 79, column: 5)
!677 = !DILocation(line: 85, column: 7, scope: !676)
!678 = !DILocation(line: 590, column: 3, scope: !679, inlinedAt: !683)
!679 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !680, file: !680, line: 588, type: !681, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!680 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!681 = !DISubroutineType(types: !682)
!682 = !{null}
!683 = distinct !DILocation(line: 89, column: 7, scope: !676)
!684 = !DILocation(line: 91, column: 7, scope: !676)
!685 = !DILocation(line: 96, column: 7, scope: !676)
!686 = !DILocation(line: 97, column: 7, scope: !676)
!687 = !DILocation(line: 98, column: 7, scope: !676)
!688 = !DILocation(line: 109, column: 7, scope: !676)
!689 = !DILocalVariable(name: "program", arg: 1, scope: !690, file: !680, line: 634, type: !28)
!690 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !680, file: !680, line: 634, type: !691, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !28}
!693 = !{!689, !694, !703, !704, !706}
!694 = !DILocalVariable(name: "infomap", scope: !690, file: !680, line: 636, type: !695)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 896, elements: !701)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !690, file: !680, line: 636, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !697, file: !680, line: 636, baseType: !28, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !697, file: !680, line: 636, baseType: !28, size: 64, offset: 64)
!701 = !{!702}
!702 = !DISubrange(count: 7)
!703 = !DILocalVariable(name: "node", scope: !690, file: !680, line: 646, type: !28)
!704 = !DILocalVariable(name: "map_prog", scope: !690, file: !680, line: 647, type: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!706 = !DILocalVariable(name: "lc_messages", scope: !690, file: !680, line: 659, type: !28)
!707 = !DILocation(line: 0, scope: !690, inlinedAt: !708)
!708 = distinct !DILocation(line: 114, column: 7, scope: !676)
!709 = !DILocation(line: 636, column: 3, scope: !690, inlinedAt: !708)
!710 = !DILocation(line: 636, column: 67, scope: !690, inlinedAt: !708)
!711 = !DILocation(line: 647, column: 36, scope: !690, inlinedAt: !708)
!712 = !DILocation(line: 649, column: 3, scope: !690, inlinedAt: !708)
!713 = !DILocation(line: 649, column: 33, scope: !690, inlinedAt: !708)
!714 = !DILocation(line: 650, column: 13, scope: !690, inlinedAt: !708)
!715 = !DILocation(line: 649, column: 20, scope: !690, inlinedAt: !708)
!716 = !{!717, !672, i64 0}
!717 = !{!"infomap", !672, i64 0, !672, i64 8}
!718 = !DILocation(line: 649, column: 10, scope: !690, inlinedAt: !708)
!719 = !DILocation(line: 649, column: 28, scope: !690, inlinedAt: !708)
!720 = distinct !{!720, !712, !714, !721}
!721 = !{!"llvm.loop.mustprogress"}
!722 = !DILocation(line: 652, column: 17, scope: !723, inlinedAt: !708)
!723 = distinct !DILexicalBlock(scope: !690, file: !680, line: 652, column: 7)
!724 = !{!717, !672, i64 8}
!725 = !DILocation(line: 652, column: 7, scope: !723, inlinedAt: !708)
!726 = !DILocation(line: 652, column: 7, scope: !690, inlinedAt: !708)
!727 = !DILocation(line: 655, column: 3, scope: !690, inlinedAt: !708)
!728 = !DILocation(line: 659, column: 29, scope: !690, inlinedAt: !708)
!729 = !DILocation(line: 660, column: 7, scope: !730, inlinedAt: !708)
!730 = distinct !DILexicalBlock(scope: !690, file: !680, line: 660, column: 7)
!731 = !DILocation(line: 660, column: 19, scope: !730, inlinedAt: !708)
!732 = !DILocation(line: 660, column: 22, scope: !730, inlinedAt: !708)
!733 = !DILocation(line: 660, column: 7, scope: !690, inlinedAt: !708)
!734 = !DILocation(line: 666, column: 7, scope: !735, inlinedAt: !708)
!735 = distinct !DILexicalBlock(scope: !730, file: !680, line: 661, column: 5)
!736 = !DILocation(line: 668, column: 5, scope: !735, inlinedAt: !708)
!737 = !DILocation(line: 669, column: 3, scope: !690, inlinedAt: !708)
!738 = !DILocation(line: 671, column: 3, scope: !690, inlinedAt: !708)
!739 = !DILocation(line: 673, column: 1, scope: !690, inlinedAt: !708)
!740 = !DILocation(line: 116, column: 3, scope: !660)
!741 = !DISubprogram(name: "dcgettext", scope: !742, file: !742, line: 51, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!742 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!743 = !DISubroutineType(types: !744)
!744 = !{!22, !28, !28, !31}
!745 = !DISubprogram(name: "fputs_unlocked", scope: !746, file: !746, line: 667, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!746 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!747 = !DISubroutineType(types: !748)
!748 = !{!31, !28, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !751, line: 49, size: 1728, elements: !752)
!751 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !768, !769, !770, !771, !775, !776, !778, !782, !785, !787, !790, !793, !794, !795, !796, !797}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !750, file: !751, line: 51, baseType: !31, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !750, file: !751, line: 54, baseType: !22, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !750, file: !751, line: 55, baseType: !22, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !750, file: !751, line: 56, baseType: !22, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !750, file: !751, line: 57, baseType: !22, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !750, file: !751, line: 58, baseType: !22, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !750, file: !751, line: 59, baseType: !22, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !750, file: !751, line: 60, baseType: !22, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !750, file: !751, line: 61, baseType: !22, size: 64, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !750, file: !751, line: 64, baseType: !22, size: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !750, file: !751, line: 65, baseType: !22, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !750, file: !751, line: 66, baseType: !22, size: 64, offset: 704)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !750, file: !751, line: 68, baseType: !766, size: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !751, line: 36, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !750, file: !751, line: 70, baseType: !749, size: 64, offset: 832)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !750, file: !751, line: 72, baseType: !31, size: 32, offset: 896)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !750, file: !751, line: 73, baseType: !31, size: 32, offset: 928)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !750, file: !751, line: 74, baseType: !772, size: 64, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !773, line: 152, baseType: !774)
!773 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!774 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !750, file: !751, line: 77, baseType: !32, size: 16, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !750, file: !751, line: 78, baseType: !777, size: 8, offset: 1040)
!777 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !750, file: !751, line: 79, baseType: !779, size: 8, offset: 1048)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 1)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !750, file: !751, line: 81, baseType: !783, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !751, line: 43, baseType: null)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !750, file: !751, line: 89, baseType: !786, size: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !773, line: 153, baseType: !774)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !750, file: !751, line: 91, baseType: !788, size: 64, offset: 1216)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !751, line: 37, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !750, file: !751, line: 92, baseType: !791, size: 64, offset: 1280)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !751, line: 38, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !750, file: !751, line: 93, baseType: !749, size: 64, offset: 1344)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !750, file: !751, line: 94, baseType: !24, size: 64, offset: 1408)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !750, file: !751, line: 95, baseType: !25, size: 64, offset: 1472)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !750, file: !751, line: 96, baseType: !31, size: 32, offset: 1536)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !750, file: !751, line: 98, baseType: !798, size: 160, offset: 1568)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 20)
!801 = !DISubprogram(name: "setlocale", scope: !802, file: !802, line: 122, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!802 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!803 = !DISubroutineType(types: !804)
!804 = !{!22, !31, !28}
!805 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 569, type: !806, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!806 = !DISubroutineType(types: !807)
!807 = !{!31, !31, !808}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!809 = !{!810, !811, !812, !813, !814, !815, !816, !821, !822, !823, !824, !827, !828, !831}
!810 = !DILocalVariable(name: "argc", arg: 1, scope: !805, file: !3, line: 569, type: !31)
!811 = !DILocalVariable(name: "argv", arg: 2, scope: !805, file: !3, line: 569, type: !808)
!812 = !DILocalVariable(name: "optc", scope: !805, file: !3, line: 571, type: !31)
!813 = !DILocalVariable(name: "first", scope: !805, file: !3, line: 572, type: !63)
!814 = !DILocalVariable(name: "step", scope: !805, file: !3, line: 573, type: !63)
!815 = !DILocalVariable(name: "last", scope: !805, file: !3, line: 574, type: !63)
!816 = !DILocalVariable(name: "layout", scope: !805, file: !3, line: 575, type: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "layout", file: !3, line: 138, size: 128, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !817, file: !3, line: 141, baseType: !25, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "suffix_len", scope: !817, file: !3, line: 142, baseType: !25, size: 64, offset: 64)
!821 = !DILocalVariable(name: "format_str", scope: !805, file: !3, line: 578, type: !28)
!822 = !DILocalVariable(name: "n_args", scope: !805, file: !3, line: 630, type: !7)
!823 = !DILocalVariable(name: "fast_step_ok", scope: !805, file: !3, line: 660, type: !36)
!824 = !DILocalVariable(name: "s1", scope: !825, file: !3, line: 673, type: !28)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 672, column: 5)
!826 = distinct !DILexicalBlock(scope: !805, file: !3, line: 667, column: 7)
!827 = !DILocalVariable(name: "s2", scope: !825, file: !3, line: 674, type: !28)
!828 = !DILocalVariable(name: "s1", scope: !829, file: !3, line: 709, type: !22)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 708, column: 5)
!830 = distinct !DILexicalBlock(scope: !805, file: !3, line: 704, column: 7)
!831 = !DILocalVariable(name: "s2", scope: !829, file: !3, line: 710, type: !22)
!832 = !DILocation(line: 574, column: 11, scope: !805)
!833 = !DILocation(line: 0, scope: !805)
!834 = !DILocation(line: 573, column: 3, scope: !805)
!835 = !DILocation(line: 573, column: 11, scope: !805)
!836 = !DILocation(line: 574, column: 3, scope: !805)
!837 = !DILocation(line: 581, column: 21, scope: !805)
!838 = !DILocation(line: 581, column: 3, scope: !805)
!839 = !DILocation(line: 582, column: 17, scope: !805)
!840 = !DILocation(line: 582, column: 16, scope: !805)
!841 = !DILocation(line: 582, column: 13, scope: !805)
!842 = !{!843, !843, i64 0}
!843 = !{!"_Bool", !673, i64 0}
!844 = !DILocation(line: 583, column: 3, scope: !805)
!845 = !DILocation(line: 584, column: 3, scope: !805)
!846 = !DILocation(line: 586, column: 3, scope: !805)
!847 = !DILocation(line: 588, column: 15, scope: !805)
!848 = !DILocation(line: 589, column: 13, scope: !805)
!849 = !DILocation(line: 594, column: 10, scope: !805)
!850 = !{!851, !851, i64 0}
!851 = !{!"int", !673, i64 0}
!852 = !DILocation(line: 594, column: 17, scope: !805)
!853 = !DILocation(line: 594, column: 3, scope: !805)
!854 = !DILocation(line: 596, column: 11, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 596, column: 11)
!856 = distinct !DILexicalBlock(scope: !805, file: !3, line: 595, column: 5)
!857 = !{!673, !673, i64 0}
!858 = !DILocation(line: 596, column: 27, scope: !855)
!859 = !DILocation(line: 597, column: 11, scope: !855)
!860 = !DILocation(line: 597, column: 23, scope: !855)
!861 = !DILocation(line: 597, column: 40, scope: !855)
!862 = !DILocation(line: 597, column: 47, scope: !855)
!863 = !DILocation(line: 597, column: 50, scope: !855)
!864 = !DILocation(line: 596, column: 11, scope: !856)
!865 = !DILocation(line: 603, column: 14, scope: !856)
!866 = !DILocation(line: 604, column: 11, scope: !856)
!867 = !DILocation(line: 630, column: 32, scope: !805)
!868 = !DILocation(line: 610, column: 24, scope: !869)
!869 = distinct !DILexicalBlock(scope: !856, file: !3, line: 608, column: 9)
!870 = !DILocation(line: 611, column: 11, scope: !869)
!871 = !DILocation(line: 614, column: 23, scope: !869)
!872 = !DILocation(line: 614, column: 21, scope: !869)
!873 = !DILocation(line: 615, column: 11, scope: !869)
!874 = !DILocation(line: 618, column: 23, scope: !869)
!875 = !DILocation(line: 619, column: 11, scope: !869)
!876 = !DILocation(line: 621, column: 9, scope: !869)
!877 = !DILocation(line: 623, column: 9, scope: !869)
!878 = !DILocation(line: 626, column: 11, scope: !869)
!879 = distinct !{!879, !853, !880, !721}
!880 = !DILocation(line: 628, column: 5, scope: !805)
!881 = !DILocation(line: 578, column: 15, scope: !805)
!882 = !DILocation(line: 630, column: 30, scope: !805)
!883 = !DILocation(line: 631, column: 14, scope: !884)
!884 = distinct !DILexicalBlock(scope: !805, file: !3, line: 631, column: 7)
!885 = !DILocation(line: 631, column: 7, scope: !805)
!886 = !DILocation(line: 633, column: 20, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !3, line: 632, column: 5)
!888 = !DILocation(line: 633, column: 7, scope: !887)
!889 = !DILocation(line: 634, column: 7, scope: !887)
!890 = !DILocation(line: 637, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !805, file: !3, line: 637, column: 7)
!892 = !DILocation(line: 637, column: 7, scope: !805)
!893 = !DILocation(line: 639, column: 20, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !3, line: 638, column: 5)
!895 = !DILocation(line: 639, column: 55, scope: !894)
!896 = !DILocation(line: 639, column: 62, scope: !894)
!897 = !DILocation(line: 639, column: 50, scope: !894)
!898 = !DILocation(line: 639, column: 43, scope: !894)
!899 = !DILocation(line: 639, column: 7, scope: !894)
!900 = !DILocation(line: 640, column: 7, scope: !894)
!901 = !DILocation(line: 643, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !805, file: !3, line: 643, column: 7)
!903 = !DILocation(line: 643, column: 7, scope: !805)
!904 = !DILocation(line: 0, scope: !905, inlinedAt: !924)
!905 = distinct !DISubprogram(name: "long_double_format", scope: !3, file: !3, line: 236, type: !906, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!906 = !DISubroutineType(types: !907)
!907 = !{!28, !28, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !923}
!910 = !DILocalVariable(name: "fmt", arg: 1, scope: !905, file: !3, line: 236, type: !28)
!911 = !DILocalVariable(name: "layout", arg: 2, scope: !905, file: !3, line: 236, type: !908)
!912 = !DILocalVariable(name: "i", scope: !905, file: !3, line: 238, type: !25)
!913 = !DILocalVariable(name: "prefix_len", scope: !905, file: !3, line: 239, type: !25)
!914 = !DILocalVariable(name: "suffix_len", scope: !905, file: !3, line: 240, type: !25)
!915 = !DILocalVariable(name: "length_modifier_offset", scope: !905, file: !3, line: 241, type: !25)
!916 = !DILocalVariable(name: "has_L", scope: !905, file: !3, line: 242, type: !36)
!917 = !DILocalVariable(name: "format_size", scope: !918, file: !3, line: 278, type: !25)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 277, column: 7)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 274, column: 14)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 271, column: 9)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 270, column: 3)
!922 = distinct !DILexicalBlock(scope: !905, file: !3, line: 270, column: 3)
!923 = !DILocalVariable(name: "ldfmt", scope: !918, file: !3, line: 279, type: !22)
!924 = distinct !DILocation(line: 644, column: 18, scope: !902)
!925 = !DILocation(line: 0, scope: !926, inlinedAt: !924)
!926 = distinct !DILexicalBlock(scope: !905, file: !3, line: 244, column: 3)
!927 = !DILocation(line: 244, column: 18, scope: !928, inlinedAt: !924)
!928 = distinct !DILexicalBlock(scope: !926, file: !3, line: 244, column: 3)
!929 = !DILocation(line: 244, column: 32, scope: !928, inlinedAt: !924)
!930 = !DILocation(line: 244, column: 41, scope: !928, inlinedAt: !924)
!931 = !DILocation(line: 244, column: 35, scope: !928, inlinedAt: !924)
!932 = !DILocation(line: 244, column: 46, scope: !928, inlinedAt: !924)
!933 = !DILocation(line: 244, column: 3, scope: !926, inlinedAt: !924)
!934 = !DILocation(line: 247, column: 9, scope: !935, inlinedAt: !924)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 246, column: 11)
!936 = distinct !DILexicalBlock(scope: !928, file: !3, line: 245, column: 5)
!937 = !DILocation(line: 249, column: 17, scope: !936, inlinedAt: !924)
!938 = !DILocation(line: 244, column: 57, scope: !928, inlinedAt: !924)
!939 = !DILocation(line: 244, column: 3, scope: !928, inlinedAt: !924)
!940 = distinct !{!940, !933, !941, !721}
!941 = !DILocation(line: 250, column: 5, scope: !926, inlinedAt: !924)
!942 = !DILocation(line: 253, column: 8, scope: !905, inlinedAt: !924)
!943 = !DILocation(line: 253, column: 5, scope: !905, inlinedAt: !924)
!944 = !DILocation(line: 254, column: 20, scope: !905, inlinedAt: !924)
!945 = !DILocation(line: 254, column: 8, scope: !905, inlinedAt: !924)
!946 = !DILocation(line: 254, column: 5, scope: !905, inlinedAt: !924)
!947 = !DILocation(line: 255, column: 7, scope: !948, inlinedAt: !924)
!948 = distinct !DILexicalBlock(scope: !905, file: !3, line: 255, column: 7)
!949 = !DILocation(line: 255, column: 14, scope: !948, inlinedAt: !924)
!950 = !DILocation(line: 255, column: 7, scope: !905, inlinedAt: !924)
!951 = !DILocation(line: 257, column: 8, scope: !952, inlinedAt: !924)
!952 = distinct !DILexicalBlock(scope: !948, file: !3, line: 256, column: 5)
!953 = !DILocation(line: 258, column: 24, scope: !952, inlinedAt: !924)
!954 = !DILocation(line: 258, column: 12, scope: !952, inlinedAt: !924)
!955 = !DILocation(line: 258, column: 9, scope: !952, inlinedAt: !924)
!956 = !DILocation(line: 262, column: 12, scope: !905, inlinedAt: !924)
!957 = !DILocation(line: 259, column: 5, scope: !952, inlinedAt: !924)
!958 = !DILocation(line: 262, column: 19, scope: !905, inlinedAt: !924)
!959 = !DILocation(line: 263, column: 8, scope: !905, inlinedAt: !924)
!960 = !DILocation(line: 263, column: 5, scope: !905, inlinedAt: !924)
!961 = !DILocation(line: 264, column: 7, scope: !962, inlinedAt: !924)
!962 = distinct !DILexicalBlock(scope: !905, file: !3, line: 264, column: 7)
!963 = !DILocation(line: 264, column: 14, scope: !962, inlinedAt: !924)
!964 = !DILocation(line: 264, column: 7, scope: !905, inlinedAt: !924)
!965 = !DILocation(line: 265, column: 5, scope: !962, inlinedAt: !924)
!966 = !DILocation(line: 266, column: 9, scope: !967, inlinedAt: !924)
!967 = distinct !DILexicalBlock(scope: !905, file: !3, line: 266, column: 7)
!968 = !DILocation(line: 266, column: 7, scope: !905, inlinedAt: !924)
!969 = !DILocation(line: 267, column: 5, scope: !967, inlinedAt: !924)
!970 = !DILocation(line: 270, column: 9, scope: !922, inlinedAt: !924)
!971 = !DILocation(line: 270, column: 8, scope: !922, inlinedAt: !924)
!972 = !DILocation(line: 0, scope: !922, inlinedAt: !924)
!973 = !DILocation(line: 271, column: 9, scope: !920, inlinedAt: !924)
!974 = !DILocation(line: 271, column: 23, scope: !920, inlinedAt: !924)
!975 = !DILocation(line: 271, column: 32, scope: !920, inlinedAt: !924)
!976 = !DILocation(line: 271, column: 26, scope: !920, inlinedAt: !924)
!977 = !DILocation(line: 271, column: 37, scope: !920, inlinedAt: !924)
!978 = !DILocation(line: 271, column: 9, scope: !921, inlinedAt: !924)
!979 = !DILocation(line: 272, column: 7, scope: !920, inlinedAt: !924)
!980 = !DILocation(line: 275, column: 17, scope: !919, inlinedAt: !924)
!981 = !DILocation(line: 270, column: 17, scope: !921, inlinedAt: !924)
!982 = !DILocation(line: 270, column: 3, scope: !921, inlinedAt: !924)
!983 = distinct !{!983, !984, !985}
!984 = !DILocation(line: 270, column: 3, scope: !922, inlinedAt: !924)
!985 = !DILocation(line: 287, column: 7, scope: !922, inlinedAt: !924)
!986 = !DILocation(line: 0, scope: !918, inlinedAt: !924)
!987 = !DILocation(line: 279, column: 44, scope: !918, inlinedAt: !924)
!988 = !DILocation(line: 279, column: 23, scope: !918, inlinedAt: !924)
!989 = !DILocalVariable(name: "__dest", arg: 1, scope: !990, file: !991, line: 26, type: !994)
!990 = distinct !DISubprogram(name: "memcpy", scope: !991, file: !991, line: 26, type: !992, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !998)
!991 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!992 = !DISubroutineType(types: !993)
!993 = !{!24, !994, !995, !25}
!994 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!995 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!998 = !{!989, !999, !1000}
!999 = !DILocalVariable(name: "__src", arg: 2, scope: !990, file: !991, line: 26, type: !995)
!1000 = !DILocalVariable(name: "__len", arg: 3, scope: !990, file: !991, line: 26, type: !25)
!1001 = !DILocation(line: 0, scope: !990, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 280, column: 9, scope: !918, inlinedAt: !924)
!1003 = !DILocation(line: 29, column: 10, scope: !990, inlinedAt: !1002)
!1004 = !DILocation(line: 281, column: 9, scope: !918, inlinedAt: !924)
!1005 = !DILocation(line: 281, column: 39, scope: !918, inlinedAt: !924)
!1006 = !DILocation(line: 282, column: 48, scope: !918, inlinedAt: !924)
!1007 = !DILocation(line: 283, column: 46, scope: !918, inlinedAt: !924)
!1008 = !DILocalVariable(name: "__dest", arg: 1, scope: !1009, file: !991, line: 77, type: !1012)
!1009 = distinct !DISubprogram(name: "strcpy", scope: !991, file: !991, line: 77, type: !1010, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1014)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!22, !1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!1013 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!1014 = !{!1008, !1015}
!1015 = !DILocalVariable(name: "__src", arg: 2, scope: !1009, file: !991, line: 77, type: !1013)
!1016 = !DILocation(line: 0, scope: !1009, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 282, column: 9, scope: !918, inlinedAt: !924)
!1018 = !DILocation(line: 79, column: 10, scope: !1009, inlinedAt: !1017)
!1019 = !DILocation(line: 646, column: 18, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !805, file: !3, line: 646, column: 7)
!1021 = !DILocation(line: 646, column: 29, scope: !1020)
!1022 = !DILocation(line: 646, column: 7, scope: !805)
!1023 = !DILocation(line: 648, column: 20, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 647, column: 5)
!1025 = !DILocation(line: 648, column: 7, scope: !1024)
!1026 = !DILocation(line: 650, column: 7, scope: !1024)
!1027 = !DILocation(line: 661, column: 14, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !805, file: !3, line: 661, column: 7)
!1029 = !DILocation(line: 662, column: 7, scope: !1028)
!1030 = !DILocation(line: 662, column: 30, scope: !1028)
!1031 = !DILocation(line: 662, column: 37, scope: !1028)
!1032 = !DILocation(line: 662, column: 25, scope: !1028)
!1033 = !DILocalVariable(name: "s", arg: 1, scope: !1034, file: !3, line: 562, type: !28)
!1034 = distinct !DISubprogram(name: "all_digits_p", scope: !3, file: !3, line: 562, type: !1035, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!36, !28}
!1037 = !{!1033, !1038}
!1038 = !DILocalVariable(name: "n", scope: !1034, file: !3, line: 564, type: !25)
!1039 = !DILocation(line: 0, scope: !1034, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 662, column: 11, scope: !1028)
!1041 = !DILocation(line: 565, column: 10, scope: !1034, inlinedAt: !1040)
!1042 = !DILocation(line: 565, column: 25, scope: !1034, inlinedAt: !1040)
!1043 = !DILocation(line: 564, column: 14, scope: !1034, inlinedAt: !1040)
!1044 = !DILocation(line: 565, column: 33, scope: !1034, inlinedAt: !1040)
!1045 = !DILocation(line: 565, column: 30, scope: !1034, inlinedAt: !1040)
!1046 = !DILocation(line: 663, column: 11, scope: !1028)
!1047 = !DILocation(line: 663, column: 54, scope: !1028)
!1048 = !DILocation(line: 663, column: 14, scope: !1028)
!1049 = !DILocation(line: 664, column: 11, scope: !1028)
!1050 = !DILocation(line: 665, column: 5, scope: !1028)
!1051 = !DILocation(line: 667, column: 26, scope: !826)
!1052 = !DILocation(line: 667, column: 21, scope: !826)
!1053 = !DILocation(line: 0, scope: !1034, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 667, column: 7, scope: !826)
!1055 = !DILocation(line: 565, column: 10, scope: !1034, inlinedAt: !1054)
!1056 = !DILocation(line: 565, column: 25, scope: !1034, inlinedAt: !1054)
!1057 = !DILocation(line: 564, column: 14, scope: !1034, inlinedAt: !1054)
!1058 = !DILocation(line: 565, column: 33, scope: !1034, inlinedAt: !1054)
!1059 = !DILocation(line: 565, column: 30, scope: !1034, inlinedAt: !1054)
!1060 = !DILocation(line: 668, column: 7, scope: !826)
!1061 = !DILocation(line: 668, column: 18, scope: !826)
!1062 = !DILocation(line: 668, column: 23, scope: !826)
!1063 = !DILocation(line: 668, column: 52, scope: !826)
!1064 = !DILocation(line: 668, column: 40, scope: !826)
!1065 = !DILocation(line: 0, scope: !1034, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 668, column: 26, scope: !826)
!1067 = !DILocation(line: 565, column: 10, scope: !1034, inlinedAt: !1066)
!1068 = !DILocation(line: 565, column: 25, scope: !1034, inlinedAt: !1066)
!1069 = !DILocation(line: 564, column: 14, scope: !1034, inlinedAt: !1066)
!1070 = !DILocation(line: 565, column: 33, scope: !1034, inlinedAt: !1066)
!1071 = !DILocation(line: 565, column: 30, scope: !1034, inlinedAt: !1066)
!1072 = !DILocation(line: 669, column: 7, scope: !826)
!1073 = !DILocation(line: 669, column: 18, scope: !826)
!1074 = !DILocation(line: 669, column: 22, scope: !826)
!1075 = !DILocation(line: 670, column: 26, scope: !826)
!1076 = !DILocation(line: 670, column: 55, scope: !826)
!1077 = !DILocation(line: 670, column: 43, scope: !826)
!1078 = !DILocation(line: 0, scope: !1034, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 670, column: 29, scope: !826)
!1080 = !DILocation(line: 565, column: 10, scope: !1034, inlinedAt: !1079)
!1081 = !DILocation(line: 565, column: 25, scope: !1034, inlinedAt: !1079)
!1082 = !DILocation(line: 564, column: 14, scope: !1034, inlinedAt: !1079)
!1083 = !DILocation(line: 565, column: 33, scope: !1034, inlinedAt: !1079)
!1084 = !DILocation(line: 565, column: 30, scope: !1034, inlinedAt: !1079)
!1085 = !DILocation(line: 671, column: 7, scope: !826)
!1086 = !DILocation(line: 671, column: 11, scope: !826)
!1087 = !DILocation(line: 671, column: 23, scope: !826)
!1088 = !DILocation(line: 671, column: 49, scope: !826)
!1089 = !DILocation(line: 671, column: 41, scope: !826)
!1090 = !DILocation(line: 671, column: 60, scope: !826)
!1091 = !DILocation(line: 667, column: 7, scope: !805)
!1092 = !DILocation(line: 673, column: 24, scope: !825)
!1093 = !DILocation(line: 0, scope: !825)
!1094 = !DILocation(line: 674, column: 46, scope: !825)
!1095 = !DILocation(line: 674, column: 36, scope: !825)
!1096 = !DILocation(line: 674, column: 24, scope: !825)
!1097 = !DILocation(line: 675, column: 29, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !825, file: !3, line: 675, column: 11)
!1099 = !DILocation(line: 675, column: 11, scope: !1098)
!1100 = !DILocation(line: 681, column: 31, scope: !805)
!1101 = !DILocation(line: 681, column: 20, scope: !805)
!1102 = !DILocation(line: 681, column: 10, scope: !805)
!1103 = !{i64 0, i64 16, !1104, i64 16, i64 8, !1106, i64 24, i64 4, !850}
!1104 = !{!1105, !1105, i64 0}
!1105 = !{!"long double", !673, i64 0}
!1106 = !{!1107, !1107, i64 0}
!1107 = !{!"long", !673, i64 0}
!1108 = !{i64 0, i64 8, !1106, i64 8, i64 4, !850}
!1109 = !{i64 0, i64 4, !850}
!1110 = !DILocation(line: 683, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !805, file: !3, line: 683, column: 7)
!1112 = !DILocation(line: 683, column: 14, scope: !1111)
!1113 = !DILocation(line: 683, column: 7, scope: !805)
!1114 = !DILocation(line: 686, column: 14, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 684, column: 5)
!1116 = !DILocation(line: 686, column: 35, scope: !1115)
!1117 = !DILocation(line: 686, column: 24, scope: !1115)
!1118 = !{i64 0, i64 6, !1104, i64 6, i64 8, !1106, i64 14, i64 4, !850}
!1119 = !DILocation(line: 688, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 688, column: 11)
!1121 = !DILocation(line: 688, column: 18, scope: !1120)
!1122 = !DILocation(line: 688, column: 11, scope: !1115)
!1123 = !DILocation(line: 690, column: 18, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 689, column: 9)
!1125 = !DILocation(line: 691, column: 26, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 691, column: 15)
!1127 = !DILocation(line: 691, column: 15, scope: !1124)
!1128 = !DILocation(line: 693, column: 28, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 692, column: 13)
!1130 = !DILocation(line: 694, column: 34, scope: !1129)
!1131 = !DILocation(line: 694, column: 40, scope: !1129)
!1132 = !DILocation(line: 694, column: 29, scope: !1129)
!1133 = !DILocation(line: 694, column: 22, scope: !1129)
!1134 = !DILocation(line: 693, column: 15, scope: !1129)
!1135 = !DILocation(line: 695, column: 15, scope: !1129)
!1136 = !DILocation(line: 698, column: 18, scope: !1124)
!1137 = !DILocation(line: 698, column: 39, scope: !1124)
!1138 = !DILocation(line: 698, column: 28, scope: !1124)
!1139 = !DILocation(line: 699, column: 9, scope: !1124)
!1140 = !DILocation(line: 704, column: 23, scope: !830)
!1141 = !DILocation(line: 704, column: 28, scope: !830)
!1142 = !DILocation(line: 704, column: 36, scope: !830)
!1143 = !{!1144, !851, i64 24}
!1144 = !{!"operand", !1105, i64 0, !1107, i64 16, !851, i64 24}
!1145 = !DILocation(line: 704, column: 51, scope: !830)
!1146 = !DILocation(line: 705, column: 10, scope: !830)
!1147 = !DILocation(line: 705, column: 33, scope: !830)
!1148 = !DILocation(line: 706, column: 19, scope: !830)
!1149 = !{!1144, !1105, i64 0}
!1150 = !DILocation(line: 706, column: 12, scope: !830)
!1151 = !DILocation(line: 706, column: 25, scope: !830)
!1152 = !DILocation(line: 707, column: 49, scope: !830)
!1153 = !DILocation(line: 707, column: 41, scope: !830)
!1154 = !DILocation(line: 707, column: 60, scope: !830)
!1155 = !DILocation(line: 704, column: 7, scope: !805)
!1156 = !DILocation(line: 709, column: 7, scope: !829)
!1157 = !DILocation(line: 710, column: 7, scope: !829)
!1158 = !DILocation(line: 0, scope: !829)
!1159 = !DILocation(line: 711, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !829, file: !3, line: 711, column: 11)
!1161 = !DILocation(line: 711, column: 48, scope: !1160)
!1162 = !DILocation(line: 711, column: 11, scope: !829)
!1163 = !DILocation(line: 712, column: 9, scope: !1160)
!1164 = !DILocation(line: 713, column: 13, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !829, file: !3, line: 713, column: 11)
!1166 = !DILocation(line: 713, column: 11, scope: !829)
!1167 = !DILocation(line: 714, column: 14, scope: !1165)
!1168 = !DILocation(line: 714, column: 12, scope: !1165)
!1169 = !DILocation(line: 714, column: 9, scope: !1165)
!1170 = !DILocation(line: 715, column: 16, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 715, column: 16)
!1172 = !DILocation(line: 715, column: 52, scope: !1171)
!1173 = !DILocation(line: 715, column: 16, scope: !1165)
!1174 = !DILocation(line: 716, column: 9, scope: !1171)
!1175 = !DILocation(line: 718, column: 12, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !829, file: !3, line: 718, column: 11)
!1177 = !DILocation(line: 718, column: 11, scope: !1176)
!1178 = !DILocation(line: 718, column: 15, scope: !1176)
!1179 = !DILocation(line: 718, column: 22, scope: !1176)
!1180 = !DILocation(line: 718, column: 26, scope: !1176)
!1181 = !DILocation(line: 718, column: 25, scope: !1176)
!1182 = !DILocation(line: 718, column: 29, scope: !1176)
!1183 = !DILocation(line: 718, column: 36, scope: !1176)
!1184 = !DILocation(line: 718, column: 62, scope: !1176)
!1185 = !DILocation(line: 718, column: 57, scope: !1176)
!1186 = !DILocation(line: 718, column: 39, scope: !1176)
!1187 = !DILocation(line: 718, column: 11, scope: !829)
!1188 = !DILocation(line: 725, column: 13, scope: !829)
!1189 = !DILocation(line: 725, column: 7, scope: !829)
!1190 = !DILocation(line: 726, column: 13, scope: !829)
!1191 = !DILocation(line: 726, column: 7, scope: !829)
!1192 = !DILocation(line: 728, column: 5, scope: !830)
!1193 = !DILocation(line: 730, column: 18, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !805, file: !3, line: 730, column: 7)
!1195 = !DILocation(line: 730, column: 7, scope: !805)
!1196 = !DILocation(line: 0, scope: !60, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 731, column: 18, scope: !1194)
!1198 = !DILocation(line: 372, column: 29, scope: !60, inlinedAt: !1197)
!1199 = !DILocation(line: 376, column: 14, scope: !60, inlinedAt: !1197)
!1200 = !DILocation(line: 378, column: 12, scope: !79, inlinedAt: !1197)
!1201 = !DILocation(line: 378, column: 23, scope: !79, inlinedAt: !1197)
!1202 = !DILocation(line: 380, column: 11, scope: !77, inlinedAt: !1197)
!1203 = !DILocation(line: 380, column: 11, scope: !78, inlinedAt: !1197)
!1204 = !DILocation(line: 383, column: 52, scope: !76, inlinedAt: !1197)
!1205 = !DILocation(line: 383, column: 46, scope: !76, inlinedAt: !1197)
!1206 = !DILocation(line: 0, scope: !76, inlinedAt: !1197)
!1207 = !DILocation(line: 385, column: 50, scope: !76, inlinedAt: !1197)
!1208 = !DILocation(line: 385, column: 44, scope: !76, inlinedAt: !1197)
!1209 = !DILocation(line: 386, column: 15, scope: !1210, inlinedAt: !1197)
!1210 = distinct !DILexicalBlock(scope: !76, file: !3, line: 386, column: 15)
!1211 = !DILocation(line: 386, column: 30, scope: !1210, inlinedAt: !1197)
!1212 = !DILocation(line: 388, column: 30, scope: !1213, inlinedAt: !1197)
!1213 = distinct !DILexicalBlock(scope: !76, file: !3, line: 388, column: 15)
!1214 = !DILocation(line: 388, column: 35, scope: !1213, inlinedAt: !1197)
!1215 = !DILocation(line: 385, column: 42, scope: !76, inlinedAt: !1197)
!1216 = !DILocation(line: 390, column: 36, scope: !1217, inlinedAt: !1197)
!1217 = distinct !DILexicalBlock(scope: !76, file: !3, line: 390, column: 15)
!1218 = !DILocation(line: 383, column: 44, scope: !76, inlinedAt: !1197)
!1219 = !DILocation(line: 392, column: 26, scope: !76, inlinedAt: !1197)
!1220 = !DILocation(line: 393, column: 21, scope: !84, inlinedAt: !1197)
!1221 = !DILocation(line: 393, column: 15, scope: !76, inlinedAt: !1197)
!1222 = !DILocation(line: 395, column: 23, scope: !83, inlinedAt: !1197)
!1223 = !DILocation(line: 0, scope: !83, inlinedAt: !1197)
!1224 = !DILocation(line: 396, column: 15, scope: !83, inlinedAt: !1197)
!1225 = !DILocation(line: 402, column: 11, scope: !1226, inlinedAt: !1197)
!1226 = distinct !DILexicalBlock(scope: !77, file: !3, line: 401, column: 9)
!1227 = !DILocation(line: 403, column: 11, scope: !1226, inlinedAt: !1197)
!1228 = !DILocation(line: 733, column: 56, scope: !805)
!1229 = !DILocalVariable(name: "x", scope: !1230, file: !3, line: 309, type: !67)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 308, column: 5)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 307, column: 7)
!1232 = distinct !DISubprogram(name: "print_numbers", scope: !3, file: !3, line: 302, type: !1233, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !28, !817, !67, !67, !67}
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1229, !1242, !1243, !1247, !1250, !1251, !1252, !1253, !1256}
!1236 = !DILocalVariable(name: "fmt", arg: 1, scope: !1232, file: !3, line: 302, type: !28)
!1237 = !DILocalVariable(name: "layout", arg: 2, scope: !1232, file: !3, line: 302, type: !817)
!1238 = !DILocalVariable(name: "first", arg: 3, scope: !1232, file: !3, line: 303, type: !67)
!1239 = !DILocalVariable(name: "step", arg: 4, scope: !1232, file: !3, line: 303, type: !67)
!1240 = !DILocalVariable(name: "last", arg: 5, scope: !1232, file: !3, line: 303, type: !67)
!1241 = !DILocalVariable(name: "out_of_range", scope: !1232, file: !3, line: 305, type: !36)
!1242 = !DILocalVariable(name: "i", scope: !1230, file: !3, line: 310, type: !67)
!1243 = !DILocalVariable(name: "x0", scope: !1244, file: !3, line: 314, type: !67)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 313, column: 9)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 312, column: 7)
!1246 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 312, column: 7)
!1247 = !DILocalVariable(name: "print_extra_number", scope: !1248, file: !3, line: 331, type: !36)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 323, column: 13)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 322, column: 15)
!1250 = !DILocalVariable(name: "x_val", scope: !1248, file: !3, line: 332, type: !67)
!1251 = !DILocalVariable(name: "x_str", scope: !1248, file: !3, line: 333, type: !22)
!1252 = !DILocalVariable(name: "x_strlen", scope: !1248, file: !3, line: 334, type: !31)
!1253 = !DILocalVariable(name: "x0_str", scope: !1254, file: !3, line: 347, type: !22)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 346, column: 17)
!1255 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 344, column: 19)
!1256 = !DILocalVariable(name: "x0_strlen", scope: !1254, file: !3, line: 348, type: !31)
!1257 = !DILocation(line: 309, column: 19, scope: !1230, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 733, column: 3, scope: !805)
!1259 = !DILocation(line: 310, column: 19, scope: !1230, inlinedAt: !1258)
!1260 = !DILocation(line: 314, column: 23, scope: !1244, inlinedAt: !1258)
!1261 = !DILocation(line: 0, scope: !1232, inlinedAt: !1258)
!1262 = !DILocation(line: 305, column: 29, scope: !1232, inlinedAt: !1258)
!1263 = !DILocation(line: 305, column: 24, scope: !1232, inlinedAt: !1258)
!1264 = !DILocation(line: 307, column: 7, scope: !1232, inlinedAt: !1258)
!1265 = !DILocation(line: 0, scope: !1230, inlinedAt: !1258)
!1266 = !DILocation(line: 0, scope: !1244, inlinedAt: !1258)
!1267 = !DILocation(line: 315, column: 15, scope: !1268, inlinedAt: !1258)
!1268 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 315, column: 15)
!1269 = !DILocation(line: 315, column: 31, scope: !1268, inlinedAt: !1258)
!1270 = !DILocation(line: 315, column: 15, scope: !1244, inlinedAt: !1258)
!1271 = !DILocation(line: 316, column: 13, scope: !1268, inlinedAt: !1258)
!1272 = !DILocation(line: 317, column: 15, scope: !1273, inlinedAt: !1258)
!1273 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 317, column: 15)
!1274 = !DILocation(line: 317, column: 15, scope: !1244, inlinedAt: !1258)
!1275 = !DILocation(line: 319, column: 25, scope: !1244, inlinedAt: !1258)
!1276 = !DILocation(line: 319, column: 21, scope: !1244, inlinedAt: !1258)
!1277 = !DILocation(line: 320, column: 27, scope: !1244, inlinedAt: !1258)
!1278 = !DILocation(line: 320, column: 24, scope: !1244, inlinedAt: !1258)
!1279 = !DILocation(line: 322, column: 15, scope: !1244, inlinedAt: !1258)
!1280 = !DILocation(line: 0, scope: !1248, inlinedAt: !1258)
!1281 = !DILocation(line: 332, column: 15, scope: !1248, inlinedAt: !1258)
!1282 = !DILocation(line: 333, column: 15, scope: !1248, inlinedAt: !1258)
!1283 = !DILocation(line: 335, column: 19, scope: !1284, inlinedAt: !1258)
!1284 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 335, column: 19)
!1285 = !{i8 0, i8 2}
!1286 = !DILocation(line: 335, column: 19, scope: !1248, inlinedAt: !1258)
!1287 = !DILocation(line: 336, column: 17, scope: !1284, inlinedAt: !1258)
!1288 = !DILocation(line: 337, column: 26, scope: !1248, inlinedAt: !1258)
!1289 = !DILocation(line: 338, column: 19, scope: !1290, inlinedAt: !1258)
!1290 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 338, column: 19)
!1291 = !DILocation(line: 338, column: 19, scope: !1248, inlinedAt: !1258)
!1292 = !DILocation(line: 339, column: 17, scope: !1290, inlinedAt: !1258)
!1293 = !DILocation(line: 340, column: 28, scope: !1294, inlinedAt: !1258)
!1294 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 340, column: 19)
!1295 = !DILocation(line: 340, column: 19, scope: !1248, inlinedAt: !1258)
!1296 = !DILocation(line: 341, column: 17, scope: !1294, inlinedAt: !1258)
!1297 = !DILocation(line: 342, column: 15, scope: !1248, inlinedAt: !1258)
!1298 = !DILocation(line: 342, column: 21, scope: !1248, inlinedAt: !1258)
!1299 = !DILocation(line: 342, column: 30, scope: !1248, inlinedAt: !1258)
!1300 = !DILocation(line: 342, column: 51, scope: !1248, inlinedAt: !1258)
!1301 = !DILocation(line: 344, column: 29, scope: !1255, inlinedAt: !1258)
!1302 = !DILocation(line: 344, column: 35, scope: !1255, inlinedAt: !1258)
!1303 = !DILocation(line: 344, column: 19, scope: !1255, inlinedAt: !1258)
!1304 = !DILocation(line: 345, column: 19, scope: !1255, inlinedAt: !1258)
!1305 = !DILocation(line: 356, column: 21, scope: !1248, inlinedAt: !1258)
!1306 = !DILocation(line: 356, column: 15, scope: !1248, inlinedAt: !1258)
!1307 = !DILocation(line: 357, column: 19, scope: !1248, inlinedAt: !1258)
!1308 = !DILocation(line: 347, column: 19, scope: !1254, inlinedAt: !1258)
!1309 = !DILocation(line: 0, scope: !1254, inlinedAt: !1258)
!1310 = !DILocation(line: 347, column: 25, scope: !1254, inlinedAt: !1258)
!1311 = !DILocation(line: 348, column: 35, scope: !1254, inlinedAt: !1258)
!1312 = !DILocation(line: 349, column: 33, scope: !1313, inlinedAt: !1258)
!1313 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 349, column: 23)
!1314 = !DILocation(line: 349, column: 23, scope: !1254, inlinedAt: !1258)
!1315 = !DILocation(line: 350, column: 21, scope: !1313, inlinedAt: !1258)
!1316 = !DILocation(line: 351, column: 19, scope: !1254, inlinedAt: !1258)
!1317 = !DILocation(line: 351, column: 26, scope: !1254, inlinedAt: !1258)
!1318 = !DILocation(line: 351, column: 36, scope: !1254, inlinedAt: !1258)
!1319 = !DILocation(line: 351, column: 57, scope: !1254, inlinedAt: !1258)
!1320 = !DILocation(line: 352, column: 41, scope: !1254, inlinedAt: !1258)
!1321 = !DILocation(line: 353, column: 19, scope: !1254, inlinedAt: !1258)
!1322 = !DILocation(line: 354, column: 17, scope: !1255, inlinedAt: !1258)
!1323 = !DILocation(line: 359, column: 13, scope: !1249, inlinedAt: !1258)
!1324 = !DILocation(line: 361, column: 15, scope: !1325, inlinedAt: !1258)
!1325 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 361, column: 15)
!1326 = !DILocation(line: 361, column: 41, scope: !1325, inlinedAt: !1258)
!1327 = !DILocation(line: 361, column: 15, scope: !1244, inlinedAt: !1258)
!1328 = !DILocation(line: 362, column: 13, scope: !1325, inlinedAt: !1258)
!1329 = !DILocation(line: 312, column: 22, scope: !1245, inlinedAt: !1258)
!1330 = distinct !{!1330, !1331, !1332}
!1331 = !DILocation(line: 312, column: 7, scope: !1246, inlinedAt: !1258)
!1332 = !DILocation(line: 363, column: 9, scope: !1246, inlinedAt: !1258)
!1333 = !DILocation(line: 365, column: 11, scope: !1334, inlinedAt: !1258)
!1334 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 365, column: 11)
!1335 = !DILocation(line: 365, column: 38, scope: !1334, inlinedAt: !1258)
!1336 = !DILocation(line: 365, column: 11, scope: !1230, inlinedAt: !1258)
!1337 = !DILocation(line: 366, column: 9, scope: !1334, inlinedAt: !1258)
!1338 = !DILocation(line: 736, column: 1, scope: !805)
!1339 = !DISubprogram(name: "bindtextdomain", scope: !742, file: !742, line: 86, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!22, !28, !28}
!1342 = !DISubprogram(name: "textdomain", scope: !742, file: !742, line: 82, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!22, !28}
!1345 = !DISubprogram(name: "atexit", scope: !1346, file: !1346, line: 595, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1346 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!31, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!1350 = !DISubprogram(name: "getopt_long", scope: !44, file: !44, line: 66, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!31, !31, !1353, !28, !1355, !49}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1356 = !DISubprogram(name: "error", scope: !1357, file: !1357, line: 52, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1357 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1358 = !DISubroutineType(types: !1359)
!1359 = !{null, !31, !31, !28, null}
!1360 = distinct !DISubprogram(name: "seq_fast", scope: !3, file: !3, line: 461, type: !1361, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!36, !28, !28, !1363}
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1364, line: 102, baseType: !1365)
!1364 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !773, line: 73, baseType: !27)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1382, !1383, !1384, !1385, !1388, !1393, !1398, !1402, !1403, !1406, !1407}
!1367 = !DILocalVariable(name: "a", arg: 1, scope: !1360, file: !3, line: 461, type: !28)
!1368 = !DILocalVariable(name: "b", arg: 2, scope: !1360, file: !3, line: 461, type: !28)
!1369 = !DILocalVariable(name: "step", arg: 3, scope: !1360, file: !3, line: 461, type: !1363)
!1370 = !DILocalVariable(name: "inf", scope: !1360, file: !3, line: 463, type: !36)
!1371 = !DILocalVariable(name: "p_len", scope: !1360, file: !3, line: 470, type: !25)
!1372 = !DILocalVariable(name: "q_len", scope: !1360, file: !3, line: 471, type: !25)
!1373 = !DILocalVariable(name: "inc_size", scope: !1360, file: !3, line: 476, type: !25)
!1374 = !DILocalVariable(name: "p0", scope: !1360, file: !3, line: 481, type: !22)
!1375 = !DILocalVariable(name: "p", scope: !1360, file: !3, line: 482, type: !22)
!1376 = !DILocalVariable(name: "q", scope: !1360, file: !3, line: 483, type: !22)
!1377 = !DILocalVariable(name: "q0", scope: !1360, file: !3, line: 484, type: !22)
!1378 = !DILocalVariable(name: "ok", scope: !1360, file: !3, line: 493, type: !36)
!1379 = !DILocalVariable(name: "buf_size", scope: !1380, file: !3, line: 499, type: !25)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 495, column: 5)
!1381 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 494, column: 7)
!1382 = !DILocalVariable(name: "buf", scope: !1380, file: !3, line: 500, type: !22)
!1383 = !DILocalVariable(name: "buf_end", scope: !1380, file: !3, line: 501, type: !28)
!1384 = !DILocalVariable(name: "bufp", scope: !1380, file: !3, line: 503, type: !22)
!1385 = !DILocalVariable(name: "n_incr", scope: !1386, file: !3, line: 511, type: !1363)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 511, column: 11)
!1387 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 510, column: 9)
!1388 = !DILocalVariable(name: "buf_offset", scope: !1389, file: !3, line: 528, type: !25)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 527, column: 17)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 526, column: 19)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 521, column: 13)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 520, column: 15)
!1393 = !DILocalVariable(name: "__ptr", scope: !1394, file: !3, line: 541, type: !28)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 541, column: 19)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 541, column: 19)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 540, column: 13)
!1397 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 539, column: 15)
!1398 = !DILocalVariable(name: "__stream", scope: !1394, file: !3, line: 541, type: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1401, line: 7, baseType: !750)
!1401 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1402 = !DILocalVariable(name: "__cnt", scope: !1394, file: !3, line: 541, type: !25)
!1403 = !DILocalVariable(name: "__ptr", scope: !1404, file: !3, line: 549, type: !28)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 549, column: 11)
!1405 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 549, column: 11)
!1406 = !DILocalVariable(name: "__stream", scope: !1404, file: !3, line: 549, type: !1399)
!1407 = !DILocalVariable(name: "__cnt", scope: !1404, file: !3, line: 549, type: !25)
!1408 = !DILocation(line: 0, scope: !1360)
!1409 = !DILocation(line: 463, column: 14, scope: !1360)
!1410 = !DILocalVariable(name: "s", arg: 1, scope: !1411, file: !3, line: 445, type: !28)
!1411 = distinct !DISubprogram(name: "trim_leading_zeros", scope: !3, file: !3, line: 445, type: !1412, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!28, !28}
!1414 = !{!1410, !1415}
!1415 = !DILocalVariable(name: "p", scope: !1411, file: !3, line: 447, type: !28)
!1416 = !DILocation(line: 0, scope: !1411, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 467, column: 7, scope: !1360)
!1418 = !DILocation(line: 448, column: 3, scope: !1411, inlinedAt: !1417)
!1419 = !DILocation(line: 448, column: 10, scope: !1411, inlinedAt: !1417)
!1420 = !DILocation(line: 449, column: 5, scope: !1411, inlinedAt: !1417)
!1421 = distinct !{!1421, !1418, !1422, !721}
!1422 = !DILocation(line: 449, column: 7, scope: !1411, inlinedAt: !1417)
!1423 = !DILocation(line: 452, column: 16, scope: !1424, inlinedAt: !1417)
!1424 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 452, column: 7)
!1425 = !DILocation(line: 452, column: 7, scope: !1411, inlinedAt: !1417)
!1426 = !DILocation(line: 0, scope: !1411, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 468, column: 7, scope: !1360)
!1428 = !DILocation(line: 448, column: 3, scope: !1411, inlinedAt: !1427)
!1429 = !DILocation(line: 448, column: 10, scope: !1411, inlinedAt: !1427)
!1430 = !DILocation(line: 449, column: 5, scope: !1411, inlinedAt: !1427)
!1431 = distinct !{!1431, !1428, !1432, !721}
!1432 = !DILocation(line: 449, column: 7, scope: !1411, inlinedAt: !1427)
!1433 = !DILocation(line: 452, column: 16, scope: !1424, inlinedAt: !1427)
!1434 = !DILocation(line: 452, column: 7, scope: !1411, inlinedAt: !1427)
!1435 = !DILocation(line: 470, column: 18, scope: !1360)
!1436 = !DILocation(line: 471, column: 18, scope: !1360)
!1437 = !DILocation(line: 471, column: 28, scope: !1360)
!1438 = !DILocation(line: 476, column: 21, scope: !1360)
!1439 = !DILocation(line: 481, column: 32, scope: !1360)
!1440 = !DILocation(line: 481, column: 14, scope: !1360)
!1441 = !DILocation(line: 482, column: 24, scope: !1360)
!1442 = !DILocation(line: 482, column: 35, scope: !1360)
!1443 = !DILocation(line: 0, scope: !990, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 482, column: 13, scope: !1360)
!1445 = !DILocation(line: 29, column: 10, scope: !990, inlinedAt: !1444)
!1446 = !DILocation(line: 485, column: 7, scope: !1360)
!1447 = !DILocation(line: 487, column: 12, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 486, column: 5)
!1449 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 485, column: 7)
!1450 = !DILocation(line: 488, column: 22, scope: !1448)
!1451 = !DILocation(line: 488, column: 33, scope: !1448)
!1452 = !DILocation(line: 488, column: 51, scope: !1448)
!1453 = !DILocation(line: 0, scope: !990, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 488, column: 11, scope: !1448)
!1455 = !DILocation(line: 29, column: 10, scope: !990, inlinedAt: !1454)
!1456 = !DILocalVariable(name: "a", arg: 1, scope: !1457, file: !3, line: 433, type: !28)
!1457 = distinct !DISubprogram(name: "cmp", scope: !3, file: !3, line: 433, type: !1458, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!31, !28, !25, !28, !25}
!1460 = !{!1456, !1461, !1462, !1463}
!1461 = !DILocalVariable(name: "a_len", arg: 2, scope: !1457, file: !3, line: 433, type: !25)
!1462 = !DILocalVariable(name: "b", arg: 3, scope: !1457, file: !3, line: 433, type: !28)
!1463 = !DILocalVariable(name: "b_len", arg: 4, scope: !1457, file: !3, line: 433, type: !25)
!1464 = !DILocation(line: 0, scope: !1457, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 493, column: 20, scope: !1360)
!1466 = !DILocation(line: 435, column: 13, scope: !1467, inlinedAt: !1465)
!1467 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 435, column: 7)
!1468 = !DILocation(line: 435, column: 7, scope: !1457, inlinedAt: !1465)
!1469 = !DILocation(line: 437, column: 13, scope: !1470, inlinedAt: !1465)
!1470 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 437, column: 7)
!1471 = !DILocation(line: 437, column: 7, scope: !1457, inlinedAt: !1465)
!1472 = !DILocation(line: 439, column: 11, scope: !1457, inlinedAt: !1465)
!1473 = !DILocation(line: 493, column: 45, scope: !1360)
!1474 = !DILocation(line: 494, column: 7, scope: !1360)
!1475 = !DILocation(line: 499, column: 25, scope: !1380)
!1476 = !DILocation(line: 0, scope: !1380)
!1477 = !DILocation(line: 500, column: 19, scope: !1380)
!1478 = !DILocation(line: 501, column: 33, scope: !1380)
!1479 = !DILocalVariable(name: "__dest", arg: 1, scope: !1480, file: !991, line: 42, type: !994)
!1480 = distinct !DISubprogram(name: "mempcpy", scope: !991, file: !991, line: 42, type: !992, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1481)
!1481 = !{!1479, !1482, !1483}
!1482 = !DILocalVariable(name: "__src", arg: 2, scope: !1480, file: !991, line: 42, type: !995)
!1483 = !DILocalVariable(name: "__len", arg: 3, scope: !1480, file: !991, line: 42, type: !25)
!1484 = !DILocation(line: 0, scope: !1480, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 506, column: 14, scope: !1380)
!1486 = !DILocation(line: 45, column: 10, scope: !1480, inlinedAt: !1485)
!1487 = !DILocation(line: 509, column: 7, scope: !1380)
!1488 = !DILocation(line: 470, column: 10, scope: !1360)
!1489 = !DILocation(line: 0, scope: !1386)
!1490 = !DILocation(line: 511, column: 11, scope: !1386)
!1491 = !DILocation(line: 482, column: 9, scope: !1360)
!1492 = !DILocation(line: 514, column: 21, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 514, column: 15)
!1494 = !DILocation(line: 0, scope: !1457, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 514, column: 28, scope: !1493)
!1496 = !DILocalVariable(name: "s0", arg: 1, scope: !1497, file: !3, line: 414, type: !808)
!1497 = distinct !DISubprogram(name: "incr", scope: !3, file: !3, line: 414, type: !1498, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1500)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !808, !235}
!1500 = !{!1496, !1501, !1502, !1503}
!1501 = !DILocalVariable(name: "s_len", arg: 2, scope: !1497, file: !3, line: 414, type: !235)
!1502 = !DILocalVariable(name: "s", scope: !1497, file: !3, line: 416, type: !22)
!1503 = !DILocalVariable(name: "endp", scope: !1497, file: !3, line: 417, type: !22)
!1504 = !DILocation(line: 0, scope: !1497, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 512, column: 13, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 511, column: 11)
!1507 = !DILocation(line: 417, column: 18, scope: !1497, inlinedAt: !1505)
!1508 = !DILocation(line: 417, column: 27, scope: !1497, inlinedAt: !1505)
!1509 = !DILocation(line: 419, column: 3, scope: !1497, inlinedAt: !1505)
!1510 = !DILocation(line: 421, column: 18, scope: !1511, inlinedAt: !1505)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 421, column: 11)
!1512 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 420, column: 5)
!1513 = !DILocation(line: 421, column: 21, scope: !1511, inlinedAt: !1505)
!1514 = !DILocation(line: 421, column: 11, scope: !1512, inlinedAt: !1505)
!1515 = !DILocation(line: 423, column: 12, scope: !1512, inlinedAt: !1505)
!1516 = !DILocation(line: 423, column: 15, scope: !1512, inlinedAt: !1505)
!1517 = !DILocation(line: 425, column: 15, scope: !1497, inlinedAt: !1505)
!1518 = !DILocation(line: 424, column: 5, scope: !1512, inlinedAt: !1505)
!1519 = distinct !{!1519, !1509, !1520, !721}
!1520 = !DILocation(line: 425, column: 19, scope: !1497, inlinedAt: !1505)
!1521 = !DILocation(line: 426, column: 12, scope: !1497, inlinedAt: !1505)
!1522 = !DILocation(line: 427, column: 3, scope: !1497, inlinedAt: !1505)
!1523 = !DILocation(line: 428, column: 1, scope: !1497, inlinedAt: !1505)
!1524 = !DILocation(line: 511, column: 55, scope: !1506)
!1525 = distinct !{!1525, !1490, !1526, !721}
!1526 = !DILocation(line: 512, column: 29, scope: !1386)
!1527 = !DILocation(line: 437, column: 13, scope: !1470, inlinedAt: !1495)
!1528 = !DILocation(line: 437, column: 7, scope: !1457, inlinedAt: !1495)
!1529 = !DILocation(line: 439, column: 11, scope: !1457, inlinedAt: !1495)
!1530 = !DILocation(line: 514, column: 26, scope: !1493)
!1531 = !DILocation(line: 514, column: 15, scope: !1387)
!1532 = !DILocation(line: 517, column: 22, scope: !1387)
!1533 = !DILocation(line: 517, column: 21, scope: !1387)
!1534 = !DILocation(line: 517, column: 16, scope: !1387)
!1535 = !DILocation(line: 517, column: 19, scope: !1387)
!1536 = !DILocation(line: 520, column: 21, scope: !1392)
!1537 = !DILocation(line: 520, column: 15, scope: !1387)
!1538 = !DILocation(line: 522, column: 24, scope: !1391)
!1539 = !DILocation(line: 523, column: 43, scope: !1391)
!1540 = !DILocation(line: 523, column: 20, scope: !1391)
!1541 = !DILocation(line: 524, column: 31, scope: !1391)
!1542 = !DILocation(line: 524, column: 50, scope: !1391)
!1543 = !DILocalVariable(name: "__dest", arg: 1, scope: !1544, file: !991, line: 34, type: !24)
!1544 = distinct !DISubprogram(name: "memmove", scope: !991, file: !991, line: 34, type: !1545, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!24, !24, !996, !25}
!1547 = !{!1543, !1548, !1549}
!1548 = !DILocalVariable(name: "__src", arg: 2, scope: !1544, file: !991, line: 34, type: !996)
!1549 = !DILocalVariable(name: "__len", arg: 3, scope: !1544, file: !991, line: 34, type: !25)
!1550 = !DILocation(line: 0, scope: !1544, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 524, column: 19, scope: !1391)
!1552 = !DILocation(line: 36, column: 10, scope: !1544, inlinedAt: !1551)
!1553 = !DILocation(line: 526, column: 45, scope: !1390)
!1554 = !DILocation(line: 526, column: 28, scope: !1390)
!1555 = !DILocation(line: 526, column: 19, scope: !1391)
!1556 = !DILocation(line: 528, column: 44, scope: !1389)
!1557 = !DILocation(line: 0, scope: !1389)
!1558 = !DILocation(line: 530, column: 25, scope: !1389)
!1559 = !DILocation(line: 531, column: 33, scope: !1389)
!1560 = !DILocation(line: 532, column: 30, scope: !1389)
!1561 = !DILocation(line: 533, column: 17, scope: !1389)
!1562 = !DILocation(line: 0, scope: !1387)
!1563 = !DILocation(line: 0, scope: !1480, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 536, column: 18, scope: !1387)
!1565 = !DILocation(line: 45, column: 10, scope: !1480, inlinedAt: !1564)
!1566 = !DILocation(line: 539, column: 23, scope: !1397)
!1567 = !DILocation(line: 539, column: 37, scope: !1397)
!1568 = !DILocation(line: 539, column: 15, scope: !1387)
!1569 = !DILocation(line: 541, column: 19, scope: !1395)
!1570 = !DILocation(line: 541, column: 55, scope: !1395)
!1571 = !DILocation(line: 541, column: 19, scope: !1396)
!1572 = distinct !{!1572, !1487, !1573}
!1573 = !DILocation(line: 545, column: 9, scope: !1380)
!1574 = !DILocation(line: 542, column: 17, scope: !1395)
!1575 = !DILocation(line: 548, column: 12, scope: !1380)
!1576 = !DILocation(line: 548, column: 15, scope: !1380)
!1577 = !DILocation(line: 549, column: 11, scope: !1405)
!1578 = !DILocation(line: 549, column: 47, scope: !1405)
!1579 = !DILocation(line: 549, column: 11, scope: !1380)
!1580 = !DILocation(line: 550, column: 9, scope: !1405)
!1581 = !DILocation(line: 481, column: 9, scope: !1360)
!1582 = !DILocation(line: 555, column: 3, scope: !1360)
!1583 = !DILocation(line: 556, column: 3, scope: !1360)
!1584 = !DILocation(line: 557, column: 3, scope: !1360)
!1585 = distinct !DISubprogram(name: "scan_arg", scope: !3, file: !3, line: 149, type: !1586, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!63, !28}
!1588 = !{!1589, !1590, !1591, !1592, !1595, !1596}
!1589 = !DILocalVariable(name: "arg", arg: 1, scope: !1585, file: !3, line: 149, type: !28)
!1590 = !DILocalVariable(name: "ret", scope: !1585, file: !3, line: 151, type: !63)
!1591 = !DILocalVariable(name: "decimal_point", scope: !1585, file: !3, line: 175, type: !28)
!1592 = !DILocalVariable(name: "fraction_len", scope: !1593, file: !3, line: 182, type: !25)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 181, column: 5)
!1594 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 180, column: 7)
!1595 = !DILocalVariable(name: "e", scope: !1593, file: !3, line: 195, type: !28)
!1596 = !DILocalVariable(name: "exponent", scope: !1597, file: !3, line: 200, type: !774)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 199, column: 9)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 198, column: 11)
!1599 = !DILocation(line: 0, scope: !1585)
!1600 = !DILocation(line: 151, column: 11, scope: !1585)
!1601 = !DILocation(line: 153, column: 35, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 153, column: 7)
!1603 = !DILocation(line: 153, column: 9, scope: !1602)
!1604 = !DILocation(line: 153, column: 7, scope: !1585)
!1605 = !DILocation(line: 155, column: 20, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 154, column: 5)
!1607 = !DILocation(line: 155, column: 62, scope: !1606)
!1608 = !DILocation(line: 155, column: 7, scope: !1606)
!1609 = !DILocation(line: 156, column: 7, scope: !1606)
!1610 = !DILocation(line: 159, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 159, column: 7)
!1612 = !DILocation(line: 159, column: 7, scope: !1585)
!1613 = !DILocation(line: 167, column: 3, scope: !1585)
!1614 = !DILocation(line: 161, column: 20, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 160, column: 5)
!1616 = !DILocation(line: 161, column: 50, scope: !1615)
!1617 = !DILocation(line: 162, column: 14, scope: !1615)
!1618 = !DILocation(line: 161, column: 7, scope: !1615)
!1619 = !DILocation(line: 163, column: 7, scope: !1615)
!1620 = !DILocation(line: 167, column: 10, scope: !1585)
!1621 = !{!1622, !1622, i64 0}
!1622 = !{!"short", !673, i64 0}
!1623 = !DILocation(line: 167, column: 36, scope: !1585)
!1624 = !DILocation(line: 168, column: 8, scope: !1585)
!1625 = distinct !{!1625, !1613, !1624, !721}
!1626 = !DILocation(line: 171, column: 7, scope: !1585)
!1627 = !DILocation(line: 171, column: 13, scope: !1585)
!1628 = !{!1144, !1107, i64 16}
!1629 = !DILocation(line: 172, column: 7, scope: !1585)
!1630 = !DILocation(line: 172, column: 17, scope: !1585)
!1631 = !DILocation(line: 175, column: 31, scope: !1585)
!1632 = !DILocation(line: 176, column: 9, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 176, column: 7)
!1634 = !DILocation(line: 176, column: 23, scope: !1633)
!1635 = !DILocation(line: 176, column: 28, scope: !1633)
!1636 = !DILocation(line: 176, column: 7, scope: !1585)
!1637 = !DILocation(line: 177, column: 19, scope: !1633)
!1638 = !DILocation(line: 177, column: 5, scope: !1633)
!1639 = !DILocation(line: 180, column: 13, scope: !1594)
!1640 = !DILocation(line: 180, column: 9, scope: !1594)
!1641 = !DILocation(line: 180, column: 34, scope: !1594)
!1642 = !DILocation(line: 0, scope: !1593)
!1643 = !DILocation(line: 183, column: 19, scope: !1593)
!1644 = !DILocation(line: 183, column: 17, scope: !1593)
!1645 = !DILocation(line: 185, column: 11, scope: !1593)
!1646 = !DILocation(line: 187, column: 49, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 186, column: 9)
!1648 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 185, column: 11)
!1649 = !DILocation(line: 187, column: 26, scope: !1647)
!1650 = !DILocation(line: 188, column: 28, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 188, column: 15)
!1652 = !DILocation(line: 188, column: 15, scope: !1647)
!1653 = !DILocation(line: 189, column: 29, scope: !1651)
!1654 = !DILocation(line: 189, column: 27, scope: !1651)
!1655 = !DILocation(line: 190, column: 38, scope: !1647)
!1656 = !DILocation(line: 190, column: 25, scope: !1647)
!1657 = !DILocation(line: 192, column: 42, scope: !1647)
!1658 = !DILocation(line: 193, column: 28, scope: !1647)
!1659 = !DILocation(line: 193, column: 33, scope: !1647)
!1660 = !DILocation(line: 190, column: 21, scope: !1647)
!1661 = !DILocation(line: 194, column: 9, scope: !1647)
!1662 = !DILocation(line: 195, column: 23, scope: !1593)
!1663 = !DILocation(line: 196, column: 13, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 196, column: 11)
!1665 = !DILocation(line: 196, column: 11, scope: !1593)
!1666 = !DILocation(line: 197, column: 13, scope: !1664)
!1667 = !DILocation(line: 198, column: 11, scope: !1598)
!1668 = !DILocation(line: 198, column: 11, scope: !1593)
!1669 = !DILocation(line: 200, column: 37, scope: !1597)
!1670 = !DILocation(line: 200, column: 27, scope: !1597)
!1671 = !DILocation(line: 0, scope: !1597)
!1672 = !DILocation(line: 201, column: 37, scope: !1597)
!1673 = !DILocation(line: 201, column: 28, scope: !1597)
!1674 = !DILocation(line: 201, column: 25, scope: !1597)
!1675 = !DILocation(line: 204, column: 24, scope: !1597)
!1676 = !DILocation(line: 204, column: 42, scope: !1597)
!1677 = !DILocation(line: 204, column: 21, scope: !1597)
!1678 = !DILocation(line: 204, column: 37, scope: !1597)
!1679 = !DILocation(line: 206, column: 15, scope: !1597)
!1680 = !DILocation(line: 208, column: 19, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 207, column: 13)
!1682 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 206, column: 15)
!1683 = !DILocation(line: 215, column: 26, scope: !1681)
!1684 = !DILocation(line: 216, column: 13, scope: !1681)
!1685 = !DILocation(line: 219, column: 33, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 219, column: 19)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 218, column: 13)
!1688 = !DILocation(line: 219, column: 50, scope: !1686)
!1689 = !DILocation(line: 219, column: 55, scope: !1686)
!1690 = !DILocation(line: 221, column: 24, scope: !1687)
!1691 = !DILocation(line: 223, column: 21, scope: !1597)
!1692 = !DILocation(line: 0, scope: !1682)
!1693 = !DILocation(line: 224, column: 9, scope: !1597)
!1694 = !DILocation(line: 228, column: 1, scope: !1585)
!1695 = distinct !DISubprogram(name: "io_error", scope: !3, file: !3, line: 291, type: !681, scopeLine: 292, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!1696 = !DILocation(line: 294, column: 3, scope: !1695)
!1697 = !DILocation(line: 295, column: 3, scope: !1695)
!1698 = !DISubprogram(name: "clearerr_unlocked", scope: !746, file: !746, line: 770, type: !1699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !749}
!1701 = !DISubprogram(name: "fwrite_unlocked", scope: !746, file: !746, line: 680, type: !1702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!27, !996, !27, !27, !749}
!1704 = distinct !DISubprogram(name: "cl_strtold", scope: !1705, file: !1705, line: 59, type: !1706, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1709)
!1705 = !DIFile(filename: "./lib/cl-strtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!67, !28, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !808)
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1717, !1718}
!1710 = !DILocalVariable(name: "nptr", arg: 1, scope: !1704, file: !1705, line: 59, type: !28)
!1711 = !DILocalVariable(name: "endptr", arg: 2, scope: !1704, file: !1705, line: 59, type: !1708)
!1712 = !DILocalVariable(name: "end", scope: !1704, file: !1705, line: 61, type: !22)
!1713 = !DILocalVariable(name: "d", scope: !1704, file: !1705, line: 62, type: !67)
!1714 = !DILocalVariable(name: "strtod_errno", scope: !1715, file: !1705, line: 65, type: !31)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !1705, line: 64, column: 5)
!1716 = distinct !DILexicalBlock(scope: !1704, file: !1705, line: 63, column: 7)
!1717 = !DILocalVariable(name: "c_end", scope: !1715, file: !1705, line: 66, type: !22)
!1718 = !DILocalVariable(name: "c", scope: !1715, file: !1705, line: 67, type: !67)
!1719 = !DILocation(line: 62, column: 10, scope: !1704)
!1720 = !DILocation(line: 67, column: 14, scope: !1715)
!1721 = !DILocation(line: 0, scope: !1704)
!1722 = !DILocation(line: 61, column: 3, scope: !1704)
!1723 = !DILocation(line: 62, column: 14, scope: !1704)
!1724 = !DILocation(line: 63, column: 8, scope: !1716)
!1725 = !DILocation(line: 63, column: 7, scope: !1716)
!1726 = !DILocation(line: 63, column: 7, scope: !1704)
!1727 = !DILocation(line: 65, column: 26, scope: !1715)
!1728 = !DILocation(line: 0, scope: !1715)
!1729 = !DILocation(line: 66, column: 7, scope: !1715)
!1730 = !DILocation(line: 67, column: 18, scope: !1715)
!1731 = !DILocation(line: 68, column: 17, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1715, file: !1705, line: 68, column: 11)
!1733 = !DILocation(line: 68, column: 15, scope: !1732)
!1734 = !DILocation(line: 68, column: 11, scope: !1715)
!1735 = !DILocation(line: 71, column: 15, scope: !1732)
!1736 = !DILocation(line: 72, column: 5, scope: !1716)
!1737 = !DILocation(line: 72, column: 5, scope: !1715)
!1738 = !DILocation(line: 73, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1704, file: !1705, line: 73, column: 7)
!1740 = !DILocation(line: 73, column: 7, scope: !1704)
!1741 = !DILocation(line: 74, column: 13, scope: !1739)
!1742 = !DILocation(line: 74, column: 5, scope: !1739)
!1743 = !DILocation(line: 76, column: 1, scope: !1704)
!1744 = !DILocation(line: 75, column: 3, scope: !1704)
!1745 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !98, file: !98, line: 51, type: !691, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !1746)
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "file", arg: 1, scope: !1745, file: !98, line: 51, type: !28)
!1748 = !DILocation(line: 0, scope: !1745)
!1749 = !DILocation(line: 53, column: 13, scope: !1745)
!1750 = !DILocation(line: 54, column: 1, scope: !1745)
!1751 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !98, file: !98, line: 88, type: !1752, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !36}
!1754 = !{!1755}
!1755 = !DILocalVariable(name: "ignore", arg: 1, scope: !1751, file: !98, line: 88, type: !36)
!1756 = !DILocation(line: 0, scope: !1751)
!1757 = !DILocation(line: 90, column: 16, scope: !1751)
!1758 = !DILocation(line: 91, column: 1, scope: !1751)
!1759 = distinct !DISubprogram(name: "close_stdout", scope: !98, file: !98, line: 117, type: !681, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !1760)
!1760 = !{!1761}
!1761 = !DILocalVariable(name: "write_error", scope: !1762, file: !98, line: 122, type: !28)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !98, line: 121, column: 5)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !98, line: 119, column: 7)
!1764 = !DILocation(line: 119, column: 21, scope: !1763)
!1765 = !DILocation(line: 119, column: 7, scope: !1763)
!1766 = !DILocation(line: 119, column: 29, scope: !1763)
!1767 = !DILocation(line: 120, column: 7, scope: !1763)
!1768 = !DILocation(line: 120, column: 12, scope: !1763)
!1769 = !DILocation(line: 120, column: 25, scope: !1763)
!1770 = !DILocation(line: 120, column: 28, scope: !1763)
!1771 = !DILocation(line: 120, column: 34, scope: !1763)
!1772 = !DILocation(line: 119, column: 7, scope: !1759)
!1773 = !DILocation(line: 122, column: 33, scope: !1762)
!1774 = !DILocation(line: 0, scope: !1762)
!1775 = !DILocation(line: 123, column: 11, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1762, file: !98, line: 123, column: 11)
!1777 = !DILocation(line: 0, scope: !1776)
!1778 = !DILocation(line: 123, column: 11, scope: !1762)
!1779 = !DILocation(line: 124, column: 36, scope: !1776)
!1780 = !DILocation(line: 124, column: 9, scope: !1776)
!1781 = !DILocation(line: 127, column: 9, scope: !1776)
!1782 = !DILocation(line: 129, column: 14, scope: !1762)
!1783 = !DILocation(line: 129, column: 7, scope: !1762)
!1784 = !DILocation(line: 134, column: 42, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1759, file: !98, line: 134, column: 7)
!1786 = !DILocation(line: 134, column: 28, scope: !1785)
!1787 = !DILocation(line: 134, column: 50, scope: !1785)
!1788 = !DILocation(line: 134, column: 7, scope: !1759)
!1789 = !DILocation(line: 135, column: 12, scope: !1785)
!1790 = !DILocation(line: 135, column: 5, scope: !1785)
!1791 = !DILocation(line: 136, column: 1, scope: !1759)
!1792 = distinct !DISubprogram(name: "set_program_name", scope: !111, file: !111, line: 39, type: !691, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !110, retainedNodes: !1793)
!1793 = !{!1794, !1795, !1796}
!1794 = !DILocalVariable(name: "argv0", arg: 1, scope: !1792, file: !111, line: 39, type: !28)
!1795 = !DILocalVariable(name: "slash", scope: !1792, file: !111, line: 46, type: !28)
!1796 = !DILocalVariable(name: "base", scope: !1792, file: !111, line: 47, type: !28)
!1797 = !DILocation(line: 0, scope: !1792)
!1798 = !DILocation(line: 51, column: 13, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1792, file: !111, line: 51, column: 7)
!1800 = !DILocation(line: 51, column: 7, scope: !1792)
!1801 = !DILocation(line: 55, column: 14, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !111, line: 52, column: 5)
!1803 = !DILocation(line: 54, column: 7, scope: !1802)
!1804 = !DILocation(line: 56, column: 7, scope: !1802)
!1805 = !DILocation(line: 59, column: 11, scope: !1792)
!1806 = !DILocation(line: 60, column: 17, scope: !1792)
!1807 = !DILocation(line: 60, column: 11, scope: !1792)
!1808 = !DILocation(line: 61, column: 12, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1792, file: !111, line: 61, column: 7)
!1810 = !DILocation(line: 61, column: 20, scope: !1809)
!1811 = !DILocation(line: 61, column: 25, scope: !1809)
!1812 = !DILocation(line: 61, column: 42, scope: !1809)
!1813 = !DILocation(line: 61, column: 28, scope: !1809)
!1814 = !DILocation(line: 61, column: 61, scope: !1809)
!1815 = !DILocation(line: 61, column: 7, scope: !1792)
!1816 = !DILocation(line: 64, column: 11, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !111, line: 64, column: 11)
!1818 = distinct !DILexicalBlock(scope: !1809, file: !111, line: 62, column: 5)
!1819 = !DILocation(line: 64, column: 36, scope: !1817)
!1820 = !DILocation(line: 64, column: 11, scope: !1818)
!1821 = !DILocation(line: 66, column: 24, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1817, file: !111, line: 65, column: 9)
!1823 = !DILocation(line: 70, column: 41, scope: !1822)
!1824 = !DILocation(line: 72, column: 9, scope: !1822)
!1825 = !DILocation(line: 84, column: 16, scope: !1792)
!1826 = !DILocation(line: 90, column: 27, scope: !1792)
!1827 = !DILocation(line: 92, column: 1, scope: !1792)
!1828 = distinct !DISubprogram(name: "clone_quoting_options", scope: !117, file: !117, line: 122, type: !1829, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1832)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1831, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1832 = !{!1833, !1834, !1835}
!1833 = !DILocalVariable(name: "o", arg: 1, scope: !1828, file: !117, line: 122, type: !1831)
!1834 = !DILocalVariable(name: "e", scope: !1828, file: !117, line: 124, type: !31)
!1835 = !DILocalVariable(name: "p", scope: !1828, file: !117, line: 125, type: !1831)
!1836 = !DILocation(line: 0, scope: !1828)
!1837 = !DILocation(line: 124, column: 11, scope: !1828)
!1838 = !DILocation(line: 125, column: 40, scope: !1828)
!1839 = !DILocation(line: 125, column: 31, scope: !1828)
!1840 = !DILocation(line: 127, column: 9, scope: !1828)
!1841 = !DILocation(line: 128, column: 3, scope: !1828)
!1842 = distinct !DISubprogram(name: "get_quoting_style", scope: !117, file: !117, line: 133, type: !1843, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1847)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!119, !1845}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!1847 = !{!1848}
!1848 = !DILocalVariable(name: "o", arg: 1, scope: !1842, file: !117, line: 133, type: !1845)
!1849 = !DILocation(line: 0, scope: !1842)
!1850 = !DILocation(line: 135, column: 11, scope: !1842)
!1851 = !DILocation(line: 135, column: 46, scope: !1842)
!1852 = !{!1853, !673, i64 0}
!1853 = !{!"quoting_options", !673, i64 0, !851, i64 4, !673, i64 8, !672, i64 40, !672, i64 48}
!1854 = !DILocation(line: 135, column: 3, scope: !1842)
!1855 = distinct !DISubprogram(name: "set_quoting_style", scope: !117, file: !117, line: 141, type: !1856, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1831, !119}
!1858 = !{!1859, !1860}
!1859 = !DILocalVariable(name: "o", arg: 1, scope: !1855, file: !117, line: 141, type: !1831)
!1860 = !DILocalVariable(name: "s", arg: 2, scope: !1855, file: !117, line: 141, type: !119)
!1861 = !DILocation(line: 0, scope: !1855)
!1862 = !DILocation(line: 143, column: 4, scope: !1855)
!1863 = !DILocation(line: 143, column: 39, scope: !1855)
!1864 = !DILocation(line: 143, column: 45, scope: !1855)
!1865 = !DILocation(line: 144, column: 1, scope: !1855)
!1866 = distinct !DISubprogram(name: "set_char_quoting", scope: !117, file: !117, line: 152, type: !1867, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!31, !1831, !23, !31}
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1876, !1877}
!1870 = !DILocalVariable(name: "o", arg: 1, scope: !1866, file: !117, line: 152, type: !1831)
!1871 = !DILocalVariable(name: "c", arg: 2, scope: !1866, file: !117, line: 152, type: !23)
!1872 = !DILocalVariable(name: "i", arg: 3, scope: !1866, file: !117, line: 152, type: !31)
!1873 = !DILocalVariable(name: "uc", scope: !1866, file: !117, line: 154, type: !30)
!1874 = !DILocalVariable(name: "p", scope: !1866, file: !117, line: 155, type: !1875)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1876 = !DILocalVariable(name: "shift", scope: !1866, file: !117, line: 157, type: !31)
!1877 = !DILocalVariable(name: "r", scope: !1866, file: !117, line: 158, type: !31)
!1878 = !DILocation(line: 0, scope: !1866)
!1879 = !DILocation(line: 156, column: 6, scope: !1866)
!1880 = !DILocation(line: 156, column: 62, scope: !1866)
!1881 = !DILocation(line: 156, column: 57, scope: !1866)
!1882 = !DILocation(line: 157, column: 15, scope: !1866)
!1883 = !DILocation(line: 158, column: 12, scope: !1866)
!1884 = !DILocation(line: 158, column: 15, scope: !1866)
!1885 = !DILocation(line: 158, column: 25, scope: !1866)
!1886 = !DILocation(line: 159, column: 13, scope: !1866)
!1887 = !DILocation(line: 159, column: 18, scope: !1866)
!1888 = !DILocation(line: 159, column: 23, scope: !1866)
!1889 = !DILocation(line: 159, column: 6, scope: !1866)
!1890 = !DILocation(line: 160, column: 3, scope: !1866)
!1891 = distinct !DISubprogram(name: "set_quoting_flags", scope: !117, file: !117, line: 168, type: !1892, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1894)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!31, !1831, !31}
!1894 = !{!1895, !1896, !1897}
!1895 = !DILocalVariable(name: "o", arg: 1, scope: !1891, file: !117, line: 168, type: !1831)
!1896 = !DILocalVariable(name: "i", arg: 2, scope: !1891, file: !117, line: 168, type: !31)
!1897 = !DILocalVariable(name: "r", scope: !1891, file: !117, line: 170, type: !31)
!1898 = !DILocation(line: 0, scope: !1891)
!1899 = !DILocation(line: 171, column: 8, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1891, file: !117, line: 171, column: 7)
!1901 = !DILocation(line: 171, column: 7, scope: !1891)
!1902 = !DILocation(line: 173, column: 10, scope: !1891)
!1903 = !{!1853, !851, i64 4}
!1904 = !DILocation(line: 174, column: 12, scope: !1891)
!1905 = !DILocation(line: 175, column: 3, scope: !1891)
!1906 = distinct !DISubprogram(name: "set_custom_quoting", scope: !117, file: !117, line: 179, type: !1907, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !1831, !28, !28}
!1909 = !{!1910, !1911, !1912}
!1910 = !DILocalVariable(name: "o", arg: 1, scope: !1906, file: !117, line: 179, type: !1831)
!1911 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1906, file: !117, line: 180, type: !28)
!1912 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1906, file: !117, line: 180, type: !28)
!1913 = !DILocation(line: 0, scope: !1906)
!1914 = !DILocation(line: 182, column: 8, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1906, file: !117, line: 182, column: 7)
!1916 = !DILocation(line: 182, column: 7, scope: !1906)
!1917 = !DILocation(line: 184, column: 6, scope: !1906)
!1918 = !DILocation(line: 184, column: 12, scope: !1906)
!1919 = !DILocation(line: 185, column: 8, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1906, file: !117, line: 185, column: 7)
!1921 = !DILocation(line: 185, column: 19, scope: !1920)
!1922 = !DILocation(line: 186, column: 5, scope: !1920)
!1923 = !DILocation(line: 187, column: 6, scope: !1906)
!1924 = !DILocation(line: 187, column: 17, scope: !1906)
!1925 = !{!1853, !672, i64 40}
!1926 = !DILocation(line: 188, column: 6, scope: !1906)
!1927 = !DILocation(line: 188, column: 18, scope: !1906)
!1928 = !{!1853, !672, i64 48}
!1929 = !DILocation(line: 189, column: 1, scope: !1906)
!1930 = distinct !DISubprogram(name: "quotearg_buffer", scope: !117, file: !117, line: 784, type: !1931, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!25, !22, !25, !28, !25, !1845}
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941}
!1934 = !DILocalVariable(name: "buffer", arg: 1, scope: !1930, file: !117, line: 784, type: !22)
!1935 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1930, file: !117, line: 784, type: !25)
!1936 = !DILocalVariable(name: "arg", arg: 3, scope: !1930, file: !117, line: 785, type: !28)
!1937 = !DILocalVariable(name: "argsize", arg: 4, scope: !1930, file: !117, line: 785, type: !25)
!1938 = !DILocalVariable(name: "o", arg: 5, scope: !1930, file: !117, line: 786, type: !1845)
!1939 = !DILocalVariable(name: "p", scope: !1930, file: !117, line: 788, type: !1845)
!1940 = !DILocalVariable(name: "e", scope: !1930, file: !117, line: 789, type: !31)
!1941 = !DILocalVariable(name: "r", scope: !1930, file: !117, line: 790, type: !25)
!1942 = !DILocation(line: 0, scope: !1930)
!1943 = !DILocation(line: 788, column: 37, scope: !1930)
!1944 = !DILocation(line: 789, column: 11, scope: !1930)
!1945 = !DILocation(line: 791, column: 43, scope: !1930)
!1946 = !DILocation(line: 791, column: 53, scope: !1930)
!1947 = !DILocation(line: 791, column: 60, scope: !1930)
!1948 = !DILocation(line: 792, column: 43, scope: !1930)
!1949 = !DILocation(line: 792, column: 58, scope: !1930)
!1950 = !DILocation(line: 790, column: 14, scope: !1930)
!1951 = !DILocation(line: 793, column: 9, scope: !1930)
!1952 = !DILocation(line: 794, column: 3, scope: !1930)
!1953 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !117, file: !117, line: 256, type: !1954, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1958)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!25, !22, !25, !28, !25, !119, !31, !1956, !28, !28}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1983, !1984, !1985, !1986, !1987, !1990, !1991, !2009, !2012, !2013, !2020, !2023, !2024, !2025, !2026, !2027, !2028}
!1959 = !DILocalVariable(name: "buffer", arg: 1, scope: !1953, file: !117, line: 256, type: !22)
!1960 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1953, file: !117, line: 256, type: !25)
!1961 = !DILocalVariable(name: "arg", arg: 3, scope: !1953, file: !117, line: 257, type: !28)
!1962 = !DILocalVariable(name: "argsize", arg: 4, scope: !1953, file: !117, line: 257, type: !25)
!1963 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1953, file: !117, line: 258, type: !119)
!1964 = !DILocalVariable(name: "flags", arg: 6, scope: !1953, file: !117, line: 258, type: !31)
!1965 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1953, file: !117, line: 259, type: !1956)
!1966 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1953, file: !117, line: 260, type: !28)
!1967 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1953, file: !117, line: 261, type: !28)
!1968 = !DILocalVariable(name: "i", scope: !1953, file: !117, line: 263, type: !25)
!1969 = !DILocalVariable(name: "len", scope: !1953, file: !117, line: 264, type: !25)
!1970 = !DILocalVariable(name: "orig_buffersize", scope: !1953, file: !117, line: 265, type: !25)
!1971 = !DILocalVariable(name: "quote_string", scope: !1953, file: !117, line: 266, type: !28)
!1972 = !DILocalVariable(name: "quote_string_len", scope: !1953, file: !117, line: 267, type: !25)
!1973 = !DILocalVariable(name: "backslash_escapes", scope: !1953, file: !117, line: 268, type: !36)
!1974 = !DILocalVariable(name: "unibyte_locale", scope: !1953, file: !117, line: 269, type: !36)
!1975 = !DILocalVariable(name: "elide_outer_quotes", scope: !1953, file: !117, line: 270, type: !36)
!1976 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1953, file: !117, line: 271, type: !36)
!1977 = !DILocalVariable(name: "encountered_single_quote", scope: !1953, file: !117, line: 272, type: !36)
!1978 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1953, file: !117, line: 273, type: !36)
!1979 = !DILocalVariable(name: "c", scope: !1980, file: !117, line: 402, type: !30)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !117, line: 401, column: 5)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !117, line: 400, column: 3)
!1982 = distinct !DILexicalBlock(scope: !1953, file: !117, line: 400, column: 3)
!1983 = !DILocalVariable(name: "esc", scope: !1980, file: !117, line: 403, type: !30)
!1984 = !DILocalVariable(name: "is_right_quote", scope: !1980, file: !117, line: 404, type: !36)
!1985 = !DILocalVariable(name: "escaping", scope: !1980, file: !117, line: 405, type: !36)
!1986 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1980, file: !117, line: 406, type: !36)
!1987 = !DILocalVariable(name: "m", scope: !1988, file: !117, line: 610, type: !25)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 608, column: 11)
!1989 = distinct !DILexicalBlock(scope: !1980, file: !117, line: 426, column: 9)
!1990 = !DILocalVariable(name: "printable", scope: !1988, file: !117, line: 612, type: !36)
!1991 = !DILocalVariable(name: "mbstate", scope: !1992, file: !117, line: 621, type: !1994)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !117, line: 620, column: 15)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !117, line: 614, column: 17)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1995, line: 6, baseType: !1996)
!1995 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1997, line: 21, baseType: !1998)
!1997 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1997, line: 13, size: 64, elements: !1999)
!1999 = !{!2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1998, file: !1997, line: 15, baseType: !31, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1998, file: !1997, line: 20, baseType: !2002, size: 32, offset: 32)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !1997, line: 16, size: 32, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2002, file: !1997, line: 18, baseType: !7, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2002, file: !1997, line: 19, baseType: !2006, size: 32)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !2007)
!2007 = !{!2008}
!2008 = !DISubrange(count: 4)
!2009 = !DILocalVariable(name: "w", scope: !2010, file: !117, line: 631, type: !2011)
!2010 = distinct !DILexicalBlock(scope: !1992, file: !117, line: 630, column: 19)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !26, line: 74, baseType: !31)
!2012 = !DILocalVariable(name: "bytes", scope: !2010, file: !117, line: 632, type: !25)
!2013 = !DILocalVariable(name: "j", scope: !2014, file: !117, line: 657, type: !25)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !117, line: 656, column: 27)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !117, line: 654, column: 29)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !117, line: 649, column: 23)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !117, line: 641, column: 30)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !117, line: 636, column: 30)
!2019 = distinct !DILexicalBlock(scope: !2010, file: !117, line: 634, column: 25)
!2020 = !DILocalVariable(name: "ilim", scope: !2021, file: !117, line: 684, type: !25)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !117, line: 681, column: 15)
!2022 = distinct !DILexicalBlock(scope: !1988, file: !117, line: 680, column: 17)
!2023 = !DILabel(scope: !1953, name: "process_input", file: !117, line: 314)
!2024 = !DILabel(scope: !1989, name: "c_and_shell_escape", file: !117, line: 512)
!2025 = !DILabel(scope: !1989, name: "c_escape", file: !117, line: 517)
!2026 = !DILabel(scope: !1980, name: "store_escape", file: !117, line: 719)
!2027 = !DILabel(scope: !1980, name: "store_c", file: !117, line: 722)
!2028 = !DILabel(scope: !1953, name: "force_outer_quoting_style", file: !117, line: 763)
!2029 = !DILocation(line: 0, scope: !1953)
!2030 = !DILocation(line: 269, column: 25, scope: !1953)
!2031 = !DILocation(line: 269, column: 36, scope: !1953)
!2032 = !DILocation(line: 270, column: 8, scope: !1953)
!2033 = !DILocation(line: 273, column: 3, scope: !1953)
!2034 = !DILocation(line: 265, column: 10, scope: !1953)
!2035 = !DILocation(line: 266, column: 15, scope: !1953)
!2036 = !DILocation(line: 267, column: 10, scope: !1953)
!2037 = !DILocation(line: 268, column: 8, scope: !1953)
!2038 = !DILocation(line: 271, column: 8, scope: !1953)
!2039 = !DILocation(line: 272, column: 8, scope: !1953)
!2040 = !DILocation(line: 273, column: 8, scope: !1953)
!2041 = !DILocation(line: 314, column: 2, scope: !1953)
!2042 = !DILocation(line: 316, column: 3, scope: !1953)
!2043 = !DILocation(line: 323, column: 11, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1953, file: !117, line: 317, column: 5)
!2045 = !DILocation(line: 323, column: 12, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2044, file: !117, line: 323, column: 11)
!2047 = !DILocation(line: 324, column: 9, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !117, line: 324, column: 9)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !117, line: 324, column: 9)
!2050 = !DILocation(line: 324, column: 9, scope: !2049)
!2051 = !DILocation(line: 362, column: 26, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !117, line: 340, column: 11)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !117, line: 339, column: 13)
!2054 = distinct !DILexicalBlock(scope: !2044, file: !117, line: 338, column: 7)
!2055 = !DILocation(line: 363, column: 27, scope: !2052)
!2056 = !DILocation(line: 364, column: 11, scope: !2052)
!2057 = !DILocation(line: 365, column: 14, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !117, line: 365, column: 13)
!2059 = !DILocation(line: 365, column: 13, scope: !2054)
!2060 = !DILocation(line: 366, column: 43, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !117, line: 366, column: 11)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !117, line: 366, column: 11)
!2063 = !DILocation(line: 366, column: 11, scope: !2062)
!2064 = !DILocation(line: 367, column: 13, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !117, line: 367, column: 13)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !117, line: 367, column: 13)
!2067 = !DILocation(line: 367, column: 13, scope: !2066)
!2068 = !DILocation(line: 366, column: 70, scope: !2061)
!2069 = distinct !{!2069, !2063, !2070, !721}
!2070 = !DILocation(line: 367, column: 13, scope: !2062)
!2071 = !DILocation(line: 264, column: 10, scope: !1953)
!2072 = !DILocation(line: 370, column: 28, scope: !2054)
!2073 = !DILocation(line: 372, column: 7, scope: !2044)
!2074 = !DILocation(line: 376, column: 7, scope: !2044)
!2075 = !DILocation(line: 379, column: 7, scope: !2044)
!2076 = !DILocation(line: 381, column: 12, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2044, file: !117, line: 381, column: 11)
!2078 = !DILocation(line: 381, column: 11, scope: !2044)
!2079 = !DILocation(line: 386, column: 12, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2044, file: !117, line: 386, column: 11)
!2081 = !DILocation(line: 386, column: 11, scope: !2044)
!2082 = !DILocation(line: 387, column: 9, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !117, line: 387, column: 9)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !117, line: 387, column: 9)
!2085 = !DILocation(line: 387, column: 9, scope: !2084)
!2086 = !DILocation(line: 394, column: 7, scope: !2044)
!2087 = !DILocation(line: 397, column: 7, scope: !2044)
!2088 = !DILocation(line: 400, column: 8, scope: !1982)
!2089 = !DILocation(line: 0, scope: !1982)
!2090 = !DILocation(line: 400, column: 27, scope: !1981)
!2091 = !DILocation(line: 400, column: 19, scope: !1981)
!2092 = !DILocation(line: 400, column: 41, scope: !1981)
!2093 = !DILocation(line: 400, column: 48, scope: !1981)
!2094 = !DILocation(line: 400, column: 3, scope: !1982)
!2095 = !DILocation(line: 400, column: 60, scope: !1981)
!2096 = !DILocation(line: 0, scope: !1980)
!2097 = !DILocation(line: 409, column: 11, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1980, file: !117, line: 408, column: 11)
!2099 = !DILocation(line: 411, column: 17, scope: !2098)
!2100 = !DILocation(line: 412, column: 39, scope: !2098)
!2101 = !DILocation(line: 416, column: 32, scope: !2098)
!2102 = !DILocation(line: 412, column: 19, scope: !2098)
!2103 = !DILocation(line: 412, column: 15, scope: !2098)
!2104 = !DILocation(line: 417, column: 11, scope: !2098)
!2105 = !DILocation(line: 417, column: 26, scope: !2098)
!2106 = !DILocation(line: 417, column: 14, scope: !2098)
!2107 = !DILocation(line: 417, column: 63, scope: !2098)
!2108 = !DILocation(line: 408, column: 11, scope: !1980)
!2109 = !DILocation(line: 424, column: 11, scope: !1980)
!2110 = !DILocation(line: 425, column: 7, scope: !1980)
!2111 = !DILocation(line: 428, column: 15, scope: !1989)
!2112 = !DILocation(line: 430, column: 15, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !117, line: 430, column: 15)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !117, line: 429, column: 13)
!2115 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 428, column: 15)
!2116 = !DILocation(line: 430, column: 15, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !117, line: 430, column: 15)
!2118 = !DILocation(line: 430, column: 15, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !117, line: 430, column: 15)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !117, line: 430, column: 15)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !117, line: 430, column: 15)
!2122 = !DILocation(line: 430, column: 15, scope: !2120)
!2123 = !DILocation(line: 430, column: 15, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !117, line: 430, column: 15)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !117, line: 430, column: 15)
!2126 = !DILocation(line: 430, column: 15, scope: !2125)
!2127 = !DILocation(line: 430, column: 15, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !117, line: 430, column: 15)
!2129 = distinct !DILexicalBlock(scope: !2121, file: !117, line: 430, column: 15)
!2130 = !DILocation(line: 430, column: 15, scope: !2129)
!2131 = !DILocation(line: 430, column: 15, scope: !2121)
!2132 = !DILocation(line: 430, column: 15, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !117, line: 430, column: 15)
!2134 = distinct !DILexicalBlock(scope: !2113, file: !117, line: 430, column: 15)
!2135 = !DILocation(line: 430, column: 15, scope: !2134)
!2136 = !DILocation(line: 438, column: 19, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2114, file: !117, line: 437, column: 19)
!2138 = !DILocation(line: 438, column: 48, scope: !2137)
!2139 = !DILocation(line: 438, column: 59, scope: !2137)
!2140 = !DILocation(line: 440, column: 19, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !117, line: 440, column: 19)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !117, line: 440, column: 19)
!2143 = distinct !DILexicalBlock(scope: !2137, file: !117, line: 439, column: 17)
!2144 = !DILocation(line: 440, column: 19, scope: !2142)
!2145 = !DILocation(line: 441, column: 19, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !117, line: 441, column: 19)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !117, line: 441, column: 19)
!2148 = !DILocation(line: 441, column: 19, scope: !2147)
!2149 = !DILocation(line: 442, column: 17, scope: !2143)
!2150 = !DILocation(line: 449, column: 20, scope: !2115)
!2151 = !DILocation(line: 454, column: 11, scope: !1989)
!2152 = !DILocation(line: 457, column: 19, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 455, column: 13)
!2154 = !DILocation(line: 463, column: 19, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2153, file: !117, line: 462, column: 19)
!2156 = !DILocation(line: 463, column: 47, scope: !2155)
!2157 = !DILocation(line: 463, column: 41, scope: !2155)
!2158 = !DILocation(line: 463, column: 52, scope: !2155)
!2159 = !DILocation(line: 462, column: 19, scope: !2153)
!2160 = !DILocation(line: 464, column: 25, scope: !2155)
!2161 = !DILocation(line: 464, column: 17, scope: !2155)
!2162 = !DILocation(line: 471, column: 25, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2155, file: !117, line: 465, column: 19)
!2164 = !DILocation(line: 475, column: 21, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !117, line: 475, column: 21)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !117, line: 475, column: 21)
!2167 = !DILocation(line: 475, column: 21, scope: !2166)
!2168 = !DILocation(line: 476, column: 21, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !117, line: 476, column: 21)
!2170 = distinct !DILexicalBlock(scope: !2163, file: !117, line: 476, column: 21)
!2171 = !DILocation(line: 476, column: 21, scope: !2170)
!2172 = !DILocation(line: 477, column: 21, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !117, line: 477, column: 21)
!2174 = distinct !DILexicalBlock(scope: !2163, file: !117, line: 477, column: 21)
!2175 = !DILocation(line: 477, column: 21, scope: !2174)
!2176 = !DILocation(line: 478, column: 21, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !117, line: 478, column: 21)
!2178 = distinct !DILexicalBlock(scope: !2163, file: !117, line: 478, column: 21)
!2179 = !DILocation(line: 478, column: 21, scope: !2178)
!2180 = !DILocation(line: 479, column: 21, scope: !2163)
!2181 = !DILocation(line: 492, column: 31, scope: !1989)
!2182 = !DILocation(line: 493, column: 31, scope: !1989)
!2183 = !DILocation(line: 495, column: 31, scope: !1989)
!2184 = !DILocation(line: 496, column: 31, scope: !1989)
!2185 = !DILocation(line: 497, column: 31, scope: !1989)
!2186 = !DILocation(line: 500, column: 15, scope: !1989)
!2187 = !DILocation(line: 502, column: 19, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !117, line: 501, column: 13)
!2189 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 500, column: 15)
!2190 = !DILocation(line: 509, column: 33, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 509, column: 15)
!2192 = !DILocation(line: 0, scope: !1989)
!2193 = !DILocation(line: 512, column: 9, scope: !1989)
!2194 = !DILocation(line: 514, column: 15, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 513, column: 15)
!2196 = !DILocation(line: 517, column: 9, scope: !1989)
!2197 = !DILocation(line: 518, column: 15, scope: !1989)
!2198 = !DILocation(line: 526, column: 15, scope: !1989)
!2199 = !DILocation(line: 526, column: 40, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 526, column: 15)
!2201 = !DILocation(line: 526, column: 47, scope: !2200)
!2202 = !DILocation(line: 526, column: 18, scope: !2200)
!2203 = !DILocation(line: 530, column: 17, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 530, column: 15)
!2205 = !DILocation(line: 530, column: 15, scope: !1989)
!2206 = !DILocation(line: 535, column: 11, scope: !1989)
!2207 = !DILocation(line: 549, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 548, column: 15)
!2209 = !DILocation(line: 556, column: 15, scope: !1989)
!2210 = !DILocation(line: 558, column: 19, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !117, line: 557, column: 13)
!2212 = distinct !DILexicalBlock(scope: !1989, file: !117, line: 556, column: 15)
!2213 = !DILocation(line: 561, column: 19, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2211, file: !117, line: 561, column: 19)
!2215 = !DILocation(line: 561, column: 30, scope: !2214)
!2216 = !DILocation(line: 570, column: 15, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !117, line: 570, column: 15)
!2218 = distinct !DILexicalBlock(scope: !2211, file: !117, line: 570, column: 15)
!2219 = !DILocation(line: 570, column: 15, scope: !2218)
!2220 = !DILocation(line: 571, column: 15, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !117, line: 571, column: 15)
!2222 = distinct !DILexicalBlock(scope: !2211, file: !117, line: 571, column: 15)
!2223 = !DILocation(line: 571, column: 15, scope: !2222)
!2224 = !DILocation(line: 572, column: 15, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !117, line: 572, column: 15)
!2226 = distinct !DILexicalBlock(scope: !2211, file: !117, line: 572, column: 15)
!2227 = !DILocation(line: 572, column: 15, scope: !2226)
!2228 = !DILocation(line: 574, column: 13, scope: !2211)
!2229 = !DILocation(line: 614, column: 17, scope: !1988)
!2230 = !DILocation(line: 0, scope: !1988)
!2231 = !DILocation(line: 617, column: 29, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1993, file: !117, line: 615, column: 15)
!2233 = !DILocation(line: 617, column: 27, scope: !2232)
!2234 = !DILocation(line: 678, column: 40, scope: !1988)
!2235 = !DILocation(line: 680, column: 23, scope: !2022)
!2236 = !DILocation(line: 621, column: 17, scope: !1992)
!2237 = !DILocation(line: 621, column: 27, scope: !1992)
!2238 = !DILocalVariable(name: "__dest", arg: 1, scope: !2239, file: !991, line: 57, type: !24)
!2239 = distinct !DISubprogram(name: "memset", scope: !991, file: !991, line: 57, type: !2240, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!24, !24, !31, !25}
!2242 = !{!2238, !2243, !2244}
!2243 = !DILocalVariable(name: "__ch", arg: 2, scope: !2239, file: !991, line: 57, type: !31)
!2244 = !DILocalVariable(name: "__len", arg: 3, scope: !2239, file: !991, line: 57, type: !25)
!2245 = !DILocation(line: 0, scope: !2239, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 622, column: 17, scope: !1992)
!2247 = !DILocation(line: 59, column: 10, scope: !2239, inlinedAt: !2246)
!2248 = !DILocation(line: 626, column: 29, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1992, file: !117, line: 626, column: 21)
!2250 = !DILocation(line: 626, column: 21, scope: !1992)
!2251 = !DILocation(line: 627, column: 29, scope: !2249)
!2252 = !DILocation(line: 627, column: 19, scope: !2249)
!2253 = !DILocation(line: 629, column: 17, scope: !1992)
!2254 = !DILocation(line: 624, column: 19, scope: !1992)
!2255 = !DILocation(line: 625, column: 27, scope: !1992)
!2256 = !DILocation(line: 631, column: 21, scope: !2010)
!2257 = !DILocation(line: 632, column: 56, scope: !2010)
!2258 = !DILocation(line: 632, column: 50, scope: !2010)
!2259 = !DILocation(line: 633, column: 53, scope: !2010)
!2260 = !DILocation(line: 0, scope: !2010)
!2261 = !DILocation(line: 632, column: 36, scope: !2010)
!2262 = !DILocation(line: 634, column: 25, scope: !2010)
!2263 = !DILocation(line: 644, column: 38, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2017, file: !117, line: 642, column: 23)
!2265 = !DILocation(line: 644, column: 48, scope: !2264)
!2266 = !DILocation(line: 644, column: 25, scope: !2264)
!2267 = !DILocation(line: 644, column: 51, scope: !2264)
!2268 = !DILocation(line: 645, column: 28, scope: !2264)
!2269 = !DILocation(line: 644, column: 34, scope: !2264)
!2270 = distinct !{!2270, !2266, !2268, !721}
!2271 = !DILocation(line: 655, column: 29, scope: !2015)
!2272 = !DILocation(line: 0, scope: !2014)
!2273 = !DILocation(line: 659, column: 49, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !117, line: 658, column: 29)
!2275 = distinct !DILexicalBlock(scope: !2014, file: !117, line: 658, column: 29)
!2276 = !DILocation(line: 659, column: 39, scope: !2274)
!2277 = !DILocation(line: 659, column: 31, scope: !2274)
!2278 = !DILocation(line: 658, column: 53, scope: !2274)
!2279 = !DILocation(line: 658, column: 43, scope: !2274)
!2280 = !DILocation(line: 658, column: 29, scope: !2275)
!2281 = distinct !{!2281, !2280, !2282, !721}
!2282 = !DILocation(line: 667, column: 33, scope: !2275)
!2283 = !DILocation(line: 674, column: 19, scope: !1992)
!2284 = !DILocation(line: 670, column: 41, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2016, file: !117, line: 670, column: 29)
!2286 = !DILocation(line: 670, column: 31, scope: !2285)
!2287 = !DILocation(line: 670, column: 29, scope: !2016)
!2288 = !DILocation(line: 672, column: 27, scope: !2016)
!2289 = !DILocation(line: 675, column: 26, scope: !1992)
!2290 = !DILocation(line: 675, column: 24, scope: !1992)
!2291 = !DILocation(line: 674, column: 19, scope: !2010)
!2292 = distinct !{!2292, !2253, !2293, !721}
!2293 = !DILocation(line: 675, column: 44, scope: !1992)
!2294 = !DILocation(line: 676, column: 15, scope: !1993)
!2295 = !DILocation(line: 680, column: 19, scope: !2022)
!2296 = !DILocation(line: 680, column: 45, scope: !2022)
!2297 = !DILocation(line: 684, column: 33, scope: !2021)
!2298 = !DILocation(line: 0, scope: !2021)
!2299 = !DILocation(line: 686, column: 17, scope: !2021)
!2300 = !DILocation(line: 405, column: 12, scope: !1980)
!2301 = !DILocation(line: 688, column: 43, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !117, line: 688, column: 25)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !117, line: 687, column: 19)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !117, line: 686, column: 17)
!2305 = distinct !DILexicalBlock(scope: !2021, file: !117, line: 686, column: 17)
!2306 = !DILocation(line: 690, column: 25, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !117, line: 690, column: 25)
!2308 = distinct !DILexicalBlock(scope: !2302, file: !117, line: 689, column: 23)
!2309 = !DILocation(line: 690, column: 25, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !117, line: 690, column: 25)
!2311 = !DILocation(line: 690, column: 25, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !117, line: 690, column: 25)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !117, line: 690, column: 25)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !117, line: 690, column: 25)
!2315 = !DILocation(line: 690, column: 25, scope: !2313)
!2316 = !DILocation(line: 690, column: 25, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !117, line: 690, column: 25)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !117, line: 690, column: 25)
!2319 = !DILocation(line: 690, column: 25, scope: !2318)
!2320 = !DILocation(line: 690, column: 25, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !117, line: 690, column: 25)
!2322 = distinct !DILexicalBlock(scope: !2314, file: !117, line: 690, column: 25)
!2323 = !DILocation(line: 690, column: 25, scope: !2322)
!2324 = !DILocation(line: 690, column: 25, scope: !2314)
!2325 = !DILocation(line: 690, column: 25, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !117, line: 690, column: 25)
!2327 = distinct !DILexicalBlock(scope: !2307, file: !117, line: 690, column: 25)
!2328 = !DILocation(line: 690, column: 25, scope: !2327)
!2329 = !DILocation(line: 691, column: 25, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !117, line: 691, column: 25)
!2331 = distinct !DILexicalBlock(scope: !2308, file: !117, line: 691, column: 25)
!2332 = !DILocation(line: 691, column: 25, scope: !2331)
!2333 = !DILocation(line: 692, column: 25, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !117, line: 692, column: 25)
!2335 = distinct !DILexicalBlock(scope: !2308, file: !117, line: 692, column: 25)
!2336 = !DILocation(line: 692, column: 25, scope: !2335)
!2337 = !DILocation(line: 693, column: 38, scope: !2308)
!2338 = !DILocation(line: 693, column: 33, scope: !2308)
!2339 = !DILocation(line: 694, column: 23, scope: !2308)
!2340 = !DILocation(line: 695, column: 30, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2302, file: !117, line: 695, column: 30)
!2342 = !DILocation(line: 695, column: 30, scope: !2302)
!2343 = !DILocation(line: 697, column: 25, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !117, line: 697, column: 25)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !117, line: 697, column: 25)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !117, line: 696, column: 23)
!2347 = !DILocation(line: 697, column: 25, scope: !2345)
!2348 = !DILocation(line: 699, column: 23, scope: !2346)
!2349 = !DILocation(line: 700, column: 35, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2303, file: !117, line: 700, column: 25)
!2351 = !DILocation(line: 700, column: 30, scope: !2350)
!2352 = !DILocation(line: 700, column: 25, scope: !2303)
!2353 = !DILocation(line: 702, column: 21, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !117, line: 702, column: 21)
!2355 = distinct !DILexicalBlock(scope: !2303, file: !117, line: 702, column: 21)
!2356 = !DILocation(line: 702, column: 21, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !117, line: 702, column: 21)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !117, line: 702, column: 21)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !117, line: 702, column: 21)
!2360 = !DILocation(line: 702, column: 21, scope: !2358)
!2361 = !DILocation(line: 702, column: 21, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !117, line: 702, column: 21)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !117, line: 702, column: 21)
!2364 = !DILocation(line: 702, column: 21, scope: !2363)
!2365 = !DILocation(line: 702, column: 21, scope: !2359)
!2366 = !DILocation(line: 0, scope: !2303)
!2367 = !DILocation(line: 703, column: 21, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !117, line: 703, column: 21)
!2369 = distinct !DILexicalBlock(scope: !2303, file: !117, line: 703, column: 21)
!2370 = !DILocation(line: 703, column: 21, scope: !2369)
!2371 = !DILocation(line: 704, column: 25, scope: !2303)
!2372 = !DILocation(line: 686, column: 17, scope: !2304)
!2373 = distinct !{!2373, !2374, !2375}
!2374 = !DILocation(line: 686, column: 17, scope: !2305)
!2375 = !DILocation(line: 705, column: 19, scope: !2305)
!2376 = !DILocation(line: 416, column: 30, scope: !2098)
!2377 = !DILocation(line: 712, column: 34, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !1980, file: !117, line: 712, column: 11)
!2379 = !DILocation(line: 715, column: 35, scope: !2378)
!2380 = !DILocation(line: 715, column: 17, scope: !2378)
!2381 = !DILocation(line: 715, column: 47, scope: !2378)
!2382 = !DILocation(line: 715, column: 65, scope: !2378)
!2383 = !DILocation(line: 716, column: 11, scope: !2378)
!2384 = !DILocation(line: 712, column: 11, scope: !1980)
!2385 = !DILocation(line: 400, column: 10, scope: !1982)
!2386 = !DILocation(line: 719, column: 5, scope: !1980)
!2387 = !DILocation(line: 720, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !1980, file: !117, line: 720, column: 7)
!2389 = !DILocation(line: 720, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2388, file: !117, line: 720, column: 7)
!2391 = !DILocation(line: 720, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !117, line: 720, column: 7)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !117, line: 720, column: 7)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !117, line: 720, column: 7)
!2395 = !DILocation(line: 720, column: 7, scope: !2393)
!2396 = !DILocation(line: 720, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !117, line: 720, column: 7)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !117, line: 720, column: 7)
!2399 = !DILocation(line: 720, column: 7, scope: !2398)
!2400 = !DILocation(line: 720, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !117, line: 720, column: 7)
!2402 = distinct !DILexicalBlock(scope: !2394, file: !117, line: 720, column: 7)
!2403 = !DILocation(line: 720, column: 7, scope: !2402)
!2404 = !DILocation(line: 720, column: 7, scope: !2394)
!2405 = !DILocation(line: 720, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !117, line: 720, column: 7)
!2407 = distinct !DILexicalBlock(scope: !2388, file: !117, line: 720, column: 7)
!2408 = !DILocation(line: 720, column: 7, scope: !2407)
!2409 = !DILocation(line: 722, column: 5, scope: !1980)
!2410 = !DILocation(line: 723, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !117, line: 723, column: 7)
!2412 = distinct !DILexicalBlock(scope: !1980, file: !117, line: 723, column: 7)
!2413 = !DILocation(line: 424, column: 9, scope: !1980)
!2414 = !DILocation(line: 723, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !117, line: 723, column: 7)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !117, line: 723, column: 7)
!2417 = distinct !DILexicalBlock(scope: !2411, file: !117, line: 723, column: 7)
!2418 = !DILocation(line: 723, column: 7, scope: !2416)
!2419 = !DILocation(line: 723, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !117, line: 723, column: 7)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !117, line: 723, column: 7)
!2422 = !DILocation(line: 723, column: 7, scope: !2421)
!2423 = !DILocation(line: 723, column: 7, scope: !2417)
!2424 = !DILocation(line: 724, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !117, line: 724, column: 7)
!2426 = distinct !DILexicalBlock(scope: !1980, file: !117, line: 724, column: 7)
!2427 = !DILocation(line: 724, column: 7, scope: !2426)
!2428 = !DILocation(line: 726, column: 13, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !1980, file: !117, line: 726, column: 11)
!2430 = !DILocation(line: 726, column: 11, scope: !1980)
!2431 = !DILocation(line: 728, column: 5, scope: !1981)
!2432 = !DILocation(line: 400, column: 75, scope: !1981)
!2433 = !DILocation(line: 400, column: 3, scope: !1981)
!2434 = distinct !{!2434, !2094, !2435, !721}
!2435 = !DILocation(line: 728, column: 5, scope: !1982)
!2436 = !DILocation(line: 730, column: 11, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !1953, file: !117, line: 730, column: 7)
!2438 = !DILocation(line: 730, column: 16, scope: !2437)
!2439 = !DILocation(line: 738, column: 51, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !1953, file: !117, line: 738, column: 7)
!2441 = !DILocation(line: 741, column: 11, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !117, line: 741, column: 11)
!2443 = distinct !DILexicalBlock(scope: !2440, file: !117, line: 740, column: 5)
!2444 = !DILocation(line: 741, column: 11, scope: !2443)
!2445 = !DILocation(line: 742, column: 16, scope: !2442)
!2446 = !DILocation(line: 742, column: 9, scope: !2442)
!2447 = !DILocation(line: 746, column: 18, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2442, file: !117, line: 746, column: 16)
!2449 = !DILocation(line: 746, column: 29, scope: !2448)
!2450 = !DILocation(line: 755, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !1953, file: !117, line: 755, column: 7)
!2452 = !DILocation(line: 755, column: 20, scope: !2451)
!2453 = !DILocation(line: 756, column: 12, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !117, line: 756, column: 5)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !117, line: 756, column: 5)
!2456 = !DILocation(line: 756, column: 5, scope: !2455)
!2457 = !DILocation(line: 757, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !117, line: 757, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !117, line: 757, column: 7)
!2460 = !DILocation(line: 757, column: 7, scope: !2459)
!2461 = !DILocation(line: 756, column: 39, scope: !2454)
!2462 = distinct !{!2462, !2456, !2463, !721}
!2463 = !DILocation(line: 757, column: 7, scope: !2455)
!2464 = !DILocation(line: 759, column: 11, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !1953, file: !117, line: 759, column: 7)
!2466 = !DILocation(line: 759, column: 7, scope: !1953)
!2467 = !DILocation(line: 760, column: 5, scope: !2465)
!2468 = !DILocation(line: 760, column: 17, scope: !2465)
!2469 = !DILocation(line: 763, column: 2, scope: !1953)
!2470 = !DILocation(line: 766, column: 51, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !1953, file: !117, line: 766, column: 7)
!2472 = !DILocation(line: 766, column: 21, scope: !2471)
!2473 = !DILocation(line: 770, column: 42, scope: !1953)
!2474 = !DILocation(line: 768, column: 10, scope: !1953)
!2475 = !DILocation(line: 768, column: 3, scope: !1953)
!2476 = !DILocation(line: 772, column: 1, scope: !1953)
!2477 = distinct !DISubprogram(name: "gettext_quote", scope: !117, file: !117, line: 207, type: !2478, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!28, !28, !119}
!2480 = !{!2481, !2482, !2483, !2484}
!2481 = !DILocalVariable(name: "msgid", arg: 1, scope: !2477, file: !117, line: 207, type: !28)
!2482 = !DILocalVariable(name: "s", arg: 2, scope: !2477, file: !117, line: 207, type: !119)
!2483 = !DILocalVariable(name: "translation", scope: !2477, file: !117, line: 209, type: !28)
!2484 = !DILocalVariable(name: "locale_code", scope: !2477, file: !117, line: 210, type: !28)
!2485 = !DILocation(line: 0, scope: !2477)
!2486 = !DILocation(line: 209, column: 29, scope: !2477)
!2487 = !DILocation(line: 212, column: 19, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2477, file: !117, line: 212, column: 7)
!2489 = !DILocation(line: 212, column: 7, scope: !2477)
!2490 = !DILocation(line: 233, column: 17, scope: !2477)
!2491 = !DILocalVariable(name: "s1", arg: 1, scope: !2492, file: !2493, line: 160, type: !28)
!2492 = distinct !DISubprogram(name: "strcaseeq0", scope: !2493, file: !2493, line: 160, type: !2494, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2496)
!2493 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!31, !28, !28, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2496 = !{!2491, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506}
!2497 = !DILocalVariable(name: "s2", arg: 2, scope: !2492, file: !2493, line: 160, type: !28)
!2498 = !DILocalVariable(name: "s20", arg: 3, scope: !2492, file: !2493, line: 160, type: !23)
!2499 = !DILocalVariable(name: "s21", arg: 4, scope: !2492, file: !2493, line: 160, type: !23)
!2500 = !DILocalVariable(name: "s22", arg: 5, scope: !2492, file: !2493, line: 160, type: !23)
!2501 = !DILocalVariable(name: "s23", arg: 6, scope: !2492, file: !2493, line: 160, type: !23)
!2502 = !DILocalVariable(name: "s24", arg: 7, scope: !2492, file: !2493, line: 160, type: !23)
!2503 = !DILocalVariable(name: "s25", arg: 8, scope: !2492, file: !2493, line: 160, type: !23)
!2504 = !DILocalVariable(name: "s26", arg: 9, scope: !2492, file: !2493, line: 160, type: !23)
!2505 = !DILocalVariable(name: "s27", arg: 10, scope: !2492, file: !2493, line: 160, type: !23)
!2506 = !DILocalVariable(name: "s28", arg: 11, scope: !2492, file: !2493, line: 160, type: !23)
!2507 = !DILocation(line: 0, scope: !2492, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 234, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2477, file: !117, line: 234, column: 7)
!2510 = !DILocation(line: 162, column: 7, scope: !2511, inlinedAt: !2508)
!2511 = distinct !DILexicalBlock(scope: !2492, file: !2493, line: 162, column: 7)
!2512 = !DILocalVariable(name: "s1", arg: 1, scope: !2513, file: !2493, line: 146, type: !28)
!2513 = distinct !DISubprogram(name: "strcaseeq1", scope: !2493, file: !2493, line: 146, type: !2514, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!31, !28, !28, !23, !23, !23, !23, !23, !23, !23, !23}
!2516 = !{!2512, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525}
!2517 = !DILocalVariable(name: "s2", arg: 2, scope: !2513, file: !2493, line: 146, type: !28)
!2518 = !DILocalVariable(name: "s21", arg: 3, scope: !2513, file: !2493, line: 146, type: !23)
!2519 = !DILocalVariable(name: "s22", arg: 4, scope: !2513, file: !2493, line: 146, type: !23)
!2520 = !DILocalVariable(name: "s23", arg: 5, scope: !2513, file: !2493, line: 146, type: !23)
!2521 = !DILocalVariable(name: "s24", arg: 6, scope: !2513, file: !2493, line: 146, type: !23)
!2522 = !DILocalVariable(name: "s25", arg: 7, scope: !2513, file: !2493, line: 146, type: !23)
!2523 = !DILocalVariable(name: "s26", arg: 8, scope: !2513, file: !2493, line: 146, type: !23)
!2524 = !DILocalVariable(name: "s27", arg: 9, scope: !2513, file: !2493, line: 146, type: !23)
!2525 = !DILocalVariable(name: "s28", arg: 10, scope: !2513, file: !2493, line: 146, type: !23)
!2526 = !DILocation(line: 0, scope: !2513, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 167, column: 16, scope: !2528, inlinedAt: !2508)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !2493, line: 164, column: 11)
!2529 = distinct !DILexicalBlock(scope: !2511, file: !2493, line: 163, column: 5)
!2530 = !DILocation(line: 148, column: 7, scope: !2531, inlinedAt: !2527)
!2531 = distinct !DILexicalBlock(scope: !2513, file: !2493, line: 148, column: 7)
!2532 = !DILocalVariable(name: "s1", arg: 1, scope: !2533, file: !2493, line: 132, type: !28)
!2533 = distinct !DISubprogram(name: "strcaseeq2", scope: !2493, file: !2493, line: 132, type: !2534, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!31, !28, !28, !23, !23, !23, !23, !23, !23, !23}
!2536 = !{!2532, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544}
!2537 = !DILocalVariable(name: "s2", arg: 2, scope: !2533, file: !2493, line: 132, type: !28)
!2538 = !DILocalVariable(name: "s22", arg: 3, scope: !2533, file: !2493, line: 132, type: !23)
!2539 = !DILocalVariable(name: "s23", arg: 4, scope: !2533, file: !2493, line: 132, type: !23)
!2540 = !DILocalVariable(name: "s24", arg: 5, scope: !2533, file: !2493, line: 132, type: !23)
!2541 = !DILocalVariable(name: "s25", arg: 6, scope: !2533, file: !2493, line: 132, type: !23)
!2542 = !DILocalVariable(name: "s26", arg: 7, scope: !2533, file: !2493, line: 132, type: !23)
!2543 = !DILocalVariable(name: "s27", arg: 8, scope: !2533, file: !2493, line: 132, type: !23)
!2544 = !DILocalVariable(name: "s28", arg: 9, scope: !2533, file: !2493, line: 132, type: !23)
!2545 = !DILocation(line: 0, scope: !2533, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 153, column: 16, scope: !2547, inlinedAt: !2527)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !2493, line: 150, column: 11)
!2548 = distinct !DILexicalBlock(scope: !2531, file: !2493, line: 149, column: 5)
!2549 = !DILocation(line: 134, column: 7, scope: !2550, inlinedAt: !2546)
!2550 = distinct !DILexicalBlock(scope: !2533, file: !2493, line: 134, column: 7)
!2551 = !DILocalVariable(name: "s1", arg: 1, scope: !2552, file: !2493, line: 118, type: !28)
!2552 = distinct !DISubprogram(name: "strcaseeq3", scope: !2493, file: !2493, line: 118, type: !2553, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!31, !28, !28, !23, !23, !23, !23, !23, !23}
!2555 = !{!2551, !2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2556 = !DILocalVariable(name: "s2", arg: 2, scope: !2552, file: !2493, line: 118, type: !28)
!2557 = !DILocalVariable(name: "s23", arg: 3, scope: !2552, file: !2493, line: 118, type: !23)
!2558 = !DILocalVariable(name: "s24", arg: 4, scope: !2552, file: !2493, line: 118, type: !23)
!2559 = !DILocalVariable(name: "s25", arg: 5, scope: !2552, file: !2493, line: 118, type: !23)
!2560 = !DILocalVariable(name: "s26", arg: 6, scope: !2552, file: !2493, line: 118, type: !23)
!2561 = !DILocalVariable(name: "s27", arg: 7, scope: !2552, file: !2493, line: 118, type: !23)
!2562 = !DILocalVariable(name: "s28", arg: 8, scope: !2552, file: !2493, line: 118, type: !23)
!2563 = !DILocation(line: 0, scope: !2552, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 139, column: 16, scope: !2565, inlinedAt: !2546)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !2493, line: 136, column: 11)
!2566 = distinct !DILexicalBlock(scope: !2550, file: !2493, line: 135, column: 5)
!2567 = !DILocation(line: 120, column: 7, scope: !2568, inlinedAt: !2564)
!2568 = distinct !DILexicalBlock(scope: !2552, file: !2493, line: 120, column: 7)
!2569 = !DILocation(line: 120, column: 7, scope: !2552, inlinedAt: !2564)
!2570 = !DILocalVariable(name: "s1", arg: 1, scope: !2571, file: !2493, line: 104, type: !28)
!2571 = distinct !DISubprogram(name: "strcaseeq4", scope: !2493, file: !2493, line: 104, type: !2572, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!31, !28, !28, !23, !23, !23, !23, !23}
!2574 = !{!2570, !2575, !2576, !2577, !2578, !2579, !2580}
!2575 = !DILocalVariable(name: "s2", arg: 2, scope: !2571, file: !2493, line: 104, type: !28)
!2576 = !DILocalVariable(name: "s24", arg: 3, scope: !2571, file: !2493, line: 104, type: !23)
!2577 = !DILocalVariable(name: "s25", arg: 4, scope: !2571, file: !2493, line: 104, type: !23)
!2578 = !DILocalVariable(name: "s26", arg: 5, scope: !2571, file: !2493, line: 104, type: !23)
!2579 = !DILocalVariable(name: "s27", arg: 6, scope: !2571, file: !2493, line: 104, type: !23)
!2580 = !DILocalVariable(name: "s28", arg: 7, scope: !2571, file: !2493, line: 104, type: !23)
!2581 = !DILocation(line: 0, scope: !2571, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 125, column: 16, scope: !2583, inlinedAt: !2564)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !2493, line: 122, column: 11)
!2584 = distinct !DILexicalBlock(scope: !2568, file: !2493, line: 121, column: 5)
!2585 = !DILocation(line: 106, column: 7, scope: !2586, inlinedAt: !2582)
!2586 = distinct !DILexicalBlock(scope: !2571, file: !2493, line: 106, column: 7)
!2587 = !DILocation(line: 106, column: 7, scope: !2571, inlinedAt: !2582)
!2588 = !DILocalVariable(name: "s1", arg: 1, scope: !2589, file: !2493, line: 90, type: !28)
!2589 = distinct !DISubprogram(name: "strcaseeq5", scope: !2493, file: !2493, line: 90, type: !2590, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!31, !28, !28, !23, !23, !23, !23}
!2592 = !{!2588, !2593, !2594, !2595, !2596, !2597}
!2593 = !DILocalVariable(name: "s2", arg: 2, scope: !2589, file: !2493, line: 90, type: !28)
!2594 = !DILocalVariable(name: "s25", arg: 3, scope: !2589, file: !2493, line: 90, type: !23)
!2595 = !DILocalVariable(name: "s26", arg: 4, scope: !2589, file: !2493, line: 90, type: !23)
!2596 = !DILocalVariable(name: "s27", arg: 5, scope: !2589, file: !2493, line: 90, type: !23)
!2597 = !DILocalVariable(name: "s28", arg: 6, scope: !2589, file: !2493, line: 90, type: !23)
!2598 = !DILocation(line: 0, scope: !2589, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 111, column: 16, scope: !2600, inlinedAt: !2582)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !2493, line: 108, column: 11)
!2601 = distinct !DILexicalBlock(scope: !2586, file: !2493, line: 107, column: 5)
!2602 = !DILocation(line: 92, column: 7, scope: !2603, inlinedAt: !2599)
!2603 = distinct !DILexicalBlock(scope: !2589, file: !2493, line: 92, column: 7)
!2604 = !DILocation(line: 92, column: 7, scope: !2589, inlinedAt: !2599)
!2605 = !DILocation(line: 235, column: 12, scope: !2509)
!2606 = !DILocation(line: 235, column: 21, scope: !2509)
!2607 = !DILocation(line: 235, column: 5, scope: !2509)
!2608 = !DILocation(line: 0, scope: !2513, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 167, column: 16, scope: !2528, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 236, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2477, file: !117, line: 236, column: 7)
!2612 = !DILocation(line: 148, column: 7, scope: !2531, inlinedAt: !2609)
!2613 = !DILocation(line: 0, scope: !2533, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 153, column: 16, scope: !2547, inlinedAt: !2609)
!2615 = !DILocation(line: 134, column: 7, scope: !2550, inlinedAt: !2614)
!2616 = !DILocation(line: 134, column: 7, scope: !2533, inlinedAt: !2614)
!2617 = !DILocation(line: 0, scope: !2552, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 139, column: 16, scope: !2565, inlinedAt: !2614)
!2619 = !DILocation(line: 120, column: 7, scope: !2568, inlinedAt: !2618)
!2620 = !DILocation(line: 120, column: 7, scope: !2552, inlinedAt: !2618)
!2621 = !DILocation(line: 0, scope: !2571, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 125, column: 16, scope: !2583, inlinedAt: !2618)
!2623 = !DILocation(line: 106, column: 7, scope: !2586, inlinedAt: !2622)
!2624 = !DILocation(line: 106, column: 7, scope: !2571, inlinedAt: !2622)
!2625 = !DILocation(line: 0, scope: !2589, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 111, column: 16, scope: !2600, inlinedAt: !2622)
!2627 = !DILocation(line: 92, column: 7, scope: !2603, inlinedAt: !2626)
!2628 = !DILocation(line: 92, column: 7, scope: !2589, inlinedAt: !2626)
!2629 = !DILocalVariable(name: "s1", arg: 1, scope: !2630, file: !2493, line: 76, type: !28)
!2630 = distinct !DISubprogram(name: "strcaseeq6", scope: !2493, file: !2493, line: 76, type: !2631, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!31, !28, !28, !23, !23, !23}
!2633 = !{!2629, !2634, !2635, !2636, !2637}
!2634 = !DILocalVariable(name: "s2", arg: 2, scope: !2630, file: !2493, line: 76, type: !28)
!2635 = !DILocalVariable(name: "s26", arg: 3, scope: !2630, file: !2493, line: 76, type: !23)
!2636 = !DILocalVariable(name: "s27", arg: 4, scope: !2630, file: !2493, line: 76, type: !23)
!2637 = !DILocalVariable(name: "s28", arg: 5, scope: !2630, file: !2493, line: 76, type: !23)
!2638 = !DILocation(line: 0, scope: !2630, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 97, column: 16, scope: !2640, inlinedAt: !2626)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !2493, line: 94, column: 11)
!2641 = distinct !DILexicalBlock(scope: !2603, file: !2493, line: 93, column: 5)
!2642 = !DILocation(line: 78, column: 7, scope: !2643, inlinedAt: !2639)
!2643 = distinct !DILexicalBlock(scope: !2630, file: !2493, line: 78, column: 7)
!2644 = !DILocation(line: 78, column: 7, scope: !2630, inlinedAt: !2639)
!2645 = !DILocalVariable(name: "s1", arg: 1, scope: !2646, file: !2493, line: 62, type: !28)
!2646 = distinct !DISubprogram(name: "strcaseeq7", scope: !2493, file: !2493, line: 62, type: !2647, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!31, !28, !28, !23, !23}
!2649 = !{!2645, !2650, !2651, !2652}
!2650 = !DILocalVariable(name: "s2", arg: 2, scope: !2646, file: !2493, line: 62, type: !28)
!2651 = !DILocalVariable(name: "s27", arg: 3, scope: !2646, file: !2493, line: 62, type: !23)
!2652 = !DILocalVariable(name: "s28", arg: 4, scope: !2646, file: !2493, line: 62, type: !23)
!2653 = !DILocation(line: 0, scope: !2646, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 83, column: 16, scope: !2655, inlinedAt: !2639)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !2493, line: 80, column: 11)
!2656 = distinct !DILexicalBlock(scope: !2643, file: !2493, line: 79, column: 5)
!2657 = !DILocation(line: 64, column: 7, scope: !2658, inlinedAt: !2654)
!2658 = distinct !DILexicalBlock(scope: !2646, file: !2493, line: 64, column: 7)
!2659 = !DILocation(line: 236, column: 7, scope: !2477)
!2660 = !DILocation(line: 237, column: 12, scope: !2611)
!2661 = !DILocation(line: 237, column: 21, scope: !2611)
!2662 = !DILocation(line: 237, column: 5, scope: !2611)
!2663 = !DILocation(line: 239, column: 13, scope: !2477)
!2664 = !DILocation(line: 239, column: 11, scope: !2477)
!2665 = !DILocation(line: 239, column: 3, scope: !2477)
!2666 = !DILocation(line: 240, column: 1, scope: !2477)
!2667 = !DISubprogram(name: "iswprint", scope: !2668, file: !2668, line: 120, type: !2669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!2668 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!31, !7}
!2671 = !DISubprogram(name: "mbsinit", scope: !2672, file: !2672, line: 292, type: !2673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!2672 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!31, !2675}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1998)
!2677 = distinct !DISubprogram(name: "quotearg_alloc", scope: !117, file: !117, line: 799, type: !2678, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!22, !28, !25, !1845}
!2680 = !{!2681, !2682, !2683}
!2681 = !DILocalVariable(name: "arg", arg: 1, scope: !2677, file: !117, line: 799, type: !28)
!2682 = !DILocalVariable(name: "argsize", arg: 2, scope: !2677, file: !117, line: 799, type: !25)
!2683 = !DILocalVariable(name: "o", arg: 3, scope: !2677, file: !117, line: 800, type: !1845)
!2684 = !DILocation(line: 0, scope: !2677)
!2685 = !DILocalVariable(name: "arg", arg: 1, scope: !2686, file: !117, line: 812, type: !28)
!2686 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !117, file: !117, line: 812, type: !2687, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!22, !28, !25, !235, !1845}
!2689 = !{!2685, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697}
!2690 = !DILocalVariable(name: "argsize", arg: 2, scope: !2686, file: !117, line: 812, type: !25)
!2691 = !DILocalVariable(name: "size", arg: 3, scope: !2686, file: !117, line: 812, type: !235)
!2692 = !DILocalVariable(name: "o", arg: 4, scope: !2686, file: !117, line: 813, type: !1845)
!2693 = !DILocalVariable(name: "p", scope: !2686, file: !117, line: 815, type: !1845)
!2694 = !DILocalVariable(name: "e", scope: !2686, file: !117, line: 816, type: !31)
!2695 = !DILocalVariable(name: "flags", scope: !2686, file: !117, line: 818, type: !31)
!2696 = !DILocalVariable(name: "bufsize", scope: !2686, file: !117, line: 819, type: !25)
!2697 = !DILocalVariable(name: "buf", scope: !2686, file: !117, line: 823, type: !22)
!2698 = !DILocation(line: 0, scope: !2686, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 802, column: 10, scope: !2677)
!2700 = !DILocation(line: 815, column: 37, scope: !2686, inlinedAt: !2699)
!2701 = !DILocation(line: 816, column: 11, scope: !2686, inlinedAt: !2699)
!2702 = !DILocation(line: 818, column: 18, scope: !2686, inlinedAt: !2699)
!2703 = !DILocation(line: 818, column: 24, scope: !2686, inlinedAt: !2699)
!2704 = !DILocation(line: 819, column: 69, scope: !2686, inlinedAt: !2699)
!2705 = !DILocation(line: 820, column: 53, scope: !2686, inlinedAt: !2699)
!2706 = !DILocation(line: 821, column: 49, scope: !2686, inlinedAt: !2699)
!2707 = !DILocation(line: 822, column: 49, scope: !2686, inlinedAt: !2699)
!2708 = !DILocation(line: 819, column: 20, scope: !2686, inlinedAt: !2699)
!2709 = !DILocation(line: 822, column: 62, scope: !2686, inlinedAt: !2699)
!2710 = !DILocalVariable(name: "n", arg: 1, scope: !2711, file: !231, line: 216, type: !25)
!2711 = distinct !DISubprogram(name: "xcharalloc", scope: !231, file: !231, line: 216, type: !2712, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!22, !25}
!2714 = !{!2710}
!2715 = !DILocation(line: 0, scope: !2711, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 823, column: 15, scope: !2686, inlinedAt: !2699)
!2717 = !DILocation(line: 218, column: 10, scope: !2711, inlinedAt: !2716)
!2718 = !DILocation(line: 824, column: 60, scope: !2686, inlinedAt: !2699)
!2719 = !DILocation(line: 826, column: 32, scope: !2686, inlinedAt: !2699)
!2720 = !DILocation(line: 826, column: 47, scope: !2686, inlinedAt: !2699)
!2721 = !DILocation(line: 824, column: 3, scope: !2686, inlinedAt: !2699)
!2722 = !DILocation(line: 827, column: 9, scope: !2686, inlinedAt: !2699)
!2723 = !DILocation(line: 802, column: 3, scope: !2677)
!2724 = !DILocation(line: 0, scope: !2686)
!2725 = !DILocation(line: 815, column: 37, scope: !2686)
!2726 = !DILocation(line: 816, column: 11, scope: !2686)
!2727 = !DILocation(line: 818, column: 18, scope: !2686)
!2728 = !DILocation(line: 818, column: 27, scope: !2686)
!2729 = !DILocation(line: 818, column: 24, scope: !2686)
!2730 = !DILocation(line: 819, column: 69, scope: !2686)
!2731 = !DILocation(line: 820, column: 53, scope: !2686)
!2732 = !DILocation(line: 821, column: 49, scope: !2686)
!2733 = !DILocation(line: 822, column: 49, scope: !2686)
!2734 = !DILocation(line: 819, column: 20, scope: !2686)
!2735 = !DILocation(line: 822, column: 62, scope: !2686)
!2736 = !DILocation(line: 0, scope: !2711, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 823, column: 15, scope: !2686)
!2738 = !DILocation(line: 218, column: 10, scope: !2711, inlinedAt: !2737)
!2739 = !DILocation(line: 824, column: 60, scope: !2686)
!2740 = !DILocation(line: 826, column: 32, scope: !2686)
!2741 = !DILocation(line: 826, column: 47, scope: !2686)
!2742 = !DILocation(line: 824, column: 3, scope: !2686)
!2743 = !DILocation(line: 827, column: 9, scope: !2686)
!2744 = !DILocation(line: 828, column: 7, scope: !2686)
!2745 = !DILocation(line: 829, column: 11, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2686, file: !117, line: 828, column: 7)
!2747 = !DILocation(line: 829, column: 5, scope: !2746)
!2748 = !DILocation(line: 830, column: 3, scope: !2686)
!2749 = distinct !DISubprogram(name: "quotearg_free", scope: !117, file: !117, line: 848, type: !681, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2750)
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "sv", scope: !2749, file: !117, line: 850, type: !167)
!2752 = !DILocalVariable(name: "i", scope: !2749, file: !117, line: 851, type: !31)
!2753 = !DILocation(line: 850, column: 24, scope: !2749)
!2754 = !DILocation(line: 0, scope: !2749)
!2755 = !DILocation(line: 852, column: 19, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !117, line: 852, column: 3)
!2757 = distinct !DILexicalBlock(scope: !2749, file: !117, line: 852, column: 3)
!2758 = !DILocation(line: 852, column: 17, scope: !2756)
!2759 = !DILocation(line: 852, column: 3, scope: !2757)
!2760 = !DILocation(line: 853, column: 17, scope: !2756)
!2761 = !{!2762, !672, i64 8}
!2762 = !{!"slotvec", !1107, i64 0, !672, i64 8}
!2763 = !DILocation(line: 853, column: 5, scope: !2756)
!2764 = !DILocation(line: 852, column: 28, scope: !2756)
!2765 = distinct !{!2765, !2759, !2766, !721}
!2766 = !DILocation(line: 853, column: 20, scope: !2757)
!2767 = !DILocation(line: 854, column: 13, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2749, file: !117, line: 854, column: 7)
!2769 = !DILocation(line: 854, column: 17, scope: !2768)
!2770 = !DILocation(line: 854, column: 7, scope: !2749)
!2771 = !DILocation(line: 856, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2768, file: !117, line: 855, column: 5)
!2773 = !DILocation(line: 857, column: 21, scope: !2772)
!2774 = !{!2762, !1107, i64 0}
!2775 = !DILocation(line: 858, column: 20, scope: !2772)
!2776 = !DILocation(line: 859, column: 5, scope: !2772)
!2777 = !DILocation(line: 860, column: 10, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2749, file: !117, line: 860, column: 7)
!2779 = !DILocation(line: 860, column: 7, scope: !2749)
!2780 = !DILocation(line: 862, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2778, file: !117, line: 861, column: 5)
!2782 = !DILocation(line: 862, column: 7, scope: !2781)
!2783 = !DILocation(line: 863, column: 15, scope: !2781)
!2784 = !DILocation(line: 864, column: 5, scope: !2781)
!2785 = !DILocation(line: 865, column: 10, scope: !2749)
!2786 = !DILocation(line: 866, column: 1, scope: !2749)
!2787 = distinct !DISubprogram(name: "quotearg_n", scope: !117, file: !117, line: 931, type: !803, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2788)
!2788 = !{!2789, !2790}
!2789 = !DILocalVariable(name: "n", arg: 1, scope: !2787, file: !117, line: 931, type: !31)
!2790 = !DILocalVariable(name: "arg", arg: 2, scope: !2787, file: !117, line: 931, type: !28)
!2791 = !DILocation(line: 0, scope: !2787)
!2792 = !DILocation(line: 933, column: 10, scope: !2787)
!2793 = !DILocation(line: 933, column: 3, scope: !2787)
!2794 = distinct !DISubprogram(name: "quotearg_n_options", scope: !117, file: !117, line: 877, type: !2795, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!22, !31, !28, !25, !1845}
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803, !2804, !2807, !2808, !2810, !2811, !2812}
!2798 = !DILocalVariable(name: "n", arg: 1, scope: !2794, file: !117, line: 877, type: !31)
!2799 = !DILocalVariable(name: "arg", arg: 2, scope: !2794, file: !117, line: 877, type: !28)
!2800 = !DILocalVariable(name: "argsize", arg: 3, scope: !2794, file: !117, line: 877, type: !25)
!2801 = !DILocalVariable(name: "options", arg: 4, scope: !2794, file: !117, line: 878, type: !1845)
!2802 = !DILocalVariable(name: "e", scope: !2794, file: !117, line: 880, type: !31)
!2803 = !DILocalVariable(name: "sv", scope: !2794, file: !117, line: 882, type: !167)
!2804 = !DILocalVariable(name: "preallocated", scope: !2805, file: !117, line: 889, type: !36)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !117, line: 888, column: 5)
!2806 = distinct !DILexicalBlock(scope: !2794, file: !117, line: 887, column: 7)
!2807 = !DILocalVariable(name: "nmax", scope: !2805, file: !117, line: 890, type: !31)
!2808 = !DILocalVariable(name: "size", scope: !2809, file: !117, line: 903, type: !25)
!2809 = distinct !DILexicalBlock(scope: !2794, file: !117, line: 902, column: 3)
!2810 = !DILocalVariable(name: "val", scope: !2809, file: !117, line: 904, type: !22)
!2811 = !DILocalVariable(name: "flags", scope: !2809, file: !117, line: 906, type: !31)
!2812 = !DILocalVariable(name: "qsize", scope: !2809, file: !117, line: 907, type: !25)
!2813 = !DILocation(line: 0, scope: !2794)
!2814 = !DILocation(line: 880, column: 11, scope: !2794)
!2815 = !DILocation(line: 882, column: 24, scope: !2794)
!2816 = !DILocation(line: 884, column: 9, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2794, file: !117, line: 884, column: 7)
!2818 = !DILocation(line: 884, column: 7, scope: !2794)
!2819 = !DILocation(line: 885, column: 5, scope: !2817)
!2820 = !DILocation(line: 887, column: 7, scope: !2806)
!2821 = !DILocation(line: 887, column: 14, scope: !2806)
!2822 = !DILocation(line: 887, column: 7, scope: !2794)
!2823 = !DILocation(line: 889, column: 31, scope: !2805)
!2824 = !DILocation(line: 0, scope: !2805)
!2825 = !DILocation(line: 892, column: 16, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2805, file: !117, line: 892, column: 11)
!2827 = !DILocation(line: 892, column: 11, scope: !2805)
!2828 = !DILocation(line: 893, column: 9, scope: !2826)
!2829 = !DILocation(line: 895, column: 32, scope: !2805)
!2830 = !DILocation(line: 895, column: 61, scope: !2805)
!2831 = !DILocation(line: 895, column: 66, scope: !2805)
!2832 = !DILocation(line: 895, column: 22, scope: !2805)
!2833 = !DILocation(line: 895, column: 15, scope: !2805)
!2834 = !DILocation(line: 896, column: 11, scope: !2805)
!2835 = !DILocation(line: 897, column: 15, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2805, file: !117, line: 896, column: 11)
!2837 = !{i64 0, i64 8, !1106, i64 8, i64 8, !671}
!2838 = !DILocation(line: 897, column: 9, scope: !2836)
!2839 = !DILocation(line: 898, column: 20, scope: !2805)
!2840 = !DILocation(line: 898, column: 18, scope: !2805)
!2841 = !DILocation(line: 898, column: 15, scope: !2805)
!2842 = !DILocation(line: 898, column: 38, scope: !2805)
!2843 = !DILocation(line: 898, column: 31, scope: !2805)
!2844 = !DILocation(line: 898, column: 48, scope: !2805)
!2845 = !DILocation(line: 0, scope: !2239, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 898, column: 7, scope: !2805)
!2847 = !DILocation(line: 59, column: 10, scope: !2239, inlinedAt: !2846)
!2848 = !DILocation(line: 899, column: 14, scope: !2805)
!2849 = !DILocation(line: 900, column: 5, scope: !2805)
!2850 = !DILocation(line: 903, column: 19, scope: !2809)
!2851 = !DILocation(line: 903, column: 25, scope: !2809)
!2852 = !DILocation(line: 0, scope: !2809)
!2853 = !DILocation(line: 904, column: 23, scope: !2809)
!2854 = !DILocation(line: 906, column: 26, scope: !2809)
!2855 = !DILocation(line: 906, column: 32, scope: !2809)
!2856 = !DILocation(line: 908, column: 55, scope: !2809)
!2857 = !DILocation(line: 909, column: 46, scope: !2809)
!2858 = !DILocation(line: 910, column: 55, scope: !2809)
!2859 = !DILocation(line: 911, column: 55, scope: !2809)
!2860 = !DILocation(line: 907, column: 20, scope: !2809)
!2861 = !DILocation(line: 913, column: 14, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2809, file: !117, line: 913, column: 9)
!2863 = !DILocation(line: 913, column: 9, scope: !2809)
!2864 = !DILocation(line: 915, column: 35, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !117, line: 914, column: 7)
!2866 = !DILocation(line: 915, column: 20, scope: !2865)
!2867 = !DILocation(line: 916, column: 17, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !117, line: 916, column: 13)
!2869 = !DILocation(line: 916, column: 13, scope: !2865)
!2870 = !DILocation(line: 917, column: 11, scope: !2868)
!2871 = !DILocation(line: 0, scope: !2711, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 918, column: 27, scope: !2865)
!2873 = !DILocation(line: 218, column: 10, scope: !2711, inlinedAt: !2872)
!2874 = !DILocation(line: 918, column: 19, scope: !2865)
!2875 = !DILocation(line: 919, column: 69, scope: !2865)
!2876 = !DILocation(line: 921, column: 44, scope: !2865)
!2877 = !DILocation(line: 922, column: 44, scope: !2865)
!2878 = !DILocation(line: 919, column: 9, scope: !2865)
!2879 = !DILocation(line: 923, column: 7, scope: !2865)
!2880 = !DILocation(line: 925, column: 11, scope: !2809)
!2881 = !DILocation(line: 926, column: 5, scope: !2809)
!2882 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !117, file: !117, line: 937, type: !2883, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!22, !31, !28, !25}
!2885 = !{!2886, !2887, !2888}
!2886 = !DILocalVariable(name: "n", arg: 1, scope: !2882, file: !117, line: 937, type: !31)
!2887 = !DILocalVariable(name: "arg", arg: 2, scope: !2882, file: !117, line: 937, type: !28)
!2888 = !DILocalVariable(name: "argsize", arg: 3, scope: !2882, file: !117, line: 937, type: !25)
!2889 = !DILocation(line: 0, scope: !2882)
!2890 = !DILocation(line: 939, column: 10, scope: !2882)
!2891 = !DILocation(line: 939, column: 3, scope: !2882)
!2892 = distinct !DISubprogram(name: "quotearg", scope: !117, file: !117, line: 943, type: !1343, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2893)
!2893 = !{!2894}
!2894 = !DILocalVariable(name: "arg", arg: 1, scope: !2892, file: !117, line: 943, type: !28)
!2895 = !DILocation(line: 0, scope: !2892)
!2896 = !DILocation(line: 0, scope: !2787, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 945, column: 10, scope: !2892)
!2898 = !DILocation(line: 933, column: 10, scope: !2787, inlinedAt: !2897)
!2899 = !DILocation(line: 945, column: 3, scope: !2892)
!2900 = distinct !DISubprogram(name: "quotearg_mem", scope: !117, file: !117, line: 949, type: !2901, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!22, !28, !25}
!2903 = !{!2904, !2905}
!2904 = !DILocalVariable(name: "arg", arg: 1, scope: !2900, file: !117, line: 949, type: !28)
!2905 = !DILocalVariable(name: "argsize", arg: 2, scope: !2900, file: !117, line: 949, type: !25)
!2906 = !DILocation(line: 0, scope: !2900)
!2907 = !DILocation(line: 0, scope: !2882, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 951, column: 10, scope: !2900)
!2909 = !DILocation(line: 939, column: 10, scope: !2882, inlinedAt: !2908)
!2910 = !DILocation(line: 951, column: 3, scope: !2900)
!2911 = distinct !DISubprogram(name: "quotearg_n_style", scope: !117, file: !117, line: 955, type: !2912, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!22, !31, !119, !28}
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DILocalVariable(name: "n", arg: 1, scope: !2911, file: !117, line: 955, type: !31)
!2916 = !DILocalVariable(name: "s", arg: 2, scope: !2911, file: !117, line: 955, type: !119)
!2917 = !DILocalVariable(name: "arg", arg: 3, scope: !2911, file: !117, line: 955, type: !28)
!2918 = !DILocalVariable(name: "o", scope: !2911, file: !117, line: 957, type: !1846)
!2919 = !DILocation(line: 0, scope: !2911)
!2920 = !DILocation(line: 957, column: 3, scope: !2911)
!2921 = !DILocation(line: 957, column: 32, scope: !2911)
!2922 = !{!2923}
!2923 = distinct !{!2923, !2924, !"quoting_options_from_style: argument 0"}
!2924 = distinct !{!2924, !"quoting_options_from_style"}
!2925 = !DILocation(line: 957, column: 36, scope: !2911)
!2926 = !DILocalVariable(name: "style", arg: 1, scope: !2927, file: !117, line: 193, type: !119)
!2927 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !117, file: !117, line: 193, type: !2928, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!148, !119}
!2930 = !{!2926, !2931}
!2931 = !DILocalVariable(name: "o", scope: !2927, file: !117, line: 195, type: !148)
!2932 = !DILocation(line: 0, scope: !2927, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 957, column: 36, scope: !2911)
!2934 = !DILocation(line: 195, column: 26, scope: !2927, inlinedAt: !2933)
!2935 = !DILocation(line: 196, column: 13, scope: !2936, inlinedAt: !2933)
!2936 = distinct !DILexicalBlock(scope: !2927, file: !117, line: 196, column: 7)
!2937 = !DILocation(line: 196, column: 7, scope: !2927, inlinedAt: !2933)
!2938 = !DILocation(line: 197, column: 5, scope: !2936, inlinedAt: !2933)
!2939 = !DILocation(line: 198, column: 5, scope: !2927, inlinedAt: !2933)
!2940 = !DILocation(line: 198, column: 11, scope: !2927, inlinedAt: !2933)
!2941 = !DILocation(line: 958, column: 10, scope: !2911)
!2942 = !DILocation(line: 959, column: 1, scope: !2911)
!2943 = !DILocation(line: 958, column: 3, scope: !2911)
!2944 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !117, file: !117, line: 962, type: !2945, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!22, !31, !119, !28, !25}
!2947 = !{!2948, !2949, !2950, !2951, !2952}
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2944, file: !117, line: 962, type: !31)
!2949 = !DILocalVariable(name: "s", arg: 2, scope: !2944, file: !117, line: 962, type: !119)
!2950 = !DILocalVariable(name: "arg", arg: 3, scope: !2944, file: !117, line: 963, type: !28)
!2951 = !DILocalVariable(name: "argsize", arg: 4, scope: !2944, file: !117, line: 963, type: !25)
!2952 = !DILocalVariable(name: "o", scope: !2944, file: !117, line: 965, type: !1846)
!2953 = !DILocation(line: 0, scope: !2944)
!2954 = !DILocation(line: 965, column: 3, scope: !2944)
!2955 = !DILocation(line: 965, column: 32, scope: !2944)
!2956 = !{!2957}
!2957 = distinct !{!2957, !2958, !"quoting_options_from_style: argument 0"}
!2958 = distinct !{!2958, !"quoting_options_from_style"}
!2959 = !DILocation(line: 965, column: 36, scope: !2944)
!2960 = !DILocation(line: 0, scope: !2927, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 965, column: 36, scope: !2944)
!2962 = !DILocation(line: 195, column: 26, scope: !2927, inlinedAt: !2961)
!2963 = !DILocation(line: 196, column: 13, scope: !2936, inlinedAt: !2961)
!2964 = !DILocation(line: 196, column: 7, scope: !2927, inlinedAt: !2961)
!2965 = !DILocation(line: 197, column: 5, scope: !2936, inlinedAt: !2961)
!2966 = !DILocation(line: 198, column: 5, scope: !2927, inlinedAt: !2961)
!2967 = !DILocation(line: 198, column: 11, scope: !2927, inlinedAt: !2961)
!2968 = !DILocation(line: 966, column: 10, scope: !2944)
!2969 = !DILocation(line: 967, column: 1, scope: !2944)
!2970 = !DILocation(line: 966, column: 3, scope: !2944)
!2971 = distinct !DISubprogram(name: "quotearg_style", scope: !117, file: !117, line: 970, type: !2972, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!22, !119, !28}
!2974 = !{!2975, !2976}
!2975 = !DILocalVariable(name: "s", arg: 1, scope: !2971, file: !117, line: 970, type: !119)
!2976 = !DILocalVariable(name: "arg", arg: 2, scope: !2971, file: !117, line: 970, type: !28)
!2977 = !DILocation(line: 0, scope: !2971)
!2978 = !DILocation(line: 0, scope: !2911, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 972, column: 10, scope: !2971)
!2980 = !DILocation(line: 957, column: 3, scope: !2911, inlinedAt: !2979)
!2981 = !DILocation(line: 957, column: 32, scope: !2911, inlinedAt: !2979)
!2982 = !{!2983}
!2983 = distinct !{!2983, !2984, !"quoting_options_from_style: argument 0"}
!2984 = distinct !{!2984, !"quoting_options_from_style"}
!2985 = !DILocation(line: 957, column: 36, scope: !2911, inlinedAt: !2979)
!2986 = !DILocation(line: 0, scope: !2927, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 957, column: 36, scope: !2911, inlinedAt: !2979)
!2988 = !DILocation(line: 195, column: 26, scope: !2927, inlinedAt: !2987)
!2989 = !DILocation(line: 196, column: 13, scope: !2936, inlinedAt: !2987)
!2990 = !DILocation(line: 196, column: 7, scope: !2927, inlinedAt: !2987)
!2991 = !DILocation(line: 197, column: 5, scope: !2936, inlinedAt: !2987)
!2992 = !DILocation(line: 198, column: 5, scope: !2927, inlinedAt: !2987)
!2993 = !DILocation(line: 198, column: 11, scope: !2927, inlinedAt: !2987)
!2994 = !DILocation(line: 958, column: 10, scope: !2911, inlinedAt: !2979)
!2995 = !DILocation(line: 959, column: 1, scope: !2911, inlinedAt: !2979)
!2996 = !DILocation(line: 972, column: 3, scope: !2971)
!2997 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !117, file: !117, line: 976, type: !2998, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!22, !119, !28, !25}
!3000 = !{!3001, !3002, !3003}
!3001 = !DILocalVariable(name: "s", arg: 1, scope: !2997, file: !117, line: 976, type: !119)
!3002 = !DILocalVariable(name: "arg", arg: 2, scope: !2997, file: !117, line: 976, type: !28)
!3003 = !DILocalVariable(name: "argsize", arg: 3, scope: !2997, file: !117, line: 976, type: !25)
!3004 = !DILocation(line: 0, scope: !2997)
!3005 = !DILocation(line: 0, scope: !2944, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 978, column: 10, scope: !2997)
!3007 = !DILocation(line: 965, column: 3, scope: !2944, inlinedAt: !3006)
!3008 = !DILocation(line: 965, column: 32, scope: !2944, inlinedAt: !3006)
!3009 = !{!3010}
!3010 = distinct !{!3010, !3011, !"quoting_options_from_style: argument 0"}
!3011 = distinct !{!3011, !"quoting_options_from_style"}
!3012 = !DILocation(line: 965, column: 36, scope: !2944, inlinedAt: !3006)
!3013 = !DILocation(line: 0, scope: !2927, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 965, column: 36, scope: !2944, inlinedAt: !3006)
!3015 = !DILocation(line: 195, column: 26, scope: !2927, inlinedAt: !3014)
!3016 = !DILocation(line: 196, column: 13, scope: !2936, inlinedAt: !3014)
!3017 = !DILocation(line: 196, column: 7, scope: !2927, inlinedAt: !3014)
!3018 = !DILocation(line: 197, column: 5, scope: !2936, inlinedAt: !3014)
!3019 = !DILocation(line: 198, column: 5, scope: !2927, inlinedAt: !3014)
!3020 = !DILocation(line: 198, column: 11, scope: !2927, inlinedAt: !3014)
!3021 = !DILocation(line: 966, column: 10, scope: !2944, inlinedAt: !3006)
!3022 = !DILocation(line: 967, column: 1, scope: !2944, inlinedAt: !3006)
!3023 = !DILocation(line: 978, column: 3, scope: !2997)
!3024 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !117, file: !117, line: 982, type: !3025, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!22, !28, !25, !23}
!3027 = !{!3028, !3029, !3030, !3031}
!3028 = !DILocalVariable(name: "arg", arg: 1, scope: !3024, file: !117, line: 982, type: !28)
!3029 = !DILocalVariable(name: "argsize", arg: 2, scope: !3024, file: !117, line: 982, type: !25)
!3030 = !DILocalVariable(name: "ch", arg: 3, scope: !3024, file: !117, line: 982, type: !23)
!3031 = !DILocalVariable(name: "options", scope: !3024, file: !117, line: 984, type: !148)
!3032 = !DILocation(line: 0, scope: !3024)
!3033 = !DILocation(line: 984, column: 3, scope: !3024)
!3034 = !DILocation(line: 984, column: 26, scope: !3024)
!3035 = !DILocation(line: 985, column: 13, scope: !3024)
!3036 = !{i64 0, i64 4, !857, i64 4, i64 4, !850, i64 8, i64 32, !857, i64 40, i64 8, !671, i64 48, i64 8, !671}
!3037 = !DILocation(line: 0, scope: !1866, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 986, column: 3, scope: !3024)
!3039 = !DILocation(line: 156, column: 62, scope: !1866, inlinedAt: !3038)
!3040 = !DILocation(line: 156, column: 57, scope: !1866, inlinedAt: !3038)
!3041 = !DILocation(line: 157, column: 15, scope: !1866, inlinedAt: !3038)
!3042 = !DILocation(line: 158, column: 12, scope: !1866, inlinedAt: !3038)
!3043 = !DILocation(line: 158, column: 15, scope: !1866, inlinedAt: !3038)
!3044 = !DILocation(line: 158, column: 25, scope: !1866, inlinedAt: !3038)
!3045 = !DILocation(line: 159, column: 18, scope: !1866, inlinedAt: !3038)
!3046 = !DILocation(line: 159, column: 23, scope: !1866, inlinedAt: !3038)
!3047 = !DILocation(line: 159, column: 6, scope: !1866, inlinedAt: !3038)
!3048 = !DILocation(line: 987, column: 10, scope: !3024)
!3049 = !DILocation(line: 988, column: 1, scope: !3024)
!3050 = !DILocation(line: 987, column: 3, scope: !3024)
!3051 = distinct !DISubprogram(name: "quotearg_char", scope: !117, file: !117, line: 991, type: !3052, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!22, !28, !23}
!3054 = !{!3055, !3056}
!3055 = !DILocalVariable(name: "arg", arg: 1, scope: !3051, file: !117, line: 991, type: !28)
!3056 = !DILocalVariable(name: "ch", arg: 2, scope: !3051, file: !117, line: 991, type: !23)
!3057 = !DILocation(line: 0, scope: !3051)
!3058 = !DILocation(line: 0, scope: !3024, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 993, column: 10, scope: !3051)
!3060 = !DILocation(line: 984, column: 3, scope: !3024, inlinedAt: !3059)
!3061 = !DILocation(line: 984, column: 26, scope: !3024, inlinedAt: !3059)
!3062 = !DILocation(line: 985, column: 13, scope: !3024, inlinedAt: !3059)
!3063 = !DILocation(line: 0, scope: !1866, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 986, column: 3, scope: !3024, inlinedAt: !3059)
!3065 = !DILocation(line: 156, column: 62, scope: !1866, inlinedAt: !3064)
!3066 = !DILocation(line: 156, column: 57, scope: !1866, inlinedAt: !3064)
!3067 = !DILocation(line: 157, column: 15, scope: !1866, inlinedAt: !3064)
!3068 = !DILocation(line: 158, column: 12, scope: !1866, inlinedAt: !3064)
!3069 = !DILocation(line: 158, column: 15, scope: !1866, inlinedAt: !3064)
!3070 = !DILocation(line: 158, column: 25, scope: !1866, inlinedAt: !3064)
!3071 = !DILocation(line: 159, column: 18, scope: !1866, inlinedAt: !3064)
!3072 = !DILocation(line: 159, column: 23, scope: !1866, inlinedAt: !3064)
!3073 = !DILocation(line: 159, column: 6, scope: !1866, inlinedAt: !3064)
!3074 = !DILocation(line: 987, column: 10, scope: !3024, inlinedAt: !3059)
!3075 = !DILocation(line: 988, column: 1, scope: !3024, inlinedAt: !3059)
!3076 = !DILocation(line: 993, column: 3, scope: !3051)
!3077 = distinct !DISubprogram(name: "quotearg_colon", scope: !117, file: !117, line: 997, type: !1343, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3078)
!3078 = !{!3079}
!3079 = !DILocalVariable(name: "arg", arg: 1, scope: !3077, file: !117, line: 997, type: !28)
!3080 = !DILocation(line: 0, scope: !3077)
!3081 = !DILocation(line: 0, scope: !3051, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 999, column: 10, scope: !3077)
!3083 = !DILocation(line: 0, scope: !3024, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 993, column: 10, scope: !3051, inlinedAt: !3082)
!3085 = !DILocation(line: 984, column: 3, scope: !3024, inlinedAt: !3084)
!3086 = !DILocation(line: 984, column: 26, scope: !3024, inlinedAt: !3084)
!3087 = !DILocation(line: 985, column: 13, scope: !3024, inlinedAt: !3084)
!3088 = !DILocation(line: 0, scope: !1866, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 986, column: 3, scope: !3024, inlinedAt: !3084)
!3090 = !DILocation(line: 156, column: 57, scope: !1866, inlinedAt: !3089)
!3091 = !DILocation(line: 158, column: 12, scope: !1866, inlinedAt: !3089)
!3092 = !DILocation(line: 159, column: 6, scope: !1866, inlinedAt: !3089)
!3093 = !DILocation(line: 987, column: 10, scope: !3024, inlinedAt: !3084)
!3094 = !DILocation(line: 988, column: 1, scope: !3024, inlinedAt: !3084)
!3095 = !DILocation(line: 999, column: 3, scope: !3077)
!3096 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !117, file: !117, line: 1003, type: !2901, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3097)
!3097 = !{!3098, !3099}
!3098 = !DILocalVariable(name: "arg", arg: 1, scope: !3096, file: !117, line: 1003, type: !28)
!3099 = !DILocalVariable(name: "argsize", arg: 2, scope: !3096, file: !117, line: 1003, type: !25)
!3100 = !DILocation(line: 0, scope: !3096)
!3101 = !DILocation(line: 0, scope: !3024, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 1005, column: 10, scope: !3096)
!3103 = !DILocation(line: 984, column: 3, scope: !3024, inlinedAt: !3102)
!3104 = !DILocation(line: 984, column: 26, scope: !3024, inlinedAt: !3102)
!3105 = !DILocation(line: 985, column: 13, scope: !3024, inlinedAt: !3102)
!3106 = !DILocation(line: 0, scope: !1866, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 986, column: 3, scope: !3024, inlinedAt: !3102)
!3108 = !DILocation(line: 156, column: 57, scope: !1866, inlinedAt: !3107)
!3109 = !DILocation(line: 158, column: 12, scope: !1866, inlinedAt: !3107)
!3110 = !DILocation(line: 159, column: 6, scope: !1866, inlinedAt: !3107)
!3111 = !DILocation(line: 987, column: 10, scope: !3024, inlinedAt: !3102)
!3112 = !DILocation(line: 988, column: 1, scope: !3024, inlinedAt: !3102)
!3113 = !DILocation(line: 1005, column: 3, scope: !3096)
!3114 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !117, file: !117, line: 1009, type: !2912, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3115)
!3115 = !{!3116, !3117, !3118, !3119}
!3116 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !117, line: 1009, type: !31)
!3117 = !DILocalVariable(name: "s", arg: 2, scope: !3114, file: !117, line: 1009, type: !119)
!3118 = !DILocalVariable(name: "arg", arg: 3, scope: !3114, file: !117, line: 1009, type: !28)
!3119 = !DILocalVariable(name: "options", scope: !3114, file: !117, line: 1011, type: !148)
!3120 = !DILocation(line: 195, column: 26, scope: !2927, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 1012, column: 13, scope: !3114)
!3122 = !DILocation(line: 0, scope: !3114)
!3123 = !DILocation(line: 1011, column: 3, scope: !3114)
!3124 = !DILocation(line: 1011, column: 26, scope: !3114)
!3125 = !DILocation(line: 1012, column: 13, scope: !3114)
!3126 = !{!3127}
!3127 = distinct !{!3127, !3128, !"quoting_options_from_style: argument 0"}
!3128 = distinct !{!3128, !"quoting_options_from_style"}
!3129 = !DILocation(line: 0, scope: !2927, inlinedAt: !3121)
!3130 = !DILocation(line: 196, column: 13, scope: !2936, inlinedAt: !3121)
!3131 = !DILocation(line: 196, column: 7, scope: !2927, inlinedAt: !3121)
!3132 = !DILocation(line: 197, column: 5, scope: !2936, inlinedAt: !3121)
!3133 = !{i64 0, i64 4, !850, i64 4, i64 32, !857, i64 36, i64 8, !671, i64 44, i64 8, !671}
!3134 = !DILocation(line: 0, scope: !1866, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 1013, column: 3, scope: !3114)
!3136 = !DILocation(line: 156, column: 57, scope: !1866, inlinedAt: !3135)
!3137 = !DILocation(line: 158, column: 12, scope: !1866, inlinedAt: !3135)
!3138 = !DILocation(line: 159, column: 6, scope: !1866, inlinedAt: !3135)
!3139 = !DILocation(line: 1014, column: 10, scope: !3114)
!3140 = !DILocation(line: 1015, column: 1, scope: !3114)
!3141 = !DILocation(line: 1014, column: 3, scope: !3114)
!3142 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !117, file: !117, line: 1018, type: !3143, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!22, !31, !28, !28, !28}
!3145 = !{!3146, !3147, !3148, !3149}
!3146 = !DILocalVariable(name: "n", arg: 1, scope: !3142, file: !117, line: 1018, type: !31)
!3147 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3142, file: !117, line: 1018, type: !28)
!3148 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3142, file: !117, line: 1019, type: !28)
!3149 = !DILocalVariable(name: "arg", arg: 4, scope: !3142, file: !117, line: 1019, type: !28)
!3150 = !DILocation(line: 0, scope: !3142)
!3151 = !DILocalVariable(name: "n", arg: 1, scope: !3152, file: !117, line: 1026, type: !31)
!3152 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !117, file: !117, line: 1026, type: !3153, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!22, !31, !28, !28, !28, !25}
!3155 = !{!3151, !3156, !3157, !3158, !3159, !3160}
!3156 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3152, file: !117, line: 1026, type: !28)
!3157 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3152, file: !117, line: 1027, type: !28)
!3158 = !DILocalVariable(name: "arg", arg: 4, scope: !3152, file: !117, line: 1028, type: !28)
!3159 = !DILocalVariable(name: "argsize", arg: 5, scope: !3152, file: !117, line: 1028, type: !25)
!3160 = !DILocalVariable(name: "o", scope: !3152, file: !117, line: 1030, type: !148)
!3161 = !DILocation(line: 0, scope: !3152, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 1021, column: 10, scope: !3142)
!3163 = !DILocation(line: 1030, column: 3, scope: !3152, inlinedAt: !3162)
!3164 = !DILocation(line: 1030, column: 26, scope: !3152, inlinedAt: !3162)
!3165 = !DILocation(line: 1030, column: 30, scope: !3152, inlinedAt: !3162)
!3166 = !DILocation(line: 0, scope: !1906, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 1031, column: 3, scope: !3152, inlinedAt: !3162)
!3168 = !DILocation(line: 184, column: 6, scope: !1906, inlinedAt: !3167)
!3169 = !DILocation(line: 184, column: 12, scope: !1906, inlinedAt: !3167)
!3170 = !DILocation(line: 185, column: 8, scope: !1920, inlinedAt: !3167)
!3171 = !DILocation(line: 185, column: 19, scope: !1920, inlinedAt: !3167)
!3172 = !DILocation(line: 186, column: 5, scope: !1920, inlinedAt: !3167)
!3173 = !DILocation(line: 187, column: 6, scope: !1906, inlinedAt: !3167)
!3174 = !DILocation(line: 187, column: 17, scope: !1906, inlinedAt: !3167)
!3175 = !DILocation(line: 188, column: 6, scope: !1906, inlinedAt: !3167)
!3176 = !DILocation(line: 188, column: 18, scope: !1906, inlinedAt: !3167)
!3177 = !DILocation(line: 1032, column: 10, scope: !3152, inlinedAt: !3162)
!3178 = !DILocation(line: 1033, column: 1, scope: !3152, inlinedAt: !3162)
!3179 = !DILocation(line: 1021, column: 3, scope: !3142)
!3180 = !DILocation(line: 0, scope: !3152)
!3181 = !DILocation(line: 1030, column: 3, scope: !3152)
!3182 = !DILocation(line: 1030, column: 26, scope: !3152)
!3183 = !DILocation(line: 1030, column: 30, scope: !3152)
!3184 = !DILocation(line: 0, scope: !1906, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 1031, column: 3, scope: !3152)
!3186 = !DILocation(line: 184, column: 6, scope: !1906, inlinedAt: !3185)
!3187 = !DILocation(line: 184, column: 12, scope: !1906, inlinedAt: !3185)
!3188 = !DILocation(line: 185, column: 8, scope: !1920, inlinedAt: !3185)
!3189 = !DILocation(line: 185, column: 19, scope: !1920, inlinedAt: !3185)
!3190 = !DILocation(line: 186, column: 5, scope: !1920, inlinedAt: !3185)
!3191 = !DILocation(line: 187, column: 6, scope: !1906, inlinedAt: !3185)
!3192 = !DILocation(line: 187, column: 17, scope: !1906, inlinedAt: !3185)
!3193 = !DILocation(line: 188, column: 6, scope: !1906, inlinedAt: !3185)
!3194 = !DILocation(line: 188, column: 18, scope: !1906, inlinedAt: !3185)
!3195 = !DILocation(line: 1032, column: 10, scope: !3152)
!3196 = !DILocation(line: 1033, column: 1, scope: !3152)
!3197 = !DILocation(line: 1032, column: 3, scope: !3152)
!3198 = distinct !DISubprogram(name: "quotearg_custom", scope: !117, file: !117, line: 1036, type: !3199, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!22, !28, !28, !28}
!3201 = !{!3202, !3203, !3204}
!3202 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3198, file: !117, line: 1036, type: !28)
!3203 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3198, file: !117, line: 1036, type: !28)
!3204 = !DILocalVariable(name: "arg", arg: 3, scope: !3198, file: !117, line: 1037, type: !28)
!3205 = !DILocation(line: 0, scope: !3198)
!3206 = !DILocation(line: 0, scope: !3142, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 1039, column: 10, scope: !3198)
!3208 = !DILocation(line: 0, scope: !3152, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 1021, column: 10, scope: !3142, inlinedAt: !3207)
!3210 = !DILocation(line: 1030, column: 3, scope: !3152, inlinedAt: !3209)
!3211 = !DILocation(line: 1030, column: 26, scope: !3152, inlinedAt: !3209)
!3212 = !DILocation(line: 1030, column: 30, scope: !3152, inlinedAt: !3209)
!3213 = !DILocation(line: 0, scope: !1906, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 1031, column: 3, scope: !3152, inlinedAt: !3209)
!3215 = !DILocation(line: 184, column: 6, scope: !1906, inlinedAt: !3214)
!3216 = !DILocation(line: 184, column: 12, scope: !1906, inlinedAt: !3214)
!3217 = !DILocation(line: 185, column: 8, scope: !1920, inlinedAt: !3214)
!3218 = !DILocation(line: 185, column: 19, scope: !1920, inlinedAt: !3214)
!3219 = !DILocation(line: 186, column: 5, scope: !1920, inlinedAt: !3214)
!3220 = !DILocation(line: 187, column: 6, scope: !1906, inlinedAt: !3214)
!3221 = !DILocation(line: 187, column: 17, scope: !1906, inlinedAt: !3214)
!3222 = !DILocation(line: 188, column: 6, scope: !1906, inlinedAt: !3214)
!3223 = !DILocation(line: 188, column: 18, scope: !1906, inlinedAt: !3214)
!3224 = !DILocation(line: 1032, column: 10, scope: !3152, inlinedAt: !3209)
!3225 = !DILocation(line: 1033, column: 1, scope: !3152, inlinedAt: !3209)
!3226 = !DILocation(line: 1039, column: 3, scope: !3198)
!3227 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !117, file: !117, line: 1043, type: !3228, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!22, !28, !28, !28, !25}
!3230 = !{!3231, !3232, !3233, !3234}
!3231 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3227, file: !117, line: 1043, type: !28)
!3232 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3227, file: !117, line: 1043, type: !28)
!3233 = !DILocalVariable(name: "arg", arg: 3, scope: !3227, file: !117, line: 1044, type: !28)
!3234 = !DILocalVariable(name: "argsize", arg: 4, scope: !3227, file: !117, line: 1044, type: !25)
!3235 = !DILocation(line: 0, scope: !3227)
!3236 = !DILocation(line: 0, scope: !3152, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 1046, column: 10, scope: !3227)
!3238 = !DILocation(line: 1030, column: 3, scope: !3152, inlinedAt: !3237)
!3239 = !DILocation(line: 1030, column: 26, scope: !3152, inlinedAt: !3237)
!3240 = !DILocation(line: 1030, column: 30, scope: !3152, inlinedAt: !3237)
!3241 = !DILocation(line: 0, scope: !1906, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 1031, column: 3, scope: !3152, inlinedAt: !3237)
!3243 = !DILocation(line: 184, column: 6, scope: !1906, inlinedAt: !3242)
!3244 = !DILocation(line: 184, column: 12, scope: !1906, inlinedAt: !3242)
!3245 = !DILocation(line: 185, column: 8, scope: !1920, inlinedAt: !3242)
!3246 = !DILocation(line: 185, column: 19, scope: !1920, inlinedAt: !3242)
!3247 = !DILocation(line: 186, column: 5, scope: !1920, inlinedAt: !3242)
!3248 = !DILocation(line: 187, column: 6, scope: !1906, inlinedAt: !3242)
!3249 = !DILocation(line: 187, column: 17, scope: !1906, inlinedAt: !3242)
!3250 = !DILocation(line: 188, column: 6, scope: !1906, inlinedAt: !3242)
!3251 = !DILocation(line: 188, column: 18, scope: !1906, inlinedAt: !3242)
!3252 = !DILocation(line: 1032, column: 10, scope: !3152, inlinedAt: !3237)
!3253 = !DILocation(line: 1033, column: 1, scope: !3152, inlinedAt: !3237)
!3254 = !DILocation(line: 1046, column: 3, scope: !3227)
!3255 = distinct !DISubprogram(name: "quote_n_mem", scope: !117, file: !117, line: 1061, type: !3256, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!28, !31, !28, !25}
!3258 = !{!3259, !3260, !3261}
!3259 = !DILocalVariable(name: "n", arg: 1, scope: !3255, file: !117, line: 1061, type: !31)
!3260 = !DILocalVariable(name: "arg", arg: 2, scope: !3255, file: !117, line: 1061, type: !28)
!3261 = !DILocalVariable(name: "argsize", arg: 3, scope: !3255, file: !117, line: 1061, type: !25)
!3262 = !DILocation(line: 0, scope: !3255)
!3263 = !DILocation(line: 1063, column: 10, scope: !3255)
!3264 = !DILocation(line: 1063, column: 3, scope: !3255)
!3265 = distinct !DISubprogram(name: "quote_mem", scope: !117, file: !117, line: 1067, type: !3266, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!28, !28, !25}
!3268 = !{!3269, !3270}
!3269 = !DILocalVariable(name: "arg", arg: 1, scope: !3265, file: !117, line: 1067, type: !28)
!3270 = !DILocalVariable(name: "argsize", arg: 2, scope: !3265, file: !117, line: 1067, type: !25)
!3271 = !DILocation(line: 0, scope: !3265)
!3272 = !DILocation(line: 0, scope: !3255, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 1069, column: 10, scope: !3265)
!3274 = !DILocation(line: 1063, column: 10, scope: !3255, inlinedAt: !3273)
!3275 = !DILocation(line: 1069, column: 3, scope: !3265)
!3276 = distinct !DISubprogram(name: "quote_n", scope: !117, file: !117, line: 1073, type: !3277, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!28, !31, !28}
!3279 = !{!3280, !3281}
!3280 = !DILocalVariable(name: "n", arg: 1, scope: !3276, file: !117, line: 1073, type: !31)
!3281 = !DILocalVariable(name: "arg", arg: 2, scope: !3276, file: !117, line: 1073, type: !28)
!3282 = !DILocation(line: 0, scope: !3276)
!3283 = !DILocation(line: 0, scope: !3255, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 1075, column: 10, scope: !3276)
!3285 = !DILocation(line: 1063, column: 10, scope: !3255, inlinedAt: !3284)
!3286 = !DILocation(line: 1075, column: 3, scope: !3276)
!3287 = distinct !DISubprogram(name: "quote", scope: !117, file: !117, line: 1079, type: !1412, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !3288)
!3288 = !{!3289}
!3289 = !DILocalVariable(name: "arg", arg: 1, scope: !3287, file: !117, line: 1079, type: !28)
!3290 = !DILocation(line: 0, scope: !3287)
!3291 = !DILocation(line: 0, scope: !3276, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1081, column: 10, scope: !3287)
!3293 = !DILocation(line: 0, scope: !3255, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 1075, column: 10, scope: !3276, inlinedAt: !3292)
!3295 = !DILocation(line: 1063, column: 10, scope: !3255, inlinedAt: !3294)
!3296 = !DILocation(line: 1081, column: 3, scope: !3287)
!3297 = distinct !DISubprogram(name: "version_etc_arn", scope: !221, file: !221, line: 61, type: !3298, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !3335)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !3300, !28, !28, !28, !3334, !25}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1401, line: 7, baseType: !3302)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !751, line: 49, size: 1728, elements: !3303)
!3303 = !{!3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3302, file: !751, line: 51, baseType: !31, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3302, file: !751, line: 54, baseType: !22, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3302, file: !751, line: 55, baseType: !22, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3302, file: !751, line: 56, baseType: !22, size: 64, offset: 192)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3302, file: !751, line: 57, baseType: !22, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3302, file: !751, line: 58, baseType: !22, size: 64, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3302, file: !751, line: 59, baseType: !22, size: 64, offset: 384)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3302, file: !751, line: 60, baseType: !22, size: 64, offset: 448)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3302, file: !751, line: 61, baseType: !22, size: 64, offset: 512)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3302, file: !751, line: 64, baseType: !22, size: 64, offset: 576)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3302, file: !751, line: 65, baseType: !22, size: 64, offset: 640)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3302, file: !751, line: 66, baseType: !22, size: 64, offset: 704)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3302, file: !751, line: 68, baseType: !766, size: 64, offset: 768)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3302, file: !751, line: 70, baseType: !3318, size: 64, offset: 832)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3302, file: !751, line: 72, baseType: !31, size: 32, offset: 896)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3302, file: !751, line: 73, baseType: !31, size: 32, offset: 928)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3302, file: !751, line: 74, baseType: !772, size: 64, offset: 960)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3302, file: !751, line: 77, baseType: !32, size: 16, offset: 1024)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3302, file: !751, line: 78, baseType: !777, size: 8, offset: 1040)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3302, file: !751, line: 79, baseType: !779, size: 8, offset: 1048)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3302, file: !751, line: 81, baseType: !783, size: 64, offset: 1088)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3302, file: !751, line: 89, baseType: !786, size: 64, offset: 1152)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3302, file: !751, line: 91, baseType: !788, size: 64, offset: 1216)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3302, file: !751, line: 92, baseType: !791, size: 64, offset: 1280)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3302, file: !751, line: 93, baseType: !3318, size: 64, offset: 1344)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3302, file: !751, line: 94, baseType: !24, size: 64, offset: 1408)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3302, file: !751, line: 95, baseType: !25, size: 64, offset: 1472)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3302, file: !751, line: 96, baseType: !31, size: 32, offset: 1536)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3302, file: !751, line: 98, baseType: !798, size: 160, offset: 1568)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341}
!3336 = !DILocalVariable(name: "stream", arg: 1, scope: !3297, file: !221, line: 61, type: !3300)
!3337 = !DILocalVariable(name: "command_name", arg: 2, scope: !3297, file: !221, line: 62, type: !28)
!3338 = !DILocalVariable(name: "package", arg: 3, scope: !3297, file: !221, line: 62, type: !28)
!3339 = !DILocalVariable(name: "version", arg: 4, scope: !3297, file: !221, line: 63, type: !28)
!3340 = !DILocalVariable(name: "authors", arg: 5, scope: !3297, file: !221, line: 64, type: !3334)
!3341 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3297, file: !221, line: 64, type: !25)
!3342 = !DILocation(line: 0, scope: !3297)
!3343 = !DILocation(line: 66, column: 7, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3297, file: !221, line: 66, column: 7)
!3345 = !DILocation(line: 66, column: 7, scope: !3297)
!3346 = !DILocation(line: 67, column: 5, scope: !3344)
!3347 = !DILocation(line: 69, column: 5, scope: !3344)
!3348 = !DILocation(line: 83, column: 3, scope: !3297)
!3349 = !DILocation(line: 85, column: 3, scope: !3297)
!3350 = !DILocation(line: 88, column: 3, scope: !3297)
!3351 = !DILocation(line: 95, column: 3, scope: !3297)
!3352 = !DILocation(line: 97, column: 3, scope: !3297)
!3353 = !DILocation(line: 105, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3297, file: !221, line: 98, column: 5)
!3355 = !DILocation(line: 106, column: 7, scope: !3354)
!3356 = !DILocation(line: 109, column: 7, scope: !3354)
!3357 = !DILocation(line: 110, column: 7, scope: !3354)
!3358 = !DILocation(line: 113, column: 7, scope: !3354)
!3359 = !DILocation(line: 115, column: 7, scope: !3354)
!3360 = !DILocation(line: 120, column: 7, scope: !3354)
!3361 = !DILocation(line: 122, column: 7, scope: !3354)
!3362 = !DILocation(line: 127, column: 7, scope: !3354)
!3363 = !DILocation(line: 129, column: 7, scope: !3354)
!3364 = !DILocation(line: 134, column: 7, scope: !3354)
!3365 = !DILocation(line: 137, column: 7, scope: !3354)
!3366 = !DILocation(line: 142, column: 7, scope: !3354)
!3367 = !DILocation(line: 145, column: 7, scope: !3354)
!3368 = !DILocation(line: 150, column: 7, scope: !3354)
!3369 = !DILocation(line: 154, column: 7, scope: !3354)
!3370 = !DILocation(line: 159, column: 7, scope: !3354)
!3371 = !DILocation(line: 163, column: 7, scope: !3354)
!3372 = !DILocation(line: 170, column: 7, scope: !3354)
!3373 = !DILocation(line: 174, column: 7, scope: !3354)
!3374 = !DILocation(line: 176, column: 1, scope: !3297)
!3375 = distinct !DISubprogram(name: "version_etc_ar", scope: !221, file: !221, line: 183, type: !3376, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{null, !3300, !28, !28, !28, !3334}
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384}
!3379 = !DILocalVariable(name: "stream", arg: 1, scope: !3375, file: !221, line: 183, type: !3300)
!3380 = !DILocalVariable(name: "command_name", arg: 2, scope: !3375, file: !221, line: 184, type: !28)
!3381 = !DILocalVariable(name: "package", arg: 3, scope: !3375, file: !221, line: 184, type: !28)
!3382 = !DILocalVariable(name: "version", arg: 4, scope: !3375, file: !221, line: 185, type: !28)
!3383 = !DILocalVariable(name: "authors", arg: 5, scope: !3375, file: !221, line: 185, type: !3334)
!3384 = !DILocalVariable(name: "n_authors", scope: !3375, file: !221, line: 187, type: !25)
!3385 = !DILocation(line: 0, scope: !3375)
!3386 = !DILocation(line: 189, column: 8, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3375, file: !221, line: 189, column: 3)
!3388 = !DILocation(line: 0, scope: !3387)
!3389 = !DILocation(line: 189, column: 23, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3387, file: !221, line: 189, column: 3)
!3391 = !DILocation(line: 189, column: 3, scope: !3387)
!3392 = !DILocation(line: 189, column: 52, scope: !3390)
!3393 = distinct !{!3393, !3391, !3394, !721}
!3394 = !DILocation(line: 190, column: 5, scope: !3387)
!3395 = !DILocation(line: 191, column: 3, scope: !3375)
!3396 = !DILocation(line: 192, column: 1, scope: !3375)
!3397 = distinct !DISubprogram(name: "version_etc_va", scope: !221, file: !221, line: 199, type: !3398, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !3407)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !3300, !28, !28, !28, !3400}
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3406}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3401, file: !221, line: 192, baseType: !7, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3401, file: !221, line: 192, baseType: !7, size: 32, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3401, file: !221, line: 192, baseType: !24, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3401, file: !221, line: 192, baseType: !24, size: 64, offset: 128)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414}
!3408 = !DILocalVariable(name: "stream", arg: 1, scope: !3397, file: !221, line: 199, type: !3300)
!3409 = !DILocalVariable(name: "command_name", arg: 2, scope: !3397, file: !221, line: 200, type: !28)
!3410 = !DILocalVariable(name: "package", arg: 3, scope: !3397, file: !221, line: 200, type: !28)
!3411 = !DILocalVariable(name: "version", arg: 4, scope: !3397, file: !221, line: 201, type: !28)
!3412 = !DILocalVariable(name: "authors", arg: 5, scope: !3397, file: !221, line: 201, type: !3400)
!3413 = !DILocalVariable(name: "n_authors", scope: !3397, file: !221, line: 203, type: !25)
!3414 = !DILocalVariable(name: "authtab", scope: !3397, file: !221, line: 204, type: !3415)
!3415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !144)
!3416 = !DILocation(line: 0, scope: !3397)
!3417 = !DILocation(line: 204, column: 3, scope: !3397)
!3418 = !DILocation(line: 204, column: 15, scope: !3397)
!3419 = !DILocation(line: 208, column: 35, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !221, line: 206, column: 3)
!3421 = distinct !DILexicalBlock(scope: !3397, file: !221, line: 206, column: 3)
!3422 = !DILocation(line: 208, column: 14, scope: !3420)
!3423 = !DILocation(line: 208, column: 33, scope: !3420)
!3424 = !DILocation(line: 208, column: 67, scope: !3420)
!3425 = !DILocation(line: 206, column: 3, scope: !3421)
!3426 = !DILocation(line: 0, scope: !3421)
!3427 = !DILocation(line: 211, column: 3, scope: !3397)
!3428 = !DILocation(line: 213, column: 1, scope: !3397)
!3429 = distinct !DISubprogram(name: "version_etc", scope: !221, file: !221, line: 230, type: !3430, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{null, !3300, !28, !28, !28, null}
!3432 = !{!3433, !3434, !3435, !3436, !3437}
!3433 = !DILocalVariable(name: "stream", arg: 1, scope: !3429, file: !221, line: 230, type: !3300)
!3434 = !DILocalVariable(name: "command_name", arg: 2, scope: !3429, file: !221, line: 231, type: !28)
!3435 = !DILocalVariable(name: "package", arg: 3, scope: !3429, file: !221, line: 231, type: !28)
!3436 = !DILocalVariable(name: "version", arg: 4, scope: !3429, file: !221, line: 232, type: !28)
!3437 = !DILocalVariable(name: "authors", scope: !3429, file: !221, line: 234, type: !3438)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !746, line: 52, baseType: !3439)
!3439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3440, line: 32, baseType: !3441)
!3440 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !221, baseType: !3442)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3401, size: 192, elements: !780)
!3443 = !DILocation(line: 0, scope: !3429)
!3444 = !DILocation(line: 234, column: 3, scope: !3429)
!3445 = !DILocation(line: 234, column: 11, scope: !3429)
!3446 = !DILocation(line: 236, column: 3, scope: !3429)
!3447 = !DILocation(line: 237, column: 3, scope: !3429)
!3448 = !DILocation(line: 238, column: 3, scope: !3429)
!3449 = !DILocation(line: 239, column: 1, scope: !3429)
!3450 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !221, file: !221, line: 242, type: !681, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !93)
!3451 = !DILocation(line: 244, column: 3, scope: !3450)
!3452 = !DILocation(line: 249, column: 3, scope: !3450)
!3453 = !DILocation(line: 255, column: 3, scope: !3450)
!3454 = !DILocation(line: 260, column: 3, scope: !3450)
!3455 = !DILocation(line: 262, column: 1, scope: !3450)
!3456 = distinct !DISubprogram(name: "xnmalloc", scope: !231, file: !231, line: 99, type: !3457, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!24, !25, !25}
!3459 = !{!3460, !3461}
!3460 = !DILocalVariable(name: "n", arg: 1, scope: !3456, file: !231, line: 99, type: !25)
!3461 = !DILocalVariable(name: "s", arg: 2, scope: !3456, file: !231, line: 99, type: !25)
!3462 = !DILocation(line: 0, scope: !3456)
!3463 = !DILocation(line: 101, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3456, file: !231, line: 101, column: 7)
!3465 = !DILocation(line: 101, column: 7, scope: !3456)
!3466 = !DILocation(line: 102, column: 5, scope: !3464)
!3467 = !DILocation(line: 103, column: 21, scope: !3456)
!3468 = !DILocalVariable(name: "n", arg: 1, scope: !3469, file: !228, line: 39, type: !25)
!3469 = distinct !DISubprogram(name: "xmalloc", scope: !228, file: !228, line: 39, type: !3470, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!24, !25}
!3472 = !{!3468, !3473}
!3473 = !DILocalVariable(name: "p", scope: !3469, file: !228, line: 41, type: !24)
!3474 = !DILocation(line: 0, scope: !3469, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 103, column: 10, scope: !3456)
!3476 = !DILocation(line: 41, column: 13, scope: !3469, inlinedAt: !3475)
!3477 = !DILocation(line: 42, column: 8, scope: !3478, inlinedAt: !3475)
!3478 = distinct !DILexicalBlock(scope: !3469, file: !228, line: 42, column: 7)
!3479 = !DILocation(line: 42, column: 10, scope: !3478, inlinedAt: !3475)
!3480 = !DILocation(line: 43, column: 5, scope: !3478, inlinedAt: !3475)
!3481 = !DILocation(line: 103, column: 3, scope: !3456)
!3482 = !DILocation(line: 0, scope: !3469)
!3483 = !DILocation(line: 41, column: 13, scope: !3469)
!3484 = !DILocation(line: 42, column: 8, scope: !3478)
!3485 = !DILocation(line: 42, column: 10, scope: !3478)
!3486 = !DILocation(line: 43, column: 5, scope: !3478)
!3487 = !DILocation(line: 44, column: 3, scope: !3469)
!3488 = distinct !DISubprogram(name: "xnrealloc", scope: !231, file: !231, line: 112, type: !3489, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!24, !24, !25, !25}
!3491 = !{!3492, !3493, !3494}
!3492 = !DILocalVariable(name: "p", arg: 1, scope: !3488, file: !231, line: 112, type: !24)
!3493 = !DILocalVariable(name: "n", arg: 2, scope: !3488, file: !231, line: 112, type: !25)
!3494 = !DILocalVariable(name: "s", arg: 3, scope: !3488, file: !231, line: 112, type: !25)
!3495 = !DILocation(line: 0, scope: !3488)
!3496 = !DILocation(line: 114, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3488, file: !231, line: 114, column: 7)
!3498 = !DILocation(line: 114, column: 7, scope: !3488)
!3499 = !DILocation(line: 115, column: 5, scope: !3497)
!3500 = !DILocation(line: 116, column: 25, scope: !3488)
!3501 = !DILocalVariable(name: "p", arg: 1, scope: !3502, file: !228, line: 51, type: !24)
!3502 = distinct !DISubprogram(name: "xrealloc", scope: !228, file: !228, line: 51, type: !3503, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!24, !24, !25}
!3505 = !{!3501, !3506}
!3506 = !DILocalVariable(name: "n", arg: 2, scope: !3502, file: !228, line: 51, type: !25)
!3507 = !DILocation(line: 0, scope: !3502, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 116, column: 10, scope: !3488)
!3509 = !DILocation(line: 53, column: 8, scope: !3510, inlinedAt: !3508)
!3510 = distinct !DILexicalBlock(scope: !3502, file: !228, line: 53, column: 7)
!3511 = !DILocation(line: 53, column: 10, scope: !3510, inlinedAt: !3508)
!3512 = !DILocation(line: 57, column: 7, scope: !3513, inlinedAt: !3508)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !228, line: 54, column: 5)
!3514 = !DILocation(line: 58, column: 7, scope: !3513, inlinedAt: !3508)
!3515 = !DILocation(line: 61, column: 7, scope: !3502, inlinedAt: !3508)
!3516 = !DILocation(line: 62, column: 8, scope: !3517, inlinedAt: !3508)
!3517 = distinct !DILexicalBlock(scope: !3502, file: !228, line: 62, column: 7)
!3518 = !DILocation(line: 62, column: 10, scope: !3517, inlinedAt: !3508)
!3519 = !DILocation(line: 63, column: 5, scope: !3517, inlinedAt: !3508)
!3520 = !DILocation(line: 116, column: 3, scope: !3488)
!3521 = !DILocation(line: 0, scope: !3502)
!3522 = !DILocation(line: 53, column: 8, scope: !3510)
!3523 = !DILocation(line: 53, column: 10, scope: !3510)
!3524 = !DILocation(line: 57, column: 7, scope: !3513)
!3525 = !DILocation(line: 58, column: 7, scope: !3513)
!3526 = !DILocation(line: 61, column: 7, scope: !3502)
!3527 = !DILocation(line: 62, column: 8, scope: !3517)
!3528 = !DILocation(line: 62, column: 10, scope: !3517)
!3529 = !DILocation(line: 63, column: 5, scope: !3517)
!3530 = !DILocation(line: 65, column: 1, scope: !3502)
!3531 = !DILocation(line: 0, scope: !232)
!3532 = !DILocation(line: 176, column: 14, scope: !232)
!3533 = !DILocation(line: 178, column: 9, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !232, file: !231, line: 178, column: 7)
!3535 = !DILocation(line: 178, column: 7, scope: !232)
!3536 = !DILocation(line: 180, column: 13, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !231, line: 180, column: 11)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !231, line: 179, column: 5)
!3539 = !DILocation(line: 180, column: 11, scope: !3538)
!3540 = !DILocation(line: 188, column: 30, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3537, file: !231, line: 181, column: 9)
!3542 = !DILocation(line: 189, column: 16, scope: !3541)
!3543 = !DILocation(line: 189, column: 13, scope: !3541)
!3544 = !DILocation(line: 190, column: 9, scope: !3541)
!3545 = !DILocation(line: 191, column: 11, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3538, file: !231, line: 191, column: 11)
!3547 = !DILocation(line: 191, column: 11, scope: !3538)
!3548 = !DILocation(line: 206, column: 7, scope: !232)
!3549 = !DILocation(line: 207, column: 25, scope: !232)
!3550 = !DILocation(line: 0, scope: !3502, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 207, column: 10, scope: !232)
!3552 = !DILocation(line: 53, column: 10, scope: !3510, inlinedAt: !3551)
!3553 = !DILocation(line: 192, column: 9, scope: !3546)
!3554 = !DILocation(line: 200, column: 69, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !231, line: 200, column: 11)
!3556 = distinct !DILexicalBlock(scope: !3534, file: !231, line: 195, column: 5)
!3557 = !DILocation(line: 201, column: 11, scope: !3555)
!3558 = !DILocation(line: 200, column: 11, scope: !3556)
!3559 = !DILocation(line: 202, column: 9, scope: !3555)
!3560 = !DILocation(line: 203, column: 14, scope: !3556)
!3561 = !DILocation(line: 203, column: 18, scope: !3556)
!3562 = !DILocation(line: 203, column: 9, scope: !3556)
!3563 = !DILocation(line: 53, column: 8, scope: !3510, inlinedAt: !3551)
!3564 = !DILocation(line: 57, column: 7, scope: !3513, inlinedAt: !3551)
!3565 = !DILocation(line: 58, column: 7, scope: !3513, inlinedAt: !3551)
!3566 = !DILocation(line: 61, column: 7, scope: !3502, inlinedAt: !3551)
!3567 = !DILocation(line: 62, column: 8, scope: !3517, inlinedAt: !3551)
!3568 = !DILocation(line: 62, column: 10, scope: !3517, inlinedAt: !3551)
!3569 = !DILocation(line: 63, column: 5, scope: !3517, inlinedAt: !3551)
!3570 = !DILocation(line: 207, column: 3, scope: !232)
!3571 = distinct !DISubprogram(name: "xcharalloc", scope: !231, file: !231, line: 216, type: !2712, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3572)
!3572 = !{!3573}
!3573 = !DILocalVariable(name: "n", arg: 1, scope: !3571, file: !231, line: 216, type: !25)
!3574 = !DILocation(line: 0, scope: !3571)
!3575 = !DILocation(line: 0, scope: !3469, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 218, column: 10, scope: !3571)
!3577 = !DILocation(line: 41, column: 13, scope: !3469, inlinedAt: !3576)
!3578 = !DILocation(line: 42, column: 8, scope: !3478, inlinedAt: !3576)
!3579 = !DILocation(line: 42, column: 10, scope: !3478, inlinedAt: !3576)
!3580 = !DILocation(line: 43, column: 5, scope: !3478, inlinedAt: !3576)
!3581 = !DILocation(line: 218, column: 3, scope: !3571)
!3582 = distinct !DISubprogram(name: "x2realloc", scope: !228, file: !228, line: 74, type: !3583, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!24, !24, !235}
!3585 = !{!3586, !3587}
!3586 = !DILocalVariable(name: "p", arg: 1, scope: !3582, file: !228, line: 74, type: !24)
!3587 = !DILocalVariable(name: "pn", arg: 2, scope: !3582, file: !228, line: 74, type: !235)
!3588 = !DILocation(line: 0, scope: !3582)
!3589 = !DILocation(line: 0, scope: !232, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 76, column: 10, scope: !3582)
!3591 = !DILocation(line: 176, column: 14, scope: !232, inlinedAt: !3590)
!3592 = !DILocation(line: 178, column: 9, scope: !3534, inlinedAt: !3590)
!3593 = !DILocation(line: 178, column: 7, scope: !232, inlinedAt: !3590)
!3594 = !DILocation(line: 180, column: 13, scope: !3537, inlinedAt: !3590)
!3595 = !DILocation(line: 180, column: 11, scope: !3538, inlinedAt: !3590)
!3596 = !DILocation(line: 191, column: 11, scope: !3546, inlinedAt: !3590)
!3597 = !DILocation(line: 191, column: 11, scope: !3538, inlinedAt: !3590)
!3598 = !DILocation(line: 192, column: 9, scope: !3546, inlinedAt: !3590)
!3599 = !DILocation(line: 201, column: 11, scope: !3555, inlinedAt: !3590)
!3600 = !DILocation(line: 200, column: 11, scope: !3556, inlinedAt: !3590)
!3601 = !DILocation(line: 202, column: 9, scope: !3555, inlinedAt: !3590)
!3602 = !DILocation(line: 203, column: 14, scope: !3556, inlinedAt: !3590)
!3603 = !DILocation(line: 203, column: 18, scope: !3556, inlinedAt: !3590)
!3604 = !DILocation(line: 203, column: 9, scope: !3556, inlinedAt: !3590)
!3605 = !DILocation(line: 0, scope: !3502, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 207, column: 10, scope: !232, inlinedAt: !3590)
!3607 = !DILocation(line: 53, column: 10, scope: !3510, inlinedAt: !3606)
!3608 = !DILocation(line: 206, column: 7, scope: !232, inlinedAt: !3590)
!3609 = !DILocation(line: 61, column: 7, scope: !3502, inlinedAt: !3606)
!3610 = !DILocation(line: 62, column: 8, scope: !3517, inlinedAt: !3606)
!3611 = !DILocation(line: 62, column: 10, scope: !3517, inlinedAt: !3606)
!3612 = !DILocation(line: 63, column: 5, scope: !3517, inlinedAt: !3606)
!3613 = !DILocation(line: 76, column: 3, scope: !3582)
!3614 = distinct !DISubprogram(name: "xzalloc", scope: !228, file: !228, line: 84, type: !3470, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3615)
!3615 = !{!3616}
!3616 = !DILocalVariable(name: "n", arg: 1, scope: !3614, file: !228, line: 84, type: !25)
!3617 = !DILocation(line: 0, scope: !3614)
!3618 = !DILocalVariable(name: "n", arg: 1, scope: !3619, file: !228, line: 93, type: !25)
!3619 = distinct !DISubprogram(name: "xcalloc", scope: !228, file: !228, line: 93, type: !3457, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3620)
!3620 = !{!3618, !3621, !3622}
!3621 = !DILocalVariable(name: "s", arg: 2, scope: !3619, file: !228, line: 93, type: !25)
!3622 = !DILocalVariable(name: "p", scope: !3619, file: !228, line: 95, type: !24)
!3623 = !DILocation(line: 0, scope: !3619, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 86, column: 10, scope: !3614)
!3625 = !DILocation(line: 100, column: 7, scope: !3626, inlinedAt: !3624)
!3626 = distinct !DILexicalBlock(scope: !3619, file: !228, line: 100, column: 7)
!3627 = !DILocation(line: 101, column: 7, scope: !3626, inlinedAt: !3624)
!3628 = !DILocation(line: 101, column: 18, scope: !3626, inlinedAt: !3624)
!3629 = !DILocation(line: 101, column: 16, scope: !3626, inlinedAt: !3624)
!3630 = !DILocation(line: 100, column: 7, scope: !3619, inlinedAt: !3624)
!3631 = !DILocation(line: 102, column: 5, scope: !3626, inlinedAt: !3624)
!3632 = !DILocation(line: 86, column: 3, scope: !3614)
!3633 = !DILocation(line: 0, scope: !3619)
!3634 = !DILocation(line: 100, column: 7, scope: !3626)
!3635 = !DILocation(line: 101, column: 7, scope: !3626)
!3636 = !DILocation(line: 101, column: 18, scope: !3626)
!3637 = !DILocation(line: 101, column: 16, scope: !3626)
!3638 = !DILocation(line: 100, column: 7, scope: !3619)
!3639 = !DILocation(line: 102, column: 5, scope: !3626)
!3640 = !DILocation(line: 103, column: 3, scope: !3619)
!3641 = distinct !DISubprogram(name: "xmemdup", scope: !228, file: !228, line: 111, type: !3642, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!24, !996, !25}
!3644 = !{!3645, !3646}
!3645 = !DILocalVariable(name: "p", arg: 1, scope: !3641, file: !228, line: 111, type: !996)
!3646 = !DILocalVariable(name: "s", arg: 2, scope: !3641, file: !228, line: 111, type: !25)
!3647 = !DILocation(line: 0, scope: !3641)
!3648 = !DILocation(line: 0, scope: !3469, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 113, column: 18, scope: !3641)
!3650 = !DILocation(line: 41, column: 13, scope: !3469, inlinedAt: !3649)
!3651 = !DILocation(line: 42, column: 8, scope: !3478, inlinedAt: !3649)
!3652 = !DILocation(line: 42, column: 10, scope: !3478, inlinedAt: !3649)
!3653 = !DILocation(line: 43, column: 5, scope: !3478, inlinedAt: !3649)
!3654 = !DILocalVariable(name: "__dest", arg: 1, scope: !3655, file: !991, line: 26, type: !994)
!3655 = distinct !DISubprogram(name: "memcpy", scope: !991, file: !991, line: 26, type: !992, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3656)
!3656 = !{!3654, !3657, !3658}
!3657 = !DILocalVariable(name: "__src", arg: 2, scope: !3655, file: !991, line: 26, type: !995)
!3658 = !DILocalVariable(name: "__len", arg: 3, scope: !3655, file: !991, line: 26, type: !25)
!3659 = !DILocation(line: 0, scope: !3655, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 113, column: 10, scope: !3641)
!3661 = !DILocation(line: 29, column: 10, scope: !3655, inlinedAt: !3660)
!3662 = !DILocation(line: 113, column: 3, scope: !3641)
!3663 = distinct !DISubprogram(name: "xstrdup", scope: !228, file: !228, line: 119, type: !1343, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3664)
!3664 = !{!3665}
!3665 = !DILocalVariable(name: "string", arg: 1, scope: !3663, file: !228, line: 119, type: !28)
!3666 = !DILocation(line: 0, scope: !3663)
!3667 = !DILocation(line: 121, column: 27, scope: !3663)
!3668 = !DILocation(line: 121, column: 43, scope: !3663)
!3669 = !DILocation(line: 0, scope: !3641, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 121, column: 10, scope: !3663)
!3671 = !DILocation(line: 0, scope: !3469, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 113, column: 18, scope: !3641, inlinedAt: !3670)
!3673 = !DILocation(line: 41, column: 13, scope: !3469, inlinedAt: !3672)
!3674 = !DILocation(line: 42, column: 8, scope: !3478, inlinedAt: !3672)
!3675 = !DILocation(line: 42, column: 10, scope: !3478, inlinedAt: !3672)
!3676 = !DILocation(line: 43, column: 5, scope: !3478, inlinedAt: !3672)
!3677 = !DILocation(line: 0, scope: !3655, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 113, column: 10, scope: !3641, inlinedAt: !3670)
!3679 = !DILocation(line: 29, column: 10, scope: !3655, inlinedAt: !3678)
!3680 = !DILocation(line: 121, column: 3, scope: !3663)
!3681 = distinct !DISubprogram(name: "xalloc_die", scope: !245, file: !245, line: 32, type: !681, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !93)
!3682 = !DILocation(line: 34, column: 10, scope: !3681)
!3683 = !DILocation(line: 34, column: 33, scope: !3681)
!3684 = !DILocation(line: 34, column: 3, scope: !3681)
!3685 = !DILocation(line: 40, column: 3, scope: !3681)
!3686 = distinct !DISubprogram(name: "xstrtold", scope: !3687, file: !3687, line: 44, type: !3688, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !3695)
!3687 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!36, !28, !3690, !3691, !3692}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!67, !28, !808}
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3701, !3702}
!3696 = !DILocalVariable(name: "str", arg: 1, scope: !3686, file: !3687, line: 44, type: !28)
!3697 = !DILocalVariable(name: "ptr", arg: 2, scope: !3686, file: !3687, line: 44, type: !3690)
!3698 = !DILocalVariable(name: "result", arg: 3, scope: !3686, file: !3687, line: 44, type: !3691)
!3699 = !DILocalVariable(name: "convert", arg: 4, scope: !3686, file: !3687, line: 45, type: !3692)
!3700 = !DILocalVariable(name: "val", scope: !3686, file: !3687, line: 47, type: !67)
!3701 = !DILocalVariable(name: "terminator", scope: !3686, file: !3687, line: 48, type: !22)
!3702 = !DILocalVariable(name: "ok", scope: !3686, file: !3687, line: 49, type: !36)
!3703 = !DILocation(line: 47, column: 10, scope: !3686)
!3704 = !DILocation(line: 0, scope: !3686)
!3705 = !DILocation(line: 48, column: 3, scope: !3686)
!3706 = !DILocation(line: 51, column: 3, scope: !3686)
!3707 = !DILocation(line: 51, column: 9, scope: !3686)
!3708 = !DILocation(line: 52, column: 9, scope: !3686)
!3709 = !DILocation(line: 55, column: 7, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 55, column: 7)
!3711 = !DILocation(line: 55, column: 18, scope: !3710)
!3712 = !DILocation(line: 55, column: 25, scope: !3710)
!3713 = !DILocation(line: 55, column: 33, scope: !3710)
!3714 = !DILocation(line: 55, column: 41, scope: !3710)
!3715 = !DILocation(line: 55, column: 44, scope: !3710)
!3716 = !DILocation(line: 55, column: 56, scope: !3710)
!3717 = !DILocation(line: 55, column: 7, scope: !3686)
!3718 = !DILocation(line: 62, column: 15, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !3687, line: 62, column: 11)
!3720 = distinct !DILexicalBlock(scope: !3710, file: !3687, line: 58, column: 5)
!3721 = !DILocation(line: 62, column: 20, scope: !3719)
!3722 = !DILocation(line: 62, column: 23, scope: !3719)
!3723 = !DILocation(line: 62, column: 29, scope: !3719)
!3724 = !DILocation(line: 62, column: 11, scope: !3720)
!3725 = !DILocation(line: 66, column: 11, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 66, column: 7)
!3727 = !DILocation(line: 66, column: 7, scope: !3686)
!3728 = !DILocation(line: 67, column: 10, scope: !3726)
!3729 = !DILocation(line: 67, column: 5, scope: !3726)
!3730 = !DILocation(line: 69, column: 11, scope: !3686)
!3731 = !DILocation(line: 71, column: 1, scope: !3686)
!3732 = !DILocation(line: 70, column: 3, scope: !3686)
!3733 = distinct !DISubprogram(name: "rpl_calloc", scope: !249, file: !249, line: 42, type: !3457, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !248, retainedNodes: !3734)
!3734 = !{!3735, !3736, !3737, !3738}
!3735 = !DILocalVariable(name: "n", arg: 1, scope: !3733, file: !249, line: 42, type: !25)
!3736 = !DILocalVariable(name: "s", arg: 2, scope: !3733, file: !249, line: 42, type: !25)
!3737 = !DILocalVariable(name: "result", scope: !3733, file: !249, line: 44, type: !24)
!3738 = !DILocalVariable(name: "bytes", scope: !3739, file: !249, line: 56, type: !25)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !249, line: 53, column: 5)
!3740 = distinct !DILexicalBlock(scope: !3733, file: !249, line: 47, column: 7)
!3741 = !DILocation(line: 0, scope: !3733)
!3742 = !DILocation(line: 47, column: 9, scope: !3740)
!3743 = !DILocation(line: 47, column: 14, scope: !3740)
!3744 = !DILocation(line: 0, scope: !3739)
!3745 = !DILocation(line: 57, column: 21, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3739, file: !249, line: 57, column: 11)
!3747 = !DILocation(line: 57, column: 11, scope: !3739)
!3748 = !DILocation(line: 59, column: 11, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3746, file: !249, line: 58, column: 9)
!3750 = !DILocation(line: 59, column: 17, scope: !3749)
!3751 = !DILocation(line: 65, column: 12, scope: !3733)
!3752 = !DILocation(line: 72, column: 3, scope: !3733)
!3753 = !DILocation(line: 73, column: 1, scope: !3733)
!3754 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !251, file: !251, line: 86, type: !3755, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3769)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!25, !3757, !28, !25, !3758}
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1995, line: 6, baseType: !3760)
!3760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1997, line: 21, baseType: !3761)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1997, line: 13, size: 64, elements: !3762)
!3762 = !{!3763, !3764}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3761, file: !1997, line: 15, baseType: !31, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3761, file: !1997, line: 20, baseType: !3765, size: 32, offset: 32)
!3765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3761, file: !1997, line: 16, size: 32, elements: !3766)
!3766 = !{!3767, !3768}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3765, file: !1997, line: 18, baseType: !7, size: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3765, file: !1997, line: 19, baseType: !2006, size: 32)
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776}
!3770 = !DILocalVariable(name: "pwc", arg: 1, scope: !3754, file: !251, line: 86, type: !3757)
!3771 = !DILocalVariable(name: "s", arg: 2, scope: !3754, file: !251, line: 86, type: !28)
!3772 = !DILocalVariable(name: "n", arg: 3, scope: !3754, file: !251, line: 86, type: !25)
!3773 = !DILocalVariable(name: "ps", arg: 4, scope: !3754, file: !251, line: 86, type: !3758)
!3774 = !DILocalVariable(name: "ret", scope: !3754, file: !251, line: 88, type: !25)
!3775 = !DILocalVariable(name: "wc", scope: !3754, file: !251, line: 89, type: !2011)
!3776 = !DILocalVariable(name: "uc", scope: !3777, file: !251, line: 156, type: !30)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !251, line: 155, column: 5)
!3778 = distinct !DILexicalBlock(scope: !3754, file: !251, line: 154, column: 7)
!3779 = !DILocation(line: 0, scope: !3754)
!3780 = !DILocation(line: 89, column: 3, scope: !3754)
!3781 = !DILocation(line: 105, column: 9, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3754, file: !251, line: 105, column: 7)
!3783 = !DILocation(line: 105, column: 7, scope: !3754)
!3784 = !DILocation(line: 145, column: 9, scope: !3754)
!3785 = !DILocation(line: 154, column: 19, scope: !3778)
!3786 = !DILocation(line: 154, column: 26, scope: !3778)
!3787 = !DILocation(line: 154, column: 41, scope: !3778)
!3788 = !DILocation(line: 154, column: 7, scope: !3754)
!3789 = !DILocation(line: 156, column: 26, scope: !3777)
!3790 = !DILocation(line: 0, scope: !3777)
!3791 = !DILocation(line: 157, column: 14, scope: !3777)
!3792 = !DILocation(line: 157, column: 12, scope: !3777)
!3793 = !DILocation(line: 163, column: 1, scope: !3754)
!3794 = !DISubprogram(name: "mbrtowc", scope: !2672, file: !2672, line: 296, type: !3795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!27, !49, !28, !27, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3798 = distinct !DISubprogram(name: "c_strtold", scope: !216, file: !216, line: 65, type: !3693, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !190, retainedNodes: !3799)
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805}
!3800 = !DILocalVariable(name: "nptr", arg: 1, scope: !3798, file: !216, line: 65, type: !28)
!3801 = !DILocalVariable(name: "endptr", arg: 2, scope: !3798, file: !216, line: 65, type: !808)
!3802 = !DILocalVariable(name: "r", scope: !3798, file: !216, line: 67, type: !67)
!3803 = !DILocalVariable(name: "locale", scope: !3798, file: !216, line: 73, type: !193)
!3804 = !DILocalVariable(name: "old_locale", scope: !3798, file: !216, line: 87, type: !193)
!3805 = !DILocalVariable(name: "saved_errno", scope: !3798, file: !216, line: 97, type: !31)
!3806 = !DILocation(line: 67, column: 10, scope: !3798)
!3807 = !DILocation(line: 0, scope: !3798)
!3808 = !DILocation(line: 57, column: 8, scope: !3809, inlinedAt: !3813)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !216, line: 57, column: 7)
!3810 = distinct !DISubprogram(name: "c_locale", scope: !216, file: !216, line: 55, type: !3811, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !190, retainedNodes: !93)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!193}
!3813 = distinct !DILocation(line: 73, column: 21, scope: !3798)
!3814 = !DILocation(line: 57, column: 7, scope: !3810, inlinedAt: !3813)
!3815 = !DILocation(line: 58, column: 22, scope: !3809, inlinedAt: !3813)
!3816 = !DILocation(line: 58, column: 20, scope: !3809, inlinedAt: !3813)
!3817 = !DILocation(line: 58, column: 5, scope: !3809, inlinedAt: !3813)
!3818 = !DILocation(line: 59, column: 10, scope: !3810, inlinedAt: !3813)
!3819 = !DILocation(line: 74, column: 8, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3798, file: !216, line: 74, column: 7)
!3821 = !DILocation(line: 74, column: 7, scope: !3798)
!3822 = !DILocation(line: 76, column: 11, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !216, line: 76, column: 11)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !216, line: 75, column: 5)
!3825 = !DILocation(line: 76, column: 11, scope: !3824)
!3826 = !DILocation(line: 77, column: 17, scope: !3823)
!3827 = !DILocation(line: 77, column: 9, scope: !3823)
!3828 = !DILocation(line: 87, column: 25, scope: !3798)
!3829 = !DILocation(line: 88, column: 18, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3798, file: !216, line: 88, column: 7)
!3831 = !DILocation(line: 88, column: 7, scope: !3798)
!3832 = !DILocation(line: 90, column: 11, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3834, file: !216, line: 90, column: 11)
!3834 = distinct !DILexicalBlock(scope: !3830, file: !216, line: 89, column: 5)
!3835 = !DILocation(line: 90, column: 11, scope: !3834)
!3836 = !DILocation(line: 91, column: 17, scope: !3833)
!3837 = !DILocation(line: 91, column: 9, scope: !3833)
!3838 = !DILocation(line: 95, column: 7, scope: !3798)
!3839 = !DILocation(line: 97, column: 21, scope: !3798)
!3840 = !DILocation(line: 98, column: 7, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3798, file: !216, line: 98, column: 7)
!3842 = !DILocation(line: 98, column: 30, scope: !3841)
!3843 = !DILocation(line: 98, column: 7, scope: !3798)
!3844 = !DILocation(line: 100, column: 5, scope: !3841)
!3845 = !DILocation(line: 101, column: 9, scope: !3798)
!3846 = !DILocation(line: 135, column: 1, scope: !3798)
!3847 = !DISubprogram(name: "newlocale", scope: !802, file: !802, line: 141, type: !3848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!197, !31, !28, !197}
!3850 = !DISubprogram(name: "uselocale", scope: !802, file: !802, line: 187, type: !3851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!197, !197}
!3853 = distinct !DISubprogram(name: "close_stream", scope: !254, file: !254, line: 56, type: !3854, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3890)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!31, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1401, line: 7, baseType: !3858)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !751, line: 49, size: 1728, elements: !3859)
!3859 = !{!3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3858, file: !751, line: 51, baseType: !31, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3858, file: !751, line: 54, baseType: !22, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3858, file: !751, line: 55, baseType: !22, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3858, file: !751, line: 56, baseType: !22, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3858, file: !751, line: 57, baseType: !22, size: 64, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3858, file: !751, line: 58, baseType: !22, size: 64, offset: 320)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3858, file: !751, line: 59, baseType: !22, size: 64, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3858, file: !751, line: 60, baseType: !22, size: 64, offset: 448)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3858, file: !751, line: 61, baseType: !22, size: 64, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3858, file: !751, line: 64, baseType: !22, size: 64, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3858, file: !751, line: 65, baseType: !22, size: 64, offset: 640)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3858, file: !751, line: 66, baseType: !22, size: 64, offset: 704)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3858, file: !751, line: 68, baseType: !766, size: 64, offset: 768)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3858, file: !751, line: 70, baseType: !3874, size: 64, offset: 832)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3858, file: !751, line: 72, baseType: !31, size: 32, offset: 896)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3858, file: !751, line: 73, baseType: !31, size: 32, offset: 928)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3858, file: !751, line: 74, baseType: !772, size: 64, offset: 960)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3858, file: !751, line: 77, baseType: !32, size: 16, offset: 1024)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3858, file: !751, line: 78, baseType: !777, size: 8, offset: 1040)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3858, file: !751, line: 79, baseType: !779, size: 8, offset: 1048)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3858, file: !751, line: 81, baseType: !783, size: 64, offset: 1088)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3858, file: !751, line: 89, baseType: !786, size: 64, offset: 1152)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3858, file: !751, line: 91, baseType: !788, size: 64, offset: 1216)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3858, file: !751, line: 92, baseType: !791, size: 64, offset: 1280)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3858, file: !751, line: 93, baseType: !3874, size: 64, offset: 1344)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3858, file: !751, line: 94, baseType: !24, size: 64, offset: 1408)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3858, file: !751, line: 95, baseType: !25, size: 64, offset: 1472)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3858, file: !751, line: 96, baseType: !31, size: 32, offset: 1536)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3858, file: !751, line: 98, baseType: !798, size: 160, offset: 1568)
!3890 = !{!3891, !3892, !3894, !3895}
!3891 = !DILocalVariable(name: "stream", arg: 1, scope: !3853, file: !254, line: 56, type: !3856)
!3892 = !DILocalVariable(name: "some_pending", scope: !3853, file: !254, line: 58, type: !3893)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!3894 = !DILocalVariable(name: "prev_fail", scope: !3853, file: !254, line: 59, type: !3893)
!3895 = !DILocalVariable(name: "fclose_fail", scope: !3853, file: !254, line: 60, type: !3893)
!3896 = !DILocation(line: 0, scope: !3853)
!3897 = !DILocation(line: 58, column: 30, scope: !3853)
!3898 = !DILocalVariable(name: "__stream", arg: 1, scope: !3899, file: !3900, line: 135, type: !3856)
!3899 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3900, file: !3900, line: 135, type: !3854, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3901)
!3900 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3901 = !{!3898}
!3902 = !DILocation(line: 0, scope: !3899, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 59, column: 27, scope: !3853)
!3904 = !DILocation(line: 137, column: 10, scope: !3899, inlinedAt: !3903)
!3905 = !{!3906, !851, i64 0}
!3906 = !{!"_IO_FILE", !851, i64 0, !672, i64 8, !672, i64 16, !672, i64 24, !672, i64 32, !672, i64 40, !672, i64 48, !672, i64 56, !672, i64 64, !672, i64 72, !672, i64 80, !672, i64 88, !672, i64 96, !672, i64 104, !851, i64 112, !851, i64 116, !1107, i64 120, !1622, i64 128, !673, i64 130, !673, i64 131, !672, i64 136, !1107, i64 144, !672, i64 152, !672, i64 160, !672, i64 168, !672, i64 176, !1107, i64 184, !851, i64 192, !673, i64 196}
!3907 = !DILocation(line: 59, column: 43, scope: !3853)
!3908 = !DILocation(line: 60, column: 29, scope: !3853)
!3909 = !DILocation(line: 60, column: 45, scope: !3853)
!3910 = !DILocation(line: 70, column: 17, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3853, file: !254, line: 70, column: 7)
!3912 = !DILocation(line: 58, column: 50, scope: !3853)
!3913 = !DILocation(line: 70, column: 33, scope: !3911)
!3914 = !DILocation(line: 70, column: 53, scope: !3911)
!3915 = !DILocation(line: 70, column: 59, scope: !3911)
!3916 = !DILocation(line: 70, column: 7, scope: !3853)
!3917 = !DILocation(line: 72, column: 11, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3911, file: !254, line: 71, column: 5)
!3919 = !DILocation(line: 73, column: 9, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3918, file: !254, line: 72, column: 11)
!3921 = !DILocation(line: 73, column: 15, scope: !3920)
!3922 = !DILocation(line: 78, column: 1, scope: !3853)
!3923 = distinct !DISubprogram(name: "hard_locale", scope: !256, file: !256, line: 27, type: !3924, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!36, !31}
!3926 = !{!3927, !3928}
!3927 = !DILocalVariable(name: "category", arg: 1, scope: !3923, file: !256, line: 27, type: !31)
!3928 = !DILocalVariable(name: "locale", scope: !3923, file: !256, line: 29, type: !3929)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !3930)
!3930 = !{!3931}
!3931 = !DISubrange(count: 257)
!3932 = !DILocation(line: 0, scope: !3923)
!3933 = !DILocation(line: 29, column: 3, scope: !3923)
!3934 = !DILocation(line: 29, column: 8, scope: !3923)
!3935 = !DILocation(line: 31, column: 7, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3923, file: !256, line: 31, column: 7)
!3937 = !DILocation(line: 31, column: 7, scope: !3923)
!3938 = !DILocation(line: 34, column: 12, scope: !3923)
!3939 = !DILocation(line: 34, column: 38, scope: !3923)
!3940 = !DILocation(line: 34, column: 41, scope: !3923)
!3941 = !DILocation(line: 34, column: 66, scope: !3923)
!3942 = !DILocation(line: 35, column: 1, scope: !3923)
!3943 = distinct !DISubprogram(name: "locale_charset", scope: !258, file: !258, line: 831, type: !3944, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!28}
!3946 = !{!3947}
!3947 = !DILocalVariable(name: "codeset", scope: !3943, file: !258, line: 833, type: !28)
!3948 = !DILocation(line: 847, column: 13, scope: !3943)
!3949 = !DILocation(line: 0, scope: !3943)
!3950 = !DILocation(line: 911, column: 15, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3943, file: !258, line: 911, column: 7)
!3952 = !DILocation(line: 911, column: 7, scope: !3943)
!3953 = !DILocation(line: 1070, column: 13, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !258, line: 1070, column: 13)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !258, line: 1060, column: 7)
!3956 = distinct !DILexicalBlock(scope: !3943, file: !258, line: 1019, column: 3)
!3957 = !DILocation(line: 1070, column: 24, scope: !3954)
!3958 = !DILocation(line: 1070, column: 13, scope: !3955)
!3959 = !DILocation(line: 1158, column: 3, scope: !3943)
!3960 = !DISubprogram(name: "nl_langinfo", scope: !261, file: !261, line: 661, type: !3961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!22, !31}
!3963 = distinct !DISubprogram(name: "setlocale_null_r", scope: !647, file: !647, line: 269, type: !3964, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !3966)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!31, !31, !22, !25}
!3966 = !{!3967, !3968, !3969}
!3967 = !DILocalVariable(name: "category", arg: 1, scope: !3963, file: !647, line: 269, type: !31)
!3968 = !DILocalVariable(name: "buf", arg: 2, scope: !3963, file: !647, line: 269, type: !22)
!3969 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3963, file: !647, line: 269, type: !25)
!3970 = !DILocation(line: 0, scope: !3963)
!3971 = !DILocalVariable(name: "category", arg: 1, scope: !3972, file: !647, line: 91, type: !31)
!3972 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !647, file: !647, line: 91, type: !3964, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !3973)
!3973 = !{!3971, !3974, !3975, !3976, !3977}
!3974 = !DILocalVariable(name: "buf", arg: 2, scope: !3972, file: !647, line: 91, type: !22)
!3975 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3972, file: !647, line: 91, type: !25)
!3976 = !DILocalVariable(name: "result", scope: !3972, file: !647, line: 140, type: !28)
!3977 = !DILocalVariable(name: "length", scope: !3978, file: !647, line: 154, type: !25)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !647, line: 153, column: 5)
!3979 = distinct !DILexicalBlock(scope: !3972, file: !647, line: 142, column: 7)
!3980 = !DILocation(line: 0, scope: !3972, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 274, column: 10, scope: !3963)
!3982 = !DILocalVariable(name: "category", arg: 1, scope: !3983, file: !647, line: 60, type: !31)
!3983 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !647, file: !647, line: 60, type: !3984, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!28, !31}
!3986 = !{!3982, !3987}
!3987 = !DILocalVariable(name: "result", scope: !3983, file: !647, line: 62, type: !28)
!3988 = !DILocation(line: 0, scope: !3983, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 140, column: 24, scope: !3972, inlinedAt: !3981)
!3990 = !DILocation(line: 62, column: 24, scope: !3983, inlinedAt: !3989)
!3991 = !DILocation(line: 142, column: 14, scope: !3979, inlinedAt: !3981)
!3992 = !DILocation(line: 142, column: 7, scope: !3972, inlinedAt: !3981)
!3993 = !DILocation(line: 145, column: 19, scope: !3994, inlinedAt: !3981)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !647, line: 145, column: 11)
!3995 = distinct !DILexicalBlock(scope: !3979, file: !647, line: 143, column: 5)
!3996 = !DILocation(line: 145, column: 11, scope: !3995, inlinedAt: !3981)
!3997 = !DILocation(line: 149, column: 16, scope: !3994, inlinedAt: !3981)
!3998 = !DILocation(line: 149, column: 9, scope: !3994, inlinedAt: !3981)
!3999 = !DILocation(line: 154, column: 23, scope: !3978, inlinedAt: !3981)
!4000 = !DILocation(line: 0, scope: !3978, inlinedAt: !3981)
!4001 = !DILocation(line: 155, column: 18, scope: !4002, inlinedAt: !3981)
!4002 = distinct !DILexicalBlock(scope: !3978, file: !647, line: 155, column: 11)
!4003 = !DILocation(line: 155, column: 11, scope: !3978, inlinedAt: !3981)
!4004 = !DILocation(line: 157, column: 39, scope: !4005, inlinedAt: !3981)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !647, line: 156, column: 9)
!4006 = !DILocalVariable(name: "__dest", arg: 1, scope: !4007, file: !991, line: 26, type: !994)
!4007 = distinct !DISubprogram(name: "memcpy", scope: !991, file: !991, line: 26, type: !992, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !4008)
!4008 = !{!4006, !4009, !4010}
!4009 = !DILocalVariable(name: "__src", arg: 2, scope: !4007, file: !991, line: 26, type: !995)
!4010 = !DILocalVariable(name: "__len", arg: 3, scope: !4007, file: !991, line: 26, type: !25)
!4011 = !DILocation(line: 0, scope: !4007, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 157, column: 11, scope: !4005, inlinedAt: !3981)
!4013 = !DILocation(line: 29, column: 10, scope: !4007, inlinedAt: !4012)
!4014 = !DILocation(line: 158, column: 11, scope: !4005, inlinedAt: !3981)
!4015 = !DILocation(line: 162, column: 23, scope: !4016, inlinedAt: !3981)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !647, line: 162, column: 15)
!4017 = distinct !DILexicalBlock(scope: !4002, file: !647, line: 161, column: 9)
!4018 = !DILocation(line: 162, column: 15, scope: !4017, inlinedAt: !3981)
!4019 = !DILocation(line: 167, column: 44, scope: !4020, inlinedAt: !3981)
!4020 = distinct !DILexicalBlock(scope: !4016, file: !647, line: 163, column: 13)
!4021 = !DILocation(line: 0, scope: !4007, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 167, column: 15, scope: !4020, inlinedAt: !3981)
!4023 = !DILocation(line: 29, column: 10, scope: !4007, inlinedAt: !4022)
!4024 = !DILocation(line: 168, column: 15, scope: !4020, inlinedAt: !3981)
!4025 = !DILocation(line: 168, column: 32, scope: !4020, inlinedAt: !3981)
!4026 = !DILocation(line: 169, column: 13, scope: !4020, inlinedAt: !3981)
!4027 = !DILocation(line: 0, scope: !3979, inlinedAt: !3981)
!4028 = !DILocation(line: 274, column: 3, scope: !3963)
!4029 = distinct !DISubprogram(name: "setlocale_null", scope: !647, file: !647, line: 301, type: !3984, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !4030)
!4030 = !{!4031}
!4031 = !DILocalVariable(name: "category", arg: 1, scope: !4029, file: !647, line: 301, type: !31)
!4032 = !DILocation(line: 0, scope: !4029)
!4033 = !DILocation(line: 0, scope: !3983, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 304, column: 10, scope: !4029)
!4035 = !DILocation(line: 62, column: 24, scope: !3983, inlinedAt: !4034)
!4036 = !DILocation(line: 304, column: 3, scope: !4029)
!4037 = distinct !DISubprogram(name: "rpl_fclose", scope: !649, file: !649, line: 58, type: !4038, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4074)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!31, !4040}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1401, line: 7, baseType: !4042)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !751, line: 49, size: 1728, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4042, file: !751, line: 51, baseType: !31, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4042, file: !751, line: 54, baseType: !22, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4042, file: !751, line: 55, baseType: !22, size: 64, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4042, file: !751, line: 56, baseType: !22, size: 64, offset: 192)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4042, file: !751, line: 57, baseType: !22, size: 64, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4042, file: !751, line: 58, baseType: !22, size: 64, offset: 320)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4042, file: !751, line: 59, baseType: !22, size: 64, offset: 384)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4042, file: !751, line: 60, baseType: !22, size: 64, offset: 448)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4042, file: !751, line: 61, baseType: !22, size: 64, offset: 512)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4042, file: !751, line: 64, baseType: !22, size: 64, offset: 576)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4042, file: !751, line: 65, baseType: !22, size: 64, offset: 640)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4042, file: !751, line: 66, baseType: !22, size: 64, offset: 704)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4042, file: !751, line: 68, baseType: !766, size: 64, offset: 768)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4042, file: !751, line: 70, baseType: !4058, size: 64, offset: 832)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4042, file: !751, line: 72, baseType: !31, size: 32, offset: 896)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4042, file: !751, line: 73, baseType: !31, size: 32, offset: 928)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4042, file: !751, line: 74, baseType: !772, size: 64, offset: 960)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4042, file: !751, line: 77, baseType: !32, size: 16, offset: 1024)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4042, file: !751, line: 78, baseType: !777, size: 8, offset: 1040)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4042, file: !751, line: 79, baseType: !779, size: 8, offset: 1048)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4042, file: !751, line: 81, baseType: !783, size: 64, offset: 1088)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4042, file: !751, line: 89, baseType: !786, size: 64, offset: 1152)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4042, file: !751, line: 91, baseType: !788, size: 64, offset: 1216)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4042, file: !751, line: 92, baseType: !791, size: 64, offset: 1280)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4042, file: !751, line: 93, baseType: !4058, size: 64, offset: 1344)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4042, file: !751, line: 94, baseType: !24, size: 64, offset: 1408)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4042, file: !751, line: 95, baseType: !25, size: 64, offset: 1472)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4042, file: !751, line: 96, baseType: !31, size: 32, offset: 1536)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4042, file: !751, line: 98, baseType: !798, size: 160, offset: 1568)
!4074 = !{!4075, !4076, !4077, !4078}
!4075 = !DILocalVariable(name: "fp", arg: 1, scope: !4037, file: !649, line: 58, type: !4040)
!4076 = !DILocalVariable(name: "saved_errno", scope: !4037, file: !649, line: 60, type: !31)
!4077 = !DILocalVariable(name: "fd", scope: !4037, file: !649, line: 61, type: !31)
!4078 = !DILocalVariable(name: "result", scope: !4037, file: !649, line: 62, type: !31)
!4079 = !DILocation(line: 0, scope: !4037)
!4080 = !DILocation(line: 65, column: 8, scope: !4037)
!4081 = !DILocation(line: 66, column: 10, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4037, file: !649, line: 66, column: 7)
!4083 = !DILocation(line: 66, column: 7, scope: !4037)
!4084 = !DILocation(line: 67, column: 12, scope: !4082)
!4085 = !DILocation(line: 67, column: 5, scope: !4082)
!4086 = !DILocation(line: 72, column: 9, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4037, file: !649, line: 72, column: 7)
!4088 = !DILocation(line: 72, column: 23, scope: !4087)
!4089 = !DILocation(line: 72, column: 33, scope: !4087)
!4090 = !DILocation(line: 72, column: 26, scope: !4087)
!4091 = !DILocation(line: 72, column: 59, scope: !4087)
!4092 = !DILocation(line: 73, column: 7, scope: !4087)
!4093 = !DILocation(line: 73, column: 10, scope: !4087)
!4094 = !DILocation(line: 72, column: 7, scope: !4037)
!4095 = !DILocation(line: 100, column: 12, scope: !4037)
!4096 = !DILocation(line: 105, column: 7, scope: !4037)
!4097 = !DILocation(line: 74, column: 19, scope: !4087)
!4098 = !DILocation(line: 105, column: 19, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4037, file: !649, line: 105, column: 7)
!4100 = !DILocation(line: 107, column: 13, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4099, file: !649, line: 106, column: 5)
!4102 = !DILocation(line: 109, column: 5, scope: !4101)
!4103 = !DILocation(line: 112, column: 1, scope: !4037)
!4104 = !DISubprogram(name: "fileno", scope: !746, file: !746, line: 785, type: !4105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!31, !4058}
!4107 = !DISubprogram(name: "fclose", scope: !746, file: !746, line: 213, type: !4105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!4108 = !DISubprogram(name: "lseek", scope: !4109, file: !4109, line: 334, type: !4110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!4109 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!774, !31, !774, !31}
!4112 = distinct !DISubprogram(name: "rpl_fflush", scope: !651, file: !651, line: 129, type: !4113, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !4149)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!31, !4115}
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1401, line: 7, baseType: !4117)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !751, line: 49, size: 1728, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4117, file: !751, line: 51, baseType: !31, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4117, file: !751, line: 54, baseType: !22, size: 64, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4117, file: !751, line: 55, baseType: !22, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4117, file: !751, line: 56, baseType: !22, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4117, file: !751, line: 57, baseType: !22, size: 64, offset: 256)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4117, file: !751, line: 58, baseType: !22, size: 64, offset: 320)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4117, file: !751, line: 59, baseType: !22, size: 64, offset: 384)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4117, file: !751, line: 60, baseType: !22, size: 64, offset: 448)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4117, file: !751, line: 61, baseType: !22, size: 64, offset: 512)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4117, file: !751, line: 64, baseType: !22, size: 64, offset: 576)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4117, file: !751, line: 65, baseType: !22, size: 64, offset: 640)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4117, file: !751, line: 66, baseType: !22, size: 64, offset: 704)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4117, file: !751, line: 68, baseType: !766, size: 64, offset: 768)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4117, file: !751, line: 70, baseType: !4133, size: 64, offset: 832)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4117, file: !751, line: 72, baseType: !31, size: 32, offset: 896)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4117, file: !751, line: 73, baseType: !31, size: 32, offset: 928)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4117, file: !751, line: 74, baseType: !772, size: 64, offset: 960)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4117, file: !751, line: 77, baseType: !32, size: 16, offset: 1024)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4117, file: !751, line: 78, baseType: !777, size: 8, offset: 1040)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4117, file: !751, line: 79, baseType: !779, size: 8, offset: 1048)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4117, file: !751, line: 81, baseType: !783, size: 64, offset: 1088)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4117, file: !751, line: 89, baseType: !786, size: 64, offset: 1152)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4117, file: !751, line: 91, baseType: !788, size: 64, offset: 1216)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4117, file: !751, line: 92, baseType: !791, size: 64, offset: 1280)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4117, file: !751, line: 93, baseType: !4133, size: 64, offset: 1344)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4117, file: !751, line: 94, baseType: !24, size: 64, offset: 1408)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4117, file: !751, line: 95, baseType: !25, size: 64, offset: 1472)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4117, file: !751, line: 96, baseType: !31, size: 32, offset: 1536)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4117, file: !751, line: 98, baseType: !798, size: 160, offset: 1568)
!4149 = !{!4150}
!4150 = !DILocalVariable(name: "stream", arg: 1, scope: !4112, file: !651, line: 129, type: !4115)
!4151 = !DILocation(line: 0, scope: !4112)
!4152 = !DILocation(line: 150, column: 14, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4112, file: !651, line: 150, column: 7)
!4154 = !DILocation(line: 150, column: 22, scope: !4153)
!4155 = !DILocation(line: 150, column: 27, scope: !4153)
!4156 = !DILocation(line: 150, column: 7, scope: !4112)
!4157 = !DILocation(line: 151, column: 12, scope: !4153)
!4158 = !DILocation(line: 151, column: 5, scope: !4153)
!4159 = !DILocalVariable(name: "fp", arg: 1, scope: !4160, file: !651, line: 41, type: !4115)
!4160 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !651, file: !651, line: 41, type: !4161, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !4115}
!4163 = !{!4159}
!4164 = !DILocation(line: 0, scope: !4160, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 156, column: 3, scope: !4112)
!4166 = !DILocation(line: 43, column: 11, scope: !4167, inlinedAt: !4165)
!4167 = distinct !DILexicalBlock(scope: !4160, file: !651, line: 43, column: 7)
!4168 = !DILocation(line: 43, column: 18, scope: !4167, inlinedAt: !4165)
!4169 = !DILocation(line: 43, column: 7, scope: !4160, inlinedAt: !4165)
!4170 = !DILocation(line: 45, column: 5, scope: !4167, inlinedAt: !4165)
!4171 = !DILocation(line: 158, column: 10, scope: !4112)
!4172 = !DILocation(line: 158, column: 3, scope: !4112)
!4173 = !DILocation(line: 235, column: 1, scope: !4112)
!4174 = !DISubprogram(name: "fflush", scope: !746, file: !746, line: 218, type: !4175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!31, !4133}
!4177 = distinct !DISubprogram(name: "rpl_fseeko", scope: !653, file: !653, line: 28, type: !4178, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !4215)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!31, !4180, !4214, !31}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1401, line: 7, baseType: !4182)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !751, line: 49, size: 1728, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4182, file: !751, line: 51, baseType: !31, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4182, file: !751, line: 54, baseType: !22, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4182, file: !751, line: 55, baseType: !22, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4182, file: !751, line: 56, baseType: !22, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4182, file: !751, line: 57, baseType: !22, size: 64, offset: 256)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4182, file: !751, line: 58, baseType: !22, size: 64, offset: 320)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4182, file: !751, line: 59, baseType: !22, size: 64, offset: 384)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4182, file: !751, line: 60, baseType: !22, size: 64, offset: 448)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4182, file: !751, line: 61, baseType: !22, size: 64, offset: 512)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4182, file: !751, line: 64, baseType: !22, size: 64, offset: 576)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4182, file: !751, line: 65, baseType: !22, size: 64, offset: 640)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4182, file: !751, line: 66, baseType: !22, size: 64, offset: 704)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4182, file: !751, line: 68, baseType: !766, size: 64, offset: 768)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4182, file: !751, line: 70, baseType: !4198, size: 64, offset: 832)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4182, file: !751, line: 72, baseType: !31, size: 32, offset: 896)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4182, file: !751, line: 73, baseType: !31, size: 32, offset: 928)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4182, file: !751, line: 74, baseType: !772, size: 64, offset: 960)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4182, file: !751, line: 77, baseType: !32, size: 16, offset: 1024)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4182, file: !751, line: 78, baseType: !777, size: 8, offset: 1040)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4182, file: !751, line: 79, baseType: !779, size: 8, offset: 1048)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4182, file: !751, line: 81, baseType: !783, size: 64, offset: 1088)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4182, file: !751, line: 89, baseType: !786, size: 64, offset: 1152)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4182, file: !751, line: 91, baseType: !788, size: 64, offset: 1216)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4182, file: !751, line: 92, baseType: !791, size: 64, offset: 1280)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4182, file: !751, line: 93, baseType: !4198, size: 64, offset: 1344)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4182, file: !751, line: 94, baseType: !24, size: 64, offset: 1408)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4182, file: !751, line: 95, baseType: !25, size: 64, offset: 1472)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4182, file: !751, line: 96, baseType: !31, size: 32, offset: 1536)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4182, file: !751, line: 98, baseType: !798, size: 160, offset: 1568)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !746, line: 63, baseType: !772)
!4215 = !{!4216, !4217, !4218, !4219}
!4216 = !DILocalVariable(name: "fp", arg: 1, scope: !4177, file: !653, line: 28, type: !4180)
!4217 = !DILocalVariable(name: "offset", arg: 2, scope: !4177, file: !653, line: 28, type: !4214)
!4218 = !DILocalVariable(name: "whence", arg: 3, scope: !4177, file: !653, line: 28, type: !31)
!4219 = !DILocalVariable(name: "pos", scope: !4220, file: !653, line: 117, type: !4214)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !653, line: 113, column: 5)
!4221 = distinct !DILexicalBlock(scope: !4177, file: !653, line: 52, column: 7)
!4222 = !DILocation(line: 0, scope: !4177)
!4223 = !DILocation(line: 52, column: 11, scope: !4221)
!4224 = !{!3906, !672, i64 16}
!4225 = !DILocation(line: 52, column: 31, scope: !4221)
!4226 = !{!3906, !672, i64 8}
!4227 = !DILocation(line: 52, column: 24, scope: !4221)
!4228 = !DILocation(line: 53, column: 7, scope: !4221)
!4229 = !DILocation(line: 53, column: 14, scope: !4221)
!4230 = !{!3906, !672, i64 40}
!4231 = !DILocation(line: 53, column: 35, scope: !4221)
!4232 = !{!3906, !672, i64 32}
!4233 = !DILocation(line: 53, column: 28, scope: !4221)
!4234 = !DILocation(line: 54, column: 7, scope: !4221)
!4235 = !DILocation(line: 54, column: 14, scope: !4221)
!4236 = !{!3906, !672, i64 72}
!4237 = !DILocation(line: 54, column: 28, scope: !4221)
!4238 = !DILocation(line: 52, column: 7, scope: !4177)
!4239 = !DILocation(line: 117, column: 26, scope: !4220)
!4240 = !DILocation(line: 117, column: 19, scope: !4220)
!4241 = !DILocation(line: 0, scope: !4220)
!4242 = !DILocation(line: 118, column: 15, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4220, file: !653, line: 118, column: 11)
!4244 = !DILocation(line: 118, column: 11, scope: !4220)
!4245 = !DILocation(line: 129, column: 11, scope: !4220)
!4246 = !DILocation(line: 129, column: 18, scope: !4220)
!4247 = !DILocation(line: 130, column: 11, scope: !4220)
!4248 = !DILocation(line: 130, column: 19, scope: !4220)
!4249 = !{!3906, !1107, i64 144}
!4250 = !DILocation(line: 161, column: 7, scope: !4220)
!4251 = !DILocation(line: 163, column: 10, scope: !4177)
!4252 = !DILocation(line: 163, column: 3, scope: !4177)
!4253 = !DILocation(line: 164, column: 1, scope: !4177)
!4254 = !DISubprogram(name: "fseeko", scope: !746, file: !746, line: 712, type: !4255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!31, !4198, !774, !31}
